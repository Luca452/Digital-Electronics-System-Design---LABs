--------DEFAULT LIBRARIES-----------
library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
	use IEEE.NUMERIC_STD.ALL;
    use IEEE.MATH_REAL.ALL;
------------------------------------


entity MobileMean is
    Generic(
        AXIS_TDATA_WIDTH        : integer	:= 24;
        AVERAGING_WINDOW_SIZE   : integer   := 32
    );
    Port (
        aclk             :   in   STD_LOGIC;   
        aresetn         :   in   STD_LOGIC;  

        ------------AXI4-Stream--slave-------------
        S_AXIS_TVALID	:   in   STD_LOGIC;
        -- TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
        S_AXIS_TDATA	:   in 	 STD_LOGIC_VECTOR(AXIS_TDATA_WIDTH-1 DOWNTO 0);
        -- TREADY indicates that the slave can accept a transfer in the current cycle.
        S_AXIS_TREADY	:   out  STD_LOGIC;
        -- AXI4Stream tLAST to distinguish between left and right ciannol
        S_AXIS_TLAST	:   in   STD_LOGIC;
        --------------------------------------------

        ------------AXI4-Stream--master-------------
        M_AXIS_TREADY	:   in 	 STD_LOGIC;
        -- Data in
        M_AXIS_TDATA	:   out  STD_LOGIC_VECTOR(AXIS_TDATA_WIDTH-1 DOWNTO 0) := (Others =>'0');
        -- AXI4Stream tLAST to distinguish between left and right ciannol
        M_AXIS_TLAST	:   out  STD_LOGIC;
        -- Data is in valid
        M_AXIS_TVALID	:   out  STD_LOGIC;
        --------------------------------------------

        filter_enable : in std_logic

     );
end MobileMean;

architecture Behavioral of MobileMean is

    --------------------------------------SIGNALS & CONSTANTS----------------------------------------
    constant SUM_TOTAL_LENGTH : positive := (AXIS_TDATA_WIDTH + positive(ceil(log2(real(AVERAGING_WINDOW_SIZE))))) ;
    signal SUM_TOTAL_L : signed(SUM_TOTAL_LENGTH-1 downto 0) := (others => '0');
    signal SUM_TOTAL_R : signed(SUM_TOTAL_LENGTH-1 downto 0) := (others => '0') ;

    signal M_AXIS_TVALID_int : std_logic := '0';
    signal M_AXIS_TLAST_int : std_logic;
    signal S_AXIS_TREADY_int : std_logic := '0';

    signal M_AXIS_TDATA_int : std_logic_vector(AXIS_TDATA_WIDTH-1 downto 0) := (others => '0');
    signal DATA_R : std_logic_vector(AXIS_TDATA_WIDTH-1 downto 0) := (others => '0');
    -------------------------------------------------------------------------------------------------

    type SHIFT_REG  is array(0 TO AVERAGING_WINDOW_SIZE-1) of STD_LOGIC_VECTOR(AXIS_TDATA_WIDTH-1 downto 0);

    signal mem_L : SHIFT_REG := (others => (others => '0'));
    signal mem_R : SHIFT_REG := (others => (others => '0'));  

    -- states for the state machine
	type state_type is (RECEIVE_L, RECEIVE_R, SEND_L, SEND_R);
	signal state     : state_type := RECEIVE_L;

begin

    --------------------------------------------DATA FLOW-------------------------------------------
    -- pass through all data if filter disabled 
    M_AXIS_TDATA <= M_AXIS_TDATA_int when filter_enable = '1' else
                    S_AXIS_TDATA;

    M_AXIS_TVALID <= M_AXIS_TVALID_int when filter_enable = '1' else           
                    S_AXIS_TVALID;

    S_AXIS_TREADY <= S_AXIS_TREADY_int when filter_enable = '1' else           
                    M_AXIS_TREADY;

    M_AXIS_TLAST <= M_AXIS_TLAST_int when filter_enable = '1' else           
                    S_AXIS_TLAST;
    ------------------------------------------------------------------------------------------------

    -- process to handle the data
    -- everything is handled by states in a single process, to stay in sync between incoming and outgoing data
    FSM : process (aresetn, aclk)
    begin
        if aresetn = '0' then
        -- TODO should the reset get handled?
        -- reset is not handled
        elsif rising_edge(aclk) then


            case state is

                when RECEIVE_L =>

                    -- ready to read the signal from the bus
                    S_AXIS_TREADY_int <= '1';

                    -- process the data only if TVALID = '1', TLAST discriminates between channels 
                    if S_AXIS_TLAST = '0' and filter_enable = '1' and S_AXIS_TVALID = '1' then

                        ------------------------------------AVG VALUE CALCULATION-----------------------------------------
                        -- fill the first position of the memory with the oncoming data
                        mem_L <= S_AXIS_TDATA & mem_L(0 to AVERAGING_WINDOW_SIZE-2);
                        -- oncoming data is always summed to the total, last element of the memory is subtracted
                        -- the division is implemented by taking the 24 MSBs of the total
                        SUM_TOTAL_L <= SUM_TOTAL_L + signed(std_logic_vector(resize(signed(S_AXIS_TDATA),SUM_TOTAL_LENGTH))) - signed(std_logic_vector(resize(signed(mem_L(AVERAGING_WINDOW_SIZE-1)),SUM_TOTAL_LENGTH)));
                        --------------------------------------------------------------------------------------------------

                        -- result is put on the axis bus
                        M_AXIS_TDATA_int <= std_logic_vector(SUM_TOTAL_L(SUM_TOTAL_LENGTH-1 downto SUM_TOTAL_LENGTH-AXIS_TDATA_WIDTH));
                        
                        state <= RECEIVE_R; 
                    end if;

                when RECEIVE_R => 

                    if S_AXIS_TLAST = '1' and filter_enable = '1' and S_AXIS_TVALID = '1' then

                        ------------------------------------AVG VALUE CALCULATION-----------------------------------------
                        -- same calculation as before but for the other channel
                        mem_R <= S_AXIS_TDATA & mem_R(0 to AVERAGING_WINDOW_SIZE-2);
                        SUM_TOTAL_R <= SUM_TOTAL_R + signed(std_logic_vector(resize(signed(S_AXIS_TDATA),SUM_TOTAL_LENGTH))) - signed(std_logic_vector(resize(signed(mem_R(AVERAGING_WINDOW_SIZE-1)),SUM_TOTAL_LENGTH)));                            
                        --------------------------------------------------------------------------------------------------

                        -- the result is saved on a dedicated register
                        DATA_R <= std_logic_vector(SUM_TOTAL_R(SUM_TOTAL_LENGTH-1 downto SUM_TOTAL_LENGTH-AXIS_TDATA_WIDTH));

                        -- don't receive any more data
                        S_AXIS_TREADY_int <= '0';
                        -- ready to send data, set master valid to '1'
                        M_AXIS_TVALID_int <= '1';
                        -- set the next state to be the sending of the left data
                        state <= SEND_L;     
                    end if;
                   
                when SEND_L =>

                    M_AXIS_TLAST_int <= '0';

                    -- if slave is ready, means it read the data on the bus, put new data on the bus and change state
                    if M_AXIS_TREADY = '1' then
                        -- when the elaboration of the right channel is done, the data can be send in the next clock phase
                        M_AXIS_TDATA_int <= DATA_R;
                        -- set the next state to be the receiving of data
                        state <= SEND_R;
                    end if;

                when SEND_R =>

                    M_AXIS_TLAST_int <= '1';

                    -- if slave is ready, means it read the data on the bus, go back to receive state
                    if M_AXIS_TREADY = '1' then
                        -- invalidate the data on the line
                        M_AXIS_TVALID_int <= '0';
                        -- ready to read the signal from the bus
                        S_AXIS_TREADY_int <= '1';
                        -- set the next state to be the receiving of data
                        state <= RECEIVE_L;
                    end if;
                    
            end case;


        end if;    
    end process;

end Behavioral;

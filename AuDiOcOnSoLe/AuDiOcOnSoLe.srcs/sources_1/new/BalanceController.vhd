library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity BalanceController is
    Generic(
        BALANCE_BITS     : integer := 10;
        AXIS_TDATA_WIDTH : integer	:= 24;
        N_BALANCE         : positive := 6
    );
    Port (         
        aclk            :   in   STD_LOGIC;   
        aresetn         :   in   STD_LOGIC;  
    
        ------------AXI4-Stream--slave-------------
        S_AXIS_TVALID	:   in   STD_LOGIC;
        -- TDATA is the primary payload that is used to provide the data that is passing across the interface from the master
        S_AXIS_TDATA	:   in 	 STD_LOGIC_VECTOR(AXIS_TDATA_WIDTH-1 DOWNTO 0);
        -- TREADY indicates that the slave can accept a transfer in the current cycle
        S_AXIS_TREADY	:   out  STD_LOGIC := '1';
        -- AXI4Stream tLAST to distinguish between left and right channel
        S_AXIS_TLAST	:   in   STD_LOGIC;
        --------------------------------------------

        ------------AXI4-Stream--master-------------
        M_AXIS_TREADY	:   in 	 STD_LOGIC;
        -- Data in
        M_AXIS_TDATA	:   out  STD_LOGIC_VECTOR(AXIS_TDATA_WIDTH-1 DOWNTO 0) := (Others =>'0');
        -- AXI4Stream tLAST to distinguish between left and right channel
        M_AXIS_TLAST	:   out  STD_LOGIC;
        -- Data is in valid
        M_AXIS_TVALID	:   out  STD_LOGIC := '0';
        --------------------------------------------

        balance          : in STD_LOGIC_VECTOR(BALANCE_BITS - 1 downto 0)
    );
end BalanceController;

architecture Behavioral of BalanceController is
    -- we take the 10-N bits as a counter to know in which interval we are,
    -- but MSB bit is used to discriminate between pan left/right so 10-N-1 
    constant    max_balance     : positive := 2**(BALANCE_BITS - N_BALANCE - 1)-1;
    signal      bal_N           : integer  := 0;
    signal      data_R          : std_logic_vector(AXIS_TDATA_WIDTH-1 downto 0);
    signal      data_L          : std_logic_vector(AXIS_TDATA_WIDTH-1 downto 0);
    
    -- states for the TX state machine
	type tx_state_type is (RECEIVE, SEND_L, SEND_R);
	signal tx_state      : tx_state_type := RECEIVE;

begin    

    bal_N <= (max_balance - to_integer( unsigned(balance(BALANCE_BITS-2 downto N_BALANCE)) + unsigned(balance(N_BALANCE-1 downto N_BALANCE-1)) ))  when (balance(balance'left) = '0') 
                else to_integer( unsigned(balance(BALANCE_BITS-2 downto N_BALANCE)) + unsigned(balance(N_BALANCE-1 downto N_BALANCE-1)) )  when (balance(balance'left) = '1'); 
    

    RX : process (aresetn, aclk)
    begin
        if aresetn = '0' then
        -- TODO should the reset get handled?
        -- reset is not handled
        elsif rising_edge(aclk) then
            case state is
                when RECEIVE =>
                    -- process the data on the data line only if it's valid
                    if s_axis_tvalid = '1' then
                        -- if the MSB of balance is 1, the value is >= 512, so the balance has to be panned right (left channel attenuated),
                        -- otherwhise balance has to be panned to left (right channel attenuated) 
                        -- the division is handled the same way as for the volume

                        -- discriminate between left and right channel, if tlast = '1' -> right channel, otherwise left 
                        -- if joystick is to the left
                        if (balance(balance'left) = '0') then
                            -- if last data was right channel attenuate it and put it in the right reg, if it was not put it in the left reg
                            if (s_axis_tlast = '1') then
                                data_R <= std_logic_vector(shift_left(signed(S_AXIS_TDATA), bal_N));
                                -- don't receive any more data
                                S_AXIS_TREADY <= '0';
                                state <= SEND_L;
                            else 
                                data_L <= S_AXIS_TDATA;
                            end if;

                        -- if joystick to the right
                        elsif (balance(balance'left) = '1') then
                            -- if last data was right channel put it in the register, else attenuate it and put it in the left reg
                            if (s_axis_tlast = '1') then
                                data_R <= S_AXIS_TDATA;
                                S_AXIS_TREADY <= '0';
                                state <= SEND_L;
                            else 
                                data_L <= std_logic_vector(shift_left(signed(S_AXIS_TDATA), bal_N));
                            end if;
                        end if;
                    end if;

                when SEND_L =>
                    -- if the receiver is ready to receive more data go on
                    if m_axis_tready = '1' then
                        m_axis_tlast <= '0';
                        -- put the data for the the left channel on the line
                        m_axis_tdata <= data_L;
                        -- set the data on the line to valid
                        m_axis_tvalid <= '1';
                        -- set the next state to be the sending of the right data
                        state <= SEND_R;

                    end if;
                        
                when SEND_R =>
                    if m_axis_tready = '1' then
                        -- put the data for the the left channel on the line
                        m_axis_tdata <= data_R;
                        --set tlast to 1 as it is the right channel
                        m_axis_tlast <= '1';
                        -- set the data on the line to valid
                        m_axis_tvalid <= '1';
                        -- communicate that we're ready to receive data
                        s_axis_tready <= '1';
                        -- set the next state to be the receiving of data
                        state <= RECEIVE;

                    end if;

            end case;
        end if;    
    end process;

end Behavioral;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;


entity MovingAverageFilter is
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
        S_AXIS_TREADY	:   out  STD_LOGIC := '1';
        -- AXI4Stream tLAST to distinguish between left and right ciannol
        S_AXIS_TLAST	:   in   STD_LOGIC;
        --------------------------------------------

        ------------AXI4-Stream--master-------------
        M_AXIS_TREADY	:   in 	 STD_LOGIC;
        -- Data in
        M_AXIS_TDATA	:   out  STD_LOGIC_VECTOR(AXIS_TDATA_WIDTH-1 DOWNTO 0)  := (Others =>'0');
        -- AXI4Stream tLAST to distinguish between left and right ciannol
        M_AXIS_TLAST	:   out  STD_LOGIC;
        -- Data is in valid
        M_AXIS_TVALID	:   out  STD_LOGIC  := '0';
        --------------------------------------------

        filter_enable : in std_logic

     );
end MovingAverageFilter;

architecture Behavioral of MovingAverageFilter is

    ---------------------------------------COMPONENTs DECLARATIONS------------------------------------
	-- FIFO modules declaration
	component FIFO
    generic (
        FIFO_WIDTH : natural;
        FIFO_DEPTH : integer
    );
    port (
        -------- Reset/Clock -------
        aresetn	: in std_logic;
        clk		: in std_logic;
        ----------------------------

        --- FIFO Write Interface ---
        wr_en	: in	std_logic;
        din		: in	std_logic_vector(FIFO_WIDTH-1 downto 0);
        full	: out	std_logic;
        ----------------------------

        --- FIFO Read Interface ---
        rd_en	: in	std_logic;
        dout	: out std_logic_vector(FIFO_WIDTH-1 downto 0)
        ----------------------------
    );
    end component;
    -------------------------------
    -- Averaging modules declaration
	component AveragingLogic
    Generic(
        DATA_WIDTH              : integer := 24;
        AVERAGING_WINDOW_SIZE   : integer := 32 
    );
    Port ( 
        aresetn	: in std_logic;
        clk		: in std_logic;

        din_plus    : IN std_logic_vector(DATA_WIDTH-1 downto 0);
        din_minus   : IN std_logic_vector(DATA_WIDTH-1 downto 0);

        wr_en        : IN std_logic;

        avg_val      : OUT std_logic_vector(DATA_WIDTH-1 downto 0)
    );

    end component;
    ------------------------------
    -------------------------------------------------------------------------------------------------


    ----------------------------------------SIGNALS & CONSTANTS--------------------------------------
    signal dout1_int    : std_logic_vector(AXIS_TDATA_WIDTH-1 downto 0);
    signal full1_int    : std_logic;
    signal wr_en1_int   : std_logic;
    signal avg_val1_int : std_logic_vector(AXIS_TDATA_WIDTH-1 downto 0);
    signal rd_en1_int   : std_logic;

    signal dout2_int : std_logic_vector(AXIS_TDATA_WIDTH-1 downto 0);
    signal full2_int : std_logic;
    signal wr_en2_int   : std_logic;
    signal avg_val2_int  : std_logic_vector(AXIS_TDATA_WIDTH-1 downto 0);
    signal rd_en2_int   : std_logic;

    -- in the first cycle it takes one clock cycle before data is ready after filter_enable is set to '1', we need to delay TVALID
    signal M_AXIS_TVALID_reg1 : std_logic := '0';
    signal M_AXIS_TVALID_reg2 : std_logic := '0';

    signal M_AXIS_TLAST_reg1 : std_logic := '0';
    signal M_AXIS_TLAST_reg2 : std_logic := '0';

    signal S_AXIS_TREADY_reg1 : std_logic := '0';
    signal S_AXIS_TREADY_reg2 : std_logic := '0';
    -------------------------------------------------------------------------------------------------


begin
    --------------------------------------FIFO MODULES INSTATIATION---------------------------------
    -----Left Channel-----
	inst1: FIFO 
    generic map (
        FIFO_DEPTH => AVERAGING_WINDOW_SIZE,
        FIFO_WIDTH => AXIS_TDATA_WIDTH
    )
    port map (
        aresetn  => aresetn,
        clk    => aclk,
        wr_en => wr_en1_int,
        din => S_AXIS_TDATA,
        full => full1_int,
        rd_en => rd_en1_int,
        dout => dout1_int
    );
    -----Right Channel-----
	inst2: FIFO 
    generic map (
        FIFO_DEPTH => AVERAGING_WINDOW_SIZE,
        FIFO_WIDTH => AXIS_TDATA_WIDTH
    )
    port map (
        aresetn  => aresetn,
        clk    => aclk,
        wr_en => wr_en2_int,
        din => S_AXIS_TDATA,
        full => full2_int,
        rd_en => rd_en2_int,
        dout => dout2_int
    );
    ------------------------------------------------------------------------------------------------

    ---------------------------------AVERAGING MODULES INSTATIATION---------------------------------
    -----Left Channel-----
    inst3: AveragingLogic 
    generic map (
        AVERAGING_WINDOW_SIZE => AVERAGING_WINDOW_SIZE,
        DATA_WIDTH => AXIS_TDATA_WIDTH
    )
    port map (
        aresetn  => aresetn,
        clk    => aclk,
        din_plus => S_AXIS_TDATA,
        din_minus => dout1_int, 
        wr_en => wr_en1_int,      
        avg_val => avg_val1_int
    );
    -----Right Channel-----
    inst4: AveragingLogic 
    generic map (
        AVERAGING_WINDOW_SIZE => AVERAGING_WINDOW_SIZE,
        DATA_WIDTH => AXIS_TDATA_WIDTH
    )
    port map (
        aresetn  => aresetn,
        clk    => aclk,
        din_plus => S_AXIS_TDATA,
        din_minus => dout2_int, 
        wr_en => wr_en2_int,      
        avg_val => avg_val2_int
    );
    ------------------------------------------------------------------------------------------------

    --------------------------------------------DATA FLOW-------------------------------------------
    wr_en1_int <= S_AXIS_TVALID AND S_AXIS_TLAST AND filter_enable;
    rd_en1_int <= wr_en1_int AND full1_int;

    wr_en2_int <= S_AXIS_TVALID AND NOT S_AXIS_TLAST AND filter_enable;
    rd_en2_int <= wr_en2_int AND full2_int;
    ------------------------------------------------------------------------------------------------

    process(aclk)
    begin
        if rising_edge(aclk) then
            if aresetn = '0' then
            
            else

                M_AXIS_TVALID_reg1 <= M_AXIS_TVALID_reg2;
                M_AXIS_TVALID <= M_AXIS_TVALID_reg1;

                M_AXIS_TLAST_reg2 <= S_AXIS_TLAST;
                M_AXIS_TLAST_reg1 <= M_AXIS_TLAST_reg2;
                M_AXIS_TLAST <= M_AXIS_TLAST_reg1;

                S_AXIS_TREADY_reg2 <= M_AXIS_TREADY;
                S_AXIS_TREADY_reg1 <= S_AXIS_TREADY_reg2;
                S_AXIS_TREADY <= S_AXIS_TREADY_reg1;

                -- THREE STAGES PIPELINE
                if filter_enable = '1' then

                    if(S_AXIS_TLAST = '1') then
                        M_AXIS_TDATA <= avg_val1_int;
                        M_AXIS_TVALID_reg2 <= '1';
                    else 
                        M_AXIS_TDATA <= avg_val2_int;
                        M_AXIS_TVALID_reg2 <= '1';
                    end if;
                    
                -- pass through ONE STAGE ONLY
                elsif filter_enable = '0' then
                    M_AXIS_TDATA <= S_AXIS_TDATA;
                    M_AXIS_TVALID <= S_AXIS_TVALID;
                    S_AXIS_TREADY <= M_AXIS_TREADY;
                end if;
            end if;
    
        end if;


    end process;

end Behavioral;

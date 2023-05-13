--------DEFAULT LIBRARIES-----------
library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
	use IEEE.NUMERIC_STD.ALL;
    use IEEE.MATH_REAL.ALL;
------------------------------------


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
        M_AXIS_TDATA	:   out  STD_LOGIC_VECTOR(AXIS_TDATA_WIDTH-1 DOWNTO 0) := (Others =>'0');
        -- AXI4Stream tLAST to distinguish between left and right ciannol
        M_AXIS_TLAST	:   out  STD_LOGIC;
        -- Data is in valid
        M_AXIS_TVALID	:   out  STD_LOGIC := '0';
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
    -------------------------------------------------------------------------------------------------


    ----------------------------------------SIGNALS & CONSTANTS--------------------------------------
    signal dout_L_int    : std_logic_vector(AXIS_TDATA_WIDTH-1 downto 0);
    signal full_L_int    : std_logic;
    signal wr_en_L_int   : std_logic;
    signal avg_val_L_int : std_logic_vector(AXIS_TDATA_WIDTH-1 downto 0);
    signal rd_en_L_int   : std_logic;

    signal dout_R_int : std_logic_vector(AXIS_TDATA_WIDTH-1 downto 0);
    signal full_R_int : std_logic;
    signal wr_en_R_int   : std_logic;
    signal avg_val_R_int  : std_logic_vector(AXIS_TDATA_WIDTH-1 downto 0);
    signal rd_en_R_int   : std_logic;

    constant SUM_TOTAL_LENGTH : positive := (AXIS_TDATA_WIDTH + positive(ceil(log2(real(AVERAGING_WINDOW_SIZE))))) ;
    signal SUM_TOTAL_L : signed(SUM_TOTAL_LENGTH-1 downto 0) := (others => '0');
    signal SUM_TOTAL_R : signed(SUM_TOTAL_LENGTH-1 downto 0) := (others => '0') ;

    signal M_AXIS_TVALID_reg1 : std_logic := '0';
    signal M_AXIS_TVALID_reg2 : std_logic := '0';
    signal S_AXIS_TLAST_reg : std_logic;

    signal DATA_OUT : std_logic_vector(AXIS_TDATA_WIDTH-1 downto 0) := (others => '0');
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
        wr_en => wr_en_L_int,
        din => S_AXIS_TDATA,
        full => full_L_int,
        rd_en => rd_en_L_int,
        dout => dout_L_int
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
        wr_en => wr_en_R_int,
        din => S_AXIS_TDATA,
        full => full_R_int,
        rd_en => rd_en_R_int,
        dout => dout_R_int
    );
    ------------------------------------------------------------------------------------------------

    --------------------------------------------DATA FLOW-------------------------------------------
    -- pass through all data if filter disabled 
    with filter_enable select M_AXIS_TDATA <= 
        S_AXIS_TDATA  when '0',
        DATA_OUT      when '1',
        S_AXIS_TDATA  when others;

    with filter_enable select M_AXIS_TVALID <= 
        S_AXIS_TVALID       when '0',
        M_AXIS_TVALID_reg2   when '1',
        S_AXIS_TVALID       when others;

    with filter_enable select S_AXIS_TREADY <= 
        M_AXIS_TREADY       when '0',
        '1'                 when '1',
        M_AXIS_TREADY       when others;

    with filter_enable select M_AXIS_TLAST <= 
        S_AXIS_TLAST       when '0',
        S_AXIS_TLAST_reg   when '1',
        S_AXIS_TLAST       when others;
  
    -- if TVALID and filter enable, activate fifo
    wr_en_L_int <= S_AXIS_TVALID AND S_AXIS_TLAST AND filter_enable;
    wr_en_R_int <= S_AXIS_TVALID AND NOT S_AXIS_TLAST AND filter_enable;

    rd_en_L_int <= wr_en_L_int AND full_L_int;
    rd_en_R_int <= wr_en_R_int AND full_R_int;
    ------------------------------------------------------------------------------------------------

    process(aclk)
    begin
        if rising_edge(aclk) then
            
            if aresetn = '0' then
                SUM_TOTAL_L <= (others => '0');
                SUM_TOTAL_R <= (others => '0');
            else
            -----------------------------------------------------
                if(wr_en_L_int = '1') then
                    SUM_TOTAL_L <= SUM_TOTAL_L + signed(std_logic_vector(resize(signed(S_AXIS_TDATA),SUM_TOTAL_LENGTH))) - signed(std_logic_vector(resize(signed(dout_L_int),SUM_TOTAL_LENGTH)));
                    -- if it is the first data or if slave is ready put new data on the out bus and set VALID high
                    if(M_AXIS_TVALID_reg2 = '0' or M_AXIS_TREADY = '1') then
                        DATA_OUT <= std_logic_vector(SUM_TOTAL_L(SUM_TOTAL_LENGTH-1 downto SUM_TOTAL_LENGTH-AXIS_TDATA_WIDTH));
                        M_AXIS_TVALID_reg2 <= '1';
                    end if;
                end if;

                if(wr_en_R_int = '1') then
                    SUM_TOTAL_R <= SUM_TOTAL_R + signed(std_logic_vector(resize(signed(S_AXIS_TDATA),SUM_TOTAL_LENGTH))) - signed(std_logic_vector(resize(signed(dout_R_int),SUM_TOTAL_LENGTH)));
                    -- if it is the first data or if slave is ready put new data on the out bus and set VALID high
                    if(M_AXIS_TVALID_reg2 = '0' or M_AXIS_TREADY = '1') then
                        DATA_OUT <= std_logic_vector(SUM_TOTAL_R(SUM_TOTAL_LENGTH-1 downto SUM_TOTAL_LENGTH-AXIS_TDATA_WIDTH));
                        M_AXIS_TVALID_reg2 <= '1';
                    end if;
                end if;



                -- reset TVALID register when the filter is bypassed, so that when filter is enabled we set it high only when valid data is on the bus
                if (filter_enable = '0') then
                    M_AXIS_TVALID_reg2 <= '0';
                elsif (filter_enable = '1') then 
                    M_AXIS_TVALID_reg1  <= S_AXIS_TVALID;
                    M_AXIS_TVALID_reg2  <= M_AXIS_TVALID_reg1;
                    S_AXIS_TLAST_reg <= S_AXIS_TLAST;
                end if;
            -------------------------------------------------
            end if;
        end if;

    end process;

end Behavioral;
library IEEE;
    use IEEE.STD_LOGIC_1164.ALL;
    use IEEE.NUMERIC_STD.ALL;

entity tb_MovingAverage is
Generic (
    C_M_AXIS_TDATA_WIDTH    : integer    := 24
);
end tb_MovingAverage;

architecture Behavioral of tb_MovingAverage is

    constant    CLK_PERIOD       :    TIME        := 10 ns;
    constant    RESET_TIME       :    TIME        := 4*CLK_PERIOD; 
    constant    TB_CLK_INIT      :    STD_LOGIC   := '0';
    constant    TB_RESET_INIT    :    STD_LOGIC   := '0';

    signal      reset          :    STD_LOGIC   := TB_RESET_INIT;
    signal      clk             :    STD_LOGIC   := TB_CLK_INIT;

    -- axi stream master
    signal      M_AXIS_TREADY    :    STD_LOGIC;
    signal      M_AXIS_TDATA     :    STD_LOGIC_VECTOR(C_M_AXIS_TDATA_WIDTH-1 DOWNTO 0);
    signal      M_AXIS_TVALID    :    STD_LOGIC;
    signal      M_AXIS_TLAST     :    STD_LOGIC;
    signal      filter_enable    :    STD_LOGIC;

    -- axi stram slave
    signal      S_AXIS_TREADY    :    STD_LOGIC;
    signal      S_AXIS_TDATA     :    STD_LOGIC_VECTOR(C_M_AXIS_TDATA_WIDTH-1 DOWNTO 0);
    signal      S_AXIS_TVALID    :    STD_LOGIC;
    signal      S_AXIS_TLAST     :    STD_LOGIC;


    Component  MovingAverageFilter
        Generic (
            AXIS_TDATA_WIDTH        : integer	:= 24;
            AVERAGING_WINDOW_SIZE   : integer   := 32
        );
        Port(
            aclk             : IN     STD_LOGIC; 
            aresetn           : IN     STD_LOGIC;   
           ------------AXI4-Stream--master-------------            
            M_AXIS_TREADY	:   in 	 STD_LOGIC;
            M_AXIS_TDATA	:   out  STD_LOGIC_VECTOR(AXIS_TDATA_WIDTH-1 DOWNTO 0)  := (Others =>'0');
            M_AXIS_TLAST	:   out  STD_LOGIC;
            M_AXIS_TVALID	:   out  STD_LOGIC  := '0';
            ------------AXI4-Stream--slave-------------
            S_AXIS_TVALID	:   in   STD_LOGIC;
            S_AXIS_TDATA	:   in 	 STD_LOGIC_VECTOR(AXIS_TDATA_WIDTH-1 DOWNTO 0);
            S_AXIS_TREADY	:   out  STD_LOGIC := '1';
            S_AXIS_TLAST	:   in   STD_LOGIC;
            --------------------------------------------
            filter_enable : in std_logic
        );
    end component;
begin

    dut: MovingAverageFilter
    Generic Map(
        AXIS_TDATA_WIDTH    => 24,
        AVERAGING_WINDOW_SIZE => 32
    )
    Port Map(
        aclk => CLK,
        aresetn => RESET,  
        
        M_AXIS_TREADY    =>  M_AXIS_TREADY,
        M_AXIS_TDATA    =>   M_AXIS_TDATA,
        M_AXIS_TVALID    =>  M_AXIS_TVALID,
        M_AXIS_TLAST    =>  M_AXIS_TLAST,

        S_AXIS_TREADY    =>  S_AXIS_TREADY,
        S_AXIS_TDATA    =>   S_AXIS_TDATA,
        S_AXIS_TVALID    =>  S_AXIS_TVALID,
        S_AXIS_TLAST    =>  S_AXIS_TLAST,

        filter_enable => filter_enable
    );

    -- clock
    clk <= not clk after CLK_PERIOD/2;

    -- reset
    reset_proc: process
    begin
        RESET <= TB_RESET_INIT;
        wait for RESET_TIME;
        
        RESET <= not RESET;
        wait;
    end process;    
    
    signal_drive: process
    begin
        -- reset
        wait for RESET_TIME;
        -- Only one channel
        S_AXIS_TLAST <= '1';
        M_AXIS_TREADY <= '1';
        -- Pass through
        filter_enable <= '0';
        S_AXIS_TDATA <= x"FFFFFF";
        S_AXIS_TVALID <= '1';
        wait for 16*CLK_PERIOD;
        S_AXIS_TDATA <= x"000FFF";
        wait for 16*CLK_PERIOD;
        S_AXIS_TDATA <= x"000000";
        S_AXIS_TVALID <= '0';
        wait for 16*CLK_PERIOD;

        -- Active filter
        filter_enable <= '1';  
        S_AXIS_TDATA <= x"00000F";
        S_AXIS_TVALID <= '1';
        wait for 64*CLK_PERIOD;
        S_AXIS_TDATA <= x"00000F";
        wait for 32*CLK_PERIOD;
        S_AXIS_TDATA <= x"000000";
        S_AXIS_TVALID <= '0';
        wait for 32*CLK_PERIOD;

    wait;
    end process;    
end Behavioral;


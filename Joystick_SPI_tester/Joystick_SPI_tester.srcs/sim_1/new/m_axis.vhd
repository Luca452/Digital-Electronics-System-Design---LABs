library IEEE;
    use IEEE.STD_LOGIC_1164.ALL;
    use IEEE.NUMERIC_STD.ALL;

entity m_axis is
Generic (
    C_M_AXIS_TDATA_WIDTH    : integer    := 8
);
end m_axis;

architecture Behavioral of m_axis is

    constant    CLK_PERIOD       :    TIME        := 10 ns;
    constant    RESET_TIME       :    TIME        := 4*CLK_PERIOD; 
    constant    TB_CLK_INIT      :    STD_LOGIC   := '0';
    constant    TB_RESET_INIT    :    STD_LOGIC   := '1';

    signal      reset            :    STD_LOGIC   := TB_RESET_INIT;
    signal      clk              :    STD_LOGIC   := TB_CLK_INIT;
    -- axi stream master
    signal      M_AXIS_TREADY    :    STD_LOGIC;
    signal      M_AXIS_TDATA     :    STD_LOGIC_VECTOR(C_M_AXIS_TDATA_WIDTH-1 DOWNTO 0);
    signal      M_AXIS_TVALID    :    STD_LOGIC;

Component  dut_filename
Generic (
    C_M_AXIS_TDATA_WIDTH    : integer    := 8
);
Port(
    clk             : IN     STD_LOGIC; 
    reset           : IN     STD_LOGIC;   

    M_AXIS_TREADY   : OUT    STD_LOGIC;
    M_AXIS_TDATA    : IN     STD_LOGIC_VECTOR(C_M_AXIS_TDATA_WIDTH-1 DOWNTO 0);
    M_AXIS_TVALID   : IN     STD_LOGIC

);
end component;
begin
dut: dut_filename
Generic Map(
    C_M_AXIS_TDATA_WIDTH    => 8
)
Port Map(
    CLK => CLK,
    RESET => RESET,  
    
    M_AXIS_TREADY    =>  M_AXIS_TREADY,
    M_AXIS_TDATA    =>   M_AXIS_TDATA,
    M_AXIS_TVALID    =>  M_AXIS_TVALID
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

    
    wait;
    end process;    
end Behavioral;
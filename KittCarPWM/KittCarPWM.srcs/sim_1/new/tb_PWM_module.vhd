 library IEEE;
     use IEEE.STD_LOGIC_1164.ALL;
     use IEEE.NUMERIC_STD.ALL;
 
 entity tb_PWM_module is
 end tb_PWM_module;
 
 architecture Behavioral of tb_PWM_module is

    component PWM_module
        generic(
            TAIL_LENGTH	    :  	INTEGER	RANGE	1 TO 16	:= 4	-- Tail length
        );
        port(
            -------Reset/Clock----------
		    reset	:	IN	STD_LOGIC;
		    clk		:	IN	STD_LOGIC;
            ----------------------------
            ------OUT PWM VECTOR--------
            pwm_out :   OUT std_logic_vector(TAIL_LENGTH-1 downto 0)
		    ----------------------------
        );
    end component;
 
    constant    CLK_PERIOD      :   TIME        := 10 ns;
    constant    RESET_TIME      :   TIME        := 80*CLK_PERIOD; 
    constant    TB_CLK_INIT     :   STD_LOGIC   := '0';
    constant    TB_RESET_INIT   :   STD_LOGIC   := '1';

    
    constant DUT_TAIL_LENGTH : INTEGER := 4;
    signal      reset           :    STD_LOGIC  := TB_RESET_INIT;
    signal      clk             :    STD_LOGIC  := TB_CLK_INIT;
    signal dut_pwm_out : std_logic_vector(DUT_TAIL_LENGTH-1 downto 0);
 
 begin

    dut1: PWM_module 
        generic map (
            TAIL_LENGTH => DUT_TAIL_LENGTH
        )
        port map (
            reset  => reset,
            clk    => clk,
            pwm_out => dut_pwm_out
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
         
         --wait for RESET_TIME;
         
         -- data behavour
         
         wait for 300_000*CLK_PERIOD;
 
         wait;
     end process;    
 end Behavioral;
 
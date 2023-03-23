--------DEFAULT LIBRARIES-----------
library IEEE;
	use IEEE.STD_LOGIC_1164.all;
	use IEEE.NUMERIC_STD.ALL;
------------------------------------

entity KittCarPWM is
	Generic (

		CLK_PERIOD_NS			:	POSITIVE	RANGE	1	TO	100     := 10;	-- clk period in nanoseconds
		MIN_KITT_CAR_STEP_MS	:	POSITIVE	RANGE	1	TO	2000    := 2;	-- Minimum step period in milliseconds (i.e., value in milliseconds of Delta_t)

		NUM_OF_SWS				:	INTEGER	RANGE	1 TO 16 := 16;	-- Number of input switches
		NUM_OF_LEDS				:	INTEGER	RANGE	1 TO 16 := 16;	-- Number of output LEDs

		TAIL_LENGTH				:	INTEGER	RANGE	1 TO 16	:= 4	-- Tail length
	);
	Port (

		------- Reset/Clock --------
		reset	:	IN	STD_LOGIC;
		clk		:	IN	STD_LOGIC;
		----------------------------

		-------- LEDs/SWs ----------
		sw		:	IN	STD_LOGIC_VECTOR(NUM_OF_SWS-1 downto 0);	-- Switches avaiable on Basys3
		leds	:	OUT	STD_LOGIC_VECTOR(NUM_OF_LEDS-1 downto 0)	-- LEDs avaiable on Basys3
		----------------------------

	);
end KittCarPWM;

architecture Behavioral of KittCarPWM is

	--------------------------COMPONENTs INSTANTIATION--------------------------
	component PWM_module
        generic(
            TAIL_LENGTH	    :  	INTEGER	RANGE	1 TO 16	-- Tail length
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
	----------------------------------------------------------------------------

	---------------------------------SIGNALS------------------------------------
	subtype my_natural is natural range 0 to NUM_OF_LEDS; --to limit dimension of integer instantiated 
	type pwm_array_map is array (TAIL_LENGTH-1 downto 0) of my_natural;
	signal pwm_map : pwm_array_map;

	signal dir : std_logic;

	signal pwm_out : std_logic_vector(0 TO TAIL_LENGTH-1);

	-- constant that stores the number of clock cycles needed for MIN_KITT_CAR_STEP_MS time to pass
    constant delay_step : positive := (1_000_000 / CLK_PERIOD_NS * MIN_KITT_CAR_STEP_MS); 

    -- counters needed respectively to know when MIN_KITT_CAR_STEP_MS time has elapsed and when the time set by the SW has elapsed
    signal counter_clk : natural range 0 to delay_step := 0; 
    signal counter_ms : unsigned(NUM_OF_SWS-1 downto 0);

	-- Registers for leds and sw 
    signal sw_reg : std_logic_vector(NUM_OF_SWS-1 downto 0);
    signal leds_reg : std_logic_vector(NUM_OF_LEDS-1 downto 0) := (others => '0') ;

	----------------------------------------------------------------------------

begin
	--------------------------PWM MODULE INST-----------------------------------
	inst1: PWM_module 
        generic map (
            TAIL_LENGTH => TAIL_LENGTH
        )
        port map (
            reset  => reset,
            clk    => clk,
            pwm_out => pwm_out
        );
	----------------------------------------------------------------------------
	process (clk, reset)
	begin

		if rising_edge(clk) then

			sw_reg <= sw;
			leds <= leds_reg;

            ---------SYNC SWITCHES DELAY TIME CHANGE-------------
            if sw /= sw_reg then
                counter_ms <= (others => '0');
                counter_clk <= 0; 
            end if;
            -----------------------------------------------------

			-----------------RESET & INIT LOGIC------------------
			if (unsigned(leds_reg) = 0 or reset = '1') then

				dir <= '0';
				for I in TAIL_LENGTH-1 downto 0 loop
					pwm_map(I) <= 0;
				end loop;

				leds_reg <= (others => '1');
				leds <= leds_reg;
				counter_clk <= 0;
				counter_ms <= unsigned(sw_reg);

			else 
				-----------------PWM ASSIGNMENT----------------------
				leds_reg <= (others => '0');
				
				for I in TAIL_LENGTH-1 downto 0 loop
					leds_reg(pwm_map(I)) <= pwm_out(I);
				end loop; 
				-----------------------------------------------------
			end if; 
			-----------------------------------------------------			

			-----------------COUNT LOGIC-------------------------
			if counter_clk = delay_step then
				counter_clk <= 0;
				if counter_ms < unsigned(sw_reg) then
					counter_ms <= counter_ms + 1;
				else   
					counter_ms <= (others => '0');
					--------------------------PWM SHIFT LOGIC---------------------------
					case dir is
						when '0' => pwm_map(0) <= pwm_map(0) + 1;
						when '1' => pwm_map(0) <= pwm_map(0) - 1;
						when others => pwm_map(0) <= pwm_map(0); 
					end case;
				
					if pwm_map(0) = NUM_OF_LEDS-2 then
						dir <= '1';
					elsif  pwm_map(0) = 1 then
						dir <= '0';
					end if;
							
					for I in 0 to TAIL_LENGTH-2 loop
						pwm_map(I+1) <= pwm_map(I);
 					end loop; 				
					--------------------------------------------------------------------
				end if;
			else
				counter_clk <= counter_clk + 1;
			end if;
			---------------------------------------------------

		end if;
	end process;

end Behavioral;

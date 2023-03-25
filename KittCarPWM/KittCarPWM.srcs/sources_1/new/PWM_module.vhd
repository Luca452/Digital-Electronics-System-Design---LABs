---------- DEFAULT LIBRARY ---------
library IEEE;
	use IEEE.STD_LOGIC_1164.all;
	use IEEE.NUMERIC_STD.ALL;
------------------------------------

-----------------------------------------------------------CODE EXPLANATION--------------------------------------------------------------------------------
-- This modules has a number of output equal to TAIL_LENGTH, each output is a PWM signal with fixed duty cycle. pwm_out(0) has the lowest duty cycle and
-- pwm_out(TAIL_LENGTH) the highest (100%). e.g. 4 outputs = 100%, 75%, 50&, 25%. 
-- The idea is that a register with TAIL_LENGTH elements is initialized completely to '1'. After a certain delay, the last element is set to '0'. The same 
-- delay time is waited again (through a counter) and this time also the second-last element is set to 0. And so on until the first element is reached. 
-- In this way each element of the register will be a pwm output with duty cycle different from the others.
-----------------------------------------------------------------------------------------------------------------------------------------------------------

entity PWM_module is
    generic(
        TAIL_LENGTH	    :  	INTEGER	RANGE	1 TO 16	:= 4 -- Tail length
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
end PWM_module;

architecture Behavioral of PWM_module is

    ---------------------------CONSTANT-------------------------------
    -- PWM period in seconds = delay_pwm*TAIL_LENGTH*10*10-9
    -- with tail=16 and delay_pwm=10000 the f=625Hz, with tail=1 the f=10kHz so the range is ok
    constant delay_pwm : positive := 10000; 
    ------------------------------------------------------------------

    ---------------------------SIGNALS-------------------------------
    -- counter for clk prescaler
    signal counter_clk : natural range 0 to delay_pwm := 0; 
    -- signal to know which ouput to set to '0' in a cycle
    signal position : natural range 0 to TAIL_LENGTH := 0; 
    -- output register
    signal pwm_reg : std_logic_vector(pwm_out'range);
    ----------------------------------------------------------------
    
begin

    pwm_out <= pwm_reg;

    process(clk, reset)
    begin

        if rising_edge(clk) then

            ----------------RESET LOGIC-----------------
            if reset = '1' then
                pwm_reg <= (others => '1');
                position <= 0;  
            end if;
            --------------------------------------------

            --------------------COUNTER & DUTY CYCLE LOGIC------------------------------
            -- if position signal reaches the last element, the cycle is finished and the pwm output are all set to '1'
            -- if not reached yet, set to '0' the pwm output at index equal to position and increase position signal
            if counter_clk = delay_pwm then
                counter_clk <= 0;
                case position is 
                    when TAIL_LENGTH-1 =>
                                            position <= 0; 
                                            pwm_reg <= (others => '1'); 
                    when others =>
                                            pwm_reg(position) <= not pwm_reg(position);
                                            position <= position + 1;
                end case;
            else
                counter_clk <= counter_clk + 1;
            end if;
            ----------------------------------------------------------------------------
        end if;
     
    end process;
end Behavioral;
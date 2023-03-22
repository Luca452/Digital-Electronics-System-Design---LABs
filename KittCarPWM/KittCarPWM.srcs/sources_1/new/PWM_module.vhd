---------- DEFAULT LIBRARY ---------
library IEEE;
	use IEEE.STD_LOGIC_1164.all;
	use IEEE.NUMERIC_STD.ALL;
------------------------------------

-- This modules produces a number of output equal to TAIL_LENGTH, each output is a PWM signal, the duty cycle is different for each output.
-- The idea is that a single register is initialized to '1'. After a certain delay, the last element is set to '0'. The same delay time is 
-- waited again and this time also the second-last element is set to 0. And so on until the first element is reached. In this way each element
-- of the register will be a pwm output with different duty cycle (lowest one the first element which is set to '0').

entity PWM_module is
    generic(
        TAIL_LENGTH	    :  	INTEGER	RANGE	1 TO 16	:=4-- Tail length
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
    constant delay_pwm : positive := 10_000; --*10*10-9 gives the period PWM / 4 in seconds
    ------------------------------------------------------------------

    ---------------------------SIGNALS-------------------------------
    signal counter_clk : natural range 0 to delay_pwm := 0; -- used to introduce clk prescaler
    signal position : natural range 0 to TAIL_LENGTH := 0; 

    signal pwm_reg : std_logic_vector(pwm_out'range); -- output register
    ----------------------------------------------------------------
    
begin

    pwm_out <= pwm_reg;

    process(clk, reset)
    begin

        if rising_edge(clk) then

            pwm_reg(TAIL_LENGTH-1) <= '1';

            ----------------RESET LOGIC-----------------
            if reset = '1' then
                pwm_reg <= (others => '1');
                position <= 0;  
            end if;
            --------------------------------------------
            --------------------COUNTER & DUTY CYCLE LOGIC------------------------------
            if counter_clk < delay_pwm then
                counter_clk <= counter_clk + 1;
            else
                counter_clk <= 0;
                case position is
                    when TAIL_LENGTH-1 =>
                                            position <= 0; 
                                            pwm_reg <= (others => '1'); 
                    when others =>
                                            pwm_reg(position) <= not pwm_reg(position);
                                            position <= position + 1;
                end case;
            end if;
            ----------------------------------------------------------------------------
        end if;
     
    end process;
end Behavioral;
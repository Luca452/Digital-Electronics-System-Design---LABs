------------ LIBRARIES -------------
library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
------------------------------------

entity EdgeDetector is
    Generic(
        -- Select edge
        trigger_rising : boolean := true
    );
    Port (
        -- Clock and reset
        clk : IN std_logic;
        rst : IN std_logic;

        -- I/Os
        input_signal : IN   std_logic;
        output_signal : OUT std_logic
     );
end EdgeDetector;

architecture Behavioral of EdgeDetector is
--------------------- SIGNALS ----------------------
    -- register to save the previos input signal
    -- and compare it with the actual
    signal input_signal_prec : std_logic;

    -- In order to toggle the out,
    -- a register that memorize the state is needed
    signal output_signal_reg : std_logic := '1';
----------------------------------------------------
begin
    process(clk, rst) 
    begin
        if(rst = '1') then 
 
            -- when reset is high, set to zero the out and the input register
            input_signal_prec <= '0';
            output_signal <= '0';

        elsif rising_edge(clk) then

            -- assign to the prec register the previous input 
            input_signal_prec <= input_signal;

            -- if there has been a change with the selected edge, toggle output register
            if( trigger_rising and input_signal_prec = '0' and input_signal = '1' ) or ( not trigger_rising and input_signal_prec = '1' and input_signal = '0' ) then
                -- toggle 
                 output_signal_reg <= NOT output_signal_reg;
                 output_signal <= output_signal_reg;
            end if;

        end if;
    end process;

end Behavioral;

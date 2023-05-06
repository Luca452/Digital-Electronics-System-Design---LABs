library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity EdgeDetector is
    Generic(
        trigger_rising : boolean := true
    );
    Port (
        clk : IN std_logic;
        rst : IN std_logic;

        input_signal : IN   std_logic;
        output_signal : OUT std_logic
     );
end EdgeDetector;

architecture Behavioral of EdgeDetector is

    signal input_signal_prec : std_logic;

begin
    process(clk, rst) 
    begin
        if(rst = '1') then  

            input_signal_prec <= '0';
            output_signal <= '0';

        elsif rising_edge(clk) then

            input_signal_prec <= input_signal;
            output_signal <= '0';

            if( trigger_rising and input_signal_prec = '0' and input_signal = '1' ) or ( not trigger_rising and input_signal_prec = '1' and input_signal = '0' ) then
                output_signal <= '1';
            end if;

        end if;
    end process;

end Behavioral;

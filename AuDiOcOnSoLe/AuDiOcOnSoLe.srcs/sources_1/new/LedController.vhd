library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LedController is
	Port ( 
		--inputs 
		mute_enable 	: in STD_LOGIC;
		filter_enable 	: in STD_LOGIC;
		--outputs
		led_r		: out std_logic_vector(7 downto 0);
		led_g		: out std_logic_vector(7 downto 0);
		led_b		: out std_logic_vector(7 downto 0)
	);
end LedController;

architecture Behavioral of LedController is

begin
	--if muted led is red
	led_r <= X"FF" when mute_enable = '1' else
			 X"00";
	
	--if the filter is enabled led is blue
	led_b <= X"FF" when  (mute_enable = '0' and filter_enable = '1') else 
			 X"00";

    --if no effect is applied it is green
	led_g <= X"FF" when  (mute_enable = '0' and filter_enable = '0') else 
			 X"00";

end Behavioral;
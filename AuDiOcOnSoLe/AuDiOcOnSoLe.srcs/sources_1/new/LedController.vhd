library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LedController is
--  Port ( );
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

    	signal led_r_reg : std_logic_vector(7 downto 0);
    	signal led_g_reg : std_logic_vector(7 downto 0);
    	signal led_b_reg : std_logic_vector(7 downto 0);
    
begin
	--if muted led is red
	if mute_enable = '1' then
		led_r_reg <= X"FF";
		led_b_reg <= X"0";
		led_g_reg <= X"0";
	--if the filter is enabled led is blue
	elsif filter_enable = '1' then
		led_r_reg <= X"0";
		led_b_reg <= X"FF";
		led_g_reg <= X"0";
	--if no effect is applied it is green
	else	
		led_r_reg <= X"0";
		led_b_reg <= X"0";
		led_g_reg <= X"FF";
	end if;
	
	led_r <= led_r_reg;
        led_g <= led_g_reg;
        led_b <= led_b_reg;


end Behavioral;
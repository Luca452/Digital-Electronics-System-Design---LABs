----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.05.2023 15:45:41
-- Design Name: 
-- Module Name: LedController - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


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
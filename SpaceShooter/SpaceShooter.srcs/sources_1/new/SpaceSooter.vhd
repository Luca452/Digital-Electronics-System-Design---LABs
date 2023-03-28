----------------------------------------------------------------------------------
-- Company: 
-- Engineer: c==3
-- 
-- Create Date: 28.03.2023 18:06:11
-- Design Name: 
-- Module Name: SpaceSooter - Behavioral
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

entity SpaceSooter is
    Port ( 
        ------ Global Reset / Clock ------
        reset       : in  std_logic;
        sys_clock   : in  std_logic;
        ----------------------------------

        ------ UART over USB for PC communication ------        
        usb_uart_rxd : in   std_logic;
        usb_uart_txd : out  std_logic
        ------------------------------------------------

        ------ SPI communication with the Joystick ------

        -------------------------------------------------
    );
end SpaceSooter;

architecture Behavioral of SpaceSooter is

begin


end Behavioral;

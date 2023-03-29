--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
--Date        : Wed Mar 29 16:09:57 2023
--Host        : unbound-phoenix running 64-bit unknown
--Command     : generate_target SpaceShooter_wrapper.bd
--Design      : SpaceShooter_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SpaceShooter_wrapper is
  port (
    sys_clock : in STD_LOGIC
  );
end SpaceShooter_wrapper;

architecture STRUCTURE of SpaceShooter_wrapper is
  component SpaceShooter is
  port (
    sys_clock : in STD_LOGIC
  );
  end component SpaceShooter;
begin
SpaceShooter_i: component SpaceShooter
     port map (
      sys_clock => sys_clock
    );
end STRUCTURE;

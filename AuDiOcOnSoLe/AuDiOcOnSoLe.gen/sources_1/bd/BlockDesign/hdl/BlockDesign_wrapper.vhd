--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
--Date        : Fri May  5 15:43:49 2023
--Host        : unbound-phoenix running 64-bit unknown
--Command     : generate_target BlockDesign_wrapper.bd
--Design      : BlockDesign_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BlockDesign_wrapper is
end BlockDesign_wrapper;

architecture STRUCTURE of BlockDesign_wrapper is
  component BlockDesign is
  end component BlockDesign;
begin
BlockDesign_i: component BlockDesign
 ;
end STRUCTURE;

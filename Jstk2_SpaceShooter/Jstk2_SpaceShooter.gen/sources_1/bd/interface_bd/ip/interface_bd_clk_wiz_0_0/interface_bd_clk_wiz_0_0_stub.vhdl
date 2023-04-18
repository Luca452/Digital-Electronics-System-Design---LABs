-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue Apr 18 13:15:31 2023
-- Host        : unbound-phoenix running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/stexo/Nextcloud/uni/Polimi/8_Semester/DESD/labs/DESD_LABS/Jstk2_SpaceShooter/Jstk2_SpaceShooter.gen/sources_1/bd/interface_bd/ip/interface_bd_clk_wiz_0_0/interface_bd_clk_wiz_0_0_stub.vhdl
-- Design      : interface_bd_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity interface_bd_clk_wiz_0_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end interface_bd_clk_wiz_0_0;

architecture stub of interface_bd_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,reset,locked,clk_in1";
begin
end;

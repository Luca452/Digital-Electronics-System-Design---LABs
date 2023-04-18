// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Apr 18 13:15:31 2023
// Host        : unbound-phoenix running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/stexo/Nextcloud/uni/Polimi/8_Semester/DESD/labs/DESD_LABS/Jstk2_SpaceShooter/Jstk2_SpaceShooter.gen/sources_1/bd/interface_bd/ip/interface_bd_clk_wiz_0_0/interface_bd_clk_wiz_0_0_stub.v
// Design      : interface_bd_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module interface_bd_clk_wiz_0_0(clk_out1, reset, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,reset,locked,clk_in1" */;
  output clk_out1;
  input reset;
  output locked;
  input clk_in1;
endmodule

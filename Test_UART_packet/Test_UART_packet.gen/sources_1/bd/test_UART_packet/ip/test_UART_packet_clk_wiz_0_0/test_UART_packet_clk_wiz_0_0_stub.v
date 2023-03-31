// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Mar 31 16:58:12 2023
// Host        : DESKTOP-JKUPK39 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/daido/Desktop/Polimi/Anno
//               4/DESD/Git/KittCarPWM/Test_UART_packet/Test_UART_packet.gen/sources_1/bd/test_UART_packet/ip/test_UART_packet_clk_wiz_0_0/test_UART_packet_clk_wiz_0_0_stub.v}
// Design      : test_UART_packet_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module test_UART_packet_clk_wiz_0_0(clk_out1, reset, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,reset,locked,clk_in1" */;
  output clk_out1;
  input reset;
  output locked;
  input clk_in1;
endmodule

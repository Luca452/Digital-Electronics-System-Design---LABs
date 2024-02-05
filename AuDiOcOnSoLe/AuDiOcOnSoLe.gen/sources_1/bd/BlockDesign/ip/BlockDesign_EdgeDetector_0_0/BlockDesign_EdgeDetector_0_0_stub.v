// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon May 22 00:06:42 2023
// Host        : DESKTOP-JKUPK39 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/daido/Desktop/Polimi/Anno
//               4/DESD/Git/KittCarPWM/AuDiOcOnSoLe/AuDiOcOnSoLe.gen/sources_1/bd/BlockDesign/ip/BlockDesign_EdgeDetector_0_0/BlockDesign_EdgeDetector_0_0_stub.v}
// Design      : BlockDesign_EdgeDetector_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "EdgeDetector,Vivado 2020.2" *)
module BlockDesign_EdgeDetector_0_0(clk, rst, input_signal, output_signal)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,input_signal,output_signal" */;
  input clk;
  input rst;
  input input_signal;
  output output_signal;
endmodule

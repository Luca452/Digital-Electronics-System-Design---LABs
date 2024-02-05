// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon May 22 23:55:51 2023
// Host        : DESKTOP-JKUPK39 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ BlockDesign_MobileMean_0_0_stub.v
// Design      : BlockDesign_MobileMean_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "MobileMean,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(aclk, aresetn, S_AXIS_TVALID, S_AXIS_TDATA, 
  S_AXIS_TREADY, S_AXIS_TLAST, M_AXIS_TREADY, M_AXIS_TDATA, M_AXIS_TLAST, M_AXIS_TVALID, 
  filter_enable)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,S_AXIS_TVALID,S_AXIS_TDATA[23:0],S_AXIS_TREADY,S_AXIS_TLAST,M_AXIS_TREADY,M_AXIS_TDATA[23:0],M_AXIS_TLAST,M_AXIS_TVALID,filter_enable" */;
  input aclk;
  input aresetn;
  input S_AXIS_TVALID;
  input [23:0]S_AXIS_TDATA;
  output S_AXIS_TREADY;
  input S_AXIS_TLAST;
  input M_AXIS_TREADY;
  output [23:0]M_AXIS_TDATA;
  output M_AXIS_TLAST;
  output M_AXIS_TVALID;
  input filter_enable;
endmodule

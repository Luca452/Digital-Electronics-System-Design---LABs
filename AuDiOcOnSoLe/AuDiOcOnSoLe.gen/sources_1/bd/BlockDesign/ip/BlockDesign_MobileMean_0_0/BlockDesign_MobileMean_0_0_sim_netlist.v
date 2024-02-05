// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon May 22 23:55:52 2023
// Host        : DESKTOP-JKUPK39 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/daido/Desktop/Polimi/Anno
//               4/DESD/Git/KittCarPWM/AuDiOcOnSoLe/AuDiOcOnSoLe.gen/sources_1/bd/BlockDesign/ip/BlockDesign_MobileMean_0_0/BlockDesign_MobileMean_0_0_sim_netlist.v}
// Design      : BlockDesign_MobileMean_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "BlockDesign_MobileMean_0_0,MobileMean,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "MobileMean,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module BlockDesign_MobileMean_0_0
   (aclk,
    aresetn,
    S_AXIS_TVALID,
    S_AXIS_TDATA,
    S_AXIS_TREADY,
    S_AXIS_TLAST,
    M_AXIS_TREADY,
    M_AXIS_TDATA,
    M_AXIS_TLAST,
    M_AXIS_TVALID,
    filter_enable);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF M_AXIS:S_AXIS, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input S_AXIS_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [23:0]S_AXIS_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output S_AXIS_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input S_AXIS_TLAST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input M_AXIS_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [23:0]M_AXIS_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output M_AXIS_TLAST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output M_AXIS_TVALID;
  input filter_enable;

  wire [23:0]M_AXIS_TDATA;
  wire M_AXIS_TLAST;
  wire M_AXIS_TREADY;
  wire M_AXIS_TVALID;
  wire [23:0]S_AXIS_TDATA;
  wire S_AXIS_TLAST;
  wire S_AXIS_TREADY;
  wire S_AXIS_TVALID;
  wire aclk;
  wire aresetn;
  wire filter_enable;

  BlockDesign_MobileMean_0_0_MobileMean U0
       (.M_AXIS_TDATA(M_AXIS_TDATA),
        .M_AXIS_TLAST(M_AXIS_TLAST),
        .M_AXIS_TREADY(M_AXIS_TREADY),
        .M_AXIS_TVALID(M_AXIS_TVALID),
        .S_AXIS_TDATA(S_AXIS_TDATA),
        .S_AXIS_TLAST(S_AXIS_TLAST),
        .S_AXIS_TREADY(S_AXIS_TREADY),
        .S_AXIS_TVALID(S_AXIS_TVALID),
        .aclk(aclk),
        .aresetn(aresetn),
        .filter_enable(filter_enable));
endmodule

(* ORIG_REF_NAME = "MobileMean" *) 
module BlockDesign_MobileMean_0_0_MobileMean
   (S_AXIS_TREADY,
    M_AXIS_TDATA,
    M_AXIS_TLAST,
    M_AXIS_TVALID,
    S_AXIS_TDATA,
    aclk,
    S_AXIS_TLAST,
    aresetn,
    M_AXIS_TREADY,
    filter_enable,
    S_AXIS_TVALID);
  output S_AXIS_TREADY;
  output [23:0]M_AXIS_TDATA;
  output M_AXIS_TLAST;
  output M_AXIS_TVALID;
  input [23:0]S_AXIS_TDATA;
  input aclk;
  input S_AXIS_TLAST;
  input aresetn;
  input M_AXIS_TREADY;
  input filter_enable;
  input S_AXIS_TVALID;

  wire [23:0]DATA_R;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire [23:0]M_AXIS_TDATA;
  wire [23:0]M_AXIS_TDATA_int;
  wire M_AXIS_TDATA_int0;
  wire \M_AXIS_TDATA_int_reg_n_0_[0] ;
  wire \M_AXIS_TDATA_int_reg_n_0_[10] ;
  wire \M_AXIS_TDATA_int_reg_n_0_[11] ;
  wire \M_AXIS_TDATA_int_reg_n_0_[12] ;
  wire \M_AXIS_TDATA_int_reg_n_0_[13] ;
  wire \M_AXIS_TDATA_int_reg_n_0_[14] ;
  wire \M_AXIS_TDATA_int_reg_n_0_[15] ;
  wire \M_AXIS_TDATA_int_reg_n_0_[16] ;
  wire \M_AXIS_TDATA_int_reg_n_0_[17] ;
  wire \M_AXIS_TDATA_int_reg_n_0_[18] ;
  wire \M_AXIS_TDATA_int_reg_n_0_[19] ;
  wire \M_AXIS_TDATA_int_reg_n_0_[1] ;
  wire \M_AXIS_TDATA_int_reg_n_0_[20] ;
  wire \M_AXIS_TDATA_int_reg_n_0_[21] ;
  wire \M_AXIS_TDATA_int_reg_n_0_[22] ;
  wire \M_AXIS_TDATA_int_reg_n_0_[23] ;
  wire \M_AXIS_TDATA_int_reg_n_0_[2] ;
  wire \M_AXIS_TDATA_int_reg_n_0_[3] ;
  wire \M_AXIS_TDATA_int_reg_n_0_[4] ;
  wire \M_AXIS_TDATA_int_reg_n_0_[5] ;
  wire \M_AXIS_TDATA_int_reg_n_0_[6] ;
  wire \M_AXIS_TDATA_int_reg_n_0_[7] ;
  wire \M_AXIS_TDATA_int_reg_n_0_[8] ;
  wire \M_AXIS_TDATA_int_reg_n_0_[9] ;
  wire M_AXIS_TLAST;
  wire M_AXIS_TLAST_i_1_n_0;
  wire M_AXIS_TLAST_int_i_1_n_0;
  wire M_AXIS_TLAST_int_reg_n_0;
  wire M_AXIS_TREADY;
  wire M_AXIS_TVALID;
  wire M_AXIS_TVALID_i_1_n_0;
  wire M_AXIS_TVALID_int_i_1_n_0;
  wire M_AXIS_TVALID_int_i_2_n_0;
  wire M_AXIS_TVALID_int_reg_n_0;
  wire [28:0]SUM_TOTAL_L;
  wire SUM_TOTAL_L0_carry__0_i_1_n_0;
  wire SUM_TOTAL_L0_carry__0_i_2_n_0;
  wire SUM_TOTAL_L0_carry__0_i_3_n_0;
  wire SUM_TOTAL_L0_carry__0_i_4_n_0;
  wire SUM_TOTAL_L0_carry__0_i_5_n_0;
  wire SUM_TOTAL_L0_carry__0_i_6_n_0;
  wire SUM_TOTAL_L0_carry__0_i_7_n_0;
  wire SUM_TOTAL_L0_carry__0_i_8_n_0;
  wire SUM_TOTAL_L0_carry__0_n_0;
  wire SUM_TOTAL_L0_carry__0_n_1;
  wire SUM_TOTAL_L0_carry__0_n_2;
  wire SUM_TOTAL_L0_carry__0_n_3;
  wire SUM_TOTAL_L0_carry__0_n_4;
  wire SUM_TOTAL_L0_carry__0_n_5;
  wire SUM_TOTAL_L0_carry__0_n_6;
  wire SUM_TOTAL_L0_carry__0_n_7;
  wire SUM_TOTAL_L0_carry__1_i_1_n_0;
  wire SUM_TOTAL_L0_carry__1_i_2_n_0;
  wire SUM_TOTAL_L0_carry__1_i_3_n_0;
  wire SUM_TOTAL_L0_carry__1_i_4_n_0;
  wire SUM_TOTAL_L0_carry__1_i_5_n_0;
  wire SUM_TOTAL_L0_carry__1_i_6_n_0;
  wire SUM_TOTAL_L0_carry__1_i_7_n_0;
  wire SUM_TOTAL_L0_carry__1_i_8_n_0;
  wire SUM_TOTAL_L0_carry__1_n_0;
  wire SUM_TOTAL_L0_carry__1_n_1;
  wire SUM_TOTAL_L0_carry__1_n_2;
  wire SUM_TOTAL_L0_carry__1_n_3;
  wire SUM_TOTAL_L0_carry__1_n_4;
  wire SUM_TOTAL_L0_carry__1_n_5;
  wire SUM_TOTAL_L0_carry__1_n_6;
  wire SUM_TOTAL_L0_carry__1_n_7;
  wire SUM_TOTAL_L0_carry__2_i_1_n_0;
  wire SUM_TOTAL_L0_carry__2_i_2_n_0;
  wire SUM_TOTAL_L0_carry__2_i_3_n_0;
  wire SUM_TOTAL_L0_carry__2_i_4_n_0;
  wire SUM_TOTAL_L0_carry__2_i_5_n_0;
  wire SUM_TOTAL_L0_carry__2_i_6_n_0;
  wire SUM_TOTAL_L0_carry__2_i_7_n_0;
  wire SUM_TOTAL_L0_carry__2_i_8_n_0;
  wire SUM_TOTAL_L0_carry__2_n_0;
  wire SUM_TOTAL_L0_carry__2_n_1;
  wire SUM_TOTAL_L0_carry__2_n_2;
  wire SUM_TOTAL_L0_carry__2_n_3;
  wire SUM_TOTAL_L0_carry__2_n_4;
  wire SUM_TOTAL_L0_carry__2_n_5;
  wire SUM_TOTAL_L0_carry__2_n_6;
  wire SUM_TOTAL_L0_carry__2_n_7;
  wire SUM_TOTAL_L0_carry__3_i_1_n_0;
  wire SUM_TOTAL_L0_carry__3_i_2_n_0;
  wire SUM_TOTAL_L0_carry__3_i_3_n_0;
  wire SUM_TOTAL_L0_carry__3_i_4_n_0;
  wire SUM_TOTAL_L0_carry__3_i_5_n_0;
  wire SUM_TOTAL_L0_carry__3_i_6_n_0;
  wire SUM_TOTAL_L0_carry__3_i_7_n_0;
  wire SUM_TOTAL_L0_carry__3_i_8_n_0;
  wire SUM_TOTAL_L0_carry__3_n_0;
  wire SUM_TOTAL_L0_carry__3_n_1;
  wire SUM_TOTAL_L0_carry__3_n_2;
  wire SUM_TOTAL_L0_carry__3_n_3;
  wire SUM_TOTAL_L0_carry__3_n_4;
  wire SUM_TOTAL_L0_carry__3_n_5;
  wire SUM_TOTAL_L0_carry__3_n_6;
  wire SUM_TOTAL_L0_carry__3_n_7;
  wire SUM_TOTAL_L0_carry__4_i_1_n_0;
  wire SUM_TOTAL_L0_carry__4_i_2_n_0;
  wire SUM_TOTAL_L0_carry__4_i_3_n_0;
  wire SUM_TOTAL_L0_carry__4_i_4_n_0;
  wire SUM_TOTAL_L0_carry__4_i_5_n_0;
  wire SUM_TOTAL_L0_carry__4_i_6_n_0;
  wire SUM_TOTAL_L0_carry__4_i_7_n_0;
  wire SUM_TOTAL_L0_carry__4_i_8_n_0;
  wire SUM_TOTAL_L0_carry__4_n_0;
  wire SUM_TOTAL_L0_carry__4_n_1;
  wire SUM_TOTAL_L0_carry__4_n_2;
  wire SUM_TOTAL_L0_carry__4_n_3;
  wire SUM_TOTAL_L0_carry__4_n_4;
  wire SUM_TOTAL_L0_carry__4_n_5;
  wire SUM_TOTAL_L0_carry__4_n_6;
  wire SUM_TOTAL_L0_carry__4_n_7;
  wire SUM_TOTAL_L0_carry__5_i_1_n_0;
  wire SUM_TOTAL_L0_carry__5_i_2_n_0;
  wire SUM_TOTAL_L0_carry__5_i_3_n_0;
  wire SUM_TOTAL_L0_carry__5_i_4_n_0;
  wire SUM_TOTAL_L0_carry__5_i_5_n_0;
  wire SUM_TOTAL_L0_carry__5_n_0;
  wire SUM_TOTAL_L0_carry__5_n_1;
  wire SUM_TOTAL_L0_carry__5_n_2;
  wire SUM_TOTAL_L0_carry__5_n_3;
  wire SUM_TOTAL_L0_carry__5_n_4;
  wire SUM_TOTAL_L0_carry__5_n_5;
  wire SUM_TOTAL_L0_carry__5_n_6;
  wire SUM_TOTAL_L0_carry__5_n_7;
  wire SUM_TOTAL_L0_carry__6_i_1_n_0;
  wire SUM_TOTAL_L0_carry__6_n_7;
  wire SUM_TOTAL_L0_carry_i_1_n_0;
  wire SUM_TOTAL_L0_carry_i_2_n_0;
  wire SUM_TOTAL_L0_carry_i_3_n_0;
  wire SUM_TOTAL_L0_carry_i_4_n_0;
  wire SUM_TOTAL_L0_carry_i_5_n_0;
  wire SUM_TOTAL_L0_carry_i_6_n_0;
  wire SUM_TOTAL_L0_carry_i_7_n_0;
  wire SUM_TOTAL_L0_carry_i_8_n_0;
  wire SUM_TOTAL_L0_carry_n_0;
  wire SUM_TOTAL_L0_carry_n_1;
  wire SUM_TOTAL_L0_carry_n_2;
  wire SUM_TOTAL_L0_carry_n_3;
  wire SUM_TOTAL_L0_carry_n_4;
  wire SUM_TOTAL_L0_carry_n_5;
  wire SUM_TOTAL_L0_carry_n_6;
  wire SUM_TOTAL_L0_carry_n_7;
  wire SUM_TOTAL_R0_carry__0_i_1_n_0;
  wire SUM_TOTAL_R0_carry__0_i_2_n_0;
  wire SUM_TOTAL_R0_carry__0_i_3_n_0;
  wire SUM_TOTAL_R0_carry__0_i_4_n_0;
  wire SUM_TOTAL_R0_carry__0_i_5_n_0;
  wire SUM_TOTAL_R0_carry__0_i_6_n_0;
  wire SUM_TOTAL_R0_carry__0_i_7_n_0;
  wire SUM_TOTAL_R0_carry__0_i_8_n_0;
  wire SUM_TOTAL_R0_carry__0_n_0;
  wire SUM_TOTAL_R0_carry__0_n_1;
  wire SUM_TOTAL_R0_carry__0_n_2;
  wire SUM_TOTAL_R0_carry__0_n_3;
  wire SUM_TOTAL_R0_carry__0_n_4;
  wire SUM_TOTAL_R0_carry__0_n_5;
  wire SUM_TOTAL_R0_carry__0_n_6;
  wire SUM_TOTAL_R0_carry__0_n_7;
  wire SUM_TOTAL_R0_carry__1_i_1_n_0;
  wire SUM_TOTAL_R0_carry__1_i_2_n_0;
  wire SUM_TOTAL_R0_carry__1_i_3_n_0;
  wire SUM_TOTAL_R0_carry__1_i_4_n_0;
  wire SUM_TOTAL_R0_carry__1_i_5_n_0;
  wire SUM_TOTAL_R0_carry__1_i_6_n_0;
  wire SUM_TOTAL_R0_carry__1_i_7_n_0;
  wire SUM_TOTAL_R0_carry__1_i_8_n_0;
  wire SUM_TOTAL_R0_carry__1_n_0;
  wire SUM_TOTAL_R0_carry__1_n_1;
  wire SUM_TOTAL_R0_carry__1_n_2;
  wire SUM_TOTAL_R0_carry__1_n_3;
  wire SUM_TOTAL_R0_carry__1_n_4;
  wire SUM_TOTAL_R0_carry__1_n_5;
  wire SUM_TOTAL_R0_carry__1_n_6;
  wire SUM_TOTAL_R0_carry__1_n_7;
  wire SUM_TOTAL_R0_carry__2_i_1_n_0;
  wire SUM_TOTAL_R0_carry__2_i_2_n_0;
  wire SUM_TOTAL_R0_carry__2_i_3_n_0;
  wire SUM_TOTAL_R0_carry__2_i_4_n_0;
  wire SUM_TOTAL_R0_carry__2_i_5_n_0;
  wire SUM_TOTAL_R0_carry__2_i_6_n_0;
  wire SUM_TOTAL_R0_carry__2_i_7_n_0;
  wire SUM_TOTAL_R0_carry__2_i_8_n_0;
  wire SUM_TOTAL_R0_carry__2_n_0;
  wire SUM_TOTAL_R0_carry__2_n_1;
  wire SUM_TOTAL_R0_carry__2_n_2;
  wire SUM_TOTAL_R0_carry__2_n_3;
  wire SUM_TOTAL_R0_carry__2_n_4;
  wire SUM_TOTAL_R0_carry__2_n_5;
  wire SUM_TOTAL_R0_carry__2_n_6;
  wire SUM_TOTAL_R0_carry__2_n_7;
  wire SUM_TOTAL_R0_carry__3_i_1_n_0;
  wire SUM_TOTAL_R0_carry__3_i_2_n_0;
  wire SUM_TOTAL_R0_carry__3_i_3_n_0;
  wire SUM_TOTAL_R0_carry__3_i_4_n_0;
  wire SUM_TOTAL_R0_carry__3_i_5_n_0;
  wire SUM_TOTAL_R0_carry__3_i_6_n_0;
  wire SUM_TOTAL_R0_carry__3_i_7_n_0;
  wire SUM_TOTAL_R0_carry__3_i_8_n_0;
  wire SUM_TOTAL_R0_carry__3_n_0;
  wire SUM_TOTAL_R0_carry__3_n_1;
  wire SUM_TOTAL_R0_carry__3_n_2;
  wire SUM_TOTAL_R0_carry__3_n_3;
  wire SUM_TOTAL_R0_carry__3_n_4;
  wire SUM_TOTAL_R0_carry__3_n_5;
  wire SUM_TOTAL_R0_carry__3_n_6;
  wire SUM_TOTAL_R0_carry__3_n_7;
  wire SUM_TOTAL_R0_carry__4_i_1_n_0;
  wire SUM_TOTAL_R0_carry__4_i_2_n_0;
  wire SUM_TOTAL_R0_carry__4_i_3_n_0;
  wire SUM_TOTAL_R0_carry__4_i_4_n_0;
  wire SUM_TOTAL_R0_carry__4_i_5_n_0;
  wire SUM_TOTAL_R0_carry__4_i_6_n_0;
  wire SUM_TOTAL_R0_carry__4_i_7_n_0;
  wire SUM_TOTAL_R0_carry__4_i_8_n_0;
  wire SUM_TOTAL_R0_carry__4_n_0;
  wire SUM_TOTAL_R0_carry__4_n_1;
  wire SUM_TOTAL_R0_carry__4_n_2;
  wire SUM_TOTAL_R0_carry__4_n_3;
  wire SUM_TOTAL_R0_carry__4_n_4;
  wire SUM_TOTAL_R0_carry__4_n_5;
  wire SUM_TOTAL_R0_carry__4_n_6;
  wire SUM_TOTAL_R0_carry__4_n_7;
  wire SUM_TOTAL_R0_carry__5_i_1_n_0;
  wire SUM_TOTAL_R0_carry__5_i_2_n_0;
  wire SUM_TOTAL_R0_carry__5_i_3_n_0;
  wire SUM_TOTAL_R0_carry__5_i_4_n_0;
  wire SUM_TOTAL_R0_carry__5_i_5_n_0;
  wire SUM_TOTAL_R0_carry__5_n_0;
  wire SUM_TOTAL_R0_carry__5_n_1;
  wire SUM_TOTAL_R0_carry__5_n_2;
  wire SUM_TOTAL_R0_carry__5_n_3;
  wire SUM_TOTAL_R0_carry__5_n_4;
  wire SUM_TOTAL_R0_carry__5_n_5;
  wire SUM_TOTAL_R0_carry__5_n_6;
  wire SUM_TOTAL_R0_carry__5_n_7;
  wire SUM_TOTAL_R0_carry__6_i_1_n_0;
  wire SUM_TOTAL_R0_carry__6_n_7;
  wire SUM_TOTAL_R0_carry_i_1_n_0;
  wire SUM_TOTAL_R0_carry_i_2_n_0;
  wire SUM_TOTAL_R0_carry_i_3_n_0;
  wire SUM_TOTAL_R0_carry_i_4_n_0;
  wire SUM_TOTAL_R0_carry_i_5_n_0;
  wire SUM_TOTAL_R0_carry_i_6_n_0;
  wire SUM_TOTAL_R0_carry_i_7_n_0;
  wire SUM_TOTAL_R0_carry_i_8_n_0;
  wire SUM_TOTAL_R0_carry_n_0;
  wire SUM_TOTAL_R0_carry_n_1;
  wire SUM_TOTAL_R0_carry_n_2;
  wire SUM_TOTAL_R0_carry_n_3;
  wire SUM_TOTAL_R0_carry_n_4;
  wire SUM_TOTAL_R0_carry_n_5;
  wire SUM_TOTAL_R0_carry_n_6;
  wire SUM_TOTAL_R0_carry_n_7;
  wire \SUM_TOTAL_R_reg_n_0_[0] ;
  wire \SUM_TOTAL_R_reg_n_0_[1] ;
  wire \SUM_TOTAL_R_reg_n_0_[2] ;
  wire \SUM_TOTAL_R_reg_n_0_[3] ;
  wire \SUM_TOTAL_R_reg_n_0_[4] ;
  wire [23:0]S_AXIS_TDATA;
  wire S_AXIS_TLAST;
  wire S_AXIS_TREADY;
  wire S_AXIS_TREADY_i_1_n_0;
  wire S_AXIS_TREADY_int;
  wire S_AXIS_TREADY_int_i_1_n_0;
  wire S_AXIS_TREADY_int_i_3_n_0;
  wire S_AXIS_TREADY_int_reg_n_0;
  wire S_AXIS_TVALID;
  wire aclk;
  wire aresetn;
  wire filter_enable;
  wire \mem_L_reg[0]0 ;
  wire \mem_L_reg[30][0]_srl31_n_0 ;
  wire \mem_L_reg[30][10]_srl31_n_0 ;
  wire \mem_L_reg[30][11]_srl31_n_0 ;
  wire \mem_L_reg[30][12]_srl31_n_0 ;
  wire \mem_L_reg[30][13]_srl31_n_0 ;
  wire \mem_L_reg[30][14]_srl31_n_0 ;
  wire \mem_L_reg[30][15]_srl31_n_0 ;
  wire \mem_L_reg[30][16]_srl31_n_0 ;
  wire \mem_L_reg[30][17]_srl31_n_0 ;
  wire \mem_L_reg[30][18]_srl31_n_0 ;
  wire \mem_L_reg[30][19]_srl31_n_0 ;
  wire \mem_L_reg[30][1]_srl31_n_0 ;
  wire \mem_L_reg[30][20]_srl31_n_0 ;
  wire \mem_L_reg[30][21]_srl31_n_0 ;
  wire \mem_L_reg[30][22]_srl31_n_0 ;
  wire \mem_L_reg[30][23]_srl31_n_0 ;
  wire \mem_L_reg[30][2]_srl31_n_0 ;
  wire \mem_L_reg[30][3]_srl31_n_0 ;
  wire \mem_L_reg[30][4]_srl31_n_0 ;
  wire \mem_L_reg[30][5]_srl31_n_0 ;
  wire \mem_L_reg[30][6]_srl31_n_0 ;
  wire \mem_L_reg[30][7]_srl31_n_0 ;
  wire \mem_L_reg[30][8]_srl31_n_0 ;
  wire \mem_L_reg[30][9]_srl31_n_0 ;
  wire [23:0]\mem_L_reg[31] ;
  wire \mem_R_reg[0]0 ;
  wire \mem_R_reg[30][0]_srl31_n_0 ;
  wire \mem_R_reg[30][10]_srl31_n_0 ;
  wire \mem_R_reg[30][11]_srl31_n_0 ;
  wire \mem_R_reg[30][12]_srl31_n_0 ;
  wire \mem_R_reg[30][13]_srl31_n_0 ;
  wire \mem_R_reg[30][14]_srl31_n_0 ;
  wire \mem_R_reg[30][15]_srl31_n_0 ;
  wire \mem_R_reg[30][16]_srl31_n_0 ;
  wire \mem_R_reg[30][17]_srl31_n_0 ;
  wire \mem_R_reg[30][18]_srl31_n_0 ;
  wire \mem_R_reg[30][19]_srl31_n_0 ;
  wire \mem_R_reg[30][1]_srl31_n_0 ;
  wire \mem_R_reg[30][20]_srl31_n_0 ;
  wire \mem_R_reg[30][21]_srl31_n_0 ;
  wire \mem_R_reg[30][22]_srl31_n_0 ;
  wire \mem_R_reg[30][23]_srl31_n_0 ;
  wire \mem_R_reg[30][2]_srl31_n_0 ;
  wire \mem_R_reg[30][3]_srl31_n_0 ;
  wire \mem_R_reg[30][4]_srl31_n_0 ;
  wire \mem_R_reg[30][5]_srl31_n_0 ;
  wire \mem_R_reg[30][6]_srl31_n_0 ;
  wire \mem_R_reg[30][7]_srl31_n_0 ;
  wire \mem_R_reg[30][8]_srl31_n_0 ;
  wire \mem_R_reg[30][9]_srl31_n_0 ;
  wire [23:0]\mem_R_reg[31] ;
  wire [23:0]p_0_in;
  wire [23:0]p_0_in1_in;
  wire [1:0]state__0;
  wire [3:0]NLW_SUM_TOTAL_L0_carry__6_CO_UNCONNECTED;
  wire [3:1]NLW_SUM_TOTAL_L0_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_SUM_TOTAL_R0_carry__6_CO_UNCONNECTED;
  wire [3:1]NLW_SUM_TOTAL_R0_carry__6_O_UNCONNECTED;
  wire \NLW_mem_L_reg[30][0]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_L_reg[30][10]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_L_reg[30][11]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_L_reg[30][12]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_L_reg[30][13]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_L_reg[30][14]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_L_reg[30][15]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_L_reg[30][16]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_L_reg[30][17]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_L_reg[30][18]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_L_reg[30][19]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_L_reg[30][1]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_L_reg[30][20]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_L_reg[30][21]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_L_reg[30][22]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_L_reg[30][23]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_L_reg[30][2]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_L_reg[30][3]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_L_reg[30][4]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_L_reg[30][5]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_L_reg[30][6]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_L_reg[30][7]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_L_reg[30][8]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_L_reg[30][9]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_R_reg[30][0]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_R_reg[30][10]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_R_reg[30][11]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_R_reg[30][12]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_R_reg[30][13]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_R_reg[30][14]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_R_reg[30][15]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_R_reg[30][16]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_R_reg[30][17]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_R_reg[30][18]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_R_reg[30][19]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_R_reg[30][1]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_R_reg[30][20]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_R_reg[30][21]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_R_reg[30][22]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_R_reg[30][23]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_R_reg[30][2]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_R_reg[30][3]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_R_reg[30][4]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_R_reg[30][5]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_R_reg[30][6]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_R_reg[30][7]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_R_reg[30][8]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_R_reg[30][9]_srl31_Q31_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[0] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(p_0_in[0]),
        .Q(DATA_R[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[10] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(p_0_in[10]),
        .Q(DATA_R[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[11] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(p_0_in[11]),
        .Q(DATA_R[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[12] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(p_0_in[12]),
        .Q(DATA_R[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[13] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(p_0_in[13]),
        .Q(DATA_R[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[14] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(p_0_in[14]),
        .Q(DATA_R[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[15] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(p_0_in[15]),
        .Q(DATA_R[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[16] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(p_0_in[16]),
        .Q(DATA_R[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[17] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(p_0_in[17]),
        .Q(DATA_R[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[18] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(p_0_in[18]),
        .Q(DATA_R[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[19] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(p_0_in[19]),
        .Q(DATA_R[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[1] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(p_0_in[1]),
        .Q(DATA_R[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[20] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(p_0_in[20]),
        .Q(DATA_R[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[21] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(p_0_in[21]),
        .Q(DATA_R[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[22] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(p_0_in[22]),
        .Q(DATA_R[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[23] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(p_0_in[23]),
        .Q(DATA_R[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[2] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(p_0_in[2]),
        .Q(DATA_R[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[3] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(p_0_in[3]),
        .Q(DATA_R[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[4] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(p_0_in[4]),
        .Q(DATA_R[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[5] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(p_0_in[5]),
        .Q(DATA_R[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[6] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(p_0_in[6]),
        .Q(DATA_R[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[7] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(p_0_in[7]),
        .Q(DATA_R[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[8] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(p_0_in[8]),
        .Q(DATA_R[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[9] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(p_0_in[9]),
        .Q(DATA_R[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h553A3A3A2A2A3A3A)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state__0[0]),
        .I1(S_AXIS_TLAST),
        .I2(\FSM_sequential_state[1]_i_2_n_0 ),
        .I3(aresetn),
        .I4(state__0[1]),
        .I5(M_AXIS_TREADY),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h557F80806F6F8080)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0[0]),
        .I1(S_AXIS_TLAST),
        .I2(\FSM_sequential_state[1]_i_2_n_0 ),
        .I3(aresetn),
        .I4(state__0[1]),
        .I5(M_AXIS_TREADY),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(state__0[1]),
        .I1(filter_enable),
        .I2(S_AXIS_TVALID),
        .I3(aresetn),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "receive_r:01,send_l:10,receive_l:00,send_r:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "receive_r:01,send_l:10,receive_l:00,send_r:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state__0[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA[0]_i_1 
       (.I0(\M_AXIS_TDATA_int_reg_n_0_[0] ),
        .I1(filter_enable),
        .I2(S_AXIS_TDATA[0]),
        .O(p_0_in1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA[10]_i_1 
       (.I0(\M_AXIS_TDATA_int_reg_n_0_[10] ),
        .I1(filter_enable),
        .I2(S_AXIS_TDATA[10]),
        .O(p_0_in1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA[11]_i_1 
       (.I0(\M_AXIS_TDATA_int_reg_n_0_[11] ),
        .I1(filter_enable),
        .I2(S_AXIS_TDATA[11]),
        .O(p_0_in1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA[12]_i_1 
       (.I0(\M_AXIS_TDATA_int_reg_n_0_[12] ),
        .I1(filter_enable),
        .I2(S_AXIS_TDATA[12]),
        .O(p_0_in1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA[13]_i_1 
       (.I0(\M_AXIS_TDATA_int_reg_n_0_[13] ),
        .I1(filter_enable),
        .I2(S_AXIS_TDATA[13]),
        .O(p_0_in1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA[14]_i_1 
       (.I0(\M_AXIS_TDATA_int_reg_n_0_[14] ),
        .I1(filter_enable),
        .I2(S_AXIS_TDATA[14]),
        .O(p_0_in1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA[15]_i_1 
       (.I0(\M_AXIS_TDATA_int_reg_n_0_[15] ),
        .I1(filter_enable),
        .I2(S_AXIS_TDATA[15]),
        .O(p_0_in1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA[16]_i_1 
       (.I0(\M_AXIS_TDATA_int_reg_n_0_[16] ),
        .I1(filter_enable),
        .I2(S_AXIS_TDATA[16]),
        .O(p_0_in1_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA[17]_i_1 
       (.I0(\M_AXIS_TDATA_int_reg_n_0_[17] ),
        .I1(filter_enable),
        .I2(S_AXIS_TDATA[17]),
        .O(p_0_in1_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA[18]_i_1 
       (.I0(\M_AXIS_TDATA_int_reg_n_0_[18] ),
        .I1(filter_enable),
        .I2(S_AXIS_TDATA[18]),
        .O(p_0_in1_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA[19]_i_1 
       (.I0(\M_AXIS_TDATA_int_reg_n_0_[19] ),
        .I1(filter_enable),
        .I2(S_AXIS_TDATA[19]),
        .O(p_0_in1_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA[1]_i_1 
       (.I0(\M_AXIS_TDATA_int_reg_n_0_[1] ),
        .I1(filter_enable),
        .I2(S_AXIS_TDATA[1]),
        .O(p_0_in1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA[20]_i_1 
       (.I0(\M_AXIS_TDATA_int_reg_n_0_[20] ),
        .I1(filter_enable),
        .I2(S_AXIS_TDATA[20]),
        .O(p_0_in1_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA[21]_i_1 
       (.I0(\M_AXIS_TDATA_int_reg_n_0_[21] ),
        .I1(filter_enable),
        .I2(S_AXIS_TDATA[21]),
        .O(p_0_in1_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA[22]_i_1 
       (.I0(\M_AXIS_TDATA_int_reg_n_0_[22] ),
        .I1(filter_enable),
        .I2(S_AXIS_TDATA[22]),
        .O(p_0_in1_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA[23]_i_1 
       (.I0(\M_AXIS_TDATA_int_reg_n_0_[23] ),
        .I1(filter_enable),
        .I2(S_AXIS_TDATA[23]),
        .O(p_0_in1_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA[2]_i_1 
       (.I0(\M_AXIS_TDATA_int_reg_n_0_[2] ),
        .I1(filter_enable),
        .I2(S_AXIS_TDATA[2]),
        .O(p_0_in1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA[3]_i_1 
       (.I0(\M_AXIS_TDATA_int_reg_n_0_[3] ),
        .I1(filter_enable),
        .I2(S_AXIS_TDATA[3]),
        .O(p_0_in1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA[4]_i_1 
       (.I0(\M_AXIS_TDATA_int_reg_n_0_[4] ),
        .I1(filter_enable),
        .I2(S_AXIS_TDATA[4]),
        .O(p_0_in1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA[5]_i_1 
       (.I0(\M_AXIS_TDATA_int_reg_n_0_[5] ),
        .I1(filter_enable),
        .I2(S_AXIS_TDATA[5]),
        .O(p_0_in1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA[6]_i_1 
       (.I0(\M_AXIS_TDATA_int_reg_n_0_[6] ),
        .I1(filter_enable),
        .I2(S_AXIS_TDATA[6]),
        .O(p_0_in1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA[7]_i_1 
       (.I0(\M_AXIS_TDATA_int_reg_n_0_[7] ),
        .I1(filter_enable),
        .I2(S_AXIS_TDATA[7]),
        .O(p_0_in1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA[8]_i_1 
       (.I0(\M_AXIS_TDATA_int_reg_n_0_[8] ),
        .I1(filter_enable),
        .I2(S_AXIS_TDATA[8]),
        .O(p_0_in1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA[9]_i_1 
       (.I0(\M_AXIS_TDATA_int_reg_n_0_[9] ),
        .I1(filter_enable),
        .I2(S_AXIS_TDATA[9]),
        .O(p_0_in1_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA_int[0]_i_1 
       (.I0(DATA_R[0]),
        .I1(state__0[1]),
        .I2(SUM_TOTAL_L[5]),
        .O(M_AXIS_TDATA_int[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA_int[10]_i_1 
       (.I0(DATA_R[10]),
        .I1(state__0[1]),
        .I2(SUM_TOTAL_L[15]),
        .O(M_AXIS_TDATA_int[10]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA_int[11]_i_1 
       (.I0(DATA_R[11]),
        .I1(state__0[1]),
        .I2(SUM_TOTAL_L[16]),
        .O(M_AXIS_TDATA_int[11]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA_int[12]_i_1 
       (.I0(DATA_R[12]),
        .I1(state__0[1]),
        .I2(SUM_TOTAL_L[17]),
        .O(M_AXIS_TDATA_int[12]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA_int[13]_i_1 
       (.I0(DATA_R[13]),
        .I1(state__0[1]),
        .I2(SUM_TOTAL_L[18]),
        .O(M_AXIS_TDATA_int[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA_int[14]_i_1 
       (.I0(DATA_R[14]),
        .I1(state__0[1]),
        .I2(SUM_TOTAL_L[19]),
        .O(M_AXIS_TDATA_int[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA_int[15]_i_1 
       (.I0(DATA_R[15]),
        .I1(state__0[1]),
        .I2(SUM_TOTAL_L[20]),
        .O(M_AXIS_TDATA_int[15]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA_int[16]_i_1 
       (.I0(DATA_R[16]),
        .I1(state__0[1]),
        .I2(SUM_TOTAL_L[21]),
        .O(M_AXIS_TDATA_int[16]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA_int[17]_i_1 
       (.I0(DATA_R[17]),
        .I1(state__0[1]),
        .I2(SUM_TOTAL_L[22]),
        .O(M_AXIS_TDATA_int[17]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA_int[18]_i_1 
       (.I0(DATA_R[18]),
        .I1(state__0[1]),
        .I2(SUM_TOTAL_L[23]),
        .O(M_AXIS_TDATA_int[18]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA_int[19]_i_1 
       (.I0(DATA_R[19]),
        .I1(state__0[1]),
        .I2(SUM_TOTAL_L[24]),
        .O(M_AXIS_TDATA_int[19]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA_int[1]_i_1 
       (.I0(DATA_R[1]),
        .I1(state__0[1]),
        .I2(SUM_TOTAL_L[6]),
        .O(M_AXIS_TDATA_int[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA_int[20]_i_1 
       (.I0(DATA_R[20]),
        .I1(state__0[1]),
        .I2(SUM_TOTAL_L[25]),
        .O(M_AXIS_TDATA_int[20]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA_int[21]_i_1 
       (.I0(DATA_R[21]),
        .I1(state__0[1]),
        .I2(SUM_TOTAL_L[26]),
        .O(M_AXIS_TDATA_int[21]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA_int[22]_i_1 
       (.I0(DATA_R[22]),
        .I1(state__0[1]),
        .I2(SUM_TOTAL_L[27]),
        .O(M_AXIS_TDATA_int[22]));
  LUT5 #(
    .INIT(32'hFFFF4000)) 
    \M_AXIS_TDATA_int[23]_i_1 
       (.I0(state__0[0]),
        .I1(M_AXIS_TREADY),
        .I2(state__0[1]),
        .I3(aresetn),
        .I4(\mem_L_reg[0]0 ),
        .O(M_AXIS_TDATA_int0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA_int[23]_i_2 
       (.I0(DATA_R[23]),
        .I1(state__0[1]),
        .I2(SUM_TOTAL_L[28]),
        .O(M_AXIS_TDATA_int[23]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA_int[2]_i_1 
       (.I0(DATA_R[2]),
        .I1(state__0[1]),
        .I2(SUM_TOTAL_L[7]),
        .O(M_AXIS_TDATA_int[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA_int[3]_i_1 
       (.I0(DATA_R[3]),
        .I1(state__0[1]),
        .I2(SUM_TOTAL_L[8]),
        .O(M_AXIS_TDATA_int[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA_int[4]_i_1 
       (.I0(DATA_R[4]),
        .I1(state__0[1]),
        .I2(SUM_TOTAL_L[9]),
        .O(M_AXIS_TDATA_int[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA_int[5]_i_1 
       (.I0(DATA_R[5]),
        .I1(state__0[1]),
        .I2(SUM_TOTAL_L[10]),
        .O(M_AXIS_TDATA_int[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA_int[6]_i_1 
       (.I0(DATA_R[6]),
        .I1(state__0[1]),
        .I2(SUM_TOTAL_L[11]),
        .O(M_AXIS_TDATA_int[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA_int[7]_i_1 
       (.I0(DATA_R[7]),
        .I1(state__0[1]),
        .I2(SUM_TOTAL_L[12]),
        .O(M_AXIS_TDATA_int[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA_int[8]_i_1 
       (.I0(DATA_R[8]),
        .I1(state__0[1]),
        .I2(SUM_TOTAL_L[13]),
        .O(M_AXIS_TDATA_int[8]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA_int[9]_i_1 
       (.I0(DATA_R[9]),
        .I1(state__0[1]),
        .I2(SUM_TOTAL_L[14]),
        .O(M_AXIS_TDATA_int[9]));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_int_reg[0] 
       (.C(aclk),
        .CE(M_AXIS_TDATA_int0),
        .D(M_AXIS_TDATA_int[0]),
        .Q(\M_AXIS_TDATA_int_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_int_reg[10] 
       (.C(aclk),
        .CE(M_AXIS_TDATA_int0),
        .D(M_AXIS_TDATA_int[10]),
        .Q(\M_AXIS_TDATA_int_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_int_reg[11] 
       (.C(aclk),
        .CE(M_AXIS_TDATA_int0),
        .D(M_AXIS_TDATA_int[11]),
        .Q(\M_AXIS_TDATA_int_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_int_reg[12] 
       (.C(aclk),
        .CE(M_AXIS_TDATA_int0),
        .D(M_AXIS_TDATA_int[12]),
        .Q(\M_AXIS_TDATA_int_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_int_reg[13] 
       (.C(aclk),
        .CE(M_AXIS_TDATA_int0),
        .D(M_AXIS_TDATA_int[13]),
        .Q(\M_AXIS_TDATA_int_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_int_reg[14] 
       (.C(aclk),
        .CE(M_AXIS_TDATA_int0),
        .D(M_AXIS_TDATA_int[14]),
        .Q(\M_AXIS_TDATA_int_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_int_reg[15] 
       (.C(aclk),
        .CE(M_AXIS_TDATA_int0),
        .D(M_AXIS_TDATA_int[15]),
        .Q(\M_AXIS_TDATA_int_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_int_reg[16] 
       (.C(aclk),
        .CE(M_AXIS_TDATA_int0),
        .D(M_AXIS_TDATA_int[16]),
        .Q(\M_AXIS_TDATA_int_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_int_reg[17] 
       (.C(aclk),
        .CE(M_AXIS_TDATA_int0),
        .D(M_AXIS_TDATA_int[17]),
        .Q(\M_AXIS_TDATA_int_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_int_reg[18] 
       (.C(aclk),
        .CE(M_AXIS_TDATA_int0),
        .D(M_AXIS_TDATA_int[18]),
        .Q(\M_AXIS_TDATA_int_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_int_reg[19] 
       (.C(aclk),
        .CE(M_AXIS_TDATA_int0),
        .D(M_AXIS_TDATA_int[19]),
        .Q(\M_AXIS_TDATA_int_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_int_reg[1] 
       (.C(aclk),
        .CE(M_AXIS_TDATA_int0),
        .D(M_AXIS_TDATA_int[1]),
        .Q(\M_AXIS_TDATA_int_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_int_reg[20] 
       (.C(aclk),
        .CE(M_AXIS_TDATA_int0),
        .D(M_AXIS_TDATA_int[20]),
        .Q(\M_AXIS_TDATA_int_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_int_reg[21] 
       (.C(aclk),
        .CE(M_AXIS_TDATA_int0),
        .D(M_AXIS_TDATA_int[21]),
        .Q(\M_AXIS_TDATA_int_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_int_reg[22] 
       (.C(aclk),
        .CE(M_AXIS_TDATA_int0),
        .D(M_AXIS_TDATA_int[22]),
        .Q(\M_AXIS_TDATA_int_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_int_reg[23] 
       (.C(aclk),
        .CE(M_AXIS_TDATA_int0),
        .D(M_AXIS_TDATA_int[23]),
        .Q(\M_AXIS_TDATA_int_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_int_reg[2] 
       (.C(aclk),
        .CE(M_AXIS_TDATA_int0),
        .D(M_AXIS_TDATA_int[2]),
        .Q(\M_AXIS_TDATA_int_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_int_reg[3] 
       (.C(aclk),
        .CE(M_AXIS_TDATA_int0),
        .D(M_AXIS_TDATA_int[3]),
        .Q(\M_AXIS_TDATA_int_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_int_reg[4] 
       (.C(aclk),
        .CE(M_AXIS_TDATA_int0),
        .D(M_AXIS_TDATA_int[4]),
        .Q(\M_AXIS_TDATA_int_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_int_reg[5] 
       (.C(aclk),
        .CE(M_AXIS_TDATA_int0),
        .D(M_AXIS_TDATA_int[5]),
        .Q(\M_AXIS_TDATA_int_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_int_reg[6] 
       (.C(aclk),
        .CE(M_AXIS_TDATA_int0),
        .D(M_AXIS_TDATA_int[6]),
        .Q(\M_AXIS_TDATA_int_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_int_reg[7] 
       (.C(aclk),
        .CE(M_AXIS_TDATA_int0),
        .D(M_AXIS_TDATA_int[7]),
        .Q(\M_AXIS_TDATA_int_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_int_reg[8] 
       (.C(aclk),
        .CE(M_AXIS_TDATA_int0),
        .D(M_AXIS_TDATA_int[8]),
        .Q(\M_AXIS_TDATA_int_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_int_reg[9] 
       (.C(aclk),
        .CE(M_AXIS_TDATA_int0),
        .D(M_AXIS_TDATA_int[9]),
        .Q(\M_AXIS_TDATA_int_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[0] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[0]),
        .Q(M_AXIS_TDATA[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[10] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[10]),
        .Q(M_AXIS_TDATA[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[11] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[11]),
        .Q(M_AXIS_TDATA[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[12] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[12]),
        .Q(M_AXIS_TDATA[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[13] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[13]),
        .Q(M_AXIS_TDATA[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[14] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[14]),
        .Q(M_AXIS_TDATA[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[15] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[15]),
        .Q(M_AXIS_TDATA[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[16] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[16]),
        .Q(M_AXIS_TDATA[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[17] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[17]),
        .Q(M_AXIS_TDATA[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[18] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[18]),
        .Q(M_AXIS_TDATA[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[19] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[19]),
        .Q(M_AXIS_TDATA[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[1] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[1]),
        .Q(M_AXIS_TDATA[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[20] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[20]),
        .Q(M_AXIS_TDATA[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[21] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[21]),
        .Q(M_AXIS_TDATA[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[22] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[22]),
        .Q(M_AXIS_TDATA[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[23] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[23]),
        .Q(M_AXIS_TDATA[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[2] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[2]),
        .Q(M_AXIS_TDATA[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[3] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[3]),
        .Q(M_AXIS_TDATA[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[4] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[4]),
        .Q(M_AXIS_TDATA[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[5] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[5]),
        .Q(M_AXIS_TDATA[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[6] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[6]),
        .Q(M_AXIS_TDATA[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[7] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[7]),
        .Q(M_AXIS_TDATA[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[8] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[8]),
        .Q(M_AXIS_TDATA[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[9] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[9]),
        .Q(M_AXIS_TDATA[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    M_AXIS_TLAST_i_1
       (.I0(M_AXIS_TLAST_int_reg_n_0),
        .I1(filter_enable),
        .I2(S_AXIS_TLAST),
        .O(M_AXIS_TLAST_i_1_n_0));
  LUT6 #(
    .INIT(64'hC0C0FFFFC0C04000)) 
    M_AXIS_TLAST_int_i_1
       (.I0(state__0[0]),
        .I1(M_AXIS_TREADY),
        .I2(state__0[1]),
        .I3(aresetn),
        .I4(\mem_R_reg[0]0 ),
        .I5(M_AXIS_TLAST_int_reg_n_0),
        .O(M_AXIS_TLAST_int_i_1_n_0));
  FDRE M_AXIS_TLAST_int_reg
       (.C(aclk),
        .CE(1'b1),
        .D(M_AXIS_TLAST_int_i_1_n_0),
        .Q(M_AXIS_TLAST_int_reg_n_0),
        .R(1'b0));
  FDRE M_AXIS_TLAST_reg
       (.C(aclk),
        .CE(aresetn),
        .D(M_AXIS_TLAST_i_1_n_0),
        .Q(M_AXIS_TLAST),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    M_AXIS_TVALID_i_1
       (.I0(M_AXIS_TVALID_int_reg_n_0),
        .I1(filter_enable),
        .I2(S_AXIS_TVALID),
        .O(M_AXIS_TVALID_i_1_n_0));
  LUT6 #(
    .INIT(64'h88888FFF88888000)) 
    M_AXIS_TVALID_int_i_1
       (.I0(M_AXIS_TVALID_int_i_2_n_0),
        .I1(S_AXIS_TLAST),
        .I2(state__0[0]),
        .I3(S_AXIS_TREADY_int_i_3_n_0),
        .I4(\mem_R_reg[0]0 ),
        .I5(M_AXIS_TVALID_int_reg_n_0),
        .O(M_AXIS_TVALID_int_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    M_AXIS_TVALID_int_i_2
       (.I0(S_AXIS_TVALID),
        .I1(filter_enable),
        .I2(state__0[1]),
        .O(M_AXIS_TVALID_int_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    M_AXIS_TVALID_int_reg
       (.C(aclk),
        .CE(1'b1),
        .D(M_AXIS_TVALID_int_i_1_n_0),
        .Q(M_AXIS_TVALID_int_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    M_AXIS_TVALID_reg
       (.C(aclk),
        .CE(aresetn),
        .D(M_AXIS_TVALID_i_1_n_0),
        .Q(M_AXIS_TVALID),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 SUM_TOTAL_L0_carry
       (.CI(1'b0),
        .CO({SUM_TOTAL_L0_carry_n_0,SUM_TOTAL_L0_carry_n_1,SUM_TOTAL_L0_carry_n_2,SUM_TOTAL_L0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({SUM_TOTAL_L0_carry_i_1_n_0,SUM_TOTAL_L0_carry_i_2_n_0,SUM_TOTAL_L0_carry_i_3_n_0,SUM_TOTAL_L0_carry_i_4_n_0}),
        .O({SUM_TOTAL_L0_carry_n_4,SUM_TOTAL_L0_carry_n_5,SUM_TOTAL_L0_carry_n_6,SUM_TOTAL_L0_carry_n_7}),
        .S({SUM_TOTAL_L0_carry_i_5_n_0,SUM_TOTAL_L0_carry_i_6_n_0,SUM_TOTAL_L0_carry_i_7_n_0,SUM_TOTAL_L0_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 SUM_TOTAL_L0_carry__0
       (.CI(SUM_TOTAL_L0_carry_n_0),
        .CO({SUM_TOTAL_L0_carry__0_n_0,SUM_TOTAL_L0_carry__0_n_1,SUM_TOTAL_L0_carry__0_n_2,SUM_TOTAL_L0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({SUM_TOTAL_L0_carry__0_i_1_n_0,SUM_TOTAL_L0_carry__0_i_2_n_0,SUM_TOTAL_L0_carry__0_i_3_n_0,SUM_TOTAL_L0_carry__0_i_4_n_0}),
        .O({SUM_TOTAL_L0_carry__0_n_4,SUM_TOTAL_L0_carry__0_n_5,SUM_TOTAL_L0_carry__0_n_6,SUM_TOTAL_L0_carry__0_n_7}),
        .S({SUM_TOTAL_L0_carry__0_i_5_n_0,SUM_TOTAL_L0_carry__0_i_6_n_0,SUM_TOTAL_L0_carry__0_i_7_n_0,SUM_TOTAL_L0_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_L0_carry__0_i_1
       (.I0(SUM_TOTAL_L[6]),
        .I1(\mem_L_reg[31] [6]),
        .I2(S_AXIS_TDATA[6]),
        .O(SUM_TOTAL_L0_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_L0_carry__0_i_2
       (.I0(SUM_TOTAL_L[5]),
        .I1(\mem_L_reg[31] [5]),
        .I2(S_AXIS_TDATA[5]),
        .O(SUM_TOTAL_L0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_L0_carry__0_i_3
       (.I0(SUM_TOTAL_L[4]),
        .I1(\mem_L_reg[31] [4]),
        .I2(S_AXIS_TDATA[4]),
        .O(SUM_TOTAL_L0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_L0_carry__0_i_4
       (.I0(SUM_TOTAL_L[3]),
        .I1(\mem_L_reg[31] [3]),
        .I2(S_AXIS_TDATA[3]),
        .O(SUM_TOTAL_L0_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_L0_carry__0_i_5
       (.I0(S_AXIS_TDATA[6]),
        .I1(\mem_L_reg[31] [6]),
        .I2(SUM_TOTAL_L[6]),
        .I3(\mem_L_reg[31] [7]),
        .I4(S_AXIS_TDATA[7]),
        .I5(SUM_TOTAL_L[7]),
        .O(SUM_TOTAL_L0_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_L0_carry__0_i_6
       (.I0(S_AXIS_TDATA[5]),
        .I1(\mem_L_reg[31] [5]),
        .I2(SUM_TOTAL_L[5]),
        .I3(\mem_L_reg[31] [6]),
        .I4(S_AXIS_TDATA[6]),
        .I5(SUM_TOTAL_L[6]),
        .O(SUM_TOTAL_L0_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_L0_carry__0_i_7
       (.I0(S_AXIS_TDATA[4]),
        .I1(\mem_L_reg[31] [4]),
        .I2(SUM_TOTAL_L[4]),
        .I3(\mem_L_reg[31] [5]),
        .I4(S_AXIS_TDATA[5]),
        .I5(SUM_TOTAL_L[5]),
        .O(SUM_TOTAL_L0_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_L0_carry__0_i_8
       (.I0(S_AXIS_TDATA[3]),
        .I1(\mem_L_reg[31] [3]),
        .I2(SUM_TOTAL_L[3]),
        .I3(\mem_L_reg[31] [4]),
        .I4(S_AXIS_TDATA[4]),
        .I5(SUM_TOTAL_L[4]),
        .O(SUM_TOTAL_L0_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 SUM_TOTAL_L0_carry__1
       (.CI(SUM_TOTAL_L0_carry__0_n_0),
        .CO({SUM_TOTAL_L0_carry__1_n_0,SUM_TOTAL_L0_carry__1_n_1,SUM_TOTAL_L0_carry__1_n_2,SUM_TOTAL_L0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({SUM_TOTAL_L0_carry__1_i_1_n_0,SUM_TOTAL_L0_carry__1_i_2_n_0,SUM_TOTAL_L0_carry__1_i_3_n_0,SUM_TOTAL_L0_carry__1_i_4_n_0}),
        .O({SUM_TOTAL_L0_carry__1_n_4,SUM_TOTAL_L0_carry__1_n_5,SUM_TOTAL_L0_carry__1_n_6,SUM_TOTAL_L0_carry__1_n_7}),
        .S({SUM_TOTAL_L0_carry__1_i_5_n_0,SUM_TOTAL_L0_carry__1_i_6_n_0,SUM_TOTAL_L0_carry__1_i_7_n_0,SUM_TOTAL_L0_carry__1_i_8_n_0}));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_L0_carry__1_i_1
       (.I0(SUM_TOTAL_L[10]),
        .I1(\mem_L_reg[31] [10]),
        .I2(S_AXIS_TDATA[10]),
        .O(SUM_TOTAL_L0_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_L0_carry__1_i_2
       (.I0(SUM_TOTAL_L[9]),
        .I1(\mem_L_reg[31] [9]),
        .I2(S_AXIS_TDATA[9]),
        .O(SUM_TOTAL_L0_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_L0_carry__1_i_3
       (.I0(SUM_TOTAL_L[8]),
        .I1(\mem_L_reg[31] [8]),
        .I2(S_AXIS_TDATA[8]),
        .O(SUM_TOTAL_L0_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_L0_carry__1_i_4
       (.I0(SUM_TOTAL_L[7]),
        .I1(\mem_L_reg[31] [7]),
        .I2(S_AXIS_TDATA[7]),
        .O(SUM_TOTAL_L0_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_L0_carry__1_i_5
       (.I0(S_AXIS_TDATA[10]),
        .I1(\mem_L_reg[31] [10]),
        .I2(SUM_TOTAL_L[10]),
        .I3(\mem_L_reg[31] [11]),
        .I4(S_AXIS_TDATA[11]),
        .I5(SUM_TOTAL_L[11]),
        .O(SUM_TOTAL_L0_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_L0_carry__1_i_6
       (.I0(S_AXIS_TDATA[9]),
        .I1(\mem_L_reg[31] [9]),
        .I2(SUM_TOTAL_L[9]),
        .I3(\mem_L_reg[31] [10]),
        .I4(S_AXIS_TDATA[10]),
        .I5(SUM_TOTAL_L[10]),
        .O(SUM_TOTAL_L0_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_L0_carry__1_i_7
       (.I0(S_AXIS_TDATA[8]),
        .I1(\mem_L_reg[31] [8]),
        .I2(SUM_TOTAL_L[8]),
        .I3(\mem_L_reg[31] [9]),
        .I4(S_AXIS_TDATA[9]),
        .I5(SUM_TOTAL_L[9]),
        .O(SUM_TOTAL_L0_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_L0_carry__1_i_8
       (.I0(S_AXIS_TDATA[7]),
        .I1(\mem_L_reg[31] [7]),
        .I2(SUM_TOTAL_L[7]),
        .I3(\mem_L_reg[31] [8]),
        .I4(S_AXIS_TDATA[8]),
        .I5(SUM_TOTAL_L[8]),
        .O(SUM_TOTAL_L0_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 SUM_TOTAL_L0_carry__2
       (.CI(SUM_TOTAL_L0_carry__1_n_0),
        .CO({SUM_TOTAL_L0_carry__2_n_0,SUM_TOTAL_L0_carry__2_n_1,SUM_TOTAL_L0_carry__2_n_2,SUM_TOTAL_L0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({SUM_TOTAL_L0_carry__2_i_1_n_0,SUM_TOTAL_L0_carry__2_i_2_n_0,SUM_TOTAL_L0_carry__2_i_3_n_0,SUM_TOTAL_L0_carry__2_i_4_n_0}),
        .O({SUM_TOTAL_L0_carry__2_n_4,SUM_TOTAL_L0_carry__2_n_5,SUM_TOTAL_L0_carry__2_n_6,SUM_TOTAL_L0_carry__2_n_7}),
        .S({SUM_TOTAL_L0_carry__2_i_5_n_0,SUM_TOTAL_L0_carry__2_i_6_n_0,SUM_TOTAL_L0_carry__2_i_7_n_0,SUM_TOTAL_L0_carry__2_i_8_n_0}));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_L0_carry__2_i_1
       (.I0(SUM_TOTAL_L[14]),
        .I1(\mem_L_reg[31] [14]),
        .I2(S_AXIS_TDATA[14]),
        .O(SUM_TOTAL_L0_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_L0_carry__2_i_2
       (.I0(SUM_TOTAL_L[13]),
        .I1(\mem_L_reg[31] [13]),
        .I2(S_AXIS_TDATA[13]),
        .O(SUM_TOTAL_L0_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_L0_carry__2_i_3
       (.I0(SUM_TOTAL_L[12]),
        .I1(\mem_L_reg[31] [12]),
        .I2(S_AXIS_TDATA[12]),
        .O(SUM_TOTAL_L0_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_L0_carry__2_i_4
       (.I0(SUM_TOTAL_L[11]),
        .I1(\mem_L_reg[31] [11]),
        .I2(S_AXIS_TDATA[11]),
        .O(SUM_TOTAL_L0_carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_L0_carry__2_i_5
       (.I0(S_AXIS_TDATA[14]),
        .I1(\mem_L_reg[31] [14]),
        .I2(SUM_TOTAL_L[14]),
        .I3(\mem_L_reg[31] [15]),
        .I4(S_AXIS_TDATA[15]),
        .I5(SUM_TOTAL_L[15]),
        .O(SUM_TOTAL_L0_carry__2_i_5_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_L0_carry__2_i_6
       (.I0(S_AXIS_TDATA[13]),
        .I1(\mem_L_reg[31] [13]),
        .I2(SUM_TOTAL_L[13]),
        .I3(\mem_L_reg[31] [14]),
        .I4(S_AXIS_TDATA[14]),
        .I5(SUM_TOTAL_L[14]),
        .O(SUM_TOTAL_L0_carry__2_i_6_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_L0_carry__2_i_7
       (.I0(S_AXIS_TDATA[12]),
        .I1(\mem_L_reg[31] [12]),
        .I2(SUM_TOTAL_L[12]),
        .I3(\mem_L_reg[31] [13]),
        .I4(S_AXIS_TDATA[13]),
        .I5(SUM_TOTAL_L[13]),
        .O(SUM_TOTAL_L0_carry__2_i_7_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_L0_carry__2_i_8
       (.I0(S_AXIS_TDATA[11]),
        .I1(\mem_L_reg[31] [11]),
        .I2(SUM_TOTAL_L[11]),
        .I3(\mem_L_reg[31] [12]),
        .I4(S_AXIS_TDATA[12]),
        .I5(SUM_TOTAL_L[12]),
        .O(SUM_TOTAL_L0_carry__2_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 SUM_TOTAL_L0_carry__3
       (.CI(SUM_TOTAL_L0_carry__2_n_0),
        .CO({SUM_TOTAL_L0_carry__3_n_0,SUM_TOTAL_L0_carry__3_n_1,SUM_TOTAL_L0_carry__3_n_2,SUM_TOTAL_L0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({SUM_TOTAL_L0_carry__3_i_1_n_0,SUM_TOTAL_L0_carry__3_i_2_n_0,SUM_TOTAL_L0_carry__3_i_3_n_0,SUM_TOTAL_L0_carry__3_i_4_n_0}),
        .O({SUM_TOTAL_L0_carry__3_n_4,SUM_TOTAL_L0_carry__3_n_5,SUM_TOTAL_L0_carry__3_n_6,SUM_TOTAL_L0_carry__3_n_7}),
        .S({SUM_TOTAL_L0_carry__3_i_5_n_0,SUM_TOTAL_L0_carry__3_i_6_n_0,SUM_TOTAL_L0_carry__3_i_7_n_0,SUM_TOTAL_L0_carry__3_i_8_n_0}));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_L0_carry__3_i_1
       (.I0(SUM_TOTAL_L[18]),
        .I1(\mem_L_reg[31] [18]),
        .I2(S_AXIS_TDATA[18]),
        .O(SUM_TOTAL_L0_carry__3_i_1_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_L0_carry__3_i_2
       (.I0(SUM_TOTAL_L[17]),
        .I1(\mem_L_reg[31] [17]),
        .I2(S_AXIS_TDATA[17]),
        .O(SUM_TOTAL_L0_carry__3_i_2_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_L0_carry__3_i_3
       (.I0(SUM_TOTAL_L[16]),
        .I1(\mem_L_reg[31] [16]),
        .I2(S_AXIS_TDATA[16]),
        .O(SUM_TOTAL_L0_carry__3_i_3_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_L0_carry__3_i_4
       (.I0(SUM_TOTAL_L[15]),
        .I1(\mem_L_reg[31] [15]),
        .I2(S_AXIS_TDATA[15]),
        .O(SUM_TOTAL_L0_carry__3_i_4_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_L0_carry__3_i_5
       (.I0(S_AXIS_TDATA[18]),
        .I1(\mem_L_reg[31] [18]),
        .I2(SUM_TOTAL_L[18]),
        .I3(\mem_L_reg[31] [19]),
        .I4(S_AXIS_TDATA[19]),
        .I5(SUM_TOTAL_L[19]),
        .O(SUM_TOTAL_L0_carry__3_i_5_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_L0_carry__3_i_6
       (.I0(S_AXIS_TDATA[17]),
        .I1(\mem_L_reg[31] [17]),
        .I2(SUM_TOTAL_L[17]),
        .I3(\mem_L_reg[31] [18]),
        .I4(S_AXIS_TDATA[18]),
        .I5(SUM_TOTAL_L[18]),
        .O(SUM_TOTAL_L0_carry__3_i_6_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_L0_carry__3_i_7
       (.I0(S_AXIS_TDATA[16]),
        .I1(\mem_L_reg[31] [16]),
        .I2(SUM_TOTAL_L[16]),
        .I3(\mem_L_reg[31] [17]),
        .I4(S_AXIS_TDATA[17]),
        .I5(SUM_TOTAL_L[17]),
        .O(SUM_TOTAL_L0_carry__3_i_7_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_L0_carry__3_i_8
       (.I0(S_AXIS_TDATA[15]),
        .I1(\mem_L_reg[31] [15]),
        .I2(SUM_TOTAL_L[15]),
        .I3(\mem_L_reg[31] [16]),
        .I4(S_AXIS_TDATA[16]),
        .I5(SUM_TOTAL_L[16]),
        .O(SUM_TOTAL_L0_carry__3_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 SUM_TOTAL_L0_carry__4
       (.CI(SUM_TOTAL_L0_carry__3_n_0),
        .CO({SUM_TOTAL_L0_carry__4_n_0,SUM_TOTAL_L0_carry__4_n_1,SUM_TOTAL_L0_carry__4_n_2,SUM_TOTAL_L0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({SUM_TOTAL_L0_carry__4_i_1_n_0,SUM_TOTAL_L0_carry__4_i_2_n_0,SUM_TOTAL_L0_carry__4_i_3_n_0,SUM_TOTAL_L0_carry__4_i_4_n_0}),
        .O({SUM_TOTAL_L0_carry__4_n_4,SUM_TOTAL_L0_carry__4_n_5,SUM_TOTAL_L0_carry__4_n_6,SUM_TOTAL_L0_carry__4_n_7}),
        .S({SUM_TOTAL_L0_carry__4_i_5_n_0,SUM_TOTAL_L0_carry__4_i_6_n_0,SUM_TOTAL_L0_carry__4_i_7_n_0,SUM_TOTAL_L0_carry__4_i_8_n_0}));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_L0_carry__4_i_1
       (.I0(SUM_TOTAL_L[22]),
        .I1(\mem_L_reg[31] [22]),
        .I2(S_AXIS_TDATA[22]),
        .O(SUM_TOTAL_L0_carry__4_i_1_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_L0_carry__4_i_2
       (.I0(SUM_TOTAL_L[21]),
        .I1(\mem_L_reg[31] [21]),
        .I2(S_AXIS_TDATA[21]),
        .O(SUM_TOTAL_L0_carry__4_i_2_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_L0_carry__4_i_3
       (.I0(SUM_TOTAL_L[20]),
        .I1(\mem_L_reg[31] [20]),
        .I2(S_AXIS_TDATA[20]),
        .O(SUM_TOTAL_L0_carry__4_i_3_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_L0_carry__4_i_4
       (.I0(SUM_TOTAL_L[19]),
        .I1(\mem_L_reg[31] [19]),
        .I2(S_AXIS_TDATA[19]),
        .O(SUM_TOTAL_L0_carry__4_i_4_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_L0_carry__4_i_5
       (.I0(S_AXIS_TDATA[22]),
        .I1(\mem_L_reg[31] [22]),
        .I2(SUM_TOTAL_L[22]),
        .I3(\mem_L_reg[31] [23]),
        .I4(S_AXIS_TDATA[23]),
        .I5(SUM_TOTAL_L[23]),
        .O(SUM_TOTAL_L0_carry__4_i_5_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_L0_carry__4_i_6
       (.I0(S_AXIS_TDATA[21]),
        .I1(\mem_L_reg[31] [21]),
        .I2(SUM_TOTAL_L[21]),
        .I3(\mem_L_reg[31] [22]),
        .I4(S_AXIS_TDATA[22]),
        .I5(SUM_TOTAL_L[22]),
        .O(SUM_TOTAL_L0_carry__4_i_6_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_L0_carry__4_i_7
       (.I0(S_AXIS_TDATA[20]),
        .I1(\mem_L_reg[31] [20]),
        .I2(SUM_TOTAL_L[20]),
        .I3(\mem_L_reg[31] [21]),
        .I4(S_AXIS_TDATA[21]),
        .I5(SUM_TOTAL_L[21]),
        .O(SUM_TOTAL_L0_carry__4_i_7_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_L0_carry__4_i_8
       (.I0(S_AXIS_TDATA[19]),
        .I1(\mem_L_reg[31] [19]),
        .I2(SUM_TOTAL_L[19]),
        .I3(\mem_L_reg[31] [20]),
        .I4(S_AXIS_TDATA[20]),
        .I5(SUM_TOTAL_L[20]),
        .O(SUM_TOTAL_L0_carry__4_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 SUM_TOTAL_L0_carry__5
       (.CI(SUM_TOTAL_L0_carry__4_n_0),
        .CO({SUM_TOTAL_L0_carry__5_n_0,SUM_TOTAL_L0_carry__5_n_1,SUM_TOTAL_L0_carry__5_n_2,SUM_TOTAL_L0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({SUM_TOTAL_L[26:24],SUM_TOTAL_L0_carry__5_i_1_n_0}),
        .O({SUM_TOTAL_L0_carry__5_n_4,SUM_TOTAL_L0_carry__5_n_5,SUM_TOTAL_L0_carry__5_n_6,SUM_TOTAL_L0_carry__5_n_7}),
        .S({SUM_TOTAL_L0_carry__5_i_2_n_0,SUM_TOTAL_L0_carry__5_i_3_n_0,SUM_TOTAL_L0_carry__5_i_4_n_0,SUM_TOTAL_L0_carry__5_i_5_n_0}));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_L0_carry__5_i_1
       (.I0(SUM_TOTAL_L[23]),
        .I1(S_AXIS_TDATA[23]),
        .I2(\mem_L_reg[31] [23]),
        .O(SUM_TOTAL_L0_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    SUM_TOTAL_L0_carry__5_i_2
       (.I0(SUM_TOTAL_L[26]),
        .I1(SUM_TOTAL_L[27]),
        .O(SUM_TOTAL_L0_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    SUM_TOTAL_L0_carry__5_i_3
       (.I0(SUM_TOTAL_L[25]),
        .I1(SUM_TOTAL_L[26]),
        .O(SUM_TOTAL_L0_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    SUM_TOTAL_L0_carry__5_i_4
       (.I0(SUM_TOTAL_L[24]),
        .I1(SUM_TOTAL_L[25]),
        .O(SUM_TOTAL_L0_carry__5_i_4_n_0));
  LUT4 #(
    .INIT(16'hB24D)) 
    SUM_TOTAL_L0_carry__5_i_5
       (.I0(\mem_L_reg[31] [23]),
        .I1(S_AXIS_TDATA[23]),
        .I2(SUM_TOTAL_L[23]),
        .I3(SUM_TOTAL_L[24]),
        .O(SUM_TOTAL_L0_carry__5_i_5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 SUM_TOTAL_L0_carry__6
       (.CI(SUM_TOTAL_L0_carry__5_n_0),
        .CO(NLW_SUM_TOTAL_L0_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_SUM_TOTAL_L0_carry__6_O_UNCONNECTED[3:1],SUM_TOTAL_L0_carry__6_n_7}),
        .S({1'b0,1'b0,1'b0,SUM_TOTAL_L0_carry__6_i_1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    SUM_TOTAL_L0_carry__6_i_1
       (.I0(SUM_TOTAL_L[27]),
        .I1(SUM_TOTAL_L[28]),
        .O(SUM_TOTAL_L0_carry__6_i_1_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_L0_carry_i_1
       (.I0(SUM_TOTAL_L[2]),
        .I1(\mem_L_reg[31] [2]),
        .I2(S_AXIS_TDATA[2]),
        .O(SUM_TOTAL_L0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_L0_carry_i_2
       (.I0(SUM_TOTAL_L[1]),
        .I1(\mem_L_reg[31] [1]),
        .I2(S_AXIS_TDATA[1]),
        .O(SUM_TOTAL_L0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    SUM_TOTAL_L0_carry_i_3
       (.I0(S_AXIS_TDATA[0]),
        .I1(SUM_TOTAL_L[0]),
        .O(SUM_TOTAL_L0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    SUM_TOTAL_L0_carry_i_4
       (.I0(S_AXIS_TDATA[0]),
        .I1(SUM_TOTAL_L[0]),
        .O(SUM_TOTAL_L0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_L0_carry_i_5
       (.I0(S_AXIS_TDATA[2]),
        .I1(\mem_L_reg[31] [2]),
        .I2(SUM_TOTAL_L[2]),
        .I3(\mem_L_reg[31] [3]),
        .I4(S_AXIS_TDATA[3]),
        .I5(SUM_TOTAL_L[3]),
        .O(SUM_TOTAL_L0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_L0_carry_i_6
       (.I0(S_AXIS_TDATA[1]),
        .I1(\mem_L_reg[31] [1]),
        .I2(SUM_TOTAL_L[1]),
        .I3(\mem_L_reg[31] [2]),
        .I4(S_AXIS_TDATA[2]),
        .I5(SUM_TOTAL_L[2]),
        .O(SUM_TOTAL_L0_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    SUM_TOTAL_L0_carry_i_7
       (.I0(SUM_TOTAL_L[0]),
        .I1(S_AXIS_TDATA[0]),
        .I2(\mem_L_reg[31] [1]),
        .I3(S_AXIS_TDATA[1]),
        .I4(SUM_TOTAL_L[1]),
        .O(SUM_TOTAL_L0_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    SUM_TOTAL_L0_carry_i_8
       (.I0(SUM_TOTAL_L[0]),
        .I1(S_AXIS_TDATA[0]),
        .I2(\mem_L_reg[31] [0]),
        .O(SUM_TOTAL_L0_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \SUM_TOTAL_L[28]_i_1 
       (.I0(S_AXIS_TLAST),
        .I1(state__0[0]),
        .I2(aresetn),
        .I3(S_AXIS_TVALID),
        .I4(filter_enable),
        .I5(state__0[1]),
        .O(\mem_L_reg[0]0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_L_reg[0] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(SUM_TOTAL_L0_carry_n_7),
        .Q(SUM_TOTAL_L[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_L_reg[10] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(SUM_TOTAL_L0_carry__1_n_5),
        .Q(SUM_TOTAL_L[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_L_reg[11] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(SUM_TOTAL_L0_carry__1_n_4),
        .Q(SUM_TOTAL_L[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_L_reg[12] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(SUM_TOTAL_L0_carry__2_n_7),
        .Q(SUM_TOTAL_L[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_L_reg[13] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(SUM_TOTAL_L0_carry__2_n_6),
        .Q(SUM_TOTAL_L[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_L_reg[14] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(SUM_TOTAL_L0_carry__2_n_5),
        .Q(SUM_TOTAL_L[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_L_reg[15] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(SUM_TOTAL_L0_carry__2_n_4),
        .Q(SUM_TOTAL_L[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_L_reg[16] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(SUM_TOTAL_L0_carry__3_n_7),
        .Q(SUM_TOTAL_L[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_L_reg[17] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(SUM_TOTAL_L0_carry__3_n_6),
        .Q(SUM_TOTAL_L[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_L_reg[18] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(SUM_TOTAL_L0_carry__3_n_5),
        .Q(SUM_TOTAL_L[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_L_reg[19] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(SUM_TOTAL_L0_carry__3_n_4),
        .Q(SUM_TOTAL_L[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_L_reg[1] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(SUM_TOTAL_L0_carry_n_6),
        .Q(SUM_TOTAL_L[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_L_reg[20] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(SUM_TOTAL_L0_carry__4_n_7),
        .Q(SUM_TOTAL_L[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_L_reg[21] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(SUM_TOTAL_L0_carry__4_n_6),
        .Q(SUM_TOTAL_L[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_L_reg[22] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(SUM_TOTAL_L0_carry__4_n_5),
        .Q(SUM_TOTAL_L[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_L_reg[23] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(SUM_TOTAL_L0_carry__4_n_4),
        .Q(SUM_TOTAL_L[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_L_reg[24] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(SUM_TOTAL_L0_carry__5_n_7),
        .Q(SUM_TOTAL_L[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_L_reg[25] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(SUM_TOTAL_L0_carry__5_n_6),
        .Q(SUM_TOTAL_L[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_L_reg[26] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(SUM_TOTAL_L0_carry__5_n_5),
        .Q(SUM_TOTAL_L[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_L_reg[27] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(SUM_TOTAL_L0_carry__5_n_4),
        .Q(SUM_TOTAL_L[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_L_reg[28] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(SUM_TOTAL_L0_carry__6_n_7),
        .Q(SUM_TOTAL_L[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_L_reg[2] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(SUM_TOTAL_L0_carry_n_5),
        .Q(SUM_TOTAL_L[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_L_reg[3] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(SUM_TOTAL_L0_carry_n_4),
        .Q(SUM_TOTAL_L[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_L_reg[4] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(SUM_TOTAL_L0_carry__0_n_7),
        .Q(SUM_TOTAL_L[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_L_reg[5] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(SUM_TOTAL_L0_carry__0_n_6),
        .Q(SUM_TOTAL_L[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_L_reg[6] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(SUM_TOTAL_L0_carry__0_n_5),
        .Q(SUM_TOTAL_L[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_L_reg[7] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(SUM_TOTAL_L0_carry__0_n_4),
        .Q(SUM_TOTAL_L[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_L_reg[8] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(SUM_TOTAL_L0_carry__1_n_7),
        .Q(SUM_TOTAL_L[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_L_reg[9] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(SUM_TOTAL_L0_carry__1_n_6),
        .Q(SUM_TOTAL_L[9]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 SUM_TOTAL_R0_carry
       (.CI(1'b0),
        .CO({SUM_TOTAL_R0_carry_n_0,SUM_TOTAL_R0_carry_n_1,SUM_TOTAL_R0_carry_n_2,SUM_TOTAL_R0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({SUM_TOTAL_R0_carry_i_1_n_0,SUM_TOTAL_R0_carry_i_2_n_0,SUM_TOTAL_R0_carry_i_3_n_0,SUM_TOTAL_R0_carry_i_4_n_0}),
        .O({SUM_TOTAL_R0_carry_n_4,SUM_TOTAL_R0_carry_n_5,SUM_TOTAL_R0_carry_n_6,SUM_TOTAL_R0_carry_n_7}),
        .S({SUM_TOTAL_R0_carry_i_5_n_0,SUM_TOTAL_R0_carry_i_6_n_0,SUM_TOTAL_R0_carry_i_7_n_0,SUM_TOTAL_R0_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 SUM_TOTAL_R0_carry__0
       (.CI(SUM_TOTAL_R0_carry_n_0),
        .CO({SUM_TOTAL_R0_carry__0_n_0,SUM_TOTAL_R0_carry__0_n_1,SUM_TOTAL_R0_carry__0_n_2,SUM_TOTAL_R0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({SUM_TOTAL_R0_carry__0_i_1_n_0,SUM_TOTAL_R0_carry__0_i_2_n_0,SUM_TOTAL_R0_carry__0_i_3_n_0,SUM_TOTAL_R0_carry__0_i_4_n_0}),
        .O({SUM_TOTAL_R0_carry__0_n_4,SUM_TOTAL_R0_carry__0_n_5,SUM_TOTAL_R0_carry__0_n_6,SUM_TOTAL_R0_carry__0_n_7}),
        .S({SUM_TOTAL_R0_carry__0_i_5_n_0,SUM_TOTAL_R0_carry__0_i_6_n_0,SUM_TOTAL_R0_carry__0_i_7_n_0,SUM_TOTAL_R0_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_R0_carry__0_i_1
       (.I0(S_AXIS_TDATA[6]),
        .I1(\mem_R_reg[31] [6]),
        .I2(p_0_in[1]),
        .O(SUM_TOTAL_R0_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_R0_carry__0_i_2
       (.I0(S_AXIS_TDATA[5]),
        .I1(\mem_R_reg[31] [5]),
        .I2(p_0_in[0]),
        .O(SUM_TOTAL_R0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_R0_carry__0_i_3
       (.I0(S_AXIS_TDATA[4]),
        .I1(\mem_R_reg[31] [4]),
        .I2(\SUM_TOTAL_R_reg_n_0_[4] ),
        .O(SUM_TOTAL_R0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_R0_carry__0_i_4
       (.I0(S_AXIS_TDATA[3]),
        .I1(\mem_R_reg[31] [3]),
        .I2(\SUM_TOTAL_R_reg_n_0_[3] ),
        .O(SUM_TOTAL_R0_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_R0_carry__0_i_5
       (.I0(p_0_in[1]),
        .I1(\mem_R_reg[31] [6]),
        .I2(S_AXIS_TDATA[6]),
        .I3(\mem_R_reg[31] [7]),
        .I4(p_0_in[2]),
        .I5(S_AXIS_TDATA[7]),
        .O(SUM_TOTAL_R0_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_R0_carry__0_i_6
       (.I0(p_0_in[0]),
        .I1(\mem_R_reg[31] [5]),
        .I2(S_AXIS_TDATA[5]),
        .I3(\mem_R_reg[31] [6]),
        .I4(p_0_in[1]),
        .I5(S_AXIS_TDATA[6]),
        .O(SUM_TOTAL_R0_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_R0_carry__0_i_7
       (.I0(\SUM_TOTAL_R_reg_n_0_[4] ),
        .I1(\mem_R_reg[31] [4]),
        .I2(S_AXIS_TDATA[4]),
        .I3(\mem_R_reg[31] [5]),
        .I4(p_0_in[0]),
        .I5(S_AXIS_TDATA[5]),
        .O(SUM_TOTAL_R0_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_R0_carry__0_i_8
       (.I0(\SUM_TOTAL_R_reg_n_0_[3] ),
        .I1(\mem_R_reg[31] [3]),
        .I2(S_AXIS_TDATA[3]),
        .I3(\mem_R_reg[31] [4]),
        .I4(\SUM_TOTAL_R_reg_n_0_[4] ),
        .I5(S_AXIS_TDATA[4]),
        .O(SUM_TOTAL_R0_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 SUM_TOTAL_R0_carry__1
       (.CI(SUM_TOTAL_R0_carry__0_n_0),
        .CO({SUM_TOTAL_R0_carry__1_n_0,SUM_TOTAL_R0_carry__1_n_1,SUM_TOTAL_R0_carry__1_n_2,SUM_TOTAL_R0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({SUM_TOTAL_R0_carry__1_i_1_n_0,SUM_TOTAL_R0_carry__1_i_2_n_0,SUM_TOTAL_R0_carry__1_i_3_n_0,SUM_TOTAL_R0_carry__1_i_4_n_0}),
        .O({SUM_TOTAL_R0_carry__1_n_4,SUM_TOTAL_R0_carry__1_n_5,SUM_TOTAL_R0_carry__1_n_6,SUM_TOTAL_R0_carry__1_n_7}),
        .S({SUM_TOTAL_R0_carry__1_i_5_n_0,SUM_TOTAL_R0_carry__1_i_6_n_0,SUM_TOTAL_R0_carry__1_i_7_n_0,SUM_TOTAL_R0_carry__1_i_8_n_0}));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_R0_carry__1_i_1
       (.I0(S_AXIS_TDATA[10]),
        .I1(\mem_R_reg[31] [10]),
        .I2(p_0_in[5]),
        .O(SUM_TOTAL_R0_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_R0_carry__1_i_2
       (.I0(S_AXIS_TDATA[9]),
        .I1(\mem_R_reg[31] [9]),
        .I2(p_0_in[4]),
        .O(SUM_TOTAL_R0_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_R0_carry__1_i_3
       (.I0(S_AXIS_TDATA[8]),
        .I1(\mem_R_reg[31] [8]),
        .I2(p_0_in[3]),
        .O(SUM_TOTAL_R0_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_R0_carry__1_i_4
       (.I0(S_AXIS_TDATA[7]),
        .I1(\mem_R_reg[31] [7]),
        .I2(p_0_in[2]),
        .O(SUM_TOTAL_R0_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_R0_carry__1_i_5
       (.I0(p_0_in[5]),
        .I1(\mem_R_reg[31] [10]),
        .I2(S_AXIS_TDATA[10]),
        .I3(\mem_R_reg[31] [11]),
        .I4(p_0_in[6]),
        .I5(S_AXIS_TDATA[11]),
        .O(SUM_TOTAL_R0_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_R0_carry__1_i_6
       (.I0(p_0_in[4]),
        .I1(\mem_R_reg[31] [9]),
        .I2(S_AXIS_TDATA[9]),
        .I3(\mem_R_reg[31] [10]),
        .I4(p_0_in[5]),
        .I5(S_AXIS_TDATA[10]),
        .O(SUM_TOTAL_R0_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_R0_carry__1_i_7
       (.I0(p_0_in[3]),
        .I1(\mem_R_reg[31] [8]),
        .I2(S_AXIS_TDATA[8]),
        .I3(\mem_R_reg[31] [9]),
        .I4(p_0_in[4]),
        .I5(S_AXIS_TDATA[9]),
        .O(SUM_TOTAL_R0_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_R0_carry__1_i_8
       (.I0(p_0_in[2]),
        .I1(\mem_R_reg[31] [7]),
        .I2(S_AXIS_TDATA[7]),
        .I3(\mem_R_reg[31] [8]),
        .I4(p_0_in[3]),
        .I5(S_AXIS_TDATA[8]),
        .O(SUM_TOTAL_R0_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 SUM_TOTAL_R0_carry__2
       (.CI(SUM_TOTAL_R0_carry__1_n_0),
        .CO({SUM_TOTAL_R0_carry__2_n_0,SUM_TOTAL_R0_carry__2_n_1,SUM_TOTAL_R0_carry__2_n_2,SUM_TOTAL_R0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({SUM_TOTAL_R0_carry__2_i_1_n_0,SUM_TOTAL_R0_carry__2_i_2_n_0,SUM_TOTAL_R0_carry__2_i_3_n_0,SUM_TOTAL_R0_carry__2_i_4_n_0}),
        .O({SUM_TOTAL_R0_carry__2_n_4,SUM_TOTAL_R0_carry__2_n_5,SUM_TOTAL_R0_carry__2_n_6,SUM_TOTAL_R0_carry__2_n_7}),
        .S({SUM_TOTAL_R0_carry__2_i_5_n_0,SUM_TOTAL_R0_carry__2_i_6_n_0,SUM_TOTAL_R0_carry__2_i_7_n_0,SUM_TOTAL_R0_carry__2_i_8_n_0}));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_R0_carry__2_i_1
       (.I0(S_AXIS_TDATA[14]),
        .I1(\mem_R_reg[31] [14]),
        .I2(p_0_in[9]),
        .O(SUM_TOTAL_R0_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_R0_carry__2_i_2
       (.I0(S_AXIS_TDATA[13]),
        .I1(\mem_R_reg[31] [13]),
        .I2(p_0_in[8]),
        .O(SUM_TOTAL_R0_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_R0_carry__2_i_3
       (.I0(S_AXIS_TDATA[12]),
        .I1(\mem_R_reg[31] [12]),
        .I2(p_0_in[7]),
        .O(SUM_TOTAL_R0_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_R0_carry__2_i_4
       (.I0(S_AXIS_TDATA[11]),
        .I1(\mem_R_reg[31] [11]),
        .I2(p_0_in[6]),
        .O(SUM_TOTAL_R0_carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_R0_carry__2_i_5
       (.I0(p_0_in[9]),
        .I1(\mem_R_reg[31] [14]),
        .I2(S_AXIS_TDATA[14]),
        .I3(\mem_R_reg[31] [15]),
        .I4(p_0_in[10]),
        .I5(S_AXIS_TDATA[15]),
        .O(SUM_TOTAL_R0_carry__2_i_5_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_R0_carry__2_i_6
       (.I0(p_0_in[8]),
        .I1(\mem_R_reg[31] [13]),
        .I2(S_AXIS_TDATA[13]),
        .I3(\mem_R_reg[31] [14]),
        .I4(p_0_in[9]),
        .I5(S_AXIS_TDATA[14]),
        .O(SUM_TOTAL_R0_carry__2_i_6_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_R0_carry__2_i_7
       (.I0(p_0_in[7]),
        .I1(\mem_R_reg[31] [12]),
        .I2(S_AXIS_TDATA[12]),
        .I3(\mem_R_reg[31] [13]),
        .I4(p_0_in[8]),
        .I5(S_AXIS_TDATA[13]),
        .O(SUM_TOTAL_R0_carry__2_i_7_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_R0_carry__2_i_8
       (.I0(p_0_in[6]),
        .I1(\mem_R_reg[31] [11]),
        .I2(S_AXIS_TDATA[11]),
        .I3(\mem_R_reg[31] [12]),
        .I4(p_0_in[7]),
        .I5(S_AXIS_TDATA[12]),
        .O(SUM_TOTAL_R0_carry__2_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 SUM_TOTAL_R0_carry__3
       (.CI(SUM_TOTAL_R0_carry__2_n_0),
        .CO({SUM_TOTAL_R0_carry__3_n_0,SUM_TOTAL_R0_carry__3_n_1,SUM_TOTAL_R0_carry__3_n_2,SUM_TOTAL_R0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({SUM_TOTAL_R0_carry__3_i_1_n_0,SUM_TOTAL_R0_carry__3_i_2_n_0,SUM_TOTAL_R0_carry__3_i_3_n_0,SUM_TOTAL_R0_carry__3_i_4_n_0}),
        .O({SUM_TOTAL_R0_carry__3_n_4,SUM_TOTAL_R0_carry__3_n_5,SUM_TOTAL_R0_carry__3_n_6,SUM_TOTAL_R0_carry__3_n_7}),
        .S({SUM_TOTAL_R0_carry__3_i_5_n_0,SUM_TOTAL_R0_carry__3_i_6_n_0,SUM_TOTAL_R0_carry__3_i_7_n_0,SUM_TOTAL_R0_carry__3_i_8_n_0}));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_R0_carry__3_i_1
       (.I0(S_AXIS_TDATA[18]),
        .I1(\mem_R_reg[31] [18]),
        .I2(p_0_in[13]),
        .O(SUM_TOTAL_R0_carry__3_i_1_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_R0_carry__3_i_2
       (.I0(S_AXIS_TDATA[17]),
        .I1(\mem_R_reg[31] [17]),
        .I2(p_0_in[12]),
        .O(SUM_TOTAL_R0_carry__3_i_2_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_R0_carry__3_i_3
       (.I0(S_AXIS_TDATA[16]),
        .I1(\mem_R_reg[31] [16]),
        .I2(p_0_in[11]),
        .O(SUM_TOTAL_R0_carry__3_i_3_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_R0_carry__3_i_4
       (.I0(S_AXIS_TDATA[15]),
        .I1(\mem_R_reg[31] [15]),
        .I2(p_0_in[10]),
        .O(SUM_TOTAL_R0_carry__3_i_4_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_R0_carry__3_i_5
       (.I0(p_0_in[13]),
        .I1(\mem_R_reg[31] [18]),
        .I2(S_AXIS_TDATA[18]),
        .I3(\mem_R_reg[31] [19]),
        .I4(p_0_in[14]),
        .I5(S_AXIS_TDATA[19]),
        .O(SUM_TOTAL_R0_carry__3_i_5_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_R0_carry__3_i_6
       (.I0(p_0_in[12]),
        .I1(\mem_R_reg[31] [17]),
        .I2(S_AXIS_TDATA[17]),
        .I3(\mem_R_reg[31] [18]),
        .I4(p_0_in[13]),
        .I5(S_AXIS_TDATA[18]),
        .O(SUM_TOTAL_R0_carry__3_i_6_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_R0_carry__3_i_7
       (.I0(p_0_in[11]),
        .I1(\mem_R_reg[31] [16]),
        .I2(S_AXIS_TDATA[16]),
        .I3(\mem_R_reg[31] [17]),
        .I4(p_0_in[12]),
        .I5(S_AXIS_TDATA[17]),
        .O(SUM_TOTAL_R0_carry__3_i_7_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_R0_carry__3_i_8
       (.I0(p_0_in[10]),
        .I1(\mem_R_reg[31] [15]),
        .I2(S_AXIS_TDATA[15]),
        .I3(\mem_R_reg[31] [16]),
        .I4(p_0_in[11]),
        .I5(S_AXIS_TDATA[16]),
        .O(SUM_TOTAL_R0_carry__3_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 SUM_TOTAL_R0_carry__4
       (.CI(SUM_TOTAL_R0_carry__3_n_0),
        .CO({SUM_TOTAL_R0_carry__4_n_0,SUM_TOTAL_R0_carry__4_n_1,SUM_TOTAL_R0_carry__4_n_2,SUM_TOTAL_R0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({SUM_TOTAL_R0_carry__4_i_1_n_0,SUM_TOTAL_R0_carry__4_i_2_n_0,SUM_TOTAL_R0_carry__4_i_3_n_0,SUM_TOTAL_R0_carry__4_i_4_n_0}),
        .O({SUM_TOTAL_R0_carry__4_n_4,SUM_TOTAL_R0_carry__4_n_5,SUM_TOTAL_R0_carry__4_n_6,SUM_TOTAL_R0_carry__4_n_7}),
        .S({SUM_TOTAL_R0_carry__4_i_5_n_0,SUM_TOTAL_R0_carry__4_i_6_n_0,SUM_TOTAL_R0_carry__4_i_7_n_0,SUM_TOTAL_R0_carry__4_i_8_n_0}));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_R0_carry__4_i_1
       (.I0(S_AXIS_TDATA[22]),
        .I1(\mem_R_reg[31] [22]),
        .I2(p_0_in[17]),
        .O(SUM_TOTAL_R0_carry__4_i_1_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_R0_carry__4_i_2
       (.I0(S_AXIS_TDATA[21]),
        .I1(\mem_R_reg[31] [21]),
        .I2(p_0_in[16]),
        .O(SUM_TOTAL_R0_carry__4_i_2_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_R0_carry__4_i_3
       (.I0(S_AXIS_TDATA[20]),
        .I1(\mem_R_reg[31] [20]),
        .I2(p_0_in[15]),
        .O(SUM_TOTAL_R0_carry__4_i_3_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_R0_carry__4_i_4
       (.I0(S_AXIS_TDATA[19]),
        .I1(\mem_R_reg[31] [19]),
        .I2(p_0_in[14]),
        .O(SUM_TOTAL_R0_carry__4_i_4_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_R0_carry__4_i_5
       (.I0(p_0_in[17]),
        .I1(\mem_R_reg[31] [22]),
        .I2(S_AXIS_TDATA[22]),
        .I3(\mem_R_reg[31] [23]),
        .I4(p_0_in[18]),
        .I5(S_AXIS_TDATA[23]),
        .O(SUM_TOTAL_R0_carry__4_i_5_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_R0_carry__4_i_6
       (.I0(p_0_in[16]),
        .I1(\mem_R_reg[31] [21]),
        .I2(S_AXIS_TDATA[21]),
        .I3(\mem_R_reg[31] [22]),
        .I4(p_0_in[17]),
        .I5(S_AXIS_TDATA[22]),
        .O(SUM_TOTAL_R0_carry__4_i_6_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_R0_carry__4_i_7
       (.I0(p_0_in[15]),
        .I1(\mem_R_reg[31] [20]),
        .I2(S_AXIS_TDATA[20]),
        .I3(\mem_R_reg[31] [21]),
        .I4(p_0_in[16]),
        .I5(S_AXIS_TDATA[21]),
        .O(SUM_TOTAL_R0_carry__4_i_7_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_R0_carry__4_i_8
       (.I0(p_0_in[14]),
        .I1(\mem_R_reg[31] [19]),
        .I2(S_AXIS_TDATA[19]),
        .I3(\mem_R_reg[31] [20]),
        .I4(p_0_in[15]),
        .I5(S_AXIS_TDATA[20]),
        .O(SUM_TOTAL_R0_carry__4_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 SUM_TOTAL_R0_carry__5
       (.CI(SUM_TOTAL_R0_carry__4_n_0),
        .CO({SUM_TOTAL_R0_carry__5_n_0,SUM_TOTAL_R0_carry__5_n_1,SUM_TOTAL_R0_carry__5_n_2,SUM_TOTAL_R0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({p_0_in[21:19],SUM_TOTAL_R0_carry__5_i_1_n_0}),
        .O({SUM_TOTAL_R0_carry__5_n_4,SUM_TOTAL_R0_carry__5_n_5,SUM_TOTAL_R0_carry__5_n_6,SUM_TOTAL_R0_carry__5_n_7}),
        .S({SUM_TOTAL_R0_carry__5_i_2_n_0,SUM_TOTAL_R0_carry__5_i_3_n_0,SUM_TOTAL_R0_carry__5_i_4_n_0,SUM_TOTAL_R0_carry__5_i_5_n_0}));
  LUT3 #(
    .INIT(8'hD4)) 
    SUM_TOTAL_R0_carry__5_i_1
       (.I0(S_AXIS_TDATA[23]),
        .I1(p_0_in[18]),
        .I2(\mem_R_reg[31] [23]),
        .O(SUM_TOTAL_R0_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    SUM_TOTAL_R0_carry__5_i_2
       (.I0(p_0_in[21]),
        .I1(p_0_in[22]),
        .O(SUM_TOTAL_R0_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    SUM_TOTAL_R0_carry__5_i_3
       (.I0(p_0_in[20]),
        .I1(p_0_in[21]),
        .O(SUM_TOTAL_R0_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    SUM_TOTAL_R0_carry__5_i_4
       (.I0(p_0_in[19]),
        .I1(p_0_in[20]),
        .O(SUM_TOTAL_R0_carry__5_i_4_n_0));
  LUT4 #(
    .INIT(16'h8E71)) 
    SUM_TOTAL_R0_carry__5_i_5
       (.I0(\mem_R_reg[31] [23]),
        .I1(p_0_in[18]),
        .I2(S_AXIS_TDATA[23]),
        .I3(p_0_in[19]),
        .O(SUM_TOTAL_R0_carry__5_i_5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 SUM_TOTAL_R0_carry__6
       (.CI(SUM_TOTAL_R0_carry__5_n_0),
        .CO(NLW_SUM_TOTAL_R0_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_SUM_TOTAL_R0_carry__6_O_UNCONNECTED[3:1],SUM_TOTAL_R0_carry__6_n_7}),
        .S({1'b0,1'b0,1'b0,SUM_TOTAL_R0_carry__6_i_1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    SUM_TOTAL_R0_carry__6_i_1
       (.I0(p_0_in[22]),
        .I1(p_0_in[23]),
        .O(SUM_TOTAL_R0_carry__6_i_1_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_R0_carry_i_1
       (.I0(S_AXIS_TDATA[2]),
        .I1(\mem_R_reg[31] [2]),
        .I2(\SUM_TOTAL_R_reg_n_0_[2] ),
        .O(SUM_TOTAL_R0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    SUM_TOTAL_R0_carry_i_2
       (.I0(S_AXIS_TDATA[1]),
        .I1(\mem_R_reg[31] [1]),
        .I2(\SUM_TOTAL_R_reg_n_0_[1] ),
        .O(SUM_TOTAL_R0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    SUM_TOTAL_R0_carry_i_3
       (.I0(S_AXIS_TDATA[0]),
        .I1(\SUM_TOTAL_R_reg_n_0_[0] ),
        .O(SUM_TOTAL_R0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    SUM_TOTAL_R0_carry_i_4
       (.I0(\SUM_TOTAL_R_reg_n_0_[0] ),
        .I1(S_AXIS_TDATA[0]),
        .O(SUM_TOTAL_R0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_R0_carry_i_5
       (.I0(\SUM_TOTAL_R_reg_n_0_[2] ),
        .I1(\mem_R_reg[31] [2]),
        .I2(S_AXIS_TDATA[2]),
        .I3(\mem_R_reg[31] [3]),
        .I4(\SUM_TOTAL_R_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA[3]),
        .O(SUM_TOTAL_R0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    SUM_TOTAL_R0_carry_i_6
       (.I0(\SUM_TOTAL_R_reg_n_0_[1] ),
        .I1(\mem_R_reg[31] [1]),
        .I2(S_AXIS_TDATA[1]),
        .I3(\mem_R_reg[31] [2]),
        .I4(\SUM_TOTAL_R_reg_n_0_[2] ),
        .I5(S_AXIS_TDATA[2]),
        .O(SUM_TOTAL_R0_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    SUM_TOTAL_R0_carry_i_7
       (.I0(\SUM_TOTAL_R_reg_n_0_[0] ),
        .I1(S_AXIS_TDATA[0]),
        .I2(\mem_R_reg[31] [1]),
        .I3(\SUM_TOTAL_R_reg_n_0_[1] ),
        .I4(S_AXIS_TDATA[1]),
        .O(SUM_TOTAL_R0_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    SUM_TOTAL_R0_carry_i_8
       (.I0(S_AXIS_TDATA[0]),
        .I1(\SUM_TOTAL_R_reg_n_0_[0] ),
        .I2(\mem_R_reg[31] [0]),
        .O(SUM_TOTAL_R0_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \SUM_TOTAL_R[28]_i_1 
       (.I0(S_AXIS_TLAST),
        .I1(state__0[0]),
        .I2(aresetn),
        .I3(S_AXIS_TVALID),
        .I4(filter_enable),
        .I5(state__0[1]),
        .O(\mem_R_reg[0]0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_R_reg[0] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(SUM_TOTAL_R0_carry_n_7),
        .Q(\SUM_TOTAL_R_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_R_reg[10] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(SUM_TOTAL_R0_carry__1_n_5),
        .Q(p_0_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_R_reg[11] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(SUM_TOTAL_R0_carry__1_n_4),
        .Q(p_0_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_R_reg[12] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(SUM_TOTAL_R0_carry__2_n_7),
        .Q(p_0_in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_R_reg[13] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(SUM_TOTAL_R0_carry__2_n_6),
        .Q(p_0_in[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_R_reg[14] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(SUM_TOTAL_R0_carry__2_n_5),
        .Q(p_0_in[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_R_reg[15] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(SUM_TOTAL_R0_carry__2_n_4),
        .Q(p_0_in[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_R_reg[16] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(SUM_TOTAL_R0_carry__3_n_7),
        .Q(p_0_in[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_R_reg[17] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(SUM_TOTAL_R0_carry__3_n_6),
        .Q(p_0_in[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_R_reg[18] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(SUM_TOTAL_R0_carry__3_n_5),
        .Q(p_0_in[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_R_reg[19] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(SUM_TOTAL_R0_carry__3_n_4),
        .Q(p_0_in[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_R_reg[1] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(SUM_TOTAL_R0_carry_n_6),
        .Q(\SUM_TOTAL_R_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_R_reg[20] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(SUM_TOTAL_R0_carry__4_n_7),
        .Q(p_0_in[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_R_reg[21] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(SUM_TOTAL_R0_carry__4_n_6),
        .Q(p_0_in[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_R_reg[22] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(SUM_TOTAL_R0_carry__4_n_5),
        .Q(p_0_in[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_R_reg[23] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(SUM_TOTAL_R0_carry__4_n_4),
        .Q(p_0_in[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_R_reg[24] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(SUM_TOTAL_R0_carry__5_n_7),
        .Q(p_0_in[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_R_reg[25] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(SUM_TOTAL_R0_carry__5_n_6),
        .Q(p_0_in[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_R_reg[26] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(SUM_TOTAL_R0_carry__5_n_5),
        .Q(p_0_in[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_R_reg[27] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(SUM_TOTAL_R0_carry__5_n_4),
        .Q(p_0_in[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_R_reg[28] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(SUM_TOTAL_R0_carry__6_n_7),
        .Q(p_0_in[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_R_reg[2] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(SUM_TOTAL_R0_carry_n_5),
        .Q(\SUM_TOTAL_R_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_R_reg[3] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(SUM_TOTAL_R0_carry_n_4),
        .Q(\SUM_TOTAL_R_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_R_reg[4] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(SUM_TOTAL_R0_carry__0_n_7),
        .Q(\SUM_TOTAL_R_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_R_reg[5] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(SUM_TOTAL_R0_carry__0_n_6),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_R_reg[6] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(SUM_TOTAL_R0_carry__0_n_5),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_R_reg[7] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(SUM_TOTAL_R0_carry__0_n_4),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_R_reg[8] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(SUM_TOTAL_R0_carry__1_n_7),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_TOTAL_R_reg[9] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(SUM_TOTAL_R0_carry__1_n_6),
        .Q(p_0_in[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    S_AXIS_TREADY_i_1
       (.I0(S_AXIS_TREADY_int_reg_n_0),
        .I1(filter_enable),
        .I2(M_AXIS_TREADY),
        .O(S_AXIS_TREADY_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFBABFBFA08A8080)) 
    S_AXIS_TREADY_int_i_1
       (.I0(S_AXIS_TREADY_int),
        .I1(S_AXIS_TREADY_int_i_3_n_0),
        .I2(state__0[0]),
        .I3(S_AXIS_TLAST),
        .I4(\FSM_sequential_state[1]_i_2_n_0 ),
        .I5(S_AXIS_TREADY_int_reg_n_0),
        .O(S_AXIS_TREADY_int_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFF000800080008)) 
    S_AXIS_TREADY_int_i_2
       (.I0(filter_enable),
        .I1(S_AXIS_TVALID),
        .I2(state__0[0]),
        .I3(S_AXIS_TLAST),
        .I4(M_AXIS_TREADY),
        .I5(state__0[1]),
        .O(S_AXIS_TREADY_int));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    S_AXIS_TREADY_int_i_3
       (.I0(M_AXIS_TREADY),
        .I1(state__0[1]),
        .I2(aresetn),
        .O(S_AXIS_TREADY_int_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    S_AXIS_TREADY_int_reg
       (.C(aclk),
        .CE(1'b1),
        .D(S_AXIS_TREADY_int_i_1_n_0),
        .Q(S_AXIS_TREADY_int_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    S_AXIS_TREADY_reg
       (.C(aclk),
        .CE(aresetn),
        .D(S_AXIS_TREADY_i_1_n_0),
        .Q(S_AXIS_TREADY),
        .R(1'b0));
  (* srl_bus_name = "\U0/mem_L_reg[30] " *) 
  (* srl_name = "\U0/mem_L_reg[30][0]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_L_reg[30][0]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_L_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[0]),
        .Q(\mem_L_reg[30][0]_srl31_n_0 ),
        .Q31(\NLW_mem_L_reg[30][0]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_L_reg[30] " *) 
  (* srl_name = "\U0/mem_L_reg[30][10]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_L_reg[30][10]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_L_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[10]),
        .Q(\mem_L_reg[30][10]_srl31_n_0 ),
        .Q31(\NLW_mem_L_reg[30][10]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_L_reg[30] " *) 
  (* srl_name = "\U0/mem_L_reg[30][11]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_L_reg[30][11]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_L_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[11]),
        .Q(\mem_L_reg[30][11]_srl31_n_0 ),
        .Q31(\NLW_mem_L_reg[30][11]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_L_reg[30] " *) 
  (* srl_name = "\U0/mem_L_reg[30][12]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_L_reg[30][12]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_L_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[12]),
        .Q(\mem_L_reg[30][12]_srl31_n_0 ),
        .Q31(\NLW_mem_L_reg[30][12]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_L_reg[30] " *) 
  (* srl_name = "\U0/mem_L_reg[30][13]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_L_reg[30][13]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_L_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[13]),
        .Q(\mem_L_reg[30][13]_srl31_n_0 ),
        .Q31(\NLW_mem_L_reg[30][13]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_L_reg[30] " *) 
  (* srl_name = "\U0/mem_L_reg[30][14]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_L_reg[30][14]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_L_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[14]),
        .Q(\mem_L_reg[30][14]_srl31_n_0 ),
        .Q31(\NLW_mem_L_reg[30][14]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_L_reg[30] " *) 
  (* srl_name = "\U0/mem_L_reg[30][15]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_L_reg[30][15]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_L_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[15]),
        .Q(\mem_L_reg[30][15]_srl31_n_0 ),
        .Q31(\NLW_mem_L_reg[30][15]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_L_reg[30] " *) 
  (* srl_name = "\U0/mem_L_reg[30][16]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_L_reg[30][16]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_L_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[16]),
        .Q(\mem_L_reg[30][16]_srl31_n_0 ),
        .Q31(\NLW_mem_L_reg[30][16]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_L_reg[30] " *) 
  (* srl_name = "\U0/mem_L_reg[30][17]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_L_reg[30][17]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_L_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[17]),
        .Q(\mem_L_reg[30][17]_srl31_n_0 ),
        .Q31(\NLW_mem_L_reg[30][17]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_L_reg[30] " *) 
  (* srl_name = "\U0/mem_L_reg[30][18]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_L_reg[30][18]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_L_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[18]),
        .Q(\mem_L_reg[30][18]_srl31_n_0 ),
        .Q31(\NLW_mem_L_reg[30][18]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_L_reg[30] " *) 
  (* srl_name = "\U0/mem_L_reg[30][19]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_L_reg[30][19]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_L_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[19]),
        .Q(\mem_L_reg[30][19]_srl31_n_0 ),
        .Q31(\NLW_mem_L_reg[30][19]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_L_reg[30] " *) 
  (* srl_name = "\U0/mem_L_reg[30][1]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_L_reg[30][1]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_L_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[1]),
        .Q(\mem_L_reg[30][1]_srl31_n_0 ),
        .Q31(\NLW_mem_L_reg[30][1]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_L_reg[30] " *) 
  (* srl_name = "\U0/mem_L_reg[30][20]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_L_reg[30][20]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_L_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[20]),
        .Q(\mem_L_reg[30][20]_srl31_n_0 ),
        .Q31(\NLW_mem_L_reg[30][20]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_L_reg[30] " *) 
  (* srl_name = "\U0/mem_L_reg[30][21]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_L_reg[30][21]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_L_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[21]),
        .Q(\mem_L_reg[30][21]_srl31_n_0 ),
        .Q31(\NLW_mem_L_reg[30][21]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_L_reg[30] " *) 
  (* srl_name = "\U0/mem_L_reg[30][22]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_L_reg[30][22]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_L_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[22]),
        .Q(\mem_L_reg[30][22]_srl31_n_0 ),
        .Q31(\NLW_mem_L_reg[30][22]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_L_reg[30] " *) 
  (* srl_name = "\U0/mem_L_reg[30][23]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_L_reg[30][23]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_L_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[23]),
        .Q(\mem_L_reg[30][23]_srl31_n_0 ),
        .Q31(\NLW_mem_L_reg[30][23]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_L_reg[30] " *) 
  (* srl_name = "\U0/mem_L_reg[30][2]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_L_reg[30][2]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_L_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[2]),
        .Q(\mem_L_reg[30][2]_srl31_n_0 ),
        .Q31(\NLW_mem_L_reg[30][2]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_L_reg[30] " *) 
  (* srl_name = "\U0/mem_L_reg[30][3]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_L_reg[30][3]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_L_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[3]),
        .Q(\mem_L_reg[30][3]_srl31_n_0 ),
        .Q31(\NLW_mem_L_reg[30][3]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_L_reg[30] " *) 
  (* srl_name = "\U0/mem_L_reg[30][4]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_L_reg[30][4]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_L_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[4]),
        .Q(\mem_L_reg[30][4]_srl31_n_0 ),
        .Q31(\NLW_mem_L_reg[30][4]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_L_reg[30] " *) 
  (* srl_name = "\U0/mem_L_reg[30][5]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_L_reg[30][5]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_L_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[5]),
        .Q(\mem_L_reg[30][5]_srl31_n_0 ),
        .Q31(\NLW_mem_L_reg[30][5]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_L_reg[30] " *) 
  (* srl_name = "\U0/mem_L_reg[30][6]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_L_reg[30][6]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_L_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[6]),
        .Q(\mem_L_reg[30][6]_srl31_n_0 ),
        .Q31(\NLW_mem_L_reg[30][6]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_L_reg[30] " *) 
  (* srl_name = "\U0/mem_L_reg[30][7]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_L_reg[30][7]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_L_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[7]),
        .Q(\mem_L_reg[30][7]_srl31_n_0 ),
        .Q31(\NLW_mem_L_reg[30][7]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_L_reg[30] " *) 
  (* srl_name = "\U0/mem_L_reg[30][8]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_L_reg[30][8]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_L_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[8]),
        .Q(\mem_L_reg[30][8]_srl31_n_0 ),
        .Q31(\NLW_mem_L_reg[30][8]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_L_reg[30] " *) 
  (* srl_name = "\U0/mem_L_reg[30][9]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_L_reg[30][9]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_L_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[9]),
        .Q(\mem_L_reg[30][9]_srl31_n_0 ),
        .Q31(\NLW_mem_L_reg[30][9]_srl31_Q31_UNCONNECTED ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_L_reg[31][0] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(\mem_L_reg[30][0]_srl31_n_0 ),
        .Q(\mem_L_reg[31] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_L_reg[31][10] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(\mem_L_reg[30][10]_srl31_n_0 ),
        .Q(\mem_L_reg[31] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_L_reg[31][11] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(\mem_L_reg[30][11]_srl31_n_0 ),
        .Q(\mem_L_reg[31] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_L_reg[31][12] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(\mem_L_reg[30][12]_srl31_n_0 ),
        .Q(\mem_L_reg[31] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_L_reg[31][13] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(\mem_L_reg[30][13]_srl31_n_0 ),
        .Q(\mem_L_reg[31] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_L_reg[31][14] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(\mem_L_reg[30][14]_srl31_n_0 ),
        .Q(\mem_L_reg[31] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_L_reg[31][15] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(\mem_L_reg[30][15]_srl31_n_0 ),
        .Q(\mem_L_reg[31] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_L_reg[31][16] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(\mem_L_reg[30][16]_srl31_n_0 ),
        .Q(\mem_L_reg[31] [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_L_reg[31][17] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(\mem_L_reg[30][17]_srl31_n_0 ),
        .Q(\mem_L_reg[31] [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_L_reg[31][18] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(\mem_L_reg[30][18]_srl31_n_0 ),
        .Q(\mem_L_reg[31] [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_L_reg[31][19] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(\mem_L_reg[30][19]_srl31_n_0 ),
        .Q(\mem_L_reg[31] [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_L_reg[31][1] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(\mem_L_reg[30][1]_srl31_n_0 ),
        .Q(\mem_L_reg[31] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_L_reg[31][20] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(\mem_L_reg[30][20]_srl31_n_0 ),
        .Q(\mem_L_reg[31] [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_L_reg[31][21] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(\mem_L_reg[30][21]_srl31_n_0 ),
        .Q(\mem_L_reg[31] [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_L_reg[31][22] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(\mem_L_reg[30][22]_srl31_n_0 ),
        .Q(\mem_L_reg[31] [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_L_reg[31][23] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(\mem_L_reg[30][23]_srl31_n_0 ),
        .Q(\mem_L_reg[31] [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_L_reg[31][2] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(\mem_L_reg[30][2]_srl31_n_0 ),
        .Q(\mem_L_reg[31] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_L_reg[31][3] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(\mem_L_reg[30][3]_srl31_n_0 ),
        .Q(\mem_L_reg[31] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_L_reg[31][4] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(\mem_L_reg[30][4]_srl31_n_0 ),
        .Q(\mem_L_reg[31] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_L_reg[31][5] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(\mem_L_reg[30][5]_srl31_n_0 ),
        .Q(\mem_L_reg[31] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_L_reg[31][6] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(\mem_L_reg[30][6]_srl31_n_0 ),
        .Q(\mem_L_reg[31] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_L_reg[31][7] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(\mem_L_reg[30][7]_srl31_n_0 ),
        .Q(\mem_L_reg[31] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_L_reg[31][8] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(\mem_L_reg[30][8]_srl31_n_0 ),
        .Q(\mem_L_reg[31] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_L_reg[31][9] 
       (.C(aclk),
        .CE(\mem_L_reg[0]0 ),
        .D(\mem_L_reg[30][9]_srl31_n_0 ),
        .Q(\mem_L_reg[31] [9]),
        .R(1'b0));
  (* srl_bus_name = "\U0/mem_R_reg[30] " *) 
  (* srl_name = "\U0/mem_R_reg[30][0]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_R_reg[30][0]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_R_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[0]),
        .Q(\mem_R_reg[30][0]_srl31_n_0 ),
        .Q31(\NLW_mem_R_reg[30][0]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_R_reg[30] " *) 
  (* srl_name = "\U0/mem_R_reg[30][10]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_R_reg[30][10]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_R_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[10]),
        .Q(\mem_R_reg[30][10]_srl31_n_0 ),
        .Q31(\NLW_mem_R_reg[30][10]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_R_reg[30] " *) 
  (* srl_name = "\U0/mem_R_reg[30][11]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_R_reg[30][11]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_R_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[11]),
        .Q(\mem_R_reg[30][11]_srl31_n_0 ),
        .Q31(\NLW_mem_R_reg[30][11]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_R_reg[30] " *) 
  (* srl_name = "\U0/mem_R_reg[30][12]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_R_reg[30][12]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_R_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[12]),
        .Q(\mem_R_reg[30][12]_srl31_n_0 ),
        .Q31(\NLW_mem_R_reg[30][12]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_R_reg[30] " *) 
  (* srl_name = "\U0/mem_R_reg[30][13]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_R_reg[30][13]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_R_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[13]),
        .Q(\mem_R_reg[30][13]_srl31_n_0 ),
        .Q31(\NLW_mem_R_reg[30][13]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_R_reg[30] " *) 
  (* srl_name = "\U0/mem_R_reg[30][14]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_R_reg[30][14]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_R_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[14]),
        .Q(\mem_R_reg[30][14]_srl31_n_0 ),
        .Q31(\NLW_mem_R_reg[30][14]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_R_reg[30] " *) 
  (* srl_name = "\U0/mem_R_reg[30][15]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_R_reg[30][15]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_R_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[15]),
        .Q(\mem_R_reg[30][15]_srl31_n_0 ),
        .Q31(\NLW_mem_R_reg[30][15]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_R_reg[30] " *) 
  (* srl_name = "\U0/mem_R_reg[30][16]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_R_reg[30][16]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_R_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[16]),
        .Q(\mem_R_reg[30][16]_srl31_n_0 ),
        .Q31(\NLW_mem_R_reg[30][16]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_R_reg[30] " *) 
  (* srl_name = "\U0/mem_R_reg[30][17]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_R_reg[30][17]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_R_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[17]),
        .Q(\mem_R_reg[30][17]_srl31_n_0 ),
        .Q31(\NLW_mem_R_reg[30][17]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_R_reg[30] " *) 
  (* srl_name = "\U0/mem_R_reg[30][18]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_R_reg[30][18]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_R_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[18]),
        .Q(\mem_R_reg[30][18]_srl31_n_0 ),
        .Q31(\NLW_mem_R_reg[30][18]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_R_reg[30] " *) 
  (* srl_name = "\U0/mem_R_reg[30][19]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_R_reg[30][19]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_R_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[19]),
        .Q(\mem_R_reg[30][19]_srl31_n_0 ),
        .Q31(\NLW_mem_R_reg[30][19]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_R_reg[30] " *) 
  (* srl_name = "\U0/mem_R_reg[30][1]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_R_reg[30][1]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_R_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[1]),
        .Q(\mem_R_reg[30][1]_srl31_n_0 ),
        .Q31(\NLW_mem_R_reg[30][1]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_R_reg[30] " *) 
  (* srl_name = "\U0/mem_R_reg[30][20]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_R_reg[30][20]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_R_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[20]),
        .Q(\mem_R_reg[30][20]_srl31_n_0 ),
        .Q31(\NLW_mem_R_reg[30][20]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_R_reg[30] " *) 
  (* srl_name = "\U0/mem_R_reg[30][21]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_R_reg[30][21]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_R_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[21]),
        .Q(\mem_R_reg[30][21]_srl31_n_0 ),
        .Q31(\NLW_mem_R_reg[30][21]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_R_reg[30] " *) 
  (* srl_name = "\U0/mem_R_reg[30][22]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_R_reg[30][22]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_R_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[22]),
        .Q(\mem_R_reg[30][22]_srl31_n_0 ),
        .Q31(\NLW_mem_R_reg[30][22]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_R_reg[30] " *) 
  (* srl_name = "\U0/mem_R_reg[30][23]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_R_reg[30][23]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_R_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[23]),
        .Q(\mem_R_reg[30][23]_srl31_n_0 ),
        .Q31(\NLW_mem_R_reg[30][23]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_R_reg[30] " *) 
  (* srl_name = "\U0/mem_R_reg[30][2]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_R_reg[30][2]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_R_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[2]),
        .Q(\mem_R_reg[30][2]_srl31_n_0 ),
        .Q31(\NLW_mem_R_reg[30][2]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_R_reg[30] " *) 
  (* srl_name = "\U0/mem_R_reg[30][3]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_R_reg[30][3]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_R_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[3]),
        .Q(\mem_R_reg[30][3]_srl31_n_0 ),
        .Q31(\NLW_mem_R_reg[30][3]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_R_reg[30] " *) 
  (* srl_name = "\U0/mem_R_reg[30][4]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_R_reg[30][4]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_R_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[4]),
        .Q(\mem_R_reg[30][4]_srl31_n_0 ),
        .Q31(\NLW_mem_R_reg[30][4]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_R_reg[30] " *) 
  (* srl_name = "\U0/mem_R_reg[30][5]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_R_reg[30][5]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_R_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[5]),
        .Q(\mem_R_reg[30][5]_srl31_n_0 ),
        .Q31(\NLW_mem_R_reg[30][5]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_R_reg[30] " *) 
  (* srl_name = "\U0/mem_R_reg[30][6]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_R_reg[30][6]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_R_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[6]),
        .Q(\mem_R_reg[30][6]_srl31_n_0 ),
        .Q31(\NLW_mem_R_reg[30][6]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_R_reg[30] " *) 
  (* srl_name = "\U0/mem_R_reg[30][7]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_R_reg[30][7]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_R_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[7]),
        .Q(\mem_R_reg[30][7]_srl31_n_0 ),
        .Q31(\NLW_mem_R_reg[30][7]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_R_reg[30] " *) 
  (* srl_name = "\U0/mem_R_reg[30][8]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_R_reg[30][8]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_R_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[8]),
        .Q(\mem_R_reg[30][8]_srl31_n_0 ),
        .Q31(\NLW_mem_R_reg[30][8]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_R_reg[30] " *) 
  (* srl_name = "\U0/mem_R_reg[30][9]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_R_reg[30][9]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_R_reg[0]0 ),
        .CLK(aclk),
        .D(S_AXIS_TDATA[9]),
        .Q(\mem_R_reg[30][9]_srl31_n_0 ),
        .Q31(\NLW_mem_R_reg[30][9]_srl31_Q31_UNCONNECTED ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_R_reg[31][0] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(\mem_R_reg[30][0]_srl31_n_0 ),
        .Q(\mem_R_reg[31] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_R_reg[31][10] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(\mem_R_reg[30][10]_srl31_n_0 ),
        .Q(\mem_R_reg[31] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_R_reg[31][11] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(\mem_R_reg[30][11]_srl31_n_0 ),
        .Q(\mem_R_reg[31] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_R_reg[31][12] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(\mem_R_reg[30][12]_srl31_n_0 ),
        .Q(\mem_R_reg[31] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_R_reg[31][13] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(\mem_R_reg[30][13]_srl31_n_0 ),
        .Q(\mem_R_reg[31] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_R_reg[31][14] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(\mem_R_reg[30][14]_srl31_n_0 ),
        .Q(\mem_R_reg[31] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_R_reg[31][15] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(\mem_R_reg[30][15]_srl31_n_0 ),
        .Q(\mem_R_reg[31] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_R_reg[31][16] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(\mem_R_reg[30][16]_srl31_n_0 ),
        .Q(\mem_R_reg[31] [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_R_reg[31][17] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(\mem_R_reg[30][17]_srl31_n_0 ),
        .Q(\mem_R_reg[31] [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_R_reg[31][18] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(\mem_R_reg[30][18]_srl31_n_0 ),
        .Q(\mem_R_reg[31] [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_R_reg[31][19] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(\mem_R_reg[30][19]_srl31_n_0 ),
        .Q(\mem_R_reg[31] [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_R_reg[31][1] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(\mem_R_reg[30][1]_srl31_n_0 ),
        .Q(\mem_R_reg[31] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_R_reg[31][20] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(\mem_R_reg[30][20]_srl31_n_0 ),
        .Q(\mem_R_reg[31] [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_R_reg[31][21] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(\mem_R_reg[30][21]_srl31_n_0 ),
        .Q(\mem_R_reg[31] [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_R_reg[31][22] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(\mem_R_reg[30][22]_srl31_n_0 ),
        .Q(\mem_R_reg[31] [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_R_reg[31][23] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(\mem_R_reg[30][23]_srl31_n_0 ),
        .Q(\mem_R_reg[31] [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_R_reg[31][2] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(\mem_R_reg[30][2]_srl31_n_0 ),
        .Q(\mem_R_reg[31] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_R_reg[31][3] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(\mem_R_reg[30][3]_srl31_n_0 ),
        .Q(\mem_R_reg[31] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_R_reg[31][4] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(\mem_R_reg[30][4]_srl31_n_0 ),
        .Q(\mem_R_reg[31] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_R_reg[31][5] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(\mem_R_reg[30][5]_srl31_n_0 ),
        .Q(\mem_R_reg[31] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_R_reg[31][6] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(\mem_R_reg[30][6]_srl31_n_0 ),
        .Q(\mem_R_reg[31] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_R_reg[31][7] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(\mem_R_reg[30][7]_srl31_n_0 ),
        .Q(\mem_R_reg[31] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_R_reg[31][8] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(\mem_R_reg[30][8]_srl31_n_0 ),
        .Q(\mem_R_reg[31] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_R_reg[31][9] 
       (.C(aclk),
        .CE(\mem_R_reg[0]0 ),
        .D(\mem_R_reg[30][9]_srl31_n_0 ),
        .Q(\mem_R_reg[31] [9]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

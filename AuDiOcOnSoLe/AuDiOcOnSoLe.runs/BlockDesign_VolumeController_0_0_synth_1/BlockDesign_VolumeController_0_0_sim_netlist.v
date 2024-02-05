// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon May 22 23:55:50 2023
// Host        : DESKTOP-JKUPK39 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ BlockDesign_VolumeController_0_0_sim_netlist.v
// Design      : BlockDesign_VolumeController_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "BlockDesign_VolumeController_0_0,VolumeController,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "VolumeController,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
    volume);
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
  input [9:0]volume;

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
  wire [9:0]volume;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VolumeController U0
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
        .volume(volume[9:5]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VolumeController
   (M_AXIS_TDATA,
    S_AXIS_TREADY,
    M_AXIS_TLAST,
    M_AXIS_TVALID,
    S_AXIS_TDATA,
    S_AXIS_TLAST,
    aresetn,
    M_AXIS_TREADY,
    S_AXIS_TVALID,
    aclk,
    volume);
  output [23:0]M_AXIS_TDATA;
  output S_AXIS_TREADY;
  output M_AXIS_TLAST;
  output M_AXIS_TVALID;
  input [23:0]S_AXIS_TDATA;
  input S_AXIS_TLAST;
  input aresetn;
  input M_AXIS_TREADY;
  input S_AXIS_TVALID;
  input aclk;
  input [4:0]volume;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire [23:0]M_AXIS_TDATA;
  wire M_AXIS_TDATA0;
  wire \M_AXIS_TDATA[0]_i_1_n_0 ;
  wire \M_AXIS_TDATA[0]_i_4_n_0 ;
  wire \M_AXIS_TDATA[0]_i_5_n_0 ;
  wire \M_AXIS_TDATA[10]_i_1_n_0 ;
  wire \M_AXIS_TDATA[10]_i_4_n_0 ;
  wire \M_AXIS_TDATA[11]_i_1_n_0 ;
  wire \M_AXIS_TDATA[11]_i_4_n_0 ;
  wire \M_AXIS_TDATA[12]_i_1_n_0 ;
  wire \M_AXIS_TDATA[12]_i_4_n_0 ;
  wire \M_AXIS_TDATA[13]_i_1_n_0 ;
  wire \M_AXIS_TDATA[13]_i_4_n_0 ;
  wire \M_AXIS_TDATA[14]_i_1_n_0 ;
  wire \M_AXIS_TDATA[14]_i_4_n_0 ;
  wire \M_AXIS_TDATA[15]_i_1_n_0 ;
  wire \M_AXIS_TDATA[15]_i_4_n_0 ;
  wire \M_AXIS_TDATA[15]_i_5_n_0 ;
  wire \M_AXIS_TDATA[16]_i_1_n_0 ;
  wire \M_AXIS_TDATA[16]_i_4_n_0 ;
  wire \M_AXIS_TDATA[16]_i_5_n_0 ;
  wire \M_AXIS_TDATA[17]_i_1_n_0 ;
  wire \M_AXIS_TDATA[17]_i_4_n_0 ;
  wire \M_AXIS_TDATA[18]_i_1_n_0 ;
  wire \M_AXIS_TDATA[18]_i_4_n_0 ;
  wire \M_AXIS_TDATA[19]_i_1_n_0 ;
  wire \M_AXIS_TDATA[19]_i_4_n_0 ;
  wire \M_AXIS_TDATA[1]_i_1_n_0 ;
  wire \M_AXIS_TDATA[1]_i_4_n_0 ;
  wire \M_AXIS_TDATA[20]_i_1_n_0 ;
  wire \M_AXIS_TDATA[20]_i_4_n_0 ;
  wire \M_AXIS_TDATA[21]_i_1_n_0 ;
  wire \M_AXIS_TDATA[21]_i_4_n_0 ;
  wire \M_AXIS_TDATA[22]_i_1_n_0 ;
  wire \M_AXIS_TDATA[22]_i_4_n_0 ;
  wire \M_AXIS_TDATA[22]_i_5_n_0 ;
  wire \M_AXIS_TDATA[22]_i_6_n_0 ;
  wire \M_AXIS_TDATA[23]_i_10_n_0 ;
  wire \M_AXIS_TDATA[23]_i_11_n_0 ;
  wire \M_AXIS_TDATA[23]_i_12_n_0 ;
  wire \M_AXIS_TDATA[23]_i_13_n_0 ;
  wire \M_AXIS_TDATA[23]_i_14_n_0 ;
  wire \M_AXIS_TDATA[23]_i_15_n_0 ;
  wire \M_AXIS_TDATA[23]_i_16_n_0 ;
  wire \M_AXIS_TDATA[23]_i_17_n_0 ;
  wire \M_AXIS_TDATA[23]_i_18_n_0 ;
  wire \M_AXIS_TDATA[23]_i_19_n_0 ;
  wire \M_AXIS_TDATA[23]_i_2_n_0 ;
  wire \M_AXIS_TDATA[23]_i_5_n_0 ;
  wire \M_AXIS_TDATA[23]_i_6_n_0 ;
  wire \M_AXIS_TDATA[23]_i_7_n_0 ;
  wire \M_AXIS_TDATA[23]_i_8_n_0 ;
  wire \M_AXIS_TDATA[23]_i_9_n_0 ;
  wire \M_AXIS_TDATA[2]_i_1_n_0 ;
  wire \M_AXIS_TDATA[2]_i_4_n_0 ;
  wire \M_AXIS_TDATA[3]_i_1_n_0 ;
  wire \M_AXIS_TDATA[3]_i_4_n_0 ;
  wire \M_AXIS_TDATA[4]_i_1_n_0 ;
  wire \M_AXIS_TDATA[4]_i_4_n_0 ;
  wire \M_AXIS_TDATA[5]_i_1_n_0 ;
  wire \M_AXIS_TDATA[5]_i_4_n_0 ;
  wire \M_AXIS_TDATA[6]_i_1_n_0 ;
  wire \M_AXIS_TDATA[6]_i_4_n_0 ;
  wire \M_AXIS_TDATA[7]_i_1_n_0 ;
  wire \M_AXIS_TDATA[7]_i_4_n_0 ;
  wire \M_AXIS_TDATA[8]_i_1_n_0 ;
  wire \M_AXIS_TDATA[8]_i_4_n_0 ;
  wire \M_AXIS_TDATA[9]_i_1_n_0 ;
  wire \M_AXIS_TDATA[9]_i_4_n_0 ;
  wire M_AXIS_TLAST;
  wire M_AXIS_TLAST1_out;
  wire M_AXIS_TLAST_i_1_n_0;
  wire M_AXIS_TREADY;
  wire M_AXIS_TVALID;
  wire M_AXIS_TVALID0;
  wire M_AXIS_TVALID_i_1_n_0;
  wire [23:1]SHIFT_LEFT;
  wire [22:0]SHIFT_RIGHT;
  wire [23:0]S_AXIS_TDATA;
  wire [23:0]S_AXIS_TDATA_reg;
  wire S_AXIS_TLAST;
  wire S_AXIS_TREADY;
  wire S_AXIS_TREADY0;
  wire S_AXIS_TREADY_i_1_n_0;
  wire S_AXIS_TVALID;
  wire [23:8]abs_data;
  wire [23:8]abs_data1;
  wire abs_data2;
  wire \abs_data[12]_i_3_n_0 ;
  wire \abs_data[12]_i_4_n_0 ;
  wire \abs_data[12]_i_5_n_0 ;
  wire \abs_data[12]_i_6_n_0 ;
  wire \abs_data[16]_i_3_n_0 ;
  wire \abs_data[16]_i_4_n_0 ;
  wire \abs_data[16]_i_5_n_0 ;
  wire \abs_data[16]_i_6_n_0 ;
  wire \abs_data[20]_i_3_n_0 ;
  wire \abs_data[20]_i_4_n_0 ;
  wire \abs_data[20]_i_5_n_0 ;
  wire \abs_data[20]_i_6_n_0 ;
  wire \abs_data[23]_i_1_n_0 ;
  wire \abs_data[23]_i_4_n_0 ;
  wire \abs_data[23]_i_5_n_0 ;
  wire \abs_data[8]_i_10_n_0 ;
  wire \abs_data[8]_i_11_n_0 ;
  wire \abs_data[8]_i_12_n_0 ;
  wire \abs_data[8]_i_4_n_0 ;
  wire \abs_data[8]_i_5_n_0 ;
  wire \abs_data[8]_i_6_n_0 ;
  wire \abs_data[8]_i_7_n_0 ;
  wire \abs_data[8]_i_8_n_0 ;
  wire \abs_data[8]_i_9_n_0 ;
  wire \abs_data_reg[12]_i_2_n_0 ;
  wire \abs_data_reg[12]_i_2_n_1 ;
  wire \abs_data_reg[12]_i_2_n_2 ;
  wire \abs_data_reg[12]_i_2_n_3 ;
  wire \abs_data_reg[16]_i_2_n_0 ;
  wire \abs_data_reg[16]_i_2_n_1 ;
  wire \abs_data_reg[16]_i_2_n_2 ;
  wire \abs_data_reg[16]_i_2_n_3 ;
  wire \abs_data_reg[20]_i_2_n_0 ;
  wire \abs_data_reg[20]_i_2_n_1 ;
  wire \abs_data_reg[20]_i_2_n_2 ;
  wire \abs_data_reg[20]_i_2_n_3 ;
  wire \abs_data_reg[23]_i_2_n_2 ;
  wire \abs_data_reg[23]_i_2_n_3 ;
  wire \abs_data_reg[8]_i_2_n_0 ;
  wire \abs_data_reg[8]_i_2_n_1 ;
  wire \abs_data_reg[8]_i_2_n_2 ;
  wire \abs_data_reg[8]_i_2_n_3 ;
  wire \abs_data_reg[8]_i_3_n_0 ;
  wire \abs_data_reg[8]_i_3_n_1 ;
  wire \abs_data_reg[8]_i_3_n_2 ;
  wire \abs_data_reg[8]_i_3_n_3 ;
  wire aclk;
  wire aresetn;
  wire [22:0]data0_in;
  wire data1;
  wire [23:0]data_R;
  wire data_R0;
  wire \data_R[0]_i_2_n_0 ;
  wire \data_R[10]_i_3_n_0 ;
  wire \data_R[11]_i_3_n_0 ;
  wire \data_R[12]_i_3_n_0 ;
  wire \data_R[13]_i_3_n_0 ;
  wire \data_R[14]_i_3_n_0 ;
  wire \data_R[15]_i_3_n_0 ;
  wire \data_R[16]_i_3_n_0 ;
  wire \data_R[17]_i_3_n_0 ;
  wire \data_R[18]_i_3_n_0 ;
  wire \data_R[19]_i_3_n_0 ;
  wire \data_R[20]_i_3_n_0 ;
  wire \data_R[21]_i_3_n_0 ;
  wire \data_R[22]_i_3_n_0 ;
  wire \data_R[22]_i_4_n_0 ;
  wire \data_R[3]_i_3_n_0 ;
  wire \data_R[4]_i_3_n_0 ;
  wire \data_R[5]_i_3_n_0 ;
  wire \data_R[6]_i_3_n_0 ;
  wire \data_R[7]_i_3_n_0 ;
  wire \data_R[8]_i_3_n_0 ;
  wire \data_R[9]_i_3_n_0 ;
  wire [23:0]in9;
  wire [22:8]p_0_in1_in;
  wire [1:0]state__0;
  wire [3:0]vol_N;
  wire vol_N0;
  wire \vol_N_reg_n_0_[0] ;
  wire \vol_N_reg_n_0_[1] ;
  wire \vol_N_reg_n_0_[2] ;
  wire \vol_N_reg_n_0_[3] ;
  wire [4:0]volume;
  wire [3:2]\NLW_abs_data_reg[23]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_abs_data_reg[23]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_abs_data_reg[8]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_abs_data_reg[8]_i_3_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hF308FF08F300FF00)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(S_AXIS_TLAST),
        .I1(aresetn),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .I4(M_AXIS_TREADY),
        .I5(S_AXIS_TVALID),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hE4CC)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(aresetn),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(M_AXIS_TREADY),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "send_r:10,receive:00,send_l:01" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "send_r:10,receive:00,send_l:01" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state__0[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \M_AXIS_TDATA[0]_i_1 
       (.I0(data_R[0]),
        .I1(data0_in[0]),
        .I2(volume[4]),
        .I3(SHIFT_RIGHT[0]),
        .I4(state__0[0]),
        .O(\M_AXIS_TDATA[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55555D5555555155)) 
    \M_AXIS_TDATA[0]_i_2 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(\M_AXIS_TDATA[23]_i_5_n_0 ),
        .I2(\M_AXIS_TDATA[22]_i_4_n_0 ),
        .I3(\M_AXIS_TDATA[23]_i_8_n_0 ),
        .I4(\M_AXIS_TDATA[23]_i_9_n_0 ),
        .I5(\M_AXIS_TDATA[0]_i_4_n_0 ),
        .O(data0_in[0]));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \M_AXIS_TDATA[0]_i_3 
       (.I0(\M_AXIS_TDATA[3]_i_4_n_0 ),
        .I1(\vol_N_reg_n_0_[1] ),
        .I2(\M_AXIS_TDATA[1]_i_4_n_0 ),
        .I3(\vol_N_reg_n_0_[0] ),
        .I4(\M_AXIS_TDATA[2]_i_4_n_0 ),
        .I5(\M_AXIS_TDATA[0]_i_5_n_0 ),
        .O(SHIFT_RIGHT[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \M_AXIS_TDATA[0]_i_4 
       (.I0(\vol_N_reg_n_0_[1] ),
        .I1(\vol_N_reg_n_0_[3] ),
        .I2(S_AXIS_TDATA_reg[0]),
        .I3(\vol_N_reg_n_0_[2] ),
        .I4(\vol_N_reg_n_0_[0] ),
        .O(\M_AXIS_TDATA[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[0]_i_5 
       (.I0(S_AXIS_TDATA_reg[12]),
        .I1(S_AXIS_TDATA_reg[4]),
        .I2(\vol_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA_reg[8]),
        .I4(\vol_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA_reg[0]),
        .O(\M_AXIS_TDATA[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \M_AXIS_TDATA[10]_i_1 
       (.I0(data_R[10]),
        .I1(data0_in[10]),
        .I2(volume[4]),
        .I3(SHIFT_RIGHT[10]),
        .I4(state__0[0]),
        .O(\M_AXIS_TDATA[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55555D5555555155)) 
    \M_AXIS_TDATA[10]_i_2 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(\M_AXIS_TDATA[23]_i_5_n_0 ),
        .I2(\M_AXIS_TDATA[22]_i_4_n_0 ),
        .I3(\M_AXIS_TDATA[23]_i_8_n_0 ),
        .I4(\M_AXIS_TDATA[23]_i_9_n_0 ),
        .I5(SHIFT_LEFT[10]),
        .O(data0_in[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[10]_i_3 
       (.I0(\M_AXIS_TDATA[13]_i_4_n_0 ),
        .I1(\M_AXIS_TDATA[11]_i_4_n_0 ),
        .I2(\vol_N_reg_n_0_[0] ),
        .I3(\M_AXIS_TDATA[12]_i_4_n_0 ),
        .I4(\vol_N_reg_n_0_[1] ),
        .I5(\M_AXIS_TDATA[10]_i_4_n_0 ),
        .O(SHIFT_RIGHT[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[10]_i_4 
       (.I0(S_AXIS_TDATA_reg[22]),
        .I1(S_AXIS_TDATA_reg[14]),
        .I2(\vol_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA_reg[18]),
        .I4(\vol_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA_reg[10]),
        .O(\M_AXIS_TDATA[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \M_AXIS_TDATA[11]_i_1 
       (.I0(data_R[11]),
        .I1(data0_in[11]),
        .I2(volume[4]),
        .I3(SHIFT_RIGHT[11]),
        .I4(state__0[0]),
        .O(\M_AXIS_TDATA[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55555D5555555155)) 
    \M_AXIS_TDATA[11]_i_2 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(\M_AXIS_TDATA[23]_i_5_n_0 ),
        .I2(\M_AXIS_TDATA[22]_i_4_n_0 ),
        .I3(\M_AXIS_TDATA[23]_i_8_n_0 ),
        .I4(\M_AXIS_TDATA[23]_i_9_n_0 ),
        .I5(SHIFT_LEFT[11]),
        .O(data0_in[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[11]_i_3 
       (.I0(\M_AXIS_TDATA[14]_i_4_n_0 ),
        .I1(\M_AXIS_TDATA[12]_i_4_n_0 ),
        .I2(\vol_N_reg_n_0_[0] ),
        .I3(\M_AXIS_TDATA[13]_i_4_n_0 ),
        .I4(\vol_N_reg_n_0_[1] ),
        .I5(\M_AXIS_TDATA[11]_i_4_n_0 ),
        .O(SHIFT_RIGHT[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[11]_i_4 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(S_AXIS_TDATA_reg[15]),
        .I2(\vol_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA_reg[19]),
        .I4(\vol_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA_reg[11]),
        .O(\M_AXIS_TDATA[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \M_AXIS_TDATA[12]_i_1 
       (.I0(data_R[12]),
        .I1(data0_in[12]),
        .I2(volume[4]),
        .I3(SHIFT_RIGHT[12]),
        .I4(state__0[0]),
        .O(\M_AXIS_TDATA[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55555D5555555155)) 
    \M_AXIS_TDATA[12]_i_2 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(\M_AXIS_TDATA[23]_i_5_n_0 ),
        .I2(\M_AXIS_TDATA[22]_i_4_n_0 ),
        .I3(\M_AXIS_TDATA[23]_i_8_n_0 ),
        .I4(\M_AXIS_TDATA[23]_i_9_n_0 ),
        .I5(SHIFT_LEFT[12]),
        .O(data0_in[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[12]_i_3 
       (.I0(\M_AXIS_TDATA[15]_i_5_n_0 ),
        .I1(\M_AXIS_TDATA[13]_i_4_n_0 ),
        .I2(\vol_N_reg_n_0_[0] ),
        .I3(\M_AXIS_TDATA[14]_i_4_n_0 ),
        .I4(\vol_N_reg_n_0_[1] ),
        .I5(\M_AXIS_TDATA[12]_i_4_n_0 ),
        .O(SHIFT_RIGHT[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[12]_i_4 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(S_AXIS_TDATA_reg[16]),
        .I2(\vol_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA_reg[20]),
        .I4(\vol_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA_reg[12]),
        .O(\M_AXIS_TDATA[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \M_AXIS_TDATA[13]_i_1 
       (.I0(data_R[13]),
        .I1(data0_in[13]),
        .I2(volume[4]),
        .I3(SHIFT_RIGHT[13]),
        .I4(state__0[0]),
        .O(\M_AXIS_TDATA[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55555D5555555155)) 
    \M_AXIS_TDATA[13]_i_2 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(\M_AXIS_TDATA[23]_i_5_n_0 ),
        .I2(\M_AXIS_TDATA[22]_i_4_n_0 ),
        .I3(\M_AXIS_TDATA[23]_i_8_n_0 ),
        .I4(\M_AXIS_TDATA[23]_i_9_n_0 ),
        .I5(SHIFT_LEFT[13]),
        .O(data0_in[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[13]_i_3 
       (.I0(\M_AXIS_TDATA[16]_i_5_n_0 ),
        .I1(\M_AXIS_TDATA[14]_i_4_n_0 ),
        .I2(\vol_N_reg_n_0_[0] ),
        .I3(\M_AXIS_TDATA[15]_i_5_n_0 ),
        .I4(\vol_N_reg_n_0_[1] ),
        .I5(\M_AXIS_TDATA[13]_i_4_n_0 ),
        .O(SHIFT_RIGHT[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[13]_i_4 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(S_AXIS_TDATA_reg[17]),
        .I2(\vol_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA_reg[21]),
        .I4(\vol_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA_reg[13]),
        .O(\M_AXIS_TDATA[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \M_AXIS_TDATA[14]_i_1 
       (.I0(data_R[14]),
        .I1(data0_in[14]),
        .I2(volume[4]),
        .I3(SHIFT_RIGHT[14]),
        .I4(state__0[0]),
        .O(\M_AXIS_TDATA[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55555D5555555155)) 
    \M_AXIS_TDATA[14]_i_2 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(\M_AXIS_TDATA[23]_i_5_n_0 ),
        .I2(\M_AXIS_TDATA[22]_i_4_n_0 ),
        .I3(\M_AXIS_TDATA[23]_i_8_n_0 ),
        .I4(\M_AXIS_TDATA[23]_i_9_n_0 ),
        .I5(SHIFT_LEFT[14]),
        .O(data0_in[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[14]_i_3 
       (.I0(\M_AXIS_TDATA[15]_i_4_n_0 ),
        .I1(\M_AXIS_TDATA[15]_i_5_n_0 ),
        .I2(\vol_N_reg_n_0_[0] ),
        .I3(\M_AXIS_TDATA[16]_i_5_n_0 ),
        .I4(\vol_N_reg_n_0_[1] ),
        .I5(\M_AXIS_TDATA[14]_i_4_n_0 ),
        .O(SHIFT_RIGHT[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[14]_i_4 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(S_AXIS_TDATA_reg[18]),
        .I2(\vol_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA_reg[22]),
        .I4(\vol_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA_reg[14]),
        .O(\M_AXIS_TDATA[14]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \M_AXIS_TDATA[15]_i_1 
       (.I0(data_R[15]),
        .I1(data0_in[15]),
        .I2(volume[4]),
        .I3(SHIFT_RIGHT[15]),
        .I4(state__0[0]),
        .O(\M_AXIS_TDATA[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55555D5555555155)) 
    \M_AXIS_TDATA[15]_i_2 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(\M_AXIS_TDATA[23]_i_5_n_0 ),
        .I2(\M_AXIS_TDATA[22]_i_4_n_0 ),
        .I3(\M_AXIS_TDATA[23]_i_8_n_0 ),
        .I4(\M_AXIS_TDATA[23]_i_9_n_0 ),
        .I5(SHIFT_LEFT[15]),
        .O(data0_in[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[15]_i_3 
       (.I0(\M_AXIS_TDATA[16]_i_4_n_0 ),
        .I1(\M_AXIS_TDATA[16]_i_5_n_0 ),
        .I2(\vol_N_reg_n_0_[0] ),
        .I3(\M_AXIS_TDATA[15]_i_4_n_0 ),
        .I4(\vol_N_reg_n_0_[1] ),
        .I5(\M_AXIS_TDATA[15]_i_5_n_0 ),
        .O(SHIFT_RIGHT[15]));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \M_AXIS_TDATA[15]_i_4 
       (.I0(S_AXIS_TDATA_reg[21]),
        .I1(\vol_N_reg_n_0_[2] ),
        .I2(S_AXIS_TDATA_reg[23]),
        .I3(\vol_N_reg_n_0_[3] ),
        .I4(S_AXIS_TDATA_reg[17]),
        .O(\M_AXIS_TDATA[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \M_AXIS_TDATA[15]_i_5 
       (.I0(S_AXIS_TDATA_reg[19]),
        .I1(\vol_N_reg_n_0_[2] ),
        .I2(S_AXIS_TDATA_reg[23]),
        .I3(\vol_N_reg_n_0_[3] ),
        .I4(S_AXIS_TDATA_reg[15]),
        .O(\M_AXIS_TDATA[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \M_AXIS_TDATA[16]_i_1 
       (.I0(data_R[16]),
        .I1(data0_in[16]),
        .I2(volume[4]),
        .I3(SHIFT_RIGHT[16]),
        .I4(state__0[0]),
        .O(\M_AXIS_TDATA[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55555D5555555155)) 
    \M_AXIS_TDATA[16]_i_2 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(\M_AXIS_TDATA[23]_i_5_n_0 ),
        .I2(\M_AXIS_TDATA[22]_i_4_n_0 ),
        .I3(\M_AXIS_TDATA[23]_i_8_n_0 ),
        .I4(\M_AXIS_TDATA[23]_i_9_n_0 ),
        .I5(SHIFT_LEFT[16]),
        .O(data0_in[16]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \M_AXIS_TDATA[16]_i_3 
       (.I0(\M_AXIS_TDATA[16]_i_4_n_0 ),
        .I1(\vol_N_reg_n_0_[1] ),
        .I2(\M_AXIS_TDATA[16]_i_5_n_0 ),
        .I3(\M_AXIS_TDATA[17]_i_4_n_0 ),
        .I4(\vol_N_reg_n_0_[0] ),
        .O(SHIFT_RIGHT[16]));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \M_AXIS_TDATA[16]_i_4 
       (.I0(S_AXIS_TDATA_reg[22]),
        .I1(\vol_N_reg_n_0_[2] ),
        .I2(S_AXIS_TDATA_reg[23]),
        .I3(\vol_N_reg_n_0_[3] ),
        .I4(S_AXIS_TDATA_reg[18]),
        .O(\M_AXIS_TDATA[16]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \M_AXIS_TDATA[16]_i_5 
       (.I0(S_AXIS_TDATA_reg[20]),
        .I1(\vol_N_reg_n_0_[2] ),
        .I2(S_AXIS_TDATA_reg[23]),
        .I3(\vol_N_reg_n_0_[3] ),
        .I4(S_AXIS_TDATA_reg[16]),
        .O(\M_AXIS_TDATA[16]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \M_AXIS_TDATA[17]_i_1 
       (.I0(data_R[17]),
        .I1(data0_in[17]),
        .I2(volume[4]),
        .I3(SHIFT_RIGHT[17]),
        .I4(state__0[0]),
        .O(\M_AXIS_TDATA[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55555D5555555155)) 
    \M_AXIS_TDATA[17]_i_2 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(\M_AXIS_TDATA[23]_i_5_n_0 ),
        .I2(\M_AXIS_TDATA[22]_i_4_n_0 ),
        .I3(\M_AXIS_TDATA[23]_i_8_n_0 ),
        .I4(\M_AXIS_TDATA[23]_i_9_n_0 ),
        .I5(SHIFT_LEFT[17]),
        .O(data0_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA[17]_i_3 
       (.I0(\M_AXIS_TDATA[18]_i_4_n_0 ),
        .I1(\vol_N_reg_n_0_[0] ),
        .I2(\M_AXIS_TDATA[17]_i_4_n_0 ),
        .O(SHIFT_RIGHT[17]));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \M_AXIS_TDATA[17]_i_4 
       (.I0(\vol_N_reg_n_0_[2] ),
        .I1(S_AXIS_TDATA_reg[23]),
        .I2(\vol_N_reg_n_0_[3] ),
        .I3(S_AXIS_TDATA_reg[19]),
        .I4(\vol_N_reg_n_0_[1] ),
        .I5(\M_AXIS_TDATA[15]_i_4_n_0 ),
        .O(\M_AXIS_TDATA[17]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \M_AXIS_TDATA[18]_i_1 
       (.I0(data_R[18]),
        .I1(data0_in[18]),
        .I2(volume[4]),
        .I3(SHIFT_RIGHT[18]),
        .I4(state__0[0]),
        .O(\M_AXIS_TDATA[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55555D5555555155)) 
    \M_AXIS_TDATA[18]_i_2 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(\M_AXIS_TDATA[23]_i_5_n_0 ),
        .I2(\M_AXIS_TDATA[22]_i_4_n_0 ),
        .I3(\M_AXIS_TDATA[23]_i_8_n_0 ),
        .I4(\M_AXIS_TDATA[23]_i_9_n_0 ),
        .I5(SHIFT_LEFT[18]),
        .O(data0_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA[18]_i_3 
       (.I0(\M_AXIS_TDATA[19]_i_4_n_0 ),
        .I1(\vol_N_reg_n_0_[0] ),
        .I2(\M_AXIS_TDATA[18]_i_4_n_0 ),
        .O(SHIFT_RIGHT[18]));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \M_AXIS_TDATA[18]_i_4 
       (.I0(\vol_N_reg_n_0_[2] ),
        .I1(S_AXIS_TDATA_reg[23]),
        .I2(\vol_N_reg_n_0_[3] ),
        .I3(S_AXIS_TDATA_reg[20]),
        .I4(\vol_N_reg_n_0_[1] ),
        .I5(\M_AXIS_TDATA[16]_i_4_n_0 ),
        .O(\M_AXIS_TDATA[18]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \M_AXIS_TDATA[19]_i_1 
       (.I0(data_R[19]),
        .I1(data0_in[19]),
        .I2(volume[4]),
        .I3(SHIFT_RIGHT[19]),
        .I4(state__0[0]),
        .O(\M_AXIS_TDATA[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55555D5555555155)) 
    \M_AXIS_TDATA[19]_i_2 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(\M_AXIS_TDATA[23]_i_5_n_0 ),
        .I2(\M_AXIS_TDATA[22]_i_4_n_0 ),
        .I3(\M_AXIS_TDATA[23]_i_8_n_0 ),
        .I4(\M_AXIS_TDATA[23]_i_9_n_0 ),
        .I5(SHIFT_LEFT[19]),
        .O(data0_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA[19]_i_3 
       (.I0(\M_AXIS_TDATA[20]_i_4_n_0 ),
        .I1(\vol_N_reg_n_0_[0] ),
        .I2(\M_AXIS_TDATA[19]_i_4_n_0 ),
        .O(SHIFT_RIGHT[19]));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \M_AXIS_TDATA[19]_i_4 
       (.I0(S_AXIS_TDATA_reg[21]),
        .I1(\vol_N_reg_n_0_[1] ),
        .I2(\vol_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA_reg[23]),
        .I4(\vol_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA_reg[19]),
        .O(\M_AXIS_TDATA[19]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \M_AXIS_TDATA[1]_i_1 
       (.I0(data_R[1]),
        .I1(data0_in[1]),
        .I2(volume[4]),
        .I3(SHIFT_RIGHT[1]),
        .I4(state__0[0]),
        .O(\M_AXIS_TDATA[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55555D5555555155)) 
    \M_AXIS_TDATA[1]_i_2 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(\M_AXIS_TDATA[23]_i_5_n_0 ),
        .I2(\M_AXIS_TDATA[22]_i_4_n_0 ),
        .I3(\M_AXIS_TDATA[23]_i_8_n_0 ),
        .I4(\M_AXIS_TDATA[23]_i_9_n_0 ),
        .I5(SHIFT_LEFT[1]),
        .O(data0_in[1]));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \M_AXIS_TDATA[1]_i_3 
       (.I0(\M_AXIS_TDATA[4]_i_4_n_0 ),
        .I1(\vol_N_reg_n_0_[1] ),
        .I2(\M_AXIS_TDATA[2]_i_4_n_0 ),
        .I3(\M_AXIS_TDATA[3]_i_4_n_0 ),
        .I4(\M_AXIS_TDATA[1]_i_4_n_0 ),
        .I5(\vol_N_reg_n_0_[0] ),
        .O(SHIFT_RIGHT[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[1]_i_4 
       (.I0(S_AXIS_TDATA_reg[13]),
        .I1(S_AXIS_TDATA_reg[5]),
        .I2(\vol_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA_reg[9]),
        .I4(\vol_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA_reg[1]),
        .O(\M_AXIS_TDATA[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \M_AXIS_TDATA[20]_i_1 
       (.I0(data_R[20]),
        .I1(data0_in[20]),
        .I2(volume[4]),
        .I3(SHIFT_RIGHT[20]),
        .I4(state__0[0]),
        .O(\M_AXIS_TDATA[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55555D5555555155)) 
    \M_AXIS_TDATA[20]_i_2 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(\M_AXIS_TDATA[23]_i_5_n_0 ),
        .I2(\M_AXIS_TDATA[22]_i_4_n_0 ),
        .I3(\M_AXIS_TDATA[23]_i_8_n_0 ),
        .I4(\M_AXIS_TDATA[23]_i_9_n_0 ),
        .I5(SHIFT_LEFT[20]),
        .O(data0_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA[20]_i_3 
       (.I0(\M_AXIS_TDATA[21]_i_4_n_0 ),
        .I1(\vol_N_reg_n_0_[0] ),
        .I2(\M_AXIS_TDATA[20]_i_4_n_0 ),
        .O(SHIFT_RIGHT[20]));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \M_AXIS_TDATA[20]_i_4 
       (.I0(S_AXIS_TDATA_reg[22]),
        .I1(\vol_N_reg_n_0_[1] ),
        .I2(\vol_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA_reg[23]),
        .I4(\vol_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA_reg[20]),
        .O(\M_AXIS_TDATA[20]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \M_AXIS_TDATA[21]_i_1 
       (.I0(data_R[21]),
        .I1(data0_in[21]),
        .I2(volume[4]),
        .I3(SHIFT_RIGHT[21]),
        .I4(state__0[0]),
        .O(\M_AXIS_TDATA[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55555D5555555155)) 
    \M_AXIS_TDATA[21]_i_2 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(\M_AXIS_TDATA[23]_i_5_n_0 ),
        .I2(\M_AXIS_TDATA[22]_i_4_n_0 ),
        .I3(\M_AXIS_TDATA[23]_i_8_n_0 ),
        .I4(\M_AXIS_TDATA[23]_i_9_n_0 ),
        .I5(SHIFT_LEFT[21]),
        .O(data0_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA[21]_i_3 
       (.I0(\data_R[22]_i_3_n_0 ),
        .I1(\vol_N_reg_n_0_[0] ),
        .I2(\M_AXIS_TDATA[21]_i_4_n_0 ),
        .O(SHIFT_RIGHT[21]));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \M_AXIS_TDATA[21]_i_4 
       (.I0(\vol_N_reg_n_0_[1] ),
        .I1(\vol_N_reg_n_0_[2] ),
        .I2(S_AXIS_TDATA_reg[23]),
        .I3(\vol_N_reg_n_0_[3] ),
        .I4(S_AXIS_TDATA_reg[21]),
        .O(\M_AXIS_TDATA[21]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \M_AXIS_TDATA[22]_i_1 
       (.I0(data_R[22]),
        .I1(data0_in[22]),
        .I2(volume[4]),
        .I3(SHIFT_RIGHT[22]),
        .I4(state__0[0]),
        .O(\M_AXIS_TDATA[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55555D5555555155)) 
    \M_AXIS_TDATA[22]_i_2 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(\M_AXIS_TDATA[23]_i_5_n_0 ),
        .I2(\M_AXIS_TDATA[22]_i_4_n_0 ),
        .I3(\M_AXIS_TDATA[23]_i_8_n_0 ),
        .I4(\M_AXIS_TDATA[23]_i_9_n_0 ),
        .I5(SHIFT_LEFT[22]),
        .O(data0_in[22]));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    \M_AXIS_TDATA[22]_i_3 
       (.I0(\vol_N_reg_n_0_[0] ),
        .I1(\vol_N_reg_n_0_[1] ),
        .I2(\vol_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA_reg[23]),
        .I4(\vol_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA_reg[22]),
        .O(SHIFT_RIGHT[22]));
  LUT5 #(
    .INIT(32'hFBBBFFFF)) 
    \M_AXIS_TDATA[22]_i_4 
       (.I0(\M_AXIS_TDATA[22]_i_5_n_0 ),
        .I1(\M_AXIS_TDATA[23]_i_16_n_0 ),
        .I2(abs_data[17]),
        .I3(\M_AXIS_TDATA[23]_i_17_n_0 ),
        .I4(\M_AXIS_TDATA[22]_i_6_n_0 ),
        .O(\M_AXIS_TDATA[22]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h88888880)) 
    \M_AXIS_TDATA[22]_i_5 
       (.I0(abs_data[14]),
        .I1(\vol_N_reg_n_0_[3] ),
        .I2(\vol_N_reg_n_0_[2] ),
        .I3(\vol_N_reg_n_0_[1] ),
        .I4(\vol_N_reg_n_0_[0] ),
        .O(\M_AXIS_TDATA[22]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00003FFF5555FFFF)) 
    \M_AXIS_TDATA[22]_i_6 
       (.I0(abs_data[15]),
        .I1(\vol_N_reg_n_0_[2] ),
        .I2(\vol_N_reg_n_0_[1] ),
        .I3(\vol_N_reg_n_0_[0] ),
        .I4(\vol_N_reg_n_0_[3] ),
        .I5(abs_data[16]),
        .O(\M_AXIS_TDATA[22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2000200020222000)) 
    \M_AXIS_TDATA[23]_i_1 
       (.I0(aresetn),
        .I1(state__0[1]),
        .I2(M_AXIS_TREADY),
        .I3(state__0[0]),
        .I4(S_AXIS_TVALID),
        .I5(S_AXIS_TLAST),
        .O(M_AXIS_TDATA0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[23]_i_10 
       (.I0(S_AXIS_TDATA_reg[8]),
        .I1(S_AXIS_TDATA_reg[16]),
        .I2(\vol_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA_reg[12]),
        .I4(\vol_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA_reg[20]),
        .O(\M_AXIS_TDATA[23]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[23]_i_11 
       (.I0(S_AXIS_TDATA_reg[10]),
        .I1(S_AXIS_TDATA_reg[18]),
        .I2(\vol_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA_reg[14]),
        .I4(\vol_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA_reg[22]),
        .O(\M_AXIS_TDATA[23]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[23]_i_12 
       (.I0(S_AXIS_TDATA_reg[9]),
        .I1(S_AXIS_TDATA_reg[17]),
        .I2(\vol_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA_reg[13]),
        .I4(\vol_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA_reg[21]),
        .O(\M_AXIS_TDATA[23]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[23]_i_13 
       (.I0(S_AXIS_TDATA_reg[11]),
        .I1(S_AXIS_TDATA_reg[19]),
        .I2(\vol_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA_reg[15]),
        .I4(\vol_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA_reg[23]),
        .O(\M_AXIS_TDATA[23]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h03FFFFFF5FFFFFFF)) 
    \M_AXIS_TDATA[23]_i_14 
       (.I0(abs_data[9]),
        .I1(\vol_N_reg_n_0_[0] ),
        .I2(\vol_N_reg_n_0_[1] ),
        .I3(\vol_N_reg_n_0_[3] ),
        .I4(\vol_N_reg_n_0_[2] ),
        .I5(abs_data[10]),
        .O(\M_AXIS_TDATA[23]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \M_AXIS_TDATA[23]_i_15 
       (.I0(\vol_N_reg_n_0_[2] ),
        .I1(\vol_N_reg_n_0_[3] ),
        .O(\M_AXIS_TDATA[23]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h000FFFFF337FFFFF)) 
    \M_AXIS_TDATA[23]_i_16 
       (.I0(\vol_N_reg_n_0_[0] ),
        .I1(abs_data[12]),
        .I2(\vol_N_reg_n_0_[1] ),
        .I3(\vol_N_reg_n_0_[2] ),
        .I4(\vol_N_reg_n_0_[3] ),
        .I5(abs_data[13]),
        .O(\M_AXIS_TDATA[23]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \M_AXIS_TDATA[23]_i_17 
       (.I0(\vol_N_reg_n_0_[2] ),
        .I1(\vol_N_reg_n_0_[1] ),
        .I2(\vol_N_reg_n_0_[3] ),
        .O(\M_AXIS_TDATA[23]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \M_AXIS_TDATA[23]_i_18 
       (.I0(\vol_N_reg_n_0_[2] ),
        .I1(\vol_N_reg_n_0_[3] ),
        .O(\M_AXIS_TDATA[23]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h000000FF0F0F1FFF)) 
    \M_AXIS_TDATA[23]_i_19 
       (.I0(\vol_N_reg_n_0_[0] ),
        .I1(\vol_N_reg_n_0_[1] ),
        .I2(abs_data[18]),
        .I3(\vol_N_reg_n_0_[2] ),
        .I4(\vol_N_reg_n_0_[3] ),
        .I5(abs_data[19]),
        .O(\M_AXIS_TDATA[23]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFCFF3000)) 
    \M_AXIS_TDATA[23]_i_2 
       (.I0(data_R[23]),
        .I1(data1),
        .I2(SHIFT_LEFT[23]),
        .I3(volume[4]),
        .I4(S_AXIS_TDATA_reg[23]),
        .I5(state__0[0]),
        .O(\M_AXIS_TDATA[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \M_AXIS_TDATA[23]_i_3 
       (.I0(\M_AXIS_TDATA[23]_i_5_n_0 ),
        .I1(\M_AXIS_TDATA[23]_i_6_n_0 ),
        .I2(\M_AXIS_TDATA[23]_i_7_n_0 ),
        .I3(\M_AXIS_TDATA[23]_i_8_n_0 ),
        .I4(\M_AXIS_TDATA[23]_i_9_n_0 ),
        .O(data1));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \M_AXIS_TDATA[23]_i_4 
       (.I0(\M_AXIS_TDATA[23]_i_10_n_0 ),
        .I1(\vol_N_reg_n_0_[1] ),
        .I2(\M_AXIS_TDATA[23]_i_11_n_0 ),
        .I3(\vol_N_reg_n_0_[0] ),
        .I4(\M_AXIS_TDATA[23]_i_12_n_0 ),
        .I5(\M_AXIS_TDATA[23]_i_13_n_0 ),
        .O(SHIFT_LEFT[23]));
  LUT6 #(
    .INIT(64'h04CC44CC44CC44CC)) 
    \M_AXIS_TDATA[23]_i_5 
       (.I0(abs_data[11]),
        .I1(\M_AXIS_TDATA[23]_i_14_n_0 ),
        .I2(\vol_N_reg_n_0_[0] ),
        .I3(\M_AXIS_TDATA[23]_i_15_n_0 ),
        .I4(\vol_N_reg_n_0_[1] ),
        .I5(abs_data[8]),
        .O(\M_AXIS_TDATA[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0002AAAAAAAAAAAA)) 
    \M_AXIS_TDATA[23]_i_6 
       (.I0(\M_AXIS_TDATA[23]_i_16_n_0 ),
        .I1(\vol_N_reg_n_0_[0] ),
        .I2(\vol_N_reg_n_0_[1] ),
        .I3(\vol_N_reg_n_0_[2] ),
        .I4(\vol_N_reg_n_0_[3] ),
        .I5(abs_data[14]),
        .O(\M_AXIS_TDATA[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000033F7135733F7)) 
    \M_AXIS_TDATA[23]_i_7 
       (.I0(abs_data[16]),
        .I1(\vol_N_reg_n_0_[3] ),
        .I2(\vol_N_reg_n_0_[0] ),
        .I3(abs_data[15]),
        .I4(\M_AXIS_TDATA[23]_i_17_n_0 ),
        .I5(abs_data[17]),
        .O(\M_AXIS_TDATA[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000511111155)) 
    \M_AXIS_TDATA[23]_i_8 
       (.I0(abs_data[23]),
        .I1(abs_data[21]),
        .I2(\vol_N_reg_n_0_[0] ),
        .I3(\M_AXIS_TDATA[23]_i_18_n_0 ),
        .I4(\vol_N_reg_n_0_[1] ),
        .I5(abs_data[22]),
        .O(\M_AXIS_TDATA[23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFF80000FFFFFFFF)) 
    \M_AXIS_TDATA[23]_i_9 
       (.I0(\vol_N_reg_n_0_[1] ),
        .I1(\vol_N_reg_n_0_[0] ),
        .I2(\vol_N_reg_n_0_[2] ),
        .I3(\vol_N_reg_n_0_[3] ),
        .I4(abs_data[20]),
        .I5(\M_AXIS_TDATA[23]_i_19_n_0 ),
        .O(\M_AXIS_TDATA[23]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \M_AXIS_TDATA[2]_i_1 
       (.I0(data_R[2]),
        .I1(data0_in[2]),
        .I2(volume[4]),
        .I3(SHIFT_RIGHT[2]),
        .I4(state__0[0]),
        .O(\M_AXIS_TDATA[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55555D5555555155)) 
    \M_AXIS_TDATA[2]_i_2 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(\M_AXIS_TDATA[23]_i_5_n_0 ),
        .I2(\M_AXIS_TDATA[22]_i_4_n_0 ),
        .I3(\M_AXIS_TDATA[23]_i_8_n_0 ),
        .I4(\M_AXIS_TDATA[23]_i_9_n_0 ),
        .I5(SHIFT_LEFT[2]),
        .O(data0_in[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[2]_i_3 
       (.I0(\M_AXIS_TDATA[5]_i_4_n_0 ),
        .I1(\M_AXIS_TDATA[3]_i_4_n_0 ),
        .I2(\vol_N_reg_n_0_[0] ),
        .I3(\M_AXIS_TDATA[4]_i_4_n_0 ),
        .I4(\vol_N_reg_n_0_[1] ),
        .I5(\M_AXIS_TDATA[2]_i_4_n_0 ),
        .O(SHIFT_RIGHT[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[2]_i_4 
       (.I0(S_AXIS_TDATA_reg[14]),
        .I1(S_AXIS_TDATA_reg[6]),
        .I2(\vol_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA_reg[10]),
        .I4(\vol_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA_reg[2]),
        .O(\M_AXIS_TDATA[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \M_AXIS_TDATA[3]_i_1 
       (.I0(data_R[3]),
        .I1(data0_in[3]),
        .I2(volume[4]),
        .I3(SHIFT_RIGHT[3]),
        .I4(state__0[0]),
        .O(\M_AXIS_TDATA[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55555D5555555155)) 
    \M_AXIS_TDATA[3]_i_2 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(\M_AXIS_TDATA[23]_i_5_n_0 ),
        .I2(\M_AXIS_TDATA[22]_i_4_n_0 ),
        .I3(\M_AXIS_TDATA[23]_i_8_n_0 ),
        .I4(\M_AXIS_TDATA[23]_i_9_n_0 ),
        .I5(SHIFT_LEFT[3]),
        .O(data0_in[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[3]_i_3 
       (.I0(\M_AXIS_TDATA[6]_i_4_n_0 ),
        .I1(\M_AXIS_TDATA[4]_i_4_n_0 ),
        .I2(\vol_N_reg_n_0_[0] ),
        .I3(\M_AXIS_TDATA[5]_i_4_n_0 ),
        .I4(\vol_N_reg_n_0_[1] ),
        .I5(\M_AXIS_TDATA[3]_i_4_n_0 ),
        .O(SHIFT_RIGHT[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[3]_i_4 
       (.I0(S_AXIS_TDATA_reg[15]),
        .I1(S_AXIS_TDATA_reg[7]),
        .I2(\vol_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA_reg[11]),
        .I4(\vol_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA_reg[3]),
        .O(\M_AXIS_TDATA[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \M_AXIS_TDATA[4]_i_1 
       (.I0(data_R[4]),
        .I1(data0_in[4]),
        .I2(volume[4]),
        .I3(SHIFT_RIGHT[4]),
        .I4(state__0[0]),
        .O(\M_AXIS_TDATA[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55555D5555555155)) 
    \M_AXIS_TDATA[4]_i_2 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(\M_AXIS_TDATA[23]_i_5_n_0 ),
        .I2(\M_AXIS_TDATA[22]_i_4_n_0 ),
        .I3(\M_AXIS_TDATA[23]_i_8_n_0 ),
        .I4(\M_AXIS_TDATA[23]_i_9_n_0 ),
        .I5(SHIFT_LEFT[4]),
        .O(data0_in[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[4]_i_3 
       (.I0(\M_AXIS_TDATA[7]_i_4_n_0 ),
        .I1(\M_AXIS_TDATA[5]_i_4_n_0 ),
        .I2(\vol_N_reg_n_0_[0] ),
        .I3(\M_AXIS_TDATA[6]_i_4_n_0 ),
        .I4(\vol_N_reg_n_0_[1] ),
        .I5(\M_AXIS_TDATA[4]_i_4_n_0 ),
        .O(SHIFT_RIGHT[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[4]_i_4 
       (.I0(S_AXIS_TDATA_reg[16]),
        .I1(S_AXIS_TDATA_reg[8]),
        .I2(\vol_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA_reg[12]),
        .I4(\vol_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA_reg[4]),
        .O(\M_AXIS_TDATA[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \M_AXIS_TDATA[5]_i_1 
       (.I0(data_R[5]),
        .I1(data0_in[5]),
        .I2(volume[4]),
        .I3(SHIFT_RIGHT[5]),
        .I4(state__0[0]),
        .O(\M_AXIS_TDATA[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55555D5555555155)) 
    \M_AXIS_TDATA[5]_i_2 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(\M_AXIS_TDATA[23]_i_5_n_0 ),
        .I2(\M_AXIS_TDATA[22]_i_4_n_0 ),
        .I3(\M_AXIS_TDATA[23]_i_8_n_0 ),
        .I4(\M_AXIS_TDATA[23]_i_9_n_0 ),
        .I5(SHIFT_LEFT[5]),
        .O(data0_in[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[5]_i_3 
       (.I0(\M_AXIS_TDATA[8]_i_4_n_0 ),
        .I1(\M_AXIS_TDATA[6]_i_4_n_0 ),
        .I2(\vol_N_reg_n_0_[0] ),
        .I3(\M_AXIS_TDATA[7]_i_4_n_0 ),
        .I4(\vol_N_reg_n_0_[1] ),
        .I5(\M_AXIS_TDATA[5]_i_4_n_0 ),
        .O(SHIFT_RIGHT[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[5]_i_4 
       (.I0(S_AXIS_TDATA_reg[17]),
        .I1(S_AXIS_TDATA_reg[9]),
        .I2(\vol_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA_reg[13]),
        .I4(\vol_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA_reg[5]),
        .O(\M_AXIS_TDATA[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \M_AXIS_TDATA[6]_i_1 
       (.I0(data_R[6]),
        .I1(data0_in[6]),
        .I2(volume[4]),
        .I3(SHIFT_RIGHT[6]),
        .I4(state__0[0]),
        .O(\M_AXIS_TDATA[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55555D5555555155)) 
    \M_AXIS_TDATA[6]_i_2 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(\M_AXIS_TDATA[23]_i_5_n_0 ),
        .I2(\M_AXIS_TDATA[22]_i_4_n_0 ),
        .I3(\M_AXIS_TDATA[23]_i_8_n_0 ),
        .I4(\M_AXIS_TDATA[23]_i_9_n_0 ),
        .I5(SHIFT_LEFT[6]),
        .O(data0_in[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[6]_i_3 
       (.I0(\M_AXIS_TDATA[9]_i_4_n_0 ),
        .I1(\M_AXIS_TDATA[7]_i_4_n_0 ),
        .I2(\vol_N_reg_n_0_[0] ),
        .I3(\M_AXIS_TDATA[8]_i_4_n_0 ),
        .I4(\vol_N_reg_n_0_[1] ),
        .I5(\M_AXIS_TDATA[6]_i_4_n_0 ),
        .O(SHIFT_RIGHT[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[6]_i_4 
       (.I0(S_AXIS_TDATA_reg[18]),
        .I1(S_AXIS_TDATA_reg[10]),
        .I2(\vol_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA_reg[14]),
        .I4(\vol_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA_reg[6]),
        .O(\M_AXIS_TDATA[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \M_AXIS_TDATA[7]_i_1 
       (.I0(data_R[7]),
        .I1(data0_in[7]),
        .I2(volume[4]),
        .I3(SHIFT_RIGHT[7]),
        .I4(state__0[0]),
        .O(\M_AXIS_TDATA[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55555D5555555155)) 
    \M_AXIS_TDATA[7]_i_2 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(\M_AXIS_TDATA[23]_i_5_n_0 ),
        .I2(\M_AXIS_TDATA[22]_i_4_n_0 ),
        .I3(\M_AXIS_TDATA[23]_i_8_n_0 ),
        .I4(\M_AXIS_TDATA[23]_i_9_n_0 ),
        .I5(SHIFT_LEFT[7]),
        .O(data0_in[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[7]_i_3 
       (.I0(\M_AXIS_TDATA[10]_i_4_n_0 ),
        .I1(\M_AXIS_TDATA[8]_i_4_n_0 ),
        .I2(\vol_N_reg_n_0_[0] ),
        .I3(\M_AXIS_TDATA[9]_i_4_n_0 ),
        .I4(\vol_N_reg_n_0_[1] ),
        .I5(\M_AXIS_TDATA[7]_i_4_n_0 ),
        .O(SHIFT_RIGHT[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[7]_i_4 
       (.I0(S_AXIS_TDATA_reg[19]),
        .I1(S_AXIS_TDATA_reg[11]),
        .I2(\vol_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA_reg[15]),
        .I4(\vol_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA_reg[7]),
        .O(\M_AXIS_TDATA[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \M_AXIS_TDATA[8]_i_1 
       (.I0(data_R[8]),
        .I1(data0_in[8]),
        .I2(volume[4]),
        .I3(SHIFT_RIGHT[8]),
        .I4(state__0[0]),
        .O(\M_AXIS_TDATA[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55555D5555555155)) 
    \M_AXIS_TDATA[8]_i_2 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(\M_AXIS_TDATA[23]_i_5_n_0 ),
        .I2(\M_AXIS_TDATA[22]_i_4_n_0 ),
        .I3(\M_AXIS_TDATA[23]_i_8_n_0 ),
        .I4(\M_AXIS_TDATA[23]_i_9_n_0 ),
        .I5(SHIFT_LEFT[8]),
        .O(data0_in[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[8]_i_3 
       (.I0(\M_AXIS_TDATA[11]_i_4_n_0 ),
        .I1(\M_AXIS_TDATA[9]_i_4_n_0 ),
        .I2(\vol_N_reg_n_0_[0] ),
        .I3(\M_AXIS_TDATA[10]_i_4_n_0 ),
        .I4(\vol_N_reg_n_0_[1] ),
        .I5(\M_AXIS_TDATA[8]_i_4_n_0 ),
        .O(SHIFT_RIGHT[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[8]_i_4 
       (.I0(S_AXIS_TDATA_reg[20]),
        .I1(S_AXIS_TDATA_reg[12]),
        .I2(\vol_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA_reg[16]),
        .I4(\vol_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA_reg[8]),
        .O(\M_AXIS_TDATA[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \M_AXIS_TDATA[9]_i_1 
       (.I0(data_R[9]),
        .I1(data0_in[9]),
        .I2(volume[4]),
        .I3(SHIFT_RIGHT[9]),
        .I4(state__0[0]),
        .O(\M_AXIS_TDATA[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55555D5555555155)) 
    \M_AXIS_TDATA[9]_i_2 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(\M_AXIS_TDATA[23]_i_5_n_0 ),
        .I2(\M_AXIS_TDATA[22]_i_4_n_0 ),
        .I3(\M_AXIS_TDATA[23]_i_8_n_0 ),
        .I4(\M_AXIS_TDATA[23]_i_9_n_0 ),
        .I5(SHIFT_LEFT[9]),
        .O(data0_in[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[9]_i_3 
       (.I0(\M_AXIS_TDATA[12]_i_4_n_0 ),
        .I1(\M_AXIS_TDATA[10]_i_4_n_0 ),
        .I2(\vol_N_reg_n_0_[0] ),
        .I3(\M_AXIS_TDATA[11]_i_4_n_0 ),
        .I4(\vol_N_reg_n_0_[1] ),
        .I5(\M_AXIS_TDATA[9]_i_4_n_0 ),
        .O(SHIFT_RIGHT[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[9]_i_4 
       (.I0(S_AXIS_TDATA_reg[21]),
        .I1(S_AXIS_TDATA_reg[13]),
        .I2(\vol_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA_reg[17]),
        .I4(\vol_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA_reg[9]),
        .O(\M_AXIS_TDATA[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[0] 
       (.C(aclk),
        .CE(M_AXIS_TDATA0),
        .D(\M_AXIS_TDATA[0]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[10] 
       (.C(aclk),
        .CE(M_AXIS_TDATA0),
        .D(\M_AXIS_TDATA[10]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[11] 
       (.C(aclk),
        .CE(M_AXIS_TDATA0),
        .D(\M_AXIS_TDATA[11]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[12] 
       (.C(aclk),
        .CE(M_AXIS_TDATA0),
        .D(\M_AXIS_TDATA[12]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[13] 
       (.C(aclk),
        .CE(M_AXIS_TDATA0),
        .D(\M_AXIS_TDATA[13]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[14] 
       (.C(aclk),
        .CE(M_AXIS_TDATA0),
        .D(\M_AXIS_TDATA[14]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[15] 
       (.C(aclk),
        .CE(M_AXIS_TDATA0),
        .D(\M_AXIS_TDATA[15]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[16] 
       (.C(aclk),
        .CE(M_AXIS_TDATA0),
        .D(\M_AXIS_TDATA[16]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[17] 
       (.C(aclk),
        .CE(M_AXIS_TDATA0),
        .D(\M_AXIS_TDATA[17]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[18] 
       (.C(aclk),
        .CE(M_AXIS_TDATA0),
        .D(\M_AXIS_TDATA[18]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[19] 
       (.C(aclk),
        .CE(M_AXIS_TDATA0),
        .D(\M_AXIS_TDATA[19]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[1] 
       (.C(aclk),
        .CE(M_AXIS_TDATA0),
        .D(\M_AXIS_TDATA[1]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[20] 
       (.C(aclk),
        .CE(M_AXIS_TDATA0),
        .D(\M_AXIS_TDATA[20]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[21] 
       (.C(aclk),
        .CE(M_AXIS_TDATA0),
        .D(\M_AXIS_TDATA[21]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[22] 
       (.C(aclk),
        .CE(M_AXIS_TDATA0),
        .D(\M_AXIS_TDATA[22]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[23] 
       (.C(aclk),
        .CE(M_AXIS_TDATA0),
        .D(\M_AXIS_TDATA[23]_i_2_n_0 ),
        .Q(M_AXIS_TDATA[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[2] 
       (.C(aclk),
        .CE(M_AXIS_TDATA0),
        .D(\M_AXIS_TDATA[2]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[3] 
       (.C(aclk),
        .CE(M_AXIS_TDATA0),
        .D(\M_AXIS_TDATA[3]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[4] 
       (.C(aclk),
        .CE(M_AXIS_TDATA0),
        .D(\M_AXIS_TDATA[4]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[5] 
       (.C(aclk),
        .CE(M_AXIS_TDATA0),
        .D(\M_AXIS_TDATA[5]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[6] 
       (.C(aclk),
        .CE(M_AXIS_TDATA0),
        .D(\M_AXIS_TDATA[6]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[7] 
       (.C(aclk),
        .CE(M_AXIS_TDATA0),
        .D(\M_AXIS_TDATA[7]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[8] 
       (.C(aclk),
        .CE(M_AXIS_TDATA0),
        .D(\M_AXIS_TDATA[8]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[9] 
       (.C(aclk),
        .CE(M_AXIS_TDATA0),
        .D(\M_AXIS_TDATA[9]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFDDFFFF20002000)) 
    M_AXIS_TLAST_i_1
       (.I0(aresetn),
        .I1(state__0[1]),
        .I2(M_AXIS_TREADY),
        .I3(state__0[0]),
        .I4(M_AXIS_TLAST1_out),
        .I5(M_AXIS_TLAST),
        .O(M_AXIS_TLAST_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    M_AXIS_TLAST_i_2
       (.I0(S_AXIS_TVALID),
        .I1(S_AXIS_TLAST),
        .O(M_AXIS_TLAST1_out));
  FDRE M_AXIS_TLAST_reg
       (.C(aclk),
        .CE(1'b1),
        .D(M_AXIS_TLAST_i_1_n_0),
        .Q(M_AXIS_TLAST),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    M_AXIS_TVALID_i_1
       (.I0(S_AXIS_TVALID),
        .I1(state__0[1]),
        .I2(M_AXIS_TVALID0),
        .I3(M_AXIS_TVALID),
        .O(M_AXIS_TVALID_i_1_n_0));
  LUT6 #(
    .INIT(64'h2022200020002000)) 
    M_AXIS_TVALID_i_2
       (.I0(aresetn),
        .I1(state__0[0]),
        .I2(M_AXIS_TREADY),
        .I3(state__0[1]),
        .I4(S_AXIS_TVALID),
        .I5(S_AXIS_TLAST),
        .O(M_AXIS_TVALID0));
  FDRE #(
    .INIT(1'b0)) 
    M_AXIS_TVALID_reg
       (.C(aclk),
        .CE(1'b1),
        .D(M_AXIS_TVALID_i_1_n_0),
        .Q(M_AXIS_TVALID),
        .R(1'b0));
  FDRE \S_AXIS_TDATA_reg_reg[0] 
       (.C(aclk),
        .CE(aresetn),
        .D(S_AXIS_TDATA[0]),
        .Q(S_AXIS_TDATA_reg[0]),
        .R(1'b0));
  FDRE \S_AXIS_TDATA_reg_reg[10] 
       (.C(aclk),
        .CE(aresetn),
        .D(S_AXIS_TDATA[10]),
        .Q(S_AXIS_TDATA_reg[10]),
        .R(1'b0));
  FDRE \S_AXIS_TDATA_reg_reg[11] 
       (.C(aclk),
        .CE(aresetn),
        .D(S_AXIS_TDATA[11]),
        .Q(S_AXIS_TDATA_reg[11]),
        .R(1'b0));
  FDRE \S_AXIS_TDATA_reg_reg[12] 
       (.C(aclk),
        .CE(aresetn),
        .D(S_AXIS_TDATA[12]),
        .Q(S_AXIS_TDATA_reg[12]),
        .R(1'b0));
  FDRE \S_AXIS_TDATA_reg_reg[13] 
       (.C(aclk),
        .CE(aresetn),
        .D(S_AXIS_TDATA[13]),
        .Q(S_AXIS_TDATA_reg[13]),
        .R(1'b0));
  FDRE \S_AXIS_TDATA_reg_reg[14] 
       (.C(aclk),
        .CE(aresetn),
        .D(S_AXIS_TDATA[14]),
        .Q(S_AXIS_TDATA_reg[14]),
        .R(1'b0));
  FDRE \S_AXIS_TDATA_reg_reg[15] 
       (.C(aclk),
        .CE(aresetn),
        .D(S_AXIS_TDATA[15]),
        .Q(S_AXIS_TDATA_reg[15]),
        .R(1'b0));
  FDRE \S_AXIS_TDATA_reg_reg[16] 
       (.C(aclk),
        .CE(aresetn),
        .D(S_AXIS_TDATA[16]),
        .Q(S_AXIS_TDATA_reg[16]),
        .R(1'b0));
  FDRE \S_AXIS_TDATA_reg_reg[17] 
       (.C(aclk),
        .CE(aresetn),
        .D(S_AXIS_TDATA[17]),
        .Q(S_AXIS_TDATA_reg[17]),
        .R(1'b0));
  FDRE \S_AXIS_TDATA_reg_reg[18] 
       (.C(aclk),
        .CE(aresetn),
        .D(S_AXIS_TDATA[18]),
        .Q(S_AXIS_TDATA_reg[18]),
        .R(1'b0));
  FDRE \S_AXIS_TDATA_reg_reg[19] 
       (.C(aclk),
        .CE(aresetn),
        .D(S_AXIS_TDATA[19]),
        .Q(S_AXIS_TDATA_reg[19]),
        .R(1'b0));
  FDRE \S_AXIS_TDATA_reg_reg[1] 
       (.C(aclk),
        .CE(aresetn),
        .D(S_AXIS_TDATA[1]),
        .Q(S_AXIS_TDATA_reg[1]),
        .R(1'b0));
  FDRE \S_AXIS_TDATA_reg_reg[20] 
       (.C(aclk),
        .CE(aresetn),
        .D(S_AXIS_TDATA[20]),
        .Q(S_AXIS_TDATA_reg[20]),
        .R(1'b0));
  FDRE \S_AXIS_TDATA_reg_reg[21] 
       (.C(aclk),
        .CE(aresetn),
        .D(S_AXIS_TDATA[21]),
        .Q(S_AXIS_TDATA_reg[21]),
        .R(1'b0));
  FDRE \S_AXIS_TDATA_reg_reg[22] 
       (.C(aclk),
        .CE(aresetn),
        .D(S_AXIS_TDATA[22]),
        .Q(S_AXIS_TDATA_reg[22]),
        .R(1'b0));
  FDRE \S_AXIS_TDATA_reg_reg[23] 
       (.C(aclk),
        .CE(aresetn),
        .D(S_AXIS_TDATA[23]),
        .Q(S_AXIS_TDATA_reg[23]),
        .R(1'b0));
  FDRE \S_AXIS_TDATA_reg_reg[2] 
       (.C(aclk),
        .CE(aresetn),
        .D(S_AXIS_TDATA[2]),
        .Q(S_AXIS_TDATA_reg[2]),
        .R(1'b0));
  FDRE \S_AXIS_TDATA_reg_reg[3] 
       (.C(aclk),
        .CE(aresetn),
        .D(S_AXIS_TDATA[3]),
        .Q(S_AXIS_TDATA_reg[3]),
        .R(1'b0));
  FDRE \S_AXIS_TDATA_reg_reg[4] 
       (.C(aclk),
        .CE(aresetn),
        .D(S_AXIS_TDATA[4]),
        .Q(S_AXIS_TDATA_reg[4]),
        .R(1'b0));
  FDRE \S_AXIS_TDATA_reg_reg[5] 
       (.C(aclk),
        .CE(aresetn),
        .D(S_AXIS_TDATA[5]),
        .Q(S_AXIS_TDATA_reg[5]),
        .R(1'b0));
  FDRE \S_AXIS_TDATA_reg_reg[6] 
       (.C(aclk),
        .CE(aresetn),
        .D(S_AXIS_TDATA[6]),
        .Q(S_AXIS_TDATA_reg[6]),
        .R(1'b0));
  FDRE \S_AXIS_TDATA_reg_reg[7] 
       (.C(aclk),
        .CE(aresetn),
        .D(S_AXIS_TDATA[7]),
        .Q(S_AXIS_TDATA_reg[7]),
        .R(1'b0));
  FDRE \S_AXIS_TDATA_reg_reg[8] 
       (.C(aclk),
        .CE(aresetn),
        .D(S_AXIS_TDATA[8]),
        .Q(S_AXIS_TDATA_reg[8]),
        .R(1'b0));
  FDRE \S_AXIS_TDATA_reg_reg[9] 
       (.C(aclk),
        .CE(aresetn),
        .D(S_AXIS_TDATA[9]),
        .Q(S_AXIS_TDATA_reg[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00D1FFFF00D10000)) 
    S_AXIS_TREADY_i_1
       (.I0(S_AXIS_TLAST),
        .I1(state__0[1]),
        .I2(M_AXIS_TREADY),
        .I3(state__0[0]),
        .I4(S_AXIS_TREADY0),
        .I5(S_AXIS_TREADY),
        .O(S_AXIS_TREADY_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h20222000)) 
    S_AXIS_TREADY_i_2
       (.I0(aresetn),
        .I1(state__0[0]),
        .I2(M_AXIS_TREADY),
        .I3(state__0[1]),
        .I4(S_AXIS_TVALID),
        .O(S_AXIS_TREADY0));
  FDRE #(
    .INIT(1'b0)) 
    S_AXIS_TREADY_reg
       (.C(aclk),
        .CE(1'b1),
        .D(S_AXIS_TREADY_i_1_n_0),
        .Q(S_AXIS_TREADY),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \abs_data[10]_i_1 
       (.I0(S_AXIS_TDATA[10]),
        .I1(abs_data1[10]),
        .I2(S_AXIS_TDATA[23]),
        .O(p_0_in1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \abs_data[11]_i_1 
       (.I0(S_AXIS_TDATA[11]),
        .I1(abs_data1[11]),
        .I2(S_AXIS_TDATA[23]),
        .O(p_0_in1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \abs_data[12]_i_1 
       (.I0(S_AXIS_TDATA[12]),
        .I1(abs_data1[12]),
        .I2(S_AXIS_TDATA[23]),
        .O(p_0_in1_in[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \abs_data[12]_i_3 
       (.I0(S_AXIS_TDATA[12]),
        .O(\abs_data[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \abs_data[12]_i_4 
       (.I0(S_AXIS_TDATA[11]),
        .O(\abs_data[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \abs_data[12]_i_5 
       (.I0(S_AXIS_TDATA[10]),
        .O(\abs_data[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \abs_data[12]_i_6 
       (.I0(S_AXIS_TDATA[9]),
        .O(\abs_data[12]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \abs_data[13]_i_1 
       (.I0(S_AXIS_TDATA[13]),
        .I1(abs_data1[13]),
        .I2(S_AXIS_TDATA[23]),
        .O(p_0_in1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \abs_data[14]_i_1 
       (.I0(S_AXIS_TDATA[14]),
        .I1(abs_data1[14]),
        .I2(S_AXIS_TDATA[23]),
        .O(p_0_in1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \abs_data[15]_i_1 
       (.I0(S_AXIS_TDATA[15]),
        .I1(abs_data1[15]),
        .I2(S_AXIS_TDATA[23]),
        .O(p_0_in1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \abs_data[16]_i_1 
       (.I0(S_AXIS_TDATA[16]),
        .I1(abs_data1[16]),
        .I2(S_AXIS_TDATA[23]),
        .O(p_0_in1_in[16]));
  LUT1 #(
    .INIT(2'h1)) 
    \abs_data[16]_i_3 
       (.I0(S_AXIS_TDATA[16]),
        .O(\abs_data[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \abs_data[16]_i_4 
       (.I0(S_AXIS_TDATA[15]),
        .O(\abs_data[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \abs_data[16]_i_5 
       (.I0(S_AXIS_TDATA[14]),
        .O(\abs_data[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \abs_data[16]_i_6 
       (.I0(S_AXIS_TDATA[13]),
        .O(\abs_data[16]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \abs_data[17]_i_1 
       (.I0(S_AXIS_TDATA[17]),
        .I1(abs_data1[17]),
        .I2(S_AXIS_TDATA[23]),
        .O(p_0_in1_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \abs_data[18]_i_1 
       (.I0(S_AXIS_TDATA[18]),
        .I1(abs_data1[18]),
        .I2(S_AXIS_TDATA[23]),
        .O(p_0_in1_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \abs_data[19]_i_1 
       (.I0(S_AXIS_TDATA[19]),
        .I1(abs_data1[19]),
        .I2(S_AXIS_TDATA[23]),
        .O(p_0_in1_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \abs_data[20]_i_1 
       (.I0(S_AXIS_TDATA[20]),
        .I1(abs_data1[20]),
        .I2(S_AXIS_TDATA[23]),
        .O(p_0_in1_in[20]));
  LUT1 #(
    .INIT(2'h1)) 
    \abs_data[20]_i_3 
       (.I0(S_AXIS_TDATA[20]),
        .O(\abs_data[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \abs_data[20]_i_4 
       (.I0(S_AXIS_TDATA[19]),
        .O(\abs_data[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \abs_data[20]_i_5 
       (.I0(S_AXIS_TDATA[18]),
        .O(\abs_data[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \abs_data[20]_i_6 
       (.I0(S_AXIS_TDATA[17]),
        .O(\abs_data[20]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \abs_data[21]_i_1 
       (.I0(S_AXIS_TDATA[21]),
        .I1(abs_data1[21]),
        .I2(S_AXIS_TDATA[23]),
        .O(p_0_in1_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \abs_data[22]_i_1 
       (.I0(S_AXIS_TDATA[22]),
        .I1(abs_data1[22]),
        .I2(S_AXIS_TDATA[23]),
        .O(p_0_in1_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \abs_data[23]_i_1 
       (.I0(S_AXIS_TDATA[23]),
        .I1(abs_data1[23]),
        .O(\abs_data[23]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \abs_data[23]_i_3 
       (.I0(S_AXIS_TDATA[23]),
        .O(abs_data2));
  LUT1 #(
    .INIT(2'h1)) 
    \abs_data[23]_i_4 
       (.I0(S_AXIS_TDATA[22]),
        .O(\abs_data[23]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \abs_data[23]_i_5 
       (.I0(S_AXIS_TDATA[21]),
        .O(\abs_data[23]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \abs_data[8]_i_1 
       (.I0(S_AXIS_TDATA[8]),
        .I1(abs_data1[8]),
        .I2(S_AXIS_TDATA[23]),
        .O(p_0_in1_in[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \abs_data[8]_i_10 
       (.I0(S_AXIS_TDATA[3]),
        .O(\abs_data[8]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \abs_data[8]_i_11 
       (.I0(S_AXIS_TDATA[2]),
        .O(\abs_data[8]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \abs_data[8]_i_12 
       (.I0(S_AXIS_TDATA[1]),
        .O(\abs_data[8]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \abs_data[8]_i_4 
       (.I0(S_AXIS_TDATA[8]),
        .O(\abs_data[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \abs_data[8]_i_5 
       (.I0(S_AXIS_TDATA[7]),
        .O(\abs_data[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \abs_data[8]_i_6 
       (.I0(S_AXIS_TDATA[6]),
        .O(\abs_data[8]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \abs_data[8]_i_7 
       (.I0(S_AXIS_TDATA[5]),
        .O(\abs_data[8]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \abs_data[8]_i_8 
       (.I0(S_AXIS_TDATA[0]),
        .O(\abs_data[8]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \abs_data[8]_i_9 
       (.I0(S_AXIS_TDATA[4]),
        .O(\abs_data[8]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \abs_data[9]_i_1 
       (.I0(S_AXIS_TDATA[9]),
        .I1(abs_data1[9]),
        .I2(S_AXIS_TDATA[23]),
        .O(p_0_in1_in[9]));
  FDRE \abs_data_reg[10] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[10]),
        .Q(abs_data[10]),
        .R(1'b0));
  FDRE \abs_data_reg[11] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[11]),
        .Q(abs_data[11]),
        .R(1'b0));
  FDRE \abs_data_reg[12] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[12]),
        .Q(abs_data[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \abs_data_reg[12]_i_2 
       (.CI(\abs_data_reg[8]_i_2_n_0 ),
        .CO({\abs_data_reg[12]_i_2_n_0 ,\abs_data_reg[12]_i_2_n_1 ,\abs_data_reg[12]_i_2_n_2 ,\abs_data_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(abs_data1[12:9]),
        .S({\abs_data[12]_i_3_n_0 ,\abs_data[12]_i_4_n_0 ,\abs_data[12]_i_5_n_0 ,\abs_data[12]_i_6_n_0 }));
  FDRE \abs_data_reg[13] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[13]),
        .Q(abs_data[13]),
        .R(1'b0));
  FDRE \abs_data_reg[14] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[14]),
        .Q(abs_data[14]),
        .R(1'b0));
  FDRE \abs_data_reg[15] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[15]),
        .Q(abs_data[15]),
        .R(1'b0));
  FDRE \abs_data_reg[16] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[16]),
        .Q(abs_data[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \abs_data_reg[16]_i_2 
       (.CI(\abs_data_reg[12]_i_2_n_0 ),
        .CO({\abs_data_reg[16]_i_2_n_0 ,\abs_data_reg[16]_i_2_n_1 ,\abs_data_reg[16]_i_2_n_2 ,\abs_data_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(abs_data1[16:13]),
        .S({\abs_data[16]_i_3_n_0 ,\abs_data[16]_i_4_n_0 ,\abs_data[16]_i_5_n_0 ,\abs_data[16]_i_6_n_0 }));
  FDRE \abs_data_reg[17] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[17]),
        .Q(abs_data[17]),
        .R(1'b0));
  FDRE \abs_data_reg[18] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[18]),
        .Q(abs_data[18]),
        .R(1'b0));
  FDRE \abs_data_reg[19] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[19]),
        .Q(abs_data[19]),
        .R(1'b0));
  FDRE \abs_data_reg[20] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[20]),
        .Q(abs_data[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \abs_data_reg[20]_i_2 
       (.CI(\abs_data_reg[16]_i_2_n_0 ),
        .CO({\abs_data_reg[20]_i_2_n_0 ,\abs_data_reg[20]_i_2_n_1 ,\abs_data_reg[20]_i_2_n_2 ,\abs_data_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(abs_data1[20:17]),
        .S({\abs_data[20]_i_3_n_0 ,\abs_data[20]_i_4_n_0 ,\abs_data[20]_i_5_n_0 ,\abs_data[20]_i_6_n_0 }));
  FDRE \abs_data_reg[21] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[21]),
        .Q(abs_data[21]),
        .R(1'b0));
  FDRE \abs_data_reg[22] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[22]),
        .Q(abs_data[22]),
        .R(1'b0));
  FDRE \abs_data_reg[23] 
       (.C(aclk),
        .CE(aresetn),
        .D(\abs_data[23]_i_1_n_0 ),
        .Q(abs_data[23]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \abs_data_reg[23]_i_2 
       (.CI(\abs_data_reg[20]_i_2_n_0 ),
        .CO({\NLW_abs_data_reg[23]_i_2_CO_UNCONNECTED [3:2],\abs_data_reg[23]_i_2_n_2 ,\abs_data_reg[23]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_abs_data_reg[23]_i_2_O_UNCONNECTED [3],abs_data1[23:21]}),
        .S({1'b0,abs_data2,\abs_data[23]_i_4_n_0 ,\abs_data[23]_i_5_n_0 }));
  FDRE \abs_data_reg[8] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[8]),
        .Q(abs_data[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \abs_data_reg[8]_i_2 
       (.CI(\abs_data_reg[8]_i_3_n_0 ),
        .CO({\abs_data_reg[8]_i_2_n_0 ,\abs_data_reg[8]_i_2_n_1 ,\abs_data_reg[8]_i_2_n_2 ,\abs_data_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({abs_data1[8],\NLW_abs_data_reg[8]_i_2_O_UNCONNECTED [2:0]}),
        .S({\abs_data[8]_i_4_n_0 ,\abs_data[8]_i_5_n_0 ,\abs_data[8]_i_6_n_0 ,\abs_data[8]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \abs_data_reg[8]_i_3 
       (.CI(1'b0),
        .CO({\abs_data_reg[8]_i_3_n_0 ,\abs_data_reg[8]_i_3_n_1 ,\abs_data_reg[8]_i_3_n_2 ,\abs_data_reg[8]_i_3_n_3 }),
        .CYINIT(\abs_data[8]_i_8_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_abs_data_reg[8]_i_3_O_UNCONNECTED [3:0]),
        .S({\abs_data[8]_i_9_n_0 ,\abs_data[8]_i_10_n_0 ,\abs_data[8]_i_11_n_0 ,\abs_data[8]_i_12_n_0 }));
  FDRE \abs_data_reg[9] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_0_in1_in[9]),
        .Q(abs_data[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4474FFFF44740000)) 
    \data_R[0]_i_1 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(data1),
        .I2(\data_R[0]_i_2_n_0 ),
        .I3(\vol_N_reg_n_0_[0] ),
        .I4(volume[4]),
        .I5(SHIFT_RIGHT[0]),
        .O(in9[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \data_R[0]_i_2 
       (.I0(\vol_N_reg_n_0_[2] ),
        .I1(S_AXIS_TDATA_reg[0]),
        .I2(\vol_N_reg_n_0_[3] ),
        .I3(\vol_N_reg_n_0_[1] ),
        .O(\data_R[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \data_R[10]_i_1 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(data1),
        .I2(SHIFT_LEFT[10]),
        .I3(volume[4]),
        .I4(SHIFT_RIGHT[10]),
        .O(in9[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_R[10]_i_2 
       (.I0(\data_R[10]_i_3_n_0 ),
        .I1(\data_R[12]_i_3_n_0 ),
        .I2(\vol_N_reg_n_0_[0] ),
        .I3(\data_R[11]_i_3_n_0 ),
        .I4(\vol_N_reg_n_0_[1] ),
        .I5(\data_R[13]_i_3_n_0 ),
        .O(SHIFT_LEFT[10]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \data_R[10]_i_3 
       (.I0(S_AXIS_TDATA_reg[3]),
        .I1(\vol_N_reg_n_0_[2] ),
        .I2(S_AXIS_TDATA_reg[7]),
        .I3(\vol_N_reg_n_0_[3] ),
        .O(\data_R[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \data_R[11]_i_1 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(data1),
        .I2(SHIFT_LEFT[11]),
        .I3(volume[4]),
        .I4(SHIFT_RIGHT[11]),
        .O(in9[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_R[11]_i_2 
       (.I0(\data_R[11]_i_3_n_0 ),
        .I1(\data_R[13]_i_3_n_0 ),
        .I2(\vol_N_reg_n_0_[0] ),
        .I3(\data_R[12]_i_3_n_0 ),
        .I4(\vol_N_reg_n_0_[1] ),
        .I5(\data_R[14]_i_3_n_0 ),
        .O(SHIFT_LEFT[11]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_R[11]_i_3 
       (.I0(S_AXIS_TDATA_reg[4]),
        .I1(\vol_N_reg_n_0_[2] ),
        .I2(S_AXIS_TDATA_reg[0]),
        .I3(\vol_N_reg_n_0_[3] ),
        .I4(S_AXIS_TDATA_reg[8]),
        .O(\data_R[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \data_R[12]_i_1 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(data1),
        .I2(SHIFT_LEFT[12]),
        .I3(volume[4]),
        .I4(SHIFT_RIGHT[12]),
        .O(in9[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_R[12]_i_2 
       (.I0(\data_R[12]_i_3_n_0 ),
        .I1(\data_R[14]_i_3_n_0 ),
        .I2(\vol_N_reg_n_0_[0] ),
        .I3(\data_R[13]_i_3_n_0 ),
        .I4(\vol_N_reg_n_0_[1] ),
        .I5(\data_R[15]_i_3_n_0 ),
        .O(SHIFT_LEFT[12]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_R[12]_i_3 
       (.I0(S_AXIS_TDATA_reg[5]),
        .I1(\vol_N_reg_n_0_[2] ),
        .I2(S_AXIS_TDATA_reg[1]),
        .I3(\vol_N_reg_n_0_[3] ),
        .I4(S_AXIS_TDATA_reg[9]),
        .O(\data_R[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \data_R[13]_i_1 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(data1),
        .I2(SHIFT_LEFT[13]),
        .I3(volume[4]),
        .I4(SHIFT_RIGHT[13]),
        .O(in9[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_R[13]_i_2 
       (.I0(\data_R[13]_i_3_n_0 ),
        .I1(\data_R[15]_i_3_n_0 ),
        .I2(\vol_N_reg_n_0_[0] ),
        .I3(\data_R[14]_i_3_n_0 ),
        .I4(\vol_N_reg_n_0_[1] ),
        .I5(\data_R[16]_i_3_n_0 ),
        .O(SHIFT_LEFT[13]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_R[13]_i_3 
       (.I0(S_AXIS_TDATA_reg[6]),
        .I1(\vol_N_reg_n_0_[2] ),
        .I2(S_AXIS_TDATA_reg[2]),
        .I3(\vol_N_reg_n_0_[3] ),
        .I4(S_AXIS_TDATA_reg[10]),
        .O(\data_R[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \data_R[14]_i_1 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(data1),
        .I2(SHIFT_LEFT[14]),
        .I3(volume[4]),
        .I4(SHIFT_RIGHT[14]),
        .O(in9[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_R[14]_i_2 
       (.I0(\data_R[14]_i_3_n_0 ),
        .I1(\data_R[16]_i_3_n_0 ),
        .I2(\vol_N_reg_n_0_[0] ),
        .I3(\data_R[15]_i_3_n_0 ),
        .I4(\vol_N_reg_n_0_[1] ),
        .I5(\data_R[17]_i_3_n_0 ),
        .O(SHIFT_LEFT[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_R[14]_i_3 
       (.I0(S_AXIS_TDATA_reg[7]),
        .I1(\vol_N_reg_n_0_[2] ),
        .I2(S_AXIS_TDATA_reg[3]),
        .I3(\vol_N_reg_n_0_[3] ),
        .I4(S_AXIS_TDATA_reg[11]),
        .O(\data_R[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \data_R[15]_i_1 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(data1),
        .I2(SHIFT_LEFT[15]),
        .I3(volume[4]),
        .I4(SHIFT_RIGHT[15]),
        .O(in9[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_R[15]_i_2 
       (.I0(\data_R[15]_i_3_n_0 ),
        .I1(\data_R[17]_i_3_n_0 ),
        .I2(\vol_N_reg_n_0_[0] ),
        .I3(\data_R[16]_i_3_n_0 ),
        .I4(\vol_N_reg_n_0_[1] ),
        .I5(\data_R[18]_i_3_n_0 ),
        .O(SHIFT_LEFT[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_R[15]_i_3 
       (.I0(S_AXIS_TDATA_reg[0]),
        .I1(S_AXIS_TDATA_reg[8]),
        .I2(\vol_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA_reg[4]),
        .I4(\vol_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA_reg[12]),
        .O(\data_R[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \data_R[16]_i_1 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(data1),
        .I2(SHIFT_LEFT[16]),
        .I3(volume[4]),
        .I4(SHIFT_RIGHT[16]),
        .O(in9[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_R[16]_i_2 
       (.I0(\data_R[16]_i_3_n_0 ),
        .I1(\data_R[18]_i_3_n_0 ),
        .I2(\vol_N_reg_n_0_[0] ),
        .I3(\data_R[17]_i_3_n_0 ),
        .I4(\vol_N_reg_n_0_[1] ),
        .I5(\data_R[19]_i_3_n_0 ),
        .O(SHIFT_LEFT[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_R[16]_i_3 
       (.I0(S_AXIS_TDATA_reg[1]),
        .I1(S_AXIS_TDATA_reg[9]),
        .I2(\vol_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA_reg[5]),
        .I4(\vol_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA_reg[13]),
        .O(\data_R[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \data_R[17]_i_1 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(data1),
        .I2(SHIFT_LEFT[17]),
        .I3(volume[4]),
        .I4(SHIFT_RIGHT[17]),
        .O(in9[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_R[17]_i_2 
       (.I0(\data_R[17]_i_3_n_0 ),
        .I1(\data_R[19]_i_3_n_0 ),
        .I2(\vol_N_reg_n_0_[0] ),
        .I3(\data_R[18]_i_3_n_0 ),
        .I4(\vol_N_reg_n_0_[1] ),
        .I5(\data_R[20]_i_3_n_0 ),
        .O(SHIFT_LEFT[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_R[17]_i_3 
       (.I0(S_AXIS_TDATA_reg[2]),
        .I1(S_AXIS_TDATA_reg[10]),
        .I2(\vol_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA_reg[6]),
        .I4(\vol_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA_reg[14]),
        .O(\data_R[17]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \data_R[18]_i_1 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(data1),
        .I2(SHIFT_LEFT[18]),
        .I3(volume[4]),
        .I4(SHIFT_RIGHT[18]),
        .O(in9[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_R[18]_i_2 
       (.I0(\data_R[18]_i_3_n_0 ),
        .I1(\data_R[20]_i_3_n_0 ),
        .I2(\vol_N_reg_n_0_[0] ),
        .I3(\data_R[19]_i_3_n_0 ),
        .I4(\vol_N_reg_n_0_[1] ),
        .I5(\data_R[21]_i_3_n_0 ),
        .O(SHIFT_LEFT[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_R[18]_i_3 
       (.I0(S_AXIS_TDATA_reg[3]),
        .I1(S_AXIS_TDATA_reg[11]),
        .I2(\vol_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA_reg[7]),
        .I4(\vol_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA_reg[15]),
        .O(\data_R[18]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \data_R[19]_i_1 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(data1),
        .I2(SHIFT_LEFT[19]),
        .I3(volume[4]),
        .I4(SHIFT_RIGHT[19]),
        .O(in9[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_R[19]_i_2 
       (.I0(\data_R[19]_i_3_n_0 ),
        .I1(\data_R[21]_i_3_n_0 ),
        .I2(\vol_N_reg_n_0_[0] ),
        .I3(\data_R[20]_i_3_n_0 ),
        .I4(\vol_N_reg_n_0_[1] ),
        .I5(\data_R[22]_i_4_n_0 ),
        .O(SHIFT_LEFT[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_R[19]_i_3 
       (.I0(S_AXIS_TDATA_reg[4]),
        .I1(S_AXIS_TDATA_reg[12]),
        .I2(\vol_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA_reg[8]),
        .I4(\vol_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA_reg[16]),
        .O(\data_R[19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \data_R[1]_i_1 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(data1),
        .I2(SHIFT_LEFT[1]),
        .I3(volume[4]),
        .I4(SHIFT_RIGHT[1]),
        .O(in9[1]));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \data_R[1]_i_2 
       (.I0(S_AXIS_TDATA_reg[0]),
        .I1(\vol_N_reg_n_0_[0] ),
        .I2(\vol_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA_reg[1]),
        .I4(\vol_N_reg_n_0_[3] ),
        .I5(\vol_N_reg_n_0_[1] ),
        .O(SHIFT_LEFT[1]));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \data_R[20]_i_1 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(data1),
        .I2(SHIFT_LEFT[20]),
        .I3(volume[4]),
        .I4(SHIFT_RIGHT[20]),
        .O(in9[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_R[20]_i_2 
       (.I0(\data_R[20]_i_3_n_0 ),
        .I1(\data_R[22]_i_4_n_0 ),
        .I2(\vol_N_reg_n_0_[0] ),
        .I3(\data_R[21]_i_3_n_0 ),
        .I4(\vol_N_reg_n_0_[1] ),
        .I5(\M_AXIS_TDATA[23]_i_10_n_0 ),
        .O(SHIFT_LEFT[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_R[20]_i_3 
       (.I0(S_AXIS_TDATA_reg[5]),
        .I1(S_AXIS_TDATA_reg[13]),
        .I2(\vol_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA_reg[9]),
        .I4(\vol_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA_reg[17]),
        .O(\data_R[20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \data_R[21]_i_1 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(data1),
        .I2(SHIFT_LEFT[21]),
        .I3(volume[4]),
        .I4(SHIFT_RIGHT[21]),
        .O(in9[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_R[21]_i_2 
       (.I0(\data_R[21]_i_3_n_0 ),
        .I1(\M_AXIS_TDATA[23]_i_10_n_0 ),
        .I2(\vol_N_reg_n_0_[0] ),
        .I3(\data_R[22]_i_4_n_0 ),
        .I4(\vol_N_reg_n_0_[1] ),
        .I5(\M_AXIS_TDATA[23]_i_12_n_0 ),
        .O(SHIFT_LEFT[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_R[21]_i_3 
       (.I0(S_AXIS_TDATA_reg[6]),
        .I1(S_AXIS_TDATA_reg[14]),
        .I2(\vol_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA_reg[10]),
        .I4(\vol_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA_reg[18]),
        .O(\data_R[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4FE04FEF4FE040E0)) 
    \data_R[22]_i_1 
       (.I0(data1),
        .I1(SHIFT_LEFT[22]),
        .I2(volume[4]),
        .I3(S_AXIS_TDATA_reg[23]),
        .I4(\vol_N_reg_n_0_[0] ),
        .I5(\data_R[22]_i_3_n_0 ),
        .O(in9[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_R[22]_i_2 
       (.I0(\data_R[22]_i_4_n_0 ),
        .I1(\M_AXIS_TDATA[23]_i_12_n_0 ),
        .I2(\vol_N_reg_n_0_[0] ),
        .I3(\M_AXIS_TDATA[23]_i_10_n_0 ),
        .I4(\vol_N_reg_n_0_[1] ),
        .I5(\M_AXIS_TDATA[23]_i_11_n_0 ),
        .O(SHIFT_LEFT[22]));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \data_R[22]_i_3 
       (.I0(\vol_N_reg_n_0_[1] ),
        .I1(\vol_N_reg_n_0_[2] ),
        .I2(S_AXIS_TDATA_reg[23]),
        .I3(\vol_N_reg_n_0_[3] ),
        .I4(S_AXIS_TDATA_reg[22]),
        .O(\data_R[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_R[22]_i_4 
       (.I0(S_AXIS_TDATA_reg[7]),
        .I1(S_AXIS_TDATA_reg[15]),
        .I2(\vol_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA_reg[11]),
        .I4(\vol_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA_reg[19]),
        .O(\data_R[22]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \data_R[23]_i_1 
       (.I0(aresetn),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(S_AXIS_TVALID),
        .I4(S_AXIS_TLAST),
        .O(data_R0));
  LUT4 #(
    .INIT(16'hEF40)) 
    \data_R[23]_i_2 
       (.I0(data1),
        .I1(SHIFT_LEFT[23]),
        .I2(volume[4]),
        .I3(S_AXIS_TDATA_reg[23]),
        .O(in9[23]));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \data_R[2]_i_1 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(data1),
        .I2(SHIFT_LEFT[2]),
        .I3(volume[4]),
        .I4(SHIFT_RIGHT[2]),
        .O(in9[2]));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \data_R[2]_i_2 
       (.I0(\vol_N_reg_n_0_[2] ),
        .I1(S_AXIS_TDATA_reg[1]),
        .I2(\vol_N_reg_n_0_[3] ),
        .I3(\vol_N_reg_n_0_[1] ),
        .I4(\vol_N_reg_n_0_[0] ),
        .I5(\data_R[3]_i_3_n_0 ),
        .O(SHIFT_LEFT[2]));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \data_R[3]_i_1 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(data1),
        .I2(SHIFT_LEFT[3]),
        .I3(volume[4]),
        .I4(SHIFT_RIGHT[3]),
        .O(in9[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_R[3]_i_2 
       (.I0(\data_R[3]_i_3_n_0 ),
        .I1(\vol_N_reg_n_0_[0] ),
        .I2(\data_R[4]_i_3_n_0 ),
        .O(SHIFT_LEFT[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000B08)) 
    \data_R[3]_i_3 
       (.I0(S_AXIS_TDATA_reg[0]),
        .I1(\vol_N_reg_n_0_[1] ),
        .I2(\vol_N_reg_n_0_[3] ),
        .I3(S_AXIS_TDATA_reg[2]),
        .I4(\vol_N_reg_n_0_[2] ),
        .O(\data_R[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \data_R[4]_i_1 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(data1),
        .I2(SHIFT_LEFT[4]),
        .I3(volume[4]),
        .I4(SHIFT_RIGHT[4]),
        .O(in9[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_R[4]_i_2 
       (.I0(\data_R[4]_i_3_n_0 ),
        .I1(\vol_N_reg_n_0_[0] ),
        .I2(\data_R[5]_i_3_n_0 ),
        .O(SHIFT_LEFT[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000B08)) 
    \data_R[4]_i_3 
       (.I0(S_AXIS_TDATA_reg[1]),
        .I1(\vol_N_reg_n_0_[1] ),
        .I2(\vol_N_reg_n_0_[3] ),
        .I3(S_AXIS_TDATA_reg[3]),
        .I4(\vol_N_reg_n_0_[2] ),
        .O(\data_R[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \data_R[5]_i_1 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(data1),
        .I2(SHIFT_LEFT[5]),
        .I3(volume[4]),
        .I4(SHIFT_RIGHT[5]),
        .O(in9[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_R[5]_i_2 
       (.I0(\data_R[5]_i_3_n_0 ),
        .I1(\vol_N_reg_n_0_[0] ),
        .I2(\data_R[6]_i_3_n_0 ),
        .O(SHIFT_LEFT[5]));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \data_R[5]_i_3 
       (.I0(S_AXIS_TDATA_reg[2]),
        .I1(\vol_N_reg_n_0_[1] ),
        .I2(S_AXIS_TDATA_reg[0]),
        .I3(\vol_N_reg_n_0_[2] ),
        .I4(S_AXIS_TDATA_reg[4]),
        .I5(\vol_N_reg_n_0_[3] ),
        .O(\data_R[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \data_R[6]_i_1 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(data1),
        .I2(SHIFT_LEFT[6]),
        .I3(volume[4]),
        .I4(SHIFT_RIGHT[6]),
        .O(in9[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \data_R[6]_i_2 
       (.I0(\data_R[6]_i_3_n_0 ),
        .I1(\vol_N_reg_n_0_[0] ),
        .I2(\data_R[7]_i_3_n_0 ),
        .I3(\vol_N_reg_n_0_[1] ),
        .I4(\data_R[9]_i_3_n_0 ),
        .O(SHIFT_LEFT[6]));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \data_R[6]_i_3 
       (.I0(S_AXIS_TDATA_reg[3]),
        .I1(\vol_N_reg_n_0_[1] ),
        .I2(S_AXIS_TDATA_reg[1]),
        .I3(\vol_N_reg_n_0_[2] ),
        .I4(S_AXIS_TDATA_reg[5]),
        .I5(\vol_N_reg_n_0_[3] ),
        .O(\data_R[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \data_R[7]_i_1 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(data1),
        .I2(SHIFT_LEFT[7]),
        .I3(volume[4]),
        .I4(SHIFT_RIGHT[7]),
        .O(in9[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_R[7]_i_2 
       (.I0(\data_R[7]_i_3_n_0 ),
        .I1(\data_R[9]_i_3_n_0 ),
        .I2(\vol_N_reg_n_0_[0] ),
        .I3(\data_R[8]_i_3_n_0 ),
        .I4(\vol_N_reg_n_0_[1] ),
        .I5(\data_R[10]_i_3_n_0 ),
        .O(SHIFT_LEFT[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \data_R[7]_i_3 
       (.I0(S_AXIS_TDATA_reg[0]),
        .I1(\vol_N_reg_n_0_[2] ),
        .I2(S_AXIS_TDATA_reg[4]),
        .I3(\vol_N_reg_n_0_[3] ),
        .O(\data_R[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \data_R[8]_i_1 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(data1),
        .I2(SHIFT_LEFT[8]),
        .I3(volume[4]),
        .I4(SHIFT_RIGHT[8]),
        .O(in9[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_R[8]_i_2 
       (.I0(\data_R[8]_i_3_n_0 ),
        .I1(\data_R[10]_i_3_n_0 ),
        .I2(\vol_N_reg_n_0_[0] ),
        .I3(\data_R[9]_i_3_n_0 ),
        .I4(\vol_N_reg_n_0_[1] ),
        .I5(\data_R[11]_i_3_n_0 ),
        .O(SHIFT_LEFT[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \data_R[8]_i_3 
       (.I0(S_AXIS_TDATA_reg[1]),
        .I1(\vol_N_reg_n_0_[2] ),
        .I2(S_AXIS_TDATA_reg[5]),
        .I3(\vol_N_reg_n_0_[3] ),
        .O(\data_R[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \data_R[9]_i_1 
       (.I0(S_AXIS_TDATA_reg[23]),
        .I1(data1),
        .I2(SHIFT_LEFT[9]),
        .I3(volume[4]),
        .I4(SHIFT_RIGHT[9]),
        .O(in9[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_R[9]_i_2 
       (.I0(\data_R[9]_i_3_n_0 ),
        .I1(\data_R[11]_i_3_n_0 ),
        .I2(\vol_N_reg_n_0_[0] ),
        .I3(\data_R[10]_i_3_n_0 ),
        .I4(\vol_N_reg_n_0_[1] ),
        .I5(\data_R[12]_i_3_n_0 ),
        .O(SHIFT_LEFT[9]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \data_R[9]_i_3 
       (.I0(S_AXIS_TDATA_reg[2]),
        .I1(\vol_N_reg_n_0_[2] ),
        .I2(S_AXIS_TDATA_reg[6]),
        .I3(\vol_N_reg_n_0_[3] ),
        .O(\data_R[9]_i_3_n_0 ));
  FDRE \data_R_reg[0] 
       (.C(aclk),
        .CE(data_R0),
        .D(in9[0]),
        .Q(data_R[0]),
        .R(1'b0));
  FDRE \data_R_reg[10] 
       (.C(aclk),
        .CE(data_R0),
        .D(in9[10]),
        .Q(data_R[10]),
        .R(1'b0));
  FDRE \data_R_reg[11] 
       (.C(aclk),
        .CE(data_R0),
        .D(in9[11]),
        .Q(data_R[11]),
        .R(1'b0));
  FDRE \data_R_reg[12] 
       (.C(aclk),
        .CE(data_R0),
        .D(in9[12]),
        .Q(data_R[12]),
        .R(1'b0));
  FDRE \data_R_reg[13] 
       (.C(aclk),
        .CE(data_R0),
        .D(in9[13]),
        .Q(data_R[13]),
        .R(1'b0));
  FDRE \data_R_reg[14] 
       (.C(aclk),
        .CE(data_R0),
        .D(in9[14]),
        .Q(data_R[14]),
        .R(1'b0));
  FDRE \data_R_reg[15] 
       (.C(aclk),
        .CE(data_R0),
        .D(in9[15]),
        .Q(data_R[15]),
        .R(1'b0));
  FDRE \data_R_reg[16] 
       (.C(aclk),
        .CE(data_R0),
        .D(in9[16]),
        .Q(data_R[16]),
        .R(1'b0));
  FDRE \data_R_reg[17] 
       (.C(aclk),
        .CE(data_R0),
        .D(in9[17]),
        .Q(data_R[17]),
        .R(1'b0));
  FDRE \data_R_reg[18] 
       (.C(aclk),
        .CE(data_R0),
        .D(in9[18]),
        .Q(data_R[18]),
        .R(1'b0));
  FDRE \data_R_reg[19] 
       (.C(aclk),
        .CE(data_R0),
        .D(in9[19]),
        .Q(data_R[19]),
        .R(1'b0));
  FDRE \data_R_reg[1] 
       (.C(aclk),
        .CE(data_R0),
        .D(in9[1]),
        .Q(data_R[1]),
        .R(1'b0));
  FDRE \data_R_reg[20] 
       (.C(aclk),
        .CE(data_R0),
        .D(in9[20]),
        .Q(data_R[20]),
        .R(1'b0));
  FDRE \data_R_reg[21] 
       (.C(aclk),
        .CE(data_R0),
        .D(in9[21]),
        .Q(data_R[21]),
        .R(1'b0));
  FDRE \data_R_reg[22] 
       (.C(aclk),
        .CE(data_R0),
        .D(in9[22]),
        .Q(data_R[22]),
        .R(1'b0));
  FDRE \data_R_reg[23] 
       (.C(aclk),
        .CE(data_R0),
        .D(in9[23]),
        .Q(data_R[23]),
        .R(1'b0));
  FDRE \data_R_reg[2] 
       (.C(aclk),
        .CE(data_R0),
        .D(in9[2]),
        .Q(data_R[2]),
        .R(1'b0));
  FDRE \data_R_reg[3] 
       (.C(aclk),
        .CE(data_R0),
        .D(in9[3]),
        .Q(data_R[3]),
        .R(1'b0));
  FDRE \data_R_reg[4] 
       (.C(aclk),
        .CE(data_R0),
        .D(in9[4]),
        .Q(data_R[4]),
        .R(1'b0));
  FDRE \data_R_reg[5] 
       (.C(aclk),
        .CE(data_R0),
        .D(in9[5]),
        .Q(data_R[5]),
        .R(1'b0));
  FDRE \data_R_reg[6] 
       (.C(aclk),
        .CE(data_R0),
        .D(in9[6]),
        .Q(data_R[6]),
        .R(1'b0));
  FDRE \data_R_reg[7] 
       (.C(aclk),
        .CE(data_R0),
        .D(in9[7]),
        .Q(data_R[7]),
        .R(1'b0));
  FDRE \data_R_reg[8] 
       (.C(aclk),
        .CE(data_R0),
        .D(in9[8]),
        .Q(data_R[8]),
        .R(1'b0));
  FDRE \data_R_reg[9] 
       (.C(aclk),
        .CE(data_R0),
        .D(in9[9]),
        .Q(data_R[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \vol_N[0]_i_1 
       (.I0(volume[1]),
        .I1(volume[0]),
        .O(vol_N[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6A56)) 
    \vol_N[1]_i_1 
       (.I0(volume[2]),
        .I1(volume[0]),
        .I2(volume[1]),
        .I3(volume[4]),
        .O(vol_N[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAA5556)) 
    \vol_N[2]_i_1 
       (.I0(volume[3]),
        .I1(volume[2]),
        .I2(volume[1]),
        .I3(volume[0]),
        .I4(volume[4]),
        .O(vol_N[2]));
  LUT4 #(
    .INIT(16'h0200)) 
    \vol_N[3]_i_1 
       (.I0(aresetn),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(S_AXIS_TVALID),
        .O(vol_N0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h80000001)) 
    \vol_N[3]_i_2 
       (.I0(volume[2]),
        .I1(volume[1]),
        .I2(volume[0]),
        .I3(volume[3]),
        .I4(volume[4]),
        .O(vol_N[3]));
  FDRE #(
    .INIT(1'b0)) 
    \vol_N_reg[0] 
       (.C(aclk),
        .CE(vol_N0),
        .D(vol_N[0]),
        .Q(\vol_N_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vol_N_reg[1] 
       (.C(aclk),
        .CE(vol_N0),
        .D(vol_N[1]),
        .Q(\vol_N_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vol_N_reg[2] 
       (.C(aclk),
        .CE(vol_N0),
        .D(vol_N[2]),
        .Q(\vol_N_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vol_N_reg[3] 
       (.C(aclk),
        .CE(vol_N0),
        .D(vol_N[3]),
        .Q(\vol_N_reg_n_0_[3] ),
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

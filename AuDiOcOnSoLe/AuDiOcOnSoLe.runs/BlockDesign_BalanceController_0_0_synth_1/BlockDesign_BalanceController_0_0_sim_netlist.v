// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon May 22 23:55:50 2023
// Host        : DESKTOP-JKUPK39 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ BlockDesign_BalanceController_0_0_sim_netlist.v
// Design      : BlockDesign_BalanceController_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BalanceController
   (M_AXIS_TDATA,
    S_AXIS_TREADY,
    M_AXIS_TLAST,
    M_AXIS_TVALID,
    aresetn,
    M_AXIS_TREADY,
    S_AXIS_TLAST,
    S_AXIS_TVALID,
    aclk,
    S_AXIS_TDATA,
    balance);
  output [23:0]M_AXIS_TDATA;
  output S_AXIS_TREADY;
  output M_AXIS_TLAST;
  output M_AXIS_TVALID;
  input aresetn;
  input M_AXIS_TREADY;
  input S_AXIS_TLAST;
  input S_AXIS_TVALID;
  input aclk;
  input [23:0]S_AXIS_TDATA;
  input [4:0]balance;

  wire [23:0]DATA_R;
  wire DATA_R0;
  wire \DATA_R[0]_i_1_n_0 ;
  wire \DATA_R[10]_i_1_n_0 ;
  wire \DATA_R[11]_i_1_n_0 ;
  wire \DATA_R[12]_i_1_n_0 ;
  wire \DATA_R[13]_i_1_n_0 ;
  wire \DATA_R[14]_i_1_n_0 ;
  wire \DATA_R[15]_i_1_n_0 ;
  wire \DATA_R[16]_i_1_n_0 ;
  wire \DATA_R[17]_i_1_n_0 ;
  wire \DATA_R[18]_i_1_n_0 ;
  wire \DATA_R[19]_i_1_n_0 ;
  wire \DATA_R[19]_i_2_n_0 ;
  wire \DATA_R[1]_i_1_n_0 ;
  wire \DATA_R[20]_i_1_n_0 ;
  wire \DATA_R[20]_i_2_n_0 ;
  wire \DATA_R[21]_i_1_n_0 ;
  wire \DATA_R[21]_i_2_n_0 ;
  wire \DATA_R[21]_i_3_n_0 ;
  wire \DATA_R[22]_i_1_n_0 ;
  wire \DATA_R[2]_i_1_n_0 ;
  wire \DATA_R[3]_i_1_n_0 ;
  wire \DATA_R[4]_i_1_n_0 ;
  wire \DATA_R[5]_i_1_n_0 ;
  wire \DATA_R[6]_i_1_n_0 ;
  wire \DATA_R[7]_i_1_n_0 ;
  wire \DATA_R[8]_i_1_n_0 ;
  wire \DATA_R[9]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire [23:0]M_AXIS_TDATA;
  wire M_AXIS_TDATA0;
  wire \M_AXIS_TDATA[0]_i_1_n_0 ;
  wire \M_AXIS_TDATA[0]_i_3_n_0 ;
  wire \M_AXIS_TDATA[10]_i_1_n_0 ;
  wire \M_AXIS_TDATA[10]_i_3_n_0 ;
  wire \M_AXIS_TDATA[11]_i_1_n_0 ;
  wire \M_AXIS_TDATA[11]_i_3_n_0 ;
  wire \M_AXIS_TDATA[12]_i_1_n_0 ;
  wire \M_AXIS_TDATA[12]_i_3_n_0 ;
  wire \M_AXIS_TDATA[13]_i_1_n_0 ;
  wire \M_AXIS_TDATA[13]_i_3_n_0 ;
  wire \M_AXIS_TDATA[14]_i_1_n_0 ;
  wire \M_AXIS_TDATA[14]_i_3_n_0 ;
  wire \M_AXIS_TDATA[15]_i_1_n_0 ;
  wire \M_AXIS_TDATA[15]_i_3_n_0 ;
  wire \M_AXIS_TDATA[16]_i_1_n_0 ;
  wire \M_AXIS_TDATA[16]_i_3_n_0 ;
  wire \M_AXIS_TDATA[17]_i_1_n_0 ;
  wire \M_AXIS_TDATA[17]_i_3_n_0 ;
  wire \M_AXIS_TDATA[17]_i_4_n_0 ;
  wire \M_AXIS_TDATA[18]_i_1_n_0 ;
  wire \M_AXIS_TDATA[18]_i_3_n_0 ;
  wire \M_AXIS_TDATA[18]_i_4_n_0 ;
  wire \M_AXIS_TDATA[19]_i_1_n_0 ;
  wire \M_AXIS_TDATA[1]_i_1_n_0 ;
  wire \M_AXIS_TDATA[1]_i_3_n_0 ;
  wire \M_AXIS_TDATA[20]_i_1_n_0 ;
  wire \M_AXIS_TDATA[21]_i_1_n_0 ;
  wire \M_AXIS_TDATA[22]_i_1_n_0 ;
  wire \M_AXIS_TDATA[23]_i_2_n_0 ;
  wire \M_AXIS_TDATA[2]_i_1_n_0 ;
  wire \M_AXIS_TDATA[2]_i_3_n_0 ;
  wire \M_AXIS_TDATA[3]_i_1_n_0 ;
  wire \M_AXIS_TDATA[3]_i_3_n_0 ;
  wire \M_AXIS_TDATA[4]_i_1_n_0 ;
  wire \M_AXIS_TDATA[4]_i_3_n_0 ;
  wire \M_AXIS_TDATA[5]_i_1_n_0 ;
  wire \M_AXIS_TDATA[5]_i_3_n_0 ;
  wire \M_AXIS_TDATA[6]_i_1_n_0 ;
  wire \M_AXIS_TDATA[6]_i_3_n_0 ;
  wire \M_AXIS_TDATA[7]_i_1_n_0 ;
  wire \M_AXIS_TDATA[7]_i_3_n_0 ;
  wire \M_AXIS_TDATA[8]_i_1_n_0 ;
  wire \M_AXIS_TDATA[8]_i_3_n_0 ;
  wire \M_AXIS_TDATA[9]_i_1_n_0 ;
  wire \M_AXIS_TDATA[9]_i_3_n_0 ;
  wire M_AXIS_TLAST;
  wire M_AXIS_TLAST_i_1_n_0;
  wire M_AXIS_TREADY;
  wire M_AXIS_TVALID;
  wire M_AXIS_TVALID_i_1_n_0;
  wire [22:0]SHIFT_RIGHT;
  wire [23:0]S_AXIS_TDATA;
  wire S_AXIS_TLAST;
  wire S_AXIS_TREADY;
  wire S_AXIS_TREADY0;
  wire S_AXIS_TREADY_i_1_n_0;
  wire S_AXIS_TVALID;
  wire aclk;
  wire aresetn;
  wire [3:0]bal_N;
  wire bal_N0;
  wire bal_N11_out;
  wire bal_N1__0;
  wire \bal_N_reg_n_0_[0] ;
  wire \bal_N_reg_n_0_[1] ;
  wire \bal_N_reg_n_0_[2] ;
  wire \bal_N_reg_n_0_[3] ;
  wire [4:0]balance;
  wire [1:0]state__0;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_R[0]_i_1 
       (.I0(S_AXIS_TDATA[0]),
        .I1(SHIFT_RIGHT[0]),
        .I2(balance[4]),
        .O(\DATA_R[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_R[10]_i_1 
       (.I0(S_AXIS_TDATA[10]),
        .I1(SHIFT_RIGHT[10]),
        .I2(balance[4]),
        .O(\DATA_R[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_R[11]_i_1 
       (.I0(S_AXIS_TDATA[11]),
        .I1(SHIFT_RIGHT[11]),
        .I2(balance[4]),
        .O(\DATA_R[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_R[12]_i_1 
       (.I0(S_AXIS_TDATA[12]),
        .I1(SHIFT_RIGHT[12]),
        .I2(balance[4]),
        .O(\DATA_R[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_R[13]_i_1 
       (.I0(S_AXIS_TDATA[13]),
        .I1(SHIFT_RIGHT[13]),
        .I2(balance[4]),
        .O(\DATA_R[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_R[14]_i_1 
       (.I0(S_AXIS_TDATA[14]),
        .I1(SHIFT_RIGHT[14]),
        .I2(balance[4]),
        .O(\DATA_R[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_R[15]_i_1 
       (.I0(S_AXIS_TDATA[15]),
        .I1(SHIFT_RIGHT[15]),
        .I2(balance[4]),
        .O(\DATA_R[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_R[16]_i_1 
       (.I0(S_AXIS_TDATA[16]),
        .I1(SHIFT_RIGHT[16]),
        .I2(balance[4]),
        .O(\DATA_R[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_R[17]_i_1 
       (.I0(S_AXIS_TDATA[17]),
        .I1(SHIFT_RIGHT[17]),
        .I2(balance[4]),
        .O(\DATA_R[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_R[18]_i_1 
       (.I0(S_AXIS_TDATA[18]),
        .I1(SHIFT_RIGHT[18]),
        .I2(balance[4]),
        .O(\DATA_R[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \DATA_R[19]_i_1 
       (.I0(S_AXIS_TDATA[19]),
        .I1(\DATA_R[20]_i_2_n_0 ),
        .I2(\bal_N_reg_n_0_[0] ),
        .I3(\DATA_R[19]_i_2_n_0 ),
        .I4(balance[4]),
        .O(\DATA_R[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \DATA_R[19]_i_2 
       (.I0(S_AXIS_TDATA[21]),
        .I1(\bal_N_reg_n_0_[1] ),
        .I2(\bal_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA[23]),
        .I4(\bal_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA[19]),
        .O(\DATA_R[19]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_R[1]_i_1 
       (.I0(S_AXIS_TDATA[1]),
        .I1(SHIFT_RIGHT[1]),
        .I2(balance[4]),
        .O(\DATA_R[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \DATA_R[20]_i_1 
       (.I0(S_AXIS_TDATA[20]),
        .I1(\DATA_R[21]_i_3_n_0 ),
        .I2(\bal_N_reg_n_0_[0] ),
        .I3(\DATA_R[20]_i_2_n_0 ),
        .I4(balance[4]),
        .O(\DATA_R[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \DATA_R[20]_i_2 
       (.I0(S_AXIS_TDATA[22]),
        .I1(\bal_N_reg_n_0_[1] ),
        .I2(\bal_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA[23]),
        .I4(\bal_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA[20]),
        .O(\DATA_R[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \DATA_R[21]_i_1 
       (.I0(S_AXIS_TDATA[21]),
        .I1(\DATA_R[21]_i_2_n_0 ),
        .I2(\bal_N_reg_n_0_[0] ),
        .I3(\DATA_R[21]_i_3_n_0 ),
        .I4(balance[4]),
        .O(\DATA_R[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \DATA_R[21]_i_2 
       (.I0(\bal_N_reg_n_0_[1] ),
        .I1(\bal_N_reg_n_0_[2] ),
        .I2(S_AXIS_TDATA[23]),
        .I3(\bal_N_reg_n_0_[3] ),
        .I4(S_AXIS_TDATA[22]),
        .O(\DATA_R[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \DATA_R[21]_i_3 
       (.I0(\bal_N_reg_n_0_[1] ),
        .I1(\bal_N_reg_n_0_[2] ),
        .I2(S_AXIS_TDATA[23]),
        .I3(\bal_N_reg_n_0_[3] ),
        .I4(S_AXIS_TDATA[21]),
        .O(\DATA_R[21]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_R[22]_i_1 
       (.I0(S_AXIS_TDATA[22]),
        .I1(SHIFT_RIGHT[22]),
        .I2(balance[4]),
        .O(\DATA_R[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \DATA_R[23]_i_1 
       (.I0(aresetn),
        .I1(S_AXIS_TVALID),
        .I2(S_AXIS_TLAST),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .O(DATA_R0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_R[2]_i_1 
       (.I0(S_AXIS_TDATA[2]),
        .I1(SHIFT_RIGHT[2]),
        .I2(balance[4]),
        .O(\DATA_R[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_R[3]_i_1 
       (.I0(S_AXIS_TDATA[3]),
        .I1(SHIFT_RIGHT[3]),
        .I2(balance[4]),
        .O(\DATA_R[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_R[4]_i_1 
       (.I0(S_AXIS_TDATA[4]),
        .I1(SHIFT_RIGHT[4]),
        .I2(balance[4]),
        .O(\DATA_R[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_R[5]_i_1 
       (.I0(S_AXIS_TDATA[5]),
        .I1(SHIFT_RIGHT[5]),
        .I2(balance[4]),
        .O(\DATA_R[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_R[6]_i_1 
       (.I0(S_AXIS_TDATA[6]),
        .I1(SHIFT_RIGHT[6]),
        .I2(balance[4]),
        .O(\DATA_R[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_R[7]_i_1 
       (.I0(S_AXIS_TDATA[7]),
        .I1(SHIFT_RIGHT[7]),
        .I2(balance[4]),
        .O(\DATA_R[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_R[8]_i_1 
       (.I0(S_AXIS_TDATA[8]),
        .I1(SHIFT_RIGHT[8]),
        .I2(balance[4]),
        .O(\DATA_R[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_R[9]_i_1 
       (.I0(S_AXIS_TDATA[9]),
        .I1(SHIFT_RIGHT[9]),
        .I2(balance[4]),
        .O(\DATA_R[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[0] 
       (.C(aclk),
        .CE(DATA_R0),
        .D(\DATA_R[0]_i_1_n_0 ),
        .Q(DATA_R[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[10] 
       (.C(aclk),
        .CE(DATA_R0),
        .D(\DATA_R[10]_i_1_n_0 ),
        .Q(DATA_R[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[11] 
       (.C(aclk),
        .CE(DATA_R0),
        .D(\DATA_R[11]_i_1_n_0 ),
        .Q(DATA_R[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[12] 
       (.C(aclk),
        .CE(DATA_R0),
        .D(\DATA_R[12]_i_1_n_0 ),
        .Q(DATA_R[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[13] 
       (.C(aclk),
        .CE(DATA_R0),
        .D(\DATA_R[13]_i_1_n_0 ),
        .Q(DATA_R[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[14] 
       (.C(aclk),
        .CE(DATA_R0),
        .D(\DATA_R[14]_i_1_n_0 ),
        .Q(DATA_R[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[15] 
       (.C(aclk),
        .CE(DATA_R0),
        .D(\DATA_R[15]_i_1_n_0 ),
        .Q(DATA_R[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[16] 
       (.C(aclk),
        .CE(DATA_R0),
        .D(\DATA_R[16]_i_1_n_0 ),
        .Q(DATA_R[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[17] 
       (.C(aclk),
        .CE(DATA_R0),
        .D(\DATA_R[17]_i_1_n_0 ),
        .Q(DATA_R[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[18] 
       (.C(aclk),
        .CE(DATA_R0),
        .D(\DATA_R[18]_i_1_n_0 ),
        .Q(DATA_R[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[19] 
       (.C(aclk),
        .CE(DATA_R0),
        .D(\DATA_R[19]_i_1_n_0 ),
        .Q(DATA_R[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[1] 
       (.C(aclk),
        .CE(DATA_R0),
        .D(\DATA_R[1]_i_1_n_0 ),
        .Q(DATA_R[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[20] 
       (.C(aclk),
        .CE(DATA_R0),
        .D(\DATA_R[20]_i_1_n_0 ),
        .Q(DATA_R[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[21] 
       (.C(aclk),
        .CE(DATA_R0),
        .D(\DATA_R[21]_i_1_n_0 ),
        .Q(DATA_R[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[22] 
       (.C(aclk),
        .CE(DATA_R0),
        .D(\DATA_R[22]_i_1_n_0 ),
        .Q(DATA_R[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[23] 
       (.C(aclk),
        .CE(DATA_R0),
        .D(S_AXIS_TDATA[23]),
        .Q(DATA_R[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[2] 
       (.C(aclk),
        .CE(DATA_R0),
        .D(\DATA_R[2]_i_1_n_0 ),
        .Q(DATA_R[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[3] 
       (.C(aclk),
        .CE(DATA_R0),
        .D(\DATA_R[3]_i_1_n_0 ),
        .Q(DATA_R[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[4] 
       (.C(aclk),
        .CE(DATA_R0),
        .D(\DATA_R[4]_i_1_n_0 ),
        .Q(DATA_R[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[5] 
       (.C(aclk),
        .CE(DATA_R0),
        .D(\DATA_R[5]_i_1_n_0 ),
        .Q(DATA_R[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[6] 
       (.C(aclk),
        .CE(DATA_R0),
        .D(\DATA_R[6]_i_1_n_0 ),
        .Q(DATA_R[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[7] 
       (.C(aclk),
        .CE(DATA_R0),
        .D(\DATA_R[7]_i_1_n_0 ),
        .Q(DATA_R[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[8] 
       (.C(aclk),
        .CE(DATA_R0),
        .D(\DATA_R[8]_i_1_n_0 ),
        .Q(DATA_R[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_R_reg[9] 
       (.C(aclk),
        .CE(DATA_R0),
        .D(\DATA_R[9]_i_1_n_0 ),
        .Q(DATA_R[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h64C46ECE6CCC6CCC)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(aresetn),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(M_AXIS_TREADY),
        .I4(S_AXIS_TLAST),
        .I5(S_AXIS_TVALID),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h78F870F070F070F0)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(aresetn),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(M_AXIS_TREADY),
        .I4(S_AXIS_TLAST),
        .I5(S_AXIS_TVALID),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
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
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \M_AXIS_TDATA[0]_i_1 
       (.I0(DATA_R[0]),
        .I1(state__0[1]),
        .I2(SHIFT_RIGHT[0]),
        .I3(balance[4]),
        .I4(S_AXIS_TDATA[0]),
        .O(\M_AXIS_TDATA[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[0]_i_2 
       (.I0(\M_AXIS_TDATA[3]_i_3_n_0 ),
        .I1(\M_AXIS_TDATA[1]_i_3_n_0 ),
        .I2(\bal_N_reg_n_0_[0] ),
        .I3(\M_AXIS_TDATA[2]_i_3_n_0 ),
        .I4(\bal_N_reg_n_0_[1] ),
        .I5(\M_AXIS_TDATA[0]_i_3_n_0 ),
        .O(SHIFT_RIGHT[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[0]_i_3 
       (.I0(S_AXIS_TDATA[12]),
        .I1(S_AXIS_TDATA[4]),
        .I2(\bal_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA[8]),
        .I4(\bal_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA[0]),
        .O(\M_AXIS_TDATA[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \M_AXIS_TDATA[10]_i_1 
       (.I0(DATA_R[10]),
        .I1(state__0[1]),
        .I2(SHIFT_RIGHT[10]),
        .I3(balance[4]),
        .I4(S_AXIS_TDATA[10]),
        .O(\M_AXIS_TDATA[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[10]_i_2 
       (.I0(\M_AXIS_TDATA[13]_i_3_n_0 ),
        .I1(\M_AXIS_TDATA[11]_i_3_n_0 ),
        .I2(\bal_N_reg_n_0_[0] ),
        .I3(\M_AXIS_TDATA[12]_i_3_n_0 ),
        .I4(\bal_N_reg_n_0_[1] ),
        .I5(\M_AXIS_TDATA[10]_i_3_n_0 ),
        .O(SHIFT_RIGHT[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[10]_i_3 
       (.I0(S_AXIS_TDATA[22]),
        .I1(S_AXIS_TDATA[14]),
        .I2(\bal_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA[18]),
        .I4(\bal_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA[10]),
        .O(\M_AXIS_TDATA[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \M_AXIS_TDATA[11]_i_1 
       (.I0(DATA_R[11]),
        .I1(state__0[1]),
        .I2(SHIFT_RIGHT[11]),
        .I3(balance[4]),
        .I4(S_AXIS_TDATA[11]),
        .O(\M_AXIS_TDATA[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[11]_i_2 
       (.I0(\M_AXIS_TDATA[14]_i_3_n_0 ),
        .I1(\M_AXIS_TDATA[12]_i_3_n_0 ),
        .I2(\bal_N_reg_n_0_[0] ),
        .I3(\M_AXIS_TDATA[13]_i_3_n_0 ),
        .I4(\bal_N_reg_n_0_[1] ),
        .I5(\M_AXIS_TDATA[11]_i_3_n_0 ),
        .O(SHIFT_RIGHT[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[11]_i_3 
       (.I0(S_AXIS_TDATA[23]),
        .I1(S_AXIS_TDATA[15]),
        .I2(\bal_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA[19]),
        .I4(\bal_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA[11]),
        .O(\M_AXIS_TDATA[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \M_AXIS_TDATA[12]_i_1 
       (.I0(DATA_R[12]),
        .I1(state__0[1]),
        .I2(SHIFT_RIGHT[12]),
        .I3(balance[4]),
        .I4(S_AXIS_TDATA[12]),
        .O(\M_AXIS_TDATA[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[12]_i_2 
       (.I0(\M_AXIS_TDATA[15]_i_3_n_0 ),
        .I1(\M_AXIS_TDATA[13]_i_3_n_0 ),
        .I2(\bal_N_reg_n_0_[0] ),
        .I3(\M_AXIS_TDATA[14]_i_3_n_0 ),
        .I4(\bal_N_reg_n_0_[1] ),
        .I5(\M_AXIS_TDATA[12]_i_3_n_0 ),
        .O(SHIFT_RIGHT[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[12]_i_3 
       (.I0(S_AXIS_TDATA[23]),
        .I1(S_AXIS_TDATA[16]),
        .I2(\bal_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA[20]),
        .I4(\bal_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA[12]),
        .O(\M_AXIS_TDATA[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \M_AXIS_TDATA[13]_i_1 
       (.I0(DATA_R[13]),
        .I1(state__0[1]),
        .I2(SHIFT_RIGHT[13]),
        .I3(balance[4]),
        .I4(S_AXIS_TDATA[13]),
        .O(\M_AXIS_TDATA[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[13]_i_2 
       (.I0(\M_AXIS_TDATA[16]_i_3_n_0 ),
        .I1(\M_AXIS_TDATA[14]_i_3_n_0 ),
        .I2(\bal_N_reg_n_0_[0] ),
        .I3(\M_AXIS_TDATA[15]_i_3_n_0 ),
        .I4(\bal_N_reg_n_0_[1] ),
        .I5(\M_AXIS_TDATA[13]_i_3_n_0 ),
        .O(SHIFT_RIGHT[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[13]_i_3 
       (.I0(S_AXIS_TDATA[23]),
        .I1(S_AXIS_TDATA[17]),
        .I2(\bal_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA[21]),
        .I4(\bal_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA[13]),
        .O(\M_AXIS_TDATA[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \M_AXIS_TDATA[14]_i_1 
       (.I0(DATA_R[14]),
        .I1(state__0[1]),
        .I2(SHIFT_RIGHT[14]),
        .I3(balance[4]),
        .I4(S_AXIS_TDATA[14]),
        .O(\M_AXIS_TDATA[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[14]_i_2 
       (.I0(\M_AXIS_TDATA[17]_i_4_n_0 ),
        .I1(\M_AXIS_TDATA[15]_i_3_n_0 ),
        .I2(\bal_N_reg_n_0_[0] ),
        .I3(\M_AXIS_TDATA[16]_i_3_n_0 ),
        .I4(\bal_N_reg_n_0_[1] ),
        .I5(\M_AXIS_TDATA[14]_i_3_n_0 ),
        .O(SHIFT_RIGHT[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[14]_i_3 
       (.I0(S_AXIS_TDATA[23]),
        .I1(S_AXIS_TDATA[18]),
        .I2(\bal_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA[22]),
        .I4(\bal_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA[14]),
        .O(\M_AXIS_TDATA[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \M_AXIS_TDATA[15]_i_1 
       (.I0(DATA_R[15]),
        .I1(state__0[1]),
        .I2(SHIFT_RIGHT[15]),
        .I3(balance[4]),
        .I4(S_AXIS_TDATA[15]),
        .O(\M_AXIS_TDATA[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[15]_i_2 
       (.I0(\M_AXIS_TDATA[18]_i_4_n_0 ),
        .I1(\M_AXIS_TDATA[16]_i_3_n_0 ),
        .I2(\bal_N_reg_n_0_[0] ),
        .I3(\M_AXIS_TDATA[17]_i_4_n_0 ),
        .I4(\bal_N_reg_n_0_[1] ),
        .I5(\M_AXIS_TDATA[15]_i_3_n_0 ),
        .O(SHIFT_RIGHT[15]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \M_AXIS_TDATA[15]_i_3 
       (.I0(S_AXIS_TDATA[19]),
        .I1(\bal_N_reg_n_0_[2] ),
        .I2(S_AXIS_TDATA[23]),
        .I3(\bal_N_reg_n_0_[3] ),
        .I4(S_AXIS_TDATA[15]),
        .O(\M_AXIS_TDATA[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \M_AXIS_TDATA[16]_i_1 
       (.I0(DATA_R[16]),
        .I1(state__0[1]),
        .I2(SHIFT_RIGHT[16]),
        .I3(balance[4]),
        .I4(S_AXIS_TDATA[16]),
        .O(\M_AXIS_TDATA[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[16]_i_2 
       (.I0(\M_AXIS_TDATA[17]_i_3_n_0 ),
        .I1(\M_AXIS_TDATA[17]_i_4_n_0 ),
        .I2(\bal_N_reg_n_0_[0] ),
        .I3(\M_AXIS_TDATA[18]_i_4_n_0 ),
        .I4(\bal_N_reg_n_0_[1] ),
        .I5(\M_AXIS_TDATA[16]_i_3_n_0 ),
        .O(SHIFT_RIGHT[16]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \M_AXIS_TDATA[16]_i_3 
       (.I0(S_AXIS_TDATA[20]),
        .I1(\bal_N_reg_n_0_[2] ),
        .I2(S_AXIS_TDATA[23]),
        .I3(\bal_N_reg_n_0_[3] ),
        .I4(S_AXIS_TDATA[16]),
        .O(\M_AXIS_TDATA[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \M_AXIS_TDATA[17]_i_1 
       (.I0(DATA_R[17]),
        .I1(state__0[1]),
        .I2(SHIFT_RIGHT[17]),
        .I3(balance[4]),
        .I4(S_AXIS_TDATA[17]),
        .O(\M_AXIS_TDATA[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[17]_i_2 
       (.I0(\M_AXIS_TDATA[18]_i_3_n_0 ),
        .I1(\M_AXIS_TDATA[18]_i_4_n_0 ),
        .I2(\bal_N_reg_n_0_[0] ),
        .I3(\M_AXIS_TDATA[17]_i_3_n_0 ),
        .I4(\bal_N_reg_n_0_[1] ),
        .I5(\M_AXIS_TDATA[17]_i_4_n_0 ),
        .O(SHIFT_RIGHT[17]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    \M_AXIS_TDATA[17]_i_3 
       (.I0(\bal_N_reg_n_0_[2] ),
        .I1(S_AXIS_TDATA[23]),
        .I2(\bal_N_reg_n_0_[3] ),
        .I3(S_AXIS_TDATA[19]),
        .O(\M_AXIS_TDATA[17]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \M_AXIS_TDATA[17]_i_4 
       (.I0(S_AXIS_TDATA[21]),
        .I1(\bal_N_reg_n_0_[2] ),
        .I2(S_AXIS_TDATA[23]),
        .I3(\bal_N_reg_n_0_[3] ),
        .I4(S_AXIS_TDATA[17]),
        .O(\M_AXIS_TDATA[17]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \M_AXIS_TDATA[18]_i_1 
       (.I0(DATA_R[18]),
        .I1(state__0[1]),
        .I2(SHIFT_RIGHT[18]),
        .I3(balance[4]),
        .I4(S_AXIS_TDATA[18]),
        .O(\M_AXIS_TDATA[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \M_AXIS_TDATA[18]_i_2 
       (.I0(\DATA_R[19]_i_2_n_0 ),
        .I1(\bal_N_reg_n_0_[0] ),
        .I2(\M_AXIS_TDATA[18]_i_3_n_0 ),
        .I3(\bal_N_reg_n_0_[1] ),
        .I4(\M_AXIS_TDATA[18]_i_4_n_0 ),
        .O(SHIFT_RIGHT[18]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    \M_AXIS_TDATA[18]_i_3 
       (.I0(\bal_N_reg_n_0_[2] ),
        .I1(S_AXIS_TDATA[23]),
        .I2(\bal_N_reg_n_0_[3] ),
        .I3(S_AXIS_TDATA[20]),
        .O(\M_AXIS_TDATA[18]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \M_AXIS_TDATA[18]_i_4 
       (.I0(S_AXIS_TDATA[22]),
        .I1(\bal_N_reg_n_0_[2] ),
        .I2(S_AXIS_TDATA[23]),
        .I3(\bal_N_reg_n_0_[3] ),
        .I4(S_AXIS_TDATA[18]),
        .O(\M_AXIS_TDATA[18]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \M_AXIS_TDATA[19]_i_1 
       (.I0(DATA_R[19]),
        .I1(state__0[1]),
        .I2(SHIFT_RIGHT[19]),
        .I3(balance[4]),
        .I4(S_AXIS_TDATA[19]),
        .O(\M_AXIS_TDATA[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA[19]_i_2 
       (.I0(\DATA_R[20]_i_2_n_0 ),
        .I1(\bal_N_reg_n_0_[0] ),
        .I2(\DATA_R[19]_i_2_n_0 ),
        .O(SHIFT_RIGHT[19]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \M_AXIS_TDATA[1]_i_1 
       (.I0(DATA_R[1]),
        .I1(state__0[1]),
        .I2(SHIFT_RIGHT[1]),
        .I3(balance[4]),
        .I4(S_AXIS_TDATA[1]),
        .O(\M_AXIS_TDATA[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[1]_i_2 
       (.I0(\M_AXIS_TDATA[4]_i_3_n_0 ),
        .I1(\M_AXIS_TDATA[2]_i_3_n_0 ),
        .I2(\bal_N_reg_n_0_[0] ),
        .I3(\M_AXIS_TDATA[3]_i_3_n_0 ),
        .I4(\bal_N_reg_n_0_[1] ),
        .I5(\M_AXIS_TDATA[1]_i_3_n_0 ),
        .O(SHIFT_RIGHT[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[1]_i_3 
       (.I0(S_AXIS_TDATA[13]),
        .I1(S_AXIS_TDATA[5]),
        .I2(\bal_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA[9]),
        .I4(\bal_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA[1]),
        .O(\M_AXIS_TDATA[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \M_AXIS_TDATA[20]_i_1 
       (.I0(DATA_R[20]),
        .I1(state__0[1]),
        .I2(SHIFT_RIGHT[20]),
        .I3(balance[4]),
        .I4(S_AXIS_TDATA[20]),
        .O(\M_AXIS_TDATA[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA[20]_i_2 
       (.I0(\DATA_R[21]_i_3_n_0 ),
        .I1(\bal_N_reg_n_0_[0] ),
        .I2(\DATA_R[20]_i_2_n_0 ),
        .O(SHIFT_RIGHT[20]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \M_AXIS_TDATA[21]_i_1 
       (.I0(DATA_R[21]),
        .I1(state__0[1]),
        .I2(SHIFT_RIGHT[21]),
        .I3(balance[4]),
        .I4(S_AXIS_TDATA[21]),
        .O(\M_AXIS_TDATA[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA[21]_i_2 
       (.I0(\DATA_R[21]_i_2_n_0 ),
        .I1(\bal_N_reg_n_0_[0] ),
        .I2(\DATA_R[21]_i_3_n_0 ),
        .O(SHIFT_RIGHT[21]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \M_AXIS_TDATA[22]_i_1 
       (.I0(DATA_R[22]),
        .I1(state__0[1]),
        .I2(SHIFT_RIGHT[22]),
        .I3(balance[4]),
        .I4(S_AXIS_TDATA[22]),
        .O(\M_AXIS_TDATA[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    \M_AXIS_TDATA[22]_i_2 
       (.I0(\bal_N_reg_n_0_[0] ),
        .I1(\bal_N_reg_n_0_[1] ),
        .I2(\bal_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA[23]),
        .I4(\bal_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA[22]),
        .O(SHIFT_RIGHT[22]));
  LUT6 #(
    .INIT(64'h2000200020222000)) 
    \M_AXIS_TDATA[23]_i_1 
       (.I0(aresetn),
        .I1(state__0[0]),
        .I2(M_AXIS_TREADY),
        .I3(state__0[1]),
        .I4(S_AXIS_TVALID),
        .I5(S_AXIS_TLAST),
        .O(M_AXIS_TDATA0));
  LUT3 #(
    .INIT(8'hB8)) 
    \M_AXIS_TDATA[23]_i_2 
       (.I0(DATA_R[23]),
        .I1(state__0[1]),
        .I2(S_AXIS_TDATA[23]),
        .O(\M_AXIS_TDATA[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \M_AXIS_TDATA[2]_i_1 
       (.I0(DATA_R[2]),
        .I1(state__0[1]),
        .I2(SHIFT_RIGHT[2]),
        .I3(balance[4]),
        .I4(S_AXIS_TDATA[2]),
        .O(\M_AXIS_TDATA[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[2]_i_2 
       (.I0(\M_AXIS_TDATA[5]_i_3_n_0 ),
        .I1(\M_AXIS_TDATA[3]_i_3_n_0 ),
        .I2(\bal_N_reg_n_0_[0] ),
        .I3(\M_AXIS_TDATA[4]_i_3_n_0 ),
        .I4(\bal_N_reg_n_0_[1] ),
        .I5(\M_AXIS_TDATA[2]_i_3_n_0 ),
        .O(SHIFT_RIGHT[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[2]_i_3 
       (.I0(S_AXIS_TDATA[14]),
        .I1(S_AXIS_TDATA[6]),
        .I2(\bal_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA[10]),
        .I4(\bal_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA[2]),
        .O(\M_AXIS_TDATA[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \M_AXIS_TDATA[3]_i_1 
       (.I0(DATA_R[3]),
        .I1(state__0[1]),
        .I2(SHIFT_RIGHT[3]),
        .I3(balance[4]),
        .I4(S_AXIS_TDATA[3]),
        .O(\M_AXIS_TDATA[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[3]_i_2 
       (.I0(\M_AXIS_TDATA[6]_i_3_n_0 ),
        .I1(\M_AXIS_TDATA[4]_i_3_n_0 ),
        .I2(\bal_N_reg_n_0_[0] ),
        .I3(\M_AXIS_TDATA[5]_i_3_n_0 ),
        .I4(\bal_N_reg_n_0_[1] ),
        .I5(\M_AXIS_TDATA[3]_i_3_n_0 ),
        .O(SHIFT_RIGHT[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[3]_i_3 
       (.I0(S_AXIS_TDATA[15]),
        .I1(S_AXIS_TDATA[7]),
        .I2(\bal_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA[11]),
        .I4(\bal_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA[3]),
        .O(\M_AXIS_TDATA[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \M_AXIS_TDATA[4]_i_1 
       (.I0(DATA_R[4]),
        .I1(state__0[1]),
        .I2(SHIFT_RIGHT[4]),
        .I3(balance[4]),
        .I4(S_AXIS_TDATA[4]),
        .O(\M_AXIS_TDATA[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[4]_i_2 
       (.I0(\M_AXIS_TDATA[7]_i_3_n_0 ),
        .I1(\M_AXIS_TDATA[5]_i_3_n_0 ),
        .I2(\bal_N_reg_n_0_[0] ),
        .I3(\M_AXIS_TDATA[6]_i_3_n_0 ),
        .I4(\bal_N_reg_n_0_[1] ),
        .I5(\M_AXIS_TDATA[4]_i_3_n_0 ),
        .O(SHIFT_RIGHT[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[4]_i_3 
       (.I0(S_AXIS_TDATA[16]),
        .I1(S_AXIS_TDATA[8]),
        .I2(\bal_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA[12]),
        .I4(\bal_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA[4]),
        .O(\M_AXIS_TDATA[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \M_AXIS_TDATA[5]_i_1 
       (.I0(DATA_R[5]),
        .I1(state__0[1]),
        .I2(SHIFT_RIGHT[5]),
        .I3(balance[4]),
        .I4(S_AXIS_TDATA[5]),
        .O(\M_AXIS_TDATA[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[5]_i_2 
       (.I0(\M_AXIS_TDATA[8]_i_3_n_0 ),
        .I1(\M_AXIS_TDATA[6]_i_3_n_0 ),
        .I2(\bal_N_reg_n_0_[0] ),
        .I3(\M_AXIS_TDATA[7]_i_3_n_0 ),
        .I4(\bal_N_reg_n_0_[1] ),
        .I5(\M_AXIS_TDATA[5]_i_3_n_0 ),
        .O(SHIFT_RIGHT[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[5]_i_3 
       (.I0(S_AXIS_TDATA[17]),
        .I1(S_AXIS_TDATA[9]),
        .I2(\bal_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA[13]),
        .I4(\bal_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA[5]),
        .O(\M_AXIS_TDATA[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \M_AXIS_TDATA[6]_i_1 
       (.I0(DATA_R[6]),
        .I1(state__0[1]),
        .I2(SHIFT_RIGHT[6]),
        .I3(balance[4]),
        .I4(S_AXIS_TDATA[6]),
        .O(\M_AXIS_TDATA[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[6]_i_2 
       (.I0(\M_AXIS_TDATA[9]_i_3_n_0 ),
        .I1(\M_AXIS_TDATA[7]_i_3_n_0 ),
        .I2(\bal_N_reg_n_0_[0] ),
        .I3(\M_AXIS_TDATA[8]_i_3_n_0 ),
        .I4(\bal_N_reg_n_0_[1] ),
        .I5(\M_AXIS_TDATA[6]_i_3_n_0 ),
        .O(SHIFT_RIGHT[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[6]_i_3 
       (.I0(S_AXIS_TDATA[18]),
        .I1(S_AXIS_TDATA[10]),
        .I2(\bal_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA[14]),
        .I4(\bal_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA[6]),
        .O(\M_AXIS_TDATA[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \M_AXIS_TDATA[7]_i_1 
       (.I0(DATA_R[7]),
        .I1(state__0[1]),
        .I2(SHIFT_RIGHT[7]),
        .I3(balance[4]),
        .I4(S_AXIS_TDATA[7]),
        .O(\M_AXIS_TDATA[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[7]_i_2 
       (.I0(\M_AXIS_TDATA[10]_i_3_n_0 ),
        .I1(\M_AXIS_TDATA[8]_i_3_n_0 ),
        .I2(\bal_N_reg_n_0_[0] ),
        .I3(\M_AXIS_TDATA[9]_i_3_n_0 ),
        .I4(\bal_N_reg_n_0_[1] ),
        .I5(\M_AXIS_TDATA[7]_i_3_n_0 ),
        .O(SHIFT_RIGHT[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[7]_i_3 
       (.I0(S_AXIS_TDATA[19]),
        .I1(S_AXIS_TDATA[11]),
        .I2(\bal_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA[15]),
        .I4(\bal_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA[7]),
        .O(\M_AXIS_TDATA[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \M_AXIS_TDATA[8]_i_1 
       (.I0(DATA_R[8]),
        .I1(state__0[1]),
        .I2(SHIFT_RIGHT[8]),
        .I3(balance[4]),
        .I4(S_AXIS_TDATA[8]),
        .O(\M_AXIS_TDATA[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[8]_i_2 
       (.I0(\M_AXIS_TDATA[11]_i_3_n_0 ),
        .I1(\M_AXIS_TDATA[9]_i_3_n_0 ),
        .I2(\bal_N_reg_n_0_[0] ),
        .I3(\M_AXIS_TDATA[10]_i_3_n_0 ),
        .I4(\bal_N_reg_n_0_[1] ),
        .I5(\M_AXIS_TDATA[8]_i_3_n_0 ),
        .O(SHIFT_RIGHT[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[8]_i_3 
       (.I0(S_AXIS_TDATA[20]),
        .I1(S_AXIS_TDATA[12]),
        .I2(\bal_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA[16]),
        .I4(\bal_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA[8]),
        .O(\M_AXIS_TDATA[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \M_AXIS_TDATA[9]_i_1 
       (.I0(DATA_R[9]),
        .I1(state__0[1]),
        .I2(SHIFT_RIGHT[9]),
        .I3(balance[4]),
        .I4(S_AXIS_TDATA[9]),
        .O(\M_AXIS_TDATA[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[9]_i_2 
       (.I0(\M_AXIS_TDATA[12]_i_3_n_0 ),
        .I1(\M_AXIS_TDATA[10]_i_3_n_0 ),
        .I2(\bal_N_reg_n_0_[0] ),
        .I3(\M_AXIS_TDATA[11]_i_3_n_0 ),
        .I4(\bal_N_reg_n_0_[1] ),
        .I5(\M_AXIS_TDATA[9]_i_3_n_0 ),
        .O(SHIFT_RIGHT[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \M_AXIS_TDATA[9]_i_3 
       (.I0(S_AXIS_TDATA[21]),
        .I1(S_AXIS_TDATA[13]),
        .I2(\bal_N_reg_n_0_[2] ),
        .I3(S_AXIS_TDATA[17]),
        .I4(\bal_N_reg_n_0_[3] ),
        .I5(S_AXIS_TDATA[9]),
        .O(\M_AXIS_TDATA[9]_i_3_n_0 ));
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
    .INIT(64'hF5FFFFFF00800080)) 
    M_AXIS_TLAST_i_1
       (.I0(aresetn),
        .I1(M_AXIS_TREADY),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .I4(bal_N1__0),
        .I5(M_AXIS_TLAST),
        .O(M_AXIS_TLAST_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    M_AXIS_TLAST_i_2
       (.I0(S_AXIS_TLAST),
        .I1(S_AXIS_TVALID),
        .O(bal_N1__0));
  FDRE M_AXIS_TLAST_reg
       (.C(aclk),
        .CE(1'b1),
        .D(M_AXIS_TLAST_i_1_n_0),
        .Q(M_AXIS_TLAST),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7F7FFFFF0A000000)) 
    M_AXIS_TVALID_i_1
       (.I0(aresetn),
        .I1(M_AXIS_TREADY),
        .I2(state__0[1]),
        .I3(bal_N1__0),
        .I4(state__0[0]),
        .I5(M_AXIS_TVALID),
        .O(M_AXIS_TVALID_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    M_AXIS_TVALID_reg
       (.C(aclk),
        .CE(1'b1),
        .D(M_AXIS_TVALID_i_1_n_0),
        .Q(M_AXIS_TVALID),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF444FFFFF4440000)) 
    S_AXIS_TREADY_i_1
       (.I0(state__0[0]),
        .I1(bal_N11_out),
        .I2(M_AXIS_TREADY),
        .I3(state__0[1]),
        .I4(S_AXIS_TREADY0),
        .I5(S_AXIS_TREADY),
        .O(S_AXIS_TREADY_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    S_AXIS_TREADY_i_2
       (.I0(S_AXIS_TVALID),
        .I1(S_AXIS_TLAST),
        .O(bal_N11_out));
  LUT6 #(
    .INIT(64'hA888002020000020)) 
    S_AXIS_TREADY_i_3
       (.I0(aresetn),
        .I1(state__0[1]),
        .I2(S_AXIS_TVALID),
        .I3(S_AXIS_TLAST),
        .I4(state__0[0]),
        .I5(M_AXIS_TREADY),
        .O(S_AXIS_TREADY0));
  FDRE #(
    .INIT(1'b0)) 
    S_AXIS_TREADY_reg
       (.C(aclk),
        .CE(1'b1),
        .D(S_AXIS_TREADY_i_1_n_0),
        .Q(S_AXIS_TREADY),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bal_N[0]_i_1 
       (.I0(balance[1]),
        .I1(balance[0]),
        .O(bal_N[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h1E78)) 
    \bal_N[1]_i_1 
       (.I0(balance[1]),
        .I1(balance[0]),
        .I2(balance[2]),
        .I3(state__0[0]),
        .O(bal_N[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h01FE7F80)) 
    \bal_N[2]_i_1 
       (.I0(balance[0]),
        .I1(balance[1]),
        .I2(balance[2]),
        .I3(balance[3]),
        .I4(state__0[0]),
        .O(bal_N[2]));
  LUT6 #(
    .INIT(64'h0002000020000000)) 
    \bal_N[3]_i_1 
       (.I0(aresetn),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(S_AXIS_TLAST),
        .I4(S_AXIS_TVALID),
        .I5(balance[4]),
        .O(bal_N0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00018000)) 
    \bal_N[3]_i_2 
       (.I0(balance[3]),
        .I1(balance[0]),
        .I2(balance[1]),
        .I3(balance[2]),
        .I4(state__0[0]),
        .O(bal_N[3]));
  FDRE #(
    .INIT(1'b0)) 
    \bal_N_reg[0] 
       (.C(aclk),
        .CE(bal_N0),
        .D(bal_N[0]),
        .Q(\bal_N_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bal_N_reg[1] 
       (.C(aclk),
        .CE(bal_N0),
        .D(bal_N[1]),
        .Q(\bal_N_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bal_N_reg[2] 
       (.C(aclk),
        .CE(bal_N0),
        .D(bal_N[2]),
        .Q(\bal_N_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bal_N_reg[3] 
       (.C(aclk),
        .CE(bal_N0),
        .D(bal_N[3]),
        .Q(\bal_N_reg_n_0_[3] ),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "BlockDesign_BalanceController_0_0,BalanceController,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "BalanceController,Vivado 2020.2" *) 
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
    balance);
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
  input [9:0]balance;

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
  wire [9:0]balance;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BalanceController U0
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
        .balance(balance[9:5]));
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

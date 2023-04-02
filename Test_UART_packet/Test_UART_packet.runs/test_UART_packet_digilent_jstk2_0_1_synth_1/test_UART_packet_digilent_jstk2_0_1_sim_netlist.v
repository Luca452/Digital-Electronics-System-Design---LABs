// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Apr  2 16:51:47 2023
// Host        : DESKTOP-JKUPK39 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ test_UART_packet_digilent_jstk2_0_1_sim_netlist.v
// Design      : test_UART_packet_digilent_jstk2_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_digilent_jstk2
   (m_axis_tdata,
    jstk_x,
    jstk_y,
    btn_jstk,
    btn_trigger,
    m_axis_tvalid,
    s_axis_tvalid,
    aclk,
    m_axis_tready,
    aresetn,
    s_axis_tdata);
  output [1:0]m_axis_tdata;
  output [9:0]jstk_x;
  output [9:0]jstk_y;
  output btn_jstk;
  output btn_trigger;
  output m_axis_tvalid;
  input s_axis_tvalid;
  input aclk;
  input m_axis_tready;
  input aresetn;
  input [7:0]s_axis_tdata;

  wire \FSM_sequential_state_sts[0]_i_1_n_0 ;
  wire \FSM_sequential_state_sts[1]_i_1_n_0 ;
  wire \FSM_sequential_state_sts[2]_i_1_n_0 ;
  wire \FSM_sequential_state_sts[2]_i_2_n_0 ;
  wire aclk;
  wire aresetn;
  wire btn_jstk;
  wire btn_jstk_reg0;
  wire btn_jstk_reg__0;
  wire btn_jstk_reg_i_1_n_0;
  wire btn_trigger;
  wire btn_trigger_reg__0;
  wire btn_trigger_reg_i_1_n_0;
  wire [14:1]data0;
  wire data_ready;
  wire data_ready_i_1_n_0;
  wire [9:0]jstk_x;
  wire jstk_x0;
  wire \jstk_x_reg[7]_i_1_n_0 ;
  wire \jstk_x_reg[8]_i_1_n_0 ;
  wire \jstk_x_reg[9]_i_1_n_0 ;
  wire \jstk_x_reg[9]_i_2_n_0 ;
  wire \jstk_x_reg_reg_n_0_[0] ;
  wire \jstk_x_reg_reg_n_0_[1] ;
  wire \jstk_x_reg_reg_n_0_[2] ;
  wire \jstk_x_reg_reg_n_0_[3] ;
  wire \jstk_x_reg_reg_n_0_[4] ;
  wire \jstk_x_reg_reg_n_0_[5] ;
  wire \jstk_x_reg_reg_n_0_[6] ;
  wire \jstk_x_reg_reg_n_0_[7] ;
  wire \jstk_x_reg_reg_n_0_[8] ;
  wire \jstk_x_reg_reg_n_0_[9] ;
  wire [9:0]jstk_y;
  wire \jstk_y_reg[7]_i_1_n_0 ;
  wire \jstk_y_reg[8]_i_1_n_0 ;
  wire \jstk_y_reg[9]_i_1_n_0 ;
  wire \jstk_y_reg_reg_n_0_[0] ;
  wire \jstk_y_reg_reg_n_0_[1] ;
  wire \jstk_y_reg_reg_n_0_[2] ;
  wire \jstk_y_reg_reg_n_0_[3] ;
  wire \jstk_y_reg_reg_n_0_[4] ;
  wire \jstk_y_reg_reg_n_0_[5] ;
  wire \jstk_y_reg_reg_n_0_[6] ;
  wire \jstk_y_reg_reg_n_0_[7] ;
  wire \jstk_y_reg_reg_n_0_[8] ;
  wire \jstk_y_reg_reg_n_0_[9] ;
  wire [1:0]m_axis_tdata;
  wire \m_axis_tdata[6]_i_1_n_0 ;
  wire \m_axis_tdata[7]_i_1_n_0 ;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire \next_state_cmd[0]_i_1_n_0 ;
  wire \next_state_cmd[1]_i_1_n_0 ;
  wire \next_state_cmd[2]_i_1_n_0 ;
  wire \next_state_cmd[2]_i_2_n_0 ;
  wire \next_state_cmd[2]_i_3_n_0 ;
  wire \next_state_cmd_reg_n_0_[0] ;
  wire \next_state_cmd_reg_n_0_[1] ;
  wire \next_state_cmd_reg_n_0_[2] ;
  wire [14:0]p_2_in;
  wire [7:0]s_axis_tdata;
  wire s_axis_tvalid;
  wire \state_cmd[0]_i_1_n_0 ;
  wire \state_cmd[0]_i_2_n_0 ;
  wire \state_cmd[0]_i_3_n_0 ;
  wire \state_cmd[0]_i_4_n_0 ;
  wire \state_cmd[0]_i_5_n_0 ;
  wire \state_cmd[0]_i_6_n_0 ;
  wire \state_cmd[1]_i_1_n_0 ;
  wire \state_cmd[2]_i_1_n_0 ;
  wire \state_cmd[2]_i_2_n_0 ;
  wire \state_cmd_reg_n_0_[0] ;
  wire \state_cmd_reg_n_0_[1] ;
  wire \state_cmd_reg_n_0_[2] ;
  wire [2:0]state_sts;
  wire [14:0]tx_delay_counter;
  wire \tx_delay_counter0_inferred__0/i__carry__0_n_0 ;
  wire \tx_delay_counter0_inferred__0/i__carry__0_n_1 ;
  wire \tx_delay_counter0_inferred__0/i__carry__0_n_2 ;
  wire \tx_delay_counter0_inferred__0/i__carry__0_n_3 ;
  wire \tx_delay_counter0_inferred__0/i__carry__1_n_0 ;
  wire \tx_delay_counter0_inferred__0/i__carry__1_n_1 ;
  wire \tx_delay_counter0_inferred__0/i__carry__1_n_2 ;
  wire \tx_delay_counter0_inferred__0/i__carry__1_n_3 ;
  wire \tx_delay_counter0_inferred__0/i__carry__2_n_3 ;
  wire \tx_delay_counter0_inferred__0/i__carry_n_0 ;
  wire \tx_delay_counter0_inferred__0/i__carry_n_1 ;
  wire \tx_delay_counter0_inferred__0/i__carry_n_2 ;
  wire \tx_delay_counter0_inferred__0/i__carry_n_3 ;
  wire \tx_delay_counter[0]_i_2_n_0 ;
  wire \tx_delay_counter[14]_i_1_n_0 ;
  wire \tx_delay_counter[14]_i_3_n_0 ;
  wire \tx_delay_counter[14]_i_4_n_0 ;
  wire \tx_delay_counter[14]_i_5_n_0 ;
  wire \tx_delay_counter[14]_i_6_n_0 ;
  wire [3:1]\NLW_tx_delay_counter0_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [3:2]\NLW_tx_delay_counter0_inferred__0/i__carry__2_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h34)) 
    \FSM_sequential_state_sts[0]_i_1 
       (.I0(state_sts[2]),
        .I1(s_axis_tvalid),
        .I2(state_sts[0]),
        .O(\FSM_sequential_state_sts[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1F20)) 
    \FSM_sequential_state_sts[1]_i_1 
       (.I0(state_sts[0]),
        .I1(state_sts[2]),
        .I2(s_axis_tvalid),
        .I3(state_sts[1]),
        .O(\FSM_sequential_state_sts[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0F80)) 
    \FSM_sequential_state_sts[2]_i_1 
       (.I0(state_sts[0]),
        .I1(state_sts[1]),
        .I2(s_axis_tvalid),
        .I3(state_sts[2]),
        .O(\FSM_sequential_state_sts[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state_sts[2]_i_2 
       (.I0(aresetn),
        .O(\FSM_sequential_state_sts[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "get_x_lsb:000,get_x_msb:001,get_y_lsb:010,get_y_msb:011,get_buttons:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_sts_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_sts[2]_i_2_n_0 ),
        .D(\FSM_sequential_state_sts[0]_i_1_n_0 ),
        .Q(state_sts[0]));
  (* FSM_ENCODED_STATES = "get_x_lsb:000,get_x_msb:001,get_y_lsb:010,get_y_msb:011,get_buttons:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_sts_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_sts[2]_i_2_n_0 ),
        .D(\FSM_sequential_state_sts[1]_i_1_n_0 ),
        .Q(state_sts[1]));
  (* FSM_ENCODED_STATES = "get_x_lsb:000,get_x_msb:001,get_y_lsb:010,get_y_msb:011,get_buttons:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_sts_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_sts[2]_i_2_n_0 ),
        .D(\FSM_sequential_state_sts[2]_i_1_n_0 ),
        .Q(state_sts[2]));
  FDRE btn_jstk_reg
       (.C(aclk),
        .CE(jstk_x0),
        .D(btn_jstk_reg__0),
        .Q(btn_jstk),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    btn_jstk_reg_i_1
       (.I0(s_axis_tdata[0]),
        .I1(btn_jstk_reg0),
        .I2(btn_jstk_reg__0),
        .O(btn_jstk_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    btn_jstk_reg_i_2
       (.I0(state_sts[0]),
        .I1(state_sts[2]),
        .I2(state_sts[1]),
        .I3(s_axis_tvalid),
        .I4(aresetn),
        .O(btn_jstk_reg0));
  FDRE btn_jstk_reg_reg
       (.C(aclk),
        .CE(1'b1),
        .D(btn_jstk_reg_i_1_n_0),
        .Q(btn_jstk_reg__0),
        .R(1'b0));
  FDRE btn_trigger_reg
       (.C(aclk),
        .CE(jstk_x0),
        .D(btn_trigger_reg__0),
        .Q(btn_trigger),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    btn_trigger_reg_i_1
       (.I0(s_axis_tdata[1]),
        .I1(btn_jstk_reg0),
        .I2(btn_trigger_reg__0),
        .O(btn_trigger_reg_i_1_n_0));
  FDRE btn_trigger_reg_reg
       (.C(aclk),
        .CE(1'b1),
        .D(btn_trigger_reg_i_1_n_0),
        .Q(btn_trigger_reg__0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000FFFF00200000)) 
    data_ready_i_1
       (.I0(s_axis_tvalid),
        .I1(state_sts[1]),
        .I2(state_sts[2]),
        .I3(state_sts[0]),
        .I4(aresetn),
        .I5(data_ready),
        .O(data_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    data_ready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(data_ready_i_1_n_0),
        .Q(data_ready),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \jstk_x[9]_i_1 
       (.I0(aresetn),
        .I1(data_ready),
        .O(jstk_x0));
  FDRE \jstk_x_reg[0] 
       (.C(aclk),
        .CE(jstk_x0),
        .D(\jstk_x_reg_reg_n_0_[0] ),
        .Q(jstk_x[0]),
        .R(1'b0));
  FDRE \jstk_x_reg[1] 
       (.C(aclk),
        .CE(jstk_x0),
        .D(\jstk_x_reg_reg_n_0_[1] ),
        .Q(jstk_x[1]),
        .R(1'b0));
  FDRE \jstk_x_reg[2] 
       (.C(aclk),
        .CE(jstk_x0),
        .D(\jstk_x_reg_reg_n_0_[2] ),
        .Q(jstk_x[2]),
        .R(1'b0));
  FDRE \jstk_x_reg[3] 
       (.C(aclk),
        .CE(jstk_x0),
        .D(\jstk_x_reg_reg_n_0_[3] ),
        .Q(jstk_x[3]),
        .R(1'b0));
  FDRE \jstk_x_reg[4] 
       (.C(aclk),
        .CE(jstk_x0),
        .D(\jstk_x_reg_reg_n_0_[4] ),
        .Q(jstk_x[4]),
        .R(1'b0));
  FDRE \jstk_x_reg[5] 
       (.C(aclk),
        .CE(jstk_x0),
        .D(\jstk_x_reg_reg_n_0_[5] ),
        .Q(jstk_x[5]),
        .R(1'b0));
  FDRE \jstk_x_reg[6] 
       (.C(aclk),
        .CE(jstk_x0),
        .D(\jstk_x_reg_reg_n_0_[6] ),
        .Q(jstk_x[6]),
        .R(1'b0));
  FDRE \jstk_x_reg[7] 
       (.C(aclk),
        .CE(jstk_x0),
        .D(\jstk_x_reg_reg_n_0_[7] ),
        .Q(jstk_x[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000040)) 
    \jstk_x_reg[7]_i_1 
       (.I0(state_sts[1]),
        .I1(s_axis_tvalid),
        .I2(aresetn),
        .I3(state_sts[2]),
        .I4(state_sts[0]),
        .O(\jstk_x_reg[7]_i_1_n_0 ));
  FDRE \jstk_x_reg[8] 
       (.C(aclk),
        .CE(jstk_x0),
        .D(\jstk_x_reg_reg_n_0_[8] ),
        .Q(jstk_x[8]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \jstk_x_reg[8]_i_1 
       (.I0(s_axis_tdata[0]),
        .I1(state_sts[1]),
        .I2(s_axis_tvalid),
        .I3(aresetn),
        .I4(\jstk_x_reg[9]_i_2_n_0 ),
        .I5(\jstk_x_reg_reg_n_0_[8] ),
        .O(\jstk_x_reg[8]_i_1_n_0 ));
  FDRE \jstk_x_reg[9] 
       (.C(aclk),
        .CE(jstk_x0),
        .D(\jstk_x_reg_reg_n_0_[9] ),
        .Q(jstk_x[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \jstk_x_reg[9]_i_1 
       (.I0(s_axis_tdata[1]),
        .I1(state_sts[1]),
        .I2(s_axis_tvalid),
        .I3(aresetn),
        .I4(\jstk_x_reg[9]_i_2_n_0 ),
        .I5(\jstk_x_reg_reg_n_0_[9] ),
        .O(\jstk_x_reg[9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \jstk_x_reg[9]_i_2 
       (.I0(state_sts[0]),
        .I1(state_sts[2]),
        .O(\jstk_x_reg[9]_i_2_n_0 ));
  FDRE \jstk_x_reg_reg[0] 
       (.C(aclk),
        .CE(\jstk_x_reg[7]_i_1_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(\jstk_x_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \jstk_x_reg_reg[1] 
       (.C(aclk),
        .CE(\jstk_x_reg[7]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(\jstk_x_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \jstk_x_reg_reg[2] 
       (.C(aclk),
        .CE(\jstk_x_reg[7]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(\jstk_x_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \jstk_x_reg_reg[3] 
       (.C(aclk),
        .CE(\jstk_x_reg[7]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(\jstk_x_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \jstk_x_reg_reg[4] 
       (.C(aclk),
        .CE(\jstk_x_reg[7]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(\jstk_x_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \jstk_x_reg_reg[5] 
       (.C(aclk),
        .CE(\jstk_x_reg[7]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(\jstk_x_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \jstk_x_reg_reg[6] 
       (.C(aclk),
        .CE(\jstk_x_reg[7]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(\jstk_x_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \jstk_x_reg_reg[7] 
       (.C(aclk),
        .CE(\jstk_x_reg[7]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(\jstk_x_reg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \jstk_x_reg_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\jstk_x_reg[8]_i_1_n_0 ),
        .Q(\jstk_x_reg_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \jstk_x_reg_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\jstk_x_reg[9]_i_1_n_0 ),
        .Q(\jstk_x_reg_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \jstk_y_reg[0] 
       (.C(aclk),
        .CE(jstk_x0),
        .D(\jstk_y_reg_reg_n_0_[0] ),
        .Q(jstk_y[0]),
        .R(1'b0));
  FDRE \jstk_y_reg[1] 
       (.C(aclk),
        .CE(jstk_x0),
        .D(\jstk_y_reg_reg_n_0_[1] ),
        .Q(jstk_y[1]),
        .R(1'b0));
  FDRE \jstk_y_reg[2] 
       (.C(aclk),
        .CE(jstk_x0),
        .D(\jstk_y_reg_reg_n_0_[2] ),
        .Q(jstk_y[2]),
        .R(1'b0));
  FDRE \jstk_y_reg[3] 
       (.C(aclk),
        .CE(jstk_x0),
        .D(\jstk_y_reg_reg_n_0_[3] ),
        .Q(jstk_y[3]),
        .R(1'b0));
  FDRE \jstk_y_reg[4] 
       (.C(aclk),
        .CE(jstk_x0),
        .D(\jstk_y_reg_reg_n_0_[4] ),
        .Q(jstk_y[4]),
        .R(1'b0));
  FDRE \jstk_y_reg[5] 
       (.C(aclk),
        .CE(jstk_x0),
        .D(\jstk_y_reg_reg_n_0_[5] ),
        .Q(jstk_y[5]),
        .R(1'b0));
  FDRE \jstk_y_reg[6] 
       (.C(aclk),
        .CE(jstk_x0),
        .D(\jstk_y_reg_reg_n_0_[6] ),
        .Q(jstk_y[6]),
        .R(1'b0));
  FDRE \jstk_y_reg[7] 
       (.C(aclk),
        .CE(jstk_x0),
        .D(\jstk_y_reg_reg_n_0_[7] ),
        .Q(jstk_y[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000080)) 
    \jstk_y_reg[7]_i_1 
       (.I0(state_sts[1]),
        .I1(s_axis_tvalid),
        .I2(aresetn),
        .I3(state_sts[2]),
        .I4(state_sts[0]),
        .O(\jstk_y_reg[7]_i_1_n_0 ));
  FDRE \jstk_y_reg[8] 
       (.C(aclk),
        .CE(jstk_x0),
        .D(\jstk_y_reg_reg_n_0_[8] ),
        .Q(jstk_y[8]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \jstk_y_reg[8]_i_1 
       (.I0(s_axis_tdata[0]),
        .I1(state_sts[1]),
        .I2(s_axis_tvalid),
        .I3(aresetn),
        .I4(\jstk_x_reg[9]_i_2_n_0 ),
        .I5(\jstk_y_reg_reg_n_0_[8] ),
        .O(\jstk_y_reg[8]_i_1_n_0 ));
  FDRE \jstk_y_reg[9] 
       (.C(aclk),
        .CE(jstk_x0),
        .D(\jstk_y_reg_reg_n_0_[9] ),
        .Q(jstk_y[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \jstk_y_reg[9]_i_1 
       (.I0(s_axis_tdata[1]),
        .I1(state_sts[1]),
        .I2(s_axis_tvalid),
        .I3(aresetn),
        .I4(\jstk_x_reg[9]_i_2_n_0 ),
        .I5(\jstk_y_reg_reg_n_0_[9] ),
        .O(\jstk_y_reg[9]_i_1_n_0 ));
  FDRE \jstk_y_reg_reg[0] 
       (.C(aclk),
        .CE(\jstk_y_reg[7]_i_1_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(\jstk_y_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \jstk_y_reg_reg[1] 
       (.C(aclk),
        .CE(\jstk_y_reg[7]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(\jstk_y_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \jstk_y_reg_reg[2] 
       (.C(aclk),
        .CE(\jstk_y_reg[7]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(\jstk_y_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \jstk_y_reg_reg[3] 
       (.C(aclk),
        .CE(\jstk_y_reg[7]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(\jstk_y_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \jstk_y_reg_reg[4] 
       (.C(aclk),
        .CE(\jstk_y_reg[7]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(\jstk_y_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \jstk_y_reg_reg[5] 
       (.C(aclk),
        .CE(\jstk_y_reg[7]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(\jstk_y_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \jstk_y_reg_reg[6] 
       (.C(aclk),
        .CE(\jstk_y_reg[7]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(\jstk_y_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \jstk_y_reg_reg[7] 
       (.C(aclk),
        .CE(\jstk_y_reg[7]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(\jstk_y_reg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \jstk_y_reg_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\jstk_y_reg[8]_i_1_n_0 ),
        .Q(\jstk_y_reg_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \jstk_y_reg_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\jstk_y_reg[9]_i_1_n_0 ),
        .Q(\jstk_y_reg_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAFFFAC00)) 
    \m_axis_tdata[6]_i_1 
       (.I0(\state_cmd_reg_n_0_[0] ),
        .I1(\state_cmd_reg_n_0_[2] ),
        .I2(\state_cmd_reg_n_0_[1] ),
        .I3(aresetn),
        .I4(m_axis_tdata[0]),
        .O(\m_axis_tdata[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F60)) 
    \m_axis_tdata[7]_i_1 
       (.I0(\state_cmd_reg_n_0_[2] ),
        .I1(\state_cmd_reg_n_0_[1] ),
        .I2(aresetn),
        .I3(m_axis_tdata[1]),
        .O(\m_axis_tdata[7]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_axis_tdata[6]_i_1_n_0 ),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_axis_tdata[7]_i_1_n_0 ),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    m_axis_tvalid_INST_0
       (.I0(\state_cmd_reg_n_0_[2] ),
        .I1(\state_cmd_reg_n_0_[1] ),
        .I2(\state_cmd_reg_n_0_[0] ),
        .O(m_axis_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h14FF1400)) 
    \next_state_cmd[0]_i_1 
       (.I0(\state_cmd_reg_n_0_[0] ),
        .I1(\state_cmd_reg_n_0_[1] ),
        .I2(\state_cmd_reg_n_0_[2] ),
        .I3(\next_state_cmd[2]_i_2_n_0 ),
        .I4(\next_state_cmd_reg_n_0_[0] ),
        .O(\next_state_cmd[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9F90)) 
    \next_state_cmd[1]_i_1 
       (.I0(\state_cmd_reg_n_0_[0] ),
        .I1(\state_cmd_reg_n_0_[2] ),
        .I2(\next_state_cmd[2]_i_2_n_0 ),
        .I3(\next_state_cmd_reg_n_0_[1] ),
        .O(\next_state_cmd[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF4FFF400)) 
    \next_state_cmd[2]_i_1 
       (.I0(\state_cmd_reg_n_0_[1] ),
        .I1(\state_cmd_reg_n_0_[2] ),
        .I2(\state_cmd_reg_n_0_[0] ),
        .I3(\next_state_cmd[2]_i_2_n_0 ),
        .I4(\next_state_cmd_reg_n_0_[2] ),
        .O(\next_state_cmd[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAABAAAA)) 
    \next_state_cmd[2]_i_2 
       (.I0(\next_state_cmd[2]_i_3_n_0 ),
        .I1(\tx_delay_counter[14]_i_6_n_0 ),
        .I2(\tx_delay_counter[14]_i_5_n_0 ),
        .I3(tx_delay_counter[0]),
        .I4(\state_cmd[0]_i_2_n_0 ),
        .I5(m_axis_tvalid),
        .O(\next_state_cmd[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \next_state_cmd[2]_i_3 
       (.I0(m_axis_tready),
        .I1(\state_cmd_reg_n_0_[2] ),
        .I2(\state_cmd_reg_n_0_[1] ),
        .O(\next_state_cmd[2]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \next_state_cmd_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_sts[2]_i_2_n_0 ),
        .D(\next_state_cmd[0]_i_1_n_0 ),
        .Q(\next_state_cmd_reg_n_0_[0] ));
  FDPE #(
    .INIT(1'b1)) 
    \next_state_cmd_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\next_state_cmd[1]_i_1_n_0 ),
        .PRE(\FSM_sequential_state_sts[2]_i_2_n_0 ),
        .Q(\next_state_cmd_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \next_state_cmd_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_sts[2]_i_2_n_0 ),
        .D(\next_state_cmd[2]_i_1_n_0 ),
        .Q(\next_state_cmd_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'hFFFEFFFFCCEE0000)) 
    \state_cmd[0]_i_1 
       (.I0(\state_cmd[0]_i_2_n_0 ),
        .I1(\state_cmd[0]_i_3_n_0 ),
        .I2(\state_cmd[0]_i_4_n_0 ),
        .I3(\state_cmd[0]_i_5_n_0 ),
        .I4(\state_cmd[0]_i_6_n_0 ),
        .I5(\state_cmd_reg_n_0_[0] ),
        .O(\state_cmd[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \state_cmd[0]_i_2 
       (.I0(tx_delay_counter[10]),
        .I1(tx_delay_counter[11]),
        .I2(tx_delay_counter[5]),
        .I3(tx_delay_counter[9]),
        .I4(tx_delay_counter[14]),
        .I5(tx_delay_counter[12]),
        .O(\state_cmd[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    \state_cmd[0]_i_3 
       (.I0(\state_cmd_reg_n_0_[0] ),
        .I1(\next_state_cmd_reg_n_0_[0] ),
        .I2(\state_cmd_reg_n_0_[2] ),
        .I3(\state_cmd_reg_n_0_[1] ),
        .O(\state_cmd[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \state_cmd[0]_i_4 
       (.I0(tx_delay_counter[12]),
        .I1(tx_delay_counter[14]),
        .I2(tx_delay_counter[10]),
        .I3(tx_delay_counter[11]),
        .I4(tx_delay_counter[9]),
        .I5(tx_delay_counter[5]),
        .O(\state_cmd[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \state_cmd[0]_i_5 
       (.I0(\tx_delay_counter[14]_i_6_n_0 ),
        .I1(tx_delay_counter[2]),
        .I2(tx_delay_counter[1]),
        .I3(tx_delay_counter[4]),
        .I4(tx_delay_counter[3]),
        .I5(tx_delay_counter[0]),
        .O(\state_cmd[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hAB)) 
    \state_cmd[0]_i_6 
       (.I0(m_axis_tready),
        .I1(\state_cmd_reg_n_0_[2] ),
        .I2(\state_cmd_reg_n_0_[1] ),
        .O(\state_cmd[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00FF00000808)) 
    \state_cmd[1]_i_1 
       (.I0(\next_state_cmd_reg_n_0_[1] ),
        .I1(\state_cmd_reg_n_0_[0] ),
        .I2(\state_cmd[2]_i_2_n_0 ),
        .I3(m_axis_tready),
        .I4(\state_cmd_reg_n_0_[2] ),
        .I5(\state_cmd_reg_n_0_[1] ),
        .O(\state_cmd[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FF000000FF0808)) 
    \state_cmd[2]_i_1 
       (.I0(\next_state_cmd_reg_n_0_[2] ),
        .I1(\state_cmd_reg_n_0_[0] ),
        .I2(\state_cmd[2]_i_2_n_0 ),
        .I3(m_axis_tready),
        .I4(\state_cmd_reg_n_0_[2] ),
        .I5(\state_cmd_reg_n_0_[1] ),
        .O(\state_cmd[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state_cmd[2]_i_2 
       (.I0(\state_cmd[0]_i_4_n_0 ),
        .I1(tx_delay_counter[0]),
        .I2(\tx_delay_counter[14]_i_5_n_0 ),
        .I3(\tx_delay_counter[14]_i_6_n_0 ),
        .O(\state_cmd[2]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_cmd_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_sts[2]_i_2_n_0 ),
        .D(\state_cmd[0]_i_1_n_0 ),
        .Q(\state_cmd_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_cmd_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_sts[2]_i_2_n_0 ),
        .D(\state_cmd[1]_i_1_n_0 ),
        .Q(\state_cmd_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_cmd_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_sts[2]_i_2_n_0 ),
        .D(\state_cmd[2]_i_1_n_0 ),
        .Q(\state_cmd_reg_n_0_[2] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tx_delay_counter0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\tx_delay_counter0_inferred__0/i__carry_n_0 ,\tx_delay_counter0_inferred__0/i__carry_n_1 ,\tx_delay_counter0_inferred__0/i__carry_n_2 ,\tx_delay_counter0_inferred__0/i__carry_n_3 }),
        .CYINIT(tx_delay_counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(tx_delay_counter[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tx_delay_counter0_inferred__0/i__carry__0 
       (.CI(\tx_delay_counter0_inferred__0/i__carry_n_0 ),
        .CO({\tx_delay_counter0_inferred__0/i__carry__0_n_0 ,\tx_delay_counter0_inferred__0/i__carry__0_n_1 ,\tx_delay_counter0_inferred__0/i__carry__0_n_2 ,\tx_delay_counter0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(tx_delay_counter[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tx_delay_counter0_inferred__0/i__carry__1 
       (.CI(\tx_delay_counter0_inferred__0/i__carry__0_n_0 ),
        .CO({\tx_delay_counter0_inferred__0/i__carry__1_n_0 ,\tx_delay_counter0_inferred__0/i__carry__1_n_1 ,\tx_delay_counter0_inferred__0/i__carry__1_n_2 ,\tx_delay_counter0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(tx_delay_counter[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tx_delay_counter0_inferred__0/i__carry__2 
       (.CI(\tx_delay_counter0_inferred__0/i__carry__1_n_0 ),
        .CO({\NLW_tx_delay_counter0_inferred__0/i__carry__2_CO_UNCONNECTED [3:1],\tx_delay_counter0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_tx_delay_counter0_inferred__0/i__carry__2_O_UNCONNECTED [3:2],data0[14:13]}),
        .S({1'b0,1'b0,tx_delay_counter[14:13]}));
  LUT6 #(
    .INIT(64'h0000FFFF0000FEBF)) 
    \tx_delay_counter[0]_i_1 
       (.I0(\tx_delay_counter[14]_i_4_n_0 ),
        .I1(tx_delay_counter[5]),
        .I2(tx_delay_counter[9]),
        .I3(\state_cmd_reg_n_0_[0] ),
        .I4(tx_delay_counter[0]),
        .I5(\tx_delay_counter[0]_i_2_n_0 ),
        .O(p_2_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \tx_delay_counter[0]_i_2 
       (.I0(tx_delay_counter[3]),
        .I1(tx_delay_counter[4]),
        .I2(tx_delay_counter[1]),
        .I3(tx_delay_counter[2]),
        .I4(\tx_delay_counter[14]_i_6_n_0 ),
        .O(\tx_delay_counter[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \tx_delay_counter[10]_i_1 
       (.I0(\tx_delay_counter[14]_i_3_n_0 ),
        .I1(\tx_delay_counter[14]_i_4_n_0 ),
        .I2(tx_delay_counter[0]),
        .I3(\tx_delay_counter[14]_i_5_n_0 ),
        .I4(\tx_delay_counter[14]_i_6_n_0 ),
        .I5(data0[10]),
        .O(p_2_in[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \tx_delay_counter[11]_i_1 
       (.I0(\tx_delay_counter[14]_i_3_n_0 ),
        .I1(\tx_delay_counter[14]_i_4_n_0 ),
        .I2(tx_delay_counter[0]),
        .I3(\tx_delay_counter[14]_i_5_n_0 ),
        .I4(\tx_delay_counter[14]_i_6_n_0 ),
        .I5(data0[11]),
        .O(p_2_in[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \tx_delay_counter[12]_i_1 
       (.I0(\tx_delay_counter[14]_i_3_n_0 ),
        .I1(\tx_delay_counter[14]_i_4_n_0 ),
        .I2(tx_delay_counter[0]),
        .I3(\tx_delay_counter[14]_i_5_n_0 ),
        .I4(\tx_delay_counter[14]_i_6_n_0 ),
        .I5(data0[12]),
        .O(p_2_in[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \tx_delay_counter[13]_i_1 
       (.I0(\tx_delay_counter[14]_i_3_n_0 ),
        .I1(\tx_delay_counter[14]_i_4_n_0 ),
        .I2(tx_delay_counter[0]),
        .I3(\tx_delay_counter[14]_i_5_n_0 ),
        .I4(\tx_delay_counter[14]_i_6_n_0 ),
        .I5(data0[13]),
        .O(p_2_in[13]));
  LUT2 #(
    .INIT(4'h1)) 
    \tx_delay_counter[14]_i_1 
       (.I0(\state_cmd_reg_n_0_[2] ),
        .I1(\state_cmd_reg_n_0_[1] ),
        .O(\tx_delay_counter[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \tx_delay_counter[14]_i_2 
       (.I0(\tx_delay_counter[14]_i_3_n_0 ),
        .I1(\tx_delay_counter[14]_i_4_n_0 ),
        .I2(tx_delay_counter[0]),
        .I3(\tx_delay_counter[14]_i_5_n_0 ),
        .I4(\tx_delay_counter[14]_i_6_n_0 ),
        .I5(data0[14]),
        .O(p_2_in[14]));
  LUT3 #(
    .INIT(8'hBD)) 
    \tx_delay_counter[14]_i_3 
       (.I0(\state_cmd_reg_n_0_[0] ),
        .I1(tx_delay_counter[9]),
        .I2(tx_delay_counter[5]),
        .O(\tx_delay_counter[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBFFFFFFD)) 
    \tx_delay_counter[14]_i_4 
       (.I0(tx_delay_counter[11]),
        .I1(tx_delay_counter[10]),
        .I2(tx_delay_counter[5]),
        .I3(tx_delay_counter[14]),
        .I4(tx_delay_counter[12]),
        .O(\tx_delay_counter[14]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \tx_delay_counter[14]_i_5 
       (.I0(tx_delay_counter[2]),
        .I1(tx_delay_counter[1]),
        .I2(tx_delay_counter[4]),
        .I3(tx_delay_counter[3]),
        .O(\tx_delay_counter[14]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \tx_delay_counter[14]_i_6 
       (.I0(tx_delay_counter[7]),
        .I1(tx_delay_counter[6]),
        .I2(tx_delay_counter[8]),
        .I3(tx_delay_counter[13]),
        .O(\tx_delay_counter[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \tx_delay_counter[1]_i_1 
       (.I0(\tx_delay_counter[14]_i_3_n_0 ),
        .I1(\tx_delay_counter[14]_i_4_n_0 ),
        .I2(tx_delay_counter[0]),
        .I3(\tx_delay_counter[14]_i_5_n_0 ),
        .I4(\tx_delay_counter[14]_i_6_n_0 ),
        .I5(data0[1]),
        .O(p_2_in[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \tx_delay_counter[2]_i_1 
       (.I0(\tx_delay_counter[14]_i_3_n_0 ),
        .I1(\tx_delay_counter[14]_i_4_n_0 ),
        .I2(tx_delay_counter[0]),
        .I3(\tx_delay_counter[14]_i_5_n_0 ),
        .I4(\tx_delay_counter[14]_i_6_n_0 ),
        .I5(data0[2]),
        .O(p_2_in[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \tx_delay_counter[3]_i_1 
       (.I0(\tx_delay_counter[14]_i_3_n_0 ),
        .I1(\tx_delay_counter[14]_i_4_n_0 ),
        .I2(tx_delay_counter[0]),
        .I3(\tx_delay_counter[14]_i_5_n_0 ),
        .I4(\tx_delay_counter[14]_i_6_n_0 ),
        .I5(data0[3]),
        .O(p_2_in[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \tx_delay_counter[4]_i_1 
       (.I0(\tx_delay_counter[14]_i_3_n_0 ),
        .I1(\tx_delay_counter[14]_i_4_n_0 ),
        .I2(tx_delay_counter[0]),
        .I3(\tx_delay_counter[14]_i_5_n_0 ),
        .I4(\tx_delay_counter[14]_i_6_n_0 ),
        .I5(data0[4]),
        .O(p_2_in[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \tx_delay_counter[5]_i_1 
       (.I0(\tx_delay_counter[14]_i_3_n_0 ),
        .I1(\tx_delay_counter[14]_i_4_n_0 ),
        .I2(tx_delay_counter[0]),
        .I3(\tx_delay_counter[14]_i_5_n_0 ),
        .I4(\tx_delay_counter[14]_i_6_n_0 ),
        .I5(data0[5]),
        .O(p_2_in[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \tx_delay_counter[6]_i_1 
       (.I0(\tx_delay_counter[14]_i_3_n_0 ),
        .I1(\tx_delay_counter[14]_i_4_n_0 ),
        .I2(tx_delay_counter[0]),
        .I3(\tx_delay_counter[14]_i_5_n_0 ),
        .I4(\tx_delay_counter[14]_i_6_n_0 ),
        .I5(data0[6]),
        .O(p_2_in[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \tx_delay_counter[7]_i_1 
       (.I0(\tx_delay_counter[14]_i_3_n_0 ),
        .I1(\tx_delay_counter[14]_i_4_n_0 ),
        .I2(tx_delay_counter[0]),
        .I3(\tx_delay_counter[14]_i_5_n_0 ),
        .I4(\tx_delay_counter[14]_i_6_n_0 ),
        .I5(data0[7]),
        .O(p_2_in[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \tx_delay_counter[8]_i_1 
       (.I0(\tx_delay_counter[14]_i_3_n_0 ),
        .I1(\tx_delay_counter[14]_i_4_n_0 ),
        .I2(tx_delay_counter[0]),
        .I3(\tx_delay_counter[14]_i_5_n_0 ),
        .I4(\tx_delay_counter[14]_i_6_n_0 ),
        .I5(data0[8]),
        .O(p_2_in[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \tx_delay_counter[9]_i_1 
       (.I0(\tx_delay_counter[14]_i_3_n_0 ),
        .I1(\tx_delay_counter[14]_i_4_n_0 ),
        .I2(tx_delay_counter[0]),
        .I3(\tx_delay_counter[14]_i_5_n_0 ),
        .I4(\tx_delay_counter[14]_i_6_n_0 ),
        .I5(data0[9]),
        .O(p_2_in[9]));
  FDCE \tx_delay_counter_reg[0] 
       (.C(aclk),
        .CE(\tx_delay_counter[14]_i_1_n_0 ),
        .CLR(\FSM_sequential_state_sts[2]_i_2_n_0 ),
        .D(p_2_in[0]),
        .Q(tx_delay_counter[0]));
  FDCE \tx_delay_counter_reg[10] 
       (.C(aclk),
        .CE(\tx_delay_counter[14]_i_1_n_0 ),
        .CLR(\FSM_sequential_state_sts[2]_i_2_n_0 ),
        .D(p_2_in[10]),
        .Q(tx_delay_counter[10]));
  FDCE \tx_delay_counter_reg[11] 
       (.C(aclk),
        .CE(\tx_delay_counter[14]_i_1_n_0 ),
        .CLR(\FSM_sequential_state_sts[2]_i_2_n_0 ),
        .D(p_2_in[11]),
        .Q(tx_delay_counter[11]));
  FDCE \tx_delay_counter_reg[12] 
       (.C(aclk),
        .CE(\tx_delay_counter[14]_i_1_n_0 ),
        .CLR(\FSM_sequential_state_sts[2]_i_2_n_0 ),
        .D(p_2_in[12]),
        .Q(tx_delay_counter[12]));
  FDCE \tx_delay_counter_reg[13] 
       (.C(aclk),
        .CE(\tx_delay_counter[14]_i_1_n_0 ),
        .CLR(\FSM_sequential_state_sts[2]_i_2_n_0 ),
        .D(p_2_in[13]),
        .Q(tx_delay_counter[13]));
  FDCE \tx_delay_counter_reg[14] 
       (.C(aclk),
        .CE(\tx_delay_counter[14]_i_1_n_0 ),
        .CLR(\FSM_sequential_state_sts[2]_i_2_n_0 ),
        .D(p_2_in[14]),
        .Q(tx_delay_counter[14]));
  FDCE \tx_delay_counter_reg[1] 
       (.C(aclk),
        .CE(\tx_delay_counter[14]_i_1_n_0 ),
        .CLR(\FSM_sequential_state_sts[2]_i_2_n_0 ),
        .D(p_2_in[1]),
        .Q(tx_delay_counter[1]));
  FDCE \tx_delay_counter_reg[2] 
       (.C(aclk),
        .CE(\tx_delay_counter[14]_i_1_n_0 ),
        .CLR(\FSM_sequential_state_sts[2]_i_2_n_0 ),
        .D(p_2_in[2]),
        .Q(tx_delay_counter[2]));
  FDCE \tx_delay_counter_reg[3] 
       (.C(aclk),
        .CE(\tx_delay_counter[14]_i_1_n_0 ),
        .CLR(\FSM_sequential_state_sts[2]_i_2_n_0 ),
        .D(p_2_in[3]),
        .Q(tx_delay_counter[3]));
  FDCE \tx_delay_counter_reg[4] 
       (.C(aclk),
        .CE(\tx_delay_counter[14]_i_1_n_0 ),
        .CLR(\FSM_sequential_state_sts[2]_i_2_n_0 ),
        .D(p_2_in[4]),
        .Q(tx_delay_counter[4]));
  FDCE \tx_delay_counter_reg[5] 
       (.C(aclk),
        .CE(\tx_delay_counter[14]_i_1_n_0 ),
        .CLR(\FSM_sequential_state_sts[2]_i_2_n_0 ),
        .D(p_2_in[5]),
        .Q(tx_delay_counter[5]));
  FDCE \tx_delay_counter_reg[6] 
       (.C(aclk),
        .CE(\tx_delay_counter[14]_i_1_n_0 ),
        .CLR(\FSM_sequential_state_sts[2]_i_2_n_0 ),
        .D(p_2_in[6]),
        .Q(tx_delay_counter[6]));
  FDCE \tx_delay_counter_reg[7] 
       (.C(aclk),
        .CE(\tx_delay_counter[14]_i_1_n_0 ),
        .CLR(\FSM_sequential_state_sts[2]_i_2_n_0 ),
        .D(p_2_in[7]),
        .Q(tx_delay_counter[7]));
  FDCE \tx_delay_counter_reg[8] 
       (.C(aclk),
        .CE(\tx_delay_counter[14]_i_1_n_0 ),
        .CLR(\FSM_sequential_state_sts[2]_i_2_n_0 ),
        .D(p_2_in[8]),
        .Q(tx_delay_counter[8]));
  FDCE \tx_delay_counter_reg[9] 
       (.C(aclk),
        .CE(\tx_delay_counter[14]_i_1_n_0 ),
        .CLR(\FSM_sequential_state_sts[2]_i_2_n_0 ),
        .D(p_2_in[9]),
        .Q(tx_delay_counter[9]));
endmodule

(* CHECK_LICENSE_TYPE = "test_UART_packet_digilent_jstk2_0_1,digilent_jstk2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "digilent_jstk2,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tready,
    s_axis_tvalid,
    s_axis_tdata,
    jstk_x,
    jstk_y,
    btn_jstk,
    btn_trigger,
    led_r,
    led_g,
    led_b);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [7:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [7:0]s_axis_tdata;
  output [9:0]jstk_x;
  output [9:0]jstk_y;
  output btn_jstk;
  output btn_trigger;
  input [7:0]led_r;
  input [7:0]led_g;
  input [7:0]led_b;

  wire aclk;
  wire aresetn;
  wire btn_jstk;
  wire btn_trigger;
  wire [9:0]jstk_x;
  wire [9:0]jstk_y;
  wire [5:2]\^m_axis_tdata ;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [7:0]s_axis_tdata;
  wire s_axis_tvalid;

  assign m_axis_tdata[7] = \^m_axis_tdata [2];
  assign m_axis_tdata[6] = \^m_axis_tdata [5];
  assign m_axis_tdata[5] = \^m_axis_tdata [5];
  assign m_axis_tdata[4] = \^m_axis_tdata [5];
  assign m_axis_tdata[3] = \^m_axis_tdata [5];
  assign m_axis_tdata[2] = \^m_axis_tdata [2];
  assign m_axis_tdata[1] = \^m_axis_tdata [5];
  assign m_axis_tdata[0] = \^m_axis_tdata [5];
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_digilent_jstk2 U0
       (.aclk(aclk),
        .aresetn(aresetn),
        .btn_jstk(btn_jstk),
        .btn_trigger(btn_trigger),
        .jstk_x(jstk_x),
        .jstk_y(jstk_y),
        .m_axis_tdata({\^m_axis_tdata [2],\^m_axis_tdata [5]}),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid));
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

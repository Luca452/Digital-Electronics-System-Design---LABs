// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 13 23:37:20 2023
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
    aresetn,
    aclk,
    s_axis_tdata,
    m_axis_tready,
    led_b,
    led_r,
    led_g);
  output [7:0]m_axis_tdata;
  output [9:0]jstk_x;
  output [9:0]jstk_y;
  output btn_jstk;
  output btn_trigger;
  output m_axis_tvalid;
  input s_axis_tvalid;
  input aresetn;
  input aclk;
  input [7:0]s_axis_tdata;
  input m_axis_tready;
  input [7:0]led_b;
  input [7:0]led_r;
  input [7:0]led_g;

  wire \FSM_onehot_state_cmd[0]_i_1_n_0 ;
  wire \FSM_onehot_state_cmd[0]_i_2_n_0 ;
  wire \FSM_onehot_state_cmd[1]_i_1_n_0 ;
  wire \FSM_onehot_state_cmd_reg_n_0_[1] ;
  wire \FSM_onehot_state_cmd_reg_n_0_[2] ;
  wire \FSM_onehot_state_cmd_reg_n_0_[3] ;
  wire \FSM_onehot_state_cmd_reg_n_0_[4] ;
  wire \FSM_onehot_state_cmd_reg_n_0_[5] ;
  wire \FSM_sequential_state_sts[0]_i_1_n_0 ;
  wire \FSM_sequential_state_sts[1]_i_1_n_0 ;
  wire \FSM_sequential_state_sts[2]_i_1_n_0 ;
  wire aclk;
  wire aresetn;
  wire btn_jstk;
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
  wire [7:0]led_b;
  wire [7:0]led_g;
  wire [7:0]led_r;
  wire [7:0]m_axis_tdata;
  wire m_axis_tdata0;
  wire \m_axis_tdata[0]_i_1_n_0 ;
  wire \m_axis_tdata[1]_i_1_n_0 ;
  wire \m_axis_tdata[2]_i_1_n_0 ;
  wire \m_axis_tdata[2]_i_2_n_0 ;
  wire \m_axis_tdata[3]_i_1_n_0 ;
  wire \m_axis_tdata[4]_i_1_n_0 ;
  wire \m_axis_tdata[5]_i_1_n_0 ;
  wire \m_axis_tdata[6]_i_1_n_0 ;
  wire \m_axis_tdata[7]_i_2_n_0 ;
  wire \m_axis_tdata[7]_i_3_n_0 ;
  wire \m_axis_tdata[7]_i_4_n_0 ;
  wire \m_axis_tdata[7]_i_5_n_0 ;
  wire \m_axis_tdata[7]_i_6_n_0 ;
  wire \m_axis_tdata[7]_i_7_n_0 ;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [7:0]s_axis_tdata;
  wire s_axis_tvalid;
  wire state_cmd0;
  wire [2:0]state_sts;
  wire tx_delay_counter;
  wire tx_delay_counter0;
  wire tx_delay_counter0_carry__0_n_0;
  wire tx_delay_counter0_carry__0_n_1;
  wire tx_delay_counter0_carry__0_n_2;
  wire tx_delay_counter0_carry__0_n_3;
  wire tx_delay_counter0_carry__1_n_0;
  wire tx_delay_counter0_carry__1_n_1;
  wire tx_delay_counter0_carry__1_n_2;
  wire tx_delay_counter0_carry__1_n_3;
  wire tx_delay_counter0_carry__2_n_3;
  wire tx_delay_counter0_carry_n_0;
  wire tx_delay_counter0_carry_n_1;
  wire tx_delay_counter0_carry_n_2;
  wire tx_delay_counter0_carry_n_3;
  wire \tx_delay_counter[0]_i_1_n_0 ;
  wire \tx_delay_counter[14]_i_1_n_0 ;
  wire \tx_delay_counter_reg_n_0_[0] ;
  wire \tx_delay_counter_reg_n_0_[10] ;
  wire \tx_delay_counter_reg_n_0_[11] ;
  wire \tx_delay_counter_reg_n_0_[12] ;
  wire \tx_delay_counter_reg_n_0_[13] ;
  wire \tx_delay_counter_reg_n_0_[14] ;
  wire \tx_delay_counter_reg_n_0_[1] ;
  wire \tx_delay_counter_reg_n_0_[2] ;
  wire \tx_delay_counter_reg_n_0_[3] ;
  wire \tx_delay_counter_reg_n_0_[4] ;
  wire \tx_delay_counter_reg_n_0_[5] ;
  wire \tx_delay_counter_reg_n_0_[6] ;
  wire \tx_delay_counter_reg_n_0_[7] ;
  wire \tx_delay_counter_reg_n_0_[8] ;
  wire \tx_delay_counter_reg_n_0_[9] ;
  wire [3:1]NLW_tx_delay_counter0_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_tx_delay_counter0_carry__2_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFEFAAAAAAAA)) 
    \FSM_onehot_state_cmd[0]_i_1 
       (.I0(\FSM_onehot_state_cmd_reg_n_0_[5] ),
        .I1(\m_axis_tdata[7]_i_3_n_0 ),
        .I2(\m_axis_tdata[7]_i_4_n_0 ),
        .I3(\FSM_onehot_state_cmd[0]_i_2_n_0 ),
        .I4(\tx_delay_counter_reg_n_0_[13] ),
        .I5(tx_delay_counter),
        .O(\FSM_onehot_state_cmd[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \FSM_onehot_state_cmd[0]_i_2 
       (.I0(\tx_delay_counter_reg_n_0_[11] ),
        .I1(\tx_delay_counter_reg_n_0_[1] ),
        .I2(\tx_delay_counter_reg_n_0_[5] ),
        .I3(\tx_delay_counter_reg_n_0_[0] ),
        .O(\FSM_onehot_state_cmd[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \FSM_onehot_state_cmd[1]_i_1 
       (.I0(\m_axis_tdata[7]_i_3_n_0 ),
        .I1(\tx_delay_counter_reg_n_0_[14] ),
        .I2(\tx_delay_counter_reg_n_0_[12] ),
        .I3(\tx_delay_counter_reg_n_0_[9] ),
        .I4(\tx_delay_counter_reg_n_0_[7] ),
        .I5(\m_axis_tdata[7]_i_5_n_0 ),
        .O(\FSM_onehot_state_cmd[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA888AAAA)) 
    \FSM_onehot_state_cmd[5]_i_1 
       (.I0(aresetn),
        .I1(tx_delay_counter),
        .I2(m_axis_tready),
        .I3(\FSM_onehot_state_cmd_reg_n_0_[5] ),
        .I4(\m_axis_tdata[7]_i_6_n_0 ),
        .O(state_cmd0));
  (* FSM_ENCODED_STATES = "send_red:000100,send_green:001000,send_blue:010000,send_dummy:100000,wait_delay:000001,send_cmd:000010" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_cmd_reg[0] 
       (.C(aclk),
        .CE(state_cmd0),
        .D(\FSM_onehot_state_cmd[0]_i_1_n_0 ),
        .Q(tx_delay_counter),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "send_red:000100,send_green:001000,send_blue:010000,send_dummy:100000,wait_delay:000001,send_cmd:000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_cmd_reg[1] 
       (.C(aclk),
        .CE(state_cmd0),
        .D(\FSM_onehot_state_cmd[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_cmd_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "send_red:000100,send_green:001000,send_blue:010000,send_dummy:100000,wait_delay:000001,send_cmd:000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_cmd_reg[2] 
       (.C(aclk),
        .CE(state_cmd0),
        .D(\FSM_onehot_state_cmd_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_cmd_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "send_red:000100,send_green:001000,send_blue:010000,send_dummy:100000,wait_delay:000001,send_cmd:000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_cmd_reg[3] 
       (.C(aclk),
        .CE(state_cmd0),
        .D(\FSM_onehot_state_cmd_reg_n_0_[2] ),
        .Q(\FSM_onehot_state_cmd_reg_n_0_[3] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "send_red:000100,send_green:001000,send_blue:010000,send_dummy:100000,wait_delay:000001,send_cmd:000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_cmd_reg[4] 
       (.C(aclk),
        .CE(state_cmd0),
        .D(\FSM_onehot_state_cmd_reg_n_0_[3] ),
        .Q(\FSM_onehot_state_cmd_reg_n_0_[4] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "send_red:000100,send_green:001000,send_blue:010000,send_dummy:100000,wait_delay:000001,send_cmd:000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_cmd_reg[5] 
       (.C(aclk),
        .CE(state_cmd0),
        .D(\FSM_onehot_state_cmd_reg_n_0_[4] ),
        .Q(\FSM_onehot_state_cmd_reg_n_0_[5] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h3F40)) 
    \FSM_sequential_state_sts[0]_i_1 
       (.I0(state_sts[2]),
        .I1(s_axis_tvalid),
        .I2(aresetn),
        .I3(state_sts[0]),
        .O(\FSM_sequential_state_sts[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h1FFF2000)) 
    \FSM_sequential_state_sts[1]_i_1 
       (.I0(state_sts[0]),
        .I1(state_sts[2]),
        .I2(s_axis_tvalid),
        .I3(aresetn),
        .I4(state_sts[1]),
        .O(\FSM_sequential_state_sts[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0FFF8000)) 
    \FSM_sequential_state_sts[2]_i_1 
       (.I0(state_sts[1]),
        .I1(state_sts[0]),
        .I2(s_axis_tvalid),
        .I3(aresetn),
        .I4(state_sts[2]),
        .O(\FSM_sequential_state_sts[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "get_x_lsb:000,get_x_msb:001,get_y_lsb:010,get_y_msb:011,get_buttons:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_sts_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_sts[0]_i_1_n_0 ),
        .Q(state_sts[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "get_x_lsb:000,get_x_msb:001,get_y_lsb:010,get_y_msb:011,get_buttons:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_sts_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_sts[1]_i_1_n_0 ),
        .Q(state_sts[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "get_x_lsb:000,get_x_msb:001,get_y_lsb:010,get_y_msb:011,get_buttons:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_sts_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_sts[2]_i_1_n_0 ),
        .Q(state_sts[2]),
        .R(1'b0));
  FDRE btn_jstk_reg
       (.C(aclk),
        .CE(jstk_x0),
        .D(btn_jstk_reg__0),
        .Q(btn_jstk),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    btn_jstk_reg_i_1
       (.I0(s_axis_tdata[0]),
        .I1(\jstk_x_reg[9]_i_2_n_0 ),
        .I2(state_sts[0]),
        .I3(state_sts[1]),
        .I4(state_sts[2]),
        .I5(btn_jstk_reg__0),
        .O(btn_jstk_reg_i_1_n_0));
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
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    btn_trigger_reg_i_1
       (.I0(s_axis_tdata[1]),
        .I1(\jstk_x_reg[9]_i_2_n_0 ),
        .I2(state_sts[0]),
        .I3(state_sts[1]),
        .I4(state_sts[2]),
        .I5(btn_trigger_reg__0),
        .O(btn_trigger_reg_i_1_n_0));
  FDRE btn_trigger_reg_reg
       (.C(aclk),
        .CE(1'b1),
        .D(btn_trigger_reg_i_1_n_0),
        .Q(btn_trigger_reg__0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0004AAAA0000AAAA)) 
    data_ready_i_1
       (.I0(data_ready),
        .I1(state_sts[2]),
        .I2(state_sts[1]),
        .I3(state_sts[0]),
        .I4(aresetn),
        .I5(s_axis_tvalid),
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
    .INIT(32'h00001000)) 
    \jstk_x_reg[7]_i_1 
       (.I0(state_sts[2]),
        .I1(state_sts[0]),
        .I2(aresetn),
        .I3(s_axis_tvalid),
        .I4(state_sts[1]),
        .O(\jstk_x_reg[7]_i_1_n_0 ));
  FDRE \jstk_x_reg[8] 
       (.C(aclk),
        .CE(jstk_x0),
        .D(\jstk_x_reg_reg_n_0_[8] ),
        .Q(jstk_x[8]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \jstk_x_reg[8]_i_1 
       (.I0(s_axis_tdata[0]),
        .I1(state_sts[0]),
        .I2(state_sts[2]),
        .I3(\jstk_x_reg[9]_i_2_n_0 ),
        .I4(state_sts[1]),
        .I5(\jstk_x_reg_reg_n_0_[8] ),
        .O(\jstk_x_reg[8]_i_1_n_0 ));
  FDRE \jstk_x_reg[9] 
       (.C(aclk),
        .CE(jstk_x0),
        .D(\jstk_x_reg_reg_n_0_[9] ),
        .Q(jstk_x[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \jstk_x_reg[9]_i_1 
       (.I0(s_axis_tdata[1]),
        .I1(state_sts[0]),
        .I2(state_sts[2]),
        .I3(\jstk_x_reg[9]_i_2_n_0 ),
        .I4(state_sts[1]),
        .I5(\jstk_x_reg_reg_n_0_[9] ),
        .O(\jstk_x_reg[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \jstk_x_reg[9]_i_2 
       (.I0(aresetn),
        .I1(s_axis_tvalid),
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
       (.I0(s_axis_tvalid),
        .I1(aresetn),
        .I2(state_sts[1]),
        .I3(state_sts[0]),
        .I4(state_sts[2]),
        .O(\jstk_y_reg[7]_i_1_n_0 ));
  FDRE \jstk_y_reg[8] 
       (.C(aclk),
        .CE(jstk_x0),
        .D(\jstk_y_reg_reg_n_0_[8] ),
        .Q(jstk_y[8]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \jstk_y_reg[8]_i_1 
       (.I0(s_axis_tdata[0]),
        .I1(\jstk_x_reg[9]_i_2_n_0 ),
        .I2(state_sts[1]),
        .I3(state_sts[2]),
        .I4(state_sts[0]),
        .I5(\jstk_y_reg_reg_n_0_[8] ),
        .O(\jstk_y_reg[8]_i_1_n_0 ));
  FDRE \jstk_y_reg[9] 
       (.C(aclk),
        .CE(jstk_x0),
        .D(\jstk_y_reg_reg_n_0_[9] ),
        .Q(jstk_y[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \jstk_y_reg[9]_i_1 
       (.I0(s_axis_tdata[1]),
        .I1(\jstk_x_reg[9]_i_2_n_0 ),
        .I2(state_sts[1]),
        .I3(state_sts[2]),
        .I4(state_sts[0]),
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
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_tdata[0]_i_1 
       (.I0(led_r[0]),
        .I1(\FSM_onehot_state_cmd_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_cmd_reg_n_0_[2] ),
        .I3(led_g[0]),
        .I4(\FSM_onehot_state_cmd_reg_n_0_[3] ),
        .I5(led_b[0]),
        .O(\m_axis_tdata[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_tdata[1]_i_1 
       (.I0(led_r[1]),
        .I1(\FSM_onehot_state_cmd_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_cmd_reg_n_0_[2] ),
        .I3(led_g[1]),
        .I4(\FSM_onehot_state_cmd_reg_n_0_[3] ),
        .I5(led_b[1]),
        .O(\m_axis_tdata[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \m_axis_tdata[2]_i_1 
       (.I0(\FSM_onehot_state_cmd_reg_n_0_[3] ),
        .I1(led_b[2]),
        .I2(tx_delay_counter),
        .I3(\m_axis_tdata[2]_i_2_n_0 ),
        .O(\m_axis_tdata[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[2]_i_2 
       (.I0(led_r[2]),
        .I1(\FSM_onehot_state_cmd_reg_n_0_[1] ),
        .I2(led_g[2]),
        .I3(\FSM_onehot_state_cmd_reg_n_0_[2] ),
        .O(\m_axis_tdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_tdata[3]_i_1 
       (.I0(led_r[3]),
        .I1(\FSM_onehot_state_cmd_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_cmd_reg_n_0_[2] ),
        .I3(led_g[3]),
        .I4(\FSM_onehot_state_cmd_reg_n_0_[3] ),
        .I5(led_b[3]),
        .O(\m_axis_tdata[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_tdata[4]_i_1 
       (.I0(led_r[4]),
        .I1(\FSM_onehot_state_cmd_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_cmd_reg_n_0_[2] ),
        .I3(led_g[4]),
        .I4(\FSM_onehot_state_cmd_reg_n_0_[3] ),
        .I5(led_b[4]),
        .O(\m_axis_tdata[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_tdata[5]_i_1 
       (.I0(led_r[5]),
        .I1(\FSM_onehot_state_cmd_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_cmd_reg_n_0_[2] ),
        .I3(led_g[5]),
        .I4(\FSM_onehot_state_cmd_reg_n_0_[3] ),
        .I5(led_b[5]),
        .O(\m_axis_tdata[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_tdata[6]_i_1 
       (.I0(led_r[6]),
        .I1(\FSM_onehot_state_cmd_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_cmd_reg_n_0_[2] ),
        .I3(led_g[6]),
        .I4(\FSM_onehot_state_cmd_reg_n_0_[3] ),
        .I5(led_b[6]),
        .O(\m_axis_tdata[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0020AAAA)) 
    \m_axis_tdata[7]_i_1 
       (.I0(aresetn),
        .I1(\m_axis_tdata[7]_i_3_n_0 ),
        .I2(\m_axis_tdata[7]_i_4_n_0 ),
        .I3(\m_axis_tdata[7]_i_5_n_0 ),
        .I4(\m_axis_tdata[7]_i_6_n_0 ),
        .O(m_axis_tdata0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    \m_axis_tdata[7]_i_2 
       (.I0(\FSM_onehot_state_cmd_reg_n_0_[3] ),
        .I1(led_b[7]),
        .I2(tx_delay_counter),
        .I3(\m_axis_tdata[7]_i_7_n_0 ),
        .O(\m_axis_tdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    \m_axis_tdata[7]_i_3 
       (.I0(\tx_delay_counter_reg_n_0_[2] ),
        .I1(\tx_delay_counter_reg_n_0_[8] ),
        .I2(\tx_delay_counter_reg_n_0_[10] ),
        .I3(\tx_delay_counter_reg_n_0_[6] ),
        .I4(\tx_delay_counter_reg_n_0_[4] ),
        .I5(\tx_delay_counter_reg_n_0_[3] ),
        .O(\m_axis_tdata[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \m_axis_tdata[7]_i_4 
       (.I0(\tx_delay_counter_reg_n_0_[14] ),
        .I1(\tx_delay_counter_reg_n_0_[12] ),
        .I2(\tx_delay_counter_reg_n_0_[9] ),
        .I3(\tx_delay_counter_reg_n_0_[7] ),
        .O(\m_axis_tdata[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    \m_axis_tdata[7]_i_5 
       (.I0(\tx_delay_counter_reg_n_0_[0] ),
        .I1(\tx_delay_counter_reg_n_0_[5] ),
        .I2(\tx_delay_counter_reg_n_0_[1] ),
        .I3(\tx_delay_counter_reg_n_0_[11] ),
        .I4(tx_delay_counter),
        .I5(\tx_delay_counter_reg_n_0_[13] ),
        .O(\m_axis_tdata[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h55555557)) 
    \m_axis_tdata[7]_i_6 
       (.I0(m_axis_tready),
        .I1(\FSM_onehot_state_cmd_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_cmd_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_cmd_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_cmd_reg_n_0_[4] ),
        .O(\m_axis_tdata[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[7]_i_7 
       (.I0(led_r[7]),
        .I1(\FSM_onehot_state_cmd_reg_n_0_[1] ),
        .I2(led_g[7]),
        .I3(\FSM_onehot_state_cmd_reg_n_0_[2] ),
        .O(\m_axis_tdata[7]_i_7_n_0 ));
  FDRE \m_axis_tdata_reg[0] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[0]_i_1_n_0 ),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[1] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[1]_i_1_n_0 ),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[2] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[2]_i_1_n_0 ),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[3] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[3]_i_1_n_0 ),
        .Q(m_axis_tdata[3]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[4] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[4]_i_1_n_0 ),
        .Q(m_axis_tdata[4]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[5] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[5]_i_1_n_0 ),
        .Q(m_axis_tdata[5]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[6] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[6]_i_1_n_0 ),
        .Q(m_axis_tdata[6]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[7] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[7]_i_2_n_0 ),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tvalid_INST_0
       (.I0(tx_delay_counter),
        .O(m_axis_tvalid));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tx_delay_counter0_carry
       (.CI(1'b0),
        .CO({tx_delay_counter0_carry_n_0,tx_delay_counter0_carry_n_1,tx_delay_counter0_carry_n_2,tx_delay_counter0_carry_n_3}),
        .CYINIT(\tx_delay_counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\tx_delay_counter_reg_n_0_[4] ,\tx_delay_counter_reg_n_0_[3] ,\tx_delay_counter_reg_n_0_[2] ,\tx_delay_counter_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tx_delay_counter0_carry__0
       (.CI(tx_delay_counter0_carry_n_0),
        .CO({tx_delay_counter0_carry__0_n_0,tx_delay_counter0_carry__0_n_1,tx_delay_counter0_carry__0_n_2,tx_delay_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\tx_delay_counter_reg_n_0_[8] ,\tx_delay_counter_reg_n_0_[7] ,\tx_delay_counter_reg_n_0_[6] ,\tx_delay_counter_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tx_delay_counter0_carry__1
       (.CI(tx_delay_counter0_carry__0_n_0),
        .CO({tx_delay_counter0_carry__1_n_0,tx_delay_counter0_carry__1_n_1,tx_delay_counter0_carry__1_n_2,tx_delay_counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\tx_delay_counter_reg_n_0_[12] ,\tx_delay_counter_reg_n_0_[11] ,\tx_delay_counter_reg_n_0_[10] ,\tx_delay_counter_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tx_delay_counter0_carry__2
       (.CI(tx_delay_counter0_carry__1_n_0),
        .CO({NLW_tx_delay_counter0_carry__2_CO_UNCONNECTED[3:1],tx_delay_counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_tx_delay_counter0_carry__2_O_UNCONNECTED[3:2],data0[14:13]}),
        .S({1'b0,1'b0,\tx_delay_counter_reg_n_0_[14] ,\tx_delay_counter_reg_n_0_[13] }));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \tx_delay_counter[0]_i_1 
       (.I0(\tx_delay_counter_reg_n_0_[0] ),
        .O(\tx_delay_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \tx_delay_counter[14]_i_1 
       (.I0(\tx_delay_counter_reg_n_0_[13] ),
        .I1(\FSM_onehot_state_cmd[0]_i_2_n_0 ),
        .I2(\m_axis_tdata[7]_i_4_n_0 ),
        .I3(\m_axis_tdata[7]_i_3_n_0 ),
        .I4(aresetn),
        .I5(tx_delay_counter),
        .O(\tx_delay_counter[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tx_delay_counter[14]_i_2 
       (.I0(tx_delay_counter),
        .I1(aresetn),
        .O(tx_delay_counter0));
  FDRE \tx_delay_counter_reg[0] 
       (.C(aclk),
        .CE(tx_delay_counter0),
        .D(\tx_delay_counter[0]_i_1_n_0 ),
        .Q(\tx_delay_counter_reg_n_0_[0] ),
        .R(\tx_delay_counter[14]_i_1_n_0 ));
  FDRE \tx_delay_counter_reg[10] 
       (.C(aclk),
        .CE(tx_delay_counter0),
        .D(data0[10]),
        .Q(\tx_delay_counter_reg_n_0_[10] ),
        .R(\tx_delay_counter[14]_i_1_n_0 ));
  FDRE \tx_delay_counter_reg[11] 
       (.C(aclk),
        .CE(tx_delay_counter0),
        .D(data0[11]),
        .Q(\tx_delay_counter_reg_n_0_[11] ),
        .R(\tx_delay_counter[14]_i_1_n_0 ));
  FDRE \tx_delay_counter_reg[12] 
       (.C(aclk),
        .CE(tx_delay_counter0),
        .D(data0[12]),
        .Q(\tx_delay_counter_reg_n_0_[12] ),
        .R(\tx_delay_counter[14]_i_1_n_0 ));
  FDRE \tx_delay_counter_reg[13] 
       (.C(aclk),
        .CE(tx_delay_counter0),
        .D(data0[13]),
        .Q(\tx_delay_counter_reg_n_0_[13] ),
        .R(\tx_delay_counter[14]_i_1_n_0 ));
  FDRE \tx_delay_counter_reg[14] 
       (.C(aclk),
        .CE(tx_delay_counter0),
        .D(data0[14]),
        .Q(\tx_delay_counter_reg_n_0_[14] ),
        .R(\tx_delay_counter[14]_i_1_n_0 ));
  FDRE \tx_delay_counter_reg[1] 
       (.C(aclk),
        .CE(tx_delay_counter0),
        .D(data0[1]),
        .Q(\tx_delay_counter_reg_n_0_[1] ),
        .R(\tx_delay_counter[14]_i_1_n_0 ));
  FDRE \tx_delay_counter_reg[2] 
       (.C(aclk),
        .CE(tx_delay_counter0),
        .D(data0[2]),
        .Q(\tx_delay_counter_reg_n_0_[2] ),
        .R(\tx_delay_counter[14]_i_1_n_0 ));
  FDRE \tx_delay_counter_reg[3] 
       (.C(aclk),
        .CE(tx_delay_counter0),
        .D(data0[3]),
        .Q(\tx_delay_counter_reg_n_0_[3] ),
        .R(\tx_delay_counter[14]_i_1_n_0 ));
  FDRE \tx_delay_counter_reg[4] 
       (.C(aclk),
        .CE(tx_delay_counter0),
        .D(data0[4]),
        .Q(\tx_delay_counter_reg_n_0_[4] ),
        .R(\tx_delay_counter[14]_i_1_n_0 ));
  FDRE \tx_delay_counter_reg[5] 
       (.C(aclk),
        .CE(tx_delay_counter0),
        .D(data0[5]),
        .Q(\tx_delay_counter_reg_n_0_[5] ),
        .R(\tx_delay_counter[14]_i_1_n_0 ));
  FDRE \tx_delay_counter_reg[6] 
       (.C(aclk),
        .CE(tx_delay_counter0),
        .D(data0[6]),
        .Q(\tx_delay_counter_reg_n_0_[6] ),
        .R(\tx_delay_counter[14]_i_1_n_0 ));
  FDRE \tx_delay_counter_reg[7] 
       (.C(aclk),
        .CE(tx_delay_counter0),
        .D(data0[7]),
        .Q(\tx_delay_counter_reg_n_0_[7] ),
        .R(\tx_delay_counter[14]_i_1_n_0 ));
  FDRE \tx_delay_counter_reg[8] 
       (.C(aclk),
        .CE(tx_delay_counter0),
        .D(data0[8]),
        .Q(\tx_delay_counter_reg_n_0_[8] ),
        .R(\tx_delay_counter[14]_i_1_n_0 ));
  FDRE \tx_delay_counter_reg[9] 
       (.C(aclk),
        .CE(tx_delay_counter0),
        .D(data0[9]),
        .Q(\tx_delay_counter_reg_n_0_[9] ),
        .R(\tx_delay_counter[14]_i_1_n_0 ));
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
  wire [7:0]led_b;
  wire [7:0]led_g;
  wire [7:0]led_r;
  wire [7:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [7:0]s_axis_tdata;
  wire s_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_digilent_jstk2 U0
       (.aclk(aclk),
        .aresetn(aresetn),
        .btn_jstk(btn_jstk),
        .btn_trigger(btn_trigger),
        .jstk_x(jstk_x),
        .jstk_y(jstk_y),
        .led_b(led_b),
        .led_g(led_g),
        .led_r(led_r),
        .m_axis_tdata(m_axis_tdata),
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

// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Apr 19 16:56:46 2023
// Host        : DESKTOP-JKUPK39 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/daido/Desktop/Polimi/Anno
//               4/DESD/Git/KittCarPWM/Jstk2_SpaceShooter/Jstk2_SpaceShooter.gen/sources_1/bd/interface_bd/ip/interface_bd_jstk_uart_bridge_0_0/interface_bd_jstk_uart_bridge_0_0_sim_netlist.v}
// Design      : interface_bd_jstk_uart_bridge_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "interface_bd_jstk_uart_bridge_0_0,jstk_uart_bridge,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "jstk_uart_bridge,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module interface_bd_jstk_uart_bridge_0_0
   (aclk,
    aresetn,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tready,
    s_axis_tvalid,
    s_axis_tdata,
    s_axis_tready,
    jstk_x,
    jstk_y,
    btn_jstk,
    btn_trigger,
    led_r,
    led_g,
    led_b);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [7:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [7:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  input [9:0]jstk_x;
  input [9:0]jstk_y;
  input btn_jstk;
  input btn_trigger;
  output [7:0]led_r;
  output [7:0]led_g;
  output [7:0]led_b;

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
  wire s_axis_tready;
  wire s_axis_tvalid;

  interface_bd_jstk_uart_bridge_0_0_jstk_uart_bridge U0
       (.aclk(aclk),
        .aresetn(aresetn),
        .btn_jstk(btn_jstk),
        .btn_trigger(btn_trigger),
        .jstk_x(jstk_x[9:3]),
        .jstk_y(jstk_y[9:3]),
        .led_b(led_b),
        .led_g(led_g),
        .led_r(led_r),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "jstk_uart_bridge" *) 
module interface_bd_jstk_uart_bridge_0_0_jstk_uart_bridge
   (led_r,
    led_g,
    led_b,
    m_axis_tdata,
    m_axis_tvalid,
    s_axis_tready,
    aresetn,
    m_axis_tready,
    aclk,
    s_axis_tvalid,
    s_axis_tdata,
    jstk_x,
    jstk_y,
    btn_trigger,
    btn_jstk);
  output [7:0]led_r;
  output [7:0]led_g;
  output [7:0]led_b;
  output [7:0]m_axis_tdata;
  output m_axis_tvalid;
  output s_axis_tready;
  input aresetn;
  input m_axis_tready;
  input aclk;
  input s_axis_tvalid;
  input [7:0]s_axis_tdata;
  input [6:0]jstk_x;
  input [6:0]jstk_y;
  input btn_trigger;
  input btn_jstk;

  wire \FSM_sequential_rx_state[0]_i_1_n_0 ;
  wire \FSM_sequential_rx_state[1]_i_1_n_0 ;
  wire \FSM_sequential_rx_state[2]_i_1_n_0 ;
  wire \FSM_sequential_rx_state[2]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[2]_i_3_n_0 ;
  wire \FSM_sequential_tx_state[0]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[1]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_1_n_0 ;
  wire aclk;
  wire aresetn;
  wire btn_jstk;
  wire btn_trigger;
  wire counter_delay0;
  wire counter_delay0_carry__0_n_0;
  wire counter_delay0_carry__0_n_1;
  wire counter_delay0_carry__0_n_2;
  wire counter_delay0_carry__0_n_3;
  wire counter_delay0_carry__1_n_0;
  wire counter_delay0_carry__1_n_1;
  wire counter_delay0_carry__1_n_2;
  wire counter_delay0_carry__1_n_3;
  wire counter_delay0_carry__2_n_0;
  wire counter_delay0_carry__2_n_1;
  wire counter_delay0_carry__2_n_2;
  wire counter_delay0_carry__2_n_3;
  wire counter_delay0_carry__3_n_2;
  wire counter_delay0_carry__3_n_3;
  wire counter_delay0_carry_n_0;
  wire counter_delay0_carry_n_1;
  wire counter_delay0_carry_n_2;
  wire counter_delay0_carry_n_3;
  wire \counter_delay[0]_i_1_n_0 ;
  wire \counter_delay[0]_i_2_n_0 ;
  wire \counter_delay[19]_i_1_n_0 ;
  wire \counter_delay_reg_n_0_[0] ;
  wire \counter_delay_reg_n_0_[10] ;
  wire \counter_delay_reg_n_0_[11] ;
  wire \counter_delay_reg_n_0_[12] ;
  wire \counter_delay_reg_n_0_[13] ;
  wire \counter_delay_reg_n_0_[14] ;
  wire \counter_delay_reg_n_0_[15] ;
  wire \counter_delay_reg_n_0_[16] ;
  wire \counter_delay_reg_n_0_[17] ;
  wire \counter_delay_reg_n_0_[18] ;
  wire \counter_delay_reg_n_0_[19] ;
  wire \counter_delay_reg_n_0_[1] ;
  wire \counter_delay_reg_n_0_[2] ;
  wire \counter_delay_reg_n_0_[3] ;
  wire \counter_delay_reg_n_0_[4] ;
  wire \counter_delay_reg_n_0_[5] ;
  wire \counter_delay_reg_n_0_[6] ;
  wire \counter_delay_reg_n_0_[7] ;
  wire \counter_delay_reg_n_0_[8] ;
  wire \counter_delay_reg_n_0_[9] ;
  wire [19:1]data0;
  wire data_ready_rx0;
  wire data_ready_rx_reg_n_0;
  wire [6:0]jstk_x;
  wire [6:0]jstk_y;
  wire [7:0]led_b;
  wire \led_b_reg_reg_n_0_[0] ;
  wire \led_b_reg_reg_n_0_[1] ;
  wire \led_b_reg_reg_n_0_[2] ;
  wire \led_b_reg_reg_n_0_[3] ;
  wire \led_b_reg_reg_n_0_[4] ;
  wire \led_b_reg_reg_n_0_[5] ;
  wire \led_b_reg_reg_n_0_[6] ;
  wire \led_b_reg_reg_n_0_[7] ;
  wire [7:0]led_g;
  wire led_g_reg0;
  wire \led_g_reg_reg_n_0_[0] ;
  wire \led_g_reg_reg_n_0_[1] ;
  wire \led_g_reg_reg_n_0_[2] ;
  wire \led_g_reg_reg_n_0_[3] ;
  wire \led_g_reg_reg_n_0_[4] ;
  wire \led_g_reg_reg_n_0_[5] ;
  wire \led_g_reg_reg_n_0_[6] ;
  wire \led_g_reg_reg_n_0_[7] ;
  wire [7:0]led_r;
  wire led_r_reg0;
  wire \led_r_reg_reg_n_0_[0] ;
  wire \led_r_reg_reg_n_0_[1] ;
  wire \led_r_reg_reg_n_0_[2] ;
  wire \led_r_reg_reg_n_0_[3] ;
  wire \led_r_reg_reg_n_0_[4] ;
  wire \led_r_reg_reg_n_0_[5] ;
  wire \led_r_reg_reg_n_0_[6] ;
  wire \led_r_reg_reg_n_0_[7] ;
  wire [7:0]m_axis_tdata;
  wire m_axis_tdata0;
  wire \m_axis_tdata[0]_i_1_n_0 ;
  wire \m_axis_tdata[1]_i_1_n_0 ;
  wire \m_axis_tdata[2]_i_1_n_0 ;
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
  wire \m_axis_tdata[7]_i_8_n_0 ;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [2:0]rx_state__0;
  wire [7:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [2:0]tx_state__0;
  wire [3:2]NLW_counter_delay0_carry__3_CO_UNCONNECTED;
  wire [3:3]NLW_counter_delay0_carry__3_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h2527262626262626)) 
    \FSM_sequential_rx_state[0]_i_1 
       (.I0(rx_state__0[0]),
        .I1(\FSM_sequential_rx_state[2]_i_2_n_0 ),
        .I2(rx_state__0[2]),
        .I3(rx_state__0[1]),
        .I4(aresetn),
        .I5(s_axis_tvalid),
        .O(\FSM_sequential_rx_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3508370837083708)) 
    \FSM_sequential_rx_state[1]_i_1 
       (.I0(rx_state__0[0]),
        .I1(\FSM_sequential_rx_state[2]_i_2_n_0 ),
        .I2(rx_state__0[2]),
        .I3(rx_state__0[1]),
        .I4(aresetn),
        .I5(s_axis_tvalid),
        .O(\FSM_sequential_rx_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3A20383038303830)) 
    \FSM_sequential_rx_state[2]_i_1 
       (.I0(rx_state__0[0]),
        .I1(\FSM_sequential_rx_state[2]_i_2_n_0 ),
        .I2(rx_state__0[2]),
        .I3(rx_state__0[1]),
        .I4(aresetn),
        .I5(s_axis_tvalid),
        .O(\FSM_sequential_rx_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \FSM_sequential_rx_state[2]_i_2 
       (.I0(s_axis_tvalid),
        .I1(aresetn),
        .I2(s_axis_tdata[2]),
        .I3(s_axis_tdata[1]),
        .I4(s_axis_tdata[0]),
        .I5(\FSM_sequential_rx_state[2]_i_3_n_0 ),
        .O(\FSM_sequential_rx_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \FSM_sequential_rx_state[2]_i_3 
       (.I0(s_axis_tdata[6]),
        .I1(s_axis_tdata[5]),
        .I2(s_axis_tdata[3]),
        .I3(s_axis_tdata[4]),
        .I4(rx_state__0[2]),
        .I5(s_axis_tdata[7]),
        .O(\FSM_sequential_rx_state[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000,get_header:001,get_led_r:010,get_led_g:011,get_led_b:100," *) 
  FDRE \FSM_sequential_rx_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_rx_state[0]_i_1_n_0 ),
        .Q(rx_state__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "idle:000,get_header:001,get_led_r:010,get_led_g:011,get_led_b:100," *) 
  FDRE \FSM_sequential_rx_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_rx_state[1]_i_1_n_0 ),
        .Q(rx_state__0[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "idle:000,get_header:001,get_led_r:010,get_led_g:011,get_led_b:100," *) 
  FDRE \FSM_sequential_rx_state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_rx_state[2]_i_1_n_0 ),
        .Q(rx_state__0[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCFFF3000CFFF1100)) 
    \FSM_sequential_tx_state[0]_i_1 
       (.I0(\m_axis_tdata[7]_i_3_n_0 ),
        .I1(tx_state__0[2]),
        .I2(m_axis_tready),
        .I3(aresetn),
        .I4(tx_state__0[0]),
        .I5(tx_state__0[1]),
        .O(\FSM_sequential_tx_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \FSM_sequential_tx_state[1]_i_1 
       (.I0(tx_state__0[2]),
        .I1(m_axis_tready),
        .I2(aresetn),
        .I3(tx_state__0[0]),
        .I4(tx_state__0[1]),
        .O(\FSM_sequential_tx_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hEAAAAA2A)) 
    \FSM_sequential_tx_state[2]_i_1 
       (.I0(tx_state__0[2]),
        .I1(m_axis_tready),
        .I2(aresetn),
        .I3(tx_state__0[0]),
        .I4(tx_state__0[1]),
        .O(\FSM_sequential_tx_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "send_jstk_x:010,send_jstk_y:011,send_buttons:100,delay:000,send_header:001" *) 
  FDRE \FSM_sequential_tx_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_tx_state[0]_i_1_n_0 ),
        .Q(tx_state__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "send_jstk_x:010,send_jstk_y:011,send_buttons:100,delay:000,send_header:001" *) 
  FDRE \FSM_sequential_tx_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_tx_state[1]_i_1_n_0 ),
        .Q(tx_state__0[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "send_jstk_x:010,send_jstk_y:011,send_buttons:100,delay:000,send_header:001" *) 
  FDRE \FSM_sequential_tx_state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_tx_state[2]_i_1_n_0 ),
        .Q(tx_state__0[2]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter_delay0_carry
       (.CI(1'b0),
        .CO({counter_delay0_carry_n_0,counter_delay0_carry_n_1,counter_delay0_carry_n_2,counter_delay0_carry_n_3}),
        .CYINIT(\counter_delay_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\counter_delay_reg_n_0_[4] ,\counter_delay_reg_n_0_[3] ,\counter_delay_reg_n_0_[2] ,\counter_delay_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter_delay0_carry__0
       (.CI(counter_delay0_carry_n_0),
        .CO({counter_delay0_carry__0_n_0,counter_delay0_carry__0_n_1,counter_delay0_carry__0_n_2,counter_delay0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\counter_delay_reg_n_0_[8] ,\counter_delay_reg_n_0_[7] ,\counter_delay_reg_n_0_[6] ,\counter_delay_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter_delay0_carry__1
       (.CI(counter_delay0_carry__0_n_0),
        .CO({counter_delay0_carry__1_n_0,counter_delay0_carry__1_n_1,counter_delay0_carry__1_n_2,counter_delay0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\counter_delay_reg_n_0_[12] ,\counter_delay_reg_n_0_[11] ,\counter_delay_reg_n_0_[10] ,\counter_delay_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter_delay0_carry__2
       (.CI(counter_delay0_carry__1_n_0),
        .CO({counter_delay0_carry__2_n_0,counter_delay0_carry__2_n_1,counter_delay0_carry__2_n_2,counter_delay0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\counter_delay_reg_n_0_[16] ,\counter_delay_reg_n_0_[15] ,\counter_delay_reg_n_0_[14] ,\counter_delay_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter_delay0_carry__3
       (.CI(counter_delay0_carry__2_n_0),
        .CO({NLW_counter_delay0_carry__3_CO_UNCONNECTED[3:2],counter_delay0_carry__3_n_2,counter_delay0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter_delay0_carry__3_O_UNCONNECTED[3],data0[19:17]}),
        .S({1'b0,\counter_delay_reg_n_0_[19] ,\counter_delay_reg_n_0_[18] ,\counter_delay_reg_n_0_[17] }));
  LUT6 #(
    .INIT(64'hFFFFFFF300000008)) 
    \counter_delay[0]_i_1 
       (.I0(\counter_delay[0]_i_2_n_0 ),
        .I1(aresetn),
        .I2(tx_state__0[1]),
        .I3(tx_state__0[0]),
        .I4(tx_state__0[2]),
        .I5(\counter_delay_reg_n_0_[0] ),
        .O(\counter_delay[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter_delay[0]_i_2 
       (.I0(\m_axis_tdata[7]_i_8_n_0 ),
        .I1(\m_axis_tdata[7]_i_7_n_0 ),
        .I2(\m_axis_tdata[7]_i_6_n_0 ),
        .I3(\m_axis_tdata[7]_i_5_n_0 ),
        .I4(\m_axis_tdata[7]_i_4_n_0 ),
        .O(\counter_delay[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \counter_delay[19]_i_1 
       (.I0(tx_state__0[2]),
        .I1(tx_state__0[0]),
        .I2(tx_state__0[1]),
        .I3(aresetn),
        .I4(\m_axis_tdata[7]_i_3_n_0 ),
        .O(\counter_delay[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \counter_delay[19]_i_2 
       (.I0(aresetn),
        .I1(tx_state__0[1]),
        .I2(tx_state__0[0]),
        .I3(tx_state__0[2]),
        .O(counter_delay0));
  FDRE \counter_delay_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\counter_delay[0]_i_1_n_0 ),
        .Q(\counter_delay_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \counter_delay_reg[10] 
       (.C(aclk),
        .CE(counter_delay0),
        .D(data0[10]),
        .Q(\counter_delay_reg_n_0_[10] ),
        .R(\counter_delay[19]_i_1_n_0 ));
  FDRE \counter_delay_reg[11] 
       (.C(aclk),
        .CE(counter_delay0),
        .D(data0[11]),
        .Q(\counter_delay_reg_n_0_[11] ),
        .R(\counter_delay[19]_i_1_n_0 ));
  FDRE \counter_delay_reg[12] 
       (.C(aclk),
        .CE(counter_delay0),
        .D(data0[12]),
        .Q(\counter_delay_reg_n_0_[12] ),
        .R(\counter_delay[19]_i_1_n_0 ));
  FDRE \counter_delay_reg[13] 
       (.C(aclk),
        .CE(counter_delay0),
        .D(data0[13]),
        .Q(\counter_delay_reg_n_0_[13] ),
        .R(\counter_delay[19]_i_1_n_0 ));
  FDRE \counter_delay_reg[14] 
       (.C(aclk),
        .CE(counter_delay0),
        .D(data0[14]),
        .Q(\counter_delay_reg_n_0_[14] ),
        .R(\counter_delay[19]_i_1_n_0 ));
  FDRE \counter_delay_reg[15] 
       (.C(aclk),
        .CE(counter_delay0),
        .D(data0[15]),
        .Q(\counter_delay_reg_n_0_[15] ),
        .R(\counter_delay[19]_i_1_n_0 ));
  FDRE \counter_delay_reg[16] 
       (.C(aclk),
        .CE(counter_delay0),
        .D(data0[16]),
        .Q(\counter_delay_reg_n_0_[16] ),
        .R(\counter_delay[19]_i_1_n_0 ));
  FDRE \counter_delay_reg[17] 
       (.C(aclk),
        .CE(counter_delay0),
        .D(data0[17]),
        .Q(\counter_delay_reg_n_0_[17] ),
        .R(\counter_delay[19]_i_1_n_0 ));
  FDRE \counter_delay_reg[18] 
       (.C(aclk),
        .CE(counter_delay0),
        .D(data0[18]),
        .Q(\counter_delay_reg_n_0_[18] ),
        .R(\counter_delay[19]_i_1_n_0 ));
  FDRE \counter_delay_reg[19] 
       (.C(aclk),
        .CE(counter_delay0),
        .D(data0[19]),
        .Q(\counter_delay_reg_n_0_[19] ),
        .R(\counter_delay[19]_i_1_n_0 ));
  FDRE \counter_delay_reg[1] 
       (.C(aclk),
        .CE(counter_delay0),
        .D(data0[1]),
        .Q(\counter_delay_reg_n_0_[1] ),
        .R(\counter_delay[19]_i_1_n_0 ));
  FDRE \counter_delay_reg[2] 
       (.C(aclk),
        .CE(counter_delay0),
        .D(data0[2]),
        .Q(\counter_delay_reg_n_0_[2] ),
        .R(\counter_delay[19]_i_1_n_0 ));
  FDRE \counter_delay_reg[3] 
       (.C(aclk),
        .CE(counter_delay0),
        .D(data0[3]),
        .Q(\counter_delay_reg_n_0_[3] ),
        .R(\counter_delay[19]_i_1_n_0 ));
  FDRE \counter_delay_reg[4] 
       (.C(aclk),
        .CE(counter_delay0),
        .D(data0[4]),
        .Q(\counter_delay_reg_n_0_[4] ),
        .R(\counter_delay[19]_i_1_n_0 ));
  FDRE \counter_delay_reg[5] 
       (.C(aclk),
        .CE(counter_delay0),
        .D(data0[5]),
        .Q(\counter_delay_reg_n_0_[5] ),
        .R(\counter_delay[19]_i_1_n_0 ));
  FDRE \counter_delay_reg[6] 
       (.C(aclk),
        .CE(counter_delay0),
        .D(data0[6]),
        .Q(\counter_delay_reg_n_0_[6] ),
        .R(\counter_delay[19]_i_1_n_0 ));
  FDRE \counter_delay_reg[7] 
       (.C(aclk),
        .CE(counter_delay0),
        .D(data0[7]),
        .Q(\counter_delay_reg_n_0_[7] ),
        .R(\counter_delay[19]_i_1_n_0 ));
  FDRE \counter_delay_reg[8] 
       (.C(aclk),
        .CE(counter_delay0),
        .D(data0[8]),
        .Q(\counter_delay_reg_n_0_[8] ),
        .R(\counter_delay[19]_i_1_n_0 ));
  FDRE \counter_delay_reg[9] 
       (.C(aclk),
        .CE(counter_delay0),
        .D(data0[9]),
        .Q(\counter_delay_reg_n_0_[9] ),
        .R(\counter_delay[19]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    data_ready_rx_reg
       (.C(aclk),
        .CE(data_ready_rx0),
        .CLR(data_ready_rx_reg_n_0),
        .D(s_axis_tvalid),
        .Q(data_ready_rx_reg_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_b_reg[0] 
       (.CLR(1'b0),
        .D(\led_b_reg_reg_n_0_[0] ),
        .G(data_ready_rx_reg_n_0),
        .GE(1'b1),
        .Q(led_b[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_b_reg[1] 
       (.CLR(1'b0),
        .D(\led_b_reg_reg_n_0_[1] ),
        .G(data_ready_rx_reg_n_0),
        .GE(1'b1),
        .Q(led_b[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_b_reg[2] 
       (.CLR(1'b0),
        .D(\led_b_reg_reg_n_0_[2] ),
        .G(data_ready_rx_reg_n_0),
        .GE(1'b1),
        .Q(led_b[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_b_reg[3] 
       (.CLR(1'b0),
        .D(\led_b_reg_reg_n_0_[3] ),
        .G(data_ready_rx_reg_n_0),
        .GE(1'b1),
        .Q(led_b[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_b_reg[4] 
       (.CLR(1'b0),
        .D(\led_b_reg_reg_n_0_[4] ),
        .G(data_ready_rx_reg_n_0),
        .GE(1'b1),
        .Q(led_b[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_b_reg[5] 
       (.CLR(1'b0),
        .D(\led_b_reg_reg_n_0_[5] ),
        .G(data_ready_rx_reg_n_0),
        .GE(1'b1),
        .Q(led_b[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_b_reg[6] 
       (.CLR(1'b0),
        .D(\led_b_reg_reg_n_0_[6] ),
        .G(data_ready_rx_reg_n_0),
        .GE(1'b1),
        .Q(led_b[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_b_reg[7] 
       (.CLR(1'b0),
        .D(\led_b_reg_reg_n_0_[7] ),
        .G(data_ready_rx_reg_n_0),
        .GE(1'b1),
        .Q(led_b[7]));
  LUT5 #(
    .INIT(32'h00000080)) 
    \led_b_reg[7]_i_1 
       (.I0(rx_state__0[2]),
        .I1(s_axis_tvalid),
        .I2(aresetn),
        .I3(rx_state__0[1]),
        .I4(rx_state__0[0]),
        .O(data_ready_rx0));
  FDRE \led_b_reg_reg[0] 
       (.C(aclk),
        .CE(data_ready_rx0),
        .D(s_axis_tdata[0]),
        .Q(\led_b_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \led_b_reg_reg[1] 
       (.C(aclk),
        .CE(data_ready_rx0),
        .D(s_axis_tdata[1]),
        .Q(\led_b_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \led_b_reg_reg[2] 
       (.C(aclk),
        .CE(data_ready_rx0),
        .D(s_axis_tdata[2]),
        .Q(\led_b_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \led_b_reg_reg[3] 
       (.C(aclk),
        .CE(data_ready_rx0),
        .D(s_axis_tdata[3]),
        .Q(\led_b_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \led_b_reg_reg[4] 
       (.C(aclk),
        .CE(data_ready_rx0),
        .D(s_axis_tdata[4]),
        .Q(\led_b_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \led_b_reg_reg[5] 
       (.C(aclk),
        .CE(data_ready_rx0),
        .D(s_axis_tdata[5]),
        .Q(\led_b_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \led_b_reg_reg[6] 
       (.C(aclk),
        .CE(data_ready_rx0),
        .D(s_axis_tdata[6]),
        .Q(\led_b_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \led_b_reg_reg[7] 
       (.C(aclk),
        .CE(data_ready_rx0),
        .D(s_axis_tdata[7]),
        .Q(\led_b_reg_reg_n_0_[7] ),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_g_reg[0] 
       (.CLR(1'b0),
        .D(\led_g_reg_reg_n_0_[0] ),
        .G(data_ready_rx_reg_n_0),
        .GE(1'b1),
        .Q(led_g[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_g_reg[1] 
       (.CLR(1'b0),
        .D(\led_g_reg_reg_n_0_[1] ),
        .G(data_ready_rx_reg_n_0),
        .GE(1'b1),
        .Q(led_g[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_g_reg[2] 
       (.CLR(1'b0),
        .D(\led_g_reg_reg_n_0_[2] ),
        .G(data_ready_rx_reg_n_0),
        .GE(1'b1),
        .Q(led_g[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_g_reg[3] 
       (.CLR(1'b0),
        .D(\led_g_reg_reg_n_0_[3] ),
        .G(data_ready_rx_reg_n_0),
        .GE(1'b1),
        .Q(led_g[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_g_reg[4] 
       (.CLR(1'b0),
        .D(\led_g_reg_reg_n_0_[4] ),
        .G(data_ready_rx_reg_n_0),
        .GE(1'b1),
        .Q(led_g[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_g_reg[5] 
       (.CLR(1'b0),
        .D(\led_g_reg_reg_n_0_[5] ),
        .G(data_ready_rx_reg_n_0),
        .GE(1'b1),
        .Q(led_g[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_g_reg[6] 
       (.CLR(1'b0),
        .D(\led_g_reg_reg_n_0_[6] ),
        .G(data_ready_rx_reg_n_0),
        .GE(1'b1),
        .Q(led_g[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_g_reg[7] 
       (.CLR(1'b0),
        .D(\led_g_reg_reg_n_0_[7] ),
        .G(data_ready_rx_reg_n_0),
        .GE(1'b1),
        .Q(led_g[7]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \led_g_reg[7]_i_1 
       (.I0(rx_state__0[0]),
        .I1(s_axis_tvalid),
        .I2(aresetn),
        .I3(rx_state__0[2]),
        .I4(rx_state__0[1]),
        .O(led_g_reg0));
  FDRE \led_g_reg_reg[0] 
       (.C(aclk),
        .CE(led_g_reg0),
        .D(s_axis_tdata[0]),
        .Q(\led_g_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \led_g_reg_reg[1] 
       (.C(aclk),
        .CE(led_g_reg0),
        .D(s_axis_tdata[1]),
        .Q(\led_g_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \led_g_reg_reg[2] 
       (.C(aclk),
        .CE(led_g_reg0),
        .D(s_axis_tdata[2]),
        .Q(\led_g_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \led_g_reg_reg[3] 
       (.C(aclk),
        .CE(led_g_reg0),
        .D(s_axis_tdata[3]),
        .Q(\led_g_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \led_g_reg_reg[4] 
       (.C(aclk),
        .CE(led_g_reg0),
        .D(s_axis_tdata[4]),
        .Q(\led_g_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \led_g_reg_reg[5] 
       (.C(aclk),
        .CE(led_g_reg0),
        .D(s_axis_tdata[5]),
        .Q(\led_g_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \led_g_reg_reg[6] 
       (.C(aclk),
        .CE(led_g_reg0),
        .D(s_axis_tdata[6]),
        .Q(\led_g_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \led_g_reg_reg[7] 
       (.C(aclk),
        .CE(led_g_reg0),
        .D(s_axis_tdata[7]),
        .Q(\led_g_reg_reg_n_0_[7] ),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_r_reg[0] 
       (.CLR(1'b0),
        .D(\led_r_reg_reg_n_0_[0] ),
        .G(data_ready_rx_reg_n_0),
        .GE(1'b1),
        .Q(led_r[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_r_reg[1] 
       (.CLR(1'b0),
        .D(\led_r_reg_reg_n_0_[1] ),
        .G(data_ready_rx_reg_n_0),
        .GE(1'b1),
        .Q(led_r[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_r_reg[2] 
       (.CLR(1'b0),
        .D(\led_r_reg_reg_n_0_[2] ),
        .G(data_ready_rx_reg_n_0),
        .GE(1'b1),
        .Q(led_r[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_r_reg[3] 
       (.CLR(1'b0),
        .D(\led_r_reg_reg_n_0_[3] ),
        .G(data_ready_rx_reg_n_0),
        .GE(1'b1),
        .Q(led_r[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_r_reg[4] 
       (.CLR(1'b0),
        .D(\led_r_reg_reg_n_0_[4] ),
        .G(data_ready_rx_reg_n_0),
        .GE(1'b1),
        .Q(led_r[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_r_reg[5] 
       (.CLR(1'b0),
        .D(\led_r_reg_reg_n_0_[5] ),
        .G(data_ready_rx_reg_n_0),
        .GE(1'b1),
        .Q(led_r[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_r_reg[6] 
       (.CLR(1'b0),
        .D(\led_r_reg_reg_n_0_[6] ),
        .G(data_ready_rx_reg_n_0),
        .GE(1'b1),
        .Q(led_r[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_r_reg[7] 
       (.CLR(1'b0),
        .D(\led_r_reg_reg_n_0_[7] ),
        .G(data_ready_rx_reg_n_0),
        .GE(1'b1),
        .Q(led_r[7]));
  LUT5 #(
    .INIT(32'h00400000)) 
    \led_r_reg[7]_i_1 
       (.I0(rx_state__0[0]),
        .I1(s_axis_tvalid),
        .I2(aresetn),
        .I3(rx_state__0[2]),
        .I4(rx_state__0[1]),
        .O(led_r_reg0));
  FDRE \led_r_reg_reg[0] 
       (.C(aclk),
        .CE(led_r_reg0),
        .D(s_axis_tdata[0]),
        .Q(\led_r_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \led_r_reg_reg[1] 
       (.C(aclk),
        .CE(led_r_reg0),
        .D(s_axis_tdata[1]),
        .Q(\led_r_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \led_r_reg_reg[2] 
       (.C(aclk),
        .CE(led_r_reg0),
        .D(s_axis_tdata[2]),
        .Q(\led_r_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \led_r_reg_reg[3] 
       (.C(aclk),
        .CE(led_r_reg0),
        .D(s_axis_tdata[3]),
        .Q(\led_r_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \led_r_reg_reg[4] 
       (.C(aclk),
        .CE(led_r_reg0),
        .D(s_axis_tdata[4]),
        .Q(\led_r_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \led_r_reg_reg[5] 
       (.C(aclk),
        .CE(led_r_reg0),
        .D(s_axis_tdata[5]),
        .Q(\led_r_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \led_r_reg_reg[6] 
       (.C(aclk),
        .CE(led_r_reg0),
        .D(s_axis_tdata[6]),
        .Q(\led_r_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \led_r_reg_reg[7] 
       (.C(aclk),
        .CE(led_r_reg0),
        .D(s_axis_tdata[7]),
        .Q(\led_r_reg_reg_n_0_[7] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hF388C088)) 
    \m_axis_tdata[0]_i_1 
       (.I0(jstk_y[0]),
        .I1(tx_state__0[1]),
        .I2(btn_jstk),
        .I3(tx_state__0[0]),
        .I4(jstk_x[0]),
        .O(\m_axis_tdata[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF388C088)) 
    \m_axis_tdata[1]_i_1 
       (.I0(jstk_y[1]),
        .I1(tx_state__0[1]),
        .I2(btn_trigger),
        .I3(tx_state__0[0]),
        .I4(jstk_x[1]),
        .O(\m_axis_tdata[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \m_axis_tdata[2]_i_1 
       (.I0(jstk_y[2]),
        .I1(jstk_x[2]),
        .I2(tx_state__0[0]),
        .I3(tx_state__0[1]),
        .O(\m_axis_tdata[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \m_axis_tdata[3]_i_1 
       (.I0(jstk_y[3]),
        .I1(jstk_x[3]),
        .I2(tx_state__0[0]),
        .I3(tx_state__0[1]),
        .O(\m_axis_tdata[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \m_axis_tdata[4]_i_1 
       (.I0(jstk_y[4]),
        .I1(jstk_x[4]),
        .I2(tx_state__0[0]),
        .I3(tx_state__0[1]),
        .O(\m_axis_tdata[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \m_axis_tdata[5]_i_1 
       (.I0(jstk_y[5]),
        .I1(jstk_x[5]),
        .I2(tx_state__0[0]),
        .I3(tx_state__0[1]),
        .O(\m_axis_tdata[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h4F45)) 
    \m_axis_tdata[6]_i_1 
       (.I0(tx_state__0[1]),
        .I1(jstk_x[6]),
        .I2(tx_state__0[0]),
        .I3(jstk_y[6]),
        .O(\m_axis_tdata[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5400550000000100)) 
    \m_axis_tdata[7]_i_1 
       (.I0(tx_state__0[2]),
        .I1(tx_state__0[0]),
        .I2(tx_state__0[1]),
        .I3(aresetn),
        .I4(\m_axis_tdata[7]_i_3_n_0 ),
        .I5(m_axis_tready),
        .O(m_axis_tdata0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata[7]_i_2 
       (.I0(tx_state__0[0]),
        .I1(tx_state__0[1]),
        .O(\m_axis_tdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \m_axis_tdata[7]_i_3 
       (.I0(\m_axis_tdata[7]_i_4_n_0 ),
        .I1(\m_axis_tdata[7]_i_5_n_0 ),
        .I2(\m_axis_tdata[7]_i_6_n_0 ),
        .I3(\m_axis_tdata[7]_i_7_n_0 ),
        .I4(\m_axis_tdata[7]_i_8_n_0 ),
        .I5(\counter_delay_reg_n_0_[0] ),
        .O(\m_axis_tdata[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \m_axis_tdata[7]_i_4 
       (.I0(\counter_delay_reg_n_0_[6] ),
        .I1(\counter_delay_reg_n_0_[7] ),
        .I2(\counter_delay_reg_n_0_[9] ),
        .I3(\counter_delay_reg_n_0_[8] ),
        .O(\m_axis_tdata[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata[7]_i_5 
       (.I0(\counter_delay_reg_n_0_[11] ),
        .I1(\counter_delay_reg_n_0_[10] ),
        .I2(\counter_delay_reg_n_0_[13] ),
        .I3(\counter_delay_reg_n_0_[12] ),
        .O(\m_axis_tdata[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hF7)) 
    \m_axis_tdata[7]_i_6 
       (.I0(\counter_delay_reg_n_0_[19] ),
        .I1(\counter_delay_reg_n_0_[18] ),
        .I2(\counter_delay_reg_n_0_[1] ),
        .O(\m_axis_tdata[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \m_axis_tdata[7]_i_7 
       (.I0(\counter_delay_reg_n_0_[14] ),
        .I1(\counter_delay_reg_n_0_[15] ),
        .I2(\counter_delay_reg_n_0_[17] ),
        .I3(\counter_delay_reg_n_0_[16] ),
        .O(\m_axis_tdata[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata[7]_i_8 
       (.I0(\counter_delay_reg_n_0_[3] ),
        .I1(\counter_delay_reg_n_0_[2] ),
        .I2(\counter_delay_reg_n_0_[5] ),
        .I3(\counter_delay_reg_n_0_[4] ),
        .O(\m_axis_tdata[7]_i_8_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    m_axis_tvalid_INST_0
       (.I0(tx_state__0[2]),
        .I1(tx_state__0[0]),
        .I2(tx_state__0[1]),
        .O(m_axis_tvalid));
  LUT3 #(
    .INIT(8'hFE)) 
    s_axis_tready_INST_0
       (.I0(rx_state__0[1]),
        .I1(rx_state__0[0]),
        .I2(rx_state__0[2]),
        .O(s_axis_tready));
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

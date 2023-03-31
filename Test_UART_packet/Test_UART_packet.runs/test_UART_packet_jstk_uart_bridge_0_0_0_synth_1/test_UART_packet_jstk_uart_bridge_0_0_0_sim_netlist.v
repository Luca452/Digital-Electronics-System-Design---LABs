// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Mar 31 17:10:12 2023
// Host        : DESKTOP-JKUPK39 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ test_UART_packet_jstk_uart_bridge_0_0_0_sim_netlist.v
// Design      : test_UART_packet_jstk_uart_bridge_0_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_jstk_uart_bridge_0
   (m_axis_tdata,
    m_axis_tvalid,
    aclk,
    aresetn,
    m_axis_tready);
  output [2:0]m_axis_tdata;
  output m_axis_tvalid;
  input aclk;
  input aresetn;
  input m_axis_tready;

  wire \FSM_sequential_tx_state[0]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[0]_i_3_n_0 ;
  wire \FSM_sequential_tx_state[0]_i_4_n_0 ;
  wire \FSM_sequential_tx_state[0]_i_5_n_0 ;
  wire \FSM_sequential_tx_state[0]_i_6_n_0 ;
  wire \FSM_sequential_tx_state[0]_i_7_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_3_n_0 ;
  wire aclk;
  wire aresetn;
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
  wire [2:0]m_axis_tdata;
  wire \m_axis_tdata[0]_i_1_n_0 ;
  wire \m_axis_tdata[1]_i_1_n_0 ;
  wire \m_axis_tdata[7]_i_1_n_0 ;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [2:0]tx_state;
  wire [2:0]tx_state__0;
  wire [3:2]NLW_counter_delay0_carry__3_CO_UNCONNECTED;
  wire [3:3]NLW_counter_delay0_carry__3_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h000E)) 
    \FSM_sequential_tx_state[0]_i_1 
       (.I0(\FSM_sequential_tx_state[0]_i_2_n_0 ),
        .I1(tx_state[1]),
        .I2(tx_state[0]),
        .I3(tx_state[2]),
        .O(tx_state__0[0]));
  LUT5 #(
    .INIT(32'h00000004)) 
    \FSM_sequential_tx_state[0]_i_2 
       (.I0(\FSM_sequential_tx_state[0]_i_3_n_0 ),
        .I1(\FSM_sequential_tx_state[0]_i_4_n_0 ),
        .I2(\FSM_sequential_tx_state[0]_i_5_n_0 ),
        .I3(\FSM_sequential_tx_state[0]_i_6_n_0 ),
        .I4(\FSM_sequential_tx_state[0]_i_7_n_0 ),
        .O(\FSM_sequential_tx_state[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \FSM_sequential_tx_state[0]_i_3 
       (.I0(\counter_delay_reg_n_0_[18] ),
        .I1(\counter_delay_reg_n_0_[15] ),
        .I2(\counter_delay_reg_n_0_[17] ),
        .I3(\counter_delay_reg_n_0_[2] ),
        .O(\FSM_sequential_tx_state[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \FSM_sequential_tx_state[0]_i_4 
       (.I0(\counter_delay_reg_n_0_[3] ),
        .I1(\counter_delay_reg_n_0_[12] ),
        .I2(\counter_delay_reg_n_0_[9] ),
        .I3(\counter_delay_reg_n_0_[8] ),
        .O(\FSM_sequential_tx_state[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \FSM_sequential_tx_state[0]_i_5 
       (.I0(\counter_delay_reg_n_0_[14] ),
        .I1(\counter_delay_reg_n_0_[4] ),
        .I2(\counter_delay_reg_n_0_[5] ),
        .I3(\counter_delay_reg_n_0_[1] ),
        .O(\FSM_sequential_tx_state[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \FSM_sequential_tx_state[0]_i_6 
       (.I0(\counter_delay_reg_n_0_[19] ),
        .I1(\counter_delay_reg_n_0_[7] ),
        .I2(\counter_delay_reg_n_0_[6] ),
        .I3(\counter_delay_reg_n_0_[0] ),
        .O(\FSM_sequential_tx_state[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \FSM_sequential_tx_state[0]_i_7 
       (.I0(\counter_delay_reg_n_0_[11] ),
        .I1(\counter_delay_reg_n_0_[10] ),
        .I2(\counter_delay_reg_n_0_[16] ),
        .I3(\counter_delay_reg_n_0_[13] ),
        .O(\FSM_sequential_tx_state[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \FSM_sequential_tx_state[1]_i_1 
       (.I0(tx_state[0]),
        .I1(tx_state[1]),
        .I2(tx_state[2]),
        .O(tx_state__0[1]));
  LUT4 #(
    .INIT(16'h222B)) 
    \FSM_sequential_tx_state[2]_i_1 
       (.I0(m_axis_tready),
        .I1(tx_state[2]),
        .I2(tx_state[0]),
        .I3(tx_state[1]),
        .O(\FSM_sequential_tx_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_sequential_tx_state[2]_i_2 
       (.I0(tx_state[0]),
        .I1(tx_state[1]),
        .I2(tx_state[2]),
        .O(tx_state__0[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_tx_state[2]_i_3 
       (.I0(aresetn),
        .O(\FSM_sequential_tx_state[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "send_jstk_x:010,send_jstk_y:011,send_buttons:100,delay:000,send_header:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[0] 
       (.C(aclk),
        .CE(\FSM_sequential_tx_state[2]_i_1_n_0 ),
        .CLR(\FSM_sequential_tx_state[2]_i_3_n_0 ),
        .D(tx_state__0[0]),
        .Q(tx_state[0]));
  (* FSM_ENCODED_STATES = "send_jstk_x:010,send_jstk_y:011,send_buttons:100,delay:000,send_header:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[1] 
       (.C(aclk),
        .CE(\FSM_sequential_tx_state[2]_i_1_n_0 ),
        .CLR(\FSM_sequential_tx_state[2]_i_3_n_0 ),
        .D(tx_state__0[1]),
        .Q(tx_state[1]));
  (* FSM_ENCODED_STATES = "send_jstk_x:010,send_jstk_y:011,send_buttons:100,delay:000,send_header:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[2] 
       (.C(aclk),
        .CE(\FSM_sequential_tx_state[2]_i_1_n_0 ),
        .CLR(\FSM_sequential_tx_state[2]_i_3_n_0 ),
        .D(tx_state__0[2]),
        .Q(tx_state[2]));
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter_delay[0]_i_1 
       (.I0(\counter_delay_reg_n_0_[0] ),
        .O(\counter_delay[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \counter_delay[19]_i_1 
       (.I0(\FSM_sequential_tx_state[0]_i_2_n_0 ),
        .I1(tx_state[1]),
        .I2(tx_state[0]),
        .I3(tx_state[2]),
        .I4(aresetn),
        .O(\counter_delay[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \counter_delay[19]_i_2 
       (.I0(aresetn),
        .I1(tx_state[2]),
        .I2(tx_state[0]),
        .I3(tx_state[1]),
        .O(counter_delay0));
  FDRE \counter_delay_reg[0] 
       (.C(aclk),
        .CE(counter_delay0),
        .D(\counter_delay[0]_i_1_n_0 ),
        .Q(\counter_delay_reg_n_0_[0] ),
        .R(\counter_delay[19]_i_1_n_0 ));
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
  LUT6 #(
    .INIT(64'hBBFFFFFF12000000)) 
    \m_axis_tdata[0]_i_1 
       (.I0(tx_state[2]),
        .I1(tx_state[0]),
        .I2(tx_state[1]),
        .I3(m_axis_tready),
        .I4(aresetn),
        .I5(m_axis_tdata[0]),
        .O(\m_axis_tdata[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEBFFFFFF42000000)) 
    \m_axis_tdata[1]_i_1 
       (.I0(tx_state[2]),
        .I1(tx_state[0]),
        .I2(tx_state[1]),
        .I3(m_axis_tready),
        .I4(aresetn),
        .I5(m_axis_tdata[1]),
        .O(\m_axis_tdata[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF56000000)) 
    \m_axis_tdata[7]_i_1 
       (.I0(tx_state[2]),
        .I1(tx_state[0]),
        .I2(tx_state[1]),
        .I3(m_axis_tready),
        .I4(aresetn),
        .I5(m_axis_tdata[2]),
        .O(\m_axis_tdata[7]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_axis_tdata[0]_i_1_n_0 ),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_axis_tdata[1]_i_1_n_0 ),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_axis_tdata[7]_i_1_n_0 ),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    m_axis_tvalid_INST_0
       (.I0(tx_state[1]),
        .I1(tx_state[0]),
        .I2(tx_state[2]),
        .O(m_axis_tvalid));
endmodule

(* CHECK_LICENSE_TYPE = "test_UART_packet_jstk_uart_bridge_0_0_0,jstk_uart_bridge_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "jstk_uart_bridge_0,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tready);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [7:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [6:0]\^m_axis_tdata ;
  wire m_axis_tready;
  wire m_axis_tvalid;

  assign m_axis_tdata[7] = \^m_axis_tdata [6];
  assign m_axis_tdata[6] = \^m_axis_tdata [6];
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1:0] = \^m_axis_tdata [1:0];
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_jstk_uart_bridge_0 U0
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axis_tdata({\^m_axis_tdata [6],\^m_axis_tdata [1:0]}),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid));
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

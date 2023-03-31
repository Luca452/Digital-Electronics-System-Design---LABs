// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Mar 31 18:43:00 2023
// Host        : DESKTOP-JKUPK39 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ joysticktester_digilent_jstk2_0_1_sim_netlist.v
// Design      : joysticktester_digilent_jstk2_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_digilent_jstk2
   (m_axis_tdata,
    m_axis_tvalid,
    aclk,
    aresetn,
    m_axis_tready);
  output [1:0]m_axis_tdata;
  output m_axis_tvalid;
  input aclk;
  input aresetn;
  input m_axis_tready;

  wire \FSM_sequential_state_cmd[2]_i_1_n_0 ;
  wire \FSM_sequential_state_cmd[2]_i_3_n_0 ;
  wire \FSM_sequential_state_cmd[2]_i_4_n_0 ;
  wire aclk;
  wire aresetn;
  wire [11:1]data0;
  wire [1:0]m_axis_tdata;
  wire \m_axis_tdata[6]_i_1_n_0 ;
  wire \m_axis_tdata[7]_i_1_n_0 ;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [2:0]state_cmd__0;
  wire [2:0]state_cmd__1;
  wire [11:0]tx_delay_counter;
  wire \tx_delay_counter0_inferred__0/i__carry__0_n_0 ;
  wire \tx_delay_counter0_inferred__0/i__carry__0_n_1 ;
  wire \tx_delay_counter0_inferred__0/i__carry__0_n_2 ;
  wire \tx_delay_counter0_inferred__0/i__carry__0_n_3 ;
  wire \tx_delay_counter0_inferred__0/i__carry__1_n_2 ;
  wire \tx_delay_counter0_inferred__0/i__carry__1_n_3 ;
  wire \tx_delay_counter0_inferred__0/i__carry_n_0 ;
  wire \tx_delay_counter0_inferred__0/i__carry_n_1 ;
  wire \tx_delay_counter0_inferred__0/i__carry_n_2 ;
  wire \tx_delay_counter0_inferred__0/i__carry_n_3 ;
  wire \tx_delay_counter[0]_i_1_n_0 ;
  wire \tx_delay_counter[0]_i_2_n_0 ;
  wire \tx_delay_counter[0]_i_3_n_0 ;
  wire \tx_delay_counter[10]_i_1_n_0 ;
  wire \tx_delay_counter[11]_i_2_n_0 ;
  wire \tx_delay_counter[1]_i_1_n_0 ;
  wire \tx_delay_counter[2]_i_1_n_0 ;
  wire \tx_delay_counter[3]_i_1_n_0 ;
  wire \tx_delay_counter[4]_i_1_n_0 ;
  wire \tx_delay_counter[5]_i_1_n_0 ;
  wire \tx_delay_counter[6]_i_1_n_0 ;
  wire \tx_delay_counter[7]_i_1_n_0 ;
  wire \tx_delay_counter[8]_i_1_n_0 ;
  wire \tx_delay_counter[9]_i_1_n_0 ;
  wire tx_delay_counter_0;
  wire [3:2]\NLW_tx_delay_counter0_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:3]\NLW_tx_delay_counter0_inferred__0/i__carry__1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \FSM_sequential_state_cmd[0]_i_1 
       (.I0(state_cmd__0[1]),
        .I1(state_cmd__0[2]),
        .I2(state_cmd__0[0]),
        .O(state_cmd__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \FSM_sequential_state_cmd[1]_i_1 
       (.I0(state_cmd__0[1]),
        .I1(state_cmd__0[0]),
        .I2(state_cmd__0[2]),
        .O(state_cmd__1[1]));
  LUT5 #(
    .INIT(32'h0A0AAAA3)) 
    \FSM_sequential_state_cmd[2]_i_1 
       (.I0(m_axis_tready),
        .I1(\FSM_sequential_state_cmd[2]_i_4_n_0 ),
        .I2(state_cmd__0[2]),
        .I3(state_cmd__0[0]),
        .I4(state_cmd__0[1]),
        .O(\FSM_sequential_state_cmd[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h42)) 
    \FSM_sequential_state_cmd[2]_i_2 
       (.I0(state_cmd__0[2]),
        .I1(state_cmd__0[0]),
        .I2(state_cmd__0[1]),
        .O(state_cmd__1[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state_cmd[2]_i_3 
       (.I0(aresetn),
        .O(\FSM_sequential_state_cmd[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    \FSM_sequential_state_cmd[2]_i_4 
       (.I0(\tx_delay_counter[0]_i_3_n_0 ),
        .I1(\tx_delay_counter[0]_i_2_n_0 ),
        .I2(tx_delay_counter[1]),
        .I3(tx_delay_counter[10]),
        .I4(tx_delay_counter[11]),
        .I5(tx_delay_counter[0]),
        .O(\FSM_sequential_state_cmd[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "wait_delay:000,send_cmd:001,send_red:010,send_green:011,send_blue:100,send_dummy:101," *) 
  FDCE \FSM_sequential_state_cmd_reg[0] 
       (.C(aclk),
        .CE(\FSM_sequential_state_cmd[2]_i_1_n_0 ),
        .CLR(\FSM_sequential_state_cmd[2]_i_3_n_0 ),
        .D(state_cmd__1[0]),
        .Q(state_cmd__0[0]));
  (* FSM_ENCODED_STATES = "wait_delay:000,send_cmd:001,send_red:010,send_green:011,send_blue:100,send_dummy:101," *) 
  FDCE \FSM_sequential_state_cmd_reg[1] 
       (.C(aclk),
        .CE(\FSM_sequential_state_cmd[2]_i_1_n_0 ),
        .CLR(\FSM_sequential_state_cmd[2]_i_3_n_0 ),
        .D(state_cmd__1[1]),
        .Q(state_cmd__0[1]));
  (* FSM_ENCODED_STATES = "wait_delay:000,send_cmd:001,send_red:010,send_green:011,send_blue:100,send_dummy:101," *) 
  FDCE \FSM_sequential_state_cmd_reg[2] 
       (.C(aclk),
        .CE(\FSM_sequential_state_cmd[2]_i_1_n_0 ),
        .CLR(\FSM_sequential_state_cmd[2]_i_3_n_0 ),
        .D(state_cmd__1[2]),
        .Q(state_cmd__0[2]));
  LUT6 #(
    .INIT(64'hFFFF77FF08080080)) 
    \m_axis_tdata[6]_i_1 
       (.I0(aresetn),
        .I1(m_axis_tready),
        .I2(state_cmd__0[2]),
        .I3(state_cmd__0[0]),
        .I4(state_cmd__0[1]),
        .I5(m_axis_tdata[0]),
        .O(\m_axis_tdata[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFF08080880)) 
    \m_axis_tdata[7]_i_1 
       (.I0(aresetn),
        .I1(m_axis_tready),
        .I2(state_cmd__0[2]),
        .I3(state_cmd__0[0]),
        .I4(state_cmd__0[1]),
        .I5(m_axis_tdata[1]),
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    m_axis_tvalid_INST_0
       (.I0(state_cmd__0[2]),
        .I1(state_cmd__0[0]),
        .I2(state_cmd__0[1]),
        .O(m_axis_tvalid));
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
        .CO({\NLW_tx_delay_counter0_inferred__0/i__carry__1_CO_UNCONNECTED [3:2],\tx_delay_counter0_inferred__0/i__carry__1_n_2 ,\tx_delay_counter0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_tx_delay_counter0_inferred__0/i__carry__1_O_UNCONNECTED [3],data0[11:9]}),
        .S({1'b0,tx_delay_counter[11:9]}));
  LUT6 #(
    .INIT(64'h00000000FFFFFFF7)) 
    \tx_delay_counter[0]_i_1 
       (.I0(tx_delay_counter[11]),
        .I1(tx_delay_counter[10]),
        .I2(tx_delay_counter[1]),
        .I3(\tx_delay_counter[0]_i_2_n_0 ),
        .I4(\tx_delay_counter[0]_i_3_n_0 ),
        .I5(tx_delay_counter[0]),
        .O(\tx_delay_counter[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \tx_delay_counter[0]_i_2 
       (.I0(tx_delay_counter[7]),
        .I1(tx_delay_counter[6]),
        .I2(tx_delay_counter[9]),
        .I3(tx_delay_counter[8]),
        .O(\tx_delay_counter[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \tx_delay_counter[0]_i_3 
       (.I0(tx_delay_counter[3]),
        .I1(tx_delay_counter[2]),
        .I2(tx_delay_counter[5]),
        .I3(tx_delay_counter[4]),
        .O(\tx_delay_counter[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_delay_counter[10]_i_1 
       (.I0(\FSM_sequential_state_cmd[2]_i_4_n_0 ),
        .I1(data0[10]),
        .O(\tx_delay_counter[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \tx_delay_counter[11]_i_1 
       (.I0(state_cmd__0[1]),
        .I1(state_cmd__0[0]),
        .I2(state_cmd__0[2]),
        .O(tx_delay_counter_0));
  LUT2 #(
    .INIT(4'h8)) 
    \tx_delay_counter[11]_i_2 
       (.I0(\FSM_sequential_state_cmd[2]_i_4_n_0 ),
        .I1(data0[11]),
        .O(\tx_delay_counter[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_delay_counter[1]_i_1 
       (.I0(\FSM_sequential_state_cmd[2]_i_4_n_0 ),
        .I1(data0[1]),
        .O(\tx_delay_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_delay_counter[2]_i_1 
       (.I0(\FSM_sequential_state_cmd[2]_i_4_n_0 ),
        .I1(data0[2]),
        .O(\tx_delay_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_delay_counter[3]_i_1 
       (.I0(\FSM_sequential_state_cmd[2]_i_4_n_0 ),
        .I1(data0[3]),
        .O(\tx_delay_counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_delay_counter[4]_i_1 
       (.I0(\FSM_sequential_state_cmd[2]_i_4_n_0 ),
        .I1(data0[4]),
        .O(\tx_delay_counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_delay_counter[5]_i_1 
       (.I0(\FSM_sequential_state_cmd[2]_i_4_n_0 ),
        .I1(data0[5]),
        .O(\tx_delay_counter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_delay_counter[6]_i_1 
       (.I0(\FSM_sequential_state_cmd[2]_i_4_n_0 ),
        .I1(data0[6]),
        .O(\tx_delay_counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_delay_counter[7]_i_1 
       (.I0(\FSM_sequential_state_cmd[2]_i_4_n_0 ),
        .I1(data0[7]),
        .O(\tx_delay_counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_delay_counter[8]_i_1 
       (.I0(\FSM_sequential_state_cmd[2]_i_4_n_0 ),
        .I1(data0[8]),
        .O(\tx_delay_counter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_delay_counter[9]_i_1 
       (.I0(\FSM_sequential_state_cmd[2]_i_4_n_0 ),
        .I1(data0[9]),
        .O(\tx_delay_counter[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \tx_delay_counter_reg[0] 
       (.C(aclk),
        .CE(tx_delay_counter_0),
        .CLR(\FSM_sequential_state_cmd[2]_i_3_n_0 ),
        .D(\tx_delay_counter[0]_i_1_n_0 ),
        .Q(tx_delay_counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_delay_counter_reg[10] 
       (.C(aclk),
        .CE(tx_delay_counter_0),
        .CLR(\FSM_sequential_state_cmd[2]_i_3_n_0 ),
        .D(\tx_delay_counter[10]_i_1_n_0 ),
        .Q(tx_delay_counter[10]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_delay_counter_reg[11] 
       (.C(aclk),
        .CE(tx_delay_counter_0),
        .CLR(\FSM_sequential_state_cmd[2]_i_3_n_0 ),
        .D(\tx_delay_counter[11]_i_2_n_0 ),
        .Q(tx_delay_counter[11]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_delay_counter_reg[1] 
       (.C(aclk),
        .CE(tx_delay_counter_0),
        .CLR(\FSM_sequential_state_cmd[2]_i_3_n_0 ),
        .D(\tx_delay_counter[1]_i_1_n_0 ),
        .Q(tx_delay_counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_delay_counter_reg[2] 
       (.C(aclk),
        .CE(tx_delay_counter_0),
        .CLR(\FSM_sequential_state_cmd[2]_i_3_n_0 ),
        .D(\tx_delay_counter[2]_i_1_n_0 ),
        .Q(tx_delay_counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_delay_counter_reg[3] 
       (.C(aclk),
        .CE(tx_delay_counter_0),
        .CLR(\FSM_sequential_state_cmd[2]_i_3_n_0 ),
        .D(\tx_delay_counter[3]_i_1_n_0 ),
        .Q(tx_delay_counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_delay_counter_reg[4] 
       (.C(aclk),
        .CE(tx_delay_counter_0),
        .CLR(\FSM_sequential_state_cmd[2]_i_3_n_0 ),
        .D(\tx_delay_counter[4]_i_1_n_0 ),
        .Q(tx_delay_counter[4]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_delay_counter_reg[5] 
       (.C(aclk),
        .CE(tx_delay_counter_0),
        .CLR(\FSM_sequential_state_cmd[2]_i_3_n_0 ),
        .D(\tx_delay_counter[5]_i_1_n_0 ),
        .Q(tx_delay_counter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_delay_counter_reg[6] 
       (.C(aclk),
        .CE(tx_delay_counter_0),
        .CLR(\FSM_sequential_state_cmd[2]_i_3_n_0 ),
        .D(\tx_delay_counter[6]_i_1_n_0 ),
        .Q(tx_delay_counter[6]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_delay_counter_reg[7] 
       (.C(aclk),
        .CE(tx_delay_counter_0),
        .CLR(\FSM_sequential_state_cmd[2]_i_3_n_0 ),
        .D(\tx_delay_counter[7]_i_1_n_0 ),
        .Q(tx_delay_counter[7]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_delay_counter_reg[8] 
       (.C(aclk),
        .CE(tx_delay_counter_0),
        .CLR(\FSM_sequential_state_cmd[2]_i_3_n_0 ),
        .D(\tx_delay_counter[8]_i_1_n_0 ),
        .Q(tx_delay_counter[8]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_delay_counter_reg[9] 
       (.C(aclk),
        .CE(tx_delay_counter_0),
        .CLR(\FSM_sequential_state_cmd[2]_i_3_n_0 ),
        .D(\tx_delay_counter[9]_i_1_n_0 ),
        .Q(tx_delay_counter[9]));
endmodule

(* CHECK_LICENSE_TYPE = "joysticktester_digilent_jstk2_0_1,digilent_jstk2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "digilent_jstk2,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tready,
    s_axis_tvalid,
    s_axis_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [7:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [7:0]s_axis_tdata;

  wire aclk;
  wire aresetn;
  wire [5:2]\^m_axis_tdata ;
  wire m_axis_tready;
  wire m_axis_tvalid;

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
        .m_axis_tdata({\^m_axis_tdata [2],\^m_axis_tdata [5]}),
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

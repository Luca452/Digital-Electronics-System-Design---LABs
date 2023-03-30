// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Mar 29 23:30:31 2023
// Host        : DESKTOP-JKUPK39 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/daido/Desktop/Polimi/Anno
//               4/DESD/LAB2/Color_Grey/Color_Grey.gen/sources_1/bd/Color_Grey/ip/Color_Grey_C2G_0_0/Color_Grey_C2G_0_0_sim_netlist.v}
// Design      : Color_Grey_C2G_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Color_Grey_C2G_0_0,C2G,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "C2G,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module Color_Grey_C2G_0_0
   (clk,
    resetn,
    s_axis_tvalid,
    s_axis_tdata,
    s_axis_tready,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tready);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 resetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [7:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [7:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;

  wire clk;
  wire [7:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire resetn;
  wire [7:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;

  Color_Grey_C2G_0_0_C2G U0
       (.clk(clk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .resetn(resetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "C2G" *) 
module Color_Grey_C2G_0_0_C2G
   (m_axis_tvalid,
    s_axis_tready,
    m_axis_tdata,
    m_axis_tready,
    resetn,
    clk,
    s_axis_tvalid,
    s_axis_tdata);
  output m_axis_tvalid;
  output s_axis_tready;
  output [7:0]m_axis_tdata;
  input m_axis_tready;
  input resetn;
  input clk;
  input s_axis_tvalid;
  input [7:0]s_axis_tdata;

  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_2_n_0 ;
  wire \FSM_onehot_state[1]_i_3_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire clk;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire [8:0]in5;
  wire [7:0]m_axis_tdata;
  wire m_axis_tdata0;
  wire \m_axis_tdata[0]_i_1_n_0 ;
  wire \m_axis_tdata[0]_i_2_n_0 ;
  wire \m_axis_tdata[1]_i_1_n_0 ;
  wire \m_axis_tdata[2]_i_1_n_0 ;
  wire \m_axis_tdata[3]_i_1_n_0 ;
  wire \m_axis_tdata[4]_i_1_n_0 ;
  wire \m_axis_tdata[5]_i_1_n_0 ;
  wire \m_axis_tdata[6]_i_1_n_0 ;
  wire \m_axis_tdata[7]_i_2_n_0 ;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire resetn;
  wire [8:0]result;
  wire result0;
  wire \result[3]_i_2_n_0 ;
  wire \result[3]_i_3_n_0 ;
  wire \result[3]_i_4_n_0 ;
  wire \result[3]_i_5_n_0 ;
  wire \result[7]_i_2_n_0 ;
  wire \result[7]_i_3_n_0 ;
  wire \result[7]_i_4_n_0 ;
  wire \result[7]_i_5_n_0 ;
  wire \result[8]_i_1_n_0 ;
  wire \result[8]_i_4_n_0 ;
  wire \result_reg[3]_i_1_n_0 ;
  wire \result_reg[3]_i_1_n_1 ;
  wire \result_reg[3]_i_1_n_2 ;
  wire \result_reg[3]_i_1_n_3 ;
  wire \result_reg[7]_i_1_n_0 ;
  wire \result_reg[7]_i_1_n_1 ;
  wire \result_reg[7]_i_1_n_2 ;
  wire \result_reg[7]_i_1_n_3 ;
  wire [7:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [3:0]\NLW_result_reg[8]_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_result_reg[8]_i_3_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axis_tready),
        .I2(s_axis_tvalid),
        .I3(m_axis_tready),
        .I4(m_axis_tvalid),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFEFFEEEE)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(m_axis_tvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[0] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(s_axis_tready),
        .O(\FSM_onehot_state[1]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_state[1]_i_3 
       (.I0(resetn),
        .O(\FSM_onehot_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(s_axis_tready),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[0] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:001,receive:010,transmit:100" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_state[1]_i_1_n_0 ),
        .D(1'b0),
        .PRE(\FSM_onehot_state[1]_i_3_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "idle:001,receive:010,transmit:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_state[1]_i_1_n_0 ),
        .CLR(\FSM_onehot_state[1]_i_3_n_0 ),
        .D(\FSM_onehot_state[1]_i_2_n_0 ),
        .Q(s_axis_tready));
  (* FSM_ENCODED_STATES = "idle:001,receive:010,transmit:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_state[1]_i_1_n_0 ),
        .CLR(\FSM_onehot_state[1]_i_3_n_0 ),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(m_axis_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h3FFF4000)) 
    \counter[0]_i_1 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(s_axis_tvalid),
        .I2(s_axis_tready),
        .I3(resetn),
        .I4(\counter_reg_n_0_[0] ),
        .O(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h3FFF8000)) 
    \counter[1]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(s_axis_tvalid),
        .I2(s_axis_tready),
        .I3(resetn),
        .I4(\counter_reg_n_0_[1] ),
        .O(\counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter[0]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter[1]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hC82BBC32B3C22BEC)) 
    \m_axis_tdata[0]_i_1 
       (.I0(result[0]),
        .I1(result[2]),
        .I2(result[3]),
        .I3(\m_axis_tdata[0]_i_2_n_0 ),
        .I4(\m_axis_tdata[3]_i_1_n_0 ),
        .I5(result[1]),
        .O(\m_axis_tdata[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h79E79E7986186186)) 
    \m_axis_tdata[0]_i_2 
       (.I0(result[4]),
        .I1(result[6]),
        .I2(result[7]),
        .I3(result[8]),
        .I4(result[5]),
        .I5(result[3]),
        .O(\m_axis_tdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC2BC833E833EC2BC)) 
    \m_axis_tdata[1]_i_1 
       (.I0(result[1]),
        .I1(result[3]),
        .I2(\m_axis_tdata[3]_i_1_n_0 ),
        .I3(result[2]),
        .I4(result[4]),
        .I5(\m_axis_tdata[4]_i_1_n_0 ),
        .O(\m_axis_tdata[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hC3BE823C)) 
    \m_axis_tdata[2]_i_1 
       (.I0(result[2]),
        .I1(result[4]),
        .I2(\m_axis_tdata[4]_i_1_n_0 ),
        .I3(result[3]),
        .I4(\m_axis_tdata[3]_i_1_n_0 ),
        .O(\m_axis_tdata[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBC2B2BC22BC2C2BC)) 
    \m_axis_tdata[3]_i_1 
       (.I0(result[3]),
        .I1(result[5]),
        .I2(result[7]),
        .I3(result[8]),
        .I4(result[6]),
        .I5(result[4]),
        .O(\m_axis_tdata[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h2CB2CB2C)) 
    \m_axis_tdata[4]_i_1 
       (.I0(result[4]),
        .I1(result[6]),
        .I2(result[7]),
        .I3(result[8]),
        .I4(result[5]),
        .O(\m_axis_tdata[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hB22C)) 
    \m_axis_tdata[5]_i_1 
       (.I0(result[5]),
        .I1(result[7]),
        .I2(result[8]),
        .I3(result[6]),
        .O(\m_axis_tdata[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h64)) 
    \m_axis_tdata[6]_i_1 
       (.I0(result[7]),
        .I1(result[8]),
        .I2(result[6]),
        .O(\m_axis_tdata[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \m_axis_tdata[7]_i_1 
       (.I0(resetn),
        .I1(s_axis_tready),
        .I2(s_axis_tvalid),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\counter_reg_n_0_[0] ),
        .O(m_axis_tdata0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[7]_i_2 
       (.I0(result[7]),
        .I1(result[8]),
        .O(\m_axis_tdata[7]_i_2_n_0 ));
  FDRE \m_axis_tdata_reg[0] 
       (.C(clk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[0]_i_1_n_0 ),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[1] 
       (.C(clk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[1]_i_1_n_0 ),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[2] 
       (.C(clk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[2]_i_1_n_0 ),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[3] 
       (.C(clk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[3]_i_1_n_0 ),
        .Q(m_axis_tdata[3]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[4] 
       (.C(clk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[4]_i_1_n_0 ),
        .Q(m_axis_tdata[4]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[5] 
       (.C(clk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[5]_i_1_n_0 ),
        .Q(m_axis_tdata[5]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[6] 
       (.C(clk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[6]_i_1_n_0 ),
        .Q(m_axis_tdata[6]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[7] 
       (.C(clk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[7]_i_2_n_0 ),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \result[3]_i_2 
       (.I0(result[3]),
        .I1(s_axis_tdata[3]),
        .O(\result[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[3]_i_3 
       (.I0(result[2]),
        .I1(s_axis_tdata[2]),
        .O(\result[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[3]_i_4 
       (.I0(result[1]),
        .I1(s_axis_tdata[1]),
        .O(\result[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[3]_i_5 
       (.I0(result[0]),
        .I1(s_axis_tdata[0]),
        .O(\result[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[7]_i_2 
       (.I0(result[7]),
        .I1(s_axis_tdata[7]),
        .O(\result[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[7]_i_3 
       (.I0(result[6]),
        .I1(s_axis_tdata[6]),
        .O(\result[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[7]_i_4 
       (.I0(result[5]),
        .I1(s_axis_tdata[5]),
        .O(\result[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[7]_i_5 
       (.I0(result[4]),
        .I1(s_axis_tdata[4]),
        .O(\result[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \result[8]_i_1 
       (.I0(m_axis_tvalid),
        .I1(m_axis_tready),
        .I2(resetn),
        .I3(s_axis_tready),
        .O(\result[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00800080008000)) 
    \result[8]_i_2 
       (.I0(\result[8]_i_4_n_0 ),
        .I1(s_axis_tvalid),
        .I2(s_axis_tready),
        .I3(resetn),
        .I4(m_axis_tready),
        .I5(m_axis_tvalid),
        .O(result0));
  LUT2 #(
    .INIT(4'hB)) 
    \result[8]_i_4 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[1] ),
        .O(\result[8]_i_4_n_0 ));
  FDRE \result_reg[0] 
       (.C(clk),
        .CE(result0),
        .D(in5[0]),
        .Q(result[0]),
        .R(\result[8]_i_1_n_0 ));
  FDRE \result_reg[1] 
       (.C(clk),
        .CE(result0),
        .D(in5[1]),
        .Q(result[1]),
        .R(\result[8]_i_1_n_0 ));
  FDRE \result_reg[2] 
       (.C(clk),
        .CE(result0),
        .D(in5[2]),
        .Q(result[2]),
        .R(\result[8]_i_1_n_0 ));
  FDRE \result_reg[3] 
       (.C(clk),
        .CE(result0),
        .D(in5[3]),
        .Q(result[3]),
        .R(\result[8]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\result_reg[3]_i_1_n_0 ,\result_reg[3]_i_1_n_1 ,\result_reg[3]_i_1_n_2 ,\result_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(result[3:0]),
        .O(in5[3:0]),
        .S({\result[3]_i_2_n_0 ,\result[3]_i_3_n_0 ,\result[3]_i_4_n_0 ,\result[3]_i_5_n_0 }));
  FDRE \result_reg[4] 
       (.C(clk),
        .CE(result0),
        .D(in5[4]),
        .Q(result[4]),
        .R(\result[8]_i_1_n_0 ));
  FDRE \result_reg[5] 
       (.C(clk),
        .CE(result0),
        .D(in5[5]),
        .Q(result[5]),
        .R(\result[8]_i_1_n_0 ));
  FDRE \result_reg[6] 
       (.C(clk),
        .CE(result0),
        .D(in5[6]),
        .Q(result[6]),
        .R(\result[8]_i_1_n_0 ));
  FDRE \result_reg[7] 
       (.C(clk),
        .CE(result0),
        .D(in5[7]),
        .Q(result[7]),
        .R(\result[8]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result_reg[7]_i_1 
       (.CI(\result_reg[3]_i_1_n_0 ),
        .CO({\result_reg[7]_i_1_n_0 ,\result_reg[7]_i_1_n_1 ,\result_reg[7]_i_1_n_2 ,\result_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(result[7:4]),
        .O(in5[7:4]),
        .S({\result[7]_i_2_n_0 ,\result[7]_i_3_n_0 ,\result[7]_i_4_n_0 ,\result[7]_i_5_n_0 }));
  FDRE \result_reg[8] 
       (.C(clk),
        .CE(result0),
        .D(in5[8]),
        .Q(result[8]),
        .R(\result[8]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result_reg[8]_i_3 
       (.CI(\result_reg[7]_i_1_n_0 ),
        .CO(\NLW_result_reg[8]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_result_reg[8]_i_3_O_UNCONNECTED [3:1],in5[8]}),
        .S({1'b0,1'b0,1'b0,result[8]}));
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

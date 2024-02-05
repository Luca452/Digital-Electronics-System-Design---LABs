-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Mon May 22 23:55:50 2023
-- Host        : DESKTOP-JKUPK39 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/daido/Desktop/Polimi/Anno
--               4/DESD/Git/KittCarPWM/AuDiOcOnSoLe/AuDiOcOnSoLe.gen/sources_1/bd/BlockDesign/ip/BlockDesign_VolumeController_0_0/BlockDesign_VolumeController_0_0_sim_netlist.vhdl}
-- Design      : BlockDesign_VolumeController_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BlockDesign_VolumeController_0_0_VolumeController is
  port (
    M_AXIS_TDATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    S_AXIS_TREADY : out STD_LOGIC;
    M_AXIS_TLAST : out STD_LOGIC;
    M_AXIS_TVALID : out STD_LOGIC;
    S_AXIS_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S_AXIS_TLAST : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    M_AXIS_TREADY : in STD_LOGIC;
    S_AXIS_TVALID : in STD_LOGIC;
    aclk : in STD_LOGIC;
    volume : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of BlockDesign_VolumeController_0_0_VolumeController : entity is "VolumeController";
end BlockDesign_VolumeController_0_0_VolumeController;

architecture STRUCTURE of BlockDesign_VolumeController_0_0_VolumeController is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal M_AXIS_TDATA0 : STD_LOGIC;
  signal \M_AXIS_TDATA[0]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[0]_i_4_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[0]_i_5_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[10]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[10]_i_4_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[11]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[11]_i_4_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[12]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[12]_i_4_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[13]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[13]_i_4_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[14]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[14]_i_4_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[15]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[15]_i_4_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[15]_i_5_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[16]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[16]_i_4_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[16]_i_5_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[17]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[17]_i_4_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[18]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[18]_i_4_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[19]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[19]_i_4_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[1]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[1]_i_4_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[20]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[20]_i_4_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[21]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[21]_i_4_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[22]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[22]_i_4_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[22]_i_5_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[22]_i_6_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[23]_i_10_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[23]_i_11_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[23]_i_12_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[23]_i_13_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[23]_i_14_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[23]_i_15_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[23]_i_16_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[23]_i_17_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[23]_i_18_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[23]_i_19_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[23]_i_2_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[23]_i_5_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[23]_i_6_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[23]_i_7_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[23]_i_8_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[23]_i_9_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[2]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[2]_i_4_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[3]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[3]_i_4_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[4]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[4]_i_4_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[5]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[5]_i_4_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[6]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[6]_i_4_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[7]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[7]_i_4_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[8]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[8]_i_4_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[9]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[9]_i_4_n_0\ : STD_LOGIC;
  signal \^m_axis_tlast\ : STD_LOGIC;
  signal M_AXIS_TLAST1_out : STD_LOGIC;
  signal M_AXIS_TLAST_i_1_n_0 : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal M_AXIS_TVALID0 : STD_LOGIC;
  signal M_AXIS_TVALID_i_1_n_0 : STD_LOGIC;
  signal SHIFT_LEFT : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal SHIFT_RIGHT : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal S_AXIS_TDATA_reg : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \^s_axis_tready\ : STD_LOGIC;
  signal S_AXIS_TREADY0 : STD_LOGIC;
  signal S_AXIS_TREADY_i_1_n_0 : STD_LOGIC;
  signal abs_data : STD_LOGIC_VECTOR ( 23 downto 8 );
  signal abs_data1 : STD_LOGIC_VECTOR ( 23 downto 8 );
  signal abs_data2 : STD_LOGIC;
  signal \abs_data[12]_i_3_n_0\ : STD_LOGIC;
  signal \abs_data[12]_i_4_n_0\ : STD_LOGIC;
  signal \abs_data[12]_i_5_n_0\ : STD_LOGIC;
  signal \abs_data[12]_i_6_n_0\ : STD_LOGIC;
  signal \abs_data[16]_i_3_n_0\ : STD_LOGIC;
  signal \abs_data[16]_i_4_n_0\ : STD_LOGIC;
  signal \abs_data[16]_i_5_n_0\ : STD_LOGIC;
  signal \abs_data[16]_i_6_n_0\ : STD_LOGIC;
  signal \abs_data[20]_i_3_n_0\ : STD_LOGIC;
  signal \abs_data[20]_i_4_n_0\ : STD_LOGIC;
  signal \abs_data[20]_i_5_n_0\ : STD_LOGIC;
  signal \abs_data[20]_i_6_n_0\ : STD_LOGIC;
  signal \abs_data[23]_i_1_n_0\ : STD_LOGIC;
  signal \abs_data[23]_i_4_n_0\ : STD_LOGIC;
  signal \abs_data[23]_i_5_n_0\ : STD_LOGIC;
  signal \abs_data[8]_i_10_n_0\ : STD_LOGIC;
  signal \abs_data[8]_i_11_n_0\ : STD_LOGIC;
  signal \abs_data[8]_i_12_n_0\ : STD_LOGIC;
  signal \abs_data[8]_i_4_n_0\ : STD_LOGIC;
  signal \abs_data[8]_i_5_n_0\ : STD_LOGIC;
  signal \abs_data[8]_i_6_n_0\ : STD_LOGIC;
  signal \abs_data[8]_i_7_n_0\ : STD_LOGIC;
  signal \abs_data[8]_i_8_n_0\ : STD_LOGIC;
  signal \abs_data[8]_i_9_n_0\ : STD_LOGIC;
  signal \abs_data_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \abs_data_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \abs_data_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \abs_data_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \abs_data_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \abs_data_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \abs_data_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \abs_data_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \abs_data_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \abs_data_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \abs_data_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \abs_data_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \abs_data_reg[23]_i_2_n_2\ : STD_LOGIC;
  signal \abs_data_reg[23]_i_2_n_3\ : STD_LOGIC;
  signal \abs_data_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \abs_data_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \abs_data_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \abs_data_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \abs_data_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \abs_data_reg[8]_i_3_n_1\ : STD_LOGIC;
  signal \abs_data_reg[8]_i_3_n_2\ : STD_LOGIC;
  signal \abs_data_reg[8]_i_3_n_3\ : STD_LOGIC;
  signal data0_in : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal data1 : STD_LOGIC;
  signal data_R : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal data_R0 : STD_LOGIC;
  signal \data_R[0]_i_2_n_0\ : STD_LOGIC;
  signal \data_R[10]_i_3_n_0\ : STD_LOGIC;
  signal \data_R[11]_i_3_n_0\ : STD_LOGIC;
  signal \data_R[12]_i_3_n_0\ : STD_LOGIC;
  signal \data_R[13]_i_3_n_0\ : STD_LOGIC;
  signal \data_R[14]_i_3_n_0\ : STD_LOGIC;
  signal \data_R[15]_i_3_n_0\ : STD_LOGIC;
  signal \data_R[16]_i_3_n_0\ : STD_LOGIC;
  signal \data_R[17]_i_3_n_0\ : STD_LOGIC;
  signal \data_R[18]_i_3_n_0\ : STD_LOGIC;
  signal \data_R[19]_i_3_n_0\ : STD_LOGIC;
  signal \data_R[20]_i_3_n_0\ : STD_LOGIC;
  signal \data_R[21]_i_3_n_0\ : STD_LOGIC;
  signal \data_R[22]_i_3_n_0\ : STD_LOGIC;
  signal \data_R[22]_i_4_n_0\ : STD_LOGIC;
  signal \data_R[3]_i_3_n_0\ : STD_LOGIC;
  signal \data_R[4]_i_3_n_0\ : STD_LOGIC;
  signal \data_R[5]_i_3_n_0\ : STD_LOGIC;
  signal \data_R[6]_i_3_n_0\ : STD_LOGIC;
  signal \data_R[7]_i_3_n_0\ : STD_LOGIC;
  signal \data_R[8]_i_3_n_0\ : STD_LOGIC;
  signal \data_R[9]_i_3_n_0\ : STD_LOGIC;
  signal in9 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal p_0_in1_in : STD_LOGIC_VECTOR ( 22 downto 8 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vol_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vol_N0 : STD_LOGIC;
  signal \vol_N_reg_n_0_[0]\ : STD_LOGIC;
  signal \vol_N_reg_n_0_[1]\ : STD_LOGIC;
  signal \vol_N_reg_n_0_[2]\ : STD_LOGIC;
  signal \vol_N_reg_n_0_[3]\ : STD_LOGIC;
  signal \NLW_abs_data_reg[23]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_abs_data_reg[23]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_abs_data_reg[8]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_abs_data_reg[8]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "send_r:10,receive:00,send_l:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "send_r:10,receive:00,send_l:01";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[0]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[17]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[18]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[19]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[20]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[21]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[22]_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[23]_i_15\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[23]_i_17\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[23]_i_18\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of M_AXIS_TLAST_i_2 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of M_AXIS_TVALID_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of S_AXIS_TREADY_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \abs_data[10]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \abs_data[11]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \abs_data[12]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \abs_data[13]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \abs_data[14]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \abs_data[15]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \abs_data[16]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \abs_data[17]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \abs_data[18]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \abs_data[19]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \abs_data[20]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \abs_data[21]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \abs_data[22]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \abs_data[23]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \abs_data[8]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \abs_data[9]_i_1\ : label is "soft_lutpair17";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \abs_data_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \abs_data_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \abs_data_reg[20]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \abs_data_reg[23]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \abs_data_reg[8]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \abs_data_reg[8]_i_3\ : label is 35;
  attribute SOFT_HLUTNM of \data_R[0]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_R[10]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_R[11]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_R[12]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_R[13]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_R[14]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_R[3]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_R[3]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_R[4]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_R[4]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_R[5]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_R[7]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_R[8]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_R[9]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \vol_N[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \vol_N[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \vol_N[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \vol_N[3]_i_2\ : label is "soft_lutpair3";
begin
  M_AXIS_TLAST <= \^m_axis_tlast\;
  M_AXIS_TVALID <= \^m_axis_tvalid\;
  S_AXIS_TREADY <= \^s_axis_tready\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F308FF08F300FF00"
    )
        port map (
      I0 => S_AXIS_TLAST,
      I1 => aresetn,
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      I4 => M_AXIS_TREADY,
      I5 => S_AXIS_TVALID,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E4CC"
    )
        port map (
      I0 => aresetn,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => M_AXIS_TREADY,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => \state__0\(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => \state__0\(1),
      R => '0'
    );
\M_AXIS_TDATA[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => data_R(0),
      I1 => data0_in(0),
      I2 => volume(4),
      I3 => SHIFT_RIGHT(0),
      I4 => \state__0\(0),
      O => \M_AXIS_TDATA[0]_i_1_n_0\
    );
\M_AXIS_TDATA[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555D5555555155"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => \M_AXIS_TDATA[23]_i_5_n_0\,
      I2 => \M_AXIS_TDATA[22]_i_4_n_0\,
      I3 => \M_AXIS_TDATA[23]_i_8_n_0\,
      I4 => \M_AXIS_TDATA[23]_i_9_n_0\,
      I5 => \M_AXIS_TDATA[0]_i_4_n_0\,
      O => data0_in(0)
    );
\M_AXIS_TDATA[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB833B8CCB800"
    )
        port map (
      I0 => \M_AXIS_TDATA[3]_i_4_n_0\,
      I1 => \vol_N_reg_n_0_[1]\,
      I2 => \M_AXIS_TDATA[1]_i_4_n_0\,
      I3 => \vol_N_reg_n_0_[0]\,
      I4 => \M_AXIS_TDATA[2]_i_4_n_0\,
      I5 => \M_AXIS_TDATA[0]_i_5_n_0\,
      O => SHIFT_RIGHT(0)
    );
\M_AXIS_TDATA[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \vol_N_reg_n_0_[1]\,
      I1 => \vol_N_reg_n_0_[3]\,
      I2 => S_AXIS_TDATA_reg(0),
      I3 => \vol_N_reg_n_0_[2]\,
      I4 => \vol_N_reg_n_0_[0]\,
      O => \M_AXIS_TDATA[0]_i_4_n_0\
    );
\M_AXIS_TDATA[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(12),
      I1 => S_AXIS_TDATA_reg(4),
      I2 => \vol_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA_reg(8),
      I4 => \vol_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA_reg(0),
      O => \M_AXIS_TDATA[0]_i_5_n_0\
    );
\M_AXIS_TDATA[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => data_R(10),
      I1 => data0_in(10),
      I2 => volume(4),
      I3 => SHIFT_RIGHT(10),
      I4 => \state__0\(0),
      O => \M_AXIS_TDATA[10]_i_1_n_0\
    );
\M_AXIS_TDATA[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555D5555555155"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => \M_AXIS_TDATA[23]_i_5_n_0\,
      I2 => \M_AXIS_TDATA[22]_i_4_n_0\,
      I3 => \M_AXIS_TDATA[23]_i_8_n_0\,
      I4 => \M_AXIS_TDATA[23]_i_9_n_0\,
      I5 => SHIFT_LEFT(10),
      O => data0_in(10)
    );
\M_AXIS_TDATA[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \M_AXIS_TDATA[13]_i_4_n_0\,
      I1 => \M_AXIS_TDATA[11]_i_4_n_0\,
      I2 => \vol_N_reg_n_0_[0]\,
      I3 => \M_AXIS_TDATA[12]_i_4_n_0\,
      I4 => \vol_N_reg_n_0_[1]\,
      I5 => \M_AXIS_TDATA[10]_i_4_n_0\,
      O => SHIFT_RIGHT(10)
    );
\M_AXIS_TDATA[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(22),
      I1 => S_AXIS_TDATA_reg(14),
      I2 => \vol_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA_reg(18),
      I4 => \vol_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA_reg(10),
      O => \M_AXIS_TDATA[10]_i_4_n_0\
    );
\M_AXIS_TDATA[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => data_R(11),
      I1 => data0_in(11),
      I2 => volume(4),
      I3 => SHIFT_RIGHT(11),
      I4 => \state__0\(0),
      O => \M_AXIS_TDATA[11]_i_1_n_0\
    );
\M_AXIS_TDATA[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555D5555555155"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => \M_AXIS_TDATA[23]_i_5_n_0\,
      I2 => \M_AXIS_TDATA[22]_i_4_n_0\,
      I3 => \M_AXIS_TDATA[23]_i_8_n_0\,
      I4 => \M_AXIS_TDATA[23]_i_9_n_0\,
      I5 => SHIFT_LEFT(11),
      O => data0_in(11)
    );
\M_AXIS_TDATA[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \M_AXIS_TDATA[14]_i_4_n_0\,
      I1 => \M_AXIS_TDATA[12]_i_4_n_0\,
      I2 => \vol_N_reg_n_0_[0]\,
      I3 => \M_AXIS_TDATA[13]_i_4_n_0\,
      I4 => \vol_N_reg_n_0_[1]\,
      I5 => \M_AXIS_TDATA[11]_i_4_n_0\,
      O => SHIFT_RIGHT(11)
    );
\M_AXIS_TDATA[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => S_AXIS_TDATA_reg(15),
      I2 => \vol_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA_reg(19),
      I4 => \vol_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA_reg(11),
      O => \M_AXIS_TDATA[11]_i_4_n_0\
    );
\M_AXIS_TDATA[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => data_R(12),
      I1 => data0_in(12),
      I2 => volume(4),
      I3 => SHIFT_RIGHT(12),
      I4 => \state__0\(0),
      O => \M_AXIS_TDATA[12]_i_1_n_0\
    );
\M_AXIS_TDATA[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555D5555555155"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => \M_AXIS_TDATA[23]_i_5_n_0\,
      I2 => \M_AXIS_TDATA[22]_i_4_n_0\,
      I3 => \M_AXIS_TDATA[23]_i_8_n_0\,
      I4 => \M_AXIS_TDATA[23]_i_9_n_0\,
      I5 => SHIFT_LEFT(12),
      O => data0_in(12)
    );
\M_AXIS_TDATA[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \M_AXIS_TDATA[15]_i_5_n_0\,
      I1 => \M_AXIS_TDATA[13]_i_4_n_0\,
      I2 => \vol_N_reg_n_0_[0]\,
      I3 => \M_AXIS_TDATA[14]_i_4_n_0\,
      I4 => \vol_N_reg_n_0_[1]\,
      I5 => \M_AXIS_TDATA[12]_i_4_n_0\,
      O => SHIFT_RIGHT(12)
    );
\M_AXIS_TDATA[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => S_AXIS_TDATA_reg(16),
      I2 => \vol_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA_reg(20),
      I4 => \vol_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA_reg(12),
      O => \M_AXIS_TDATA[12]_i_4_n_0\
    );
\M_AXIS_TDATA[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => data_R(13),
      I1 => data0_in(13),
      I2 => volume(4),
      I3 => SHIFT_RIGHT(13),
      I4 => \state__0\(0),
      O => \M_AXIS_TDATA[13]_i_1_n_0\
    );
\M_AXIS_TDATA[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555D5555555155"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => \M_AXIS_TDATA[23]_i_5_n_0\,
      I2 => \M_AXIS_TDATA[22]_i_4_n_0\,
      I3 => \M_AXIS_TDATA[23]_i_8_n_0\,
      I4 => \M_AXIS_TDATA[23]_i_9_n_0\,
      I5 => SHIFT_LEFT(13),
      O => data0_in(13)
    );
\M_AXIS_TDATA[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \M_AXIS_TDATA[16]_i_5_n_0\,
      I1 => \M_AXIS_TDATA[14]_i_4_n_0\,
      I2 => \vol_N_reg_n_0_[0]\,
      I3 => \M_AXIS_TDATA[15]_i_5_n_0\,
      I4 => \vol_N_reg_n_0_[1]\,
      I5 => \M_AXIS_TDATA[13]_i_4_n_0\,
      O => SHIFT_RIGHT(13)
    );
\M_AXIS_TDATA[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => S_AXIS_TDATA_reg(17),
      I2 => \vol_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA_reg(21),
      I4 => \vol_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA_reg(13),
      O => \M_AXIS_TDATA[13]_i_4_n_0\
    );
\M_AXIS_TDATA[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => data_R(14),
      I1 => data0_in(14),
      I2 => volume(4),
      I3 => SHIFT_RIGHT(14),
      I4 => \state__0\(0),
      O => \M_AXIS_TDATA[14]_i_1_n_0\
    );
\M_AXIS_TDATA[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555D5555555155"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => \M_AXIS_TDATA[23]_i_5_n_0\,
      I2 => \M_AXIS_TDATA[22]_i_4_n_0\,
      I3 => \M_AXIS_TDATA[23]_i_8_n_0\,
      I4 => \M_AXIS_TDATA[23]_i_9_n_0\,
      I5 => SHIFT_LEFT(14),
      O => data0_in(14)
    );
\M_AXIS_TDATA[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \M_AXIS_TDATA[15]_i_4_n_0\,
      I1 => \M_AXIS_TDATA[15]_i_5_n_0\,
      I2 => \vol_N_reg_n_0_[0]\,
      I3 => \M_AXIS_TDATA[16]_i_5_n_0\,
      I4 => \vol_N_reg_n_0_[1]\,
      I5 => \M_AXIS_TDATA[14]_i_4_n_0\,
      O => SHIFT_RIGHT(14)
    );
\M_AXIS_TDATA[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => S_AXIS_TDATA_reg(18),
      I2 => \vol_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA_reg(22),
      I4 => \vol_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA_reg(14),
      O => \M_AXIS_TDATA[14]_i_4_n_0\
    );
\M_AXIS_TDATA[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => data_R(15),
      I1 => data0_in(15),
      I2 => volume(4),
      I3 => SHIFT_RIGHT(15),
      I4 => \state__0\(0),
      O => \M_AXIS_TDATA[15]_i_1_n_0\
    );
\M_AXIS_TDATA[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555D5555555155"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => \M_AXIS_TDATA[23]_i_5_n_0\,
      I2 => \M_AXIS_TDATA[22]_i_4_n_0\,
      I3 => \M_AXIS_TDATA[23]_i_8_n_0\,
      I4 => \M_AXIS_TDATA[23]_i_9_n_0\,
      I5 => SHIFT_LEFT(15),
      O => data0_in(15)
    );
\M_AXIS_TDATA[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \M_AXIS_TDATA[16]_i_4_n_0\,
      I1 => \M_AXIS_TDATA[16]_i_5_n_0\,
      I2 => \vol_N_reg_n_0_[0]\,
      I3 => \M_AXIS_TDATA[15]_i_4_n_0\,
      I4 => \vol_N_reg_n_0_[1]\,
      I5 => \M_AXIS_TDATA[15]_i_5_n_0\,
      O => SHIFT_RIGHT(15)
    );
\M_AXIS_TDATA[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(21),
      I1 => \vol_N_reg_n_0_[2]\,
      I2 => S_AXIS_TDATA_reg(23),
      I3 => \vol_N_reg_n_0_[3]\,
      I4 => S_AXIS_TDATA_reg(17),
      O => \M_AXIS_TDATA[15]_i_4_n_0\
    );
\M_AXIS_TDATA[15]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(19),
      I1 => \vol_N_reg_n_0_[2]\,
      I2 => S_AXIS_TDATA_reg(23),
      I3 => \vol_N_reg_n_0_[3]\,
      I4 => S_AXIS_TDATA_reg(15),
      O => \M_AXIS_TDATA[15]_i_5_n_0\
    );
\M_AXIS_TDATA[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => data_R(16),
      I1 => data0_in(16),
      I2 => volume(4),
      I3 => SHIFT_RIGHT(16),
      I4 => \state__0\(0),
      O => \M_AXIS_TDATA[16]_i_1_n_0\
    );
\M_AXIS_TDATA[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555D5555555155"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => \M_AXIS_TDATA[23]_i_5_n_0\,
      I2 => \M_AXIS_TDATA[22]_i_4_n_0\,
      I3 => \M_AXIS_TDATA[23]_i_8_n_0\,
      I4 => \M_AXIS_TDATA[23]_i_9_n_0\,
      I5 => SHIFT_LEFT(16),
      O => data0_in(16)
    );
\M_AXIS_TDATA[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => \M_AXIS_TDATA[16]_i_4_n_0\,
      I1 => \vol_N_reg_n_0_[1]\,
      I2 => \M_AXIS_TDATA[16]_i_5_n_0\,
      I3 => \M_AXIS_TDATA[17]_i_4_n_0\,
      I4 => \vol_N_reg_n_0_[0]\,
      O => SHIFT_RIGHT(16)
    );
\M_AXIS_TDATA[16]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(22),
      I1 => \vol_N_reg_n_0_[2]\,
      I2 => S_AXIS_TDATA_reg(23),
      I3 => \vol_N_reg_n_0_[3]\,
      I4 => S_AXIS_TDATA_reg(18),
      O => \M_AXIS_TDATA[16]_i_4_n_0\
    );
\M_AXIS_TDATA[16]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(20),
      I1 => \vol_N_reg_n_0_[2]\,
      I2 => S_AXIS_TDATA_reg(23),
      I3 => \vol_N_reg_n_0_[3]\,
      I4 => S_AXIS_TDATA_reg(16),
      O => \M_AXIS_TDATA[16]_i_5_n_0\
    );
\M_AXIS_TDATA[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => data_R(17),
      I1 => data0_in(17),
      I2 => volume(4),
      I3 => SHIFT_RIGHT(17),
      I4 => \state__0\(0),
      O => \M_AXIS_TDATA[17]_i_1_n_0\
    );
\M_AXIS_TDATA[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555D5555555155"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => \M_AXIS_TDATA[23]_i_5_n_0\,
      I2 => \M_AXIS_TDATA[22]_i_4_n_0\,
      I3 => \M_AXIS_TDATA[23]_i_8_n_0\,
      I4 => \M_AXIS_TDATA[23]_i_9_n_0\,
      I5 => SHIFT_LEFT(17),
      O => data0_in(17)
    );
\M_AXIS_TDATA[17]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \M_AXIS_TDATA[18]_i_4_n_0\,
      I1 => \vol_N_reg_n_0_[0]\,
      I2 => \M_AXIS_TDATA[17]_i_4_n_0\,
      O => SHIFT_RIGHT(17)
    );
\M_AXIS_TDATA[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8FFFFCDC80000"
    )
        port map (
      I0 => \vol_N_reg_n_0_[2]\,
      I1 => S_AXIS_TDATA_reg(23),
      I2 => \vol_N_reg_n_0_[3]\,
      I3 => S_AXIS_TDATA_reg(19),
      I4 => \vol_N_reg_n_0_[1]\,
      I5 => \M_AXIS_TDATA[15]_i_4_n_0\,
      O => \M_AXIS_TDATA[17]_i_4_n_0\
    );
\M_AXIS_TDATA[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => data_R(18),
      I1 => data0_in(18),
      I2 => volume(4),
      I3 => SHIFT_RIGHT(18),
      I4 => \state__0\(0),
      O => \M_AXIS_TDATA[18]_i_1_n_0\
    );
\M_AXIS_TDATA[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555D5555555155"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => \M_AXIS_TDATA[23]_i_5_n_0\,
      I2 => \M_AXIS_TDATA[22]_i_4_n_0\,
      I3 => \M_AXIS_TDATA[23]_i_8_n_0\,
      I4 => \M_AXIS_TDATA[23]_i_9_n_0\,
      I5 => SHIFT_LEFT(18),
      O => data0_in(18)
    );
\M_AXIS_TDATA[18]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \M_AXIS_TDATA[19]_i_4_n_0\,
      I1 => \vol_N_reg_n_0_[0]\,
      I2 => \M_AXIS_TDATA[18]_i_4_n_0\,
      O => SHIFT_RIGHT(18)
    );
\M_AXIS_TDATA[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8FFFFCDC80000"
    )
        port map (
      I0 => \vol_N_reg_n_0_[2]\,
      I1 => S_AXIS_TDATA_reg(23),
      I2 => \vol_N_reg_n_0_[3]\,
      I3 => S_AXIS_TDATA_reg(20),
      I4 => \vol_N_reg_n_0_[1]\,
      I5 => \M_AXIS_TDATA[16]_i_4_n_0\,
      O => \M_AXIS_TDATA[18]_i_4_n_0\
    );
\M_AXIS_TDATA[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => data_R(19),
      I1 => data0_in(19),
      I2 => volume(4),
      I3 => SHIFT_RIGHT(19),
      I4 => \state__0\(0),
      O => \M_AXIS_TDATA[19]_i_1_n_0\
    );
\M_AXIS_TDATA[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555D5555555155"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => \M_AXIS_TDATA[23]_i_5_n_0\,
      I2 => \M_AXIS_TDATA[22]_i_4_n_0\,
      I3 => \M_AXIS_TDATA[23]_i_8_n_0\,
      I4 => \M_AXIS_TDATA[23]_i_9_n_0\,
      I5 => SHIFT_LEFT(19),
      O => data0_in(19)
    );
\M_AXIS_TDATA[19]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \M_AXIS_TDATA[20]_i_4_n_0\,
      I1 => \vol_N_reg_n_0_[0]\,
      I2 => \M_AXIS_TDATA[19]_i_4_n_0\,
      O => SHIFT_RIGHT(19)
    );
\M_AXIS_TDATA[19]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(21),
      I1 => \vol_N_reg_n_0_[1]\,
      I2 => \vol_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA_reg(23),
      I4 => \vol_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA_reg(19),
      O => \M_AXIS_TDATA[19]_i_4_n_0\
    );
\M_AXIS_TDATA[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => data_R(1),
      I1 => data0_in(1),
      I2 => volume(4),
      I3 => SHIFT_RIGHT(1),
      I4 => \state__0\(0),
      O => \M_AXIS_TDATA[1]_i_1_n_0\
    );
\M_AXIS_TDATA[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555D5555555155"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => \M_AXIS_TDATA[23]_i_5_n_0\,
      I2 => \M_AXIS_TDATA[22]_i_4_n_0\,
      I3 => \M_AXIS_TDATA[23]_i_8_n_0\,
      I4 => \M_AXIS_TDATA[23]_i_9_n_0\,
      I5 => SHIFT_LEFT(1),
      O => data0_in(1)
    );
\M_AXIS_TDATA[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FF33CC00"
    )
        port map (
      I0 => \M_AXIS_TDATA[4]_i_4_n_0\,
      I1 => \vol_N_reg_n_0_[1]\,
      I2 => \M_AXIS_TDATA[2]_i_4_n_0\,
      I3 => \M_AXIS_TDATA[3]_i_4_n_0\,
      I4 => \M_AXIS_TDATA[1]_i_4_n_0\,
      I5 => \vol_N_reg_n_0_[0]\,
      O => SHIFT_RIGHT(1)
    );
\M_AXIS_TDATA[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(13),
      I1 => S_AXIS_TDATA_reg(5),
      I2 => \vol_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA_reg(9),
      I4 => \vol_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA_reg(1),
      O => \M_AXIS_TDATA[1]_i_4_n_0\
    );
\M_AXIS_TDATA[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => data_R(20),
      I1 => data0_in(20),
      I2 => volume(4),
      I3 => SHIFT_RIGHT(20),
      I4 => \state__0\(0),
      O => \M_AXIS_TDATA[20]_i_1_n_0\
    );
\M_AXIS_TDATA[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555D5555555155"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => \M_AXIS_TDATA[23]_i_5_n_0\,
      I2 => \M_AXIS_TDATA[22]_i_4_n_0\,
      I3 => \M_AXIS_TDATA[23]_i_8_n_0\,
      I4 => \M_AXIS_TDATA[23]_i_9_n_0\,
      I5 => SHIFT_LEFT(20),
      O => data0_in(20)
    );
\M_AXIS_TDATA[20]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \M_AXIS_TDATA[21]_i_4_n_0\,
      I1 => \vol_N_reg_n_0_[0]\,
      I2 => \M_AXIS_TDATA[20]_i_4_n_0\,
      O => SHIFT_RIGHT(20)
    );
\M_AXIS_TDATA[20]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(22),
      I1 => \vol_N_reg_n_0_[1]\,
      I2 => \vol_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA_reg(23),
      I4 => \vol_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA_reg(20),
      O => \M_AXIS_TDATA[20]_i_4_n_0\
    );
\M_AXIS_TDATA[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => data_R(21),
      I1 => data0_in(21),
      I2 => volume(4),
      I3 => SHIFT_RIGHT(21),
      I4 => \state__0\(0),
      O => \M_AXIS_TDATA[21]_i_1_n_0\
    );
\M_AXIS_TDATA[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555D5555555155"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => \M_AXIS_TDATA[23]_i_5_n_0\,
      I2 => \M_AXIS_TDATA[22]_i_4_n_0\,
      I3 => \M_AXIS_TDATA[23]_i_8_n_0\,
      I4 => \M_AXIS_TDATA[23]_i_9_n_0\,
      I5 => SHIFT_LEFT(21),
      O => data0_in(21)
    );
\M_AXIS_TDATA[21]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_R[22]_i_3_n_0\,
      I1 => \vol_N_reg_n_0_[0]\,
      I2 => \M_AXIS_TDATA[21]_i_4_n_0\,
      O => SHIFT_RIGHT(21)
    );
\M_AXIS_TDATA[21]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => \vol_N_reg_n_0_[1]\,
      I1 => \vol_N_reg_n_0_[2]\,
      I2 => S_AXIS_TDATA_reg(23),
      I3 => \vol_N_reg_n_0_[3]\,
      I4 => S_AXIS_TDATA_reg(21),
      O => \M_AXIS_TDATA[21]_i_4_n_0\
    );
\M_AXIS_TDATA[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => data_R(22),
      I1 => data0_in(22),
      I2 => volume(4),
      I3 => SHIFT_RIGHT(22),
      I4 => \state__0\(0),
      O => \M_AXIS_TDATA[22]_i_1_n_0\
    );
\M_AXIS_TDATA[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555D5555555155"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => \M_AXIS_TDATA[23]_i_5_n_0\,
      I2 => \M_AXIS_TDATA[22]_i_4_n_0\,
      I3 => \M_AXIS_TDATA[23]_i_8_n_0\,
      I4 => \M_AXIS_TDATA[23]_i_9_n_0\,
      I5 => SHIFT_LEFT(22),
      O => data0_in(22)
    );
\M_AXIS_TDATA[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF01FF00FE00"
    )
        port map (
      I0 => \vol_N_reg_n_0_[0]\,
      I1 => \vol_N_reg_n_0_[1]\,
      I2 => \vol_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA_reg(23),
      I4 => \vol_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA_reg(22),
      O => SHIFT_RIGHT(22)
    );
\M_AXIS_TDATA[22]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBBFFFF"
    )
        port map (
      I0 => \M_AXIS_TDATA[22]_i_5_n_0\,
      I1 => \M_AXIS_TDATA[23]_i_16_n_0\,
      I2 => abs_data(17),
      I3 => \M_AXIS_TDATA[23]_i_17_n_0\,
      I4 => \M_AXIS_TDATA[22]_i_6_n_0\,
      O => \M_AXIS_TDATA[22]_i_4_n_0\
    );
\M_AXIS_TDATA[22]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888880"
    )
        port map (
      I0 => abs_data(14),
      I1 => \vol_N_reg_n_0_[3]\,
      I2 => \vol_N_reg_n_0_[2]\,
      I3 => \vol_N_reg_n_0_[1]\,
      I4 => \vol_N_reg_n_0_[0]\,
      O => \M_AXIS_TDATA[22]_i_5_n_0\
    );
\M_AXIS_TDATA[22]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00003FFF5555FFFF"
    )
        port map (
      I0 => abs_data(15),
      I1 => \vol_N_reg_n_0_[2]\,
      I2 => \vol_N_reg_n_0_[1]\,
      I3 => \vol_N_reg_n_0_[0]\,
      I4 => \vol_N_reg_n_0_[3]\,
      I5 => abs_data(16),
      O => \M_AXIS_TDATA[22]_i_6_n_0\
    );
\M_AXIS_TDATA[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000200020222000"
    )
        port map (
      I0 => aresetn,
      I1 => \state__0\(1),
      I2 => M_AXIS_TREADY,
      I3 => \state__0\(0),
      I4 => S_AXIS_TVALID,
      I5 => S_AXIS_TLAST,
      O => M_AXIS_TDATA0
    );
\M_AXIS_TDATA[23]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(8),
      I1 => S_AXIS_TDATA_reg(16),
      I2 => \vol_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA_reg(12),
      I4 => \vol_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA_reg(20),
      O => \M_AXIS_TDATA[23]_i_10_n_0\
    );
\M_AXIS_TDATA[23]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(10),
      I1 => S_AXIS_TDATA_reg(18),
      I2 => \vol_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA_reg(14),
      I4 => \vol_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA_reg(22),
      O => \M_AXIS_TDATA[23]_i_11_n_0\
    );
\M_AXIS_TDATA[23]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(9),
      I1 => S_AXIS_TDATA_reg(17),
      I2 => \vol_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA_reg(13),
      I4 => \vol_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA_reg(21),
      O => \M_AXIS_TDATA[23]_i_12_n_0\
    );
\M_AXIS_TDATA[23]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(11),
      I1 => S_AXIS_TDATA_reg(19),
      I2 => \vol_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA_reg(15),
      I4 => \vol_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA_reg(23),
      O => \M_AXIS_TDATA[23]_i_13_n_0\
    );
\M_AXIS_TDATA[23]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FFFFFF5FFFFFFF"
    )
        port map (
      I0 => abs_data(9),
      I1 => \vol_N_reg_n_0_[0]\,
      I2 => \vol_N_reg_n_0_[1]\,
      I3 => \vol_N_reg_n_0_[3]\,
      I4 => \vol_N_reg_n_0_[2]\,
      I5 => abs_data(10),
      O => \M_AXIS_TDATA[23]_i_14_n_0\
    );
\M_AXIS_TDATA[23]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \vol_N_reg_n_0_[2]\,
      I1 => \vol_N_reg_n_0_[3]\,
      O => \M_AXIS_TDATA[23]_i_15_n_0\
    );
\M_AXIS_TDATA[23]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000FFFFF337FFFFF"
    )
        port map (
      I0 => \vol_N_reg_n_0_[0]\,
      I1 => abs_data(12),
      I2 => \vol_N_reg_n_0_[1]\,
      I3 => \vol_N_reg_n_0_[2]\,
      I4 => \vol_N_reg_n_0_[3]\,
      I5 => abs_data(13),
      O => \M_AXIS_TDATA[23]_i_16_n_0\
    );
\M_AXIS_TDATA[23]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \vol_N_reg_n_0_[2]\,
      I1 => \vol_N_reg_n_0_[1]\,
      I2 => \vol_N_reg_n_0_[3]\,
      O => \M_AXIS_TDATA[23]_i_17_n_0\
    );
\M_AXIS_TDATA[23]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \vol_N_reg_n_0_[2]\,
      I1 => \vol_N_reg_n_0_[3]\,
      O => \M_AXIS_TDATA[23]_i_18_n_0\
    );
\M_AXIS_TDATA[23]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FF0F0F1FFF"
    )
        port map (
      I0 => \vol_N_reg_n_0_[0]\,
      I1 => \vol_N_reg_n_0_[1]\,
      I2 => abs_data(18),
      I3 => \vol_N_reg_n_0_[2]\,
      I4 => \vol_N_reg_n_0_[3]\,
      I5 => abs_data(19),
      O => \M_AXIS_TDATA[23]_i_19_n_0\
    );
\M_AXIS_TDATA[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFCFF3000"
    )
        port map (
      I0 => data_R(23),
      I1 => data1,
      I2 => SHIFT_LEFT(23),
      I3 => volume(4),
      I4 => S_AXIS_TDATA_reg(23),
      I5 => \state__0\(0),
      O => \M_AXIS_TDATA[23]_i_2_n_0\
    );
\M_AXIS_TDATA[23]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \M_AXIS_TDATA[23]_i_5_n_0\,
      I1 => \M_AXIS_TDATA[23]_i_6_n_0\,
      I2 => \M_AXIS_TDATA[23]_i_7_n_0\,
      I3 => \M_AXIS_TDATA[23]_i_8_n_0\,
      I4 => \M_AXIS_TDATA[23]_i_9_n_0\,
      O => data1
    );
\M_AXIS_TDATA[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB833B8CCB800"
    )
        port map (
      I0 => \M_AXIS_TDATA[23]_i_10_n_0\,
      I1 => \vol_N_reg_n_0_[1]\,
      I2 => \M_AXIS_TDATA[23]_i_11_n_0\,
      I3 => \vol_N_reg_n_0_[0]\,
      I4 => \M_AXIS_TDATA[23]_i_12_n_0\,
      I5 => \M_AXIS_TDATA[23]_i_13_n_0\,
      O => SHIFT_LEFT(23)
    );
\M_AXIS_TDATA[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04CC44CC44CC44CC"
    )
        port map (
      I0 => abs_data(11),
      I1 => \M_AXIS_TDATA[23]_i_14_n_0\,
      I2 => \vol_N_reg_n_0_[0]\,
      I3 => \M_AXIS_TDATA[23]_i_15_n_0\,
      I4 => \vol_N_reg_n_0_[1]\,
      I5 => abs_data(8),
      O => \M_AXIS_TDATA[23]_i_5_n_0\
    );
\M_AXIS_TDATA[23]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002AAAAAAAAAAAA"
    )
        port map (
      I0 => \M_AXIS_TDATA[23]_i_16_n_0\,
      I1 => \vol_N_reg_n_0_[0]\,
      I2 => \vol_N_reg_n_0_[1]\,
      I3 => \vol_N_reg_n_0_[2]\,
      I4 => \vol_N_reg_n_0_[3]\,
      I5 => abs_data(14),
      O => \M_AXIS_TDATA[23]_i_6_n_0\
    );
\M_AXIS_TDATA[23]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000033F7135733F7"
    )
        port map (
      I0 => abs_data(16),
      I1 => \vol_N_reg_n_0_[3]\,
      I2 => \vol_N_reg_n_0_[0]\,
      I3 => abs_data(15),
      I4 => \M_AXIS_TDATA[23]_i_17_n_0\,
      I5 => abs_data(17),
      O => \M_AXIS_TDATA[23]_i_7_n_0\
    );
\M_AXIS_TDATA[23]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000511111155"
    )
        port map (
      I0 => abs_data(23),
      I1 => abs_data(21),
      I2 => \vol_N_reg_n_0_[0]\,
      I3 => \M_AXIS_TDATA[23]_i_18_n_0\,
      I4 => \vol_N_reg_n_0_[1]\,
      I5 => abs_data(22),
      O => \M_AXIS_TDATA[23]_i_8_n_0\
    );
\M_AXIS_TDATA[23]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF80000FFFFFFFF"
    )
        port map (
      I0 => \vol_N_reg_n_0_[1]\,
      I1 => \vol_N_reg_n_0_[0]\,
      I2 => \vol_N_reg_n_0_[2]\,
      I3 => \vol_N_reg_n_0_[3]\,
      I4 => abs_data(20),
      I5 => \M_AXIS_TDATA[23]_i_19_n_0\,
      O => \M_AXIS_TDATA[23]_i_9_n_0\
    );
\M_AXIS_TDATA[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => data_R(2),
      I1 => data0_in(2),
      I2 => volume(4),
      I3 => SHIFT_RIGHT(2),
      I4 => \state__0\(0),
      O => \M_AXIS_TDATA[2]_i_1_n_0\
    );
\M_AXIS_TDATA[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555D5555555155"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => \M_AXIS_TDATA[23]_i_5_n_0\,
      I2 => \M_AXIS_TDATA[22]_i_4_n_0\,
      I3 => \M_AXIS_TDATA[23]_i_8_n_0\,
      I4 => \M_AXIS_TDATA[23]_i_9_n_0\,
      I5 => SHIFT_LEFT(2),
      O => data0_in(2)
    );
\M_AXIS_TDATA[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \M_AXIS_TDATA[5]_i_4_n_0\,
      I1 => \M_AXIS_TDATA[3]_i_4_n_0\,
      I2 => \vol_N_reg_n_0_[0]\,
      I3 => \M_AXIS_TDATA[4]_i_4_n_0\,
      I4 => \vol_N_reg_n_0_[1]\,
      I5 => \M_AXIS_TDATA[2]_i_4_n_0\,
      O => SHIFT_RIGHT(2)
    );
\M_AXIS_TDATA[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(14),
      I1 => S_AXIS_TDATA_reg(6),
      I2 => \vol_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA_reg(10),
      I4 => \vol_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA_reg(2),
      O => \M_AXIS_TDATA[2]_i_4_n_0\
    );
\M_AXIS_TDATA[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => data_R(3),
      I1 => data0_in(3),
      I2 => volume(4),
      I3 => SHIFT_RIGHT(3),
      I4 => \state__0\(0),
      O => \M_AXIS_TDATA[3]_i_1_n_0\
    );
\M_AXIS_TDATA[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555D5555555155"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => \M_AXIS_TDATA[23]_i_5_n_0\,
      I2 => \M_AXIS_TDATA[22]_i_4_n_0\,
      I3 => \M_AXIS_TDATA[23]_i_8_n_0\,
      I4 => \M_AXIS_TDATA[23]_i_9_n_0\,
      I5 => SHIFT_LEFT(3),
      O => data0_in(3)
    );
\M_AXIS_TDATA[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \M_AXIS_TDATA[6]_i_4_n_0\,
      I1 => \M_AXIS_TDATA[4]_i_4_n_0\,
      I2 => \vol_N_reg_n_0_[0]\,
      I3 => \M_AXIS_TDATA[5]_i_4_n_0\,
      I4 => \vol_N_reg_n_0_[1]\,
      I5 => \M_AXIS_TDATA[3]_i_4_n_0\,
      O => SHIFT_RIGHT(3)
    );
\M_AXIS_TDATA[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(15),
      I1 => S_AXIS_TDATA_reg(7),
      I2 => \vol_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA_reg(11),
      I4 => \vol_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA_reg(3),
      O => \M_AXIS_TDATA[3]_i_4_n_0\
    );
\M_AXIS_TDATA[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => data_R(4),
      I1 => data0_in(4),
      I2 => volume(4),
      I3 => SHIFT_RIGHT(4),
      I4 => \state__0\(0),
      O => \M_AXIS_TDATA[4]_i_1_n_0\
    );
\M_AXIS_TDATA[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555D5555555155"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => \M_AXIS_TDATA[23]_i_5_n_0\,
      I2 => \M_AXIS_TDATA[22]_i_4_n_0\,
      I3 => \M_AXIS_TDATA[23]_i_8_n_0\,
      I4 => \M_AXIS_TDATA[23]_i_9_n_0\,
      I5 => SHIFT_LEFT(4),
      O => data0_in(4)
    );
\M_AXIS_TDATA[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \M_AXIS_TDATA[7]_i_4_n_0\,
      I1 => \M_AXIS_TDATA[5]_i_4_n_0\,
      I2 => \vol_N_reg_n_0_[0]\,
      I3 => \M_AXIS_TDATA[6]_i_4_n_0\,
      I4 => \vol_N_reg_n_0_[1]\,
      I5 => \M_AXIS_TDATA[4]_i_4_n_0\,
      O => SHIFT_RIGHT(4)
    );
\M_AXIS_TDATA[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(16),
      I1 => S_AXIS_TDATA_reg(8),
      I2 => \vol_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA_reg(12),
      I4 => \vol_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA_reg(4),
      O => \M_AXIS_TDATA[4]_i_4_n_0\
    );
\M_AXIS_TDATA[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => data_R(5),
      I1 => data0_in(5),
      I2 => volume(4),
      I3 => SHIFT_RIGHT(5),
      I4 => \state__0\(0),
      O => \M_AXIS_TDATA[5]_i_1_n_0\
    );
\M_AXIS_TDATA[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555D5555555155"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => \M_AXIS_TDATA[23]_i_5_n_0\,
      I2 => \M_AXIS_TDATA[22]_i_4_n_0\,
      I3 => \M_AXIS_TDATA[23]_i_8_n_0\,
      I4 => \M_AXIS_TDATA[23]_i_9_n_0\,
      I5 => SHIFT_LEFT(5),
      O => data0_in(5)
    );
\M_AXIS_TDATA[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \M_AXIS_TDATA[8]_i_4_n_0\,
      I1 => \M_AXIS_TDATA[6]_i_4_n_0\,
      I2 => \vol_N_reg_n_0_[0]\,
      I3 => \M_AXIS_TDATA[7]_i_4_n_0\,
      I4 => \vol_N_reg_n_0_[1]\,
      I5 => \M_AXIS_TDATA[5]_i_4_n_0\,
      O => SHIFT_RIGHT(5)
    );
\M_AXIS_TDATA[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(17),
      I1 => S_AXIS_TDATA_reg(9),
      I2 => \vol_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA_reg(13),
      I4 => \vol_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA_reg(5),
      O => \M_AXIS_TDATA[5]_i_4_n_0\
    );
\M_AXIS_TDATA[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => data_R(6),
      I1 => data0_in(6),
      I2 => volume(4),
      I3 => SHIFT_RIGHT(6),
      I4 => \state__0\(0),
      O => \M_AXIS_TDATA[6]_i_1_n_0\
    );
\M_AXIS_TDATA[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555D5555555155"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => \M_AXIS_TDATA[23]_i_5_n_0\,
      I2 => \M_AXIS_TDATA[22]_i_4_n_0\,
      I3 => \M_AXIS_TDATA[23]_i_8_n_0\,
      I4 => \M_AXIS_TDATA[23]_i_9_n_0\,
      I5 => SHIFT_LEFT(6),
      O => data0_in(6)
    );
\M_AXIS_TDATA[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \M_AXIS_TDATA[9]_i_4_n_0\,
      I1 => \M_AXIS_TDATA[7]_i_4_n_0\,
      I2 => \vol_N_reg_n_0_[0]\,
      I3 => \M_AXIS_TDATA[8]_i_4_n_0\,
      I4 => \vol_N_reg_n_0_[1]\,
      I5 => \M_AXIS_TDATA[6]_i_4_n_0\,
      O => SHIFT_RIGHT(6)
    );
\M_AXIS_TDATA[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(18),
      I1 => S_AXIS_TDATA_reg(10),
      I2 => \vol_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA_reg(14),
      I4 => \vol_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA_reg(6),
      O => \M_AXIS_TDATA[6]_i_4_n_0\
    );
\M_AXIS_TDATA[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => data_R(7),
      I1 => data0_in(7),
      I2 => volume(4),
      I3 => SHIFT_RIGHT(7),
      I4 => \state__0\(0),
      O => \M_AXIS_TDATA[7]_i_1_n_0\
    );
\M_AXIS_TDATA[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555D5555555155"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => \M_AXIS_TDATA[23]_i_5_n_0\,
      I2 => \M_AXIS_TDATA[22]_i_4_n_0\,
      I3 => \M_AXIS_TDATA[23]_i_8_n_0\,
      I4 => \M_AXIS_TDATA[23]_i_9_n_0\,
      I5 => SHIFT_LEFT(7),
      O => data0_in(7)
    );
\M_AXIS_TDATA[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \M_AXIS_TDATA[10]_i_4_n_0\,
      I1 => \M_AXIS_TDATA[8]_i_4_n_0\,
      I2 => \vol_N_reg_n_0_[0]\,
      I3 => \M_AXIS_TDATA[9]_i_4_n_0\,
      I4 => \vol_N_reg_n_0_[1]\,
      I5 => \M_AXIS_TDATA[7]_i_4_n_0\,
      O => SHIFT_RIGHT(7)
    );
\M_AXIS_TDATA[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(19),
      I1 => S_AXIS_TDATA_reg(11),
      I2 => \vol_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA_reg(15),
      I4 => \vol_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA_reg(7),
      O => \M_AXIS_TDATA[7]_i_4_n_0\
    );
\M_AXIS_TDATA[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => data_R(8),
      I1 => data0_in(8),
      I2 => volume(4),
      I3 => SHIFT_RIGHT(8),
      I4 => \state__0\(0),
      O => \M_AXIS_TDATA[8]_i_1_n_0\
    );
\M_AXIS_TDATA[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555D5555555155"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => \M_AXIS_TDATA[23]_i_5_n_0\,
      I2 => \M_AXIS_TDATA[22]_i_4_n_0\,
      I3 => \M_AXIS_TDATA[23]_i_8_n_0\,
      I4 => \M_AXIS_TDATA[23]_i_9_n_0\,
      I5 => SHIFT_LEFT(8),
      O => data0_in(8)
    );
\M_AXIS_TDATA[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \M_AXIS_TDATA[11]_i_4_n_0\,
      I1 => \M_AXIS_TDATA[9]_i_4_n_0\,
      I2 => \vol_N_reg_n_0_[0]\,
      I3 => \M_AXIS_TDATA[10]_i_4_n_0\,
      I4 => \vol_N_reg_n_0_[1]\,
      I5 => \M_AXIS_TDATA[8]_i_4_n_0\,
      O => SHIFT_RIGHT(8)
    );
\M_AXIS_TDATA[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(20),
      I1 => S_AXIS_TDATA_reg(12),
      I2 => \vol_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA_reg(16),
      I4 => \vol_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA_reg(8),
      O => \M_AXIS_TDATA[8]_i_4_n_0\
    );
\M_AXIS_TDATA[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => data_R(9),
      I1 => data0_in(9),
      I2 => volume(4),
      I3 => SHIFT_RIGHT(9),
      I4 => \state__0\(0),
      O => \M_AXIS_TDATA[9]_i_1_n_0\
    );
\M_AXIS_TDATA[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555D5555555155"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => \M_AXIS_TDATA[23]_i_5_n_0\,
      I2 => \M_AXIS_TDATA[22]_i_4_n_0\,
      I3 => \M_AXIS_TDATA[23]_i_8_n_0\,
      I4 => \M_AXIS_TDATA[23]_i_9_n_0\,
      I5 => SHIFT_LEFT(9),
      O => data0_in(9)
    );
\M_AXIS_TDATA[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \M_AXIS_TDATA[12]_i_4_n_0\,
      I1 => \M_AXIS_TDATA[10]_i_4_n_0\,
      I2 => \vol_N_reg_n_0_[0]\,
      I3 => \M_AXIS_TDATA[11]_i_4_n_0\,
      I4 => \vol_N_reg_n_0_[1]\,
      I5 => \M_AXIS_TDATA[9]_i_4_n_0\,
      O => SHIFT_RIGHT(9)
    );
\M_AXIS_TDATA[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(21),
      I1 => S_AXIS_TDATA_reg(13),
      I2 => \vol_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA_reg(17),
      I4 => \vol_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA_reg(9),
      O => \M_AXIS_TDATA[9]_i_4_n_0\
    );
\M_AXIS_TDATA_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA0,
      D => \M_AXIS_TDATA[0]_i_1_n_0\,
      Q => M_AXIS_TDATA(0),
      R => '0'
    );
\M_AXIS_TDATA_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA0,
      D => \M_AXIS_TDATA[10]_i_1_n_0\,
      Q => M_AXIS_TDATA(10),
      R => '0'
    );
\M_AXIS_TDATA_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA0,
      D => \M_AXIS_TDATA[11]_i_1_n_0\,
      Q => M_AXIS_TDATA(11),
      R => '0'
    );
\M_AXIS_TDATA_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA0,
      D => \M_AXIS_TDATA[12]_i_1_n_0\,
      Q => M_AXIS_TDATA(12),
      R => '0'
    );
\M_AXIS_TDATA_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA0,
      D => \M_AXIS_TDATA[13]_i_1_n_0\,
      Q => M_AXIS_TDATA(13),
      R => '0'
    );
\M_AXIS_TDATA_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA0,
      D => \M_AXIS_TDATA[14]_i_1_n_0\,
      Q => M_AXIS_TDATA(14),
      R => '0'
    );
\M_AXIS_TDATA_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA0,
      D => \M_AXIS_TDATA[15]_i_1_n_0\,
      Q => M_AXIS_TDATA(15),
      R => '0'
    );
\M_AXIS_TDATA_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA0,
      D => \M_AXIS_TDATA[16]_i_1_n_0\,
      Q => M_AXIS_TDATA(16),
      R => '0'
    );
\M_AXIS_TDATA_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA0,
      D => \M_AXIS_TDATA[17]_i_1_n_0\,
      Q => M_AXIS_TDATA(17),
      R => '0'
    );
\M_AXIS_TDATA_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA0,
      D => \M_AXIS_TDATA[18]_i_1_n_0\,
      Q => M_AXIS_TDATA(18),
      R => '0'
    );
\M_AXIS_TDATA_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA0,
      D => \M_AXIS_TDATA[19]_i_1_n_0\,
      Q => M_AXIS_TDATA(19),
      R => '0'
    );
\M_AXIS_TDATA_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA0,
      D => \M_AXIS_TDATA[1]_i_1_n_0\,
      Q => M_AXIS_TDATA(1),
      R => '0'
    );
\M_AXIS_TDATA_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA0,
      D => \M_AXIS_TDATA[20]_i_1_n_0\,
      Q => M_AXIS_TDATA(20),
      R => '0'
    );
\M_AXIS_TDATA_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA0,
      D => \M_AXIS_TDATA[21]_i_1_n_0\,
      Q => M_AXIS_TDATA(21),
      R => '0'
    );
\M_AXIS_TDATA_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA0,
      D => \M_AXIS_TDATA[22]_i_1_n_0\,
      Q => M_AXIS_TDATA(22),
      R => '0'
    );
\M_AXIS_TDATA_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA0,
      D => \M_AXIS_TDATA[23]_i_2_n_0\,
      Q => M_AXIS_TDATA(23),
      R => '0'
    );
\M_AXIS_TDATA_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA0,
      D => \M_AXIS_TDATA[2]_i_1_n_0\,
      Q => M_AXIS_TDATA(2),
      R => '0'
    );
\M_AXIS_TDATA_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA0,
      D => \M_AXIS_TDATA[3]_i_1_n_0\,
      Q => M_AXIS_TDATA(3),
      R => '0'
    );
\M_AXIS_TDATA_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA0,
      D => \M_AXIS_TDATA[4]_i_1_n_0\,
      Q => M_AXIS_TDATA(4),
      R => '0'
    );
\M_AXIS_TDATA_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA0,
      D => \M_AXIS_TDATA[5]_i_1_n_0\,
      Q => M_AXIS_TDATA(5),
      R => '0'
    );
\M_AXIS_TDATA_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA0,
      D => \M_AXIS_TDATA[6]_i_1_n_0\,
      Q => M_AXIS_TDATA(6),
      R => '0'
    );
\M_AXIS_TDATA_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA0,
      D => \M_AXIS_TDATA[7]_i_1_n_0\,
      Q => M_AXIS_TDATA(7),
      R => '0'
    );
\M_AXIS_TDATA_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA0,
      D => \M_AXIS_TDATA[8]_i_1_n_0\,
      Q => M_AXIS_TDATA(8),
      R => '0'
    );
\M_AXIS_TDATA_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA0,
      D => \M_AXIS_TDATA[9]_i_1_n_0\,
      Q => M_AXIS_TDATA(9),
      R => '0'
    );
M_AXIS_TLAST_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDDFFFF20002000"
    )
        port map (
      I0 => aresetn,
      I1 => \state__0\(1),
      I2 => M_AXIS_TREADY,
      I3 => \state__0\(0),
      I4 => M_AXIS_TLAST1_out,
      I5 => \^m_axis_tlast\,
      O => M_AXIS_TLAST_i_1_n_0
    );
M_AXIS_TLAST_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => S_AXIS_TVALID,
      I1 => S_AXIS_TLAST,
      O => M_AXIS_TLAST1_out
    );
M_AXIS_TLAST_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => M_AXIS_TLAST_i_1_n_0,
      Q => \^m_axis_tlast\,
      R => '0'
    );
M_AXIS_TVALID_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => S_AXIS_TVALID,
      I1 => \state__0\(1),
      I2 => M_AXIS_TVALID0,
      I3 => \^m_axis_tvalid\,
      O => M_AXIS_TVALID_i_1_n_0
    );
M_AXIS_TVALID_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2022200020002000"
    )
        port map (
      I0 => aresetn,
      I1 => \state__0\(0),
      I2 => M_AXIS_TREADY,
      I3 => \state__0\(1),
      I4 => S_AXIS_TVALID,
      I5 => S_AXIS_TLAST,
      O => M_AXIS_TVALID0
    );
M_AXIS_TVALID_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => M_AXIS_TVALID_i_1_n_0,
      Q => \^m_axis_tvalid\,
      R => '0'
    );
\S_AXIS_TDATA_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => S_AXIS_TDATA(0),
      Q => S_AXIS_TDATA_reg(0),
      R => '0'
    );
\S_AXIS_TDATA_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => S_AXIS_TDATA(10),
      Q => S_AXIS_TDATA_reg(10),
      R => '0'
    );
\S_AXIS_TDATA_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => S_AXIS_TDATA(11),
      Q => S_AXIS_TDATA_reg(11),
      R => '0'
    );
\S_AXIS_TDATA_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => S_AXIS_TDATA(12),
      Q => S_AXIS_TDATA_reg(12),
      R => '0'
    );
\S_AXIS_TDATA_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => S_AXIS_TDATA(13),
      Q => S_AXIS_TDATA_reg(13),
      R => '0'
    );
\S_AXIS_TDATA_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => S_AXIS_TDATA(14),
      Q => S_AXIS_TDATA_reg(14),
      R => '0'
    );
\S_AXIS_TDATA_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => S_AXIS_TDATA(15),
      Q => S_AXIS_TDATA_reg(15),
      R => '0'
    );
\S_AXIS_TDATA_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => S_AXIS_TDATA(16),
      Q => S_AXIS_TDATA_reg(16),
      R => '0'
    );
\S_AXIS_TDATA_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => S_AXIS_TDATA(17),
      Q => S_AXIS_TDATA_reg(17),
      R => '0'
    );
\S_AXIS_TDATA_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => S_AXIS_TDATA(18),
      Q => S_AXIS_TDATA_reg(18),
      R => '0'
    );
\S_AXIS_TDATA_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => S_AXIS_TDATA(19),
      Q => S_AXIS_TDATA_reg(19),
      R => '0'
    );
\S_AXIS_TDATA_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => S_AXIS_TDATA(1),
      Q => S_AXIS_TDATA_reg(1),
      R => '0'
    );
\S_AXIS_TDATA_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => S_AXIS_TDATA(20),
      Q => S_AXIS_TDATA_reg(20),
      R => '0'
    );
\S_AXIS_TDATA_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => S_AXIS_TDATA(21),
      Q => S_AXIS_TDATA_reg(21),
      R => '0'
    );
\S_AXIS_TDATA_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => S_AXIS_TDATA(22),
      Q => S_AXIS_TDATA_reg(22),
      R => '0'
    );
\S_AXIS_TDATA_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => S_AXIS_TDATA(23),
      Q => S_AXIS_TDATA_reg(23),
      R => '0'
    );
\S_AXIS_TDATA_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => S_AXIS_TDATA(2),
      Q => S_AXIS_TDATA_reg(2),
      R => '0'
    );
\S_AXIS_TDATA_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => S_AXIS_TDATA(3),
      Q => S_AXIS_TDATA_reg(3),
      R => '0'
    );
\S_AXIS_TDATA_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => S_AXIS_TDATA(4),
      Q => S_AXIS_TDATA_reg(4),
      R => '0'
    );
\S_AXIS_TDATA_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => S_AXIS_TDATA(5),
      Q => S_AXIS_TDATA_reg(5),
      R => '0'
    );
\S_AXIS_TDATA_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => S_AXIS_TDATA(6),
      Q => S_AXIS_TDATA_reg(6),
      R => '0'
    );
\S_AXIS_TDATA_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => S_AXIS_TDATA(7),
      Q => S_AXIS_TDATA_reg(7),
      R => '0'
    );
\S_AXIS_TDATA_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => S_AXIS_TDATA(8),
      Q => S_AXIS_TDATA_reg(8),
      R => '0'
    );
\S_AXIS_TDATA_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => S_AXIS_TDATA(9),
      Q => S_AXIS_TDATA_reg(9),
      R => '0'
    );
S_AXIS_TREADY_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00D1FFFF00D10000"
    )
        port map (
      I0 => S_AXIS_TLAST,
      I1 => \state__0\(1),
      I2 => M_AXIS_TREADY,
      I3 => \state__0\(0),
      I4 => S_AXIS_TREADY0,
      I5 => \^s_axis_tready\,
      O => S_AXIS_TREADY_i_1_n_0
    );
S_AXIS_TREADY_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20222000"
    )
        port map (
      I0 => aresetn,
      I1 => \state__0\(0),
      I2 => M_AXIS_TREADY,
      I3 => \state__0\(1),
      I4 => S_AXIS_TVALID,
      O => S_AXIS_TREADY0
    );
S_AXIS_TREADY_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => S_AXIS_TREADY_i_1_n_0,
      Q => \^s_axis_tready\,
      R => '0'
    );
\abs_data[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => S_AXIS_TDATA(10),
      I1 => abs_data1(10),
      I2 => S_AXIS_TDATA(23),
      O => p_0_in1_in(10)
    );
\abs_data[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => S_AXIS_TDATA(11),
      I1 => abs_data1(11),
      I2 => S_AXIS_TDATA(23),
      O => p_0_in1_in(11)
    );
\abs_data[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => S_AXIS_TDATA(12),
      I1 => abs_data1(12),
      I2 => S_AXIS_TDATA(23),
      O => p_0_in1_in(12)
    );
\abs_data[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXIS_TDATA(12),
      O => \abs_data[12]_i_3_n_0\
    );
\abs_data[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXIS_TDATA(11),
      O => \abs_data[12]_i_4_n_0\
    );
\abs_data[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXIS_TDATA(10),
      O => \abs_data[12]_i_5_n_0\
    );
\abs_data[12]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXIS_TDATA(9),
      O => \abs_data[12]_i_6_n_0\
    );
\abs_data[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => S_AXIS_TDATA(13),
      I1 => abs_data1(13),
      I2 => S_AXIS_TDATA(23),
      O => p_0_in1_in(13)
    );
\abs_data[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => S_AXIS_TDATA(14),
      I1 => abs_data1(14),
      I2 => S_AXIS_TDATA(23),
      O => p_0_in1_in(14)
    );
\abs_data[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => S_AXIS_TDATA(15),
      I1 => abs_data1(15),
      I2 => S_AXIS_TDATA(23),
      O => p_0_in1_in(15)
    );
\abs_data[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => S_AXIS_TDATA(16),
      I1 => abs_data1(16),
      I2 => S_AXIS_TDATA(23),
      O => p_0_in1_in(16)
    );
\abs_data[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXIS_TDATA(16),
      O => \abs_data[16]_i_3_n_0\
    );
\abs_data[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXIS_TDATA(15),
      O => \abs_data[16]_i_4_n_0\
    );
\abs_data[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXIS_TDATA(14),
      O => \abs_data[16]_i_5_n_0\
    );
\abs_data[16]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXIS_TDATA(13),
      O => \abs_data[16]_i_6_n_0\
    );
\abs_data[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => S_AXIS_TDATA(17),
      I1 => abs_data1(17),
      I2 => S_AXIS_TDATA(23),
      O => p_0_in1_in(17)
    );
\abs_data[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => S_AXIS_TDATA(18),
      I1 => abs_data1(18),
      I2 => S_AXIS_TDATA(23),
      O => p_0_in1_in(18)
    );
\abs_data[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => S_AXIS_TDATA(19),
      I1 => abs_data1(19),
      I2 => S_AXIS_TDATA(23),
      O => p_0_in1_in(19)
    );
\abs_data[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => S_AXIS_TDATA(20),
      I1 => abs_data1(20),
      I2 => S_AXIS_TDATA(23),
      O => p_0_in1_in(20)
    );
\abs_data[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXIS_TDATA(20),
      O => \abs_data[20]_i_3_n_0\
    );
\abs_data[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXIS_TDATA(19),
      O => \abs_data[20]_i_4_n_0\
    );
\abs_data[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXIS_TDATA(18),
      O => \abs_data[20]_i_5_n_0\
    );
\abs_data[20]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXIS_TDATA(17),
      O => \abs_data[20]_i_6_n_0\
    );
\abs_data[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => S_AXIS_TDATA(21),
      I1 => abs_data1(21),
      I2 => S_AXIS_TDATA(23),
      O => p_0_in1_in(21)
    );
\abs_data[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => S_AXIS_TDATA(22),
      I1 => abs_data1(22),
      I2 => S_AXIS_TDATA(23),
      O => p_0_in1_in(22)
    );
\abs_data[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => S_AXIS_TDATA(23),
      I1 => abs_data1(23),
      O => \abs_data[23]_i_1_n_0\
    );
\abs_data[23]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXIS_TDATA(23),
      O => abs_data2
    );
\abs_data[23]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXIS_TDATA(22),
      O => \abs_data[23]_i_4_n_0\
    );
\abs_data[23]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXIS_TDATA(21),
      O => \abs_data[23]_i_5_n_0\
    );
\abs_data[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => S_AXIS_TDATA(8),
      I1 => abs_data1(8),
      I2 => S_AXIS_TDATA(23),
      O => p_0_in1_in(8)
    );
\abs_data[8]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXIS_TDATA(3),
      O => \abs_data[8]_i_10_n_0\
    );
\abs_data[8]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXIS_TDATA(2),
      O => \abs_data[8]_i_11_n_0\
    );
\abs_data[8]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXIS_TDATA(1),
      O => \abs_data[8]_i_12_n_0\
    );
\abs_data[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXIS_TDATA(8),
      O => \abs_data[8]_i_4_n_0\
    );
\abs_data[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXIS_TDATA(7),
      O => \abs_data[8]_i_5_n_0\
    );
\abs_data[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXIS_TDATA(6),
      O => \abs_data[8]_i_6_n_0\
    );
\abs_data[8]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXIS_TDATA(5),
      O => \abs_data[8]_i_7_n_0\
    );
\abs_data[8]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXIS_TDATA(0),
      O => \abs_data[8]_i_8_n_0\
    );
\abs_data[8]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXIS_TDATA(4),
      O => \abs_data[8]_i_9_n_0\
    );
\abs_data[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => S_AXIS_TDATA(9),
      I1 => abs_data1(9),
      I2 => S_AXIS_TDATA(23),
      O => p_0_in1_in(9)
    );
\abs_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(10),
      Q => abs_data(10),
      R => '0'
    );
\abs_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(11),
      Q => abs_data(11),
      R => '0'
    );
\abs_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(12),
      Q => abs_data(12),
      R => '0'
    );
\abs_data_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \abs_data_reg[8]_i_2_n_0\,
      CO(3) => \abs_data_reg[12]_i_2_n_0\,
      CO(2) => \abs_data_reg[12]_i_2_n_1\,
      CO(1) => \abs_data_reg[12]_i_2_n_2\,
      CO(0) => \abs_data_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => abs_data1(12 downto 9),
      S(3) => \abs_data[12]_i_3_n_0\,
      S(2) => \abs_data[12]_i_4_n_0\,
      S(1) => \abs_data[12]_i_5_n_0\,
      S(0) => \abs_data[12]_i_6_n_0\
    );
\abs_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(13),
      Q => abs_data(13),
      R => '0'
    );
\abs_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(14),
      Q => abs_data(14),
      R => '0'
    );
\abs_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(15),
      Q => abs_data(15),
      R => '0'
    );
\abs_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(16),
      Q => abs_data(16),
      R => '0'
    );
\abs_data_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \abs_data_reg[12]_i_2_n_0\,
      CO(3) => \abs_data_reg[16]_i_2_n_0\,
      CO(2) => \abs_data_reg[16]_i_2_n_1\,
      CO(1) => \abs_data_reg[16]_i_2_n_2\,
      CO(0) => \abs_data_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => abs_data1(16 downto 13),
      S(3) => \abs_data[16]_i_3_n_0\,
      S(2) => \abs_data[16]_i_4_n_0\,
      S(1) => \abs_data[16]_i_5_n_0\,
      S(0) => \abs_data[16]_i_6_n_0\
    );
\abs_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(17),
      Q => abs_data(17),
      R => '0'
    );
\abs_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(18),
      Q => abs_data(18),
      R => '0'
    );
\abs_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(19),
      Q => abs_data(19),
      R => '0'
    );
\abs_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(20),
      Q => abs_data(20),
      R => '0'
    );
\abs_data_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \abs_data_reg[16]_i_2_n_0\,
      CO(3) => \abs_data_reg[20]_i_2_n_0\,
      CO(2) => \abs_data_reg[20]_i_2_n_1\,
      CO(1) => \abs_data_reg[20]_i_2_n_2\,
      CO(0) => \abs_data_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => abs_data1(20 downto 17),
      S(3) => \abs_data[20]_i_3_n_0\,
      S(2) => \abs_data[20]_i_4_n_0\,
      S(1) => \abs_data[20]_i_5_n_0\,
      S(0) => \abs_data[20]_i_6_n_0\
    );
\abs_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(21),
      Q => abs_data(21),
      R => '0'
    );
\abs_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(22),
      Q => abs_data(22),
      R => '0'
    );
\abs_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => \abs_data[23]_i_1_n_0\,
      Q => abs_data(23),
      R => '0'
    );
\abs_data_reg[23]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \abs_data_reg[20]_i_2_n_0\,
      CO(3 downto 2) => \NLW_abs_data_reg[23]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \abs_data_reg[23]_i_2_n_2\,
      CO(0) => \abs_data_reg[23]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_abs_data_reg[23]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => abs_data1(23 downto 21),
      S(3) => '0',
      S(2) => abs_data2,
      S(1) => \abs_data[23]_i_4_n_0\,
      S(0) => \abs_data[23]_i_5_n_0\
    );
\abs_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(8),
      Q => abs_data(8),
      R => '0'
    );
\abs_data_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \abs_data_reg[8]_i_3_n_0\,
      CO(3) => \abs_data_reg[8]_i_2_n_0\,
      CO(2) => \abs_data_reg[8]_i_2_n_1\,
      CO(1) => \abs_data_reg[8]_i_2_n_2\,
      CO(0) => \abs_data_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => abs_data1(8),
      O(2 downto 0) => \NLW_abs_data_reg[8]_i_2_O_UNCONNECTED\(2 downto 0),
      S(3) => \abs_data[8]_i_4_n_0\,
      S(2) => \abs_data[8]_i_5_n_0\,
      S(1) => \abs_data[8]_i_6_n_0\,
      S(0) => \abs_data[8]_i_7_n_0\
    );
\abs_data_reg[8]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \abs_data_reg[8]_i_3_n_0\,
      CO(2) => \abs_data_reg[8]_i_3_n_1\,
      CO(1) => \abs_data_reg[8]_i_3_n_2\,
      CO(0) => \abs_data_reg[8]_i_3_n_3\,
      CYINIT => \abs_data[8]_i_8_n_0\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_abs_data_reg[8]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \abs_data[8]_i_9_n_0\,
      S(2) => \abs_data[8]_i_10_n_0\,
      S(1) => \abs_data[8]_i_11_n_0\,
      S(0) => \abs_data[8]_i_12_n_0\
    );
\abs_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(9),
      Q => abs_data(9),
      R => '0'
    );
\data_R[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4474FFFF44740000"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => data1,
      I2 => \data_R[0]_i_2_n_0\,
      I3 => \vol_N_reg_n_0_[0]\,
      I4 => volume(4),
      I5 => SHIFT_RIGHT(0),
      O => in9(0)
    );
\data_R[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \vol_N_reg_n_0_[2]\,
      I1 => S_AXIS_TDATA_reg(0),
      I2 => \vol_N_reg_n_0_[3]\,
      I3 => \vol_N_reg_n_0_[1]\,
      O => \data_R[0]_i_2_n_0\
    );
\data_R[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => data1,
      I2 => SHIFT_LEFT(10),
      I3 => volume(4),
      I4 => SHIFT_RIGHT(10),
      O => in9(10)
    );
\data_R[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_R[10]_i_3_n_0\,
      I1 => \data_R[12]_i_3_n_0\,
      I2 => \vol_N_reg_n_0_[0]\,
      I3 => \data_R[11]_i_3_n_0\,
      I4 => \vol_N_reg_n_0_[1]\,
      I5 => \data_R[13]_i_3_n_0\,
      O => SHIFT_LEFT(10)
    );
\data_R[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(3),
      I1 => \vol_N_reg_n_0_[2]\,
      I2 => S_AXIS_TDATA_reg(7),
      I3 => \vol_N_reg_n_0_[3]\,
      O => \data_R[10]_i_3_n_0\
    );
\data_R[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => data1,
      I2 => SHIFT_LEFT(11),
      I3 => volume(4),
      I4 => SHIFT_RIGHT(11),
      O => in9(11)
    );
\data_R[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_R[11]_i_3_n_0\,
      I1 => \data_R[13]_i_3_n_0\,
      I2 => \vol_N_reg_n_0_[0]\,
      I3 => \data_R[12]_i_3_n_0\,
      I4 => \vol_N_reg_n_0_[1]\,
      I5 => \data_R[14]_i_3_n_0\,
      O => SHIFT_LEFT(11)
    );
\data_R[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(4),
      I1 => \vol_N_reg_n_0_[2]\,
      I2 => S_AXIS_TDATA_reg(0),
      I3 => \vol_N_reg_n_0_[3]\,
      I4 => S_AXIS_TDATA_reg(8),
      O => \data_R[11]_i_3_n_0\
    );
\data_R[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => data1,
      I2 => SHIFT_LEFT(12),
      I3 => volume(4),
      I4 => SHIFT_RIGHT(12),
      O => in9(12)
    );
\data_R[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_R[12]_i_3_n_0\,
      I1 => \data_R[14]_i_3_n_0\,
      I2 => \vol_N_reg_n_0_[0]\,
      I3 => \data_R[13]_i_3_n_0\,
      I4 => \vol_N_reg_n_0_[1]\,
      I5 => \data_R[15]_i_3_n_0\,
      O => SHIFT_LEFT(12)
    );
\data_R[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(5),
      I1 => \vol_N_reg_n_0_[2]\,
      I2 => S_AXIS_TDATA_reg(1),
      I3 => \vol_N_reg_n_0_[3]\,
      I4 => S_AXIS_TDATA_reg(9),
      O => \data_R[12]_i_3_n_0\
    );
\data_R[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => data1,
      I2 => SHIFT_LEFT(13),
      I3 => volume(4),
      I4 => SHIFT_RIGHT(13),
      O => in9(13)
    );
\data_R[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_R[13]_i_3_n_0\,
      I1 => \data_R[15]_i_3_n_0\,
      I2 => \vol_N_reg_n_0_[0]\,
      I3 => \data_R[14]_i_3_n_0\,
      I4 => \vol_N_reg_n_0_[1]\,
      I5 => \data_R[16]_i_3_n_0\,
      O => SHIFT_LEFT(13)
    );
\data_R[13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(6),
      I1 => \vol_N_reg_n_0_[2]\,
      I2 => S_AXIS_TDATA_reg(2),
      I3 => \vol_N_reg_n_0_[3]\,
      I4 => S_AXIS_TDATA_reg(10),
      O => \data_R[13]_i_3_n_0\
    );
\data_R[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => data1,
      I2 => SHIFT_LEFT(14),
      I3 => volume(4),
      I4 => SHIFT_RIGHT(14),
      O => in9(14)
    );
\data_R[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_R[14]_i_3_n_0\,
      I1 => \data_R[16]_i_3_n_0\,
      I2 => \vol_N_reg_n_0_[0]\,
      I3 => \data_R[15]_i_3_n_0\,
      I4 => \vol_N_reg_n_0_[1]\,
      I5 => \data_R[17]_i_3_n_0\,
      O => SHIFT_LEFT(14)
    );
\data_R[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(7),
      I1 => \vol_N_reg_n_0_[2]\,
      I2 => S_AXIS_TDATA_reg(3),
      I3 => \vol_N_reg_n_0_[3]\,
      I4 => S_AXIS_TDATA_reg(11),
      O => \data_R[14]_i_3_n_0\
    );
\data_R[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => data1,
      I2 => SHIFT_LEFT(15),
      I3 => volume(4),
      I4 => SHIFT_RIGHT(15),
      O => in9(15)
    );
\data_R[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_R[15]_i_3_n_0\,
      I1 => \data_R[17]_i_3_n_0\,
      I2 => \vol_N_reg_n_0_[0]\,
      I3 => \data_R[16]_i_3_n_0\,
      I4 => \vol_N_reg_n_0_[1]\,
      I5 => \data_R[18]_i_3_n_0\,
      O => SHIFT_LEFT(15)
    );
\data_R[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(0),
      I1 => S_AXIS_TDATA_reg(8),
      I2 => \vol_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA_reg(4),
      I4 => \vol_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA_reg(12),
      O => \data_R[15]_i_3_n_0\
    );
\data_R[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => data1,
      I2 => SHIFT_LEFT(16),
      I3 => volume(4),
      I4 => SHIFT_RIGHT(16),
      O => in9(16)
    );
\data_R[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_R[16]_i_3_n_0\,
      I1 => \data_R[18]_i_3_n_0\,
      I2 => \vol_N_reg_n_0_[0]\,
      I3 => \data_R[17]_i_3_n_0\,
      I4 => \vol_N_reg_n_0_[1]\,
      I5 => \data_R[19]_i_3_n_0\,
      O => SHIFT_LEFT(16)
    );
\data_R[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(1),
      I1 => S_AXIS_TDATA_reg(9),
      I2 => \vol_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA_reg(5),
      I4 => \vol_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA_reg(13),
      O => \data_R[16]_i_3_n_0\
    );
\data_R[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => data1,
      I2 => SHIFT_LEFT(17),
      I3 => volume(4),
      I4 => SHIFT_RIGHT(17),
      O => in9(17)
    );
\data_R[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_R[17]_i_3_n_0\,
      I1 => \data_R[19]_i_3_n_0\,
      I2 => \vol_N_reg_n_0_[0]\,
      I3 => \data_R[18]_i_3_n_0\,
      I4 => \vol_N_reg_n_0_[1]\,
      I5 => \data_R[20]_i_3_n_0\,
      O => SHIFT_LEFT(17)
    );
\data_R[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(2),
      I1 => S_AXIS_TDATA_reg(10),
      I2 => \vol_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA_reg(6),
      I4 => \vol_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA_reg(14),
      O => \data_R[17]_i_3_n_0\
    );
\data_R[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => data1,
      I2 => SHIFT_LEFT(18),
      I3 => volume(4),
      I4 => SHIFT_RIGHT(18),
      O => in9(18)
    );
\data_R[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_R[18]_i_3_n_0\,
      I1 => \data_R[20]_i_3_n_0\,
      I2 => \vol_N_reg_n_0_[0]\,
      I3 => \data_R[19]_i_3_n_0\,
      I4 => \vol_N_reg_n_0_[1]\,
      I5 => \data_R[21]_i_3_n_0\,
      O => SHIFT_LEFT(18)
    );
\data_R[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(3),
      I1 => S_AXIS_TDATA_reg(11),
      I2 => \vol_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA_reg(7),
      I4 => \vol_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA_reg(15),
      O => \data_R[18]_i_3_n_0\
    );
\data_R[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => data1,
      I2 => SHIFT_LEFT(19),
      I3 => volume(4),
      I4 => SHIFT_RIGHT(19),
      O => in9(19)
    );
\data_R[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_R[19]_i_3_n_0\,
      I1 => \data_R[21]_i_3_n_0\,
      I2 => \vol_N_reg_n_0_[0]\,
      I3 => \data_R[20]_i_3_n_0\,
      I4 => \vol_N_reg_n_0_[1]\,
      I5 => \data_R[22]_i_4_n_0\,
      O => SHIFT_LEFT(19)
    );
\data_R[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(4),
      I1 => S_AXIS_TDATA_reg(12),
      I2 => \vol_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA_reg(8),
      I4 => \vol_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA_reg(16),
      O => \data_R[19]_i_3_n_0\
    );
\data_R[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => data1,
      I2 => SHIFT_LEFT(1),
      I3 => volume(4),
      I4 => SHIFT_RIGHT(1),
      O => in9(1)
    );
\data_R[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(0),
      I1 => \vol_N_reg_n_0_[0]\,
      I2 => \vol_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA_reg(1),
      I4 => \vol_N_reg_n_0_[3]\,
      I5 => \vol_N_reg_n_0_[1]\,
      O => SHIFT_LEFT(1)
    );
\data_R[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => data1,
      I2 => SHIFT_LEFT(20),
      I3 => volume(4),
      I4 => SHIFT_RIGHT(20),
      O => in9(20)
    );
\data_R[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_R[20]_i_3_n_0\,
      I1 => \data_R[22]_i_4_n_0\,
      I2 => \vol_N_reg_n_0_[0]\,
      I3 => \data_R[21]_i_3_n_0\,
      I4 => \vol_N_reg_n_0_[1]\,
      I5 => \M_AXIS_TDATA[23]_i_10_n_0\,
      O => SHIFT_LEFT(20)
    );
\data_R[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(5),
      I1 => S_AXIS_TDATA_reg(13),
      I2 => \vol_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA_reg(9),
      I4 => \vol_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA_reg(17),
      O => \data_R[20]_i_3_n_0\
    );
\data_R[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => data1,
      I2 => SHIFT_LEFT(21),
      I3 => volume(4),
      I4 => SHIFT_RIGHT(21),
      O => in9(21)
    );
\data_R[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_R[21]_i_3_n_0\,
      I1 => \M_AXIS_TDATA[23]_i_10_n_0\,
      I2 => \vol_N_reg_n_0_[0]\,
      I3 => \data_R[22]_i_4_n_0\,
      I4 => \vol_N_reg_n_0_[1]\,
      I5 => \M_AXIS_TDATA[23]_i_12_n_0\,
      O => SHIFT_LEFT(21)
    );
\data_R[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(6),
      I1 => S_AXIS_TDATA_reg(14),
      I2 => \vol_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA_reg(10),
      I4 => \vol_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA_reg(18),
      O => \data_R[21]_i_3_n_0\
    );
\data_R[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FE04FEF4FE040E0"
    )
        port map (
      I0 => data1,
      I1 => SHIFT_LEFT(22),
      I2 => volume(4),
      I3 => S_AXIS_TDATA_reg(23),
      I4 => \vol_N_reg_n_0_[0]\,
      I5 => \data_R[22]_i_3_n_0\,
      O => in9(22)
    );
\data_R[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_R[22]_i_4_n_0\,
      I1 => \M_AXIS_TDATA[23]_i_12_n_0\,
      I2 => \vol_N_reg_n_0_[0]\,
      I3 => \M_AXIS_TDATA[23]_i_10_n_0\,
      I4 => \vol_N_reg_n_0_[1]\,
      I5 => \M_AXIS_TDATA[23]_i_11_n_0\,
      O => SHIFT_LEFT(22)
    );
\data_R[22]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => \vol_N_reg_n_0_[1]\,
      I1 => \vol_N_reg_n_0_[2]\,
      I2 => S_AXIS_TDATA_reg(23),
      I3 => \vol_N_reg_n_0_[3]\,
      I4 => S_AXIS_TDATA_reg(22),
      O => \data_R[22]_i_3_n_0\
    );
\data_R[22]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(7),
      I1 => S_AXIS_TDATA_reg(15),
      I2 => \vol_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA_reg(11),
      I4 => \vol_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA_reg(19),
      O => \data_R[22]_i_4_n_0\
    );
\data_R[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => aresetn,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => S_AXIS_TVALID,
      I4 => S_AXIS_TLAST,
      O => data_R0
    );
\data_R[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => data1,
      I1 => SHIFT_LEFT(23),
      I2 => volume(4),
      I3 => S_AXIS_TDATA_reg(23),
      O => in9(23)
    );
\data_R[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => data1,
      I2 => SHIFT_LEFT(2),
      I3 => volume(4),
      I4 => SHIFT_RIGHT(2),
      O => in9(2)
    );
\data_R[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => \vol_N_reg_n_0_[2]\,
      I1 => S_AXIS_TDATA_reg(1),
      I2 => \vol_N_reg_n_0_[3]\,
      I3 => \vol_N_reg_n_0_[1]\,
      I4 => \vol_N_reg_n_0_[0]\,
      I5 => \data_R[3]_i_3_n_0\,
      O => SHIFT_LEFT(2)
    );
\data_R[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => data1,
      I2 => SHIFT_LEFT(3),
      I3 => volume(4),
      I4 => SHIFT_RIGHT(3),
      O => in9(3)
    );
\data_R[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_R[3]_i_3_n_0\,
      I1 => \vol_N_reg_n_0_[0]\,
      I2 => \data_R[4]_i_3_n_0\,
      O => SHIFT_LEFT(3)
    );
\data_R[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(0),
      I1 => \vol_N_reg_n_0_[1]\,
      I2 => \vol_N_reg_n_0_[3]\,
      I3 => S_AXIS_TDATA_reg(2),
      I4 => \vol_N_reg_n_0_[2]\,
      O => \data_R[3]_i_3_n_0\
    );
\data_R[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => data1,
      I2 => SHIFT_LEFT(4),
      I3 => volume(4),
      I4 => SHIFT_RIGHT(4),
      O => in9(4)
    );
\data_R[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_R[4]_i_3_n_0\,
      I1 => \vol_N_reg_n_0_[0]\,
      I2 => \data_R[5]_i_3_n_0\,
      O => SHIFT_LEFT(4)
    );
\data_R[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(1),
      I1 => \vol_N_reg_n_0_[1]\,
      I2 => \vol_N_reg_n_0_[3]\,
      I3 => S_AXIS_TDATA_reg(3),
      I4 => \vol_N_reg_n_0_[2]\,
      O => \data_R[4]_i_3_n_0\
    );
\data_R[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => data1,
      I2 => SHIFT_LEFT(5),
      I3 => volume(4),
      I4 => SHIFT_RIGHT(5),
      O => in9(5)
    );
\data_R[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_R[5]_i_3_n_0\,
      I1 => \vol_N_reg_n_0_[0]\,
      I2 => \data_R[6]_i_3_n_0\,
      O => SHIFT_LEFT(5)
    );
\data_R[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(2),
      I1 => \vol_N_reg_n_0_[1]\,
      I2 => S_AXIS_TDATA_reg(0),
      I3 => \vol_N_reg_n_0_[2]\,
      I4 => S_AXIS_TDATA_reg(4),
      I5 => \vol_N_reg_n_0_[3]\,
      O => \data_R[5]_i_3_n_0\
    );
\data_R[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => data1,
      I2 => SHIFT_LEFT(6),
      I3 => volume(4),
      I4 => SHIFT_RIGHT(6),
      O => in9(6)
    );
\data_R[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \data_R[6]_i_3_n_0\,
      I1 => \vol_N_reg_n_0_[0]\,
      I2 => \data_R[7]_i_3_n_0\,
      I3 => \vol_N_reg_n_0_[1]\,
      I4 => \data_R[9]_i_3_n_0\,
      O => SHIFT_LEFT(6)
    );
\data_R[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(3),
      I1 => \vol_N_reg_n_0_[1]\,
      I2 => S_AXIS_TDATA_reg(1),
      I3 => \vol_N_reg_n_0_[2]\,
      I4 => S_AXIS_TDATA_reg(5),
      I5 => \vol_N_reg_n_0_[3]\,
      O => \data_R[6]_i_3_n_0\
    );
\data_R[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => data1,
      I2 => SHIFT_LEFT(7),
      I3 => volume(4),
      I4 => SHIFT_RIGHT(7),
      O => in9(7)
    );
\data_R[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_R[7]_i_3_n_0\,
      I1 => \data_R[9]_i_3_n_0\,
      I2 => \vol_N_reg_n_0_[0]\,
      I3 => \data_R[8]_i_3_n_0\,
      I4 => \vol_N_reg_n_0_[1]\,
      I5 => \data_R[10]_i_3_n_0\,
      O => SHIFT_LEFT(7)
    );
\data_R[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(0),
      I1 => \vol_N_reg_n_0_[2]\,
      I2 => S_AXIS_TDATA_reg(4),
      I3 => \vol_N_reg_n_0_[3]\,
      O => \data_R[7]_i_3_n_0\
    );
\data_R[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => data1,
      I2 => SHIFT_LEFT(8),
      I3 => volume(4),
      I4 => SHIFT_RIGHT(8),
      O => in9(8)
    );
\data_R[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_R[8]_i_3_n_0\,
      I1 => \data_R[10]_i_3_n_0\,
      I2 => \vol_N_reg_n_0_[0]\,
      I3 => \data_R[9]_i_3_n_0\,
      I4 => \vol_N_reg_n_0_[1]\,
      I5 => \data_R[11]_i_3_n_0\,
      O => SHIFT_LEFT(8)
    );
\data_R[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(1),
      I1 => \vol_N_reg_n_0_[2]\,
      I2 => S_AXIS_TDATA_reg(5),
      I3 => \vol_N_reg_n_0_[3]\,
      O => \data_R[8]_i_3_n_0\
    );
\data_R[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(23),
      I1 => data1,
      I2 => SHIFT_LEFT(9),
      I3 => volume(4),
      I4 => SHIFT_RIGHT(9),
      O => in9(9)
    );
\data_R[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_R[9]_i_3_n_0\,
      I1 => \data_R[11]_i_3_n_0\,
      I2 => \vol_N_reg_n_0_[0]\,
      I3 => \data_R[10]_i_3_n_0\,
      I4 => \vol_N_reg_n_0_[1]\,
      I5 => \data_R[12]_i_3_n_0\,
      O => SHIFT_LEFT(9)
    );
\data_R[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => S_AXIS_TDATA_reg(2),
      I1 => \vol_N_reg_n_0_[2]\,
      I2 => S_AXIS_TDATA_reg(6),
      I3 => \vol_N_reg_n_0_[3]\,
      O => \data_R[9]_i_3_n_0\
    );
\data_R_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => data_R0,
      D => in9(0),
      Q => data_R(0),
      R => '0'
    );
\data_R_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => data_R0,
      D => in9(10),
      Q => data_R(10),
      R => '0'
    );
\data_R_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => data_R0,
      D => in9(11),
      Q => data_R(11),
      R => '0'
    );
\data_R_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => data_R0,
      D => in9(12),
      Q => data_R(12),
      R => '0'
    );
\data_R_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => data_R0,
      D => in9(13),
      Q => data_R(13),
      R => '0'
    );
\data_R_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => data_R0,
      D => in9(14),
      Q => data_R(14),
      R => '0'
    );
\data_R_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => data_R0,
      D => in9(15),
      Q => data_R(15),
      R => '0'
    );
\data_R_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => data_R0,
      D => in9(16),
      Q => data_R(16),
      R => '0'
    );
\data_R_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => data_R0,
      D => in9(17),
      Q => data_R(17),
      R => '0'
    );
\data_R_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => data_R0,
      D => in9(18),
      Q => data_R(18),
      R => '0'
    );
\data_R_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => data_R0,
      D => in9(19),
      Q => data_R(19),
      R => '0'
    );
\data_R_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => data_R0,
      D => in9(1),
      Q => data_R(1),
      R => '0'
    );
\data_R_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => data_R0,
      D => in9(20),
      Q => data_R(20),
      R => '0'
    );
\data_R_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => data_R0,
      D => in9(21),
      Q => data_R(21),
      R => '0'
    );
\data_R_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => data_R0,
      D => in9(22),
      Q => data_R(22),
      R => '0'
    );
\data_R_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => data_R0,
      D => in9(23),
      Q => data_R(23),
      R => '0'
    );
\data_R_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => data_R0,
      D => in9(2),
      Q => data_R(2),
      R => '0'
    );
\data_R_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => data_R0,
      D => in9(3),
      Q => data_R(3),
      R => '0'
    );
\data_R_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => data_R0,
      D => in9(4),
      Q => data_R(4),
      R => '0'
    );
\data_R_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => data_R0,
      D => in9(5),
      Q => data_R(5),
      R => '0'
    );
\data_R_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => data_R0,
      D => in9(6),
      Q => data_R(6),
      R => '0'
    );
\data_R_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => data_R0,
      D => in9(7),
      Q => data_R(7),
      R => '0'
    );
\data_R_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => data_R0,
      D => in9(8),
      Q => data_R(8),
      R => '0'
    );
\data_R_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => data_R0,
      D => in9(9),
      Q => data_R(9),
      R => '0'
    );
\vol_N[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => volume(1),
      I1 => volume(0),
      O => vol_N(0)
    );
\vol_N[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A56"
    )
        port map (
      I0 => volume(2),
      I1 => volume(0),
      I2 => volume(1),
      I3 => volume(4),
      O => vol_N(1)
    );
\vol_N[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA5556"
    )
        port map (
      I0 => volume(3),
      I1 => volume(2),
      I2 => volume(1),
      I3 => volume(0),
      I4 => volume(4),
      O => vol_N(2)
    );
\vol_N[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => aresetn,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => S_AXIS_TVALID,
      O => vol_N0
    );
\vol_N[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000001"
    )
        port map (
      I0 => volume(2),
      I1 => volume(1),
      I2 => volume(0),
      I3 => volume(3),
      I4 => volume(4),
      O => vol_N(3)
    );
\vol_N_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vol_N0,
      D => vol_N(0),
      Q => \vol_N_reg_n_0_[0]\,
      R => '0'
    );
\vol_N_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vol_N0,
      D => vol_N(1),
      Q => \vol_N_reg_n_0_[1]\,
      R => '0'
    );
\vol_N_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vol_N0,
      D => vol_N(2),
      Q => \vol_N_reg_n_0_[2]\,
      R => '0'
    );
\vol_N_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vol_N0,
      D => vol_N(3),
      Q => \vol_N_reg_n_0_[3]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BlockDesign_VolumeController_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S_AXIS_TVALID : in STD_LOGIC;
    S_AXIS_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S_AXIS_TREADY : out STD_LOGIC;
    S_AXIS_TLAST : in STD_LOGIC;
    M_AXIS_TREADY : in STD_LOGIC;
    M_AXIS_TDATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M_AXIS_TLAST : out STD_LOGIC;
    M_AXIS_TVALID : out STD_LOGIC;
    volume : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of BlockDesign_VolumeController_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of BlockDesign_VolumeController_0_0 : entity is "BlockDesign_VolumeController_0_0,VolumeController,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of BlockDesign_VolumeController_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of BlockDesign_VolumeController_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of BlockDesign_VolumeController_0_0 : entity is "VolumeController,Vivado 2020.2";
end BlockDesign_VolumeController_0_0;

architecture STRUCTURE of BlockDesign_VolumeController_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of M_AXIS_TLAST : signal is "xilinx.com:interface:axis:1.0 M_AXIS TLAST";
  attribute x_interface_info of M_AXIS_TREADY : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of M_AXIS_TREADY : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of M_AXIS_TVALID : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute x_interface_info of S_AXIS_TLAST : signal is "xilinx.com:interface:axis:1.0 S_AXIS TLAST";
  attribute x_interface_info of S_AXIS_TREADY : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute x_interface_info of S_AXIS_TVALID : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute x_interface_parameter of S_AXIS_TVALID : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF M_AXIS:S_AXIS, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of M_AXIS_TDATA : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute x_interface_info of S_AXIS_TDATA : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
begin
U0: entity work.BlockDesign_VolumeController_0_0_VolumeController
     port map (
      M_AXIS_TDATA(23 downto 0) => M_AXIS_TDATA(23 downto 0),
      M_AXIS_TLAST => M_AXIS_TLAST,
      M_AXIS_TREADY => M_AXIS_TREADY,
      M_AXIS_TVALID => M_AXIS_TVALID,
      S_AXIS_TDATA(23 downto 0) => S_AXIS_TDATA(23 downto 0),
      S_AXIS_TLAST => S_AXIS_TLAST,
      S_AXIS_TREADY => S_AXIS_TREADY,
      S_AXIS_TVALID => S_AXIS_TVALID,
      aclk => aclk,
      aresetn => aresetn,
      volume(4 downto 0) => volume(9 downto 5)
    );
end STRUCTURE;

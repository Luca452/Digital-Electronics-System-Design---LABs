-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Mon May 22 23:55:50 2023
-- Host        : DESKTOP-JKUPK39 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/daido/Desktop/Polimi/Anno
--               4/DESD/Git/KittCarPWM/AuDiOcOnSoLe/AuDiOcOnSoLe.gen/sources_1/bd/BlockDesign/ip/BlockDesign_BalanceController_0_0/BlockDesign_BalanceController_0_0_sim_netlist.vhdl}
-- Design      : BlockDesign_BalanceController_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BlockDesign_BalanceController_0_0_BalanceController is
  port (
    M_AXIS_TDATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    S_AXIS_TREADY : out STD_LOGIC;
    M_AXIS_TLAST : out STD_LOGIC;
    M_AXIS_TVALID : out STD_LOGIC;
    aresetn : in STD_LOGIC;
    M_AXIS_TREADY : in STD_LOGIC;
    S_AXIS_TLAST : in STD_LOGIC;
    S_AXIS_TVALID : in STD_LOGIC;
    aclk : in STD_LOGIC;
    S_AXIS_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    balance : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of BlockDesign_BalanceController_0_0_BalanceController : entity is "BalanceController";
end BlockDesign_BalanceController_0_0_BalanceController;

architecture STRUCTURE of BlockDesign_BalanceController_0_0_BalanceController is
  signal DATA_R : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal DATA_R0 : STD_LOGIC;
  signal \DATA_R[0]_i_1_n_0\ : STD_LOGIC;
  signal \DATA_R[10]_i_1_n_0\ : STD_LOGIC;
  signal \DATA_R[11]_i_1_n_0\ : STD_LOGIC;
  signal \DATA_R[12]_i_1_n_0\ : STD_LOGIC;
  signal \DATA_R[13]_i_1_n_0\ : STD_LOGIC;
  signal \DATA_R[14]_i_1_n_0\ : STD_LOGIC;
  signal \DATA_R[15]_i_1_n_0\ : STD_LOGIC;
  signal \DATA_R[16]_i_1_n_0\ : STD_LOGIC;
  signal \DATA_R[17]_i_1_n_0\ : STD_LOGIC;
  signal \DATA_R[18]_i_1_n_0\ : STD_LOGIC;
  signal \DATA_R[19]_i_1_n_0\ : STD_LOGIC;
  signal \DATA_R[19]_i_2_n_0\ : STD_LOGIC;
  signal \DATA_R[1]_i_1_n_0\ : STD_LOGIC;
  signal \DATA_R[20]_i_1_n_0\ : STD_LOGIC;
  signal \DATA_R[20]_i_2_n_0\ : STD_LOGIC;
  signal \DATA_R[21]_i_1_n_0\ : STD_LOGIC;
  signal \DATA_R[21]_i_2_n_0\ : STD_LOGIC;
  signal \DATA_R[21]_i_3_n_0\ : STD_LOGIC;
  signal \DATA_R[22]_i_1_n_0\ : STD_LOGIC;
  signal \DATA_R[2]_i_1_n_0\ : STD_LOGIC;
  signal \DATA_R[3]_i_1_n_0\ : STD_LOGIC;
  signal \DATA_R[4]_i_1_n_0\ : STD_LOGIC;
  signal \DATA_R[5]_i_1_n_0\ : STD_LOGIC;
  signal \DATA_R[6]_i_1_n_0\ : STD_LOGIC;
  signal \DATA_R[7]_i_1_n_0\ : STD_LOGIC;
  signal \DATA_R[8]_i_1_n_0\ : STD_LOGIC;
  signal \DATA_R[9]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal M_AXIS_TDATA0 : STD_LOGIC;
  signal \M_AXIS_TDATA[0]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[0]_i_3_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[10]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[10]_i_3_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[11]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[11]_i_3_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[12]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[12]_i_3_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[13]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[13]_i_3_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[14]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[14]_i_3_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[15]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[15]_i_3_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[16]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[16]_i_3_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[17]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[17]_i_3_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[17]_i_4_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[18]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[18]_i_3_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[18]_i_4_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[19]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[1]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[1]_i_3_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[20]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[21]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[22]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[23]_i_2_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[2]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[2]_i_3_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[3]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[3]_i_3_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[4]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[4]_i_3_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[5]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[5]_i_3_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[6]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[6]_i_3_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[7]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[7]_i_3_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[8]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[8]_i_3_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[9]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[9]_i_3_n_0\ : STD_LOGIC;
  signal \^m_axis_tlast\ : STD_LOGIC;
  signal M_AXIS_TLAST_i_1_n_0 : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal M_AXIS_TVALID_i_1_n_0 : STD_LOGIC;
  signal SHIFT_RIGHT : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \^s_axis_tready\ : STD_LOGIC;
  signal S_AXIS_TREADY0 : STD_LOGIC;
  signal S_AXIS_TREADY_i_1_n_0 : STD_LOGIC;
  signal bal_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal bal_N0 : STD_LOGIC;
  signal bal_N11_out : STD_LOGIC;
  signal \bal_N1__0\ : STD_LOGIC;
  signal \bal_N_reg_n_0_[0]\ : STD_LOGIC;
  signal \bal_N_reg_n_0_[1]\ : STD_LOGIC;
  signal \bal_N_reg_n_0_[2]\ : STD_LOGIC;
  signal \bal_N_reg_n_0_[3]\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \DATA_R[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \DATA_R[10]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \DATA_R[11]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \DATA_R[12]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \DATA_R[13]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \DATA_R[14]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \DATA_R[15]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \DATA_R[16]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \DATA_R[17]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \DATA_R[18]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \DATA_R[19]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \DATA_R[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \DATA_R[20]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \DATA_R[21]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \DATA_R[22]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \DATA_R[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \DATA_R[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \DATA_R[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \DATA_R[5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \DATA_R[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \DATA_R[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \DATA_R[8]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \DATA_R[9]_i_1\ : label is "soft_lutpair11";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "receive_r:01,send_l:10,receive_l:00,send_r:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "receive_r:01,send_l:10,receive_l:00,send_r:11";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[15]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[16]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[17]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[18]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[19]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[20]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[21]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of M_AXIS_TLAST_i_2 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of S_AXIS_TREADY_i_2 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \bal_N[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bal_N[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bal_N[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bal_N[3]_i_2\ : label is "soft_lutpair0";
begin
  M_AXIS_TLAST <= \^m_axis_tlast\;
  M_AXIS_TVALID <= \^m_axis_tvalid\;
  S_AXIS_TREADY <= \^s_axis_tready\;
\DATA_R[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => S_AXIS_TDATA(0),
      I1 => SHIFT_RIGHT(0),
      I2 => balance(4),
      O => \DATA_R[0]_i_1_n_0\
    );
\DATA_R[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => S_AXIS_TDATA(10),
      I1 => SHIFT_RIGHT(10),
      I2 => balance(4),
      O => \DATA_R[10]_i_1_n_0\
    );
\DATA_R[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => S_AXIS_TDATA(11),
      I1 => SHIFT_RIGHT(11),
      I2 => balance(4),
      O => \DATA_R[11]_i_1_n_0\
    );
\DATA_R[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => S_AXIS_TDATA(12),
      I1 => SHIFT_RIGHT(12),
      I2 => balance(4),
      O => \DATA_R[12]_i_1_n_0\
    );
\DATA_R[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => S_AXIS_TDATA(13),
      I1 => SHIFT_RIGHT(13),
      I2 => balance(4),
      O => \DATA_R[13]_i_1_n_0\
    );
\DATA_R[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => S_AXIS_TDATA(14),
      I1 => SHIFT_RIGHT(14),
      I2 => balance(4),
      O => \DATA_R[14]_i_1_n_0\
    );
\DATA_R[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => S_AXIS_TDATA(15),
      I1 => SHIFT_RIGHT(15),
      I2 => balance(4),
      O => \DATA_R[15]_i_1_n_0\
    );
\DATA_R[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => S_AXIS_TDATA(16),
      I1 => SHIFT_RIGHT(16),
      I2 => balance(4),
      O => \DATA_R[16]_i_1_n_0\
    );
\DATA_R[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => S_AXIS_TDATA(17),
      I1 => SHIFT_RIGHT(17),
      I2 => balance(4),
      O => \DATA_R[17]_i_1_n_0\
    );
\DATA_R[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => S_AXIS_TDATA(18),
      I1 => SHIFT_RIGHT(18),
      I2 => balance(4),
      O => \DATA_R[18]_i_1_n_0\
    );
\DATA_R[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => S_AXIS_TDATA(19),
      I1 => \DATA_R[20]_i_2_n_0\,
      I2 => \bal_N_reg_n_0_[0]\,
      I3 => \DATA_R[19]_i_2_n_0\,
      I4 => balance(4),
      O => \DATA_R[19]_i_1_n_0\
    );
\DATA_R[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => S_AXIS_TDATA(21),
      I1 => \bal_N_reg_n_0_[1]\,
      I2 => \bal_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA(23),
      I4 => \bal_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA(19),
      O => \DATA_R[19]_i_2_n_0\
    );
\DATA_R[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => S_AXIS_TDATA(1),
      I1 => SHIFT_RIGHT(1),
      I2 => balance(4),
      O => \DATA_R[1]_i_1_n_0\
    );
\DATA_R[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => S_AXIS_TDATA(20),
      I1 => \DATA_R[21]_i_3_n_0\,
      I2 => \bal_N_reg_n_0_[0]\,
      I3 => \DATA_R[20]_i_2_n_0\,
      I4 => balance(4),
      O => \DATA_R[20]_i_1_n_0\
    );
\DATA_R[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => S_AXIS_TDATA(22),
      I1 => \bal_N_reg_n_0_[1]\,
      I2 => \bal_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA(23),
      I4 => \bal_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA(20),
      O => \DATA_R[20]_i_2_n_0\
    );
\DATA_R[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => S_AXIS_TDATA(21),
      I1 => \DATA_R[21]_i_2_n_0\,
      I2 => \bal_N_reg_n_0_[0]\,
      I3 => \DATA_R[21]_i_3_n_0\,
      I4 => balance(4),
      O => \DATA_R[21]_i_1_n_0\
    );
\DATA_R[21]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => \bal_N_reg_n_0_[1]\,
      I1 => \bal_N_reg_n_0_[2]\,
      I2 => S_AXIS_TDATA(23),
      I3 => \bal_N_reg_n_0_[3]\,
      I4 => S_AXIS_TDATA(22),
      O => \DATA_R[21]_i_2_n_0\
    );
\DATA_R[21]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => \bal_N_reg_n_0_[1]\,
      I1 => \bal_N_reg_n_0_[2]\,
      I2 => S_AXIS_TDATA(23),
      I3 => \bal_N_reg_n_0_[3]\,
      I4 => S_AXIS_TDATA(21),
      O => \DATA_R[21]_i_3_n_0\
    );
\DATA_R[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => S_AXIS_TDATA(22),
      I1 => SHIFT_RIGHT(22),
      I2 => balance(4),
      O => \DATA_R[22]_i_1_n_0\
    );
\DATA_R[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => aresetn,
      I1 => S_AXIS_TVALID,
      I2 => S_AXIS_TLAST,
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      O => DATA_R0
    );
\DATA_R[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => S_AXIS_TDATA(2),
      I1 => SHIFT_RIGHT(2),
      I2 => balance(4),
      O => \DATA_R[2]_i_1_n_0\
    );
\DATA_R[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => S_AXIS_TDATA(3),
      I1 => SHIFT_RIGHT(3),
      I2 => balance(4),
      O => \DATA_R[3]_i_1_n_0\
    );
\DATA_R[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => S_AXIS_TDATA(4),
      I1 => SHIFT_RIGHT(4),
      I2 => balance(4),
      O => \DATA_R[4]_i_1_n_0\
    );
\DATA_R[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => S_AXIS_TDATA(5),
      I1 => SHIFT_RIGHT(5),
      I2 => balance(4),
      O => \DATA_R[5]_i_1_n_0\
    );
\DATA_R[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => S_AXIS_TDATA(6),
      I1 => SHIFT_RIGHT(6),
      I2 => balance(4),
      O => \DATA_R[6]_i_1_n_0\
    );
\DATA_R[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => S_AXIS_TDATA(7),
      I1 => SHIFT_RIGHT(7),
      I2 => balance(4),
      O => \DATA_R[7]_i_1_n_0\
    );
\DATA_R[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => S_AXIS_TDATA(8),
      I1 => SHIFT_RIGHT(8),
      I2 => balance(4),
      O => \DATA_R[8]_i_1_n_0\
    );
\DATA_R[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => S_AXIS_TDATA(9),
      I1 => SHIFT_RIGHT(9),
      I2 => balance(4),
      O => \DATA_R[9]_i_1_n_0\
    );
\DATA_R_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => DATA_R0,
      D => \DATA_R[0]_i_1_n_0\,
      Q => DATA_R(0),
      R => '0'
    );
\DATA_R_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => DATA_R0,
      D => \DATA_R[10]_i_1_n_0\,
      Q => DATA_R(10),
      R => '0'
    );
\DATA_R_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => DATA_R0,
      D => \DATA_R[11]_i_1_n_0\,
      Q => DATA_R(11),
      R => '0'
    );
\DATA_R_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => DATA_R0,
      D => \DATA_R[12]_i_1_n_0\,
      Q => DATA_R(12),
      R => '0'
    );
\DATA_R_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => DATA_R0,
      D => \DATA_R[13]_i_1_n_0\,
      Q => DATA_R(13),
      R => '0'
    );
\DATA_R_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => DATA_R0,
      D => \DATA_R[14]_i_1_n_0\,
      Q => DATA_R(14),
      R => '0'
    );
\DATA_R_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => DATA_R0,
      D => \DATA_R[15]_i_1_n_0\,
      Q => DATA_R(15),
      R => '0'
    );
\DATA_R_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => DATA_R0,
      D => \DATA_R[16]_i_1_n_0\,
      Q => DATA_R(16),
      R => '0'
    );
\DATA_R_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => DATA_R0,
      D => \DATA_R[17]_i_1_n_0\,
      Q => DATA_R(17),
      R => '0'
    );
\DATA_R_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => DATA_R0,
      D => \DATA_R[18]_i_1_n_0\,
      Q => DATA_R(18),
      R => '0'
    );
\DATA_R_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => DATA_R0,
      D => \DATA_R[19]_i_1_n_0\,
      Q => DATA_R(19),
      R => '0'
    );
\DATA_R_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => DATA_R0,
      D => \DATA_R[1]_i_1_n_0\,
      Q => DATA_R(1),
      R => '0'
    );
\DATA_R_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => DATA_R0,
      D => \DATA_R[20]_i_1_n_0\,
      Q => DATA_R(20),
      R => '0'
    );
\DATA_R_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => DATA_R0,
      D => \DATA_R[21]_i_1_n_0\,
      Q => DATA_R(21),
      R => '0'
    );
\DATA_R_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => DATA_R0,
      D => \DATA_R[22]_i_1_n_0\,
      Q => DATA_R(22),
      R => '0'
    );
\DATA_R_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => DATA_R0,
      D => S_AXIS_TDATA(23),
      Q => DATA_R(23),
      R => '0'
    );
\DATA_R_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => DATA_R0,
      D => \DATA_R[2]_i_1_n_0\,
      Q => DATA_R(2),
      R => '0'
    );
\DATA_R_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => DATA_R0,
      D => \DATA_R[3]_i_1_n_0\,
      Q => DATA_R(3),
      R => '0'
    );
\DATA_R_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => DATA_R0,
      D => \DATA_R[4]_i_1_n_0\,
      Q => DATA_R(4),
      R => '0'
    );
\DATA_R_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => DATA_R0,
      D => \DATA_R[5]_i_1_n_0\,
      Q => DATA_R(5),
      R => '0'
    );
\DATA_R_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => DATA_R0,
      D => \DATA_R[6]_i_1_n_0\,
      Q => DATA_R(6),
      R => '0'
    );
\DATA_R_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => DATA_R0,
      D => \DATA_R[7]_i_1_n_0\,
      Q => DATA_R(7),
      R => '0'
    );
\DATA_R_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => DATA_R0,
      D => \DATA_R[8]_i_1_n_0\,
      Q => DATA_R(8),
      R => '0'
    );
\DATA_R_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => DATA_R0,
      D => \DATA_R[9]_i_1_n_0\,
      Q => DATA_R(9),
      R => '0'
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"64C46ECE6CCC6CCC"
    )
        port map (
      I0 => aresetn,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => M_AXIS_TREADY,
      I4 => S_AXIS_TLAST,
      I5 => S_AXIS_TVALID,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"78F870F070F070F0"
    )
        port map (
      I0 => aresetn,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => M_AXIS_TREADY,
      I4 => S_AXIS_TLAST,
      I5 => S_AXIS_TVALID,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => \state__0\(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => \state__0\(1),
      R => '0'
    );
\M_AXIS_TDATA[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DATA_R(0),
      I1 => \state__0\(1),
      I2 => SHIFT_RIGHT(0),
      I3 => balance(4),
      I4 => S_AXIS_TDATA(0),
      O => \M_AXIS_TDATA[0]_i_1_n_0\
    );
\M_AXIS_TDATA[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \M_AXIS_TDATA[3]_i_3_n_0\,
      I1 => \M_AXIS_TDATA[1]_i_3_n_0\,
      I2 => \bal_N_reg_n_0_[0]\,
      I3 => \M_AXIS_TDATA[2]_i_3_n_0\,
      I4 => \bal_N_reg_n_0_[1]\,
      I5 => \M_AXIS_TDATA[0]_i_3_n_0\,
      O => SHIFT_RIGHT(0)
    );
\M_AXIS_TDATA[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA(12),
      I1 => S_AXIS_TDATA(4),
      I2 => \bal_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA(8),
      I4 => \bal_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA(0),
      O => \M_AXIS_TDATA[0]_i_3_n_0\
    );
\M_AXIS_TDATA[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DATA_R(10),
      I1 => \state__0\(1),
      I2 => SHIFT_RIGHT(10),
      I3 => balance(4),
      I4 => S_AXIS_TDATA(10),
      O => \M_AXIS_TDATA[10]_i_1_n_0\
    );
\M_AXIS_TDATA[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \M_AXIS_TDATA[13]_i_3_n_0\,
      I1 => \M_AXIS_TDATA[11]_i_3_n_0\,
      I2 => \bal_N_reg_n_0_[0]\,
      I3 => \M_AXIS_TDATA[12]_i_3_n_0\,
      I4 => \bal_N_reg_n_0_[1]\,
      I5 => \M_AXIS_TDATA[10]_i_3_n_0\,
      O => SHIFT_RIGHT(10)
    );
\M_AXIS_TDATA[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA(22),
      I1 => S_AXIS_TDATA(14),
      I2 => \bal_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA(18),
      I4 => \bal_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA(10),
      O => \M_AXIS_TDATA[10]_i_3_n_0\
    );
\M_AXIS_TDATA[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DATA_R(11),
      I1 => \state__0\(1),
      I2 => SHIFT_RIGHT(11),
      I3 => balance(4),
      I4 => S_AXIS_TDATA(11),
      O => \M_AXIS_TDATA[11]_i_1_n_0\
    );
\M_AXIS_TDATA[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \M_AXIS_TDATA[14]_i_3_n_0\,
      I1 => \M_AXIS_TDATA[12]_i_3_n_0\,
      I2 => \bal_N_reg_n_0_[0]\,
      I3 => \M_AXIS_TDATA[13]_i_3_n_0\,
      I4 => \bal_N_reg_n_0_[1]\,
      I5 => \M_AXIS_TDATA[11]_i_3_n_0\,
      O => SHIFT_RIGHT(11)
    );
\M_AXIS_TDATA[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA(23),
      I1 => S_AXIS_TDATA(15),
      I2 => \bal_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA(19),
      I4 => \bal_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA(11),
      O => \M_AXIS_TDATA[11]_i_3_n_0\
    );
\M_AXIS_TDATA[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DATA_R(12),
      I1 => \state__0\(1),
      I2 => SHIFT_RIGHT(12),
      I3 => balance(4),
      I4 => S_AXIS_TDATA(12),
      O => \M_AXIS_TDATA[12]_i_1_n_0\
    );
\M_AXIS_TDATA[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \M_AXIS_TDATA[15]_i_3_n_0\,
      I1 => \M_AXIS_TDATA[13]_i_3_n_0\,
      I2 => \bal_N_reg_n_0_[0]\,
      I3 => \M_AXIS_TDATA[14]_i_3_n_0\,
      I4 => \bal_N_reg_n_0_[1]\,
      I5 => \M_AXIS_TDATA[12]_i_3_n_0\,
      O => SHIFT_RIGHT(12)
    );
\M_AXIS_TDATA[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA(23),
      I1 => S_AXIS_TDATA(16),
      I2 => \bal_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA(20),
      I4 => \bal_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA(12),
      O => \M_AXIS_TDATA[12]_i_3_n_0\
    );
\M_AXIS_TDATA[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DATA_R(13),
      I1 => \state__0\(1),
      I2 => SHIFT_RIGHT(13),
      I3 => balance(4),
      I4 => S_AXIS_TDATA(13),
      O => \M_AXIS_TDATA[13]_i_1_n_0\
    );
\M_AXIS_TDATA[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \M_AXIS_TDATA[16]_i_3_n_0\,
      I1 => \M_AXIS_TDATA[14]_i_3_n_0\,
      I2 => \bal_N_reg_n_0_[0]\,
      I3 => \M_AXIS_TDATA[15]_i_3_n_0\,
      I4 => \bal_N_reg_n_0_[1]\,
      I5 => \M_AXIS_TDATA[13]_i_3_n_0\,
      O => SHIFT_RIGHT(13)
    );
\M_AXIS_TDATA[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA(23),
      I1 => S_AXIS_TDATA(17),
      I2 => \bal_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA(21),
      I4 => \bal_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA(13),
      O => \M_AXIS_TDATA[13]_i_3_n_0\
    );
\M_AXIS_TDATA[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DATA_R(14),
      I1 => \state__0\(1),
      I2 => SHIFT_RIGHT(14),
      I3 => balance(4),
      I4 => S_AXIS_TDATA(14),
      O => \M_AXIS_TDATA[14]_i_1_n_0\
    );
\M_AXIS_TDATA[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \M_AXIS_TDATA[17]_i_4_n_0\,
      I1 => \M_AXIS_TDATA[15]_i_3_n_0\,
      I2 => \bal_N_reg_n_0_[0]\,
      I3 => \M_AXIS_TDATA[16]_i_3_n_0\,
      I4 => \bal_N_reg_n_0_[1]\,
      I5 => \M_AXIS_TDATA[14]_i_3_n_0\,
      O => SHIFT_RIGHT(14)
    );
\M_AXIS_TDATA[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA(23),
      I1 => S_AXIS_TDATA(18),
      I2 => \bal_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA(22),
      I4 => \bal_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA(14),
      O => \M_AXIS_TDATA[14]_i_3_n_0\
    );
\M_AXIS_TDATA[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DATA_R(15),
      I1 => \state__0\(1),
      I2 => SHIFT_RIGHT(15),
      I3 => balance(4),
      I4 => S_AXIS_TDATA(15),
      O => \M_AXIS_TDATA[15]_i_1_n_0\
    );
\M_AXIS_TDATA[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \M_AXIS_TDATA[18]_i_4_n_0\,
      I1 => \M_AXIS_TDATA[16]_i_3_n_0\,
      I2 => \bal_N_reg_n_0_[0]\,
      I3 => \M_AXIS_TDATA[17]_i_4_n_0\,
      I4 => \bal_N_reg_n_0_[1]\,
      I5 => \M_AXIS_TDATA[15]_i_3_n_0\,
      O => SHIFT_RIGHT(15)
    );
\M_AXIS_TDATA[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => S_AXIS_TDATA(19),
      I1 => \bal_N_reg_n_0_[2]\,
      I2 => S_AXIS_TDATA(23),
      I3 => \bal_N_reg_n_0_[3]\,
      I4 => S_AXIS_TDATA(15),
      O => \M_AXIS_TDATA[15]_i_3_n_0\
    );
\M_AXIS_TDATA[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DATA_R(16),
      I1 => \state__0\(1),
      I2 => SHIFT_RIGHT(16),
      I3 => balance(4),
      I4 => S_AXIS_TDATA(16),
      O => \M_AXIS_TDATA[16]_i_1_n_0\
    );
\M_AXIS_TDATA[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \M_AXIS_TDATA[17]_i_3_n_0\,
      I1 => \M_AXIS_TDATA[17]_i_4_n_0\,
      I2 => \bal_N_reg_n_0_[0]\,
      I3 => \M_AXIS_TDATA[18]_i_4_n_0\,
      I4 => \bal_N_reg_n_0_[1]\,
      I5 => \M_AXIS_TDATA[16]_i_3_n_0\,
      O => SHIFT_RIGHT(16)
    );
\M_AXIS_TDATA[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => S_AXIS_TDATA(20),
      I1 => \bal_N_reg_n_0_[2]\,
      I2 => S_AXIS_TDATA(23),
      I3 => \bal_N_reg_n_0_[3]\,
      I4 => S_AXIS_TDATA(16),
      O => \M_AXIS_TDATA[16]_i_3_n_0\
    );
\M_AXIS_TDATA[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DATA_R(17),
      I1 => \state__0\(1),
      I2 => SHIFT_RIGHT(17),
      I3 => balance(4),
      I4 => S_AXIS_TDATA(17),
      O => \M_AXIS_TDATA[17]_i_1_n_0\
    );
\M_AXIS_TDATA[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \M_AXIS_TDATA[18]_i_3_n_0\,
      I1 => \M_AXIS_TDATA[18]_i_4_n_0\,
      I2 => \bal_N_reg_n_0_[0]\,
      I3 => \M_AXIS_TDATA[17]_i_3_n_0\,
      I4 => \bal_N_reg_n_0_[1]\,
      I5 => \M_AXIS_TDATA[17]_i_4_n_0\,
      O => SHIFT_RIGHT(17)
    );
\M_AXIS_TDATA[17]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \bal_N_reg_n_0_[2]\,
      I1 => S_AXIS_TDATA(23),
      I2 => \bal_N_reg_n_0_[3]\,
      I3 => S_AXIS_TDATA(19),
      O => \M_AXIS_TDATA[17]_i_3_n_0\
    );
\M_AXIS_TDATA[17]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => S_AXIS_TDATA(21),
      I1 => \bal_N_reg_n_0_[2]\,
      I2 => S_AXIS_TDATA(23),
      I3 => \bal_N_reg_n_0_[3]\,
      I4 => S_AXIS_TDATA(17),
      O => \M_AXIS_TDATA[17]_i_4_n_0\
    );
\M_AXIS_TDATA[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DATA_R(18),
      I1 => \state__0\(1),
      I2 => SHIFT_RIGHT(18),
      I3 => balance(4),
      I4 => S_AXIS_TDATA(18),
      O => \M_AXIS_TDATA[18]_i_1_n_0\
    );
\M_AXIS_TDATA[18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \DATA_R[19]_i_2_n_0\,
      I1 => \bal_N_reg_n_0_[0]\,
      I2 => \M_AXIS_TDATA[18]_i_3_n_0\,
      I3 => \bal_N_reg_n_0_[1]\,
      I4 => \M_AXIS_TDATA[18]_i_4_n_0\,
      O => SHIFT_RIGHT(18)
    );
\M_AXIS_TDATA[18]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \bal_N_reg_n_0_[2]\,
      I1 => S_AXIS_TDATA(23),
      I2 => \bal_N_reg_n_0_[3]\,
      I3 => S_AXIS_TDATA(20),
      O => \M_AXIS_TDATA[18]_i_3_n_0\
    );
\M_AXIS_TDATA[18]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => S_AXIS_TDATA(22),
      I1 => \bal_N_reg_n_0_[2]\,
      I2 => S_AXIS_TDATA(23),
      I3 => \bal_N_reg_n_0_[3]\,
      I4 => S_AXIS_TDATA(18),
      O => \M_AXIS_TDATA[18]_i_4_n_0\
    );
\M_AXIS_TDATA[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DATA_R(19),
      I1 => \state__0\(1),
      I2 => SHIFT_RIGHT(19),
      I3 => balance(4),
      I4 => S_AXIS_TDATA(19),
      O => \M_AXIS_TDATA[19]_i_1_n_0\
    );
\M_AXIS_TDATA[19]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DATA_R[20]_i_2_n_0\,
      I1 => \bal_N_reg_n_0_[0]\,
      I2 => \DATA_R[19]_i_2_n_0\,
      O => SHIFT_RIGHT(19)
    );
\M_AXIS_TDATA[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DATA_R(1),
      I1 => \state__0\(1),
      I2 => SHIFT_RIGHT(1),
      I3 => balance(4),
      I4 => S_AXIS_TDATA(1),
      O => \M_AXIS_TDATA[1]_i_1_n_0\
    );
\M_AXIS_TDATA[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \M_AXIS_TDATA[4]_i_3_n_0\,
      I1 => \M_AXIS_TDATA[2]_i_3_n_0\,
      I2 => \bal_N_reg_n_0_[0]\,
      I3 => \M_AXIS_TDATA[3]_i_3_n_0\,
      I4 => \bal_N_reg_n_0_[1]\,
      I5 => \M_AXIS_TDATA[1]_i_3_n_0\,
      O => SHIFT_RIGHT(1)
    );
\M_AXIS_TDATA[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA(13),
      I1 => S_AXIS_TDATA(5),
      I2 => \bal_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA(9),
      I4 => \bal_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA(1),
      O => \M_AXIS_TDATA[1]_i_3_n_0\
    );
\M_AXIS_TDATA[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DATA_R(20),
      I1 => \state__0\(1),
      I2 => SHIFT_RIGHT(20),
      I3 => balance(4),
      I4 => S_AXIS_TDATA(20),
      O => \M_AXIS_TDATA[20]_i_1_n_0\
    );
\M_AXIS_TDATA[20]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DATA_R[21]_i_3_n_0\,
      I1 => \bal_N_reg_n_0_[0]\,
      I2 => \DATA_R[20]_i_2_n_0\,
      O => SHIFT_RIGHT(20)
    );
\M_AXIS_TDATA[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DATA_R(21),
      I1 => \state__0\(1),
      I2 => SHIFT_RIGHT(21),
      I3 => balance(4),
      I4 => S_AXIS_TDATA(21),
      O => \M_AXIS_TDATA[21]_i_1_n_0\
    );
\M_AXIS_TDATA[21]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DATA_R[21]_i_2_n_0\,
      I1 => \bal_N_reg_n_0_[0]\,
      I2 => \DATA_R[21]_i_3_n_0\,
      O => SHIFT_RIGHT(21)
    );
\M_AXIS_TDATA[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DATA_R(22),
      I1 => \state__0\(1),
      I2 => SHIFT_RIGHT(22),
      I3 => balance(4),
      I4 => S_AXIS_TDATA(22),
      O => \M_AXIS_TDATA[22]_i_1_n_0\
    );
\M_AXIS_TDATA[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF01FF00FE00"
    )
        port map (
      I0 => \bal_N_reg_n_0_[0]\,
      I1 => \bal_N_reg_n_0_[1]\,
      I2 => \bal_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA(23),
      I4 => \bal_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA(22),
      O => SHIFT_RIGHT(22)
    );
\M_AXIS_TDATA[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000200020222000"
    )
        port map (
      I0 => aresetn,
      I1 => \state__0\(0),
      I2 => M_AXIS_TREADY,
      I3 => \state__0\(1),
      I4 => S_AXIS_TVALID,
      I5 => S_AXIS_TLAST,
      O => M_AXIS_TDATA0
    );
\M_AXIS_TDATA[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DATA_R(23),
      I1 => \state__0\(1),
      I2 => S_AXIS_TDATA(23),
      O => \M_AXIS_TDATA[23]_i_2_n_0\
    );
\M_AXIS_TDATA[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DATA_R(2),
      I1 => \state__0\(1),
      I2 => SHIFT_RIGHT(2),
      I3 => balance(4),
      I4 => S_AXIS_TDATA(2),
      O => \M_AXIS_TDATA[2]_i_1_n_0\
    );
\M_AXIS_TDATA[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \M_AXIS_TDATA[5]_i_3_n_0\,
      I1 => \M_AXIS_TDATA[3]_i_3_n_0\,
      I2 => \bal_N_reg_n_0_[0]\,
      I3 => \M_AXIS_TDATA[4]_i_3_n_0\,
      I4 => \bal_N_reg_n_0_[1]\,
      I5 => \M_AXIS_TDATA[2]_i_3_n_0\,
      O => SHIFT_RIGHT(2)
    );
\M_AXIS_TDATA[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA(14),
      I1 => S_AXIS_TDATA(6),
      I2 => \bal_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA(10),
      I4 => \bal_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA(2),
      O => \M_AXIS_TDATA[2]_i_3_n_0\
    );
\M_AXIS_TDATA[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DATA_R(3),
      I1 => \state__0\(1),
      I2 => SHIFT_RIGHT(3),
      I3 => balance(4),
      I4 => S_AXIS_TDATA(3),
      O => \M_AXIS_TDATA[3]_i_1_n_0\
    );
\M_AXIS_TDATA[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \M_AXIS_TDATA[6]_i_3_n_0\,
      I1 => \M_AXIS_TDATA[4]_i_3_n_0\,
      I2 => \bal_N_reg_n_0_[0]\,
      I3 => \M_AXIS_TDATA[5]_i_3_n_0\,
      I4 => \bal_N_reg_n_0_[1]\,
      I5 => \M_AXIS_TDATA[3]_i_3_n_0\,
      O => SHIFT_RIGHT(3)
    );
\M_AXIS_TDATA[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA(15),
      I1 => S_AXIS_TDATA(7),
      I2 => \bal_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA(11),
      I4 => \bal_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA(3),
      O => \M_AXIS_TDATA[3]_i_3_n_0\
    );
\M_AXIS_TDATA[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DATA_R(4),
      I1 => \state__0\(1),
      I2 => SHIFT_RIGHT(4),
      I3 => balance(4),
      I4 => S_AXIS_TDATA(4),
      O => \M_AXIS_TDATA[4]_i_1_n_0\
    );
\M_AXIS_TDATA[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \M_AXIS_TDATA[7]_i_3_n_0\,
      I1 => \M_AXIS_TDATA[5]_i_3_n_0\,
      I2 => \bal_N_reg_n_0_[0]\,
      I3 => \M_AXIS_TDATA[6]_i_3_n_0\,
      I4 => \bal_N_reg_n_0_[1]\,
      I5 => \M_AXIS_TDATA[4]_i_3_n_0\,
      O => SHIFT_RIGHT(4)
    );
\M_AXIS_TDATA[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA(16),
      I1 => S_AXIS_TDATA(8),
      I2 => \bal_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA(12),
      I4 => \bal_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA(4),
      O => \M_AXIS_TDATA[4]_i_3_n_0\
    );
\M_AXIS_TDATA[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DATA_R(5),
      I1 => \state__0\(1),
      I2 => SHIFT_RIGHT(5),
      I3 => balance(4),
      I4 => S_AXIS_TDATA(5),
      O => \M_AXIS_TDATA[5]_i_1_n_0\
    );
\M_AXIS_TDATA[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \M_AXIS_TDATA[8]_i_3_n_0\,
      I1 => \M_AXIS_TDATA[6]_i_3_n_0\,
      I2 => \bal_N_reg_n_0_[0]\,
      I3 => \M_AXIS_TDATA[7]_i_3_n_0\,
      I4 => \bal_N_reg_n_0_[1]\,
      I5 => \M_AXIS_TDATA[5]_i_3_n_0\,
      O => SHIFT_RIGHT(5)
    );
\M_AXIS_TDATA[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA(17),
      I1 => S_AXIS_TDATA(9),
      I2 => \bal_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA(13),
      I4 => \bal_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA(5),
      O => \M_AXIS_TDATA[5]_i_3_n_0\
    );
\M_AXIS_TDATA[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DATA_R(6),
      I1 => \state__0\(1),
      I2 => SHIFT_RIGHT(6),
      I3 => balance(4),
      I4 => S_AXIS_TDATA(6),
      O => \M_AXIS_TDATA[6]_i_1_n_0\
    );
\M_AXIS_TDATA[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \M_AXIS_TDATA[9]_i_3_n_0\,
      I1 => \M_AXIS_TDATA[7]_i_3_n_0\,
      I2 => \bal_N_reg_n_0_[0]\,
      I3 => \M_AXIS_TDATA[8]_i_3_n_0\,
      I4 => \bal_N_reg_n_0_[1]\,
      I5 => \M_AXIS_TDATA[6]_i_3_n_0\,
      O => SHIFT_RIGHT(6)
    );
\M_AXIS_TDATA[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA(18),
      I1 => S_AXIS_TDATA(10),
      I2 => \bal_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA(14),
      I4 => \bal_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA(6),
      O => \M_AXIS_TDATA[6]_i_3_n_0\
    );
\M_AXIS_TDATA[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DATA_R(7),
      I1 => \state__0\(1),
      I2 => SHIFT_RIGHT(7),
      I3 => balance(4),
      I4 => S_AXIS_TDATA(7),
      O => \M_AXIS_TDATA[7]_i_1_n_0\
    );
\M_AXIS_TDATA[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \M_AXIS_TDATA[10]_i_3_n_0\,
      I1 => \M_AXIS_TDATA[8]_i_3_n_0\,
      I2 => \bal_N_reg_n_0_[0]\,
      I3 => \M_AXIS_TDATA[9]_i_3_n_0\,
      I4 => \bal_N_reg_n_0_[1]\,
      I5 => \M_AXIS_TDATA[7]_i_3_n_0\,
      O => SHIFT_RIGHT(7)
    );
\M_AXIS_TDATA[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA(19),
      I1 => S_AXIS_TDATA(11),
      I2 => \bal_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA(15),
      I4 => \bal_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA(7),
      O => \M_AXIS_TDATA[7]_i_3_n_0\
    );
\M_AXIS_TDATA[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DATA_R(8),
      I1 => \state__0\(1),
      I2 => SHIFT_RIGHT(8),
      I3 => balance(4),
      I4 => S_AXIS_TDATA(8),
      O => \M_AXIS_TDATA[8]_i_1_n_0\
    );
\M_AXIS_TDATA[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \M_AXIS_TDATA[11]_i_3_n_0\,
      I1 => \M_AXIS_TDATA[9]_i_3_n_0\,
      I2 => \bal_N_reg_n_0_[0]\,
      I3 => \M_AXIS_TDATA[10]_i_3_n_0\,
      I4 => \bal_N_reg_n_0_[1]\,
      I5 => \M_AXIS_TDATA[8]_i_3_n_0\,
      O => SHIFT_RIGHT(8)
    );
\M_AXIS_TDATA[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA(20),
      I1 => S_AXIS_TDATA(12),
      I2 => \bal_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA(16),
      I4 => \bal_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA(8),
      O => \M_AXIS_TDATA[8]_i_3_n_0\
    );
\M_AXIS_TDATA[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DATA_R(9),
      I1 => \state__0\(1),
      I2 => SHIFT_RIGHT(9),
      I3 => balance(4),
      I4 => S_AXIS_TDATA(9),
      O => \M_AXIS_TDATA[9]_i_1_n_0\
    );
\M_AXIS_TDATA[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \M_AXIS_TDATA[12]_i_3_n_0\,
      I1 => \M_AXIS_TDATA[10]_i_3_n_0\,
      I2 => \bal_N_reg_n_0_[0]\,
      I3 => \M_AXIS_TDATA[11]_i_3_n_0\,
      I4 => \bal_N_reg_n_0_[1]\,
      I5 => \M_AXIS_TDATA[9]_i_3_n_0\,
      O => SHIFT_RIGHT(9)
    );
\M_AXIS_TDATA[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_AXIS_TDATA(21),
      I1 => S_AXIS_TDATA(13),
      I2 => \bal_N_reg_n_0_[2]\,
      I3 => S_AXIS_TDATA(17),
      I4 => \bal_N_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA(9),
      O => \M_AXIS_TDATA[9]_i_3_n_0\
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
      INIT => X"F5FFFFFF00800080"
    )
        port map (
      I0 => aresetn,
      I1 => M_AXIS_TREADY,
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      I4 => \bal_N1__0\,
      I5 => \^m_axis_tlast\,
      O => M_AXIS_TLAST_i_1_n_0
    );
M_AXIS_TLAST_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => S_AXIS_TLAST,
      I1 => S_AXIS_TVALID,
      O => \bal_N1__0\
    );
M_AXIS_TLAST_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => M_AXIS_TLAST_i_1_n_0,
      Q => \^m_axis_tlast\,
      R => '0'
    );
M_AXIS_TVALID_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7FFFFF0A000000"
    )
        port map (
      I0 => aresetn,
      I1 => M_AXIS_TREADY,
      I2 => \state__0\(1),
      I3 => \bal_N1__0\,
      I4 => \state__0\(0),
      I5 => \^m_axis_tvalid\,
      O => M_AXIS_TVALID_i_1_n_0
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
S_AXIS_TREADY_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444FFFFF4440000"
    )
        port map (
      I0 => \state__0\(0),
      I1 => bal_N11_out,
      I2 => M_AXIS_TREADY,
      I3 => \state__0\(1),
      I4 => S_AXIS_TREADY0,
      I5 => \^s_axis_tready\,
      O => S_AXIS_TREADY_i_1_n_0
    );
S_AXIS_TREADY_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => S_AXIS_TVALID,
      I1 => S_AXIS_TLAST,
      O => bal_N11_out
    );
S_AXIS_TREADY_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888002020000020"
    )
        port map (
      I0 => aresetn,
      I1 => \state__0\(1),
      I2 => S_AXIS_TVALID,
      I3 => S_AXIS_TLAST,
      I4 => \state__0\(0),
      I5 => M_AXIS_TREADY,
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
\bal_N[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => balance(1),
      I1 => balance(0),
      O => bal_N(0)
    );
\bal_N[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1E78"
    )
        port map (
      I0 => balance(1),
      I1 => balance(0),
      I2 => balance(2),
      I3 => \state__0\(0),
      O => bal_N(1)
    );
\bal_N[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FE7F80"
    )
        port map (
      I0 => balance(0),
      I1 => balance(1),
      I2 => balance(2),
      I3 => balance(3),
      I4 => \state__0\(0),
      O => bal_N(2)
    );
\bal_N[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000020000000"
    )
        port map (
      I0 => aresetn,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => S_AXIS_TLAST,
      I4 => S_AXIS_TVALID,
      I5 => balance(4),
      O => bal_N0
    );
\bal_N[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00018000"
    )
        port map (
      I0 => balance(3),
      I1 => balance(0),
      I2 => balance(1),
      I3 => balance(2),
      I4 => \state__0\(0),
      O => bal_N(3)
    );
\bal_N_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bal_N0,
      D => bal_N(0),
      Q => \bal_N_reg_n_0_[0]\,
      R => '0'
    );
\bal_N_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bal_N0,
      D => bal_N(1),
      Q => \bal_N_reg_n_0_[1]\,
      R => '0'
    );
\bal_N_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bal_N0,
      D => bal_N(2),
      Q => \bal_N_reg_n_0_[2]\,
      R => '0'
    );
\bal_N_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bal_N0,
      D => bal_N(3),
      Q => \bal_N_reg_n_0_[3]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BlockDesign_BalanceController_0_0 is
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
    balance : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of BlockDesign_BalanceController_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of BlockDesign_BalanceController_0_0 : entity is "BlockDesign_BalanceController_0_0,BalanceController,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of BlockDesign_BalanceController_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of BlockDesign_BalanceController_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of BlockDesign_BalanceController_0_0 : entity is "BalanceController,Vivado 2020.2";
end BlockDesign_BalanceController_0_0;

architecture STRUCTURE of BlockDesign_BalanceController_0_0 is
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
U0: entity work.BlockDesign_BalanceController_0_0_BalanceController
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
      balance(4 downto 0) => balance(9 downto 5)
    );
end STRUCTURE;

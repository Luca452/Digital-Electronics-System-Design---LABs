-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Mar 29 23:30:31 2023
-- Host        : DESKTOP-JKUPK39 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Color_Grey_C2G_0_0_sim_netlist.vhdl
-- Design      : Color_Grey_C2G_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_C2G is
  port (
    m_axis_tvalid : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tready : in STD_LOGIC;
    resetn : in STD_LOGIC;
    clk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_C2G;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_C2G is
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal in5 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m_axis_tdata0 : STD_LOGIC;
  signal \m_axis_tdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal result : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal result0 : STD_LOGIC;
  signal \result[3]_i_2_n_0\ : STD_LOGIC;
  signal \result[3]_i_3_n_0\ : STD_LOGIC;
  signal \result[3]_i_4_n_0\ : STD_LOGIC;
  signal \result[3]_i_5_n_0\ : STD_LOGIC;
  signal \result[7]_i_2_n_0\ : STD_LOGIC;
  signal \result[7]_i_3_n_0\ : STD_LOGIC;
  signal \result[7]_i_4_n_0\ : STD_LOGIC;
  signal \result[7]_i_5_n_0\ : STD_LOGIC;
  signal \result[8]_i_1_n_0\ : STD_LOGIC;
  signal \result[8]_i_4_n_0\ : STD_LOGIC;
  signal \result_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \result_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \result_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \result_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \result_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \result_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \result_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \result_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \^s_axis_tready\ : STD_LOGIC;
  signal \NLW_result_reg[8]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_result_reg[8]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "idle:001,receive:010,transmit:100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "idle:001,receive:010,transmit:100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "idle:001,receive:010,transmit:100";
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_axis_tdata[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_i_2\ : label is "soft_lutpair3";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \result_reg[3]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \result_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \result_reg[8]_i_3\ : label is 35;
begin
  m_axis_tvalid <= \^m_axis_tvalid\;
  s_axis_tready <= \^s_axis_tready\;
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \^s_axis_tready\,
      I2 => s_axis_tvalid,
      I3 => m_axis_tready,
      I4 => \^m_axis_tvalid\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFEEEE"
    )
        port map (
      I0 => \^m_axis_tvalid\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[0]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => \^s_axis_tready\,
      O => \FSM_onehot_state[1]_i_2_n_0\
    );
\FSM_onehot_state[1]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => \FSM_onehot_state[1]_i_3_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[0]\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[1]_i_1_n_0\,
      D => '0',
      PRE => \FSM_onehot_state[1]_i_3_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[1]_i_1_n_0\,
      CLR => \FSM_onehot_state[1]_i_3_n_0\,
      D => \FSM_onehot_state[1]_i_2_n_0\,
      Q => \^s_axis_tready\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[1]_i_1_n_0\,
      CLR => \FSM_onehot_state[1]_i_3_n_0\,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \^m_axis_tvalid\
    );
\counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FFF4000"
    )
        port map (
      I0 => \counter_reg_n_0_[1]\,
      I1 => s_axis_tvalid,
      I2 => \^s_axis_tready\,
      I3 => resetn,
      I4 => \counter_reg_n_0_[0]\,
      O => \counter[0]_i_1_n_0\
    );
\counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FFF8000"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      I1 => s_axis_tvalid,
      I2 => \^s_axis_tready\,
      I3 => resetn,
      I4 => \counter_reg_n_0_[1]\,
      O => \counter[1]_i_1_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter[0]_i_1_n_0\,
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter[1]_i_1_n_0\,
      Q => \counter_reg_n_0_[1]\,
      R => '0'
    );
\m_axis_tdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C82BBC32B3C22BEC"
    )
        port map (
      I0 => result(0),
      I1 => result(2),
      I2 => result(3),
      I3 => \m_axis_tdata[0]_i_2_n_0\,
      I4 => \m_axis_tdata[3]_i_1_n_0\,
      I5 => result(1),
      O => \m_axis_tdata[0]_i_1_n_0\
    );
\m_axis_tdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"79E79E7986186186"
    )
        port map (
      I0 => result(4),
      I1 => result(6),
      I2 => result(7),
      I3 => result(8),
      I4 => result(5),
      I5 => result(3),
      O => \m_axis_tdata[0]_i_2_n_0\
    );
\m_axis_tdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C2BC833E833EC2BC"
    )
        port map (
      I0 => result(1),
      I1 => result(3),
      I2 => \m_axis_tdata[3]_i_1_n_0\,
      I3 => result(2),
      I4 => result(4),
      I5 => \m_axis_tdata[4]_i_1_n_0\,
      O => \m_axis_tdata[1]_i_1_n_0\
    );
\m_axis_tdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C3BE823C"
    )
        port map (
      I0 => result(2),
      I1 => result(4),
      I2 => \m_axis_tdata[4]_i_1_n_0\,
      I3 => result(3),
      I4 => \m_axis_tdata[3]_i_1_n_0\,
      O => \m_axis_tdata[2]_i_1_n_0\
    );
\m_axis_tdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BC2B2BC22BC2C2BC"
    )
        port map (
      I0 => result(3),
      I1 => result(5),
      I2 => result(7),
      I3 => result(8),
      I4 => result(6),
      I5 => result(4),
      O => \m_axis_tdata[3]_i_1_n_0\
    );
\m_axis_tdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2CB2CB2C"
    )
        port map (
      I0 => result(4),
      I1 => result(6),
      I2 => result(7),
      I3 => result(8),
      I4 => result(5),
      O => \m_axis_tdata[4]_i_1_n_0\
    );
\m_axis_tdata[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B22C"
    )
        port map (
      I0 => result(5),
      I1 => result(7),
      I2 => result(8),
      I3 => result(6),
      O => \m_axis_tdata[5]_i_1_n_0\
    );
\m_axis_tdata[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"64"
    )
        port map (
      I0 => result(7),
      I1 => result(8),
      I2 => result(6),
      O => \m_axis_tdata[6]_i_1_n_0\
    );
\m_axis_tdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => resetn,
      I1 => \^s_axis_tready\,
      I2 => s_axis_tvalid,
      I3 => \counter_reg_n_0_[1]\,
      I4 => \counter_reg_n_0_[0]\,
      O => m_axis_tdata0
    );
\m_axis_tdata[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => result(7),
      I1 => result(8),
      O => \m_axis_tdata[7]_i_2_n_0\
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[0]_i_1_n_0\,
      Q => m_axis_tdata(0),
      R => '0'
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[1]_i_1_n_0\,
      Q => m_axis_tdata(1),
      R => '0'
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[2]_i_1_n_0\,
      Q => m_axis_tdata(2),
      R => '0'
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[3]_i_1_n_0\,
      Q => m_axis_tdata(3),
      R => '0'
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[4]_i_1_n_0\,
      Q => m_axis_tdata(4),
      R => '0'
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[5]_i_1_n_0\,
      Q => m_axis_tdata(5),
      R => '0'
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[6]_i_1_n_0\,
      Q => m_axis_tdata(6),
      R => '0'
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[7]_i_2_n_0\,
      Q => m_axis_tdata(7),
      R => '0'
    );
\result[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => result(3),
      I1 => s_axis_tdata(3),
      O => \result[3]_i_2_n_0\
    );
\result[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => result(2),
      I1 => s_axis_tdata(2),
      O => \result[3]_i_3_n_0\
    );
\result[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => result(1),
      I1 => s_axis_tdata(1),
      O => \result[3]_i_4_n_0\
    );
\result[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => result(0),
      I1 => s_axis_tdata(0),
      O => \result[3]_i_5_n_0\
    );
\result[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => result(7),
      I1 => s_axis_tdata(7),
      O => \result[7]_i_2_n_0\
    );
\result[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => result(6),
      I1 => s_axis_tdata(6),
      O => \result[7]_i_3_n_0\
    );
\result[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => result(5),
      I1 => s_axis_tdata(5),
      O => \result[7]_i_4_n_0\
    );
\result[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => result(4),
      I1 => s_axis_tdata(4),
      O => \result[7]_i_5_n_0\
    );
\result[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^m_axis_tvalid\,
      I1 => m_axis_tready,
      I2 => resetn,
      I3 => \^s_axis_tready\,
      O => \result[8]_i_1_n_0\
    );
\result[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00800080008000"
    )
        port map (
      I0 => \result[8]_i_4_n_0\,
      I1 => s_axis_tvalid,
      I2 => \^s_axis_tready\,
      I3 => resetn,
      I4 => m_axis_tready,
      I5 => \^m_axis_tvalid\,
      O => result0
    );
\result[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      I1 => \counter_reg_n_0_[1]\,
      O => \result[8]_i_4_n_0\
    );
\result_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => in5(0),
      Q => result(0),
      R => \result[8]_i_1_n_0\
    );
\result_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => in5(1),
      Q => result(1),
      R => \result[8]_i_1_n_0\
    );
\result_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => in5(2),
      Q => result(2),
      R => \result[8]_i_1_n_0\
    );
\result_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => in5(3),
      Q => result(3),
      R => \result[8]_i_1_n_0\
    );
\result_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \result_reg[3]_i_1_n_0\,
      CO(2) => \result_reg[3]_i_1_n_1\,
      CO(1) => \result_reg[3]_i_1_n_2\,
      CO(0) => \result_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => result(3 downto 0),
      O(3 downto 0) => in5(3 downto 0),
      S(3) => \result[3]_i_2_n_0\,
      S(2) => \result[3]_i_3_n_0\,
      S(1) => \result[3]_i_4_n_0\,
      S(0) => \result[3]_i_5_n_0\
    );
\result_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => in5(4),
      Q => result(4),
      R => \result[8]_i_1_n_0\
    );
\result_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => in5(5),
      Q => result(5),
      R => \result[8]_i_1_n_0\
    );
\result_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => in5(6),
      Q => result(6),
      R => \result[8]_i_1_n_0\
    );
\result_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => in5(7),
      Q => result(7),
      R => \result[8]_i_1_n_0\
    );
\result_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg[3]_i_1_n_0\,
      CO(3) => \result_reg[7]_i_1_n_0\,
      CO(2) => \result_reg[7]_i_1_n_1\,
      CO(1) => \result_reg[7]_i_1_n_2\,
      CO(0) => \result_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => result(7 downto 4),
      O(3 downto 0) => in5(7 downto 4),
      S(3) => \result[7]_i_2_n_0\,
      S(2) => \result[7]_i_3_n_0\,
      S(1) => \result[7]_i_4_n_0\,
      S(0) => \result[7]_i_5_n_0\
    );
\result_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => in5(8),
      Q => result(8),
      R => \result[8]_i_1_n_0\
    );
\result_reg[8]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg[7]_i_1_n_0\,
      CO(3 downto 0) => \NLW_result_reg[8]_i_3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_result_reg[8]_i_3_O_UNCONNECTED\(3 downto 1),
      O(0) => in5(8),
      S(3 downto 1) => B"000",
      S(0) => result(8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tready : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Color_Grey_C2G_0_0,C2G,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "C2G,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_parameter of m_axis_tvalid : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute x_interface_parameter of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute x_interface_parameter of s_axis_tvalid : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_C2G
     port map (
      clk => clk,
      m_axis_tdata(7 downto 0) => m_axis_tdata(7 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      resetn => resetn,
      s_axis_tdata(7 downto 0) => s_axis_tdata(7 downto 0),
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;

-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Fri Mar 31 18:43:00 2023
-- Host        : DESKTOP-JKUPK39 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/daido/Desktop/Polimi/Anno
--               4/DESD/Git/KittCarPWM/Joystick_SPI_tester/Joystick_SPI_tester.gen/sources_1/bd/joysticktester/ip/joysticktester_digilent_jstk2_0_1/joysticktester_digilent_jstk2_0_1_sim_netlist.vhdl}
-- Design      : joysticktester_digilent_jstk2_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity joysticktester_digilent_jstk2_0_1_digilent_jstk2 is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of joysticktester_digilent_jstk2_0_1_digilent_jstk2 : entity is "digilent_jstk2";
end joysticktester_digilent_jstk2_0_1_digilent_jstk2;

architecture STRUCTURE of joysticktester_digilent_jstk2_0_1_digilent_jstk2 is
  signal \FSM_sequential_state_cmd[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_cmd[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_cmd[2]_i_4_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \m_axis_tdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \state_cmd__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state_cmd__1\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal tx_delay_counter : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \tx_delay_counter0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \tx_delay_counter0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \tx_delay_counter0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \tx_delay_counter0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \tx_delay_counter0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \tx_delay_counter0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \tx_delay_counter0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \tx_delay_counter0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \tx_delay_counter0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \tx_delay_counter0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \tx_delay_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[10]_i_1_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[11]_i_2_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[9]_i_1_n_0\ : STD_LOGIC;
  signal tx_delay_counter_0 : STD_LOGIC;
  signal \NLW_tx_delay_counter0_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_tx_delay_counter0_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state_cmd[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state_cmd[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state_cmd[2]_i_2\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_cmd_reg[0]\ : label is "wait_delay:000,send_cmd:001,send_red:010,send_green:011,send_blue:100,send_dummy:101,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_cmd_reg[1]\ : label is "wait_delay:000,send_cmd:001,send_red:010,send_green:011,send_blue:100,send_dummy:101,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_cmd_reg[2]\ : label is "wait_delay:000,send_cmd:001,send_red:010,send_green:011,send_blue:100,send_dummy:101,";
  attribute SOFT_HLUTNM of m_axis_tvalid_INST_0 : label is "soft_lutpair1";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \tx_delay_counter0_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \tx_delay_counter0_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \tx_delay_counter0_inferred__0/i__carry__1\ : label is 35;
  attribute SOFT_HLUTNM of \tx_delay_counter[10]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tx_delay_counter[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tx_delay_counter[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tx_delay_counter[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \tx_delay_counter[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \tx_delay_counter[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tx_delay_counter[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tx_delay_counter[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tx_delay_counter[8]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tx_delay_counter[9]_i_1\ : label is "soft_lutpair6";
begin
  m_axis_tdata(1 downto 0) <= \^m_axis_tdata\(1 downto 0);
\FSM_sequential_state_cmd[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => \state_cmd__0\(1),
      I1 => \state_cmd__0\(2),
      I2 => \state_cmd__0\(0),
      O => \state_cmd__1\(0)
    );
\FSM_sequential_state_cmd[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \state_cmd__0\(1),
      I1 => \state_cmd__0\(0),
      I2 => \state_cmd__0\(2),
      O => \state_cmd__1\(1)
    );
\FSM_sequential_state_cmd[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0AAAA3"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \FSM_sequential_state_cmd[2]_i_4_n_0\,
      I2 => \state_cmd__0\(2),
      I3 => \state_cmd__0\(0),
      I4 => \state_cmd__0\(1),
      O => \FSM_sequential_state_cmd[2]_i_1_n_0\
    );
\FSM_sequential_state_cmd[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"42"
    )
        port map (
      I0 => \state_cmd__0\(2),
      I1 => \state_cmd__0\(0),
      I2 => \state_cmd__0\(1),
      O => \state_cmd__1\(2)
    );
\FSM_sequential_state_cmd[2]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \FSM_sequential_state_cmd[2]_i_3_n_0\
    );
\FSM_sequential_state_cmd[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFFFFF"
    )
        port map (
      I0 => \tx_delay_counter[0]_i_3_n_0\,
      I1 => \tx_delay_counter[0]_i_2_n_0\,
      I2 => tx_delay_counter(1),
      I3 => tx_delay_counter(10),
      I4 => tx_delay_counter(11),
      I5 => tx_delay_counter(0),
      O => \FSM_sequential_state_cmd[2]_i_4_n_0\
    );
\FSM_sequential_state_cmd_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \FSM_sequential_state_cmd[2]_i_1_n_0\,
      CLR => \FSM_sequential_state_cmd[2]_i_3_n_0\,
      D => \state_cmd__1\(0),
      Q => \state_cmd__0\(0)
    );
\FSM_sequential_state_cmd_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \FSM_sequential_state_cmd[2]_i_1_n_0\,
      CLR => \FSM_sequential_state_cmd[2]_i_3_n_0\,
      D => \state_cmd__1\(1),
      Q => \state_cmd__0\(1)
    );
\FSM_sequential_state_cmd_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \FSM_sequential_state_cmd[2]_i_1_n_0\,
      CLR => \FSM_sequential_state_cmd[2]_i_3_n_0\,
      D => \state_cmd__1\(2),
      Q => \state_cmd__0\(2)
    );
\m_axis_tdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF77FF08080080"
    )
        port map (
      I0 => aresetn,
      I1 => m_axis_tready,
      I2 => \state_cmd__0\(2),
      I3 => \state_cmd__0\(0),
      I4 => \state_cmd__0\(1),
      I5 => \^m_axis_tdata\(0),
      O => \m_axis_tdata[6]_i_1_n_0\
    );
\m_axis_tdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF08080880"
    )
        port map (
      I0 => aresetn,
      I1 => m_axis_tready,
      I2 => \state_cmd__0\(2),
      I3 => \state_cmd__0\(0),
      I4 => \state_cmd__0\(1),
      I5 => \^m_axis_tdata\(1),
      O => \m_axis_tdata[7]_i_1_n_0\
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[6]_i_1_n_0\,
      Q => \^m_axis_tdata\(0),
      R => '0'
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[7]_i_1_n_0\,
      Q => \^m_axis_tdata\(1),
      R => '0'
    );
m_axis_tvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \state_cmd__0\(2),
      I1 => \state_cmd__0\(0),
      I2 => \state_cmd__0\(1),
      O => m_axis_tvalid
    );
\tx_delay_counter0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \tx_delay_counter0_inferred__0/i__carry_n_0\,
      CO(2) => \tx_delay_counter0_inferred__0/i__carry_n_1\,
      CO(1) => \tx_delay_counter0_inferred__0/i__carry_n_2\,
      CO(0) => \tx_delay_counter0_inferred__0/i__carry_n_3\,
      CYINIT => tx_delay_counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => tx_delay_counter(4 downto 1)
    );
\tx_delay_counter0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \tx_delay_counter0_inferred__0/i__carry_n_0\,
      CO(3) => \tx_delay_counter0_inferred__0/i__carry__0_n_0\,
      CO(2) => \tx_delay_counter0_inferred__0/i__carry__0_n_1\,
      CO(1) => \tx_delay_counter0_inferred__0/i__carry__0_n_2\,
      CO(0) => \tx_delay_counter0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => tx_delay_counter(8 downto 5)
    );
\tx_delay_counter0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tx_delay_counter0_inferred__0/i__carry__0_n_0\,
      CO(3 downto 2) => \NLW_tx_delay_counter0_inferred__0/i__carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \tx_delay_counter0_inferred__0/i__carry__1_n_2\,
      CO(0) => \tx_delay_counter0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_tx_delay_counter0_inferred__0/i__carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(11 downto 9),
      S(3) => '0',
      S(2 downto 0) => tx_delay_counter(11 downto 9)
    );
\tx_delay_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFF7"
    )
        port map (
      I0 => tx_delay_counter(11),
      I1 => tx_delay_counter(10),
      I2 => tx_delay_counter(1),
      I3 => \tx_delay_counter[0]_i_2_n_0\,
      I4 => \tx_delay_counter[0]_i_3_n_0\,
      I5 => tx_delay_counter(0),
      O => \tx_delay_counter[0]_i_1_n_0\
    );
\tx_delay_counter[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => tx_delay_counter(7),
      I1 => tx_delay_counter(6),
      I2 => tx_delay_counter(9),
      I3 => tx_delay_counter(8),
      O => \tx_delay_counter[0]_i_2_n_0\
    );
\tx_delay_counter[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => tx_delay_counter(3),
      I1 => tx_delay_counter(2),
      I2 => tx_delay_counter(5),
      I3 => tx_delay_counter(4),
      O => \tx_delay_counter[0]_i_3_n_0\
    );
\tx_delay_counter[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_state_cmd[2]_i_4_n_0\,
      I1 => data0(10),
      O => \tx_delay_counter[10]_i_1_n_0\
    );
\tx_delay_counter[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \state_cmd__0\(1),
      I1 => \state_cmd__0\(0),
      I2 => \state_cmd__0\(2),
      O => tx_delay_counter_0
    );
\tx_delay_counter[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_state_cmd[2]_i_4_n_0\,
      I1 => data0(11),
      O => \tx_delay_counter[11]_i_2_n_0\
    );
\tx_delay_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_state_cmd[2]_i_4_n_0\,
      I1 => data0(1),
      O => \tx_delay_counter[1]_i_1_n_0\
    );
\tx_delay_counter[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_state_cmd[2]_i_4_n_0\,
      I1 => data0(2),
      O => \tx_delay_counter[2]_i_1_n_0\
    );
\tx_delay_counter[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_state_cmd[2]_i_4_n_0\,
      I1 => data0(3),
      O => \tx_delay_counter[3]_i_1_n_0\
    );
\tx_delay_counter[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_state_cmd[2]_i_4_n_0\,
      I1 => data0(4),
      O => \tx_delay_counter[4]_i_1_n_0\
    );
\tx_delay_counter[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_state_cmd[2]_i_4_n_0\,
      I1 => data0(5),
      O => \tx_delay_counter[5]_i_1_n_0\
    );
\tx_delay_counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_state_cmd[2]_i_4_n_0\,
      I1 => data0(6),
      O => \tx_delay_counter[6]_i_1_n_0\
    );
\tx_delay_counter[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_state_cmd[2]_i_4_n_0\,
      I1 => data0(7),
      O => \tx_delay_counter[7]_i_1_n_0\
    );
\tx_delay_counter[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_state_cmd[2]_i_4_n_0\,
      I1 => data0(8),
      O => \tx_delay_counter[8]_i_1_n_0\
    );
\tx_delay_counter[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_state_cmd[2]_i_4_n_0\,
      I1 => data0(9),
      O => \tx_delay_counter[9]_i_1_n_0\
    );
\tx_delay_counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tx_delay_counter_0,
      CLR => \FSM_sequential_state_cmd[2]_i_3_n_0\,
      D => \tx_delay_counter[0]_i_1_n_0\,
      Q => tx_delay_counter(0)
    );
\tx_delay_counter_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tx_delay_counter_0,
      CLR => \FSM_sequential_state_cmd[2]_i_3_n_0\,
      D => \tx_delay_counter[10]_i_1_n_0\,
      Q => tx_delay_counter(10)
    );
\tx_delay_counter_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tx_delay_counter_0,
      CLR => \FSM_sequential_state_cmd[2]_i_3_n_0\,
      D => \tx_delay_counter[11]_i_2_n_0\,
      Q => tx_delay_counter(11)
    );
\tx_delay_counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tx_delay_counter_0,
      CLR => \FSM_sequential_state_cmd[2]_i_3_n_0\,
      D => \tx_delay_counter[1]_i_1_n_0\,
      Q => tx_delay_counter(1)
    );
\tx_delay_counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tx_delay_counter_0,
      CLR => \FSM_sequential_state_cmd[2]_i_3_n_0\,
      D => \tx_delay_counter[2]_i_1_n_0\,
      Q => tx_delay_counter(2)
    );
\tx_delay_counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tx_delay_counter_0,
      CLR => \FSM_sequential_state_cmd[2]_i_3_n_0\,
      D => \tx_delay_counter[3]_i_1_n_0\,
      Q => tx_delay_counter(3)
    );
\tx_delay_counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tx_delay_counter_0,
      CLR => \FSM_sequential_state_cmd[2]_i_3_n_0\,
      D => \tx_delay_counter[4]_i_1_n_0\,
      Q => tx_delay_counter(4)
    );
\tx_delay_counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tx_delay_counter_0,
      CLR => \FSM_sequential_state_cmd[2]_i_3_n_0\,
      D => \tx_delay_counter[5]_i_1_n_0\,
      Q => tx_delay_counter(5)
    );
\tx_delay_counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tx_delay_counter_0,
      CLR => \FSM_sequential_state_cmd[2]_i_3_n_0\,
      D => \tx_delay_counter[6]_i_1_n_0\,
      Q => tx_delay_counter(6)
    );
\tx_delay_counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tx_delay_counter_0,
      CLR => \FSM_sequential_state_cmd[2]_i_3_n_0\,
      D => \tx_delay_counter[7]_i_1_n_0\,
      Q => tx_delay_counter(7)
    );
\tx_delay_counter_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tx_delay_counter_0,
      CLR => \FSM_sequential_state_cmd[2]_i_3_n_0\,
      D => \tx_delay_counter[8]_i_1_n_0\,
      Q => tx_delay_counter(8)
    );
\tx_delay_counter_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tx_delay_counter_0,
      CLR => \FSM_sequential_state_cmd[2]_i_3_n_0\,
      D => \tx_delay_counter[9]_i_1_n_0\,
      Q => tx_delay_counter(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity joysticktester_digilent_jstk2_0_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tready : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of joysticktester_digilent_jstk2_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of joysticktester_digilent_jstk2_0_1 : entity is "joysticktester_digilent_jstk2_0_1,digilent_jstk2,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of joysticktester_digilent_jstk2_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of joysticktester_digilent_jstk2_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of joysticktester_digilent_jstk2_0_1 : entity is "digilent_jstk2,Vivado 2020.2";
end joysticktester_digilent_jstk2_0_1;

architecture STRUCTURE of joysticktester_digilent_jstk2_0_1 is
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 5 downto 2 );
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_parameter of m_axis_tvalid : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute x_interface_parameter of s_axis_tvalid : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
begin
  m_axis_tdata(7) <= \^m_axis_tdata\(2);
  m_axis_tdata(6) <= \^m_axis_tdata\(5);
  m_axis_tdata(5) <= \^m_axis_tdata\(5);
  m_axis_tdata(4) <= \^m_axis_tdata\(5);
  m_axis_tdata(3) <= \^m_axis_tdata\(5);
  m_axis_tdata(2) <= \^m_axis_tdata\(2);
  m_axis_tdata(1) <= \^m_axis_tdata\(5);
  m_axis_tdata(0) <= \^m_axis_tdata\(5);
U0: entity work.joysticktester_digilent_jstk2_0_1_digilent_jstk2
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axis_tdata(1) => \^m_axis_tdata\(2),
      m_axis_tdata(0) => \^m_axis_tdata\(5),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid
    );
end STRUCTURE;

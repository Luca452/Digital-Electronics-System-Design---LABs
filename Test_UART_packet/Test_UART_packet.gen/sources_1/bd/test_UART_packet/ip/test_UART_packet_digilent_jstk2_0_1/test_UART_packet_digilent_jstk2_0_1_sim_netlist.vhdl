-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun Apr  2 16:51:47 2023
-- Host        : DESKTOP-JKUPK39 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/daido/Desktop/Polimi/Anno
--               4/DESD/LAB2/Test_UART_packet/Test_UART_packet.gen/sources_1/bd/test_UART_packet/ip/test_UART_packet_digilent_jstk2_0_1/test_UART_packet_digilent_jstk2_0_1_sim_netlist.vhdl}
-- Design      : test_UART_packet_digilent_jstk2_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_UART_packet_digilent_jstk2_0_1_digilent_jstk2 is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 1 downto 0 );
    jstk_x : out STD_LOGIC_VECTOR ( 9 downto 0 );
    jstk_y : out STD_LOGIC_VECTOR ( 9 downto 0 );
    btn_jstk : out STD_LOGIC;
    btn_trigger : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    aclk : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_UART_packet_digilent_jstk2_0_1_digilent_jstk2 : entity is "digilent_jstk2";
end test_UART_packet_digilent_jstk2_0_1_digilent_jstk2;

architecture STRUCTURE of test_UART_packet_digilent_jstk2_0_1_digilent_jstk2 is
  signal \FSM_sequential_state_sts[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_sts[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_sts[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_sts[2]_i_2_n_0\ : STD_LOGIC;
  signal btn_jstk_reg0 : STD_LOGIC;
  signal \btn_jstk_reg__0\ : STD_LOGIC;
  signal btn_jstk_reg_i_1_n_0 : STD_LOGIC;
  signal \btn_trigger_reg__0\ : STD_LOGIC;
  signal btn_trigger_reg_i_1_n_0 : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal data_ready : STD_LOGIC;
  signal data_ready_i_1_n_0 : STD_LOGIC;
  signal jstk_x0 : STD_LOGIC;
  signal \jstk_x_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \jstk_x_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \jstk_x_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \jstk_x_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal \jstk_x_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \jstk_x_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \jstk_x_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \jstk_x_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \jstk_x_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \jstk_x_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \jstk_x_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \jstk_x_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \jstk_x_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \jstk_x_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal \jstk_y_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \jstk_y_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \jstk_y_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \jstk_y_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \jstk_y_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \jstk_y_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \jstk_y_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \jstk_y_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \jstk_y_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \jstk_y_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \jstk_y_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \jstk_y_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \jstk_y_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \m_axis_tdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal \next_state_cmd[0]_i_1_n_0\ : STD_LOGIC;
  signal \next_state_cmd[1]_i_1_n_0\ : STD_LOGIC;
  signal \next_state_cmd[2]_i_1_n_0\ : STD_LOGIC;
  signal \next_state_cmd[2]_i_2_n_0\ : STD_LOGIC;
  signal \next_state_cmd[2]_i_3_n_0\ : STD_LOGIC;
  signal \next_state_cmd_reg_n_0_[0]\ : STD_LOGIC;
  signal \next_state_cmd_reg_n_0_[1]\ : STD_LOGIC;
  signal \next_state_cmd_reg_n_0_[2]\ : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \state_cmd[0]_i_1_n_0\ : STD_LOGIC;
  signal \state_cmd[0]_i_2_n_0\ : STD_LOGIC;
  signal \state_cmd[0]_i_3_n_0\ : STD_LOGIC;
  signal \state_cmd[0]_i_4_n_0\ : STD_LOGIC;
  signal \state_cmd[0]_i_5_n_0\ : STD_LOGIC;
  signal \state_cmd[0]_i_6_n_0\ : STD_LOGIC;
  signal \state_cmd[1]_i_1_n_0\ : STD_LOGIC;
  signal \state_cmd[2]_i_1_n_0\ : STD_LOGIC;
  signal \state_cmd[2]_i_2_n_0\ : STD_LOGIC;
  signal \state_cmd_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_cmd_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_cmd_reg_n_0_[2]\ : STD_LOGIC;
  signal state_sts : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal tx_delay_counter : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \tx_delay_counter0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \tx_delay_counter0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \tx_delay_counter0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \tx_delay_counter0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \tx_delay_counter0_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \tx_delay_counter0_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \tx_delay_counter0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \tx_delay_counter0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \tx_delay_counter0_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \tx_delay_counter0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \tx_delay_counter0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \tx_delay_counter0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \tx_delay_counter0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \tx_delay_counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[14]_i_1_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[14]_i_3_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[14]_i_4_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[14]_i_5_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[14]_i_6_n_0\ : STD_LOGIC;
  signal \NLW_tx_delay_counter0_inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_tx_delay_counter0_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state_sts[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_state_sts[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_state_sts[2]_i_1\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_sts_reg[0]\ : label is "get_x_lsb:000,get_x_msb:001,get_y_lsb:010,get_y_msb:011,get_buttons:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_sts_reg[1]\ : label is "get_x_lsb:000,get_x_msb:001,get_y_lsb:010,get_y_msb:011,get_buttons:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_sts_reg[2]\ : label is "get_x_lsb:000,get_x_msb:001,get_y_lsb:010,get_y_msb:011,get_buttons:100,";
  attribute SOFT_HLUTNM of btn_jstk_reg_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of btn_jstk_reg_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of btn_trigger_reg_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of m_axis_tvalid_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \next_state_cmd[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \next_state_cmd[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \next_state_cmd[2]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \state_cmd[0]_i_3\ : label is "soft_lutpair1";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \tx_delay_counter0_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \tx_delay_counter0_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \tx_delay_counter0_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \tx_delay_counter0_inferred__0/i__carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \tx_delay_counter[0]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \tx_delay_counter[14]_i_5\ : label is "soft_lutpair3";
begin
  m_axis_tdata(1 downto 0) <= \^m_axis_tdata\(1 downto 0);
  m_axis_tvalid <= \^m_axis_tvalid\;
\FSM_sequential_state_sts[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"34"
    )
        port map (
      I0 => state_sts(2),
      I1 => s_axis_tvalid,
      I2 => state_sts(0),
      O => \FSM_sequential_state_sts[0]_i_1_n_0\
    );
\FSM_sequential_state_sts[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F20"
    )
        port map (
      I0 => state_sts(0),
      I1 => state_sts(2),
      I2 => s_axis_tvalid,
      I3 => state_sts(1),
      O => \FSM_sequential_state_sts[1]_i_1_n_0\
    );
\FSM_sequential_state_sts[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F80"
    )
        port map (
      I0 => state_sts(0),
      I1 => state_sts(1),
      I2 => s_axis_tvalid,
      I3 => state_sts(2),
      O => \FSM_sequential_state_sts[2]_i_1_n_0\
    );
\FSM_sequential_state_sts[2]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \FSM_sequential_state_sts[2]_i_2_n_0\
    );
\FSM_sequential_state_sts_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \FSM_sequential_state_sts[2]_i_2_n_0\,
      D => \FSM_sequential_state_sts[0]_i_1_n_0\,
      Q => state_sts(0)
    );
\FSM_sequential_state_sts_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \FSM_sequential_state_sts[2]_i_2_n_0\,
      D => \FSM_sequential_state_sts[1]_i_1_n_0\,
      Q => state_sts(1)
    );
\FSM_sequential_state_sts_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \FSM_sequential_state_sts[2]_i_2_n_0\,
      D => \FSM_sequential_state_sts[2]_i_1_n_0\,
      Q => state_sts(2)
    );
btn_jstk_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => jstk_x0,
      D => \btn_jstk_reg__0\,
      Q => btn_jstk,
      R => '0'
    );
btn_jstk_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => btn_jstk_reg0,
      I2 => \btn_jstk_reg__0\,
      O => btn_jstk_reg_i_1_n_0
    );
btn_jstk_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => state_sts(0),
      I1 => state_sts(2),
      I2 => state_sts(1),
      I3 => s_axis_tvalid,
      I4 => aresetn,
      O => btn_jstk_reg0
    );
btn_jstk_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => btn_jstk_reg_i_1_n_0,
      Q => \btn_jstk_reg__0\,
      R => '0'
    );
btn_trigger_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => jstk_x0,
      D => \btn_trigger_reg__0\,
      Q => btn_trigger,
      R => '0'
    );
btn_trigger_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdata(1),
      I1 => btn_jstk_reg0,
      I2 => \btn_trigger_reg__0\,
      O => btn_trigger_reg_i_1_n_0
    );
btn_trigger_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => btn_trigger_reg_i_1_n_0,
      Q => \btn_trigger_reg__0\,
      R => '0'
    );
data_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF00200000"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => state_sts(1),
      I2 => state_sts(2),
      I3 => state_sts(0),
      I4 => aresetn,
      I5 => data_ready,
      O => data_ready_i_1_n_0
    );
data_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => data_ready_i_1_n_0,
      Q => data_ready,
      R => '0'
    );
\jstk_x[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => aresetn,
      I1 => data_ready,
      O => jstk_x0
    );
\jstk_x_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => jstk_x0,
      D => \jstk_x_reg_reg_n_0_[0]\,
      Q => jstk_x(0),
      R => '0'
    );
\jstk_x_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => jstk_x0,
      D => \jstk_x_reg_reg_n_0_[1]\,
      Q => jstk_x(1),
      R => '0'
    );
\jstk_x_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => jstk_x0,
      D => \jstk_x_reg_reg_n_0_[2]\,
      Q => jstk_x(2),
      R => '0'
    );
\jstk_x_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => jstk_x0,
      D => \jstk_x_reg_reg_n_0_[3]\,
      Q => jstk_x(3),
      R => '0'
    );
\jstk_x_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => jstk_x0,
      D => \jstk_x_reg_reg_n_0_[4]\,
      Q => jstk_x(4),
      R => '0'
    );
\jstk_x_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => jstk_x0,
      D => \jstk_x_reg_reg_n_0_[5]\,
      Q => jstk_x(5),
      R => '0'
    );
\jstk_x_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => jstk_x0,
      D => \jstk_x_reg_reg_n_0_[6]\,
      Q => jstk_x(6),
      R => '0'
    );
\jstk_x_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => jstk_x0,
      D => \jstk_x_reg_reg_n_0_[7]\,
      Q => jstk_x(7),
      R => '0'
    );
\jstk_x_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => state_sts(1),
      I1 => s_axis_tvalid,
      I2 => aresetn,
      I3 => state_sts(2),
      I4 => state_sts(0),
      O => \jstk_x_reg[7]_i_1_n_0\
    );
\jstk_x_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => jstk_x0,
      D => \jstk_x_reg_reg_n_0_[8]\,
      Q => jstk_x(8),
      R => '0'
    );
\jstk_x_reg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => state_sts(1),
      I2 => s_axis_tvalid,
      I3 => aresetn,
      I4 => \jstk_x_reg[9]_i_2_n_0\,
      I5 => \jstk_x_reg_reg_n_0_[8]\,
      O => \jstk_x_reg[8]_i_1_n_0\
    );
\jstk_x_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => jstk_x0,
      D => \jstk_x_reg_reg_n_0_[9]\,
      Q => jstk_x(9),
      R => '0'
    );
\jstk_x_reg[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s_axis_tdata(1),
      I1 => state_sts(1),
      I2 => s_axis_tvalid,
      I3 => aresetn,
      I4 => \jstk_x_reg[9]_i_2_n_0\,
      I5 => \jstk_x_reg_reg_n_0_[9]\,
      O => \jstk_x_reg[9]_i_1_n_0\
    );
\jstk_x_reg[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state_sts(0),
      I1 => state_sts(2),
      O => \jstk_x_reg[9]_i_2_n_0\
    );
\jstk_x_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \jstk_x_reg[7]_i_1_n_0\,
      D => s_axis_tdata(0),
      Q => \jstk_x_reg_reg_n_0_[0]\,
      R => '0'
    );
\jstk_x_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \jstk_x_reg[7]_i_1_n_0\,
      D => s_axis_tdata(1),
      Q => \jstk_x_reg_reg_n_0_[1]\,
      R => '0'
    );
\jstk_x_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \jstk_x_reg[7]_i_1_n_0\,
      D => s_axis_tdata(2),
      Q => \jstk_x_reg_reg_n_0_[2]\,
      R => '0'
    );
\jstk_x_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \jstk_x_reg[7]_i_1_n_0\,
      D => s_axis_tdata(3),
      Q => \jstk_x_reg_reg_n_0_[3]\,
      R => '0'
    );
\jstk_x_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \jstk_x_reg[7]_i_1_n_0\,
      D => s_axis_tdata(4),
      Q => \jstk_x_reg_reg_n_0_[4]\,
      R => '0'
    );
\jstk_x_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \jstk_x_reg[7]_i_1_n_0\,
      D => s_axis_tdata(5),
      Q => \jstk_x_reg_reg_n_0_[5]\,
      R => '0'
    );
\jstk_x_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \jstk_x_reg[7]_i_1_n_0\,
      D => s_axis_tdata(6),
      Q => \jstk_x_reg_reg_n_0_[6]\,
      R => '0'
    );
\jstk_x_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \jstk_x_reg[7]_i_1_n_0\,
      D => s_axis_tdata(7),
      Q => \jstk_x_reg_reg_n_0_[7]\,
      R => '0'
    );
\jstk_x_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \jstk_x_reg[8]_i_1_n_0\,
      Q => \jstk_x_reg_reg_n_0_[8]\,
      R => '0'
    );
\jstk_x_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \jstk_x_reg[9]_i_1_n_0\,
      Q => \jstk_x_reg_reg_n_0_[9]\,
      R => '0'
    );
\jstk_y_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => jstk_x0,
      D => \jstk_y_reg_reg_n_0_[0]\,
      Q => jstk_y(0),
      R => '0'
    );
\jstk_y_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => jstk_x0,
      D => \jstk_y_reg_reg_n_0_[1]\,
      Q => jstk_y(1),
      R => '0'
    );
\jstk_y_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => jstk_x0,
      D => \jstk_y_reg_reg_n_0_[2]\,
      Q => jstk_y(2),
      R => '0'
    );
\jstk_y_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => jstk_x0,
      D => \jstk_y_reg_reg_n_0_[3]\,
      Q => jstk_y(3),
      R => '0'
    );
\jstk_y_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => jstk_x0,
      D => \jstk_y_reg_reg_n_0_[4]\,
      Q => jstk_y(4),
      R => '0'
    );
\jstk_y_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => jstk_x0,
      D => \jstk_y_reg_reg_n_0_[5]\,
      Q => jstk_y(5),
      R => '0'
    );
\jstk_y_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => jstk_x0,
      D => \jstk_y_reg_reg_n_0_[6]\,
      Q => jstk_y(6),
      R => '0'
    );
\jstk_y_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => jstk_x0,
      D => \jstk_y_reg_reg_n_0_[7]\,
      Q => jstk_y(7),
      R => '0'
    );
\jstk_y_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => state_sts(1),
      I1 => s_axis_tvalid,
      I2 => aresetn,
      I3 => state_sts(2),
      I4 => state_sts(0),
      O => \jstk_y_reg[7]_i_1_n_0\
    );
\jstk_y_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => jstk_x0,
      D => \jstk_y_reg_reg_n_0_[8]\,
      Q => jstk_y(8),
      R => '0'
    );
\jstk_y_reg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => state_sts(1),
      I2 => s_axis_tvalid,
      I3 => aresetn,
      I4 => \jstk_x_reg[9]_i_2_n_0\,
      I5 => \jstk_y_reg_reg_n_0_[8]\,
      O => \jstk_y_reg[8]_i_1_n_0\
    );
\jstk_y_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => jstk_x0,
      D => \jstk_y_reg_reg_n_0_[9]\,
      Q => jstk_y(9),
      R => '0'
    );
\jstk_y_reg[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s_axis_tdata(1),
      I1 => state_sts(1),
      I2 => s_axis_tvalid,
      I3 => aresetn,
      I4 => \jstk_x_reg[9]_i_2_n_0\,
      I5 => \jstk_y_reg_reg_n_0_[9]\,
      O => \jstk_y_reg[9]_i_1_n_0\
    );
\jstk_y_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \jstk_y_reg[7]_i_1_n_0\,
      D => s_axis_tdata(0),
      Q => \jstk_y_reg_reg_n_0_[0]\,
      R => '0'
    );
\jstk_y_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \jstk_y_reg[7]_i_1_n_0\,
      D => s_axis_tdata(1),
      Q => \jstk_y_reg_reg_n_0_[1]\,
      R => '0'
    );
\jstk_y_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \jstk_y_reg[7]_i_1_n_0\,
      D => s_axis_tdata(2),
      Q => \jstk_y_reg_reg_n_0_[2]\,
      R => '0'
    );
\jstk_y_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \jstk_y_reg[7]_i_1_n_0\,
      D => s_axis_tdata(3),
      Q => \jstk_y_reg_reg_n_0_[3]\,
      R => '0'
    );
\jstk_y_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \jstk_y_reg[7]_i_1_n_0\,
      D => s_axis_tdata(4),
      Q => \jstk_y_reg_reg_n_0_[4]\,
      R => '0'
    );
\jstk_y_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \jstk_y_reg[7]_i_1_n_0\,
      D => s_axis_tdata(5),
      Q => \jstk_y_reg_reg_n_0_[5]\,
      R => '0'
    );
\jstk_y_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \jstk_y_reg[7]_i_1_n_0\,
      D => s_axis_tdata(6),
      Q => \jstk_y_reg_reg_n_0_[6]\,
      R => '0'
    );
\jstk_y_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \jstk_y_reg[7]_i_1_n_0\,
      D => s_axis_tdata(7),
      Q => \jstk_y_reg_reg_n_0_[7]\,
      R => '0'
    );
\jstk_y_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \jstk_y_reg[8]_i_1_n_0\,
      Q => \jstk_y_reg_reg_n_0_[8]\,
      R => '0'
    );
\jstk_y_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \jstk_y_reg[9]_i_1_n_0\,
      Q => \jstk_y_reg_reg_n_0_[9]\,
      R => '0'
    );
\m_axis_tdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFFFAC00"
    )
        port map (
      I0 => \state_cmd_reg_n_0_[0]\,
      I1 => \state_cmd_reg_n_0_[2]\,
      I2 => \state_cmd_reg_n_0_[1]\,
      I3 => aresetn,
      I4 => \^m_axis_tdata\(0),
      O => \m_axis_tdata[6]_i_1_n_0\
    );
\m_axis_tdata[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F60"
    )
        port map (
      I0 => \state_cmd_reg_n_0_[2]\,
      I1 => \state_cmd_reg_n_0_[1]\,
      I2 => aresetn,
      I3 => \^m_axis_tdata\(1),
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
      I0 => \state_cmd_reg_n_0_[2]\,
      I1 => \state_cmd_reg_n_0_[1]\,
      I2 => \state_cmd_reg_n_0_[0]\,
      O => \^m_axis_tvalid\
    );
\next_state_cmd[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14FF1400"
    )
        port map (
      I0 => \state_cmd_reg_n_0_[0]\,
      I1 => \state_cmd_reg_n_0_[1]\,
      I2 => \state_cmd_reg_n_0_[2]\,
      I3 => \next_state_cmd[2]_i_2_n_0\,
      I4 => \next_state_cmd_reg_n_0_[0]\,
      O => \next_state_cmd[0]_i_1_n_0\
    );
\next_state_cmd[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F90"
    )
        port map (
      I0 => \state_cmd_reg_n_0_[0]\,
      I1 => \state_cmd_reg_n_0_[2]\,
      I2 => \next_state_cmd[2]_i_2_n_0\,
      I3 => \next_state_cmd_reg_n_0_[1]\,
      O => \next_state_cmd[1]_i_1_n_0\
    );
\next_state_cmd[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4FFF400"
    )
        port map (
      I0 => \state_cmd_reg_n_0_[1]\,
      I1 => \state_cmd_reg_n_0_[2]\,
      I2 => \state_cmd_reg_n_0_[0]\,
      I3 => \next_state_cmd[2]_i_2_n_0\,
      I4 => \next_state_cmd_reg_n_0_[2]\,
      O => \next_state_cmd[2]_i_1_n_0\
    );
\next_state_cmd[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAABAAAA"
    )
        port map (
      I0 => \next_state_cmd[2]_i_3_n_0\,
      I1 => \tx_delay_counter[14]_i_6_n_0\,
      I2 => \tx_delay_counter[14]_i_5_n_0\,
      I3 => tx_delay_counter(0),
      I4 => \state_cmd[0]_i_2_n_0\,
      I5 => \^m_axis_tvalid\,
      O => \next_state_cmd[2]_i_2_n_0\
    );
\next_state_cmd[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \state_cmd_reg_n_0_[2]\,
      I2 => \state_cmd_reg_n_0_[1]\,
      O => \next_state_cmd[2]_i_3_n_0\
    );
\next_state_cmd_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \FSM_sequential_state_sts[2]_i_2_n_0\,
      D => \next_state_cmd[0]_i_1_n_0\,
      Q => \next_state_cmd_reg_n_0_[0]\
    );
\next_state_cmd_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \next_state_cmd[1]_i_1_n_0\,
      PRE => \FSM_sequential_state_sts[2]_i_2_n_0\,
      Q => \next_state_cmd_reg_n_0_[1]\
    );
\next_state_cmd_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \FSM_sequential_state_sts[2]_i_2_n_0\,
      D => \next_state_cmd[2]_i_1_n_0\,
      Q => \next_state_cmd_reg_n_0_[2]\
    );
\state_cmd[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFCCEE0000"
    )
        port map (
      I0 => \state_cmd[0]_i_2_n_0\,
      I1 => \state_cmd[0]_i_3_n_0\,
      I2 => \state_cmd[0]_i_4_n_0\,
      I3 => \state_cmd[0]_i_5_n_0\,
      I4 => \state_cmd[0]_i_6_n_0\,
      I5 => \state_cmd_reg_n_0_[0]\,
      O => \state_cmd[0]_i_1_n_0\
    );
\state_cmd[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => tx_delay_counter(10),
      I1 => tx_delay_counter(11),
      I2 => tx_delay_counter(5),
      I3 => tx_delay_counter(9),
      I4 => tx_delay_counter(14),
      I5 => tx_delay_counter(12),
      O => \state_cmd[0]_i_2_n_0\
    );
\state_cmd[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \state_cmd_reg_n_0_[0]\,
      I1 => \next_state_cmd_reg_n_0_[0]\,
      I2 => \state_cmd_reg_n_0_[2]\,
      I3 => \state_cmd_reg_n_0_[1]\,
      O => \state_cmd[0]_i_3_n_0\
    );
\state_cmd[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => tx_delay_counter(12),
      I1 => tx_delay_counter(14),
      I2 => tx_delay_counter(10),
      I3 => tx_delay_counter(11),
      I4 => tx_delay_counter(9),
      I5 => tx_delay_counter(5),
      O => \state_cmd[0]_i_4_n_0\
    );
\state_cmd[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => \tx_delay_counter[14]_i_6_n_0\,
      I1 => tx_delay_counter(2),
      I2 => tx_delay_counter(1),
      I3 => tx_delay_counter(4),
      I4 => tx_delay_counter(3),
      I5 => tx_delay_counter(0),
      O => \state_cmd[0]_i_5_n_0\
    );
\state_cmd[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \state_cmd_reg_n_0_[2]\,
      I2 => \state_cmd_reg_n_0_[1]\,
      O => \state_cmd[0]_i_6_n_0\
    );
\state_cmd[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00FF00000808"
    )
        port map (
      I0 => \next_state_cmd_reg_n_0_[1]\,
      I1 => \state_cmd_reg_n_0_[0]\,
      I2 => \state_cmd[2]_i_2_n_0\,
      I3 => m_axis_tready,
      I4 => \state_cmd_reg_n_0_[2]\,
      I5 => \state_cmd_reg_n_0_[1]\,
      O => \state_cmd[1]_i_1_n_0\
    );
\state_cmd[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF000000FF0808"
    )
        port map (
      I0 => \next_state_cmd_reg_n_0_[2]\,
      I1 => \state_cmd_reg_n_0_[0]\,
      I2 => \state_cmd[2]_i_2_n_0\,
      I3 => m_axis_tready,
      I4 => \state_cmd_reg_n_0_[2]\,
      I5 => \state_cmd_reg_n_0_[1]\,
      O => \state_cmd[2]_i_1_n_0\
    );
\state_cmd[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \state_cmd[0]_i_4_n_0\,
      I1 => tx_delay_counter(0),
      I2 => \tx_delay_counter[14]_i_5_n_0\,
      I3 => \tx_delay_counter[14]_i_6_n_0\,
      O => \state_cmd[2]_i_2_n_0\
    );
\state_cmd_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \FSM_sequential_state_sts[2]_i_2_n_0\,
      D => \state_cmd[0]_i_1_n_0\,
      Q => \state_cmd_reg_n_0_[0]\
    );
\state_cmd_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \FSM_sequential_state_sts[2]_i_2_n_0\,
      D => \state_cmd[1]_i_1_n_0\,
      Q => \state_cmd_reg_n_0_[1]\
    );
\state_cmd_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \FSM_sequential_state_sts[2]_i_2_n_0\,
      D => \state_cmd[2]_i_1_n_0\,
      Q => \state_cmd_reg_n_0_[2]\
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
      CO(3) => \tx_delay_counter0_inferred__0/i__carry__1_n_0\,
      CO(2) => \tx_delay_counter0_inferred__0/i__carry__1_n_1\,
      CO(1) => \tx_delay_counter0_inferred__0/i__carry__1_n_2\,
      CO(0) => \tx_delay_counter0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => tx_delay_counter(12 downto 9)
    );
\tx_delay_counter0_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tx_delay_counter0_inferred__0/i__carry__1_n_0\,
      CO(3 downto 1) => \NLW_tx_delay_counter0_inferred__0/i__carry__2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \tx_delay_counter0_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_tx_delay_counter0_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => data0(14 downto 13),
      S(3 downto 2) => B"00",
      S(1 downto 0) => tx_delay_counter(14 downto 13)
    );
\tx_delay_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF0000FEBF"
    )
        port map (
      I0 => \tx_delay_counter[14]_i_4_n_0\,
      I1 => tx_delay_counter(5),
      I2 => tx_delay_counter(9),
      I3 => \state_cmd_reg_n_0_[0]\,
      I4 => tx_delay_counter(0),
      I5 => \tx_delay_counter[0]_i_2_n_0\,
      O => p_2_in(0)
    );
\tx_delay_counter[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => tx_delay_counter(3),
      I1 => tx_delay_counter(4),
      I2 => tx_delay_counter(1),
      I3 => tx_delay_counter(2),
      I4 => \tx_delay_counter[14]_i_6_n_0\,
      O => \tx_delay_counter[0]_i_2_n_0\
    );
\tx_delay_counter[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \tx_delay_counter[14]_i_3_n_0\,
      I1 => \tx_delay_counter[14]_i_4_n_0\,
      I2 => tx_delay_counter(0),
      I3 => \tx_delay_counter[14]_i_5_n_0\,
      I4 => \tx_delay_counter[14]_i_6_n_0\,
      I5 => data0(10),
      O => p_2_in(10)
    );
\tx_delay_counter[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \tx_delay_counter[14]_i_3_n_0\,
      I1 => \tx_delay_counter[14]_i_4_n_0\,
      I2 => tx_delay_counter(0),
      I3 => \tx_delay_counter[14]_i_5_n_0\,
      I4 => \tx_delay_counter[14]_i_6_n_0\,
      I5 => data0(11),
      O => p_2_in(11)
    );
\tx_delay_counter[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \tx_delay_counter[14]_i_3_n_0\,
      I1 => \tx_delay_counter[14]_i_4_n_0\,
      I2 => tx_delay_counter(0),
      I3 => \tx_delay_counter[14]_i_5_n_0\,
      I4 => \tx_delay_counter[14]_i_6_n_0\,
      I5 => data0(12),
      O => p_2_in(12)
    );
\tx_delay_counter[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \tx_delay_counter[14]_i_3_n_0\,
      I1 => \tx_delay_counter[14]_i_4_n_0\,
      I2 => tx_delay_counter(0),
      I3 => \tx_delay_counter[14]_i_5_n_0\,
      I4 => \tx_delay_counter[14]_i_6_n_0\,
      I5 => data0(13),
      O => p_2_in(13)
    );
\tx_delay_counter[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state_cmd_reg_n_0_[2]\,
      I1 => \state_cmd_reg_n_0_[1]\,
      O => \tx_delay_counter[14]_i_1_n_0\
    );
\tx_delay_counter[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \tx_delay_counter[14]_i_3_n_0\,
      I1 => \tx_delay_counter[14]_i_4_n_0\,
      I2 => tx_delay_counter(0),
      I3 => \tx_delay_counter[14]_i_5_n_0\,
      I4 => \tx_delay_counter[14]_i_6_n_0\,
      I5 => data0(14),
      O => p_2_in(14)
    );
\tx_delay_counter[14]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BD"
    )
        port map (
      I0 => \state_cmd_reg_n_0_[0]\,
      I1 => tx_delay_counter(9),
      I2 => tx_delay_counter(5),
      O => \tx_delay_counter[14]_i_3_n_0\
    );
\tx_delay_counter[14]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFD"
    )
        port map (
      I0 => tx_delay_counter(11),
      I1 => tx_delay_counter(10),
      I2 => tx_delay_counter(5),
      I3 => tx_delay_counter(14),
      I4 => tx_delay_counter(12),
      O => \tx_delay_counter[14]_i_4_n_0\
    );
\tx_delay_counter[14]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => tx_delay_counter(2),
      I1 => tx_delay_counter(1),
      I2 => tx_delay_counter(4),
      I3 => tx_delay_counter(3),
      O => \tx_delay_counter[14]_i_5_n_0\
    );
\tx_delay_counter[14]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => tx_delay_counter(7),
      I1 => tx_delay_counter(6),
      I2 => tx_delay_counter(8),
      I3 => tx_delay_counter(13),
      O => \tx_delay_counter[14]_i_6_n_0\
    );
\tx_delay_counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \tx_delay_counter[14]_i_3_n_0\,
      I1 => \tx_delay_counter[14]_i_4_n_0\,
      I2 => tx_delay_counter(0),
      I3 => \tx_delay_counter[14]_i_5_n_0\,
      I4 => \tx_delay_counter[14]_i_6_n_0\,
      I5 => data0(1),
      O => p_2_in(1)
    );
\tx_delay_counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \tx_delay_counter[14]_i_3_n_0\,
      I1 => \tx_delay_counter[14]_i_4_n_0\,
      I2 => tx_delay_counter(0),
      I3 => \tx_delay_counter[14]_i_5_n_0\,
      I4 => \tx_delay_counter[14]_i_6_n_0\,
      I5 => data0(2),
      O => p_2_in(2)
    );
\tx_delay_counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \tx_delay_counter[14]_i_3_n_0\,
      I1 => \tx_delay_counter[14]_i_4_n_0\,
      I2 => tx_delay_counter(0),
      I3 => \tx_delay_counter[14]_i_5_n_0\,
      I4 => \tx_delay_counter[14]_i_6_n_0\,
      I5 => data0(3),
      O => p_2_in(3)
    );
\tx_delay_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \tx_delay_counter[14]_i_3_n_0\,
      I1 => \tx_delay_counter[14]_i_4_n_0\,
      I2 => tx_delay_counter(0),
      I3 => \tx_delay_counter[14]_i_5_n_0\,
      I4 => \tx_delay_counter[14]_i_6_n_0\,
      I5 => data0(4),
      O => p_2_in(4)
    );
\tx_delay_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \tx_delay_counter[14]_i_3_n_0\,
      I1 => \tx_delay_counter[14]_i_4_n_0\,
      I2 => tx_delay_counter(0),
      I3 => \tx_delay_counter[14]_i_5_n_0\,
      I4 => \tx_delay_counter[14]_i_6_n_0\,
      I5 => data0(5),
      O => p_2_in(5)
    );
\tx_delay_counter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \tx_delay_counter[14]_i_3_n_0\,
      I1 => \tx_delay_counter[14]_i_4_n_0\,
      I2 => tx_delay_counter(0),
      I3 => \tx_delay_counter[14]_i_5_n_0\,
      I4 => \tx_delay_counter[14]_i_6_n_0\,
      I5 => data0(6),
      O => p_2_in(6)
    );
\tx_delay_counter[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \tx_delay_counter[14]_i_3_n_0\,
      I1 => \tx_delay_counter[14]_i_4_n_0\,
      I2 => tx_delay_counter(0),
      I3 => \tx_delay_counter[14]_i_5_n_0\,
      I4 => \tx_delay_counter[14]_i_6_n_0\,
      I5 => data0(7),
      O => p_2_in(7)
    );
\tx_delay_counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \tx_delay_counter[14]_i_3_n_0\,
      I1 => \tx_delay_counter[14]_i_4_n_0\,
      I2 => tx_delay_counter(0),
      I3 => \tx_delay_counter[14]_i_5_n_0\,
      I4 => \tx_delay_counter[14]_i_6_n_0\,
      I5 => data0(8),
      O => p_2_in(8)
    );
\tx_delay_counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \tx_delay_counter[14]_i_3_n_0\,
      I1 => \tx_delay_counter[14]_i_4_n_0\,
      I2 => tx_delay_counter(0),
      I3 => \tx_delay_counter[14]_i_5_n_0\,
      I4 => \tx_delay_counter[14]_i_6_n_0\,
      I5 => data0(9),
      O => p_2_in(9)
    );
\tx_delay_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \tx_delay_counter[14]_i_1_n_0\,
      CLR => \FSM_sequential_state_sts[2]_i_2_n_0\,
      D => p_2_in(0),
      Q => tx_delay_counter(0)
    );
\tx_delay_counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \tx_delay_counter[14]_i_1_n_0\,
      CLR => \FSM_sequential_state_sts[2]_i_2_n_0\,
      D => p_2_in(10),
      Q => tx_delay_counter(10)
    );
\tx_delay_counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \tx_delay_counter[14]_i_1_n_0\,
      CLR => \FSM_sequential_state_sts[2]_i_2_n_0\,
      D => p_2_in(11),
      Q => tx_delay_counter(11)
    );
\tx_delay_counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \tx_delay_counter[14]_i_1_n_0\,
      CLR => \FSM_sequential_state_sts[2]_i_2_n_0\,
      D => p_2_in(12),
      Q => tx_delay_counter(12)
    );
\tx_delay_counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \tx_delay_counter[14]_i_1_n_0\,
      CLR => \FSM_sequential_state_sts[2]_i_2_n_0\,
      D => p_2_in(13),
      Q => tx_delay_counter(13)
    );
\tx_delay_counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \tx_delay_counter[14]_i_1_n_0\,
      CLR => \FSM_sequential_state_sts[2]_i_2_n_0\,
      D => p_2_in(14),
      Q => tx_delay_counter(14)
    );
\tx_delay_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \tx_delay_counter[14]_i_1_n_0\,
      CLR => \FSM_sequential_state_sts[2]_i_2_n_0\,
      D => p_2_in(1),
      Q => tx_delay_counter(1)
    );
\tx_delay_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \tx_delay_counter[14]_i_1_n_0\,
      CLR => \FSM_sequential_state_sts[2]_i_2_n_0\,
      D => p_2_in(2),
      Q => tx_delay_counter(2)
    );
\tx_delay_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \tx_delay_counter[14]_i_1_n_0\,
      CLR => \FSM_sequential_state_sts[2]_i_2_n_0\,
      D => p_2_in(3),
      Q => tx_delay_counter(3)
    );
\tx_delay_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \tx_delay_counter[14]_i_1_n_0\,
      CLR => \FSM_sequential_state_sts[2]_i_2_n_0\,
      D => p_2_in(4),
      Q => tx_delay_counter(4)
    );
\tx_delay_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \tx_delay_counter[14]_i_1_n_0\,
      CLR => \FSM_sequential_state_sts[2]_i_2_n_0\,
      D => p_2_in(5),
      Q => tx_delay_counter(5)
    );
\tx_delay_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \tx_delay_counter[14]_i_1_n_0\,
      CLR => \FSM_sequential_state_sts[2]_i_2_n_0\,
      D => p_2_in(6),
      Q => tx_delay_counter(6)
    );
\tx_delay_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \tx_delay_counter[14]_i_1_n_0\,
      CLR => \FSM_sequential_state_sts[2]_i_2_n_0\,
      D => p_2_in(7),
      Q => tx_delay_counter(7)
    );
\tx_delay_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \tx_delay_counter[14]_i_1_n_0\,
      CLR => \FSM_sequential_state_sts[2]_i_2_n_0\,
      D => p_2_in(8),
      Q => tx_delay_counter(8)
    );
\tx_delay_counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \tx_delay_counter[14]_i_1_n_0\,
      CLR => \FSM_sequential_state_sts[2]_i_2_n_0\,
      D => p_2_in(9),
      Q => tx_delay_counter(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_UART_packet_digilent_jstk2_0_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tready : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    jstk_x : out STD_LOGIC_VECTOR ( 9 downto 0 );
    jstk_y : out STD_LOGIC_VECTOR ( 9 downto 0 );
    btn_jstk : out STD_LOGIC;
    btn_trigger : out STD_LOGIC;
    led_r : in STD_LOGIC_VECTOR ( 7 downto 0 );
    led_g : in STD_LOGIC_VECTOR ( 7 downto 0 );
    led_b : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of test_UART_packet_digilent_jstk2_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of test_UART_packet_digilent_jstk2_0_1 : entity is "test_UART_packet_digilent_jstk2_0_1,digilent_jstk2,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of test_UART_packet_digilent_jstk2_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of test_UART_packet_digilent_jstk2_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of test_UART_packet_digilent_jstk2_0_1 : entity is "digilent_jstk2,Vivado 2020.2";
end test_UART_packet_digilent_jstk2_0_1;

architecture STRUCTURE of test_UART_packet_digilent_jstk2_0_1 is
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
U0: entity work.test_UART_packet_digilent_jstk2_0_1_digilent_jstk2
     port map (
      aclk => aclk,
      aresetn => aresetn,
      btn_jstk => btn_jstk,
      btn_trigger => btn_trigger,
      jstk_x(9 downto 0) => jstk_x(9 downto 0),
      jstk_y(9 downto 0) => jstk_y(9 downto 0),
      m_axis_tdata(1) => \^m_axis_tdata\(2),
      m_axis_tdata(0) => \^m_axis_tdata\(5),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(7 downto 0) => s_axis_tdata(7 downto 0),
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;

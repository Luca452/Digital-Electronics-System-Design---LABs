-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Apr 13 23:37:20 2023
-- Host        : DESKTOP-JKUPK39 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/daido/Desktop/Polimi/Anno
--               4/DESD/Git/KittCarPWM/jstk2_interface/jstk2_interface.gen/sources_1/bd/test_UART_packet/ip/test_UART_packet_digilent_jstk2_0_1/test_UART_packet_digilent_jstk2_0_1_sim_netlist.vhdl}
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
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    jstk_x : out STD_LOGIC_VECTOR ( 9 downto 0 );
    jstk_y : out STD_LOGIC_VECTOR ( 9 downto 0 );
    btn_jstk : out STD_LOGIC;
    btn_trigger : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tready : in STD_LOGIC;
    led_b : in STD_LOGIC_VECTOR ( 7 downto 0 );
    led_r : in STD_LOGIC_VECTOR ( 7 downto 0 );
    led_g : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_UART_packet_digilent_jstk2_0_1_digilent_jstk2 : entity is "digilent_jstk2";
end test_UART_packet_digilent_jstk2_0_1_digilent_jstk2;

architecture STRUCTURE of test_UART_packet_digilent_jstk2_0_1_digilent_jstk2 is
  signal \FSM_onehot_state_cmd[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_cmd[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_cmd[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_cmd_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_cmd_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_cmd_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_cmd_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_state_cmd_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_sequential_state_sts[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_sts[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_sts[2]_i_1_n_0\ : STD_LOGIC;
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
  signal m_axis_tdata0 : STD_LOGIC;
  signal \m_axis_tdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_7_n_0\ : STD_LOGIC;
  signal state_cmd0 : STD_LOGIC;
  signal state_sts : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal tx_delay_counter : STD_LOGIC;
  signal tx_delay_counter0 : STD_LOGIC;
  signal \tx_delay_counter0_carry__0_n_0\ : STD_LOGIC;
  signal \tx_delay_counter0_carry__0_n_1\ : STD_LOGIC;
  signal \tx_delay_counter0_carry__0_n_2\ : STD_LOGIC;
  signal \tx_delay_counter0_carry__0_n_3\ : STD_LOGIC;
  signal \tx_delay_counter0_carry__1_n_0\ : STD_LOGIC;
  signal \tx_delay_counter0_carry__1_n_1\ : STD_LOGIC;
  signal \tx_delay_counter0_carry__1_n_2\ : STD_LOGIC;
  signal \tx_delay_counter0_carry__1_n_3\ : STD_LOGIC;
  signal \tx_delay_counter0_carry__2_n_3\ : STD_LOGIC;
  signal tx_delay_counter0_carry_n_0 : STD_LOGIC;
  signal tx_delay_counter0_carry_n_1 : STD_LOGIC;
  signal tx_delay_counter0_carry_n_2 : STD_LOGIC;
  signal tx_delay_counter0_carry_n_3 : STD_LOGIC;
  signal \tx_delay_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[14]_i_1_n_0\ : STD_LOGIC;
  signal \tx_delay_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \tx_delay_counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \tx_delay_counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \tx_delay_counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \tx_delay_counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \tx_delay_counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \tx_delay_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \tx_delay_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \tx_delay_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \tx_delay_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \tx_delay_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \tx_delay_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \tx_delay_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \tx_delay_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \tx_delay_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_tx_delay_counter0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_tx_delay_counter0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state_cmd[0]_i_2\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_cmd_reg[0]\ : label is "send_red:000100,send_green:001000,send_blue:010000,send_dummy:100000,wait_delay:000001,send_cmd:000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_cmd_reg[1]\ : label is "send_red:000100,send_green:001000,send_blue:010000,send_dummy:100000,wait_delay:000001,send_cmd:000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_cmd_reg[2]\ : label is "send_red:000100,send_green:001000,send_blue:010000,send_dummy:100000,wait_delay:000001,send_cmd:000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_cmd_reg[3]\ : label is "send_red:000100,send_green:001000,send_blue:010000,send_dummy:100000,wait_delay:000001,send_cmd:000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_cmd_reg[4]\ : label is "send_red:000100,send_green:001000,send_blue:010000,send_dummy:100000,wait_delay:000001,send_cmd:000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_cmd_reg[5]\ : label is "send_red:000100,send_green:001000,send_blue:010000,send_dummy:100000,wait_delay:000001,send_cmd:000010";
  attribute SOFT_HLUTNM of \FSM_sequential_state_sts[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_state_sts[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state_sts[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_sts_reg[0]\ : label is "get_x_lsb:000,get_x_msb:001,get_y_lsb:010,get_y_msb:011,get_buttons:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_sts_reg[1]\ : label is "get_x_lsb:000,get_x_msb:001,get_y_lsb:010,get_y_msb:011,get_buttons:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_sts_reg[2]\ : label is "get_x_lsb:000,get_x_msb:001,get_y_lsb:010,get_y_msb:011,get_buttons:100,";
  attribute SOFT_HLUTNM of \jstk_x_reg[9]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of m_axis_tvalid_INST_0 : label is "soft_lutpair3";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of tx_delay_counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \tx_delay_counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \tx_delay_counter0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \tx_delay_counter0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \tx_delay_counter[0]_i_1\ : label is "soft_lutpair2";
begin
\FSM_onehot_state_cmd[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEFAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_cmd_reg_n_0_[5]\,
      I1 => \m_axis_tdata[7]_i_3_n_0\,
      I2 => \m_axis_tdata[7]_i_4_n_0\,
      I3 => \FSM_onehot_state_cmd[0]_i_2_n_0\,
      I4 => \tx_delay_counter_reg_n_0_[13]\,
      I5 => tx_delay_counter,
      O => \FSM_onehot_state_cmd[0]_i_1_n_0\
    );
\FSM_onehot_state_cmd[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \tx_delay_counter_reg_n_0_[11]\,
      I1 => \tx_delay_counter_reg_n_0_[1]\,
      I2 => \tx_delay_counter_reg_n_0_[5]\,
      I3 => \tx_delay_counter_reg_n_0_[0]\,
      O => \FSM_onehot_state_cmd[0]_i_2_n_0\
    );
\FSM_onehot_state_cmd[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \m_axis_tdata[7]_i_3_n_0\,
      I1 => \tx_delay_counter_reg_n_0_[14]\,
      I2 => \tx_delay_counter_reg_n_0_[12]\,
      I3 => \tx_delay_counter_reg_n_0_[9]\,
      I4 => \tx_delay_counter_reg_n_0_[7]\,
      I5 => \m_axis_tdata[7]_i_5_n_0\,
      O => \FSM_onehot_state_cmd[1]_i_1_n_0\
    );
\FSM_onehot_state_cmd[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A888AAAA"
    )
        port map (
      I0 => aresetn,
      I1 => tx_delay_counter,
      I2 => m_axis_tready,
      I3 => \FSM_onehot_state_cmd_reg_n_0_[5]\,
      I4 => \m_axis_tdata[7]_i_6_n_0\,
      O => state_cmd0
    );
\FSM_onehot_state_cmd_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => state_cmd0,
      D => \FSM_onehot_state_cmd[0]_i_1_n_0\,
      Q => tx_delay_counter,
      R => '0'
    );
\FSM_onehot_state_cmd_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => state_cmd0,
      D => \FSM_onehot_state_cmd[1]_i_1_n_0\,
      Q => \FSM_onehot_state_cmd_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_state_cmd_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => state_cmd0,
      D => \FSM_onehot_state_cmd_reg_n_0_[1]\,
      Q => \FSM_onehot_state_cmd_reg_n_0_[2]\,
      R => '0'
    );
\FSM_onehot_state_cmd_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => state_cmd0,
      D => \FSM_onehot_state_cmd_reg_n_0_[2]\,
      Q => \FSM_onehot_state_cmd_reg_n_0_[3]\,
      R => '0'
    );
\FSM_onehot_state_cmd_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => state_cmd0,
      D => \FSM_onehot_state_cmd_reg_n_0_[3]\,
      Q => \FSM_onehot_state_cmd_reg_n_0_[4]\,
      R => '0'
    );
\FSM_onehot_state_cmd_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => state_cmd0,
      D => \FSM_onehot_state_cmd_reg_n_0_[4]\,
      Q => \FSM_onehot_state_cmd_reg_n_0_[5]\,
      R => '0'
    );
\FSM_sequential_state_sts[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F40"
    )
        port map (
      I0 => state_sts(2),
      I1 => s_axis_tvalid,
      I2 => aresetn,
      I3 => state_sts(0),
      O => \FSM_sequential_state_sts[0]_i_1_n_0\
    );
\FSM_sequential_state_sts[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1FFF2000"
    )
        port map (
      I0 => state_sts(0),
      I1 => state_sts(2),
      I2 => s_axis_tvalid,
      I3 => aresetn,
      I4 => state_sts(1),
      O => \FSM_sequential_state_sts[1]_i_1_n_0\
    );
\FSM_sequential_state_sts[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFF8000"
    )
        port map (
      I0 => state_sts(1),
      I1 => state_sts(0),
      I2 => s_axis_tvalid,
      I3 => aresetn,
      I4 => state_sts(2),
      O => \FSM_sequential_state_sts[2]_i_1_n_0\
    );
\FSM_sequential_state_sts_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_sequential_state_sts[0]_i_1_n_0\,
      Q => state_sts(0),
      R => '0'
    );
\FSM_sequential_state_sts_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_sequential_state_sts[1]_i_1_n_0\,
      Q => state_sts(1),
      R => '0'
    );
\FSM_sequential_state_sts_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_sequential_state_sts[2]_i_1_n_0\,
      Q => state_sts(2),
      R => '0'
    );
btn_jstk_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => jstk_x0,
      D => \btn_jstk_reg__0\,
      Q => btn_jstk,
      R => '0'
    );
btn_jstk_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => \jstk_x_reg[9]_i_2_n_0\,
      I2 => state_sts(0),
      I3 => state_sts(1),
      I4 => state_sts(2),
      I5 => \btn_jstk_reg__0\,
      O => btn_jstk_reg_i_1_n_0
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
btn_trigger_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => s_axis_tdata(1),
      I1 => \jstk_x_reg[9]_i_2_n_0\,
      I2 => state_sts(0),
      I3 => state_sts(1),
      I4 => state_sts(2),
      I5 => \btn_trigger_reg__0\,
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
      INIT => X"0004AAAA0000AAAA"
    )
        port map (
      I0 => data_ready,
      I1 => state_sts(2),
      I2 => state_sts(1),
      I3 => state_sts(0),
      I4 => aresetn,
      I5 => s_axis_tvalid,
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
      INIT => X"00001000"
    )
        port map (
      I0 => state_sts(2),
      I1 => state_sts(0),
      I2 => aresetn,
      I3 => s_axis_tvalid,
      I4 => state_sts(1),
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
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => state_sts(0),
      I2 => state_sts(2),
      I3 => \jstk_x_reg[9]_i_2_n_0\,
      I4 => state_sts(1),
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
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => s_axis_tdata(1),
      I1 => state_sts(0),
      I2 => state_sts(2),
      I3 => \jstk_x_reg[9]_i_2_n_0\,
      I4 => state_sts(1),
      I5 => \jstk_x_reg_reg_n_0_[9]\,
      O => \jstk_x_reg[9]_i_1_n_0\
    );
\jstk_x_reg[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => aresetn,
      I1 => s_axis_tvalid,
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
      I0 => s_axis_tvalid,
      I1 => aresetn,
      I2 => state_sts(1),
      I3 => state_sts(0),
      I4 => state_sts(2),
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
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => \jstk_x_reg[9]_i_2_n_0\,
      I2 => state_sts(1),
      I3 => state_sts(2),
      I4 => state_sts(0),
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
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => s_axis_tdata(1),
      I1 => \jstk_x_reg[9]_i_2_n_0\,
      I2 => state_sts(1),
      I3 => state_sts(2),
      I4 => state_sts(0),
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
\m_axis_tdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => led_r(0),
      I1 => \FSM_onehot_state_cmd_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_cmd_reg_n_0_[2]\,
      I3 => led_g(0),
      I4 => \FSM_onehot_state_cmd_reg_n_0_[3]\,
      I5 => led_b(0),
      O => \m_axis_tdata[0]_i_1_n_0\
    );
\m_axis_tdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => led_r(1),
      I1 => \FSM_onehot_state_cmd_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_cmd_reg_n_0_[2]\,
      I3 => led_g(1),
      I4 => \FSM_onehot_state_cmd_reg_n_0_[3]\,
      I5 => led_b(1),
      O => \m_axis_tdata[1]_i_1_n_0\
    );
\m_axis_tdata[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \FSM_onehot_state_cmd_reg_n_0_[3]\,
      I1 => led_b(2),
      I2 => tx_delay_counter,
      I3 => \m_axis_tdata[2]_i_2_n_0\,
      O => \m_axis_tdata[2]_i_1_n_0\
    );
\m_axis_tdata[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => led_r(2),
      I1 => \FSM_onehot_state_cmd_reg_n_0_[1]\,
      I2 => led_g(2),
      I3 => \FSM_onehot_state_cmd_reg_n_0_[2]\,
      O => \m_axis_tdata[2]_i_2_n_0\
    );
\m_axis_tdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => led_r(3),
      I1 => \FSM_onehot_state_cmd_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_cmd_reg_n_0_[2]\,
      I3 => led_g(3),
      I4 => \FSM_onehot_state_cmd_reg_n_0_[3]\,
      I5 => led_b(3),
      O => \m_axis_tdata[3]_i_1_n_0\
    );
\m_axis_tdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => led_r(4),
      I1 => \FSM_onehot_state_cmd_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_cmd_reg_n_0_[2]\,
      I3 => led_g(4),
      I4 => \FSM_onehot_state_cmd_reg_n_0_[3]\,
      I5 => led_b(4),
      O => \m_axis_tdata[4]_i_1_n_0\
    );
\m_axis_tdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => led_r(5),
      I1 => \FSM_onehot_state_cmd_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_cmd_reg_n_0_[2]\,
      I3 => led_g(5),
      I4 => \FSM_onehot_state_cmd_reg_n_0_[3]\,
      I5 => led_b(5),
      O => \m_axis_tdata[5]_i_1_n_0\
    );
\m_axis_tdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => led_r(6),
      I1 => \FSM_onehot_state_cmd_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_cmd_reg_n_0_[2]\,
      I3 => led_g(6),
      I4 => \FSM_onehot_state_cmd_reg_n_0_[3]\,
      I5 => led_b(6),
      O => \m_axis_tdata[6]_i_1_n_0\
    );
\m_axis_tdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020AAAA"
    )
        port map (
      I0 => aresetn,
      I1 => \m_axis_tdata[7]_i_3_n_0\,
      I2 => \m_axis_tdata[7]_i_4_n_0\,
      I3 => \m_axis_tdata[7]_i_5_n_0\,
      I4 => \m_axis_tdata[7]_i_6_n_0\,
      O => m_axis_tdata0
    );
\m_axis_tdata[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \FSM_onehot_state_cmd_reg_n_0_[3]\,
      I1 => led_b(7),
      I2 => tx_delay_counter,
      I3 => \m_axis_tdata[7]_i_7_n_0\,
      O => \m_axis_tdata[7]_i_2_n_0\
    );
\m_axis_tdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
        port map (
      I0 => \tx_delay_counter_reg_n_0_[2]\,
      I1 => \tx_delay_counter_reg_n_0_[8]\,
      I2 => \tx_delay_counter_reg_n_0_[10]\,
      I3 => \tx_delay_counter_reg_n_0_[6]\,
      I4 => \tx_delay_counter_reg_n_0_[4]\,
      I5 => \tx_delay_counter_reg_n_0_[3]\,
      O => \m_axis_tdata[7]_i_3_n_0\
    );
\m_axis_tdata[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \tx_delay_counter_reg_n_0_[14]\,
      I1 => \tx_delay_counter_reg_n_0_[12]\,
      I2 => \tx_delay_counter_reg_n_0_[9]\,
      I3 => \tx_delay_counter_reg_n_0_[7]\,
      O => \m_axis_tdata[7]_i_4_n_0\
    );
\m_axis_tdata[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFBFFFF"
    )
        port map (
      I0 => \tx_delay_counter_reg_n_0_[0]\,
      I1 => \tx_delay_counter_reg_n_0_[5]\,
      I2 => \tx_delay_counter_reg_n_0_[1]\,
      I3 => \tx_delay_counter_reg_n_0_[11]\,
      I4 => tx_delay_counter,
      I5 => \tx_delay_counter_reg_n_0_[13]\,
      O => \m_axis_tdata[7]_i_5_n_0\
    );
\m_axis_tdata[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555557"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \FSM_onehot_state_cmd_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_cmd_reg_n_0_[2]\,
      I3 => \FSM_onehot_state_cmd_reg_n_0_[3]\,
      I4 => \FSM_onehot_state_cmd_reg_n_0_[4]\,
      O => \m_axis_tdata[7]_i_6_n_0\
    );
\m_axis_tdata[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => led_r(7),
      I1 => \FSM_onehot_state_cmd_reg_n_0_[1]\,
      I2 => led_g(7),
      I3 => \FSM_onehot_state_cmd_reg_n_0_[2]\,
      O => \m_axis_tdata[7]_i_7_n_0\
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[0]_i_1_n_0\,
      Q => m_axis_tdata(0),
      R => '0'
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[1]_i_1_n_0\,
      Q => m_axis_tdata(1),
      R => '0'
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[2]_i_1_n_0\,
      Q => m_axis_tdata(2),
      R => '0'
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[3]_i_1_n_0\,
      Q => m_axis_tdata(3),
      R => '0'
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[4]_i_1_n_0\,
      Q => m_axis_tdata(4),
      R => '0'
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[5]_i_1_n_0\,
      Q => m_axis_tdata(5),
      R => '0'
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[6]_i_1_n_0\,
      Q => m_axis_tdata(6),
      R => '0'
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[7]_i_2_n_0\,
      Q => m_axis_tdata(7),
      R => '0'
    );
m_axis_tvalid_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tx_delay_counter,
      O => m_axis_tvalid
    );
tx_delay_counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => tx_delay_counter0_carry_n_0,
      CO(2) => tx_delay_counter0_carry_n_1,
      CO(1) => tx_delay_counter0_carry_n_2,
      CO(0) => tx_delay_counter0_carry_n_3,
      CYINIT => \tx_delay_counter_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \tx_delay_counter_reg_n_0_[4]\,
      S(2) => \tx_delay_counter_reg_n_0_[3]\,
      S(1) => \tx_delay_counter_reg_n_0_[2]\,
      S(0) => \tx_delay_counter_reg_n_0_[1]\
    );
\tx_delay_counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => tx_delay_counter0_carry_n_0,
      CO(3) => \tx_delay_counter0_carry__0_n_0\,
      CO(2) => \tx_delay_counter0_carry__0_n_1\,
      CO(1) => \tx_delay_counter0_carry__0_n_2\,
      CO(0) => \tx_delay_counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \tx_delay_counter_reg_n_0_[8]\,
      S(2) => \tx_delay_counter_reg_n_0_[7]\,
      S(1) => \tx_delay_counter_reg_n_0_[6]\,
      S(0) => \tx_delay_counter_reg_n_0_[5]\
    );
\tx_delay_counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tx_delay_counter0_carry__0_n_0\,
      CO(3) => \tx_delay_counter0_carry__1_n_0\,
      CO(2) => \tx_delay_counter0_carry__1_n_1\,
      CO(1) => \tx_delay_counter0_carry__1_n_2\,
      CO(0) => \tx_delay_counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \tx_delay_counter_reg_n_0_[12]\,
      S(2) => \tx_delay_counter_reg_n_0_[11]\,
      S(1) => \tx_delay_counter_reg_n_0_[10]\,
      S(0) => \tx_delay_counter_reg_n_0_[9]\
    );
\tx_delay_counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tx_delay_counter0_carry__1_n_0\,
      CO(3 downto 1) => \NLW_tx_delay_counter0_carry__2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \tx_delay_counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_tx_delay_counter0_carry__2_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => data0(14 downto 13),
      S(3 downto 2) => B"00",
      S(1) => \tx_delay_counter_reg_n_0_[14]\,
      S(0) => \tx_delay_counter_reg_n_0_[13]\
    );
\tx_delay_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \tx_delay_counter_reg_n_0_[0]\,
      O => \tx_delay_counter[0]_i_1_n_0\
    );
\tx_delay_counter[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \tx_delay_counter_reg_n_0_[13]\,
      I1 => \FSM_onehot_state_cmd[0]_i_2_n_0\,
      I2 => \m_axis_tdata[7]_i_4_n_0\,
      I3 => \m_axis_tdata[7]_i_3_n_0\,
      I4 => aresetn,
      I5 => tx_delay_counter,
      O => \tx_delay_counter[14]_i_1_n_0\
    );
\tx_delay_counter[14]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tx_delay_counter,
      I1 => aresetn,
      O => tx_delay_counter0
    );
\tx_delay_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tx_delay_counter0,
      D => \tx_delay_counter[0]_i_1_n_0\,
      Q => \tx_delay_counter_reg_n_0_[0]\,
      R => \tx_delay_counter[14]_i_1_n_0\
    );
\tx_delay_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tx_delay_counter0,
      D => data0(10),
      Q => \tx_delay_counter_reg_n_0_[10]\,
      R => \tx_delay_counter[14]_i_1_n_0\
    );
\tx_delay_counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tx_delay_counter0,
      D => data0(11),
      Q => \tx_delay_counter_reg_n_0_[11]\,
      R => \tx_delay_counter[14]_i_1_n_0\
    );
\tx_delay_counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tx_delay_counter0,
      D => data0(12),
      Q => \tx_delay_counter_reg_n_0_[12]\,
      R => \tx_delay_counter[14]_i_1_n_0\
    );
\tx_delay_counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tx_delay_counter0,
      D => data0(13),
      Q => \tx_delay_counter_reg_n_0_[13]\,
      R => \tx_delay_counter[14]_i_1_n_0\
    );
\tx_delay_counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tx_delay_counter0,
      D => data0(14),
      Q => \tx_delay_counter_reg_n_0_[14]\,
      R => \tx_delay_counter[14]_i_1_n_0\
    );
\tx_delay_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tx_delay_counter0,
      D => data0(1),
      Q => \tx_delay_counter_reg_n_0_[1]\,
      R => \tx_delay_counter[14]_i_1_n_0\
    );
\tx_delay_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tx_delay_counter0,
      D => data0(2),
      Q => \tx_delay_counter_reg_n_0_[2]\,
      R => \tx_delay_counter[14]_i_1_n_0\
    );
\tx_delay_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tx_delay_counter0,
      D => data0(3),
      Q => \tx_delay_counter_reg_n_0_[3]\,
      R => \tx_delay_counter[14]_i_1_n_0\
    );
\tx_delay_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tx_delay_counter0,
      D => data0(4),
      Q => \tx_delay_counter_reg_n_0_[4]\,
      R => \tx_delay_counter[14]_i_1_n_0\
    );
\tx_delay_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tx_delay_counter0,
      D => data0(5),
      Q => \tx_delay_counter_reg_n_0_[5]\,
      R => \tx_delay_counter[14]_i_1_n_0\
    );
\tx_delay_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tx_delay_counter0,
      D => data0(6),
      Q => \tx_delay_counter_reg_n_0_[6]\,
      R => \tx_delay_counter[14]_i_1_n_0\
    );
\tx_delay_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tx_delay_counter0,
      D => data0(7),
      Q => \tx_delay_counter_reg_n_0_[7]\,
      R => \tx_delay_counter[14]_i_1_n_0\
    );
\tx_delay_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tx_delay_counter0,
      D => data0(8),
      Q => \tx_delay_counter_reg_n_0_[8]\,
      R => \tx_delay_counter[14]_i_1_n_0\
    );
\tx_delay_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tx_delay_counter0,
      D => data0(9),
      Q => \tx_delay_counter_reg_n_0_[9]\,
      R => \tx_delay_counter[14]_i_1_n_0\
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
U0: entity work.test_UART_packet_digilent_jstk2_0_1_digilent_jstk2
     port map (
      aclk => aclk,
      aresetn => aresetn,
      btn_jstk => btn_jstk,
      btn_trigger => btn_trigger,
      jstk_x(9 downto 0) => jstk_x(9 downto 0),
      jstk_y(9 downto 0) => jstk_y(9 downto 0),
      led_b(7 downto 0) => led_b(7 downto 0),
      led_g(7 downto 0) => led_g(7 downto 0),
      led_r(7 downto 0) => led_r(7 downto 0),
      m_axis_tdata(7 downto 0) => m_axis_tdata(7 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(7 downto 0) => s_axis_tdata(7 downto 0),
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;

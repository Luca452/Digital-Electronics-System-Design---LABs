-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Fri Mar 31 17:10:12 2023
-- Host        : DESKTOP-JKUPK39 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ test_UART_packet_jstk_uart_bridge_0_0_0_sim_netlist.vhdl
-- Design      : test_UART_packet_jstk_uart_bridge_0_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_jstk_uart_bridge_0 is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_jstk_uart_bridge_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_jstk_uart_bridge_0 is
  signal \FSM_sequential_tx_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[0]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[0]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[2]_i_3_n_0\ : STD_LOGIC;
  signal counter_delay0 : STD_LOGIC;
  signal \counter_delay0_carry__0_n_0\ : STD_LOGIC;
  signal \counter_delay0_carry__0_n_1\ : STD_LOGIC;
  signal \counter_delay0_carry__0_n_2\ : STD_LOGIC;
  signal \counter_delay0_carry__0_n_3\ : STD_LOGIC;
  signal \counter_delay0_carry__1_n_0\ : STD_LOGIC;
  signal \counter_delay0_carry__1_n_1\ : STD_LOGIC;
  signal \counter_delay0_carry__1_n_2\ : STD_LOGIC;
  signal \counter_delay0_carry__1_n_3\ : STD_LOGIC;
  signal \counter_delay0_carry__2_n_0\ : STD_LOGIC;
  signal \counter_delay0_carry__2_n_1\ : STD_LOGIC;
  signal \counter_delay0_carry__2_n_2\ : STD_LOGIC;
  signal \counter_delay0_carry__2_n_3\ : STD_LOGIC;
  signal \counter_delay0_carry__3_n_2\ : STD_LOGIC;
  signal \counter_delay0_carry__3_n_3\ : STD_LOGIC;
  signal counter_delay0_carry_n_0 : STD_LOGIC;
  signal counter_delay0_carry_n_1 : STD_LOGIC;
  signal counter_delay0_carry_n_2 : STD_LOGIC;
  signal counter_delay0_carry_n_3 : STD_LOGIC;
  signal \counter_delay[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_delay[19]_i_1_n_0\ : STD_LOGIC;
  signal \counter_delay_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_delay_reg_n_0_[10]\ : STD_LOGIC;
  signal \counter_delay_reg_n_0_[11]\ : STD_LOGIC;
  signal \counter_delay_reg_n_0_[12]\ : STD_LOGIC;
  signal \counter_delay_reg_n_0_[13]\ : STD_LOGIC;
  signal \counter_delay_reg_n_0_[14]\ : STD_LOGIC;
  signal \counter_delay_reg_n_0_[15]\ : STD_LOGIC;
  signal \counter_delay_reg_n_0_[16]\ : STD_LOGIC;
  signal \counter_delay_reg_n_0_[17]\ : STD_LOGIC;
  signal \counter_delay_reg_n_0_[18]\ : STD_LOGIC;
  signal \counter_delay_reg_n_0_[19]\ : STD_LOGIC;
  signal \counter_delay_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_delay_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_delay_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_delay_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter_delay_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter_delay_reg_n_0_[6]\ : STD_LOGIC;
  signal \counter_delay_reg_n_0_[7]\ : STD_LOGIC;
  signal \counter_delay_reg_n_0_[8]\ : STD_LOGIC;
  signal \counter_delay_reg_n_0_[9]\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 19 downto 1 );
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \m_axis_tdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_1_n_0\ : STD_LOGIC;
  signal tx_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \tx_state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_counter_delay0_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter_delay0_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[0]_i_6\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[2]_i_2\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[0]\ : label is "send_jstk_x:010,send_jstk_y:011,send_buttons:100,delay:000,send_header:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[1]\ : label is "send_jstk_x:010,send_jstk_y:011,send_buttons:100,delay:000,send_header:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[2]\ : label is "send_jstk_x:010,send_jstk_y:011,send_buttons:100,delay:000,send_header:001";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of counter_delay0_carry : label is 35;
  attribute ADDER_THRESHOLD of \counter_delay0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_delay0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_delay0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_delay0_carry__3\ : label is 35;
  attribute SOFT_HLUTNM of \counter_delay[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of m_axis_tvalid_INST_0 : label is "soft_lutpair0";
begin
  m_axis_tdata(2 downto 0) <= \^m_axis_tdata\(2 downto 0);
\FSM_sequential_tx_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \FSM_sequential_tx_state[0]_i_2_n_0\,
      I1 => tx_state(1),
      I2 => tx_state(0),
      I3 => tx_state(2),
      O => \tx_state__0\(0)
    );
\FSM_sequential_tx_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \FSM_sequential_tx_state[0]_i_3_n_0\,
      I1 => \FSM_sequential_tx_state[0]_i_4_n_0\,
      I2 => \FSM_sequential_tx_state[0]_i_5_n_0\,
      I3 => \FSM_sequential_tx_state[0]_i_6_n_0\,
      I4 => \FSM_sequential_tx_state[0]_i_7_n_0\,
      O => \FSM_sequential_tx_state[0]_i_2_n_0\
    );
\FSM_sequential_tx_state[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \counter_delay_reg_n_0_[18]\,
      I1 => \counter_delay_reg_n_0_[15]\,
      I2 => \counter_delay_reg_n_0_[17]\,
      I3 => \counter_delay_reg_n_0_[2]\,
      O => \FSM_sequential_tx_state[0]_i_3_n_0\
    );
\FSM_sequential_tx_state[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \counter_delay_reg_n_0_[3]\,
      I1 => \counter_delay_reg_n_0_[12]\,
      I2 => \counter_delay_reg_n_0_[9]\,
      I3 => \counter_delay_reg_n_0_[8]\,
      O => \FSM_sequential_tx_state[0]_i_4_n_0\
    );
\FSM_sequential_tx_state[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \counter_delay_reg_n_0_[14]\,
      I1 => \counter_delay_reg_n_0_[4]\,
      I2 => \counter_delay_reg_n_0_[5]\,
      I3 => \counter_delay_reg_n_0_[1]\,
      O => \FSM_sequential_tx_state[0]_i_5_n_0\
    );
\FSM_sequential_tx_state[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \counter_delay_reg_n_0_[19]\,
      I1 => \counter_delay_reg_n_0_[7]\,
      I2 => \counter_delay_reg_n_0_[6]\,
      I3 => \counter_delay_reg_n_0_[0]\,
      O => \FSM_sequential_tx_state[0]_i_6_n_0\
    );
\FSM_sequential_tx_state[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \counter_delay_reg_n_0_[11]\,
      I1 => \counter_delay_reg_n_0_[10]\,
      I2 => \counter_delay_reg_n_0_[16]\,
      I3 => \counter_delay_reg_n_0_[13]\,
      O => \FSM_sequential_tx_state[0]_i_7_n_0\
    );
\FSM_sequential_tx_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => tx_state(0),
      I1 => tx_state(1),
      I2 => tx_state(2),
      O => \tx_state__0\(1)
    );
\FSM_sequential_tx_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"222B"
    )
        port map (
      I0 => m_axis_tready,
      I1 => tx_state(2),
      I2 => tx_state(0),
      I3 => tx_state(1),
      O => \FSM_sequential_tx_state[2]_i_1_n_0\
    );
\FSM_sequential_tx_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => tx_state(0),
      I1 => tx_state(1),
      I2 => tx_state(2),
      O => \tx_state__0\(2)
    );
\FSM_sequential_tx_state[2]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \FSM_sequential_tx_state[2]_i_3_n_0\
    );
\FSM_sequential_tx_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \FSM_sequential_tx_state[2]_i_1_n_0\,
      CLR => \FSM_sequential_tx_state[2]_i_3_n_0\,
      D => \tx_state__0\(0),
      Q => tx_state(0)
    );
\FSM_sequential_tx_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \FSM_sequential_tx_state[2]_i_1_n_0\,
      CLR => \FSM_sequential_tx_state[2]_i_3_n_0\,
      D => \tx_state__0\(1),
      Q => tx_state(1)
    );
\FSM_sequential_tx_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \FSM_sequential_tx_state[2]_i_1_n_0\,
      CLR => \FSM_sequential_tx_state[2]_i_3_n_0\,
      D => \tx_state__0\(2),
      Q => tx_state(2)
    );
counter_delay0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter_delay0_carry_n_0,
      CO(2) => counter_delay0_carry_n_1,
      CO(1) => counter_delay0_carry_n_2,
      CO(0) => counter_delay0_carry_n_3,
      CYINIT => \counter_delay_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \counter_delay_reg_n_0_[4]\,
      S(2) => \counter_delay_reg_n_0_[3]\,
      S(1) => \counter_delay_reg_n_0_[2]\,
      S(0) => \counter_delay_reg_n_0_[1]\
    );
\counter_delay0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter_delay0_carry_n_0,
      CO(3) => \counter_delay0_carry__0_n_0\,
      CO(2) => \counter_delay0_carry__0_n_1\,
      CO(1) => \counter_delay0_carry__0_n_2\,
      CO(0) => \counter_delay0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \counter_delay_reg_n_0_[8]\,
      S(2) => \counter_delay_reg_n_0_[7]\,
      S(1) => \counter_delay_reg_n_0_[6]\,
      S(0) => \counter_delay_reg_n_0_[5]\
    );
\counter_delay0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_delay0_carry__0_n_0\,
      CO(3) => \counter_delay0_carry__1_n_0\,
      CO(2) => \counter_delay0_carry__1_n_1\,
      CO(1) => \counter_delay0_carry__1_n_2\,
      CO(0) => \counter_delay0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \counter_delay_reg_n_0_[12]\,
      S(2) => \counter_delay_reg_n_0_[11]\,
      S(1) => \counter_delay_reg_n_0_[10]\,
      S(0) => \counter_delay_reg_n_0_[9]\
    );
\counter_delay0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_delay0_carry__1_n_0\,
      CO(3) => \counter_delay0_carry__2_n_0\,
      CO(2) => \counter_delay0_carry__2_n_1\,
      CO(1) => \counter_delay0_carry__2_n_2\,
      CO(0) => \counter_delay0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3) => \counter_delay_reg_n_0_[16]\,
      S(2) => \counter_delay_reg_n_0_[15]\,
      S(1) => \counter_delay_reg_n_0_[14]\,
      S(0) => \counter_delay_reg_n_0_[13]\
    );
\counter_delay0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_delay0_carry__2_n_0\,
      CO(3 downto 2) => \NLW_counter_delay0_carry__3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter_delay0_carry__3_n_2\,
      CO(0) => \counter_delay0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_counter_delay0_carry__3_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(19 downto 17),
      S(3) => '0',
      S(2) => \counter_delay_reg_n_0_[19]\,
      S(1) => \counter_delay_reg_n_0_[18]\,
      S(0) => \counter_delay_reg_n_0_[17]\
    );
\counter_delay[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_delay_reg_n_0_[0]\,
      O => \counter_delay[0]_i_1_n_0\
    );
\counter_delay[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \FSM_sequential_tx_state[0]_i_2_n_0\,
      I1 => tx_state(1),
      I2 => tx_state(0),
      I3 => tx_state(2),
      I4 => aresetn,
      O => \counter_delay[19]_i_1_n_0\
    );
\counter_delay[19]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => aresetn,
      I1 => tx_state(2),
      I2 => tx_state(0),
      I3 => tx_state(1),
      O => counter_delay0
    );
\counter_delay_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => counter_delay0,
      D => \counter_delay[0]_i_1_n_0\,
      Q => \counter_delay_reg_n_0_[0]\,
      R => \counter_delay[19]_i_1_n_0\
    );
\counter_delay_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => counter_delay0,
      D => data0(10),
      Q => \counter_delay_reg_n_0_[10]\,
      R => \counter_delay[19]_i_1_n_0\
    );
\counter_delay_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => counter_delay0,
      D => data0(11),
      Q => \counter_delay_reg_n_0_[11]\,
      R => \counter_delay[19]_i_1_n_0\
    );
\counter_delay_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => counter_delay0,
      D => data0(12),
      Q => \counter_delay_reg_n_0_[12]\,
      R => \counter_delay[19]_i_1_n_0\
    );
\counter_delay_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => counter_delay0,
      D => data0(13),
      Q => \counter_delay_reg_n_0_[13]\,
      R => \counter_delay[19]_i_1_n_0\
    );
\counter_delay_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => counter_delay0,
      D => data0(14),
      Q => \counter_delay_reg_n_0_[14]\,
      R => \counter_delay[19]_i_1_n_0\
    );
\counter_delay_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => counter_delay0,
      D => data0(15),
      Q => \counter_delay_reg_n_0_[15]\,
      R => \counter_delay[19]_i_1_n_0\
    );
\counter_delay_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => counter_delay0,
      D => data0(16),
      Q => \counter_delay_reg_n_0_[16]\,
      R => \counter_delay[19]_i_1_n_0\
    );
\counter_delay_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => counter_delay0,
      D => data0(17),
      Q => \counter_delay_reg_n_0_[17]\,
      R => \counter_delay[19]_i_1_n_0\
    );
\counter_delay_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => counter_delay0,
      D => data0(18),
      Q => \counter_delay_reg_n_0_[18]\,
      R => \counter_delay[19]_i_1_n_0\
    );
\counter_delay_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => counter_delay0,
      D => data0(19),
      Q => \counter_delay_reg_n_0_[19]\,
      R => \counter_delay[19]_i_1_n_0\
    );
\counter_delay_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => counter_delay0,
      D => data0(1),
      Q => \counter_delay_reg_n_0_[1]\,
      R => \counter_delay[19]_i_1_n_0\
    );
\counter_delay_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => counter_delay0,
      D => data0(2),
      Q => \counter_delay_reg_n_0_[2]\,
      R => \counter_delay[19]_i_1_n_0\
    );
\counter_delay_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => counter_delay0,
      D => data0(3),
      Q => \counter_delay_reg_n_0_[3]\,
      R => \counter_delay[19]_i_1_n_0\
    );
\counter_delay_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => counter_delay0,
      D => data0(4),
      Q => \counter_delay_reg_n_0_[4]\,
      R => \counter_delay[19]_i_1_n_0\
    );
\counter_delay_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => counter_delay0,
      D => data0(5),
      Q => \counter_delay_reg_n_0_[5]\,
      R => \counter_delay[19]_i_1_n_0\
    );
\counter_delay_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => counter_delay0,
      D => data0(6),
      Q => \counter_delay_reg_n_0_[6]\,
      R => \counter_delay[19]_i_1_n_0\
    );
\counter_delay_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => counter_delay0,
      D => data0(7),
      Q => \counter_delay_reg_n_0_[7]\,
      R => \counter_delay[19]_i_1_n_0\
    );
\counter_delay_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => counter_delay0,
      D => data0(8),
      Q => \counter_delay_reg_n_0_[8]\,
      R => \counter_delay[19]_i_1_n_0\
    );
\counter_delay_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => counter_delay0,
      D => data0(9),
      Q => \counter_delay_reg_n_0_[9]\,
      R => \counter_delay[19]_i_1_n_0\
    );
\m_axis_tdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBFFFFFF12000000"
    )
        port map (
      I0 => tx_state(2),
      I1 => tx_state(0),
      I2 => tx_state(1),
      I3 => m_axis_tready,
      I4 => aresetn,
      I5 => \^m_axis_tdata\(0),
      O => \m_axis_tdata[0]_i_1_n_0\
    );
\m_axis_tdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBFFFFFF42000000"
    )
        port map (
      I0 => tx_state(2),
      I1 => tx_state(0),
      I2 => tx_state(1),
      I3 => m_axis_tready,
      I4 => aresetn,
      I5 => \^m_axis_tdata\(1),
      O => \m_axis_tdata[1]_i_1_n_0\
    );
\m_axis_tdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF56000000"
    )
        port map (
      I0 => tx_state(2),
      I1 => tx_state(0),
      I2 => tx_state(1),
      I3 => m_axis_tready,
      I4 => aresetn,
      I5 => \^m_axis_tdata\(2),
      O => \m_axis_tdata[7]_i_1_n_0\
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[0]_i_1_n_0\,
      Q => \^m_axis_tdata\(0),
      R => '0'
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[1]_i_1_n_0\,
      Q => \^m_axis_tdata\(1),
      R => '0'
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[7]_i_1_n_0\,
      Q => \^m_axis_tdata\(2),
      R => '0'
    );
m_axis_tvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => tx_state(1),
      I1 => tx_state(0),
      I2 => tx_state(2),
      O => m_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "test_UART_packet_jstk_uart_bridge_0_0_0,jstk_uart_bridge_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "jstk_uart_bridge_0,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_parameter of m_axis_tvalid : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
begin
  m_axis_tdata(7) <= \^m_axis_tdata\(6);
  m_axis_tdata(6) <= \^m_axis_tdata\(6);
  m_axis_tdata(5) <= \<const0>\;
  m_axis_tdata(4) <= \<const0>\;
  m_axis_tdata(3) <= \<const0>\;
  m_axis_tdata(2) <= \<const0>\;
  m_axis_tdata(1 downto 0) <= \^m_axis_tdata\(1 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_jstk_uart_bridge_0
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axis_tdata(2) => \^m_axis_tdata\(6),
      m_axis_tdata(1 downto 0) => \^m_axis_tdata\(1 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid
    );
end STRUCTURE;

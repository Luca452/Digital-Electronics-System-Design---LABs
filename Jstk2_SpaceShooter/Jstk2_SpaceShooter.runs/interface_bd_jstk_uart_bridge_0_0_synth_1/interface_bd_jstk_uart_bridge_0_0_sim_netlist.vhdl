-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Apr 19 16:56:46 2023
-- Host        : DESKTOP-JKUPK39 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ interface_bd_jstk_uart_bridge_0_0_sim_netlist.vhdl
-- Design      : interface_bd_jstk_uart_bridge_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_jstk_uart_bridge is
  port (
    led_r : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led_g : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led_b : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    jstk_x : in STD_LOGIC_VECTOR ( 6 downto 0 );
    jstk_y : in STD_LOGIC_VECTOR ( 6 downto 0 );
    btn_trigger : in STD_LOGIC;
    btn_jstk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_jstk_uart_bridge;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_jstk_uart_bridge is
  signal \FSM_sequential_rx_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[2]_i_1_n_0\ : STD_LOGIC;
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
  signal \counter_delay[0]_i_2_n_0\ : STD_LOGIC;
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
  signal data_ready_rx0 : STD_LOGIC;
  signal data_ready_rx_reg_n_0 : STD_LOGIC;
  signal \led_b_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \led_b_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \led_b_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \led_b_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \led_b_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \led_b_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \led_b_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \led_b_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal led_g_reg0 : STD_LOGIC;
  signal \led_g_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \led_g_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \led_g_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \led_g_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \led_g_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \led_g_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \led_g_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \led_g_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal led_r_reg0 : STD_LOGIC;
  signal \led_r_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \led_r_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \led_r_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \led_r_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \led_r_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \led_r_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \led_r_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \led_r_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal m_axis_tdata0 : STD_LOGIC;
  signal \m_axis_tdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_i_1_n_0\ : STD_LOGIC;
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
  signal \m_axis_tdata[7]_i_8_n_0\ : STD_LOGIC;
  signal \rx_state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \tx_state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_counter_delay0_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter_delay0_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[0]\ : label is "idle:000,get_header:001,get_led_r:010,get_led_g:011,get_led_b:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[1]\ : label is "idle:000,get_header:001,get_led_r:010,get_led_g:011,get_led_b:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[2]\ : label is "idle:000,get_header:001,get_led_r:010,get_led_g:011,get_led_b:100,";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[0]\ : label is "send_jstk_x:010,send_jstk_y:011,send_buttons:100,delay:000,send_header:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[1]\ : label is "send_jstk_x:010,send_jstk_y:011,send_buttons:100,delay:000,send_header:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[2]\ : label is "send_jstk_x:010,send_jstk_y:011,send_buttons:100,delay:000,send_header:001";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of counter_delay0_carry : label is 35;
  attribute ADDER_THRESHOLD of \counter_delay0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_delay0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_delay0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_delay0_carry__3\ : label is 35;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \led_b_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \led_b_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \led_b_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \led_b_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \led_b_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \led_b_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \led_b_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \led_b_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \led_g_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \led_g_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \led_g_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \led_g_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \led_g_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \led_g_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \led_g_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \led_g_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \led_r_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \led_r_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \led_r_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \led_r_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \led_r_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \led_r_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \led_r_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \led_r_reg[7]\ : label is "LD";
  attribute SOFT_HLUTNM of \m_axis_tdata[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_tdata[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of m_axis_tvalid_INST_0 : label is "soft_lutpair2";
begin
\FSM_sequential_rx_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2527262626262626"
    )
        port map (
      I0 => \rx_state__0\(0),
      I1 => \FSM_sequential_rx_state[2]_i_2_n_0\,
      I2 => \rx_state__0\(2),
      I3 => \rx_state__0\(1),
      I4 => aresetn,
      I5 => s_axis_tvalid,
      O => \FSM_sequential_rx_state[0]_i_1_n_0\
    );
\FSM_sequential_rx_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3508370837083708"
    )
        port map (
      I0 => \rx_state__0\(0),
      I1 => \FSM_sequential_rx_state[2]_i_2_n_0\,
      I2 => \rx_state__0\(2),
      I3 => \rx_state__0\(1),
      I4 => aresetn,
      I5 => s_axis_tvalid,
      O => \FSM_sequential_rx_state[1]_i_1_n_0\
    );
\FSM_sequential_rx_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A20383038303830"
    )
        port map (
      I0 => \rx_state__0\(0),
      I1 => \FSM_sequential_rx_state[2]_i_2_n_0\,
      I2 => \rx_state__0\(2),
      I3 => \rx_state__0\(1),
      I4 => aresetn,
      I5 => s_axis_tvalid,
      O => \FSM_sequential_rx_state[2]_i_1_n_0\
    );
\FSM_sequential_rx_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => aresetn,
      I2 => s_axis_tdata(2),
      I3 => s_axis_tdata(1),
      I4 => s_axis_tdata(0),
      I5 => \FSM_sequential_rx_state[2]_i_3_n_0\,
      O => \FSM_sequential_rx_state[2]_i_2_n_0\
    );
\FSM_sequential_rx_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => s_axis_tdata(6),
      I1 => s_axis_tdata(5),
      I2 => s_axis_tdata(3),
      I3 => s_axis_tdata(4),
      I4 => \rx_state__0\(2),
      I5 => s_axis_tdata(7),
      O => \FSM_sequential_rx_state[2]_i_3_n_0\
    );
\FSM_sequential_rx_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \FSM_sequential_rx_state[0]_i_1_n_0\,
      Q => \rx_state__0\(0),
      R => '0'
    );
\FSM_sequential_rx_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \FSM_sequential_rx_state[1]_i_1_n_0\,
      Q => \rx_state__0\(1),
      R => '0'
    );
\FSM_sequential_rx_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \FSM_sequential_rx_state[2]_i_1_n_0\,
      Q => \rx_state__0\(2),
      R => '0'
    );
\FSM_sequential_tx_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFFF3000CFFF1100"
    )
        port map (
      I0 => \m_axis_tdata[7]_i_3_n_0\,
      I1 => \tx_state__0\(2),
      I2 => m_axis_tready,
      I3 => aresetn,
      I4 => \tx_state__0\(0),
      I5 => \tx_state__0\(1),
      O => \FSM_sequential_tx_state[0]_i_1_n_0\
    );
\FSM_sequential_tx_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF4000"
    )
        port map (
      I0 => \tx_state__0\(2),
      I1 => m_axis_tready,
      I2 => aresetn,
      I3 => \tx_state__0\(0),
      I4 => \tx_state__0\(1),
      O => \FSM_sequential_tx_state[1]_i_1_n_0\
    );
\FSM_sequential_tx_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAAAA2A"
    )
        port map (
      I0 => \tx_state__0\(2),
      I1 => m_axis_tready,
      I2 => aresetn,
      I3 => \tx_state__0\(0),
      I4 => \tx_state__0\(1),
      O => \FSM_sequential_tx_state[2]_i_1_n_0\
    );
\FSM_sequential_tx_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \FSM_sequential_tx_state[0]_i_1_n_0\,
      Q => \tx_state__0\(0),
      R => '0'
    );
\FSM_sequential_tx_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \FSM_sequential_tx_state[1]_i_1_n_0\,
      Q => \tx_state__0\(1),
      R => '0'
    );
\FSM_sequential_tx_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \FSM_sequential_tx_state[2]_i_1_n_0\,
      Q => \tx_state__0\(2),
      R => '0'
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
\counter_delay[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF300000008"
    )
        port map (
      I0 => \counter_delay[0]_i_2_n_0\,
      I1 => aresetn,
      I2 => \tx_state__0\(1),
      I3 => \tx_state__0\(0),
      I4 => \tx_state__0\(2),
      I5 => \counter_delay_reg_n_0_[0]\,
      O => \counter_delay[0]_i_1_n_0\
    );
\counter_delay[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \m_axis_tdata[7]_i_8_n_0\,
      I1 => \m_axis_tdata[7]_i_7_n_0\,
      I2 => \m_axis_tdata[7]_i_6_n_0\,
      I3 => \m_axis_tdata[7]_i_5_n_0\,
      I4 => \m_axis_tdata[7]_i_4_n_0\,
      O => \counter_delay[0]_i_2_n_0\
    );
\counter_delay[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \tx_state__0\(2),
      I1 => \tx_state__0\(0),
      I2 => \tx_state__0\(1),
      I3 => aresetn,
      I4 => \m_axis_tdata[7]_i_3_n_0\,
      O => \counter_delay[19]_i_1_n_0\
    );
\counter_delay[19]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => aresetn,
      I1 => \tx_state__0\(1),
      I2 => \tx_state__0\(0),
      I3 => \tx_state__0\(2),
      O => counter_delay0
    );
\counter_delay_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \counter_delay[0]_i_1_n_0\,
      Q => \counter_delay_reg_n_0_[0]\,
      R => '0'
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
data_ready_rx_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_ready_rx0,
      CLR => data_ready_rx_reg_n_0,
      D => s_axis_tvalid,
      Q => data_ready_rx_reg_n_0
    );
\led_b_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \led_b_reg_reg_n_0_[0]\,
      G => data_ready_rx_reg_n_0,
      GE => '1',
      Q => led_b(0)
    );
\led_b_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \led_b_reg_reg_n_0_[1]\,
      G => data_ready_rx_reg_n_0,
      GE => '1',
      Q => led_b(1)
    );
\led_b_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \led_b_reg_reg_n_0_[2]\,
      G => data_ready_rx_reg_n_0,
      GE => '1',
      Q => led_b(2)
    );
\led_b_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \led_b_reg_reg_n_0_[3]\,
      G => data_ready_rx_reg_n_0,
      GE => '1',
      Q => led_b(3)
    );
\led_b_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \led_b_reg_reg_n_0_[4]\,
      G => data_ready_rx_reg_n_0,
      GE => '1',
      Q => led_b(4)
    );
\led_b_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \led_b_reg_reg_n_0_[5]\,
      G => data_ready_rx_reg_n_0,
      GE => '1',
      Q => led_b(5)
    );
\led_b_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \led_b_reg_reg_n_0_[6]\,
      G => data_ready_rx_reg_n_0,
      GE => '1',
      Q => led_b(6)
    );
\led_b_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \led_b_reg_reg_n_0_[7]\,
      G => data_ready_rx_reg_n_0,
      GE => '1',
      Q => led_b(7)
    );
\led_b_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \rx_state__0\(2),
      I1 => s_axis_tvalid,
      I2 => aresetn,
      I3 => \rx_state__0\(1),
      I4 => \rx_state__0\(0),
      O => data_ready_rx0
    );
\led_b_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => data_ready_rx0,
      D => s_axis_tdata(0),
      Q => \led_b_reg_reg_n_0_[0]\,
      R => '0'
    );
\led_b_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => data_ready_rx0,
      D => s_axis_tdata(1),
      Q => \led_b_reg_reg_n_0_[1]\,
      R => '0'
    );
\led_b_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => data_ready_rx0,
      D => s_axis_tdata(2),
      Q => \led_b_reg_reg_n_0_[2]\,
      R => '0'
    );
\led_b_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => data_ready_rx0,
      D => s_axis_tdata(3),
      Q => \led_b_reg_reg_n_0_[3]\,
      R => '0'
    );
\led_b_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => data_ready_rx0,
      D => s_axis_tdata(4),
      Q => \led_b_reg_reg_n_0_[4]\,
      R => '0'
    );
\led_b_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => data_ready_rx0,
      D => s_axis_tdata(5),
      Q => \led_b_reg_reg_n_0_[5]\,
      R => '0'
    );
\led_b_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => data_ready_rx0,
      D => s_axis_tdata(6),
      Q => \led_b_reg_reg_n_0_[6]\,
      R => '0'
    );
\led_b_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => data_ready_rx0,
      D => s_axis_tdata(7),
      Q => \led_b_reg_reg_n_0_[7]\,
      R => '0'
    );
\led_g_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \led_g_reg_reg_n_0_[0]\,
      G => data_ready_rx_reg_n_0,
      GE => '1',
      Q => led_g(0)
    );
\led_g_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \led_g_reg_reg_n_0_[1]\,
      G => data_ready_rx_reg_n_0,
      GE => '1',
      Q => led_g(1)
    );
\led_g_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \led_g_reg_reg_n_0_[2]\,
      G => data_ready_rx_reg_n_0,
      GE => '1',
      Q => led_g(2)
    );
\led_g_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \led_g_reg_reg_n_0_[3]\,
      G => data_ready_rx_reg_n_0,
      GE => '1',
      Q => led_g(3)
    );
\led_g_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \led_g_reg_reg_n_0_[4]\,
      G => data_ready_rx_reg_n_0,
      GE => '1',
      Q => led_g(4)
    );
\led_g_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \led_g_reg_reg_n_0_[5]\,
      G => data_ready_rx_reg_n_0,
      GE => '1',
      Q => led_g(5)
    );
\led_g_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \led_g_reg_reg_n_0_[6]\,
      G => data_ready_rx_reg_n_0,
      GE => '1',
      Q => led_g(6)
    );
\led_g_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \led_g_reg_reg_n_0_[7]\,
      G => data_ready_rx_reg_n_0,
      GE => '1',
      Q => led_g(7)
    );
\led_g_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \rx_state__0\(0),
      I1 => s_axis_tvalid,
      I2 => aresetn,
      I3 => \rx_state__0\(2),
      I4 => \rx_state__0\(1),
      O => led_g_reg0
    );
\led_g_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_g_reg0,
      D => s_axis_tdata(0),
      Q => \led_g_reg_reg_n_0_[0]\,
      R => '0'
    );
\led_g_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_g_reg0,
      D => s_axis_tdata(1),
      Q => \led_g_reg_reg_n_0_[1]\,
      R => '0'
    );
\led_g_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_g_reg0,
      D => s_axis_tdata(2),
      Q => \led_g_reg_reg_n_0_[2]\,
      R => '0'
    );
\led_g_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_g_reg0,
      D => s_axis_tdata(3),
      Q => \led_g_reg_reg_n_0_[3]\,
      R => '0'
    );
\led_g_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_g_reg0,
      D => s_axis_tdata(4),
      Q => \led_g_reg_reg_n_0_[4]\,
      R => '0'
    );
\led_g_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_g_reg0,
      D => s_axis_tdata(5),
      Q => \led_g_reg_reg_n_0_[5]\,
      R => '0'
    );
\led_g_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_g_reg0,
      D => s_axis_tdata(6),
      Q => \led_g_reg_reg_n_0_[6]\,
      R => '0'
    );
\led_g_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_g_reg0,
      D => s_axis_tdata(7),
      Q => \led_g_reg_reg_n_0_[7]\,
      R => '0'
    );
\led_r_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \led_r_reg_reg_n_0_[0]\,
      G => data_ready_rx_reg_n_0,
      GE => '1',
      Q => led_r(0)
    );
\led_r_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \led_r_reg_reg_n_0_[1]\,
      G => data_ready_rx_reg_n_0,
      GE => '1',
      Q => led_r(1)
    );
\led_r_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \led_r_reg_reg_n_0_[2]\,
      G => data_ready_rx_reg_n_0,
      GE => '1',
      Q => led_r(2)
    );
\led_r_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \led_r_reg_reg_n_0_[3]\,
      G => data_ready_rx_reg_n_0,
      GE => '1',
      Q => led_r(3)
    );
\led_r_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \led_r_reg_reg_n_0_[4]\,
      G => data_ready_rx_reg_n_0,
      GE => '1',
      Q => led_r(4)
    );
\led_r_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \led_r_reg_reg_n_0_[5]\,
      G => data_ready_rx_reg_n_0,
      GE => '1',
      Q => led_r(5)
    );
\led_r_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \led_r_reg_reg_n_0_[6]\,
      G => data_ready_rx_reg_n_0,
      GE => '1',
      Q => led_r(6)
    );
\led_r_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \led_r_reg_reg_n_0_[7]\,
      G => data_ready_rx_reg_n_0,
      GE => '1',
      Q => led_r(7)
    );
\led_r_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \rx_state__0\(0),
      I1 => s_axis_tvalid,
      I2 => aresetn,
      I3 => \rx_state__0\(2),
      I4 => \rx_state__0\(1),
      O => led_r_reg0
    );
\led_r_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_r_reg0,
      D => s_axis_tdata(0),
      Q => \led_r_reg_reg_n_0_[0]\,
      R => '0'
    );
\led_r_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_r_reg0,
      D => s_axis_tdata(1),
      Q => \led_r_reg_reg_n_0_[1]\,
      R => '0'
    );
\led_r_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_r_reg0,
      D => s_axis_tdata(2),
      Q => \led_r_reg_reg_n_0_[2]\,
      R => '0'
    );
\led_r_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_r_reg0,
      D => s_axis_tdata(3),
      Q => \led_r_reg_reg_n_0_[3]\,
      R => '0'
    );
\led_r_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_r_reg0,
      D => s_axis_tdata(4),
      Q => \led_r_reg_reg_n_0_[4]\,
      R => '0'
    );
\led_r_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_r_reg0,
      D => s_axis_tdata(5),
      Q => \led_r_reg_reg_n_0_[5]\,
      R => '0'
    );
\led_r_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_r_reg0,
      D => s_axis_tdata(6),
      Q => \led_r_reg_reg_n_0_[6]\,
      R => '0'
    );
\led_r_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_r_reg0,
      D => s_axis_tdata(7),
      Q => \led_r_reg_reg_n_0_[7]\,
      R => '0'
    );
\m_axis_tdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F388C088"
    )
        port map (
      I0 => jstk_y(0),
      I1 => \tx_state__0\(1),
      I2 => btn_jstk,
      I3 => \tx_state__0\(0),
      I4 => jstk_x(0),
      O => \m_axis_tdata[0]_i_1_n_0\
    );
\m_axis_tdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F388C088"
    )
        port map (
      I0 => jstk_y(1),
      I1 => \tx_state__0\(1),
      I2 => btn_trigger,
      I3 => \tx_state__0\(0),
      I4 => jstk_x(1),
      O => \m_axis_tdata[1]_i_1_n_0\
    );
\m_axis_tdata[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AC0"
    )
        port map (
      I0 => jstk_y(2),
      I1 => jstk_x(2),
      I2 => \tx_state__0\(0),
      I3 => \tx_state__0\(1),
      O => \m_axis_tdata[2]_i_1_n_0\
    );
\m_axis_tdata[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AC0"
    )
        port map (
      I0 => jstk_y(3),
      I1 => jstk_x(3),
      I2 => \tx_state__0\(0),
      I3 => \tx_state__0\(1),
      O => \m_axis_tdata[3]_i_1_n_0\
    );
\m_axis_tdata[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AC0"
    )
        port map (
      I0 => jstk_y(4),
      I1 => jstk_x(4),
      I2 => \tx_state__0\(0),
      I3 => \tx_state__0\(1),
      O => \m_axis_tdata[4]_i_1_n_0\
    );
\m_axis_tdata[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AC0"
    )
        port map (
      I0 => jstk_y(5),
      I1 => jstk_x(5),
      I2 => \tx_state__0\(0),
      I3 => \tx_state__0\(1),
      O => \m_axis_tdata[5]_i_1_n_0\
    );
\m_axis_tdata[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F45"
    )
        port map (
      I0 => \tx_state__0\(1),
      I1 => jstk_x(6),
      I2 => \tx_state__0\(0),
      I3 => jstk_y(6),
      O => \m_axis_tdata[6]_i_1_n_0\
    );
\m_axis_tdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5400550000000100"
    )
        port map (
      I0 => \tx_state__0\(2),
      I1 => \tx_state__0\(0),
      I2 => \tx_state__0\(1),
      I3 => aresetn,
      I4 => \m_axis_tdata[7]_i_3_n_0\,
      I5 => m_axis_tready,
      O => m_axis_tdata0
    );
\m_axis_tdata[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \tx_state__0\(0),
      I1 => \tx_state__0\(1),
      O => \m_axis_tdata[7]_i_2_n_0\
    );
\m_axis_tdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \m_axis_tdata[7]_i_4_n_0\,
      I1 => \m_axis_tdata[7]_i_5_n_0\,
      I2 => \m_axis_tdata[7]_i_6_n_0\,
      I3 => \m_axis_tdata[7]_i_7_n_0\,
      I4 => \m_axis_tdata[7]_i_8_n_0\,
      I5 => \counter_delay_reg_n_0_[0]\,
      O => \m_axis_tdata[7]_i_3_n_0\
    );
\m_axis_tdata[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \counter_delay_reg_n_0_[6]\,
      I1 => \counter_delay_reg_n_0_[7]\,
      I2 => \counter_delay_reg_n_0_[9]\,
      I3 => \counter_delay_reg_n_0_[8]\,
      O => \m_axis_tdata[7]_i_4_n_0\
    );
\m_axis_tdata[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \counter_delay_reg_n_0_[11]\,
      I1 => \counter_delay_reg_n_0_[10]\,
      I2 => \counter_delay_reg_n_0_[13]\,
      I3 => \counter_delay_reg_n_0_[12]\,
      O => \m_axis_tdata[7]_i_5_n_0\
    );
\m_axis_tdata[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \counter_delay_reg_n_0_[19]\,
      I1 => \counter_delay_reg_n_0_[18]\,
      I2 => \counter_delay_reg_n_0_[1]\,
      O => \m_axis_tdata[7]_i_6_n_0\
    );
\m_axis_tdata[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \counter_delay_reg_n_0_[14]\,
      I1 => \counter_delay_reg_n_0_[15]\,
      I2 => \counter_delay_reg_n_0_[17]\,
      I3 => \counter_delay_reg_n_0_[16]\,
      O => \m_axis_tdata[7]_i_7_n_0\
    );
\m_axis_tdata[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \counter_delay_reg_n_0_[3]\,
      I1 => \counter_delay_reg_n_0_[2]\,
      I2 => \counter_delay_reg_n_0_[5]\,
      I3 => \counter_delay_reg_n_0_[4]\,
      O => \m_axis_tdata[7]_i_8_n_0\
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
m_axis_tvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \tx_state__0\(2),
      I1 => \tx_state__0\(0),
      I2 => \tx_state__0\(1),
      O => m_axis_tvalid
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \rx_state__0\(1),
      I1 => \rx_state__0\(0),
      I2 => \rx_state__0\(2),
      O => s_axis_tready
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
    m_axis_tready : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tready : out STD_LOGIC;
    jstk_x : in STD_LOGIC_VECTOR ( 9 downto 0 );
    jstk_y : in STD_LOGIC_VECTOR ( 9 downto 0 );
    btn_jstk : in STD_LOGIC;
    btn_trigger : in STD_LOGIC;
    led_r : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led_g : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led_b : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "interface_bd_jstk_uart_bridge_0_0,jstk_uart_bridge,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "jstk_uart_bridge,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_parameter of m_axis_tvalid : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute x_interface_parameter of s_axis_tvalid : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_jstk_uart_bridge
     port map (
      aclk => aclk,
      aresetn => aresetn,
      btn_jstk => btn_jstk,
      btn_trigger => btn_trigger,
      jstk_x(6 downto 0) => jstk_x(9 downto 3),
      jstk_y(6 downto 0) => jstk_y(9 downto 3),
      led_b(7 downto 0) => led_b(7 downto 0),
      led_g(7 downto 0) => led_g(7 downto 0),
      led_r(7 downto 0) => led_r(7 downto 0),
      m_axis_tdata(7 downto 0) => m_axis_tdata(7 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(7 downto 0) => s_axis_tdata(7 downto 0),
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;

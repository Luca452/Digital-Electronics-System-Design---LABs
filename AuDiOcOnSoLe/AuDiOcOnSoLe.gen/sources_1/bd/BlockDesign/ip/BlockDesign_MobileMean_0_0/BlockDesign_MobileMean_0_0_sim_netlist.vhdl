-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Mon May 22 23:55:52 2023
-- Host        : DESKTOP-JKUPK39 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/daido/Desktop/Polimi/Anno
--               4/DESD/Git/KittCarPWM/AuDiOcOnSoLe/AuDiOcOnSoLe.gen/sources_1/bd/BlockDesign/ip/BlockDesign_MobileMean_0_0/BlockDesign_MobileMean_0_0_sim_netlist.vhdl}
-- Design      : BlockDesign_MobileMean_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BlockDesign_MobileMean_0_0_MobileMean is
  port (
    S_AXIS_TREADY : out STD_LOGIC;
    M_AXIS_TDATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M_AXIS_TLAST : out STD_LOGIC;
    M_AXIS_TVALID : out STD_LOGIC;
    S_AXIS_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    aclk : in STD_LOGIC;
    S_AXIS_TLAST : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    M_AXIS_TREADY : in STD_LOGIC;
    filter_enable : in STD_LOGIC;
    S_AXIS_TVALID : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of BlockDesign_MobileMean_0_0_MobileMean : entity is "MobileMean";
end BlockDesign_MobileMean_0_0_MobileMean;

architecture STRUCTURE of BlockDesign_MobileMean_0_0_MobileMean is
  signal DATA_R : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal M_AXIS_TDATA_int : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal M_AXIS_TDATA_int0 : STD_LOGIC;
  signal \M_AXIS_TDATA_int_reg_n_0_[0]\ : STD_LOGIC;
  signal \M_AXIS_TDATA_int_reg_n_0_[10]\ : STD_LOGIC;
  signal \M_AXIS_TDATA_int_reg_n_0_[11]\ : STD_LOGIC;
  signal \M_AXIS_TDATA_int_reg_n_0_[12]\ : STD_LOGIC;
  signal \M_AXIS_TDATA_int_reg_n_0_[13]\ : STD_LOGIC;
  signal \M_AXIS_TDATA_int_reg_n_0_[14]\ : STD_LOGIC;
  signal \M_AXIS_TDATA_int_reg_n_0_[15]\ : STD_LOGIC;
  signal \M_AXIS_TDATA_int_reg_n_0_[16]\ : STD_LOGIC;
  signal \M_AXIS_TDATA_int_reg_n_0_[17]\ : STD_LOGIC;
  signal \M_AXIS_TDATA_int_reg_n_0_[18]\ : STD_LOGIC;
  signal \M_AXIS_TDATA_int_reg_n_0_[19]\ : STD_LOGIC;
  signal \M_AXIS_TDATA_int_reg_n_0_[1]\ : STD_LOGIC;
  signal \M_AXIS_TDATA_int_reg_n_0_[20]\ : STD_LOGIC;
  signal \M_AXIS_TDATA_int_reg_n_0_[21]\ : STD_LOGIC;
  signal \M_AXIS_TDATA_int_reg_n_0_[22]\ : STD_LOGIC;
  signal \M_AXIS_TDATA_int_reg_n_0_[23]\ : STD_LOGIC;
  signal \M_AXIS_TDATA_int_reg_n_0_[2]\ : STD_LOGIC;
  signal \M_AXIS_TDATA_int_reg_n_0_[3]\ : STD_LOGIC;
  signal \M_AXIS_TDATA_int_reg_n_0_[4]\ : STD_LOGIC;
  signal \M_AXIS_TDATA_int_reg_n_0_[5]\ : STD_LOGIC;
  signal \M_AXIS_TDATA_int_reg_n_0_[6]\ : STD_LOGIC;
  signal \M_AXIS_TDATA_int_reg_n_0_[7]\ : STD_LOGIC;
  signal \M_AXIS_TDATA_int_reg_n_0_[8]\ : STD_LOGIC;
  signal \M_AXIS_TDATA_int_reg_n_0_[9]\ : STD_LOGIC;
  signal M_AXIS_TLAST_i_1_n_0 : STD_LOGIC;
  signal M_AXIS_TLAST_int_i_1_n_0 : STD_LOGIC;
  signal M_AXIS_TLAST_int_reg_n_0 : STD_LOGIC;
  signal M_AXIS_TVALID_i_1_n_0 : STD_LOGIC;
  signal M_AXIS_TVALID_int_i_1_n_0 : STD_LOGIC;
  signal M_AXIS_TVALID_int_i_2_n_0 : STD_LOGIC;
  signal M_AXIS_TVALID_int_reg_n_0 : STD_LOGIC;
  signal SUM_TOTAL_L : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal \SUM_TOTAL_L0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__0_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__0_n_1\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__0_n_2\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__0_n_3\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__0_n_4\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__0_n_5\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__0_n_6\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__0_n_7\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__1_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__1_n_1\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__1_n_2\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__1_n_3\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__1_n_4\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__1_n_5\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__1_n_6\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__1_n_7\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__2_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__2_n_1\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__2_n_2\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__2_n_3\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__2_n_4\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__2_n_5\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__2_n_6\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__2_n_7\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__3_i_6_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__3_i_7_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__3_i_8_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__3_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__3_n_1\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__3_n_2\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__3_n_3\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__3_n_4\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__3_n_5\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__3_n_6\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__3_n_7\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__4_i_5_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__4_i_6_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__4_i_7_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__4_i_8_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__4_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__4_n_1\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__4_n_2\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__4_n_3\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__4_n_4\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__4_n_5\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__4_n_6\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__4_n_7\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__5_i_5_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__5_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__5_n_1\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__5_n_2\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__5_n_3\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__5_n_4\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__5_n_5\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__5_n_6\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__5_n_7\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_L0_carry__6_n_7\ : STD_LOGIC;
  signal SUM_TOTAL_L0_carry_i_1_n_0 : STD_LOGIC;
  signal SUM_TOTAL_L0_carry_i_2_n_0 : STD_LOGIC;
  signal SUM_TOTAL_L0_carry_i_3_n_0 : STD_LOGIC;
  signal SUM_TOTAL_L0_carry_i_4_n_0 : STD_LOGIC;
  signal SUM_TOTAL_L0_carry_i_5_n_0 : STD_LOGIC;
  signal SUM_TOTAL_L0_carry_i_6_n_0 : STD_LOGIC;
  signal SUM_TOTAL_L0_carry_i_7_n_0 : STD_LOGIC;
  signal SUM_TOTAL_L0_carry_i_8_n_0 : STD_LOGIC;
  signal SUM_TOTAL_L0_carry_n_0 : STD_LOGIC;
  signal SUM_TOTAL_L0_carry_n_1 : STD_LOGIC;
  signal SUM_TOTAL_L0_carry_n_2 : STD_LOGIC;
  signal SUM_TOTAL_L0_carry_n_3 : STD_LOGIC;
  signal SUM_TOTAL_L0_carry_n_4 : STD_LOGIC;
  signal SUM_TOTAL_L0_carry_n_5 : STD_LOGIC;
  signal SUM_TOTAL_L0_carry_n_6 : STD_LOGIC;
  signal SUM_TOTAL_L0_carry_n_7 : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__0_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__0_n_1\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__0_n_2\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__0_n_3\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__0_n_4\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__0_n_5\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__0_n_6\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__0_n_7\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__1_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__1_n_1\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__1_n_2\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__1_n_3\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__1_n_4\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__1_n_5\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__1_n_6\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__1_n_7\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__2_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__2_n_1\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__2_n_2\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__2_n_3\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__2_n_4\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__2_n_5\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__2_n_6\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__2_n_7\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__3_i_6_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__3_i_7_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__3_i_8_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__3_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__3_n_1\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__3_n_2\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__3_n_3\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__3_n_4\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__3_n_5\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__3_n_6\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__3_n_7\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__4_i_5_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__4_i_6_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__4_i_7_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__4_i_8_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__4_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__4_n_1\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__4_n_2\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__4_n_3\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__4_n_4\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__4_n_5\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__4_n_6\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__4_n_7\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__5_i_5_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__5_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__5_n_1\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__5_n_2\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__5_n_3\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__5_n_4\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__5_n_5\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__5_n_6\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__5_n_7\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \SUM_TOTAL_R0_carry__6_n_7\ : STD_LOGIC;
  signal SUM_TOTAL_R0_carry_i_1_n_0 : STD_LOGIC;
  signal SUM_TOTAL_R0_carry_i_2_n_0 : STD_LOGIC;
  signal SUM_TOTAL_R0_carry_i_3_n_0 : STD_LOGIC;
  signal SUM_TOTAL_R0_carry_i_4_n_0 : STD_LOGIC;
  signal SUM_TOTAL_R0_carry_i_5_n_0 : STD_LOGIC;
  signal SUM_TOTAL_R0_carry_i_6_n_0 : STD_LOGIC;
  signal SUM_TOTAL_R0_carry_i_7_n_0 : STD_LOGIC;
  signal SUM_TOTAL_R0_carry_i_8_n_0 : STD_LOGIC;
  signal SUM_TOTAL_R0_carry_n_0 : STD_LOGIC;
  signal SUM_TOTAL_R0_carry_n_1 : STD_LOGIC;
  signal SUM_TOTAL_R0_carry_n_2 : STD_LOGIC;
  signal SUM_TOTAL_R0_carry_n_3 : STD_LOGIC;
  signal SUM_TOTAL_R0_carry_n_4 : STD_LOGIC;
  signal SUM_TOTAL_R0_carry_n_5 : STD_LOGIC;
  signal SUM_TOTAL_R0_carry_n_6 : STD_LOGIC;
  signal SUM_TOTAL_R0_carry_n_7 : STD_LOGIC;
  signal \SUM_TOTAL_R_reg_n_0_[0]\ : STD_LOGIC;
  signal \SUM_TOTAL_R_reg_n_0_[1]\ : STD_LOGIC;
  signal \SUM_TOTAL_R_reg_n_0_[2]\ : STD_LOGIC;
  signal \SUM_TOTAL_R_reg_n_0_[3]\ : STD_LOGIC;
  signal \SUM_TOTAL_R_reg_n_0_[4]\ : STD_LOGIC;
  signal S_AXIS_TREADY_i_1_n_0 : STD_LOGIC;
  signal S_AXIS_TREADY_int : STD_LOGIC;
  signal S_AXIS_TREADY_int_i_1_n_0 : STD_LOGIC;
  signal S_AXIS_TREADY_int_i_3_n_0 : STD_LOGIC;
  signal S_AXIS_TREADY_int_reg_n_0 : STD_LOGIC;
  signal \mem_L_reg[0]0\ : STD_LOGIC;
  signal \mem_L_reg[30][0]_srl31_n_0\ : STD_LOGIC;
  signal \mem_L_reg[30][10]_srl31_n_0\ : STD_LOGIC;
  signal \mem_L_reg[30][11]_srl31_n_0\ : STD_LOGIC;
  signal \mem_L_reg[30][12]_srl31_n_0\ : STD_LOGIC;
  signal \mem_L_reg[30][13]_srl31_n_0\ : STD_LOGIC;
  signal \mem_L_reg[30][14]_srl31_n_0\ : STD_LOGIC;
  signal \mem_L_reg[30][15]_srl31_n_0\ : STD_LOGIC;
  signal \mem_L_reg[30][16]_srl31_n_0\ : STD_LOGIC;
  signal \mem_L_reg[30][17]_srl31_n_0\ : STD_LOGIC;
  signal \mem_L_reg[30][18]_srl31_n_0\ : STD_LOGIC;
  signal \mem_L_reg[30][19]_srl31_n_0\ : STD_LOGIC;
  signal \mem_L_reg[30][1]_srl31_n_0\ : STD_LOGIC;
  signal \mem_L_reg[30][20]_srl31_n_0\ : STD_LOGIC;
  signal \mem_L_reg[30][21]_srl31_n_0\ : STD_LOGIC;
  signal \mem_L_reg[30][22]_srl31_n_0\ : STD_LOGIC;
  signal \mem_L_reg[30][23]_srl31_n_0\ : STD_LOGIC;
  signal \mem_L_reg[30][2]_srl31_n_0\ : STD_LOGIC;
  signal \mem_L_reg[30][3]_srl31_n_0\ : STD_LOGIC;
  signal \mem_L_reg[30][4]_srl31_n_0\ : STD_LOGIC;
  signal \mem_L_reg[30][5]_srl31_n_0\ : STD_LOGIC;
  signal \mem_L_reg[30][6]_srl31_n_0\ : STD_LOGIC;
  signal \mem_L_reg[30][7]_srl31_n_0\ : STD_LOGIC;
  signal \mem_L_reg[30][8]_srl31_n_0\ : STD_LOGIC;
  signal \mem_L_reg[30][9]_srl31_n_0\ : STD_LOGIC;
  signal \mem_L_reg[31]\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \mem_R_reg[0]0\ : STD_LOGIC;
  signal \mem_R_reg[30][0]_srl31_n_0\ : STD_LOGIC;
  signal \mem_R_reg[30][10]_srl31_n_0\ : STD_LOGIC;
  signal \mem_R_reg[30][11]_srl31_n_0\ : STD_LOGIC;
  signal \mem_R_reg[30][12]_srl31_n_0\ : STD_LOGIC;
  signal \mem_R_reg[30][13]_srl31_n_0\ : STD_LOGIC;
  signal \mem_R_reg[30][14]_srl31_n_0\ : STD_LOGIC;
  signal \mem_R_reg[30][15]_srl31_n_0\ : STD_LOGIC;
  signal \mem_R_reg[30][16]_srl31_n_0\ : STD_LOGIC;
  signal \mem_R_reg[30][17]_srl31_n_0\ : STD_LOGIC;
  signal \mem_R_reg[30][18]_srl31_n_0\ : STD_LOGIC;
  signal \mem_R_reg[30][19]_srl31_n_0\ : STD_LOGIC;
  signal \mem_R_reg[30][1]_srl31_n_0\ : STD_LOGIC;
  signal \mem_R_reg[30][20]_srl31_n_0\ : STD_LOGIC;
  signal \mem_R_reg[30][21]_srl31_n_0\ : STD_LOGIC;
  signal \mem_R_reg[30][22]_srl31_n_0\ : STD_LOGIC;
  signal \mem_R_reg[30][23]_srl31_n_0\ : STD_LOGIC;
  signal \mem_R_reg[30][2]_srl31_n_0\ : STD_LOGIC;
  signal \mem_R_reg[30][3]_srl31_n_0\ : STD_LOGIC;
  signal \mem_R_reg[30][4]_srl31_n_0\ : STD_LOGIC;
  signal \mem_R_reg[30][5]_srl31_n_0\ : STD_LOGIC;
  signal \mem_R_reg[30][6]_srl31_n_0\ : STD_LOGIC;
  signal \mem_R_reg[30][7]_srl31_n_0\ : STD_LOGIC;
  signal \mem_R_reg[30][8]_srl31_n_0\ : STD_LOGIC;
  signal \mem_R_reg[30][9]_srl31_n_0\ : STD_LOGIC;
  signal \mem_R_reg[31]\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal p_0_in1_in : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_SUM_TOTAL_L0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_SUM_TOTAL_L0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_SUM_TOTAL_R0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_SUM_TOTAL_R0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_mem_L_reg[30][0]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_L_reg[30][10]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_L_reg[30][11]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_L_reg[30][12]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_L_reg[30][13]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_L_reg[30][14]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_L_reg[30][15]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_L_reg[30][16]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_L_reg[30][17]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_L_reg[30][18]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_L_reg[30][19]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_L_reg[30][1]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_L_reg[30][20]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_L_reg[30][21]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_L_reg[30][22]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_L_reg[30][23]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_L_reg[30][2]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_L_reg[30][3]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_L_reg[30][4]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_L_reg[30][5]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_L_reg[30][6]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_L_reg[30][7]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_L_reg[30][8]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_L_reg[30][9]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_R_reg[30][0]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_R_reg[30][10]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_R_reg[30][11]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_R_reg[30][12]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_R_reg[30][13]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_R_reg[30][14]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_R_reg[30][15]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_R_reg[30][16]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_R_reg[30][17]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_R_reg[30][18]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_R_reg[30][19]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_R_reg[30][1]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_R_reg[30][20]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_R_reg[30][21]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_R_reg[30][22]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_R_reg[30][23]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_R_reg[30][2]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_R_reg[30][3]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_R_reg[30][4]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_R_reg[30][5]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_R_reg[30][6]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_R_reg[30][7]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_R_reg[30][8]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_R_reg[30][9]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_2\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "receive_r:01,send_l:10,receive_l:00,send_r:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "receive_r:01,send_l:10,receive_l:00,send_r:11";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[10]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[11]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[12]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[13]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[14]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[15]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[16]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[17]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[18]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[19]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[20]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[21]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[22]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[23]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[3]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[4]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[5]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[6]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[7]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[8]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[9]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA_int[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA_int[10]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA_int[11]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA_int[12]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA_int[13]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA_int[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA_int[15]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA_int[16]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA_int[17]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA_int[18]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA_int[19]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA_int[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA_int[20]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA_int[21]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA_int[22]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA_int[23]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA_int[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA_int[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA_int[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA_int[5]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA_int[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA_int[7]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA_int[8]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA_int[9]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of M_AXIS_TLAST_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of M_AXIS_TVALID_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of M_AXIS_TVALID_int_i_2 : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of SUM_TOTAL_L0_carry : label is 35;
  attribute ADDER_THRESHOLD of \SUM_TOTAL_L0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \SUM_TOTAL_L0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \SUM_TOTAL_L0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \SUM_TOTAL_L0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \SUM_TOTAL_L0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \SUM_TOTAL_L0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \SUM_TOTAL_L0_carry__6\ : label is 35;
  attribute ADDER_THRESHOLD of SUM_TOTAL_R0_carry : label is 35;
  attribute ADDER_THRESHOLD of \SUM_TOTAL_R0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \SUM_TOTAL_R0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \SUM_TOTAL_R0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \SUM_TOTAL_R0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \SUM_TOTAL_R0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \SUM_TOTAL_R0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \SUM_TOTAL_R0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of S_AXIS_TREADY_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of S_AXIS_TREADY_int_i_3 : label is "soft_lutpair1";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \mem_L_reg[30][0]_srl31\ : label is "\U0/mem_L_reg[30] ";
  attribute srl_name : string;
  attribute srl_name of \mem_L_reg[30][0]_srl31\ : label is "\U0/mem_L_reg[30][0]_srl31 ";
  attribute srl_bus_name of \mem_L_reg[30][10]_srl31\ : label is "\U0/mem_L_reg[30] ";
  attribute srl_name of \mem_L_reg[30][10]_srl31\ : label is "\U0/mem_L_reg[30][10]_srl31 ";
  attribute srl_bus_name of \mem_L_reg[30][11]_srl31\ : label is "\U0/mem_L_reg[30] ";
  attribute srl_name of \mem_L_reg[30][11]_srl31\ : label is "\U0/mem_L_reg[30][11]_srl31 ";
  attribute srl_bus_name of \mem_L_reg[30][12]_srl31\ : label is "\U0/mem_L_reg[30] ";
  attribute srl_name of \mem_L_reg[30][12]_srl31\ : label is "\U0/mem_L_reg[30][12]_srl31 ";
  attribute srl_bus_name of \mem_L_reg[30][13]_srl31\ : label is "\U0/mem_L_reg[30] ";
  attribute srl_name of \mem_L_reg[30][13]_srl31\ : label is "\U0/mem_L_reg[30][13]_srl31 ";
  attribute srl_bus_name of \mem_L_reg[30][14]_srl31\ : label is "\U0/mem_L_reg[30] ";
  attribute srl_name of \mem_L_reg[30][14]_srl31\ : label is "\U0/mem_L_reg[30][14]_srl31 ";
  attribute srl_bus_name of \mem_L_reg[30][15]_srl31\ : label is "\U0/mem_L_reg[30] ";
  attribute srl_name of \mem_L_reg[30][15]_srl31\ : label is "\U0/mem_L_reg[30][15]_srl31 ";
  attribute srl_bus_name of \mem_L_reg[30][16]_srl31\ : label is "\U0/mem_L_reg[30] ";
  attribute srl_name of \mem_L_reg[30][16]_srl31\ : label is "\U0/mem_L_reg[30][16]_srl31 ";
  attribute srl_bus_name of \mem_L_reg[30][17]_srl31\ : label is "\U0/mem_L_reg[30] ";
  attribute srl_name of \mem_L_reg[30][17]_srl31\ : label is "\U0/mem_L_reg[30][17]_srl31 ";
  attribute srl_bus_name of \mem_L_reg[30][18]_srl31\ : label is "\U0/mem_L_reg[30] ";
  attribute srl_name of \mem_L_reg[30][18]_srl31\ : label is "\U0/mem_L_reg[30][18]_srl31 ";
  attribute srl_bus_name of \mem_L_reg[30][19]_srl31\ : label is "\U0/mem_L_reg[30] ";
  attribute srl_name of \mem_L_reg[30][19]_srl31\ : label is "\U0/mem_L_reg[30][19]_srl31 ";
  attribute srl_bus_name of \mem_L_reg[30][1]_srl31\ : label is "\U0/mem_L_reg[30] ";
  attribute srl_name of \mem_L_reg[30][1]_srl31\ : label is "\U0/mem_L_reg[30][1]_srl31 ";
  attribute srl_bus_name of \mem_L_reg[30][20]_srl31\ : label is "\U0/mem_L_reg[30] ";
  attribute srl_name of \mem_L_reg[30][20]_srl31\ : label is "\U0/mem_L_reg[30][20]_srl31 ";
  attribute srl_bus_name of \mem_L_reg[30][21]_srl31\ : label is "\U0/mem_L_reg[30] ";
  attribute srl_name of \mem_L_reg[30][21]_srl31\ : label is "\U0/mem_L_reg[30][21]_srl31 ";
  attribute srl_bus_name of \mem_L_reg[30][22]_srl31\ : label is "\U0/mem_L_reg[30] ";
  attribute srl_name of \mem_L_reg[30][22]_srl31\ : label is "\U0/mem_L_reg[30][22]_srl31 ";
  attribute srl_bus_name of \mem_L_reg[30][23]_srl31\ : label is "\U0/mem_L_reg[30] ";
  attribute srl_name of \mem_L_reg[30][23]_srl31\ : label is "\U0/mem_L_reg[30][23]_srl31 ";
  attribute srl_bus_name of \mem_L_reg[30][2]_srl31\ : label is "\U0/mem_L_reg[30] ";
  attribute srl_name of \mem_L_reg[30][2]_srl31\ : label is "\U0/mem_L_reg[30][2]_srl31 ";
  attribute srl_bus_name of \mem_L_reg[30][3]_srl31\ : label is "\U0/mem_L_reg[30] ";
  attribute srl_name of \mem_L_reg[30][3]_srl31\ : label is "\U0/mem_L_reg[30][3]_srl31 ";
  attribute srl_bus_name of \mem_L_reg[30][4]_srl31\ : label is "\U0/mem_L_reg[30] ";
  attribute srl_name of \mem_L_reg[30][4]_srl31\ : label is "\U0/mem_L_reg[30][4]_srl31 ";
  attribute srl_bus_name of \mem_L_reg[30][5]_srl31\ : label is "\U0/mem_L_reg[30] ";
  attribute srl_name of \mem_L_reg[30][5]_srl31\ : label is "\U0/mem_L_reg[30][5]_srl31 ";
  attribute srl_bus_name of \mem_L_reg[30][6]_srl31\ : label is "\U0/mem_L_reg[30] ";
  attribute srl_name of \mem_L_reg[30][6]_srl31\ : label is "\U0/mem_L_reg[30][6]_srl31 ";
  attribute srl_bus_name of \mem_L_reg[30][7]_srl31\ : label is "\U0/mem_L_reg[30] ";
  attribute srl_name of \mem_L_reg[30][7]_srl31\ : label is "\U0/mem_L_reg[30][7]_srl31 ";
  attribute srl_bus_name of \mem_L_reg[30][8]_srl31\ : label is "\U0/mem_L_reg[30] ";
  attribute srl_name of \mem_L_reg[30][8]_srl31\ : label is "\U0/mem_L_reg[30][8]_srl31 ";
  attribute srl_bus_name of \mem_L_reg[30][9]_srl31\ : label is "\U0/mem_L_reg[30] ";
  attribute srl_name of \mem_L_reg[30][9]_srl31\ : label is "\U0/mem_L_reg[30][9]_srl31 ";
  attribute srl_bus_name of \mem_R_reg[30][0]_srl31\ : label is "\U0/mem_R_reg[30] ";
  attribute srl_name of \mem_R_reg[30][0]_srl31\ : label is "\U0/mem_R_reg[30][0]_srl31 ";
  attribute srl_bus_name of \mem_R_reg[30][10]_srl31\ : label is "\U0/mem_R_reg[30] ";
  attribute srl_name of \mem_R_reg[30][10]_srl31\ : label is "\U0/mem_R_reg[30][10]_srl31 ";
  attribute srl_bus_name of \mem_R_reg[30][11]_srl31\ : label is "\U0/mem_R_reg[30] ";
  attribute srl_name of \mem_R_reg[30][11]_srl31\ : label is "\U0/mem_R_reg[30][11]_srl31 ";
  attribute srl_bus_name of \mem_R_reg[30][12]_srl31\ : label is "\U0/mem_R_reg[30] ";
  attribute srl_name of \mem_R_reg[30][12]_srl31\ : label is "\U0/mem_R_reg[30][12]_srl31 ";
  attribute srl_bus_name of \mem_R_reg[30][13]_srl31\ : label is "\U0/mem_R_reg[30] ";
  attribute srl_name of \mem_R_reg[30][13]_srl31\ : label is "\U0/mem_R_reg[30][13]_srl31 ";
  attribute srl_bus_name of \mem_R_reg[30][14]_srl31\ : label is "\U0/mem_R_reg[30] ";
  attribute srl_name of \mem_R_reg[30][14]_srl31\ : label is "\U0/mem_R_reg[30][14]_srl31 ";
  attribute srl_bus_name of \mem_R_reg[30][15]_srl31\ : label is "\U0/mem_R_reg[30] ";
  attribute srl_name of \mem_R_reg[30][15]_srl31\ : label is "\U0/mem_R_reg[30][15]_srl31 ";
  attribute srl_bus_name of \mem_R_reg[30][16]_srl31\ : label is "\U0/mem_R_reg[30] ";
  attribute srl_name of \mem_R_reg[30][16]_srl31\ : label is "\U0/mem_R_reg[30][16]_srl31 ";
  attribute srl_bus_name of \mem_R_reg[30][17]_srl31\ : label is "\U0/mem_R_reg[30] ";
  attribute srl_name of \mem_R_reg[30][17]_srl31\ : label is "\U0/mem_R_reg[30][17]_srl31 ";
  attribute srl_bus_name of \mem_R_reg[30][18]_srl31\ : label is "\U0/mem_R_reg[30] ";
  attribute srl_name of \mem_R_reg[30][18]_srl31\ : label is "\U0/mem_R_reg[30][18]_srl31 ";
  attribute srl_bus_name of \mem_R_reg[30][19]_srl31\ : label is "\U0/mem_R_reg[30] ";
  attribute srl_name of \mem_R_reg[30][19]_srl31\ : label is "\U0/mem_R_reg[30][19]_srl31 ";
  attribute srl_bus_name of \mem_R_reg[30][1]_srl31\ : label is "\U0/mem_R_reg[30] ";
  attribute srl_name of \mem_R_reg[30][1]_srl31\ : label is "\U0/mem_R_reg[30][1]_srl31 ";
  attribute srl_bus_name of \mem_R_reg[30][20]_srl31\ : label is "\U0/mem_R_reg[30] ";
  attribute srl_name of \mem_R_reg[30][20]_srl31\ : label is "\U0/mem_R_reg[30][20]_srl31 ";
  attribute srl_bus_name of \mem_R_reg[30][21]_srl31\ : label is "\U0/mem_R_reg[30] ";
  attribute srl_name of \mem_R_reg[30][21]_srl31\ : label is "\U0/mem_R_reg[30][21]_srl31 ";
  attribute srl_bus_name of \mem_R_reg[30][22]_srl31\ : label is "\U0/mem_R_reg[30] ";
  attribute srl_name of \mem_R_reg[30][22]_srl31\ : label is "\U0/mem_R_reg[30][22]_srl31 ";
  attribute srl_bus_name of \mem_R_reg[30][23]_srl31\ : label is "\U0/mem_R_reg[30] ";
  attribute srl_name of \mem_R_reg[30][23]_srl31\ : label is "\U0/mem_R_reg[30][23]_srl31 ";
  attribute srl_bus_name of \mem_R_reg[30][2]_srl31\ : label is "\U0/mem_R_reg[30] ";
  attribute srl_name of \mem_R_reg[30][2]_srl31\ : label is "\U0/mem_R_reg[30][2]_srl31 ";
  attribute srl_bus_name of \mem_R_reg[30][3]_srl31\ : label is "\U0/mem_R_reg[30] ";
  attribute srl_name of \mem_R_reg[30][3]_srl31\ : label is "\U0/mem_R_reg[30][3]_srl31 ";
  attribute srl_bus_name of \mem_R_reg[30][4]_srl31\ : label is "\U0/mem_R_reg[30] ";
  attribute srl_name of \mem_R_reg[30][4]_srl31\ : label is "\U0/mem_R_reg[30][4]_srl31 ";
  attribute srl_bus_name of \mem_R_reg[30][5]_srl31\ : label is "\U0/mem_R_reg[30] ";
  attribute srl_name of \mem_R_reg[30][5]_srl31\ : label is "\U0/mem_R_reg[30][5]_srl31 ";
  attribute srl_bus_name of \mem_R_reg[30][6]_srl31\ : label is "\U0/mem_R_reg[30] ";
  attribute srl_name of \mem_R_reg[30][6]_srl31\ : label is "\U0/mem_R_reg[30][6]_srl31 ";
  attribute srl_bus_name of \mem_R_reg[30][7]_srl31\ : label is "\U0/mem_R_reg[30] ";
  attribute srl_name of \mem_R_reg[30][7]_srl31\ : label is "\U0/mem_R_reg[30][7]_srl31 ";
  attribute srl_bus_name of \mem_R_reg[30][8]_srl31\ : label is "\U0/mem_R_reg[30] ";
  attribute srl_name of \mem_R_reg[30][8]_srl31\ : label is "\U0/mem_R_reg[30][8]_srl31 ";
  attribute srl_bus_name of \mem_R_reg[30][9]_srl31\ : label is "\U0/mem_R_reg[30] ";
  attribute srl_name of \mem_R_reg[30][9]_srl31\ : label is "\U0/mem_R_reg[30][9]_srl31 ";
begin
\DATA_R_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => p_0_in(0),
      Q => DATA_R(0),
      R => '0'
    );
\DATA_R_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => p_0_in(10),
      Q => DATA_R(10),
      R => '0'
    );
\DATA_R_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => p_0_in(11),
      Q => DATA_R(11),
      R => '0'
    );
\DATA_R_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => p_0_in(12),
      Q => DATA_R(12),
      R => '0'
    );
\DATA_R_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => p_0_in(13),
      Q => DATA_R(13),
      R => '0'
    );
\DATA_R_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => p_0_in(14),
      Q => DATA_R(14),
      R => '0'
    );
\DATA_R_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => p_0_in(15),
      Q => DATA_R(15),
      R => '0'
    );
\DATA_R_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => p_0_in(16),
      Q => DATA_R(16),
      R => '0'
    );
\DATA_R_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => p_0_in(17),
      Q => DATA_R(17),
      R => '0'
    );
\DATA_R_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => p_0_in(18),
      Q => DATA_R(18),
      R => '0'
    );
\DATA_R_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => p_0_in(19),
      Q => DATA_R(19),
      R => '0'
    );
\DATA_R_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => p_0_in(1),
      Q => DATA_R(1),
      R => '0'
    );
\DATA_R_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => p_0_in(20),
      Q => DATA_R(20),
      R => '0'
    );
\DATA_R_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => p_0_in(21),
      Q => DATA_R(21),
      R => '0'
    );
\DATA_R_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => p_0_in(22),
      Q => DATA_R(22),
      R => '0'
    );
\DATA_R_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => p_0_in(23),
      Q => DATA_R(23),
      R => '0'
    );
\DATA_R_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => p_0_in(2),
      Q => DATA_R(2),
      R => '0'
    );
\DATA_R_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => p_0_in(3),
      Q => DATA_R(3),
      R => '0'
    );
\DATA_R_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => p_0_in(4),
      Q => DATA_R(4),
      R => '0'
    );
\DATA_R_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => p_0_in(5),
      Q => DATA_R(5),
      R => '0'
    );
\DATA_R_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => p_0_in(6),
      Q => DATA_R(6),
      R => '0'
    );
\DATA_R_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => p_0_in(7),
      Q => DATA_R(7),
      R => '0'
    );
\DATA_R_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => p_0_in(8),
      Q => DATA_R(8),
      R => '0'
    );
\DATA_R_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => p_0_in(9),
      Q => DATA_R(9),
      R => '0'
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"553A3A3A2A2A3A3A"
    )
        port map (
      I0 => \state__0\(0),
      I1 => S_AXIS_TLAST,
      I2 => \FSM_sequential_state[1]_i_2_n_0\,
      I3 => aresetn,
      I4 => \state__0\(1),
      I5 => M_AXIS_TREADY,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"557F80806F6F8080"
    )
        port map (
      I0 => \state__0\(0),
      I1 => S_AXIS_TLAST,
      I2 => \FSM_sequential_state[1]_i_2_n_0\,
      I3 => aresetn,
      I4 => \state__0\(1),
      I5 => M_AXIS_TREADY,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => filter_enable,
      I2 => S_AXIS_TVALID,
      I3 => aresetn,
      O => \FSM_sequential_state[1]_i_2_n_0\
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
\M_AXIS_TDATA[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \M_AXIS_TDATA_int_reg_n_0_[0]\,
      I1 => filter_enable,
      I2 => S_AXIS_TDATA(0),
      O => p_0_in1_in(0)
    );
\M_AXIS_TDATA[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \M_AXIS_TDATA_int_reg_n_0_[10]\,
      I1 => filter_enable,
      I2 => S_AXIS_TDATA(10),
      O => p_0_in1_in(10)
    );
\M_AXIS_TDATA[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \M_AXIS_TDATA_int_reg_n_0_[11]\,
      I1 => filter_enable,
      I2 => S_AXIS_TDATA(11),
      O => p_0_in1_in(11)
    );
\M_AXIS_TDATA[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \M_AXIS_TDATA_int_reg_n_0_[12]\,
      I1 => filter_enable,
      I2 => S_AXIS_TDATA(12),
      O => p_0_in1_in(12)
    );
\M_AXIS_TDATA[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \M_AXIS_TDATA_int_reg_n_0_[13]\,
      I1 => filter_enable,
      I2 => S_AXIS_TDATA(13),
      O => p_0_in1_in(13)
    );
\M_AXIS_TDATA[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \M_AXIS_TDATA_int_reg_n_0_[14]\,
      I1 => filter_enable,
      I2 => S_AXIS_TDATA(14),
      O => p_0_in1_in(14)
    );
\M_AXIS_TDATA[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \M_AXIS_TDATA_int_reg_n_0_[15]\,
      I1 => filter_enable,
      I2 => S_AXIS_TDATA(15),
      O => p_0_in1_in(15)
    );
\M_AXIS_TDATA[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \M_AXIS_TDATA_int_reg_n_0_[16]\,
      I1 => filter_enable,
      I2 => S_AXIS_TDATA(16),
      O => p_0_in1_in(16)
    );
\M_AXIS_TDATA[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \M_AXIS_TDATA_int_reg_n_0_[17]\,
      I1 => filter_enable,
      I2 => S_AXIS_TDATA(17),
      O => p_0_in1_in(17)
    );
\M_AXIS_TDATA[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \M_AXIS_TDATA_int_reg_n_0_[18]\,
      I1 => filter_enable,
      I2 => S_AXIS_TDATA(18),
      O => p_0_in1_in(18)
    );
\M_AXIS_TDATA[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \M_AXIS_TDATA_int_reg_n_0_[19]\,
      I1 => filter_enable,
      I2 => S_AXIS_TDATA(19),
      O => p_0_in1_in(19)
    );
\M_AXIS_TDATA[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \M_AXIS_TDATA_int_reg_n_0_[1]\,
      I1 => filter_enable,
      I2 => S_AXIS_TDATA(1),
      O => p_0_in1_in(1)
    );
\M_AXIS_TDATA[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \M_AXIS_TDATA_int_reg_n_0_[20]\,
      I1 => filter_enable,
      I2 => S_AXIS_TDATA(20),
      O => p_0_in1_in(20)
    );
\M_AXIS_TDATA[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \M_AXIS_TDATA_int_reg_n_0_[21]\,
      I1 => filter_enable,
      I2 => S_AXIS_TDATA(21),
      O => p_0_in1_in(21)
    );
\M_AXIS_TDATA[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \M_AXIS_TDATA_int_reg_n_0_[22]\,
      I1 => filter_enable,
      I2 => S_AXIS_TDATA(22),
      O => p_0_in1_in(22)
    );
\M_AXIS_TDATA[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \M_AXIS_TDATA_int_reg_n_0_[23]\,
      I1 => filter_enable,
      I2 => S_AXIS_TDATA(23),
      O => p_0_in1_in(23)
    );
\M_AXIS_TDATA[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \M_AXIS_TDATA_int_reg_n_0_[2]\,
      I1 => filter_enable,
      I2 => S_AXIS_TDATA(2),
      O => p_0_in1_in(2)
    );
\M_AXIS_TDATA[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \M_AXIS_TDATA_int_reg_n_0_[3]\,
      I1 => filter_enable,
      I2 => S_AXIS_TDATA(3),
      O => p_0_in1_in(3)
    );
\M_AXIS_TDATA[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \M_AXIS_TDATA_int_reg_n_0_[4]\,
      I1 => filter_enable,
      I2 => S_AXIS_TDATA(4),
      O => p_0_in1_in(4)
    );
\M_AXIS_TDATA[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \M_AXIS_TDATA_int_reg_n_0_[5]\,
      I1 => filter_enable,
      I2 => S_AXIS_TDATA(5),
      O => p_0_in1_in(5)
    );
\M_AXIS_TDATA[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \M_AXIS_TDATA_int_reg_n_0_[6]\,
      I1 => filter_enable,
      I2 => S_AXIS_TDATA(6),
      O => p_0_in1_in(6)
    );
\M_AXIS_TDATA[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \M_AXIS_TDATA_int_reg_n_0_[7]\,
      I1 => filter_enable,
      I2 => S_AXIS_TDATA(7),
      O => p_0_in1_in(7)
    );
\M_AXIS_TDATA[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \M_AXIS_TDATA_int_reg_n_0_[8]\,
      I1 => filter_enable,
      I2 => S_AXIS_TDATA(8),
      O => p_0_in1_in(8)
    );
\M_AXIS_TDATA[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \M_AXIS_TDATA_int_reg_n_0_[9]\,
      I1 => filter_enable,
      I2 => S_AXIS_TDATA(9),
      O => p_0_in1_in(9)
    );
\M_AXIS_TDATA_int[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DATA_R(0),
      I1 => \state__0\(1),
      I2 => SUM_TOTAL_L(5),
      O => M_AXIS_TDATA_int(0)
    );
\M_AXIS_TDATA_int[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DATA_R(10),
      I1 => \state__0\(1),
      I2 => SUM_TOTAL_L(15),
      O => M_AXIS_TDATA_int(10)
    );
\M_AXIS_TDATA_int[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DATA_R(11),
      I1 => \state__0\(1),
      I2 => SUM_TOTAL_L(16),
      O => M_AXIS_TDATA_int(11)
    );
\M_AXIS_TDATA_int[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DATA_R(12),
      I1 => \state__0\(1),
      I2 => SUM_TOTAL_L(17),
      O => M_AXIS_TDATA_int(12)
    );
\M_AXIS_TDATA_int[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DATA_R(13),
      I1 => \state__0\(1),
      I2 => SUM_TOTAL_L(18),
      O => M_AXIS_TDATA_int(13)
    );
\M_AXIS_TDATA_int[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DATA_R(14),
      I1 => \state__0\(1),
      I2 => SUM_TOTAL_L(19),
      O => M_AXIS_TDATA_int(14)
    );
\M_AXIS_TDATA_int[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DATA_R(15),
      I1 => \state__0\(1),
      I2 => SUM_TOTAL_L(20),
      O => M_AXIS_TDATA_int(15)
    );
\M_AXIS_TDATA_int[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DATA_R(16),
      I1 => \state__0\(1),
      I2 => SUM_TOTAL_L(21),
      O => M_AXIS_TDATA_int(16)
    );
\M_AXIS_TDATA_int[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DATA_R(17),
      I1 => \state__0\(1),
      I2 => SUM_TOTAL_L(22),
      O => M_AXIS_TDATA_int(17)
    );
\M_AXIS_TDATA_int[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DATA_R(18),
      I1 => \state__0\(1),
      I2 => SUM_TOTAL_L(23),
      O => M_AXIS_TDATA_int(18)
    );
\M_AXIS_TDATA_int[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DATA_R(19),
      I1 => \state__0\(1),
      I2 => SUM_TOTAL_L(24),
      O => M_AXIS_TDATA_int(19)
    );
\M_AXIS_TDATA_int[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DATA_R(1),
      I1 => \state__0\(1),
      I2 => SUM_TOTAL_L(6),
      O => M_AXIS_TDATA_int(1)
    );
\M_AXIS_TDATA_int[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DATA_R(20),
      I1 => \state__0\(1),
      I2 => SUM_TOTAL_L(25),
      O => M_AXIS_TDATA_int(20)
    );
\M_AXIS_TDATA_int[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DATA_R(21),
      I1 => \state__0\(1),
      I2 => SUM_TOTAL_L(26),
      O => M_AXIS_TDATA_int(21)
    );
\M_AXIS_TDATA_int[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DATA_R(22),
      I1 => \state__0\(1),
      I2 => SUM_TOTAL_L(27),
      O => M_AXIS_TDATA_int(22)
    );
\M_AXIS_TDATA_int[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4000"
    )
        port map (
      I0 => \state__0\(0),
      I1 => M_AXIS_TREADY,
      I2 => \state__0\(1),
      I3 => aresetn,
      I4 => \mem_L_reg[0]0\,
      O => M_AXIS_TDATA_int0
    );
\M_AXIS_TDATA_int[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DATA_R(23),
      I1 => \state__0\(1),
      I2 => SUM_TOTAL_L(28),
      O => M_AXIS_TDATA_int(23)
    );
\M_AXIS_TDATA_int[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DATA_R(2),
      I1 => \state__0\(1),
      I2 => SUM_TOTAL_L(7),
      O => M_AXIS_TDATA_int(2)
    );
\M_AXIS_TDATA_int[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DATA_R(3),
      I1 => \state__0\(1),
      I2 => SUM_TOTAL_L(8),
      O => M_AXIS_TDATA_int(3)
    );
\M_AXIS_TDATA_int[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DATA_R(4),
      I1 => \state__0\(1),
      I2 => SUM_TOTAL_L(9),
      O => M_AXIS_TDATA_int(4)
    );
\M_AXIS_TDATA_int[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DATA_R(5),
      I1 => \state__0\(1),
      I2 => SUM_TOTAL_L(10),
      O => M_AXIS_TDATA_int(5)
    );
\M_AXIS_TDATA_int[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DATA_R(6),
      I1 => \state__0\(1),
      I2 => SUM_TOTAL_L(11),
      O => M_AXIS_TDATA_int(6)
    );
\M_AXIS_TDATA_int[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DATA_R(7),
      I1 => \state__0\(1),
      I2 => SUM_TOTAL_L(12),
      O => M_AXIS_TDATA_int(7)
    );
\M_AXIS_TDATA_int[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DATA_R(8),
      I1 => \state__0\(1),
      I2 => SUM_TOTAL_L(13),
      O => M_AXIS_TDATA_int(8)
    );
\M_AXIS_TDATA_int[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DATA_R(9),
      I1 => \state__0\(1),
      I2 => SUM_TOTAL_L(14),
      O => M_AXIS_TDATA_int(9)
    );
\M_AXIS_TDATA_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA_int0,
      D => M_AXIS_TDATA_int(0),
      Q => \M_AXIS_TDATA_int_reg_n_0_[0]\,
      R => '0'
    );
\M_AXIS_TDATA_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA_int0,
      D => M_AXIS_TDATA_int(10),
      Q => \M_AXIS_TDATA_int_reg_n_0_[10]\,
      R => '0'
    );
\M_AXIS_TDATA_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA_int0,
      D => M_AXIS_TDATA_int(11),
      Q => \M_AXIS_TDATA_int_reg_n_0_[11]\,
      R => '0'
    );
\M_AXIS_TDATA_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA_int0,
      D => M_AXIS_TDATA_int(12),
      Q => \M_AXIS_TDATA_int_reg_n_0_[12]\,
      R => '0'
    );
\M_AXIS_TDATA_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA_int0,
      D => M_AXIS_TDATA_int(13),
      Q => \M_AXIS_TDATA_int_reg_n_0_[13]\,
      R => '0'
    );
\M_AXIS_TDATA_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA_int0,
      D => M_AXIS_TDATA_int(14),
      Q => \M_AXIS_TDATA_int_reg_n_0_[14]\,
      R => '0'
    );
\M_AXIS_TDATA_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA_int0,
      D => M_AXIS_TDATA_int(15),
      Q => \M_AXIS_TDATA_int_reg_n_0_[15]\,
      R => '0'
    );
\M_AXIS_TDATA_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA_int0,
      D => M_AXIS_TDATA_int(16),
      Q => \M_AXIS_TDATA_int_reg_n_0_[16]\,
      R => '0'
    );
\M_AXIS_TDATA_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA_int0,
      D => M_AXIS_TDATA_int(17),
      Q => \M_AXIS_TDATA_int_reg_n_0_[17]\,
      R => '0'
    );
\M_AXIS_TDATA_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA_int0,
      D => M_AXIS_TDATA_int(18),
      Q => \M_AXIS_TDATA_int_reg_n_0_[18]\,
      R => '0'
    );
\M_AXIS_TDATA_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA_int0,
      D => M_AXIS_TDATA_int(19),
      Q => \M_AXIS_TDATA_int_reg_n_0_[19]\,
      R => '0'
    );
\M_AXIS_TDATA_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA_int0,
      D => M_AXIS_TDATA_int(1),
      Q => \M_AXIS_TDATA_int_reg_n_0_[1]\,
      R => '0'
    );
\M_AXIS_TDATA_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA_int0,
      D => M_AXIS_TDATA_int(20),
      Q => \M_AXIS_TDATA_int_reg_n_0_[20]\,
      R => '0'
    );
\M_AXIS_TDATA_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA_int0,
      D => M_AXIS_TDATA_int(21),
      Q => \M_AXIS_TDATA_int_reg_n_0_[21]\,
      R => '0'
    );
\M_AXIS_TDATA_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA_int0,
      D => M_AXIS_TDATA_int(22),
      Q => \M_AXIS_TDATA_int_reg_n_0_[22]\,
      R => '0'
    );
\M_AXIS_TDATA_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA_int0,
      D => M_AXIS_TDATA_int(23),
      Q => \M_AXIS_TDATA_int_reg_n_0_[23]\,
      R => '0'
    );
\M_AXIS_TDATA_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA_int0,
      D => M_AXIS_TDATA_int(2),
      Q => \M_AXIS_TDATA_int_reg_n_0_[2]\,
      R => '0'
    );
\M_AXIS_TDATA_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA_int0,
      D => M_AXIS_TDATA_int(3),
      Q => \M_AXIS_TDATA_int_reg_n_0_[3]\,
      R => '0'
    );
\M_AXIS_TDATA_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA_int0,
      D => M_AXIS_TDATA_int(4),
      Q => \M_AXIS_TDATA_int_reg_n_0_[4]\,
      R => '0'
    );
\M_AXIS_TDATA_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA_int0,
      D => M_AXIS_TDATA_int(5),
      Q => \M_AXIS_TDATA_int_reg_n_0_[5]\,
      R => '0'
    );
\M_AXIS_TDATA_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA_int0,
      D => M_AXIS_TDATA_int(6),
      Q => \M_AXIS_TDATA_int_reg_n_0_[6]\,
      R => '0'
    );
\M_AXIS_TDATA_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA_int0,
      D => M_AXIS_TDATA_int(7),
      Q => \M_AXIS_TDATA_int_reg_n_0_[7]\,
      R => '0'
    );
\M_AXIS_TDATA_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA_int0,
      D => M_AXIS_TDATA_int(8),
      Q => \M_AXIS_TDATA_int_reg_n_0_[8]\,
      R => '0'
    );
\M_AXIS_TDATA_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => M_AXIS_TDATA_int0,
      D => M_AXIS_TDATA_int(9),
      Q => \M_AXIS_TDATA_int_reg_n_0_[9]\,
      R => '0'
    );
\M_AXIS_TDATA_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(0),
      Q => M_AXIS_TDATA(0),
      R => '0'
    );
\M_AXIS_TDATA_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(10),
      Q => M_AXIS_TDATA(10),
      R => '0'
    );
\M_AXIS_TDATA_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(11),
      Q => M_AXIS_TDATA(11),
      R => '0'
    );
\M_AXIS_TDATA_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(12),
      Q => M_AXIS_TDATA(12),
      R => '0'
    );
\M_AXIS_TDATA_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(13),
      Q => M_AXIS_TDATA(13),
      R => '0'
    );
\M_AXIS_TDATA_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(14),
      Q => M_AXIS_TDATA(14),
      R => '0'
    );
\M_AXIS_TDATA_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(15),
      Q => M_AXIS_TDATA(15),
      R => '0'
    );
\M_AXIS_TDATA_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(16),
      Q => M_AXIS_TDATA(16),
      R => '0'
    );
\M_AXIS_TDATA_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(17),
      Q => M_AXIS_TDATA(17),
      R => '0'
    );
\M_AXIS_TDATA_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(18),
      Q => M_AXIS_TDATA(18),
      R => '0'
    );
\M_AXIS_TDATA_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(19),
      Q => M_AXIS_TDATA(19),
      R => '0'
    );
\M_AXIS_TDATA_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(1),
      Q => M_AXIS_TDATA(1),
      R => '0'
    );
\M_AXIS_TDATA_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(20),
      Q => M_AXIS_TDATA(20),
      R => '0'
    );
\M_AXIS_TDATA_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(21),
      Q => M_AXIS_TDATA(21),
      R => '0'
    );
\M_AXIS_TDATA_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(22),
      Q => M_AXIS_TDATA(22),
      R => '0'
    );
\M_AXIS_TDATA_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(23),
      Q => M_AXIS_TDATA(23),
      R => '0'
    );
\M_AXIS_TDATA_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(2),
      Q => M_AXIS_TDATA(2),
      R => '0'
    );
\M_AXIS_TDATA_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(3),
      Q => M_AXIS_TDATA(3),
      R => '0'
    );
\M_AXIS_TDATA_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(4),
      Q => M_AXIS_TDATA(4),
      R => '0'
    );
\M_AXIS_TDATA_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(5),
      Q => M_AXIS_TDATA(5),
      R => '0'
    );
\M_AXIS_TDATA_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(6),
      Q => M_AXIS_TDATA(6),
      R => '0'
    );
\M_AXIS_TDATA_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(7),
      Q => M_AXIS_TDATA(7),
      R => '0'
    );
\M_AXIS_TDATA_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(8),
      Q => M_AXIS_TDATA(8),
      R => '0'
    );
\M_AXIS_TDATA_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => p_0_in1_in(9),
      Q => M_AXIS_TDATA(9),
      R => '0'
    );
M_AXIS_TLAST_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => M_AXIS_TLAST_int_reg_n_0,
      I1 => filter_enable,
      I2 => S_AXIS_TLAST,
      O => M_AXIS_TLAST_i_1_n_0
    );
M_AXIS_TLAST_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0C0FFFFC0C04000"
    )
        port map (
      I0 => \state__0\(0),
      I1 => M_AXIS_TREADY,
      I2 => \state__0\(1),
      I3 => aresetn,
      I4 => \mem_R_reg[0]0\,
      I5 => M_AXIS_TLAST_int_reg_n_0,
      O => M_AXIS_TLAST_int_i_1_n_0
    );
M_AXIS_TLAST_int_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => M_AXIS_TLAST_int_i_1_n_0,
      Q => M_AXIS_TLAST_int_reg_n_0,
      R => '0'
    );
M_AXIS_TLAST_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => M_AXIS_TLAST_i_1_n_0,
      Q => M_AXIS_TLAST,
      R => '0'
    );
M_AXIS_TVALID_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => M_AXIS_TVALID_int_reg_n_0,
      I1 => filter_enable,
      I2 => S_AXIS_TVALID,
      O => M_AXIS_TVALID_i_1_n_0
    );
M_AXIS_TVALID_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888FFF88888000"
    )
        port map (
      I0 => M_AXIS_TVALID_int_i_2_n_0,
      I1 => S_AXIS_TLAST,
      I2 => \state__0\(0),
      I3 => S_AXIS_TREADY_int_i_3_n_0,
      I4 => \mem_R_reg[0]0\,
      I5 => M_AXIS_TVALID_int_reg_n_0,
      O => M_AXIS_TVALID_int_i_1_n_0
    );
M_AXIS_TVALID_int_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => S_AXIS_TVALID,
      I1 => filter_enable,
      I2 => \state__0\(1),
      O => M_AXIS_TVALID_int_i_2_n_0
    );
M_AXIS_TVALID_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => M_AXIS_TVALID_int_i_1_n_0,
      Q => M_AXIS_TVALID_int_reg_n_0,
      R => '0'
    );
M_AXIS_TVALID_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => M_AXIS_TVALID_i_1_n_0,
      Q => M_AXIS_TVALID,
      R => '0'
    );
SUM_TOTAL_L0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => SUM_TOTAL_L0_carry_n_0,
      CO(2) => SUM_TOTAL_L0_carry_n_1,
      CO(1) => SUM_TOTAL_L0_carry_n_2,
      CO(0) => SUM_TOTAL_L0_carry_n_3,
      CYINIT => '0',
      DI(3) => SUM_TOTAL_L0_carry_i_1_n_0,
      DI(2) => SUM_TOTAL_L0_carry_i_2_n_0,
      DI(1) => SUM_TOTAL_L0_carry_i_3_n_0,
      DI(0) => SUM_TOTAL_L0_carry_i_4_n_0,
      O(3) => SUM_TOTAL_L0_carry_n_4,
      O(2) => SUM_TOTAL_L0_carry_n_5,
      O(1) => SUM_TOTAL_L0_carry_n_6,
      O(0) => SUM_TOTAL_L0_carry_n_7,
      S(3) => SUM_TOTAL_L0_carry_i_5_n_0,
      S(2) => SUM_TOTAL_L0_carry_i_6_n_0,
      S(1) => SUM_TOTAL_L0_carry_i_7_n_0,
      S(0) => SUM_TOTAL_L0_carry_i_8_n_0
    );
\SUM_TOTAL_L0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => SUM_TOTAL_L0_carry_n_0,
      CO(3) => \SUM_TOTAL_L0_carry__0_n_0\,
      CO(2) => \SUM_TOTAL_L0_carry__0_n_1\,
      CO(1) => \SUM_TOTAL_L0_carry__0_n_2\,
      CO(0) => \SUM_TOTAL_L0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \SUM_TOTAL_L0_carry__0_i_1_n_0\,
      DI(2) => \SUM_TOTAL_L0_carry__0_i_2_n_0\,
      DI(1) => \SUM_TOTAL_L0_carry__0_i_3_n_0\,
      DI(0) => \SUM_TOTAL_L0_carry__0_i_4_n_0\,
      O(3) => \SUM_TOTAL_L0_carry__0_n_4\,
      O(2) => \SUM_TOTAL_L0_carry__0_n_5\,
      O(1) => \SUM_TOTAL_L0_carry__0_n_6\,
      O(0) => \SUM_TOTAL_L0_carry__0_n_7\,
      S(3) => \SUM_TOTAL_L0_carry__0_i_5_n_0\,
      S(2) => \SUM_TOTAL_L0_carry__0_i_6_n_0\,
      S(1) => \SUM_TOTAL_L0_carry__0_i_7_n_0\,
      S(0) => \SUM_TOTAL_L0_carry__0_i_8_n_0\
    );
\SUM_TOTAL_L0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => SUM_TOTAL_L(6),
      I1 => \mem_L_reg[31]\(6),
      I2 => S_AXIS_TDATA(6),
      O => \SUM_TOTAL_L0_carry__0_i_1_n_0\
    );
\SUM_TOTAL_L0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => SUM_TOTAL_L(5),
      I1 => \mem_L_reg[31]\(5),
      I2 => S_AXIS_TDATA(5),
      O => \SUM_TOTAL_L0_carry__0_i_2_n_0\
    );
\SUM_TOTAL_L0_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => SUM_TOTAL_L(4),
      I1 => \mem_L_reg[31]\(4),
      I2 => S_AXIS_TDATA(4),
      O => \SUM_TOTAL_L0_carry__0_i_3_n_0\
    );
\SUM_TOTAL_L0_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => SUM_TOTAL_L(3),
      I1 => \mem_L_reg[31]\(3),
      I2 => S_AXIS_TDATA(3),
      O => \SUM_TOTAL_L0_carry__0_i_4_n_0\
    );
\SUM_TOTAL_L0_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => S_AXIS_TDATA(6),
      I1 => \mem_L_reg[31]\(6),
      I2 => SUM_TOTAL_L(6),
      I3 => \mem_L_reg[31]\(7),
      I4 => S_AXIS_TDATA(7),
      I5 => SUM_TOTAL_L(7),
      O => \SUM_TOTAL_L0_carry__0_i_5_n_0\
    );
\SUM_TOTAL_L0_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => S_AXIS_TDATA(5),
      I1 => \mem_L_reg[31]\(5),
      I2 => SUM_TOTAL_L(5),
      I3 => \mem_L_reg[31]\(6),
      I4 => S_AXIS_TDATA(6),
      I5 => SUM_TOTAL_L(6),
      O => \SUM_TOTAL_L0_carry__0_i_6_n_0\
    );
\SUM_TOTAL_L0_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => S_AXIS_TDATA(4),
      I1 => \mem_L_reg[31]\(4),
      I2 => SUM_TOTAL_L(4),
      I3 => \mem_L_reg[31]\(5),
      I4 => S_AXIS_TDATA(5),
      I5 => SUM_TOTAL_L(5),
      O => \SUM_TOTAL_L0_carry__0_i_7_n_0\
    );
\SUM_TOTAL_L0_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => S_AXIS_TDATA(3),
      I1 => \mem_L_reg[31]\(3),
      I2 => SUM_TOTAL_L(3),
      I3 => \mem_L_reg[31]\(4),
      I4 => S_AXIS_TDATA(4),
      I5 => SUM_TOTAL_L(4),
      O => \SUM_TOTAL_L0_carry__0_i_8_n_0\
    );
\SUM_TOTAL_L0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \SUM_TOTAL_L0_carry__0_n_0\,
      CO(3) => \SUM_TOTAL_L0_carry__1_n_0\,
      CO(2) => \SUM_TOTAL_L0_carry__1_n_1\,
      CO(1) => \SUM_TOTAL_L0_carry__1_n_2\,
      CO(0) => \SUM_TOTAL_L0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \SUM_TOTAL_L0_carry__1_i_1_n_0\,
      DI(2) => \SUM_TOTAL_L0_carry__1_i_2_n_0\,
      DI(1) => \SUM_TOTAL_L0_carry__1_i_3_n_0\,
      DI(0) => \SUM_TOTAL_L0_carry__1_i_4_n_0\,
      O(3) => \SUM_TOTAL_L0_carry__1_n_4\,
      O(2) => \SUM_TOTAL_L0_carry__1_n_5\,
      O(1) => \SUM_TOTAL_L0_carry__1_n_6\,
      O(0) => \SUM_TOTAL_L0_carry__1_n_7\,
      S(3) => \SUM_TOTAL_L0_carry__1_i_5_n_0\,
      S(2) => \SUM_TOTAL_L0_carry__1_i_6_n_0\,
      S(1) => \SUM_TOTAL_L0_carry__1_i_7_n_0\,
      S(0) => \SUM_TOTAL_L0_carry__1_i_8_n_0\
    );
\SUM_TOTAL_L0_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => SUM_TOTAL_L(10),
      I1 => \mem_L_reg[31]\(10),
      I2 => S_AXIS_TDATA(10),
      O => \SUM_TOTAL_L0_carry__1_i_1_n_0\
    );
\SUM_TOTAL_L0_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => SUM_TOTAL_L(9),
      I1 => \mem_L_reg[31]\(9),
      I2 => S_AXIS_TDATA(9),
      O => \SUM_TOTAL_L0_carry__1_i_2_n_0\
    );
\SUM_TOTAL_L0_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => SUM_TOTAL_L(8),
      I1 => \mem_L_reg[31]\(8),
      I2 => S_AXIS_TDATA(8),
      O => \SUM_TOTAL_L0_carry__1_i_3_n_0\
    );
\SUM_TOTAL_L0_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => SUM_TOTAL_L(7),
      I1 => \mem_L_reg[31]\(7),
      I2 => S_AXIS_TDATA(7),
      O => \SUM_TOTAL_L0_carry__1_i_4_n_0\
    );
\SUM_TOTAL_L0_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => S_AXIS_TDATA(10),
      I1 => \mem_L_reg[31]\(10),
      I2 => SUM_TOTAL_L(10),
      I3 => \mem_L_reg[31]\(11),
      I4 => S_AXIS_TDATA(11),
      I5 => SUM_TOTAL_L(11),
      O => \SUM_TOTAL_L0_carry__1_i_5_n_0\
    );
\SUM_TOTAL_L0_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => S_AXIS_TDATA(9),
      I1 => \mem_L_reg[31]\(9),
      I2 => SUM_TOTAL_L(9),
      I3 => \mem_L_reg[31]\(10),
      I4 => S_AXIS_TDATA(10),
      I5 => SUM_TOTAL_L(10),
      O => \SUM_TOTAL_L0_carry__1_i_6_n_0\
    );
\SUM_TOTAL_L0_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => S_AXIS_TDATA(8),
      I1 => \mem_L_reg[31]\(8),
      I2 => SUM_TOTAL_L(8),
      I3 => \mem_L_reg[31]\(9),
      I4 => S_AXIS_TDATA(9),
      I5 => SUM_TOTAL_L(9),
      O => \SUM_TOTAL_L0_carry__1_i_7_n_0\
    );
\SUM_TOTAL_L0_carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => S_AXIS_TDATA(7),
      I1 => \mem_L_reg[31]\(7),
      I2 => SUM_TOTAL_L(7),
      I3 => \mem_L_reg[31]\(8),
      I4 => S_AXIS_TDATA(8),
      I5 => SUM_TOTAL_L(8),
      O => \SUM_TOTAL_L0_carry__1_i_8_n_0\
    );
\SUM_TOTAL_L0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \SUM_TOTAL_L0_carry__1_n_0\,
      CO(3) => \SUM_TOTAL_L0_carry__2_n_0\,
      CO(2) => \SUM_TOTAL_L0_carry__2_n_1\,
      CO(1) => \SUM_TOTAL_L0_carry__2_n_2\,
      CO(0) => \SUM_TOTAL_L0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \SUM_TOTAL_L0_carry__2_i_1_n_0\,
      DI(2) => \SUM_TOTAL_L0_carry__2_i_2_n_0\,
      DI(1) => \SUM_TOTAL_L0_carry__2_i_3_n_0\,
      DI(0) => \SUM_TOTAL_L0_carry__2_i_4_n_0\,
      O(3) => \SUM_TOTAL_L0_carry__2_n_4\,
      O(2) => \SUM_TOTAL_L0_carry__2_n_5\,
      O(1) => \SUM_TOTAL_L0_carry__2_n_6\,
      O(0) => \SUM_TOTAL_L0_carry__2_n_7\,
      S(3) => \SUM_TOTAL_L0_carry__2_i_5_n_0\,
      S(2) => \SUM_TOTAL_L0_carry__2_i_6_n_0\,
      S(1) => \SUM_TOTAL_L0_carry__2_i_7_n_0\,
      S(0) => \SUM_TOTAL_L0_carry__2_i_8_n_0\
    );
\SUM_TOTAL_L0_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => SUM_TOTAL_L(14),
      I1 => \mem_L_reg[31]\(14),
      I2 => S_AXIS_TDATA(14),
      O => \SUM_TOTAL_L0_carry__2_i_1_n_0\
    );
\SUM_TOTAL_L0_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => SUM_TOTAL_L(13),
      I1 => \mem_L_reg[31]\(13),
      I2 => S_AXIS_TDATA(13),
      O => \SUM_TOTAL_L0_carry__2_i_2_n_0\
    );
\SUM_TOTAL_L0_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => SUM_TOTAL_L(12),
      I1 => \mem_L_reg[31]\(12),
      I2 => S_AXIS_TDATA(12),
      O => \SUM_TOTAL_L0_carry__2_i_3_n_0\
    );
\SUM_TOTAL_L0_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => SUM_TOTAL_L(11),
      I1 => \mem_L_reg[31]\(11),
      I2 => S_AXIS_TDATA(11),
      O => \SUM_TOTAL_L0_carry__2_i_4_n_0\
    );
\SUM_TOTAL_L0_carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => S_AXIS_TDATA(14),
      I1 => \mem_L_reg[31]\(14),
      I2 => SUM_TOTAL_L(14),
      I3 => \mem_L_reg[31]\(15),
      I4 => S_AXIS_TDATA(15),
      I5 => SUM_TOTAL_L(15),
      O => \SUM_TOTAL_L0_carry__2_i_5_n_0\
    );
\SUM_TOTAL_L0_carry__2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => S_AXIS_TDATA(13),
      I1 => \mem_L_reg[31]\(13),
      I2 => SUM_TOTAL_L(13),
      I3 => \mem_L_reg[31]\(14),
      I4 => S_AXIS_TDATA(14),
      I5 => SUM_TOTAL_L(14),
      O => \SUM_TOTAL_L0_carry__2_i_6_n_0\
    );
\SUM_TOTAL_L0_carry__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => S_AXIS_TDATA(12),
      I1 => \mem_L_reg[31]\(12),
      I2 => SUM_TOTAL_L(12),
      I3 => \mem_L_reg[31]\(13),
      I4 => S_AXIS_TDATA(13),
      I5 => SUM_TOTAL_L(13),
      O => \SUM_TOTAL_L0_carry__2_i_7_n_0\
    );
\SUM_TOTAL_L0_carry__2_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => S_AXIS_TDATA(11),
      I1 => \mem_L_reg[31]\(11),
      I2 => SUM_TOTAL_L(11),
      I3 => \mem_L_reg[31]\(12),
      I4 => S_AXIS_TDATA(12),
      I5 => SUM_TOTAL_L(12),
      O => \SUM_TOTAL_L0_carry__2_i_8_n_0\
    );
\SUM_TOTAL_L0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \SUM_TOTAL_L0_carry__2_n_0\,
      CO(3) => \SUM_TOTAL_L0_carry__3_n_0\,
      CO(2) => \SUM_TOTAL_L0_carry__3_n_1\,
      CO(1) => \SUM_TOTAL_L0_carry__3_n_2\,
      CO(0) => \SUM_TOTAL_L0_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \SUM_TOTAL_L0_carry__3_i_1_n_0\,
      DI(2) => \SUM_TOTAL_L0_carry__3_i_2_n_0\,
      DI(1) => \SUM_TOTAL_L0_carry__3_i_3_n_0\,
      DI(0) => \SUM_TOTAL_L0_carry__3_i_4_n_0\,
      O(3) => \SUM_TOTAL_L0_carry__3_n_4\,
      O(2) => \SUM_TOTAL_L0_carry__3_n_5\,
      O(1) => \SUM_TOTAL_L0_carry__3_n_6\,
      O(0) => \SUM_TOTAL_L0_carry__3_n_7\,
      S(3) => \SUM_TOTAL_L0_carry__3_i_5_n_0\,
      S(2) => \SUM_TOTAL_L0_carry__3_i_6_n_0\,
      S(1) => \SUM_TOTAL_L0_carry__3_i_7_n_0\,
      S(0) => \SUM_TOTAL_L0_carry__3_i_8_n_0\
    );
\SUM_TOTAL_L0_carry__3_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => SUM_TOTAL_L(18),
      I1 => \mem_L_reg[31]\(18),
      I2 => S_AXIS_TDATA(18),
      O => \SUM_TOTAL_L0_carry__3_i_1_n_0\
    );
\SUM_TOTAL_L0_carry__3_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => SUM_TOTAL_L(17),
      I1 => \mem_L_reg[31]\(17),
      I2 => S_AXIS_TDATA(17),
      O => \SUM_TOTAL_L0_carry__3_i_2_n_0\
    );
\SUM_TOTAL_L0_carry__3_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => SUM_TOTAL_L(16),
      I1 => \mem_L_reg[31]\(16),
      I2 => S_AXIS_TDATA(16),
      O => \SUM_TOTAL_L0_carry__3_i_3_n_0\
    );
\SUM_TOTAL_L0_carry__3_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => SUM_TOTAL_L(15),
      I1 => \mem_L_reg[31]\(15),
      I2 => S_AXIS_TDATA(15),
      O => \SUM_TOTAL_L0_carry__3_i_4_n_0\
    );
\SUM_TOTAL_L0_carry__3_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => S_AXIS_TDATA(18),
      I1 => \mem_L_reg[31]\(18),
      I2 => SUM_TOTAL_L(18),
      I3 => \mem_L_reg[31]\(19),
      I4 => S_AXIS_TDATA(19),
      I5 => SUM_TOTAL_L(19),
      O => \SUM_TOTAL_L0_carry__3_i_5_n_0\
    );
\SUM_TOTAL_L0_carry__3_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => S_AXIS_TDATA(17),
      I1 => \mem_L_reg[31]\(17),
      I2 => SUM_TOTAL_L(17),
      I3 => \mem_L_reg[31]\(18),
      I4 => S_AXIS_TDATA(18),
      I5 => SUM_TOTAL_L(18),
      O => \SUM_TOTAL_L0_carry__3_i_6_n_0\
    );
\SUM_TOTAL_L0_carry__3_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => S_AXIS_TDATA(16),
      I1 => \mem_L_reg[31]\(16),
      I2 => SUM_TOTAL_L(16),
      I3 => \mem_L_reg[31]\(17),
      I4 => S_AXIS_TDATA(17),
      I5 => SUM_TOTAL_L(17),
      O => \SUM_TOTAL_L0_carry__3_i_7_n_0\
    );
\SUM_TOTAL_L0_carry__3_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => S_AXIS_TDATA(15),
      I1 => \mem_L_reg[31]\(15),
      I2 => SUM_TOTAL_L(15),
      I3 => \mem_L_reg[31]\(16),
      I4 => S_AXIS_TDATA(16),
      I5 => SUM_TOTAL_L(16),
      O => \SUM_TOTAL_L0_carry__3_i_8_n_0\
    );
\SUM_TOTAL_L0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \SUM_TOTAL_L0_carry__3_n_0\,
      CO(3) => \SUM_TOTAL_L0_carry__4_n_0\,
      CO(2) => \SUM_TOTAL_L0_carry__4_n_1\,
      CO(1) => \SUM_TOTAL_L0_carry__4_n_2\,
      CO(0) => \SUM_TOTAL_L0_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \SUM_TOTAL_L0_carry__4_i_1_n_0\,
      DI(2) => \SUM_TOTAL_L0_carry__4_i_2_n_0\,
      DI(1) => \SUM_TOTAL_L0_carry__4_i_3_n_0\,
      DI(0) => \SUM_TOTAL_L0_carry__4_i_4_n_0\,
      O(3) => \SUM_TOTAL_L0_carry__4_n_4\,
      O(2) => \SUM_TOTAL_L0_carry__4_n_5\,
      O(1) => \SUM_TOTAL_L0_carry__4_n_6\,
      O(0) => \SUM_TOTAL_L0_carry__4_n_7\,
      S(3) => \SUM_TOTAL_L0_carry__4_i_5_n_0\,
      S(2) => \SUM_TOTAL_L0_carry__4_i_6_n_0\,
      S(1) => \SUM_TOTAL_L0_carry__4_i_7_n_0\,
      S(0) => \SUM_TOTAL_L0_carry__4_i_8_n_0\
    );
\SUM_TOTAL_L0_carry__4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => SUM_TOTAL_L(22),
      I1 => \mem_L_reg[31]\(22),
      I2 => S_AXIS_TDATA(22),
      O => \SUM_TOTAL_L0_carry__4_i_1_n_0\
    );
\SUM_TOTAL_L0_carry__4_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => SUM_TOTAL_L(21),
      I1 => \mem_L_reg[31]\(21),
      I2 => S_AXIS_TDATA(21),
      O => \SUM_TOTAL_L0_carry__4_i_2_n_0\
    );
\SUM_TOTAL_L0_carry__4_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => SUM_TOTAL_L(20),
      I1 => \mem_L_reg[31]\(20),
      I2 => S_AXIS_TDATA(20),
      O => \SUM_TOTAL_L0_carry__4_i_3_n_0\
    );
\SUM_TOTAL_L0_carry__4_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => SUM_TOTAL_L(19),
      I1 => \mem_L_reg[31]\(19),
      I2 => S_AXIS_TDATA(19),
      O => \SUM_TOTAL_L0_carry__4_i_4_n_0\
    );
\SUM_TOTAL_L0_carry__4_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => S_AXIS_TDATA(22),
      I1 => \mem_L_reg[31]\(22),
      I2 => SUM_TOTAL_L(22),
      I3 => \mem_L_reg[31]\(23),
      I4 => S_AXIS_TDATA(23),
      I5 => SUM_TOTAL_L(23),
      O => \SUM_TOTAL_L0_carry__4_i_5_n_0\
    );
\SUM_TOTAL_L0_carry__4_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => S_AXIS_TDATA(21),
      I1 => \mem_L_reg[31]\(21),
      I2 => SUM_TOTAL_L(21),
      I3 => \mem_L_reg[31]\(22),
      I4 => S_AXIS_TDATA(22),
      I5 => SUM_TOTAL_L(22),
      O => \SUM_TOTAL_L0_carry__4_i_6_n_0\
    );
\SUM_TOTAL_L0_carry__4_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => S_AXIS_TDATA(20),
      I1 => \mem_L_reg[31]\(20),
      I2 => SUM_TOTAL_L(20),
      I3 => \mem_L_reg[31]\(21),
      I4 => S_AXIS_TDATA(21),
      I5 => SUM_TOTAL_L(21),
      O => \SUM_TOTAL_L0_carry__4_i_7_n_0\
    );
\SUM_TOTAL_L0_carry__4_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => S_AXIS_TDATA(19),
      I1 => \mem_L_reg[31]\(19),
      I2 => SUM_TOTAL_L(19),
      I3 => \mem_L_reg[31]\(20),
      I4 => S_AXIS_TDATA(20),
      I5 => SUM_TOTAL_L(20),
      O => \SUM_TOTAL_L0_carry__4_i_8_n_0\
    );
\SUM_TOTAL_L0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \SUM_TOTAL_L0_carry__4_n_0\,
      CO(3) => \SUM_TOTAL_L0_carry__5_n_0\,
      CO(2) => \SUM_TOTAL_L0_carry__5_n_1\,
      CO(1) => \SUM_TOTAL_L0_carry__5_n_2\,
      CO(0) => \SUM_TOTAL_L0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => SUM_TOTAL_L(26 downto 24),
      DI(0) => \SUM_TOTAL_L0_carry__5_i_1_n_0\,
      O(3) => \SUM_TOTAL_L0_carry__5_n_4\,
      O(2) => \SUM_TOTAL_L0_carry__5_n_5\,
      O(1) => \SUM_TOTAL_L0_carry__5_n_6\,
      O(0) => \SUM_TOTAL_L0_carry__5_n_7\,
      S(3) => \SUM_TOTAL_L0_carry__5_i_2_n_0\,
      S(2) => \SUM_TOTAL_L0_carry__5_i_3_n_0\,
      S(1) => \SUM_TOTAL_L0_carry__5_i_4_n_0\,
      S(0) => \SUM_TOTAL_L0_carry__5_i_5_n_0\
    );
\SUM_TOTAL_L0_carry__5_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => SUM_TOTAL_L(23),
      I1 => S_AXIS_TDATA(23),
      I2 => \mem_L_reg[31]\(23),
      O => \SUM_TOTAL_L0_carry__5_i_1_n_0\
    );
\SUM_TOTAL_L0_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => SUM_TOTAL_L(26),
      I1 => SUM_TOTAL_L(27),
      O => \SUM_TOTAL_L0_carry__5_i_2_n_0\
    );
\SUM_TOTAL_L0_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => SUM_TOTAL_L(25),
      I1 => SUM_TOTAL_L(26),
      O => \SUM_TOTAL_L0_carry__5_i_3_n_0\
    );
\SUM_TOTAL_L0_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => SUM_TOTAL_L(24),
      I1 => SUM_TOTAL_L(25),
      O => \SUM_TOTAL_L0_carry__5_i_4_n_0\
    );
\SUM_TOTAL_L0_carry__5_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B24D"
    )
        port map (
      I0 => \mem_L_reg[31]\(23),
      I1 => S_AXIS_TDATA(23),
      I2 => SUM_TOTAL_L(23),
      I3 => SUM_TOTAL_L(24),
      O => \SUM_TOTAL_L0_carry__5_i_5_n_0\
    );
\SUM_TOTAL_L0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \SUM_TOTAL_L0_carry__5_n_0\,
      CO(3 downto 0) => \NLW_SUM_TOTAL_L0_carry__6_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_SUM_TOTAL_L0_carry__6_O_UNCONNECTED\(3 downto 1),
      O(0) => \SUM_TOTAL_L0_carry__6_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \SUM_TOTAL_L0_carry__6_i_1_n_0\
    );
\SUM_TOTAL_L0_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => SUM_TOTAL_L(27),
      I1 => SUM_TOTAL_L(28),
      O => \SUM_TOTAL_L0_carry__6_i_1_n_0\
    );
SUM_TOTAL_L0_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => SUM_TOTAL_L(2),
      I1 => \mem_L_reg[31]\(2),
      I2 => S_AXIS_TDATA(2),
      O => SUM_TOTAL_L0_carry_i_1_n_0
    );
SUM_TOTAL_L0_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => SUM_TOTAL_L(1),
      I1 => \mem_L_reg[31]\(1),
      I2 => S_AXIS_TDATA(1),
      O => SUM_TOTAL_L0_carry_i_2_n_0
    );
SUM_TOTAL_L0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S_AXIS_TDATA(0),
      I1 => SUM_TOTAL_L(0),
      O => SUM_TOTAL_L0_carry_i_3_n_0
    );
SUM_TOTAL_L0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => S_AXIS_TDATA(0),
      I1 => SUM_TOTAL_L(0),
      O => SUM_TOTAL_L0_carry_i_4_n_0
    );
SUM_TOTAL_L0_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => S_AXIS_TDATA(2),
      I1 => \mem_L_reg[31]\(2),
      I2 => SUM_TOTAL_L(2),
      I3 => \mem_L_reg[31]\(3),
      I4 => S_AXIS_TDATA(3),
      I5 => SUM_TOTAL_L(3),
      O => SUM_TOTAL_L0_carry_i_5_n_0
    );
SUM_TOTAL_L0_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => S_AXIS_TDATA(1),
      I1 => \mem_L_reg[31]\(1),
      I2 => SUM_TOTAL_L(1),
      I3 => \mem_L_reg[31]\(2),
      I4 => S_AXIS_TDATA(2),
      I5 => SUM_TOTAL_L(2),
      O => SUM_TOTAL_L0_carry_i_6_n_0
    );
SUM_TOTAL_L0_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E11E1EE1"
    )
        port map (
      I0 => SUM_TOTAL_L(0),
      I1 => S_AXIS_TDATA(0),
      I2 => \mem_L_reg[31]\(1),
      I3 => S_AXIS_TDATA(1),
      I4 => SUM_TOTAL_L(1),
      O => SUM_TOTAL_L0_carry_i_7_n_0
    );
SUM_TOTAL_L0_carry_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SUM_TOTAL_L(0),
      I1 => S_AXIS_TDATA(0),
      I2 => \mem_L_reg[31]\(0),
      O => SUM_TOTAL_L0_carry_i_8_n_0
    );
\SUM_TOTAL_L[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => S_AXIS_TLAST,
      I1 => \state__0\(0),
      I2 => aresetn,
      I3 => S_AXIS_TVALID,
      I4 => filter_enable,
      I5 => \state__0\(1),
      O => \mem_L_reg[0]0\
    );
\SUM_TOTAL_L_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => SUM_TOTAL_L0_carry_n_7,
      Q => SUM_TOTAL_L(0),
      R => '0'
    );
\SUM_TOTAL_L_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \SUM_TOTAL_L0_carry__1_n_5\,
      Q => SUM_TOTAL_L(10),
      R => '0'
    );
\SUM_TOTAL_L_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \SUM_TOTAL_L0_carry__1_n_4\,
      Q => SUM_TOTAL_L(11),
      R => '0'
    );
\SUM_TOTAL_L_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \SUM_TOTAL_L0_carry__2_n_7\,
      Q => SUM_TOTAL_L(12),
      R => '0'
    );
\SUM_TOTAL_L_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \SUM_TOTAL_L0_carry__2_n_6\,
      Q => SUM_TOTAL_L(13),
      R => '0'
    );
\SUM_TOTAL_L_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \SUM_TOTAL_L0_carry__2_n_5\,
      Q => SUM_TOTAL_L(14),
      R => '0'
    );
\SUM_TOTAL_L_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \SUM_TOTAL_L0_carry__2_n_4\,
      Q => SUM_TOTAL_L(15),
      R => '0'
    );
\SUM_TOTAL_L_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \SUM_TOTAL_L0_carry__3_n_7\,
      Q => SUM_TOTAL_L(16),
      R => '0'
    );
\SUM_TOTAL_L_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \SUM_TOTAL_L0_carry__3_n_6\,
      Q => SUM_TOTAL_L(17),
      R => '0'
    );
\SUM_TOTAL_L_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \SUM_TOTAL_L0_carry__3_n_5\,
      Q => SUM_TOTAL_L(18),
      R => '0'
    );
\SUM_TOTAL_L_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \SUM_TOTAL_L0_carry__3_n_4\,
      Q => SUM_TOTAL_L(19),
      R => '0'
    );
\SUM_TOTAL_L_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => SUM_TOTAL_L0_carry_n_6,
      Q => SUM_TOTAL_L(1),
      R => '0'
    );
\SUM_TOTAL_L_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \SUM_TOTAL_L0_carry__4_n_7\,
      Q => SUM_TOTAL_L(20),
      R => '0'
    );
\SUM_TOTAL_L_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \SUM_TOTAL_L0_carry__4_n_6\,
      Q => SUM_TOTAL_L(21),
      R => '0'
    );
\SUM_TOTAL_L_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \SUM_TOTAL_L0_carry__4_n_5\,
      Q => SUM_TOTAL_L(22),
      R => '0'
    );
\SUM_TOTAL_L_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \SUM_TOTAL_L0_carry__4_n_4\,
      Q => SUM_TOTAL_L(23),
      R => '0'
    );
\SUM_TOTAL_L_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \SUM_TOTAL_L0_carry__5_n_7\,
      Q => SUM_TOTAL_L(24),
      R => '0'
    );
\SUM_TOTAL_L_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \SUM_TOTAL_L0_carry__5_n_6\,
      Q => SUM_TOTAL_L(25),
      R => '0'
    );
\SUM_TOTAL_L_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \SUM_TOTAL_L0_carry__5_n_5\,
      Q => SUM_TOTAL_L(26),
      R => '0'
    );
\SUM_TOTAL_L_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \SUM_TOTAL_L0_carry__5_n_4\,
      Q => SUM_TOTAL_L(27),
      R => '0'
    );
\SUM_TOTAL_L_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \SUM_TOTAL_L0_carry__6_n_7\,
      Q => SUM_TOTAL_L(28),
      R => '0'
    );
\SUM_TOTAL_L_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => SUM_TOTAL_L0_carry_n_5,
      Q => SUM_TOTAL_L(2),
      R => '0'
    );
\SUM_TOTAL_L_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => SUM_TOTAL_L0_carry_n_4,
      Q => SUM_TOTAL_L(3),
      R => '0'
    );
\SUM_TOTAL_L_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \SUM_TOTAL_L0_carry__0_n_7\,
      Q => SUM_TOTAL_L(4),
      R => '0'
    );
\SUM_TOTAL_L_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \SUM_TOTAL_L0_carry__0_n_6\,
      Q => SUM_TOTAL_L(5),
      R => '0'
    );
\SUM_TOTAL_L_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \SUM_TOTAL_L0_carry__0_n_5\,
      Q => SUM_TOTAL_L(6),
      R => '0'
    );
\SUM_TOTAL_L_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \SUM_TOTAL_L0_carry__0_n_4\,
      Q => SUM_TOTAL_L(7),
      R => '0'
    );
\SUM_TOTAL_L_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \SUM_TOTAL_L0_carry__1_n_7\,
      Q => SUM_TOTAL_L(8),
      R => '0'
    );
\SUM_TOTAL_L_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \SUM_TOTAL_L0_carry__1_n_6\,
      Q => SUM_TOTAL_L(9),
      R => '0'
    );
SUM_TOTAL_R0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => SUM_TOTAL_R0_carry_n_0,
      CO(2) => SUM_TOTAL_R0_carry_n_1,
      CO(1) => SUM_TOTAL_R0_carry_n_2,
      CO(0) => SUM_TOTAL_R0_carry_n_3,
      CYINIT => '0',
      DI(3) => SUM_TOTAL_R0_carry_i_1_n_0,
      DI(2) => SUM_TOTAL_R0_carry_i_2_n_0,
      DI(1) => SUM_TOTAL_R0_carry_i_3_n_0,
      DI(0) => SUM_TOTAL_R0_carry_i_4_n_0,
      O(3) => SUM_TOTAL_R0_carry_n_4,
      O(2) => SUM_TOTAL_R0_carry_n_5,
      O(1) => SUM_TOTAL_R0_carry_n_6,
      O(0) => SUM_TOTAL_R0_carry_n_7,
      S(3) => SUM_TOTAL_R0_carry_i_5_n_0,
      S(2) => SUM_TOTAL_R0_carry_i_6_n_0,
      S(1) => SUM_TOTAL_R0_carry_i_7_n_0,
      S(0) => SUM_TOTAL_R0_carry_i_8_n_0
    );
\SUM_TOTAL_R0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => SUM_TOTAL_R0_carry_n_0,
      CO(3) => \SUM_TOTAL_R0_carry__0_n_0\,
      CO(2) => \SUM_TOTAL_R0_carry__0_n_1\,
      CO(1) => \SUM_TOTAL_R0_carry__0_n_2\,
      CO(0) => \SUM_TOTAL_R0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \SUM_TOTAL_R0_carry__0_i_1_n_0\,
      DI(2) => \SUM_TOTAL_R0_carry__0_i_2_n_0\,
      DI(1) => \SUM_TOTAL_R0_carry__0_i_3_n_0\,
      DI(0) => \SUM_TOTAL_R0_carry__0_i_4_n_0\,
      O(3) => \SUM_TOTAL_R0_carry__0_n_4\,
      O(2) => \SUM_TOTAL_R0_carry__0_n_5\,
      O(1) => \SUM_TOTAL_R0_carry__0_n_6\,
      O(0) => \SUM_TOTAL_R0_carry__0_n_7\,
      S(3) => \SUM_TOTAL_R0_carry__0_i_5_n_0\,
      S(2) => \SUM_TOTAL_R0_carry__0_i_6_n_0\,
      S(1) => \SUM_TOTAL_R0_carry__0_i_7_n_0\,
      S(0) => \SUM_TOTAL_R0_carry__0_i_8_n_0\
    );
\SUM_TOTAL_R0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => S_AXIS_TDATA(6),
      I1 => \mem_R_reg[31]\(6),
      I2 => p_0_in(1),
      O => \SUM_TOTAL_R0_carry__0_i_1_n_0\
    );
\SUM_TOTAL_R0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => S_AXIS_TDATA(5),
      I1 => \mem_R_reg[31]\(5),
      I2 => p_0_in(0),
      O => \SUM_TOTAL_R0_carry__0_i_2_n_0\
    );
\SUM_TOTAL_R0_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => S_AXIS_TDATA(4),
      I1 => \mem_R_reg[31]\(4),
      I2 => \SUM_TOTAL_R_reg_n_0_[4]\,
      O => \SUM_TOTAL_R0_carry__0_i_3_n_0\
    );
\SUM_TOTAL_R0_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => S_AXIS_TDATA(3),
      I1 => \mem_R_reg[31]\(3),
      I2 => \SUM_TOTAL_R_reg_n_0_[3]\,
      O => \SUM_TOTAL_R0_carry__0_i_4_n_0\
    );
\SUM_TOTAL_R0_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \mem_R_reg[31]\(6),
      I2 => S_AXIS_TDATA(6),
      I3 => \mem_R_reg[31]\(7),
      I4 => p_0_in(2),
      I5 => S_AXIS_TDATA(7),
      O => \SUM_TOTAL_R0_carry__0_i_5_n_0\
    );
\SUM_TOTAL_R0_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => p_0_in(0),
      I1 => \mem_R_reg[31]\(5),
      I2 => S_AXIS_TDATA(5),
      I3 => \mem_R_reg[31]\(6),
      I4 => p_0_in(1),
      I5 => S_AXIS_TDATA(6),
      O => \SUM_TOTAL_R0_carry__0_i_6_n_0\
    );
\SUM_TOTAL_R0_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => \SUM_TOTAL_R_reg_n_0_[4]\,
      I1 => \mem_R_reg[31]\(4),
      I2 => S_AXIS_TDATA(4),
      I3 => \mem_R_reg[31]\(5),
      I4 => p_0_in(0),
      I5 => S_AXIS_TDATA(5),
      O => \SUM_TOTAL_R0_carry__0_i_7_n_0\
    );
\SUM_TOTAL_R0_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => \SUM_TOTAL_R_reg_n_0_[3]\,
      I1 => \mem_R_reg[31]\(3),
      I2 => S_AXIS_TDATA(3),
      I3 => \mem_R_reg[31]\(4),
      I4 => \SUM_TOTAL_R_reg_n_0_[4]\,
      I5 => S_AXIS_TDATA(4),
      O => \SUM_TOTAL_R0_carry__0_i_8_n_0\
    );
\SUM_TOTAL_R0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \SUM_TOTAL_R0_carry__0_n_0\,
      CO(3) => \SUM_TOTAL_R0_carry__1_n_0\,
      CO(2) => \SUM_TOTAL_R0_carry__1_n_1\,
      CO(1) => \SUM_TOTAL_R0_carry__1_n_2\,
      CO(0) => \SUM_TOTAL_R0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \SUM_TOTAL_R0_carry__1_i_1_n_0\,
      DI(2) => \SUM_TOTAL_R0_carry__1_i_2_n_0\,
      DI(1) => \SUM_TOTAL_R0_carry__1_i_3_n_0\,
      DI(0) => \SUM_TOTAL_R0_carry__1_i_4_n_0\,
      O(3) => \SUM_TOTAL_R0_carry__1_n_4\,
      O(2) => \SUM_TOTAL_R0_carry__1_n_5\,
      O(1) => \SUM_TOTAL_R0_carry__1_n_6\,
      O(0) => \SUM_TOTAL_R0_carry__1_n_7\,
      S(3) => \SUM_TOTAL_R0_carry__1_i_5_n_0\,
      S(2) => \SUM_TOTAL_R0_carry__1_i_6_n_0\,
      S(1) => \SUM_TOTAL_R0_carry__1_i_7_n_0\,
      S(0) => \SUM_TOTAL_R0_carry__1_i_8_n_0\
    );
\SUM_TOTAL_R0_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => S_AXIS_TDATA(10),
      I1 => \mem_R_reg[31]\(10),
      I2 => p_0_in(5),
      O => \SUM_TOTAL_R0_carry__1_i_1_n_0\
    );
\SUM_TOTAL_R0_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => S_AXIS_TDATA(9),
      I1 => \mem_R_reg[31]\(9),
      I2 => p_0_in(4),
      O => \SUM_TOTAL_R0_carry__1_i_2_n_0\
    );
\SUM_TOTAL_R0_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => S_AXIS_TDATA(8),
      I1 => \mem_R_reg[31]\(8),
      I2 => p_0_in(3),
      O => \SUM_TOTAL_R0_carry__1_i_3_n_0\
    );
\SUM_TOTAL_R0_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => S_AXIS_TDATA(7),
      I1 => \mem_R_reg[31]\(7),
      I2 => p_0_in(2),
      O => \SUM_TOTAL_R0_carry__1_i_4_n_0\
    );
\SUM_TOTAL_R0_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => p_0_in(5),
      I1 => \mem_R_reg[31]\(10),
      I2 => S_AXIS_TDATA(10),
      I3 => \mem_R_reg[31]\(11),
      I4 => p_0_in(6),
      I5 => S_AXIS_TDATA(11),
      O => \SUM_TOTAL_R0_carry__1_i_5_n_0\
    );
\SUM_TOTAL_R0_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => p_0_in(4),
      I1 => \mem_R_reg[31]\(9),
      I2 => S_AXIS_TDATA(9),
      I3 => \mem_R_reg[31]\(10),
      I4 => p_0_in(5),
      I5 => S_AXIS_TDATA(10),
      O => \SUM_TOTAL_R0_carry__1_i_6_n_0\
    );
\SUM_TOTAL_R0_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => p_0_in(3),
      I1 => \mem_R_reg[31]\(8),
      I2 => S_AXIS_TDATA(8),
      I3 => \mem_R_reg[31]\(9),
      I4 => p_0_in(4),
      I5 => S_AXIS_TDATA(9),
      O => \SUM_TOTAL_R0_carry__1_i_7_n_0\
    );
\SUM_TOTAL_R0_carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => p_0_in(2),
      I1 => \mem_R_reg[31]\(7),
      I2 => S_AXIS_TDATA(7),
      I3 => \mem_R_reg[31]\(8),
      I4 => p_0_in(3),
      I5 => S_AXIS_TDATA(8),
      O => \SUM_TOTAL_R0_carry__1_i_8_n_0\
    );
\SUM_TOTAL_R0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \SUM_TOTAL_R0_carry__1_n_0\,
      CO(3) => \SUM_TOTAL_R0_carry__2_n_0\,
      CO(2) => \SUM_TOTAL_R0_carry__2_n_1\,
      CO(1) => \SUM_TOTAL_R0_carry__2_n_2\,
      CO(0) => \SUM_TOTAL_R0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \SUM_TOTAL_R0_carry__2_i_1_n_0\,
      DI(2) => \SUM_TOTAL_R0_carry__2_i_2_n_0\,
      DI(1) => \SUM_TOTAL_R0_carry__2_i_3_n_0\,
      DI(0) => \SUM_TOTAL_R0_carry__2_i_4_n_0\,
      O(3) => \SUM_TOTAL_R0_carry__2_n_4\,
      O(2) => \SUM_TOTAL_R0_carry__2_n_5\,
      O(1) => \SUM_TOTAL_R0_carry__2_n_6\,
      O(0) => \SUM_TOTAL_R0_carry__2_n_7\,
      S(3) => \SUM_TOTAL_R0_carry__2_i_5_n_0\,
      S(2) => \SUM_TOTAL_R0_carry__2_i_6_n_0\,
      S(1) => \SUM_TOTAL_R0_carry__2_i_7_n_0\,
      S(0) => \SUM_TOTAL_R0_carry__2_i_8_n_0\
    );
\SUM_TOTAL_R0_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => S_AXIS_TDATA(14),
      I1 => \mem_R_reg[31]\(14),
      I2 => p_0_in(9),
      O => \SUM_TOTAL_R0_carry__2_i_1_n_0\
    );
\SUM_TOTAL_R0_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => S_AXIS_TDATA(13),
      I1 => \mem_R_reg[31]\(13),
      I2 => p_0_in(8),
      O => \SUM_TOTAL_R0_carry__2_i_2_n_0\
    );
\SUM_TOTAL_R0_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => S_AXIS_TDATA(12),
      I1 => \mem_R_reg[31]\(12),
      I2 => p_0_in(7),
      O => \SUM_TOTAL_R0_carry__2_i_3_n_0\
    );
\SUM_TOTAL_R0_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => S_AXIS_TDATA(11),
      I1 => \mem_R_reg[31]\(11),
      I2 => p_0_in(6),
      O => \SUM_TOTAL_R0_carry__2_i_4_n_0\
    );
\SUM_TOTAL_R0_carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => p_0_in(9),
      I1 => \mem_R_reg[31]\(14),
      I2 => S_AXIS_TDATA(14),
      I3 => \mem_R_reg[31]\(15),
      I4 => p_0_in(10),
      I5 => S_AXIS_TDATA(15),
      O => \SUM_TOTAL_R0_carry__2_i_5_n_0\
    );
\SUM_TOTAL_R0_carry__2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => p_0_in(8),
      I1 => \mem_R_reg[31]\(13),
      I2 => S_AXIS_TDATA(13),
      I3 => \mem_R_reg[31]\(14),
      I4 => p_0_in(9),
      I5 => S_AXIS_TDATA(14),
      O => \SUM_TOTAL_R0_carry__2_i_6_n_0\
    );
\SUM_TOTAL_R0_carry__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => p_0_in(7),
      I1 => \mem_R_reg[31]\(12),
      I2 => S_AXIS_TDATA(12),
      I3 => \mem_R_reg[31]\(13),
      I4 => p_0_in(8),
      I5 => S_AXIS_TDATA(13),
      O => \SUM_TOTAL_R0_carry__2_i_7_n_0\
    );
\SUM_TOTAL_R0_carry__2_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => p_0_in(6),
      I1 => \mem_R_reg[31]\(11),
      I2 => S_AXIS_TDATA(11),
      I3 => \mem_R_reg[31]\(12),
      I4 => p_0_in(7),
      I5 => S_AXIS_TDATA(12),
      O => \SUM_TOTAL_R0_carry__2_i_8_n_0\
    );
\SUM_TOTAL_R0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \SUM_TOTAL_R0_carry__2_n_0\,
      CO(3) => \SUM_TOTAL_R0_carry__3_n_0\,
      CO(2) => \SUM_TOTAL_R0_carry__3_n_1\,
      CO(1) => \SUM_TOTAL_R0_carry__3_n_2\,
      CO(0) => \SUM_TOTAL_R0_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \SUM_TOTAL_R0_carry__3_i_1_n_0\,
      DI(2) => \SUM_TOTAL_R0_carry__3_i_2_n_0\,
      DI(1) => \SUM_TOTAL_R0_carry__3_i_3_n_0\,
      DI(0) => \SUM_TOTAL_R0_carry__3_i_4_n_0\,
      O(3) => \SUM_TOTAL_R0_carry__3_n_4\,
      O(2) => \SUM_TOTAL_R0_carry__3_n_5\,
      O(1) => \SUM_TOTAL_R0_carry__3_n_6\,
      O(0) => \SUM_TOTAL_R0_carry__3_n_7\,
      S(3) => \SUM_TOTAL_R0_carry__3_i_5_n_0\,
      S(2) => \SUM_TOTAL_R0_carry__3_i_6_n_0\,
      S(1) => \SUM_TOTAL_R0_carry__3_i_7_n_0\,
      S(0) => \SUM_TOTAL_R0_carry__3_i_8_n_0\
    );
\SUM_TOTAL_R0_carry__3_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => S_AXIS_TDATA(18),
      I1 => \mem_R_reg[31]\(18),
      I2 => p_0_in(13),
      O => \SUM_TOTAL_R0_carry__3_i_1_n_0\
    );
\SUM_TOTAL_R0_carry__3_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => S_AXIS_TDATA(17),
      I1 => \mem_R_reg[31]\(17),
      I2 => p_0_in(12),
      O => \SUM_TOTAL_R0_carry__3_i_2_n_0\
    );
\SUM_TOTAL_R0_carry__3_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => S_AXIS_TDATA(16),
      I1 => \mem_R_reg[31]\(16),
      I2 => p_0_in(11),
      O => \SUM_TOTAL_R0_carry__3_i_3_n_0\
    );
\SUM_TOTAL_R0_carry__3_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => S_AXIS_TDATA(15),
      I1 => \mem_R_reg[31]\(15),
      I2 => p_0_in(10),
      O => \SUM_TOTAL_R0_carry__3_i_4_n_0\
    );
\SUM_TOTAL_R0_carry__3_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => p_0_in(13),
      I1 => \mem_R_reg[31]\(18),
      I2 => S_AXIS_TDATA(18),
      I3 => \mem_R_reg[31]\(19),
      I4 => p_0_in(14),
      I5 => S_AXIS_TDATA(19),
      O => \SUM_TOTAL_R0_carry__3_i_5_n_0\
    );
\SUM_TOTAL_R0_carry__3_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => p_0_in(12),
      I1 => \mem_R_reg[31]\(17),
      I2 => S_AXIS_TDATA(17),
      I3 => \mem_R_reg[31]\(18),
      I4 => p_0_in(13),
      I5 => S_AXIS_TDATA(18),
      O => \SUM_TOTAL_R0_carry__3_i_6_n_0\
    );
\SUM_TOTAL_R0_carry__3_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => p_0_in(11),
      I1 => \mem_R_reg[31]\(16),
      I2 => S_AXIS_TDATA(16),
      I3 => \mem_R_reg[31]\(17),
      I4 => p_0_in(12),
      I5 => S_AXIS_TDATA(17),
      O => \SUM_TOTAL_R0_carry__3_i_7_n_0\
    );
\SUM_TOTAL_R0_carry__3_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => p_0_in(10),
      I1 => \mem_R_reg[31]\(15),
      I2 => S_AXIS_TDATA(15),
      I3 => \mem_R_reg[31]\(16),
      I4 => p_0_in(11),
      I5 => S_AXIS_TDATA(16),
      O => \SUM_TOTAL_R0_carry__3_i_8_n_0\
    );
\SUM_TOTAL_R0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \SUM_TOTAL_R0_carry__3_n_0\,
      CO(3) => \SUM_TOTAL_R0_carry__4_n_0\,
      CO(2) => \SUM_TOTAL_R0_carry__4_n_1\,
      CO(1) => \SUM_TOTAL_R0_carry__4_n_2\,
      CO(0) => \SUM_TOTAL_R0_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \SUM_TOTAL_R0_carry__4_i_1_n_0\,
      DI(2) => \SUM_TOTAL_R0_carry__4_i_2_n_0\,
      DI(1) => \SUM_TOTAL_R0_carry__4_i_3_n_0\,
      DI(0) => \SUM_TOTAL_R0_carry__4_i_4_n_0\,
      O(3) => \SUM_TOTAL_R0_carry__4_n_4\,
      O(2) => \SUM_TOTAL_R0_carry__4_n_5\,
      O(1) => \SUM_TOTAL_R0_carry__4_n_6\,
      O(0) => \SUM_TOTAL_R0_carry__4_n_7\,
      S(3) => \SUM_TOTAL_R0_carry__4_i_5_n_0\,
      S(2) => \SUM_TOTAL_R0_carry__4_i_6_n_0\,
      S(1) => \SUM_TOTAL_R0_carry__4_i_7_n_0\,
      S(0) => \SUM_TOTAL_R0_carry__4_i_8_n_0\
    );
\SUM_TOTAL_R0_carry__4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => S_AXIS_TDATA(22),
      I1 => \mem_R_reg[31]\(22),
      I2 => p_0_in(17),
      O => \SUM_TOTAL_R0_carry__4_i_1_n_0\
    );
\SUM_TOTAL_R0_carry__4_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => S_AXIS_TDATA(21),
      I1 => \mem_R_reg[31]\(21),
      I2 => p_0_in(16),
      O => \SUM_TOTAL_R0_carry__4_i_2_n_0\
    );
\SUM_TOTAL_R0_carry__4_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => S_AXIS_TDATA(20),
      I1 => \mem_R_reg[31]\(20),
      I2 => p_0_in(15),
      O => \SUM_TOTAL_R0_carry__4_i_3_n_0\
    );
\SUM_TOTAL_R0_carry__4_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => S_AXIS_TDATA(19),
      I1 => \mem_R_reg[31]\(19),
      I2 => p_0_in(14),
      O => \SUM_TOTAL_R0_carry__4_i_4_n_0\
    );
\SUM_TOTAL_R0_carry__4_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => p_0_in(17),
      I1 => \mem_R_reg[31]\(22),
      I2 => S_AXIS_TDATA(22),
      I3 => \mem_R_reg[31]\(23),
      I4 => p_0_in(18),
      I5 => S_AXIS_TDATA(23),
      O => \SUM_TOTAL_R0_carry__4_i_5_n_0\
    );
\SUM_TOTAL_R0_carry__4_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => p_0_in(16),
      I1 => \mem_R_reg[31]\(21),
      I2 => S_AXIS_TDATA(21),
      I3 => \mem_R_reg[31]\(22),
      I4 => p_0_in(17),
      I5 => S_AXIS_TDATA(22),
      O => \SUM_TOTAL_R0_carry__4_i_6_n_0\
    );
\SUM_TOTAL_R0_carry__4_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => p_0_in(15),
      I1 => \mem_R_reg[31]\(20),
      I2 => S_AXIS_TDATA(20),
      I3 => \mem_R_reg[31]\(21),
      I4 => p_0_in(16),
      I5 => S_AXIS_TDATA(21),
      O => \SUM_TOTAL_R0_carry__4_i_7_n_0\
    );
\SUM_TOTAL_R0_carry__4_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => p_0_in(14),
      I1 => \mem_R_reg[31]\(19),
      I2 => S_AXIS_TDATA(19),
      I3 => \mem_R_reg[31]\(20),
      I4 => p_0_in(15),
      I5 => S_AXIS_TDATA(20),
      O => \SUM_TOTAL_R0_carry__4_i_8_n_0\
    );
\SUM_TOTAL_R0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \SUM_TOTAL_R0_carry__4_n_0\,
      CO(3) => \SUM_TOTAL_R0_carry__5_n_0\,
      CO(2) => \SUM_TOTAL_R0_carry__5_n_1\,
      CO(1) => \SUM_TOTAL_R0_carry__5_n_2\,
      CO(0) => \SUM_TOTAL_R0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => p_0_in(21 downto 19),
      DI(0) => \SUM_TOTAL_R0_carry__5_i_1_n_0\,
      O(3) => \SUM_TOTAL_R0_carry__5_n_4\,
      O(2) => \SUM_TOTAL_R0_carry__5_n_5\,
      O(1) => \SUM_TOTAL_R0_carry__5_n_6\,
      O(0) => \SUM_TOTAL_R0_carry__5_n_7\,
      S(3) => \SUM_TOTAL_R0_carry__5_i_2_n_0\,
      S(2) => \SUM_TOTAL_R0_carry__5_i_3_n_0\,
      S(1) => \SUM_TOTAL_R0_carry__5_i_4_n_0\,
      S(0) => \SUM_TOTAL_R0_carry__5_i_5_n_0\
    );
\SUM_TOTAL_R0_carry__5_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => S_AXIS_TDATA(23),
      I1 => p_0_in(18),
      I2 => \mem_R_reg[31]\(23),
      O => \SUM_TOTAL_R0_carry__5_i_1_n_0\
    );
\SUM_TOTAL_R0_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in(21),
      I1 => p_0_in(22),
      O => \SUM_TOTAL_R0_carry__5_i_2_n_0\
    );
\SUM_TOTAL_R0_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in(20),
      I1 => p_0_in(21),
      O => \SUM_TOTAL_R0_carry__5_i_3_n_0\
    );
\SUM_TOTAL_R0_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in(19),
      I1 => p_0_in(20),
      O => \SUM_TOTAL_R0_carry__5_i_4_n_0\
    );
\SUM_TOTAL_R0_carry__5_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8E71"
    )
        port map (
      I0 => \mem_R_reg[31]\(23),
      I1 => p_0_in(18),
      I2 => S_AXIS_TDATA(23),
      I3 => p_0_in(19),
      O => \SUM_TOTAL_R0_carry__5_i_5_n_0\
    );
\SUM_TOTAL_R0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \SUM_TOTAL_R0_carry__5_n_0\,
      CO(3 downto 0) => \NLW_SUM_TOTAL_R0_carry__6_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_SUM_TOTAL_R0_carry__6_O_UNCONNECTED\(3 downto 1),
      O(0) => \SUM_TOTAL_R0_carry__6_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \SUM_TOTAL_R0_carry__6_i_1_n_0\
    );
\SUM_TOTAL_R0_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in(22),
      I1 => p_0_in(23),
      O => \SUM_TOTAL_R0_carry__6_i_1_n_0\
    );
SUM_TOTAL_R0_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => S_AXIS_TDATA(2),
      I1 => \mem_R_reg[31]\(2),
      I2 => \SUM_TOTAL_R_reg_n_0_[2]\,
      O => SUM_TOTAL_R0_carry_i_1_n_0
    );
SUM_TOTAL_R0_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => S_AXIS_TDATA(1),
      I1 => \mem_R_reg[31]\(1),
      I2 => \SUM_TOTAL_R_reg_n_0_[1]\,
      O => SUM_TOTAL_R0_carry_i_2_n_0
    );
SUM_TOTAL_R0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S_AXIS_TDATA(0),
      I1 => \SUM_TOTAL_R_reg_n_0_[0]\,
      O => SUM_TOTAL_R0_carry_i_3_n_0
    );
SUM_TOTAL_R0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \SUM_TOTAL_R_reg_n_0_[0]\,
      I1 => S_AXIS_TDATA(0),
      O => SUM_TOTAL_R0_carry_i_4_n_0
    );
SUM_TOTAL_R0_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => \SUM_TOTAL_R_reg_n_0_[2]\,
      I1 => \mem_R_reg[31]\(2),
      I2 => S_AXIS_TDATA(2),
      I3 => \mem_R_reg[31]\(3),
      I4 => \SUM_TOTAL_R_reg_n_0_[3]\,
      I5 => S_AXIS_TDATA(3),
      O => SUM_TOTAL_R0_carry_i_5_n_0
    );
SUM_TOTAL_R0_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => \SUM_TOTAL_R_reg_n_0_[1]\,
      I1 => \mem_R_reg[31]\(1),
      I2 => S_AXIS_TDATA(1),
      I3 => \mem_R_reg[31]\(2),
      I4 => \SUM_TOTAL_R_reg_n_0_[2]\,
      I5 => S_AXIS_TDATA(2),
      O => SUM_TOTAL_R0_carry_i_6_n_0
    );
SUM_TOTAL_R0_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E11E1EE1"
    )
        port map (
      I0 => \SUM_TOTAL_R_reg_n_0_[0]\,
      I1 => S_AXIS_TDATA(0),
      I2 => \mem_R_reg[31]\(1),
      I3 => \SUM_TOTAL_R_reg_n_0_[1]\,
      I4 => S_AXIS_TDATA(1),
      O => SUM_TOTAL_R0_carry_i_7_n_0
    );
SUM_TOTAL_R0_carry_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => S_AXIS_TDATA(0),
      I1 => \SUM_TOTAL_R_reg_n_0_[0]\,
      I2 => \mem_R_reg[31]\(0),
      O => SUM_TOTAL_R0_carry_i_8_n_0
    );
\SUM_TOTAL_R[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => S_AXIS_TLAST,
      I1 => \state__0\(0),
      I2 => aresetn,
      I3 => S_AXIS_TVALID,
      I4 => filter_enable,
      I5 => \state__0\(1),
      O => \mem_R_reg[0]0\
    );
\SUM_TOTAL_R_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => SUM_TOTAL_R0_carry_n_7,
      Q => \SUM_TOTAL_R_reg_n_0_[0]\,
      R => '0'
    );
\SUM_TOTAL_R_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \SUM_TOTAL_R0_carry__1_n_5\,
      Q => p_0_in(5),
      R => '0'
    );
\SUM_TOTAL_R_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \SUM_TOTAL_R0_carry__1_n_4\,
      Q => p_0_in(6),
      R => '0'
    );
\SUM_TOTAL_R_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \SUM_TOTAL_R0_carry__2_n_7\,
      Q => p_0_in(7),
      R => '0'
    );
\SUM_TOTAL_R_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \SUM_TOTAL_R0_carry__2_n_6\,
      Q => p_0_in(8),
      R => '0'
    );
\SUM_TOTAL_R_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \SUM_TOTAL_R0_carry__2_n_5\,
      Q => p_0_in(9),
      R => '0'
    );
\SUM_TOTAL_R_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \SUM_TOTAL_R0_carry__2_n_4\,
      Q => p_0_in(10),
      R => '0'
    );
\SUM_TOTAL_R_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \SUM_TOTAL_R0_carry__3_n_7\,
      Q => p_0_in(11),
      R => '0'
    );
\SUM_TOTAL_R_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \SUM_TOTAL_R0_carry__3_n_6\,
      Q => p_0_in(12),
      R => '0'
    );
\SUM_TOTAL_R_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \SUM_TOTAL_R0_carry__3_n_5\,
      Q => p_0_in(13),
      R => '0'
    );
\SUM_TOTAL_R_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \SUM_TOTAL_R0_carry__3_n_4\,
      Q => p_0_in(14),
      R => '0'
    );
\SUM_TOTAL_R_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => SUM_TOTAL_R0_carry_n_6,
      Q => \SUM_TOTAL_R_reg_n_0_[1]\,
      R => '0'
    );
\SUM_TOTAL_R_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \SUM_TOTAL_R0_carry__4_n_7\,
      Q => p_0_in(15),
      R => '0'
    );
\SUM_TOTAL_R_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \SUM_TOTAL_R0_carry__4_n_6\,
      Q => p_0_in(16),
      R => '0'
    );
\SUM_TOTAL_R_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \SUM_TOTAL_R0_carry__4_n_5\,
      Q => p_0_in(17),
      R => '0'
    );
\SUM_TOTAL_R_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \SUM_TOTAL_R0_carry__4_n_4\,
      Q => p_0_in(18),
      R => '0'
    );
\SUM_TOTAL_R_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \SUM_TOTAL_R0_carry__5_n_7\,
      Q => p_0_in(19),
      R => '0'
    );
\SUM_TOTAL_R_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \SUM_TOTAL_R0_carry__5_n_6\,
      Q => p_0_in(20),
      R => '0'
    );
\SUM_TOTAL_R_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \SUM_TOTAL_R0_carry__5_n_5\,
      Q => p_0_in(21),
      R => '0'
    );
\SUM_TOTAL_R_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \SUM_TOTAL_R0_carry__5_n_4\,
      Q => p_0_in(22),
      R => '0'
    );
\SUM_TOTAL_R_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \SUM_TOTAL_R0_carry__6_n_7\,
      Q => p_0_in(23),
      R => '0'
    );
\SUM_TOTAL_R_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => SUM_TOTAL_R0_carry_n_5,
      Q => \SUM_TOTAL_R_reg_n_0_[2]\,
      R => '0'
    );
\SUM_TOTAL_R_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => SUM_TOTAL_R0_carry_n_4,
      Q => \SUM_TOTAL_R_reg_n_0_[3]\,
      R => '0'
    );
\SUM_TOTAL_R_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \SUM_TOTAL_R0_carry__0_n_7\,
      Q => \SUM_TOTAL_R_reg_n_0_[4]\,
      R => '0'
    );
\SUM_TOTAL_R_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \SUM_TOTAL_R0_carry__0_n_6\,
      Q => p_0_in(0),
      R => '0'
    );
\SUM_TOTAL_R_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \SUM_TOTAL_R0_carry__0_n_5\,
      Q => p_0_in(1),
      R => '0'
    );
\SUM_TOTAL_R_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \SUM_TOTAL_R0_carry__0_n_4\,
      Q => p_0_in(2),
      R => '0'
    );
\SUM_TOTAL_R_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \SUM_TOTAL_R0_carry__1_n_7\,
      Q => p_0_in(3),
      R => '0'
    );
\SUM_TOTAL_R_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \SUM_TOTAL_R0_carry__1_n_6\,
      Q => p_0_in(4),
      R => '0'
    );
S_AXIS_TREADY_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXIS_TREADY_int_reg_n_0,
      I1 => filter_enable,
      I2 => M_AXIS_TREADY,
      O => S_AXIS_TREADY_i_1_n_0
    );
S_AXIS_TREADY_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFBABFBFA08A8080"
    )
        port map (
      I0 => S_AXIS_TREADY_int,
      I1 => S_AXIS_TREADY_int_i_3_n_0,
      I2 => \state__0\(0),
      I3 => S_AXIS_TLAST,
      I4 => \FSM_sequential_state[1]_i_2_n_0\,
      I5 => S_AXIS_TREADY_int_reg_n_0,
      O => S_AXIS_TREADY_int_i_1_n_0
    );
S_AXIS_TREADY_int_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000800080008"
    )
        port map (
      I0 => filter_enable,
      I1 => S_AXIS_TVALID,
      I2 => \state__0\(0),
      I3 => S_AXIS_TLAST,
      I4 => M_AXIS_TREADY,
      I5 => \state__0\(1),
      O => S_AXIS_TREADY_int
    );
S_AXIS_TREADY_int_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => \state__0\(1),
      I2 => aresetn,
      O => S_AXIS_TREADY_int_i_3_n_0
    );
S_AXIS_TREADY_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => S_AXIS_TREADY_int_i_1_n_0,
      Q => S_AXIS_TREADY_int_reg_n_0,
      R => '0'
    );
S_AXIS_TREADY_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => S_AXIS_TREADY_i_1_n_0,
      Q => S_AXIS_TREADY,
      R => '0'
    );
\mem_L_reg[30][0]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_L_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(0),
      Q => \mem_L_reg[30][0]_srl31_n_0\,
      Q31 => \NLW_mem_L_reg[30][0]_srl31_Q31_UNCONNECTED\
    );
\mem_L_reg[30][10]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_L_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(10),
      Q => \mem_L_reg[30][10]_srl31_n_0\,
      Q31 => \NLW_mem_L_reg[30][10]_srl31_Q31_UNCONNECTED\
    );
\mem_L_reg[30][11]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_L_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(11),
      Q => \mem_L_reg[30][11]_srl31_n_0\,
      Q31 => \NLW_mem_L_reg[30][11]_srl31_Q31_UNCONNECTED\
    );
\mem_L_reg[30][12]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_L_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(12),
      Q => \mem_L_reg[30][12]_srl31_n_0\,
      Q31 => \NLW_mem_L_reg[30][12]_srl31_Q31_UNCONNECTED\
    );
\mem_L_reg[30][13]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_L_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(13),
      Q => \mem_L_reg[30][13]_srl31_n_0\,
      Q31 => \NLW_mem_L_reg[30][13]_srl31_Q31_UNCONNECTED\
    );
\mem_L_reg[30][14]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_L_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(14),
      Q => \mem_L_reg[30][14]_srl31_n_0\,
      Q31 => \NLW_mem_L_reg[30][14]_srl31_Q31_UNCONNECTED\
    );
\mem_L_reg[30][15]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_L_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(15),
      Q => \mem_L_reg[30][15]_srl31_n_0\,
      Q31 => \NLW_mem_L_reg[30][15]_srl31_Q31_UNCONNECTED\
    );
\mem_L_reg[30][16]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_L_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(16),
      Q => \mem_L_reg[30][16]_srl31_n_0\,
      Q31 => \NLW_mem_L_reg[30][16]_srl31_Q31_UNCONNECTED\
    );
\mem_L_reg[30][17]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_L_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(17),
      Q => \mem_L_reg[30][17]_srl31_n_0\,
      Q31 => \NLW_mem_L_reg[30][17]_srl31_Q31_UNCONNECTED\
    );
\mem_L_reg[30][18]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_L_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(18),
      Q => \mem_L_reg[30][18]_srl31_n_0\,
      Q31 => \NLW_mem_L_reg[30][18]_srl31_Q31_UNCONNECTED\
    );
\mem_L_reg[30][19]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_L_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(19),
      Q => \mem_L_reg[30][19]_srl31_n_0\,
      Q31 => \NLW_mem_L_reg[30][19]_srl31_Q31_UNCONNECTED\
    );
\mem_L_reg[30][1]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_L_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(1),
      Q => \mem_L_reg[30][1]_srl31_n_0\,
      Q31 => \NLW_mem_L_reg[30][1]_srl31_Q31_UNCONNECTED\
    );
\mem_L_reg[30][20]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_L_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(20),
      Q => \mem_L_reg[30][20]_srl31_n_0\,
      Q31 => \NLW_mem_L_reg[30][20]_srl31_Q31_UNCONNECTED\
    );
\mem_L_reg[30][21]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_L_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(21),
      Q => \mem_L_reg[30][21]_srl31_n_0\,
      Q31 => \NLW_mem_L_reg[30][21]_srl31_Q31_UNCONNECTED\
    );
\mem_L_reg[30][22]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_L_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(22),
      Q => \mem_L_reg[30][22]_srl31_n_0\,
      Q31 => \NLW_mem_L_reg[30][22]_srl31_Q31_UNCONNECTED\
    );
\mem_L_reg[30][23]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_L_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(23),
      Q => \mem_L_reg[30][23]_srl31_n_0\,
      Q31 => \NLW_mem_L_reg[30][23]_srl31_Q31_UNCONNECTED\
    );
\mem_L_reg[30][2]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_L_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(2),
      Q => \mem_L_reg[30][2]_srl31_n_0\,
      Q31 => \NLW_mem_L_reg[30][2]_srl31_Q31_UNCONNECTED\
    );
\mem_L_reg[30][3]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_L_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(3),
      Q => \mem_L_reg[30][3]_srl31_n_0\,
      Q31 => \NLW_mem_L_reg[30][3]_srl31_Q31_UNCONNECTED\
    );
\mem_L_reg[30][4]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_L_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(4),
      Q => \mem_L_reg[30][4]_srl31_n_0\,
      Q31 => \NLW_mem_L_reg[30][4]_srl31_Q31_UNCONNECTED\
    );
\mem_L_reg[30][5]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_L_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(5),
      Q => \mem_L_reg[30][5]_srl31_n_0\,
      Q31 => \NLW_mem_L_reg[30][5]_srl31_Q31_UNCONNECTED\
    );
\mem_L_reg[30][6]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_L_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(6),
      Q => \mem_L_reg[30][6]_srl31_n_0\,
      Q31 => \NLW_mem_L_reg[30][6]_srl31_Q31_UNCONNECTED\
    );
\mem_L_reg[30][7]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_L_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(7),
      Q => \mem_L_reg[30][7]_srl31_n_0\,
      Q31 => \NLW_mem_L_reg[30][7]_srl31_Q31_UNCONNECTED\
    );
\mem_L_reg[30][8]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_L_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(8),
      Q => \mem_L_reg[30][8]_srl31_n_0\,
      Q31 => \NLW_mem_L_reg[30][8]_srl31_Q31_UNCONNECTED\
    );
\mem_L_reg[30][9]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_L_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(9),
      Q => \mem_L_reg[30][9]_srl31_n_0\,
      Q31 => \NLW_mem_L_reg[30][9]_srl31_Q31_UNCONNECTED\
    );
\mem_L_reg[31][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \mem_L_reg[30][0]_srl31_n_0\,
      Q => \mem_L_reg[31]\(0),
      R => '0'
    );
\mem_L_reg[31][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \mem_L_reg[30][10]_srl31_n_0\,
      Q => \mem_L_reg[31]\(10),
      R => '0'
    );
\mem_L_reg[31][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \mem_L_reg[30][11]_srl31_n_0\,
      Q => \mem_L_reg[31]\(11),
      R => '0'
    );
\mem_L_reg[31][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \mem_L_reg[30][12]_srl31_n_0\,
      Q => \mem_L_reg[31]\(12),
      R => '0'
    );
\mem_L_reg[31][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \mem_L_reg[30][13]_srl31_n_0\,
      Q => \mem_L_reg[31]\(13),
      R => '0'
    );
\mem_L_reg[31][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \mem_L_reg[30][14]_srl31_n_0\,
      Q => \mem_L_reg[31]\(14),
      R => '0'
    );
\mem_L_reg[31][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \mem_L_reg[30][15]_srl31_n_0\,
      Q => \mem_L_reg[31]\(15),
      R => '0'
    );
\mem_L_reg[31][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \mem_L_reg[30][16]_srl31_n_0\,
      Q => \mem_L_reg[31]\(16),
      R => '0'
    );
\mem_L_reg[31][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \mem_L_reg[30][17]_srl31_n_0\,
      Q => \mem_L_reg[31]\(17),
      R => '0'
    );
\mem_L_reg[31][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \mem_L_reg[30][18]_srl31_n_0\,
      Q => \mem_L_reg[31]\(18),
      R => '0'
    );
\mem_L_reg[31][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \mem_L_reg[30][19]_srl31_n_0\,
      Q => \mem_L_reg[31]\(19),
      R => '0'
    );
\mem_L_reg[31][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \mem_L_reg[30][1]_srl31_n_0\,
      Q => \mem_L_reg[31]\(1),
      R => '0'
    );
\mem_L_reg[31][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \mem_L_reg[30][20]_srl31_n_0\,
      Q => \mem_L_reg[31]\(20),
      R => '0'
    );
\mem_L_reg[31][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \mem_L_reg[30][21]_srl31_n_0\,
      Q => \mem_L_reg[31]\(21),
      R => '0'
    );
\mem_L_reg[31][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \mem_L_reg[30][22]_srl31_n_0\,
      Q => \mem_L_reg[31]\(22),
      R => '0'
    );
\mem_L_reg[31][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \mem_L_reg[30][23]_srl31_n_0\,
      Q => \mem_L_reg[31]\(23),
      R => '0'
    );
\mem_L_reg[31][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \mem_L_reg[30][2]_srl31_n_0\,
      Q => \mem_L_reg[31]\(2),
      R => '0'
    );
\mem_L_reg[31][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \mem_L_reg[30][3]_srl31_n_0\,
      Q => \mem_L_reg[31]\(3),
      R => '0'
    );
\mem_L_reg[31][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \mem_L_reg[30][4]_srl31_n_0\,
      Q => \mem_L_reg[31]\(4),
      R => '0'
    );
\mem_L_reg[31][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \mem_L_reg[30][5]_srl31_n_0\,
      Q => \mem_L_reg[31]\(5),
      R => '0'
    );
\mem_L_reg[31][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \mem_L_reg[30][6]_srl31_n_0\,
      Q => \mem_L_reg[31]\(6),
      R => '0'
    );
\mem_L_reg[31][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \mem_L_reg[30][7]_srl31_n_0\,
      Q => \mem_L_reg[31]\(7),
      R => '0'
    );
\mem_L_reg[31][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \mem_L_reg[30][8]_srl31_n_0\,
      Q => \mem_L_reg[31]\(8),
      R => '0'
    );
\mem_L_reg[31][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_L_reg[0]0\,
      D => \mem_L_reg[30][9]_srl31_n_0\,
      Q => \mem_L_reg[31]\(9),
      R => '0'
    );
\mem_R_reg[30][0]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_R_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(0),
      Q => \mem_R_reg[30][0]_srl31_n_0\,
      Q31 => \NLW_mem_R_reg[30][0]_srl31_Q31_UNCONNECTED\
    );
\mem_R_reg[30][10]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_R_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(10),
      Q => \mem_R_reg[30][10]_srl31_n_0\,
      Q31 => \NLW_mem_R_reg[30][10]_srl31_Q31_UNCONNECTED\
    );
\mem_R_reg[30][11]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_R_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(11),
      Q => \mem_R_reg[30][11]_srl31_n_0\,
      Q31 => \NLW_mem_R_reg[30][11]_srl31_Q31_UNCONNECTED\
    );
\mem_R_reg[30][12]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_R_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(12),
      Q => \mem_R_reg[30][12]_srl31_n_0\,
      Q31 => \NLW_mem_R_reg[30][12]_srl31_Q31_UNCONNECTED\
    );
\mem_R_reg[30][13]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_R_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(13),
      Q => \mem_R_reg[30][13]_srl31_n_0\,
      Q31 => \NLW_mem_R_reg[30][13]_srl31_Q31_UNCONNECTED\
    );
\mem_R_reg[30][14]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_R_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(14),
      Q => \mem_R_reg[30][14]_srl31_n_0\,
      Q31 => \NLW_mem_R_reg[30][14]_srl31_Q31_UNCONNECTED\
    );
\mem_R_reg[30][15]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_R_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(15),
      Q => \mem_R_reg[30][15]_srl31_n_0\,
      Q31 => \NLW_mem_R_reg[30][15]_srl31_Q31_UNCONNECTED\
    );
\mem_R_reg[30][16]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_R_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(16),
      Q => \mem_R_reg[30][16]_srl31_n_0\,
      Q31 => \NLW_mem_R_reg[30][16]_srl31_Q31_UNCONNECTED\
    );
\mem_R_reg[30][17]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_R_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(17),
      Q => \mem_R_reg[30][17]_srl31_n_0\,
      Q31 => \NLW_mem_R_reg[30][17]_srl31_Q31_UNCONNECTED\
    );
\mem_R_reg[30][18]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_R_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(18),
      Q => \mem_R_reg[30][18]_srl31_n_0\,
      Q31 => \NLW_mem_R_reg[30][18]_srl31_Q31_UNCONNECTED\
    );
\mem_R_reg[30][19]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_R_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(19),
      Q => \mem_R_reg[30][19]_srl31_n_0\,
      Q31 => \NLW_mem_R_reg[30][19]_srl31_Q31_UNCONNECTED\
    );
\mem_R_reg[30][1]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_R_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(1),
      Q => \mem_R_reg[30][1]_srl31_n_0\,
      Q31 => \NLW_mem_R_reg[30][1]_srl31_Q31_UNCONNECTED\
    );
\mem_R_reg[30][20]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_R_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(20),
      Q => \mem_R_reg[30][20]_srl31_n_0\,
      Q31 => \NLW_mem_R_reg[30][20]_srl31_Q31_UNCONNECTED\
    );
\mem_R_reg[30][21]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_R_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(21),
      Q => \mem_R_reg[30][21]_srl31_n_0\,
      Q31 => \NLW_mem_R_reg[30][21]_srl31_Q31_UNCONNECTED\
    );
\mem_R_reg[30][22]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_R_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(22),
      Q => \mem_R_reg[30][22]_srl31_n_0\,
      Q31 => \NLW_mem_R_reg[30][22]_srl31_Q31_UNCONNECTED\
    );
\mem_R_reg[30][23]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_R_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(23),
      Q => \mem_R_reg[30][23]_srl31_n_0\,
      Q31 => \NLW_mem_R_reg[30][23]_srl31_Q31_UNCONNECTED\
    );
\mem_R_reg[30][2]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_R_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(2),
      Q => \mem_R_reg[30][2]_srl31_n_0\,
      Q31 => \NLW_mem_R_reg[30][2]_srl31_Q31_UNCONNECTED\
    );
\mem_R_reg[30][3]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_R_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(3),
      Q => \mem_R_reg[30][3]_srl31_n_0\,
      Q31 => \NLW_mem_R_reg[30][3]_srl31_Q31_UNCONNECTED\
    );
\mem_R_reg[30][4]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_R_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(4),
      Q => \mem_R_reg[30][4]_srl31_n_0\,
      Q31 => \NLW_mem_R_reg[30][4]_srl31_Q31_UNCONNECTED\
    );
\mem_R_reg[30][5]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_R_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(5),
      Q => \mem_R_reg[30][5]_srl31_n_0\,
      Q31 => \NLW_mem_R_reg[30][5]_srl31_Q31_UNCONNECTED\
    );
\mem_R_reg[30][6]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_R_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(6),
      Q => \mem_R_reg[30][6]_srl31_n_0\,
      Q31 => \NLW_mem_R_reg[30][6]_srl31_Q31_UNCONNECTED\
    );
\mem_R_reg[30][7]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_R_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(7),
      Q => \mem_R_reg[30][7]_srl31_n_0\,
      Q31 => \NLW_mem_R_reg[30][7]_srl31_Q31_UNCONNECTED\
    );
\mem_R_reg[30][8]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_R_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(8),
      Q => \mem_R_reg[30][8]_srl31_n_0\,
      Q31 => \NLW_mem_R_reg[30][8]_srl31_Q31_UNCONNECTED\
    );
\mem_R_reg[30][9]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_R_reg[0]0\,
      CLK => aclk,
      D => S_AXIS_TDATA(9),
      Q => \mem_R_reg[30][9]_srl31_n_0\,
      Q31 => \NLW_mem_R_reg[30][9]_srl31_Q31_UNCONNECTED\
    );
\mem_R_reg[31][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \mem_R_reg[30][0]_srl31_n_0\,
      Q => \mem_R_reg[31]\(0),
      R => '0'
    );
\mem_R_reg[31][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \mem_R_reg[30][10]_srl31_n_0\,
      Q => \mem_R_reg[31]\(10),
      R => '0'
    );
\mem_R_reg[31][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \mem_R_reg[30][11]_srl31_n_0\,
      Q => \mem_R_reg[31]\(11),
      R => '0'
    );
\mem_R_reg[31][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \mem_R_reg[30][12]_srl31_n_0\,
      Q => \mem_R_reg[31]\(12),
      R => '0'
    );
\mem_R_reg[31][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \mem_R_reg[30][13]_srl31_n_0\,
      Q => \mem_R_reg[31]\(13),
      R => '0'
    );
\mem_R_reg[31][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \mem_R_reg[30][14]_srl31_n_0\,
      Q => \mem_R_reg[31]\(14),
      R => '0'
    );
\mem_R_reg[31][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \mem_R_reg[30][15]_srl31_n_0\,
      Q => \mem_R_reg[31]\(15),
      R => '0'
    );
\mem_R_reg[31][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \mem_R_reg[30][16]_srl31_n_0\,
      Q => \mem_R_reg[31]\(16),
      R => '0'
    );
\mem_R_reg[31][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \mem_R_reg[30][17]_srl31_n_0\,
      Q => \mem_R_reg[31]\(17),
      R => '0'
    );
\mem_R_reg[31][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \mem_R_reg[30][18]_srl31_n_0\,
      Q => \mem_R_reg[31]\(18),
      R => '0'
    );
\mem_R_reg[31][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \mem_R_reg[30][19]_srl31_n_0\,
      Q => \mem_R_reg[31]\(19),
      R => '0'
    );
\mem_R_reg[31][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \mem_R_reg[30][1]_srl31_n_0\,
      Q => \mem_R_reg[31]\(1),
      R => '0'
    );
\mem_R_reg[31][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \mem_R_reg[30][20]_srl31_n_0\,
      Q => \mem_R_reg[31]\(20),
      R => '0'
    );
\mem_R_reg[31][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \mem_R_reg[30][21]_srl31_n_0\,
      Q => \mem_R_reg[31]\(21),
      R => '0'
    );
\mem_R_reg[31][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \mem_R_reg[30][22]_srl31_n_0\,
      Q => \mem_R_reg[31]\(22),
      R => '0'
    );
\mem_R_reg[31][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \mem_R_reg[30][23]_srl31_n_0\,
      Q => \mem_R_reg[31]\(23),
      R => '0'
    );
\mem_R_reg[31][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \mem_R_reg[30][2]_srl31_n_0\,
      Q => \mem_R_reg[31]\(2),
      R => '0'
    );
\mem_R_reg[31][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \mem_R_reg[30][3]_srl31_n_0\,
      Q => \mem_R_reg[31]\(3),
      R => '0'
    );
\mem_R_reg[31][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \mem_R_reg[30][4]_srl31_n_0\,
      Q => \mem_R_reg[31]\(4),
      R => '0'
    );
\mem_R_reg[31][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \mem_R_reg[30][5]_srl31_n_0\,
      Q => \mem_R_reg[31]\(5),
      R => '0'
    );
\mem_R_reg[31][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \mem_R_reg[30][6]_srl31_n_0\,
      Q => \mem_R_reg[31]\(6),
      R => '0'
    );
\mem_R_reg[31][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \mem_R_reg[30][7]_srl31_n_0\,
      Q => \mem_R_reg[31]\(7),
      R => '0'
    );
\mem_R_reg[31][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \mem_R_reg[30][8]_srl31_n_0\,
      Q => \mem_R_reg[31]\(8),
      R => '0'
    );
\mem_R_reg[31][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_R_reg[0]0\,
      D => \mem_R_reg[30][9]_srl31_n_0\,
      Q => \mem_R_reg[31]\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BlockDesign_MobileMean_0_0 is
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
    filter_enable : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of BlockDesign_MobileMean_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of BlockDesign_MobileMean_0_0 : entity is "BlockDesign_MobileMean_0_0,MobileMean,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of BlockDesign_MobileMean_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of BlockDesign_MobileMean_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of BlockDesign_MobileMean_0_0 : entity is "MobileMean,Vivado 2020.2";
end BlockDesign_MobileMean_0_0;

architecture STRUCTURE of BlockDesign_MobileMean_0_0 is
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
U0: entity work.BlockDesign_MobileMean_0_0_MobileMean
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
      filter_enable => filter_enable
    );
end STRUCTURE;

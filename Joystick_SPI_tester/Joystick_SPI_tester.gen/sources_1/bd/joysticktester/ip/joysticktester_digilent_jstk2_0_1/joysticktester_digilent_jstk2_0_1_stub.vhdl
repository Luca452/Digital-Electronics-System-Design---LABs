-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Fri Mar 31 18:43:00 2023
-- Host        : DESKTOP-JKUPK39 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {c:/Users/daido/Desktop/Polimi/Anno
--               4/DESD/Git/KittCarPWM/Joystick_SPI_tester/Joystick_SPI_tester.gen/sources_1/bd/joysticktester/ip/joysticktester_digilent_jstk2_0_1/joysticktester_digilent_jstk2_0_1_stub.vhdl}
-- Design      : joysticktester_digilent_jstk2_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity joysticktester_digilent_jstk2_0_1 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tready : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end joysticktester_digilent_jstk2_0_1;

architecture stub of joysticktester_digilent_jstk2_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,m_axis_tvalid,m_axis_tdata[7:0],m_axis_tready,s_axis_tvalid,s_axis_tdata[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "digilent_jstk2,Vivado 2020.2";
begin
end;

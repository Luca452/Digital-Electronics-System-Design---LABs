-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun May  7 16:29:35 2023
-- Host        : DESKTOP-JKUPK39 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {c:/Users/daido/Desktop/Polimi/Anno
--               4/DESD/Git/KittCarPWM/AuDiOcOnSoLe/AuDiOcOnSoLe.gen/sources_1/bd/BlockDesign/ip/BlockDesign_MovingAverageFilter_0_0/BlockDesign_MovingAverageFilter_0_0_stub.vhdl}
-- Design      : BlockDesign_MovingAverageFilter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BlockDesign_MovingAverageFilter_0_0 is
  Port ( 
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

end BlockDesign_MovingAverageFilter_0_0;

architecture stub of BlockDesign_MovingAverageFilter_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,S_AXIS_TVALID,S_AXIS_TDATA[23:0],S_AXIS_TREADY,S_AXIS_TLAST,M_AXIS_TREADY,M_AXIS_TDATA[23:0],M_AXIS_TLAST,M_AXIS_TVALID,filter_enable";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "MovingAverageFilter,Vivado 2020.2";
begin
end;

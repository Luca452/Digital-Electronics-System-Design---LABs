#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
# 

<<<<<<< HEAD
echo "This script was generated under a different operating system."
echo "Please update the PATH and LD_LIBRARY_PATH variables below, before executing this script"
exit

if [ -z "$PATH" ]; then
  PATH=C:/Xilinx/Vivado/2020.2/ids_lite/ISE/bin/nt64;C:/Xilinx/Vivado/2020.2/ids_lite/ISE/lib/nt64:C:/Xilinx/Vivado/2020.2/bin
else
  PATH=C:/Xilinx/Vivado/2020.2/ids_lite/ISE/bin/nt64;C:/Xilinx/Vivado/2020.2/ids_lite/ISE/lib/nt64:C:/Xilinx/Vivado/2020.2/bin:$PATH
=======
if [ -z "$PATH" ]; then
  PATH=/opt/Xilinx/Vivado/2020.2/ids_lite/ISE/bin/lin64:/opt/Xilinx/Vivado/2020.2/bin
else
  PATH=/opt/Xilinx/Vivado/2020.2/ids_lite/ISE/bin/lin64:/opt/Xilinx/Vivado/2020.2/bin:$PATH
>>>>>>> 52af1fa826306e8084a8722fa077dc0e9adaf89f
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

<<<<<<< HEAD
HD_PWD='C:/Users/daido/Desktop/Polimi/Anno 4/DESD/Git/KittCarPWM/Joystick_SPI_tester/Joystick_SPI_tester.runs/impl_1'
=======
HD_PWD='/home/stexo/Nextcloud/uni/Polimi/8_Semester/DESD/labs/DESD_LABS/Joystick_SPI_tester/Joystick_SPI_tester.runs/impl_1'
>>>>>>> 52af1fa826306e8084a8722fa077dc0e9adaf89f
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

# pre-commands:
/bin/touch .init_design.begin.rst
EAStep vivado -log joysticktester_wrapper.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source joysticktester_wrapper.tcl -notrace



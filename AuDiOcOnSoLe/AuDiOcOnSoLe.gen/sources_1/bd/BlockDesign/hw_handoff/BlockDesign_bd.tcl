
################################################################
# This is a generated script based on design: BlockDesign
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source BlockDesign_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# BalanceController, Debouncer, Debouncer, EdgeDetector, EdgeDetector, LedController, MobileMean, MuteController, VolumeController, digilent_jstk2

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35tcpg236-1
   set_property BOARD_PART digilentinc.com:basys3:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name BlockDesign

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set SPI_M_1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:spi_rtl:1.0 SPI_M_1 ]


  # Create ports
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $reset
  set rx_lrck_1 [ create_bd_port -dir O rx_lrck_1 ]
  set rx_mclk_1 [ create_bd_port -dir O rx_mclk_1 ]
  set rx_sclk_1 [ create_bd_port -dir O rx_sclk_1 ]
  set rx_sdin_0 [ create_bd_port -dir I rx_sdin_0 ]
  set sys_clock [ create_bd_port -dir I -type clk -freq_hz 100000000 sys_clock ]
  set_property -dict [ list \
   CONFIG.PHASE {0.000} \
 ] $sys_clock
  set tx_lrck_1 [ create_bd_port -dir O tx_lrck_1 ]
  set tx_mclk_1 [ create_bd_port -dir O tx_mclk_1 ]
  set tx_sclk_1 [ create_bd_port -dir O tx_sclk_1 ]
  set tx_sdout_1 [ create_bd_port -dir O tx_sdout_1 ]

  # Create instance: BalanceController_0, and set properties
  set block_name BalanceController
  set block_cell_name BalanceController_0
  if { [catch {set BalanceController_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $BalanceController_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.BALANCE_BITS {10} \
   CONFIG.N_BALANCE {6} \
 ] $BalanceController_0

  # Create instance: Debouncer_0, and set properties
  set block_name Debouncer
  set block_cell_name Debouncer_0
  if { [catch {set Debouncer_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Debouncer_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.DEBOUNCE_MS {1} \
 ] $Debouncer_0

  # Create instance: Debouncer_1, and set properties
  set block_name Debouncer
  set block_cell_name Debouncer_1
  if { [catch {set Debouncer_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Debouncer_1 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.DEBOUNCE_MS {1} \
 ] $Debouncer_1

  # Create instance: EdgeDetector_0, and set properties
  set block_name EdgeDetector
  set block_cell_name EdgeDetector_0
  if { [catch {set EdgeDetector_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $EdgeDetector_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: EdgeDetector_1, and set properties
  set block_name EdgeDetector
  set block_cell_name EdgeDetector_1
  if { [catch {set EdgeDetector_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $EdgeDetector_1 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: LedController_0, and set properties
  set block_name LedController
  set block_cell_name LedController_0
  if { [catch {set LedController_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $LedController_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: MobileMean_0, and set properties
  set block_name MobileMean
  set block_cell_name MobileMean_0
  if { [catch {set MobileMean_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $MobileMean_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.AVERAGING_WINDOW_SIZE {32} \
 ] $MobileMean_0

  # Create instance: MuteController_0, and set properties
  set block_name MuteController
  set block_cell_name MuteController_0
  if { [catch {set MuteController_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $MuteController_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: VolumeController_0, and set properties
  set block_name VolumeController
  set block_cell_name VolumeController_0
  if { [catch {set VolumeController_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $VolumeController_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.N_VOLUME {6} \
 ] $VolumeController_0

  # Create instance: axi4stream_spi_master_1, and set properties
  set axi4stream_spi_master_1 [ create_bd_cell -type ip -vlnv DigiLAB:ip:axi4stream_spi_master:1.0 axi4stream_spi_master_1 ]
  set_property -dict [ list \
   CONFIG.c_clkfreq {100000000} \
   CONFIG.c_sclkfreq {5000} \
 ] $axi4stream_spi_master_1

  # Create instance: axis_dual_i2s_1, and set properties
  set axis_dual_i2s_1 [ create_bd_cell -type ip -vlnv DigiLAB:ip:axis_dual_i2s:1.0 axis_dual_i2s_1 ]

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_DRIVES {BUFG} \
   CONFIG.CLKOUT1_JITTER {149.337} \
   CONFIG.CLKOUT1_PHASE_ERROR {122.577} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {100} \
   CONFIG.CLKOUT2_DRIVES {BUFG} \
   CONFIG.CLKOUT2_JITTER {201.826} \
   CONFIG.CLKOUT2_PHASE_ERROR {122.577} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {22.579} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_DRIVES {BUFG} \
   CONFIG.CLKOUT4_DRIVES {BUFG} \
   CONFIG.CLKOUT5_DRIVES {BUFG} \
   CONFIG.CLKOUT6_DRIVES {BUFG} \
   CONFIG.CLKOUT7_DRIVES {BUFG} \
   CONFIG.CLK_IN1_BOARD_INTERFACE {sys_clock} \
   CONFIG.FEEDBACK_SOURCE {FDBK_AUTO} \
   CONFIG.MMCM_BANDWIDTH {OPTIMIZED} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {7.000} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {7.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {31} \
   CONFIG.MMCM_COMPENSATION {ZHOLD} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {2} \
   CONFIG.PRIMITIVE {MMCM} \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $clk_wiz_0

  # Create instance: digilent_jstk2_0, and set properties
  set block_name digilent_jstk2
  set block_cell_name digilent_jstk2_0
  if { [catch {set digilent_jstk2_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $digilent_jstk2_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.CLKFREQ {100000000} \
 ] $digilent_jstk2_0

  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]

  # Create instance: proc_sys_reset_1, and set properties
  set proc_sys_reset_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_1 ]

  # Create interface connections
  connect_bd_intf_net -intf_net BalanceController_0_M_AXIS [get_bd_intf_pins BalanceController_0/M_AXIS] [get_bd_intf_pins MuteController_0/S_AXIS]
  connect_bd_intf_net -intf_net MobileMean_0_M_AXIS [get_bd_intf_pins MobileMean_0/M_AXIS] [get_bd_intf_pins VolumeController_0/S_AXIS]
  connect_bd_intf_net -intf_net MuteController_0_m_axis [get_bd_intf_pins MuteController_0/M_AXIS] [get_bd_intf_pins axis_dual_i2s_1/s_axis]
  connect_bd_intf_net -intf_net VolumeController_0_M_AXIS [get_bd_intf_pins BalanceController_0/S_AXIS] [get_bd_intf_pins VolumeController_0/M_AXIS]
  connect_bd_intf_net -intf_net axi4stream_spi_master_1_M_AXIS [get_bd_intf_pins axi4stream_spi_master_1/M_AXIS] [get_bd_intf_pins digilent_jstk2_0/s_axis]
  connect_bd_intf_net -intf_net axi4stream_spi_master_1_SPI_M [get_bd_intf_ports SPI_M_1] [get_bd_intf_pins axi4stream_spi_master_1/SPI_M]
  connect_bd_intf_net -intf_net axis_dual_i2s_1_m_axis [get_bd_intf_pins MobileMean_0/S_AXIS] [get_bd_intf_pins axis_dual_i2s_1/m_axis]
  connect_bd_intf_net -intf_net digilent_jstk2_0_m_axis [get_bd_intf_pins axi4stream_spi_master_1/S_AXIS] [get_bd_intf_pins digilent_jstk2_0/m_axis]

  # Create port connections
  connect_bd_net -net Debouncer_0_debounced [get_bd_pins Debouncer_0/debounced] [get_bd_pins EdgeDetector_0/input_signal]
  connect_bd_net -net Debouncer_1_debounced [get_bd_pins Debouncer_1/debounced] [get_bd_pins EdgeDetector_1/input_signal]
  connect_bd_net -net EdgeDetector_0_output_signal [get_bd_pins EdgeDetector_0/output_signal] [get_bd_pins LedController_0/mute_enable] [get_bd_pins MuteController_0/mute_enable]
  connect_bd_net -net EdgeDetector_1_output_signal [get_bd_pins EdgeDetector_1/output_signal] [get_bd_pins LedController_0/filter_enable] [get_bd_pins MobileMean_0/filter_enable]
  connect_bd_net -net LedController_0_led_b [get_bd_pins LedController_0/led_b] [get_bd_pins digilent_jstk2_0/led_b]
  connect_bd_net -net LedController_0_led_g [get_bd_pins LedController_0/led_g] [get_bd_pins digilent_jstk2_0/led_g]
  connect_bd_net -net LedController_0_led_r [get_bd_pins LedController_0/led_r] [get_bd_pins digilent_jstk2_0/led_r]
  connect_bd_net -net axis_dual_i2s_1_rx_lrck [get_bd_ports rx_lrck_1] [get_bd_pins axis_dual_i2s_1/rx_lrck]
  connect_bd_net -net axis_dual_i2s_1_rx_mclk [get_bd_ports rx_mclk_1] [get_bd_pins axis_dual_i2s_1/rx_mclk]
  connect_bd_net -net axis_dual_i2s_1_rx_sclk [get_bd_ports rx_sclk_1] [get_bd_pins axis_dual_i2s_1/rx_sclk]
  connect_bd_net -net axis_dual_i2s_1_tx_lrck [get_bd_ports tx_lrck_1] [get_bd_pins axis_dual_i2s_1/tx_lrck]
  connect_bd_net -net axis_dual_i2s_1_tx_mclk [get_bd_ports tx_mclk_1] [get_bd_pins axis_dual_i2s_1/tx_mclk]
  connect_bd_net -net axis_dual_i2s_1_tx_sclk [get_bd_ports tx_sclk_1] [get_bd_pins axis_dual_i2s_1/tx_sclk]
  connect_bd_net -net axis_dual_i2s_1_tx_sdout [get_bd_ports tx_sdout_1] [get_bd_pins axis_dual_i2s_1/tx_sdout]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins BalanceController_0/aclk] [get_bd_pins Debouncer_0/clk] [get_bd_pins Debouncer_1/clk] [get_bd_pins EdgeDetector_0/clk] [get_bd_pins EdgeDetector_1/clk] [get_bd_pins MobileMean_0/aclk] [get_bd_pins VolumeController_0/aclk] [get_bd_pins axi4stream_spi_master_1/aclk] [get_bd_pins axis_dual_i2s_1/aclk] [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins digilent_jstk2_0/aclk] [get_bd_pins proc_sys_reset_1/slowest_sync_clk]
  connect_bd_net -net clk_wiz_0_clk_out2 [get_bd_pins axis_dual_i2s_1/i2s_clk] [get_bd_pins clk_wiz_0/clk_out2] [get_bd_pins proc_sys_reset_0/slowest_sync_clk]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins clk_wiz_0/locked] [get_bd_pins proc_sys_reset_0/dcm_locked] [get_bd_pins proc_sys_reset_1/dcm_locked]
  connect_bd_net -net digilent_jstk2_0_btn_jstk [get_bd_pins Debouncer_1/input_signal] [get_bd_pins digilent_jstk2_0/btn_jstk]
  connect_bd_net -net digilent_jstk2_0_btn_trigger [get_bd_pins Debouncer_0/input_signal] [get_bd_pins digilent_jstk2_0/btn_trigger]
  connect_bd_net -net digilent_jstk2_0_jstk_x [get_bd_pins BalanceController_0/balance] [get_bd_pins digilent_jstk2_0/jstk_x]
  connect_bd_net -net digilent_jstk2_0_jstk_y [get_bd_pins VolumeController_0/volume] [get_bd_pins digilent_jstk2_0/jstk_y]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins axis_dual_i2s_1/i2s_resetn] [get_bd_pins proc_sys_reset_0/peripheral_aresetn]
  connect_bd_net -net proc_sys_reset_1_peripheral_aresetn [get_bd_pins BalanceController_0/aresetn] [get_bd_pins MobileMean_0/aresetn] [get_bd_pins VolumeController_0/aresetn] [get_bd_pins axi4stream_spi_master_1/aresetn] [get_bd_pins axis_dual_i2s_1/aresetn] [get_bd_pins digilent_jstk2_0/aresetn] [get_bd_pins proc_sys_reset_1/peripheral_aresetn]
  connect_bd_net -net proc_sys_reset_1_peripheral_reset [get_bd_pins Debouncer_0/reset] [get_bd_pins Debouncer_1/reset] [get_bd_pins EdgeDetector_0/rst] [get_bd_pins EdgeDetector_1/rst] [get_bd_pins proc_sys_reset_1/peripheral_reset]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins clk_wiz_0/reset] [get_bd_pins proc_sys_reset_0/ext_reset_in] [get_bd_pins proc_sys_reset_1/ext_reset_in]
  connect_bd_net -net rx_sdin_0_1 [get_bd_ports rx_sdin_0] [get_bd_pins axis_dual_i2s_1/rx_sdin]
  connect_bd_net -net sys_clock_1 [get_bd_ports sys_clock] [get_bd_pins clk_wiz_0/clk_in1]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""



# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "AXIS_TDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "N_VOLUME" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VOLUME_BITS" -parent ${Page_0}


}

proc update_PARAM_VALUE.AXIS_TDATA_WIDTH { PARAM_VALUE.AXIS_TDATA_WIDTH } {
	# Procedure called to update AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXIS_TDATA_WIDTH { PARAM_VALUE.AXIS_TDATA_WIDTH } {
	# Procedure called to validate AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.N_VOLUME { PARAM_VALUE.N_VOLUME } {
	# Procedure called to update N_VOLUME when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.N_VOLUME { PARAM_VALUE.N_VOLUME } {
	# Procedure called to validate N_VOLUME
	return true
}

proc update_PARAM_VALUE.VOLUME_BITS { PARAM_VALUE.VOLUME_BITS } {
	# Procedure called to update VOLUME_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VOLUME_BITS { PARAM_VALUE.VOLUME_BITS } {
	# Procedure called to validate VOLUME_BITS
	return true
}


proc update_MODELPARAM_VALUE.AXIS_TDATA_WIDTH { MODELPARAM_VALUE.AXIS_TDATA_WIDTH PARAM_VALUE.AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.VOLUME_BITS { MODELPARAM_VALUE.VOLUME_BITS PARAM_VALUE.VOLUME_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VOLUME_BITS}] ${MODELPARAM_VALUE.VOLUME_BITS}
}

proc update_MODELPARAM_VALUE.N_VOLUME { MODELPARAM_VALUE.N_VOLUME PARAM_VALUE.N_VOLUME } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.N_VOLUME}] ${MODELPARAM_VALUE.N_VOLUME}
}


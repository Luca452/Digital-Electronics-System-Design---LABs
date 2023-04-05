set_property PACKAGE_PIN L2 [get_ports SPI_M_0_io0_io]
set_property PACKAGE_PIN G2 [get_ports SPI_M_0_sck_io]
set_property PACKAGE_PIN J1 [get_ports SPI_M_0_ss_io]
set_property IOSTANDARD LVCMOS33 [get_ports usb_uart_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports usb_uart_txd]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_M_0_io0_io]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_M_0_io1_io]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_M_0_sck_io]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_M_0_ss_io]



set_property PACKAGE_PIN J2 [get_ports SPI_M_0_io1_io]

set_property MARK_DEBUG false [get_nets SPI_M_0_io1_o]

set_property MARK_DEBUG true [get_nets {test_UART_packet_i/digilent_jstk2_0_m_axis_TDATA[0]}]
set_property MARK_DEBUG true [get_nets {test_UART_packet_i/digilent_jstk2_0_m_axis_TDATA[1]}]
set_property MARK_DEBUG true [get_nets {test_UART_packet_i/digilent_jstk2_0_m_axis_TDATA[2]}]
set_property MARK_DEBUG true [get_nets {test_UART_packet_i/digilent_jstk2_0_m_axis_TDATA[3]}]
set_property MARK_DEBUG true [get_nets {test_UART_packet_i/digilent_jstk2_0_m_axis_TDATA[4]}]
set_property MARK_DEBUG true [get_nets {test_UART_packet_i/digilent_jstk2_0_m_axis_TDATA[5]}]
set_property MARK_DEBUG true [get_nets {test_UART_packet_i/digilent_jstk2_0_m_axis_TDATA[6]}]
set_property MARK_DEBUG true [get_nets {test_UART_packet_i/digilent_jstk2_0_m_axis_TDATA[7]}]


set_property MARK_DEBUG false [get_nets SPI_M_0_io0_o]
set_property MARK_DEBUG false [get_nets SPI_M_0_sck_o]
set_property MARK_DEBUG false [get_nets SPI_M_0_ss_o]
set_property MARK_DEBUG false [get_nets SPI_M_0_io1_i]

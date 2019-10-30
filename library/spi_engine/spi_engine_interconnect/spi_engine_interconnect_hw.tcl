
package require qsys
source ../../scripts/adi_env.tcl
source ../../scripts/adi_ip_intel.tcl

ad_ip_create spi_engine_interconnect {SPI Engine Interconnect} p_elaboration
ad_ip_files spi_engine_execution [list\
  spi_engine_interconnect.v]

# parameters

ad_ip_parameter DATA_WIDTH INTEGER 8
ad_ip_parameter NUM_OF_SDI INTEGER 1

proc p_elaboration {} {

  set data_width [get_parameter_value DATA_WIDTH]
  set num_of_sdi [get_parameter_value NUM_OF_SDI]

  # clock and reset interface

  ad_interface clock clk input 1
  ad_interface reset resestn input 1 if_clk

  # command master interface

  add_interface m_cmd_if axi4stream start
  add_interface_port m_cmd_if m_cmd_ready tready input 1
  add_interface_port m_cmd_if m_cmd_valid tvalid output 1
  add_interface_port m_cmd_if m_cmd tdata output 16

  set_interface_property m_cmd_if associatedClock if_clk
  set_interface_property m_cmd_if associatedReset if_resestn

  # SDO data master interface

  add_interface m_sdo_if axi4stream start
  add_interface_port m_sdo_if m_sdo_data_ready tready input 1
  add_interface_port m_sdo_if m_sdo_data_valid tvalid output 1
  add_interface_port m_sdo_if m_sdo_data tdata output $data_width

  set_interface_property m_sdo_if associatedClock if_clk
  set_interface_property m_sdo_if associatedReset if_resestn

  # SDI data master interface

  add_interface m_sdi_if axi4stream end
  add_interface_port m_sdi_if m_sdi_data_ready tready output 1
  add_interface_port m_sdi_if m_sdi_data_valid tvalid input 1
  add_interface_port m_sdi_if m_sdi_data tdata input [expr $num_of_sdi * $data_width]

  set_interface_property m_sdi_if associatedClock if_clk
  set_interface_property m_sdi_if associatedReset if_resestn

  # SYNC master interface

  add_interface m_sync_if axi4stream end
  add_interface_port m_sync_if m_sync_data_valid tvalid input 1
  add_interface_port m_sync_if m_sync_data_ready tready output 1
  add_interface_port m_sync_if m_sync_data tdata input 8

  set_interface_property m_sync_if associatedClock if_clk
  set_interface_property m_sync_if associatedReset if_resestn

  # command slave0 interface

  add_interface s0_cmd_if axi4stream end
  add_interface_port s0_cmd_if s0_cmd_ready tready output 1
  add_interface_port s0_cmd_if s0_cmd_valid tvalid input 1
  add_interface_port s0_cmd_if s0_cmd tdata input 16

  set_interface_property s0_cmd_if associatedClock if_clk
  set_interface_property s0_cmd_if associatedReset if_resestn

  # SDO data slave0 interface

  add_interface s0_sdo_if axi4stream end
  add_interface_port s0_sdo_if s0_sdo_data_ready tready output 1
  add_interface_port s0_sdo_if s0_sdo_data_valid tvalid input 1
  add_interface_port s0_sdo_if s0_sdo_data tdata input $data_width

  set_interface_property s0_sdo_if associatedClock if_clk
  set_interface_property s0_sdo_if associatedReset if_resestn

  # SDI data slave0 interface

  add_interface s0_sdi_if axi4stream start
  add_interface_port s0_sdi_if s0_sdi_data_ready tready input 1
  add_interface_port s0_sdi_if s0_sdi_data_valid tvalid output 1
  add_interface_port s0_sdi_if s0_sdi_data tdata output [expr $num_of_sdi * $data_width]

  set_interface_property s0_sdi_if associatedClock if_clk
  set_interface_property s0_sdi_if associatedReset if_resestn

  # SYNC slave0 interface

  add_interface s0_sync_if axi4stream start
  add_interface_port s0_sync_if s0_sync_data_valid tvalid output 1
  add_interface_port s0_sync_if s0_sync_data_ready tready input 1
  add_interface_port s0_sync_if s0_sync_data tdata output 8

  set_interface_property s0_sync_if associatedClock if_clk
  set_interface_property s0_sync_if associatedReset if_resestn

  # command slave1 interface

  add_interface s1_cmd_if axi4stream end
  add_interface_port s1_cmd_if s1_cmd_ready tready output 1
  add_interface_port s1_cmd_if s1_cmd_valid tvalid input 1
  add_interface_port s1_cmd_if s1_cmd tdata input 16

  set_interface_property s1_cmd_if associatedClock if_clk
  set_interface_property s1_cmd_if associatedReset if_resestn

  # SDO data slave1 interface

  add_interface s1_sdo_if axi4stream end
  add_interface_port s1_sdo_if s1_sdo_data_ready tready output 1
  add_interface_port s1_sdo_if s1_sdo_data_valid tvalid input 1
  add_interface_port s1_sdo_if s1_sdo_data tdata input $data_width

  set_interface_property s1_sdo_if associatedClock if_clk
  set_interface_property s1_sdo_if associatedReset if_resestn

  # SDI data slave1 interface

  add_interface s1_sdi_if axi4stream start
  add_interface_port s1_sdi_if s1_sdi_data_ready tready input 1
  add_interface_port s1_sdi_if s1_sdi_data_valid tvalid output 1
  add_interface_port s1_sdi_if s1_sdi_data tdata output [expr $num_of_sdi * $data_width]

  set_interface_property s1_sdi_if associatedClock if_clk
  set_interface_property s1_sdi_if associatedReset if_resestn

  # SYNC slave1 interface

  add_interface s1_sync_if axi4stream start
  add_interface_port s1_sync_if s1_sync_data_valid tvalid output 1
  add_interface_port s1_sync_if s1_sync_data_ready tready input 1
  add_interface_port s1_sync_if s1_sync_data tdata output 8

  set_interface_property s1_sync_if associatedClock if_clk
  set_interface_property s1_sync_if associatedReset if_resestn

}


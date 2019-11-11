// ***************************************************************************
// ***************************************************************************
// Copyright 2014 - 2017 (c) Analog Devices, Inc. All rights reserved.
//
// In this HDL repository, there are many different and unique modules, consisting
// of various HDL (Verilog or VHDL) components. The individual modules are
// developed independently, and may be accompanied by separate and unique license
// terms.
//
// The user should read each of these license terms, and understand the
// freedoms and responsabilities that he or she has by using this source/core.
//
// This core is distributed in the hope that it will be useful, but WITHOUT ANY
// WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
// A PARTICULAR PURPOSE.
//
// Redistribution and use of source or resulting binaries, with or without modification
// of this file, are permitted under one of the following two license terms:
//
//   1. The GNU General Public License version 2 as published by the
//      Free Software Foundation, which can be found in the top level directory
//      of this repository (LICENSE_GPL2), and also online at:
//      <https://www.gnu.org/licenses/old-licenses/gpl-2.0.html>
//
// OR
//
//   2. An ADI specific BSD license, which can be found in the top level directory
//      of this repository (LICENSE_ADIBSD), and also on-line at:
//      https://github.com/analogdevicesinc/hdl/blob/master/LICENSE_ADIBSD
//      This will allow to generate bit files and not release the source code,
//      as long as it attaches to an ADI device.
//
// ***************************************************************************
// ***************************************************************************

`timescale 1ns/100ps

module system_top (

  // clock and resets

  input            sys_clk,

  // hps-ddr

  output  [14:0]   ddr3_a,
  output  [ 2:0]   ddr3_ba,
  output           ddr3_reset_n,
  output           ddr3_ck_p,
  output           ddr3_ck_n,
  output           ddr3_cke,
  output           ddr3_cs_n,
  output           ddr3_ras_n,
  output           ddr3_cas_n,
  output           ddr3_we_n,
  inout   [31:0]   ddr3_dq,
  inout   [ 3:0]   ddr3_dqs_p,
  inout   [ 3:0]   ddr3_dqs_n,
  output  [ 3:0]   ddr3_dm,
  output           ddr3_odt,
  input            ddr3_rzq,
  
  inout            fixed_io_ddr_vrn,
  inout            fixed_io_ddr_vrp,
  inout   [53:0]   fixed_io_mio,
  inout            fixed_io_ps_clk,
  inout            fixed_io_ps_porb,
  inout            fixed_io_ps_srstb,

  inout            ad77681_reset,
  inout            ad77681_sync_in,
  
  inout            ad77681_fda_dis,
  inout            ad77681_fda_mode,
  inout            ad77681_dac_buf_en,
 
  input            ad77681_spi_miso,
  output           ad77681_spi_mosi,
  output           ad77681_spi_sclk,
  output           ad77681_spi_cs,
  input            ad77681_drdy);

  // internal signals

  wire             sys_resetn;
  wire    [63:0]   gpio_i;
  wire    [63:0]   gpio_o;
  wire    [63:0]   gpio_oe;

  // instantiations
  
  assign gpio_i[31:0] = gpio_o[31:0];
  assign gpio_i[63:37] = gpio_o[63:37];

  ALT_IOBUF iobuf_ad77681_gpio (
    .i  (gpio_i[36:32]),
    .oe  (gpio_oe[36:32]),
    .o  (gpio_o[36:32]),
    .io ({
	     ad77681_fda_dis,
         ad77681_fda_mode,
         ad77681_dac_buf_en,
         ad77681_sync_in,
         ad77681_reset}));


  system_bd i_system_bd (
    .sys_clk_clk (sys_clk),
    .sys_hps_h2f_reset_reset_n (sys_resetn),
    .sys_hps_irq_in_irq (1'd0),
    .sys_hps_memory_mem_a (ddr3_a),
    .sys_hps_memory_mem_ba (ddr3_ba),
    .sys_hps_memory_mem_ck (ddr3_ck_p),
    .sys_hps_memory_mem_ck_n (ddr3_ck_n),
    .sys_hps_memory_mem_cke (ddr3_cke),
    .sys_hps_memory_mem_cs_n (ddr3_cs_n),
    .sys_hps_memory_mem_ras_n (ddr3_ras_n),
    .sys_hps_memory_mem_cas_n (ddr3_cas_n),
    .sys_hps_memory_mem_we_n (ddr3_we_n),
    .sys_hps_memory_mem_reset_n (ddr3_reset_n),
    .sys_hps_memory_mem_dq (ddr3_dq),
    .sys_hps_memory_mem_dqs (ddr3_dqs_p),
    .sys_hps_memory_mem_dqs_n (ddr3_dqs_n),
    .sys_hps_memory_mem_odt (ddr3_odt),
    .sys_hps_memory_mem_dm (ddr3_dm),
    .sys_hps_memory_oct_rzqin (ddr3_rzq),
    .sys_rst_reset_n (sys_resetn),
	.fixed_io_ddr_vrn (fixed_io_ddr_vrn),
    .fixed_io_ddr_vrp (fixed_io_ddr_vrp),
    .fixed_io_mio (fixed_io_mio),
    .fixed_io_ps_clk (fixed_io_ps_clk),
    .fixed_io_ps_porb (fixed_io_ps_porb),
    .fixed_io_ps_srstb (fixed_io_ps_srstb),
    .gpio_i (gpio_i),
    .gpio_o (gpio_o),
    .gpio_oe (gpio_oe),
    .adc_spi_sdo (ad77681_spi_mosi),
    .adc_spi_sdo_t (),
    .adc_spi_sdi (ad77681_spi_miso),
    .adc_spi_cs (ad77681_spi_cs),
    .adc_spi_sclk (ad77681_spi_sclk),
    .adc_data_ready (ad77681_drdy),
	.spi0_clk_i (1'b0),
    .spi0_clk_o (),
    .spi0_csn_0_o (),
    .spi0_csn_1_o (),
    .spi0_csn_2_o (),
    .spi0_csn_i (1'b1),
    .spi0_sdi_i (1'b0),
    .spi0_sdo_i (1'b0),
    .spi0_sdo_o (),
    .spi1_clk_i (1'b0),
    .spi1_clk_o (),
    .spi1_csn_0_o (),
    .spi1_csn_1_o (),
    .spi1_csn_2_o (),
    .spi1_csn_i (1'b1),
    .spi1_sdi_i (1'b0),
    .spi1_sdo_i (1'b0),
    .spi1_sdo_o());

endmodule

// ***************************************************************************
// ***************************************************************************

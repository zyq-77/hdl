# _hw.tcl file for system_bd
package require -exact qsys 14.0

# module properties
set_module_property NAME {system_bd_export}
set_module_property DISPLAY_NAME {system_bd_export_display}

# default module properties
set_module_property VERSION {1.0}
set_module_property GROUP {default group}
set_module_property DESCRIPTION {default description}
set_module_property AUTHOR {author}

set_module_property COMPOSITION_CALLBACK compose
set_module_property opaque_address_map false

proc compose { } {
    # Instances and instance parameters
    # (disabled instances are intentionally culled)
    add_instance axi_spi_engine_0 axi_spi_engine 1.0
    set_instance_parameter_value axi_spi_engine_0 {ASYNC_SPI_CLK} {0}
    set_instance_parameter_value axi_spi_engine_0 {CMD_FIFO_ADDRESS_WIDTH} {4}
    set_instance_parameter_value axi_spi_engine_0 {DATA_WIDTH} {32}
    set_instance_parameter_value axi_spi_engine_0 {ID} {0}
    set_instance_parameter_value axi_spi_engine_0 {MM_IF_TYPE} {0}
    set_instance_parameter_value axi_spi_engine_0 {NUM_OFFLOAD} {1}
    set_instance_parameter_value axi_spi_engine_0 {NUM_OF_SDI} {1}
    set_instance_parameter_value axi_spi_engine_0 {OFFLOAD0_CMD_MEM_ADDRESS_WIDTH} {4}
    set_instance_parameter_value axi_spi_engine_0 {OFFLOAD0_SDO_MEM_ADDRESS_WIDTH} {4}
    set_instance_parameter_value axi_spi_engine_0 {SDI_FIFO_ADDRESS_WIDTH} {5}
    set_instance_parameter_value axi_spi_engine_0 {SDO_FIFO_ADDRESS_WIDTH} {5}
    set_instance_parameter_value axi_spi_engine_0 {UP_ADDRESS_WIDTH} {14}

    add_instance spi_engine_execution_0 spi_engine_execution 1.0
    set_instance_parameter_value spi_engine_execution_0 {DATA_WIDTH} {32}
    set_instance_parameter_value spi_engine_execution_0 {DEFAULT_SPI_CFG} {0}
    set_instance_parameter_value spi_engine_execution_0 {DEFAULT_SPI_DIV} {0}
    set_instance_parameter_value spi_engine_execution_0 {NUM_OF_CS} {1}
    set_instance_parameter_value spi_engine_execution_0 {NUM_OF_SDI} {1}

    add_instance spi_engine_interconnect_0 spi_engine_interconnect 1.0
    set_instance_parameter_value spi_engine_interconnect_0 {DATA_WIDTH} {32}
    set_instance_parameter_value spi_engine_interconnect_0 {NUM_OF_SDI} {1}

    add_instance spi_engine_offload_0 spi_engine_offload 1.0
    set_instance_parameter_value spi_engine_offload_0 {ASYNC_SPI_CLK} {0}
    set_instance_parameter_value spi_engine_offload_0 {ASYNC_TRIG} {1}
    set_instance_parameter_value spi_engine_offload_0 {CMD_MEM_ADDRESS_WIDTH} {4}
    set_instance_parameter_value spi_engine_offload_0 {DATA_WIDTH} {32}
    set_instance_parameter_value spi_engine_offload_0 {NUM_OF_SDI} {1}
    set_instance_parameter_value spi_engine_offload_0 {SDO_MEM_ADDRESS_WIDTH} {4}

    add_instance sys_clk clock_source 18.1
    set_instance_parameter_value sys_clk {clockFrequency} {50000000.0}
    set_instance_parameter_value sys_clk {clockFrequencyKnown} {1}
    set_instance_parameter_value sys_clk {resetSynchronousEdges} {NONE}

    add_instance sys_dma_clk clock_source 18.1
    set_instance_parameter_value sys_dma_clk {clockFrequency} {50000000.0}
    set_instance_parameter_value sys_dma_clk {clockFrequencyKnown} {1}
    set_instance_parameter_value sys_dma_clk {resetSynchronousEdges} {NONE}

    add_instance sys_gpio_bd altera_avalon_pio 18.1
    set_instance_parameter_value sys_gpio_bd {bitClearingEdgeCapReg} {0}
    set_instance_parameter_value sys_gpio_bd {bitModifyingOutReg} {0}
    set_instance_parameter_value sys_gpio_bd {captureEdge} {0}
    set_instance_parameter_value sys_gpio_bd {direction} {InOut}
    set_instance_parameter_value sys_gpio_bd {edgeType} {RISING}
    set_instance_parameter_value sys_gpio_bd {generateIRQ} {1}
    set_instance_parameter_value sys_gpio_bd {irqType} {LEVEL}
    set_instance_parameter_value sys_gpio_bd {resetValue} {0.0}
    set_instance_parameter_value sys_gpio_bd {simDoTestBenchWiring} {0}
    set_instance_parameter_value sys_gpio_bd {simDrivenValue} {0.0}
    set_instance_parameter_value sys_gpio_bd {width} {32}

    add_instance sys_gpio_in altera_avalon_pio 18.1
    set_instance_parameter_value sys_gpio_in {bitClearingEdgeCapReg} {0}
    set_instance_parameter_value sys_gpio_in {bitModifyingOutReg} {0}
    set_instance_parameter_value sys_gpio_in {captureEdge} {0}
    set_instance_parameter_value sys_gpio_in {direction} {Input}
    set_instance_parameter_value sys_gpio_in {edgeType} {RISING}
    set_instance_parameter_value sys_gpio_in {generateIRQ} {1}
    set_instance_parameter_value sys_gpio_in {irqType} {LEVEL}
    set_instance_parameter_value sys_gpio_in {resetValue} {0.0}
    set_instance_parameter_value sys_gpio_in {simDoTestBenchWiring} {0}
    set_instance_parameter_value sys_gpio_in {simDrivenValue} {0.0}
    set_instance_parameter_value sys_gpio_in {width} {32}

    add_instance sys_gpio_out altera_avalon_pio 18.1
    set_instance_parameter_value sys_gpio_out {bitClearingEdgeCapReg} {0}
    set_instance_parameter_value sys_gpio_out {bitModifyingOutReg} {0}
    set_instance_parameter_value sys_gpio_out {captureEdge} {0}
    set_instance_parameter_value sys_gpio_out {direction} {Output}
    set_instance_parameter_value sys_gpio_out {edgeType} {RISING}
    set_instance_parameter_value sys_gpio_out {generateIRQ} {0}
    set_instance_parameter_value sys_gpio_out {irqType} {LEVEL}
    set_instance_parameter_value sys_gpio_out {resetValue} {0.0}
    set_instance_parameter_value sys_gpio_out {simDoTestBenchWiring} {0}
    set_instance_parameter_value sys_gpio_out {simDrivenValue} {0.0}
    set_instance_parameter_value sys_gpio_out {width} {32}

    add_instance sys_hps altera_hps 18.1
    set_instance_parameter_value sys_hps {ABSTRACT_REAL_COMPARE_TEST} {0}
    set_instance_parameter_value sys_hps {ABS_RAM_MEM_INIT_FILENAME} {meminit}
    set_instance_parameter_value sys_hps {ACV_PHY_CLK_ADD_FR_PHASE} {0.0}
    set_instance_parameter_value sys_hps {AC_PACKAGE_DESKEW} {0}
    set_instance_parameter_value sys_hps {AC_ROM_USER_ADD_0} {0_0000_0000_0000}
    set_instance_parameter_value sys_hps {AC_ROM_USER_ADD_1} {0_0000_0000_1000}
    set_instance_parameter_value sys_hps {ADDR_ORDER} {0}
    set_instance_parameter_value sys_hps {ADD_EFFICIENCY_MONITOR} {0}
    set_instance_parameter_value sys_hps {ADD_EXTERNAL_SEQ_DEBUG_NIOS} {0}
    set_instance_parameter_value sys_hps {ADVANCED_CK_PHASES} {0}
    set_instance_parameter_value sys_hps {ADVERTIZE_SEQUENCER_SW_BUILD_FILES} {0}
    set_instance_parameter_value sys_hps {AFI_DEBUG_INFO_WIDTH} {32}
    set_instance_parameter_value sys_hps {ALTMEMPHY_COMPATIBLE_MODE} {0}
    set_instance_parameter_value sys_hps {AP_MODE} {0}
    set_instance_parameter_value sys_hps {AP_MODE_EN} {0}
    set_instance_parameter_value sys_hps {AUTO_PD_CYCLES} {0}
    set_instance_parameter_value sys_hps {AUTO_POWERDN_EN} {0}
    set_instance_parameter_value sys_hps {AVL_DATA_WIDTH_PORT} {32 32 32 32 32 32}
    set_instance_parameter_value sys_hps {AVL_MAX_SIZE} {4}
    set_instance_parameter_value sys_hps {BONDING_OUT_ENABLED} {0}
    set_instance_parameter_value sys_hps {BOOTFROMFPGA_Enable} {0}
    set_instance_parameter_value sys_hps {BSEL} {1}
    set_instance_parameter_value sys_hps {BSEL_EN} {0}
    set_instance_parameter_value sys_hps {BYTE_ENABLE} {1}
    set_instance_parameter_value sys_hps {C2P_WRITE_CLOCK_ADD_PHASE} {0.0}
    set_instance_parameter_value sys_hps {CALIBRATION_MODE} {Skip}
    set_instance_parameter_value sys_hps {CALIB_REG_WIDTH} {8}
    set_instance_parameter_value sys_hps {CAN0_Mode} {N/A}
    set_instance_parameter_value sys_hps {CAN0_PinMuxing} {Unused}
    set_instance_parameter_value sys_hps {CAN1_Mode} {N/A}
    set_instance_parameter_value sys_hps {CAN1_PinMuxing} {Unused}
    set_instance_parameter_value sys_hps {CFG_DATA_REORDERING_TYPE} {INTER_BANK}
    set_instance_parameter_value sys_hps {CFG_REORDER_DATA} {1}
    set_instance_parameter_value sys_hps {CFG_TCCD_NS} {2.5}
    set_instance_parameter_value sys_hps {COMMAND_PHASE} {0.0}
    set_instance_parameter_value sys_hps {CONTROLLER_LATENCY} {5}
    set_instance_parameter_value sys_hps {CORE_DEBUG_CONNECTION} {EXPORT}
    set_instance_parameter_value sys_hps {CPORT_TYPE_PORT} {Bidirectional Bidirectional Bidirectional Bidirectional Bidirectional Bidirectional}
    set_instance_parameter_value sys_hps {CSEL} {0}
    set_instance_parameter_value sys_hps {CSEL_EN} {0}
    set_instance_parameter_value sys_hps {CTI_Enable} {0}
    set_instance_parameter_value sys_hps {CTL_AUTOPCH_EN} {0}
    set_instance_parameter_value sys_hps {CTL_CMD_QUEUE_DEPTH} {8}
    set_instance_parameter_value sys_hps {CTL_CSR_CONNECTION} {INTERNAL_JTAG}
    set_instance_parameter_value sys_hps {CTL_CSR_ENABLED} {0}
    set_instance_parameter_value sys_hps {CTL_CSR_READ_ONLY} {1}
    set_instance_parameter_value sys_hps {CTL_DEEP_POWERDN_EN} {0}
    set_instance_parameter_value sys_hps {CTL_DYNAMIC_BANK_ALLOCATION} {0}
    set_instance_parameter_value sys_hps {CTL_DYNAMIC_BANK_NUM} {4}
    set_instance_parameter_value sys_hps {CTL_ECC_AUTO_CORRECTION_ENABLED} {0}
    set_instance_parameter_value sys_hps {CTL_ECC_ENABLED} {0}
    set_instance_parameter_value sys_hps {CTL_ENABLE_BURST_INTERRUPT} {0}
    set_instance_parameter_value sys_hps {CTL_ENABLE_BURST_TERMINATE} {0}
    set_instance_parameter_value sys_hps {CTL_HRB_ENABLED} {0}
    set_instance_parameter_value sys_hps {CTL_LOOK_AHEAD_DEPTH} {4}
    set_instance_parameter_value sys_hps {CTL_SELF_REFRESH_EN} {0}
    set_instance_parameter_value sys_hps {CTL_USR_REFRESH_EN} {0}
    set_instance_parameter_value sys_hps {CTL_ZQCAL_EN} {0}
    set_instance_parameter_value sys_hps {CUT_NEW_FAMILY_TIMING} {1}
    set_instance_parameter_value sys_hps {DAT_DATA_WIDTH} {32}
    set_instance_parameter_value sys_hps {DEBUGAPB_Enable} {0}
    set_instance_parameter_value sys_hps {DEBUG_MODE} {0}
    set_instance_parameter_value sys_hps {DEVICE_DEPTH} {1}
    set_instance_parameter_value sys_hps {DEVICE_FAMILY_PARAM} {}
    set_instance_parameter_value sys_hps {DISABLE_CHILD_MESSAGING} {0}
    set_instance_parameter_value sys_hps {DISCRETE_FLY_BY} {1}
    set_instance_parameter_value sys_hps {DLL_SHARING_MODE} {None}
    set_instance_parameter_value sys_hps {DMA_Enable} {No No No No No No No No}
    set_instance_parameter_value sys_hps {DQS_DQSN_MODE} {DIFFERENTIAL}
    set_instance_parameter_value sys_hps {DQ_INPUT_REG_USE_CLKN} {0}
    set_instance_parameter_value sys_hps {DUPLICATE_AC} {0}
    set_instance_parameter_value sys_hps {ED_EXPORT_SEQ_DEBUG} {0}
    set_instance_parameter_value sys_hps {EMAC0_Mode} {N/A}
    set_instance_parameter_value sys_hps {EMAC0_PTP} {0}
    set_instance_parameter_value sys_hps {EMAC0_PinMuxing} {Unused}
    set_instance_parameter_value sys_hps {EMAC1_Mode} {RGMII}
    set_instance_parameter_value sys_hps {EMAC1_PTP} {0}
    set_instance_parameter_value sys_hps {EMAC1_PinMuxing} {HPS I/O Set 0}
    set_instance_parameter_value sys_hps {ENABLE_ABS_RAM_MEM_INIT} {0}
    set_instance_parameter_value sys_hps {ENABLE_BONDING} {0}
    set_instance_parameter_value sys_hps {ENABLE_BURST_MERGE} {0}
    set_instance_parameter_value sys_hps {ENABLE_CTRL_AVALON_INTERFACE} {1}
    set_instance_parameter_value sys_hps {ENABLE_DELAY_CHAIN_WRITE} {0}
    set_instance_parameter_value sys_hps {ENABLE_EMIT_BFM_MASTER} {0}
    set_instance_parameter_value sys_hps {ENABLE_EXPORT_SEQ_DEBUG_BRIDGE} {0}
    set_instance_parameter_value sys_hps {ENABLE_EXTRA_REPORTING} {0}
    set_instance_parameter_value sys_hps {ENABLE_ISS_PROBES} {0}
    set_instance_parameter_value sys_hps {ENABLE_NON_DESTRUCTIVE_CALIB} {0}
    set_instance_parameter_value sys_hps {ENABLE_NON_DES_CAL} {0}
    set_instance_parameter_value sys_hps {ENABLE_NON_DES_CAL_TEST} {0}
    set_instance_parameter_value sys_hps {ENABLE_SEQUENCER_MARGINING_ON_BY_DEFAULT} {0}
    set_instance_parameter_value sys_hps {ENABLE_USER_ECC} {0}
    set_instance_parameter_value sys_hps {EXPORT_AFI_HALF_CLK} {0}
    set_instance_parameter_value sys_hps {EXTRA_SETTINGS} {}
    set_instance_parameter_value sys_hps {F2SCLK_COLDRST_Enable} {0}
    set_instance_parameter_value sys_hps {F2SCLK_DBGRST_Enable} {0}
    set_instance_parameter_value sys_hps {F2SCLK_PERIPHCLK_Enable} {0}
    set_instance_parameter_value sys_hps {F2SCLK_SDRAMCLK_Enable} {0}
    set_instance_parameter_value sys_hps {F2SCLK_WARMRST_Enable} {0}
    set_instance_parameter_value sys_hps {F2SDRAM_Type} {Avalon-MM\ Bidirectional AXI-3 AXI-3}
    set_instance_parameter_value sys_hps {F2SDRAM_Width} {64 64 64}
    set_instance_parameter_value sys_hps {F2SINTERRUPT_Enable} {1}
    set_instance_parameter_value sys_hps {F2S_Width} {2}
    set_instance_parameter_value sys_hps {FIX_READ_LATENCY} {8}
    set_instance_parameter_value sys_hps {FORCED_NON_LDC_ADDR_CMD_MEM_CK_INVERT} {0}
    set_instance_parameter_value sys_hps {FORCED_NUM_WRITE_FR_CYCLE_SHIFTS} {0}
    set_instance_parameter_value sys_hps {FORCE_DQS_TRACKING} {AUTO}
    set_instance_parameter_value sys_hps {FORCE_MAX_LATENCY_COUNT_WIDTH} {0}
    set_instance_parameter_value sys_hps {FORCE_SEQUENCER_TCL_DEBUG_MODE} {0}
    set_instance_parameter_value sys_hps {FORCE_SHADOW_REGS} {AUTO}
    set_instance_parameter_value sys_hps {FORCE_SYNTHESIS_LANGUAGE} {}
    set_instance_parameter_value sys_hps {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_EMAC0_GTX_CLK} {125}
    set_instance_parameter_value sys_hps {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_EMAC0_MD_CLK} {2.5}
    set_instance_parameter_value sys_hps {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_EMAC1_GTX_CLK} {125}
    set_instance_parameter_value sys_hps {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_EMAC1_MD_CLK} {2.5}
    set_instance_parameter_value sys_hps {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_I2C0_CLK} {100}
    set_instance_parameter_value sys_hps {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_I2C1_CLK} {100}
    set_instance_parameter_value sys_hps {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_I2C2_CLK} {100}
    set_instance_parameter_value sys_hps {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_I2C3_CLK} {100}
    set_instance_parameter_value sys_hps {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_QSPI_SCLK_OUT} {100}
    set_instance_parameter_value sys_hps {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_SDIO_CCLK} {100}
    set_instance_parameter_value sys_hps {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_SPIM0_SCLK_OUT} {100}
    set_instance_parameter_value sys_hps {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_SPIM1_SCLK_OUT} {100}
    set_instance_parameter_value sys_hps {GPIO_Enable} {No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No}
    set_instance_parameter_value sys_hps {GP_Enable} {0}
    set_instance_parameter_value sys_hps {HARD_EMIF} {1}
    set_instance_parameter_value sys_hps {HCX_COMPAT_MODE} {0}
    set_instance_parameter_value sys_hps {HHP_HPS} {1}
    set_instance_parameter_value sys_hps {HHP_HPS_SIMULATION} {0}
    set_instance_parameter_value sys_hps {HHP_HPS_VERIFICATION} {0}
    set_instance_parameter_value sys_hps {HLGPI_Enable} {0}
    set_instance_parameter_value sys_hps {HPS_PROTOCOL} {DDR3}
    set_instance_parameter_value sys_hps {I2C0_Mode} {Full}
    set_instance_parameter_value sys_hps {I2C0_PinMuxing} {FPGA}
    set_instance_parameter_value sys_hps {I2C1_Mode} {N/A}
    set_instance_parameter_value sys_hps {I2C1_PinMuxing} {Unused}
    set_instance_parameter_value sys_hps {I2C2_Mode} {N/A}
    set_instance_parameter_value sys_hps {I2C2_PinMuxing} {Unused}
    set_instance_parameter_value sys_hps {I2C3_Mode} {N/A}
    set_instance_parameter_value sys_hps {I2C3_PinMuxing} {Unused}
    set_instance_parameter_value sys_hps {INCLUDE_BOARD_DELAY_MODEL} {0}
    set_instance_parameter_value sys_hps {INCLUDE_MULTIRANK_BOARD_DELAY_MODEL} {0}
    set_instance_parameter_value sys_hps {IS_ES_DEVICE} {0}
    set_instance_parameter_value sys_hps {LOANIO_Enable} {No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No}
    set_instance_parameter_value sys_hps {LOCAL_ID_WIDTH} {8}
    set_instance_parameter_value sys_hps {LRDIMM_EXTENDED_CONFIG} {0x000000000000000000}
    set_instance_parameter_value sys_hps {LWH2F_Enable} {true}
    set_instance_parameter_value sys_hps {MARGIN_VARIATION_TEST} {0}
    set_instance_parameter_value sys_hps {MAX_PENDING_RD_CMD} {32}
    set_instance_parameter_value sys_hps {MAX_PENDING_WR_CMD} {16}
    set_instance_parameter_value sys_hps {MEM_ASR} {Manual}
    set_instance_parameter_value sys_hps {MEM_ATCL} {Disabled}
    set_instance_parameter_value sys_hps {MEM_AUTO_LEVELING_MODE} {1}
    set_instance_parameter_value sys_hps {MEM_BANKADDR_WIDTH} {3}
    set_instance_parameter_value sys_hps {MEM_BL} {OTF}
    set_instance_parameter_value sys_hps {MEM_BT} {Sequential}
    set_instance_parameter_value sys_hps {MEM_CK_PHASE} {0.0}
    set_instance_parameter_value sys_hps {MEM_CK_WIDTH} {1}
    set_instance_parameter_value sys_hps {MEM_CLK_EN_WIDTH} {1}
    set_instance_parameter_value sys_hps {MEM_CLK_FREQ} {400.0}
    set_instance_parameter_value sys_hps {MEM_CLK_FREQ_MAX} {800.0}
    set_instance_parameter_value sys_hps {MEM_COL_ADDR_WIDTH} {10}
    set_instance_parameter_value sys_hps {MEM_CS_WIDTH} {1}
    set_instance_parameter_value sys_hps {MEM_DEVICE} {MISSING_MODEL}
    set_instance_parameter_value sys_hps {MEM_DLL_EN} {1}
    set_instance_parameter_value sys_hps {MEM_DQ_PER_DQS} {8}
    set_instance_parameter_value sys_hps {MEM_DQ_WIDTH} {32}
    set_instance_parameter_value sys_hps {MEM_DRV_STR} {RZQ/6}
    set_instance_parameter_value sys_hps {MEM_FORMAT} {DISCRETE}
    set_instance_parameter_value sys_hps {MEM_GUARANTEED_WRITE_INIT} {0}
    set_instance_parameter_value sys_hps {MEM_IF_BOARD_BASE_DELAY} {10}
    set_instance_parameter_value sys_hps {MEM_IF_DM_PINS_EN} {1}
    set_instance_parameter_value sys_hps {MEM_IF_DQSN_EN} {1}
    set_instance_parameter_value sys_hps {MEM_IF_SIM_VALID_WINDOW} {0}
    set_instance_parameter_value sys_hps {MEM_INIT_EN} {0}
    set_instance_parameter_value sys_hps {MEM_INIT_FILE} {}
    set_instance_parameter_value sys_hps {MEM_MIRROR_ADDRESSING} {0}
    set_instance_parameter_value sys_hps {MEM_NUMBER_OF_DIMMS} {1}
    set_instance_parameter_value sys_hps {MEM_NUMBER_OF_RANKS_PER_DEVICE} {1}
    set_instance_parameter_value sys_hps {MEM_NUMBER_OF_RANKS_PER_DIMM} {1}
    set_instance_parameter_value sys_hps {MEM_PD} {DLL off}
    set_instance_parameter_value sys_hps {MEM_RANK_MULTIPLICATION_FACTOR} {1}
    set_instance_parameter_value sys_hps {MEM_ROW_ADDR_WIDTH} {15}
    set_instance_parameter_value sys_hps {MEM_RTT_NOM} {RZQ/6}
    set_instance_parameter_value sys_hps {MEM_RTT_WR} {Dynamic ODT off}
    set_instance_parameter_value sys_hps {MEM_SRT} {Normal}
    set_instance_parameter_value sys_hps {MEM_TCL} {7}
    set_instance_parameter_value sys_hps {MEM_TFAW_NS} {37.5}
    set_instance_parameter_value sys_hps {MEM_TINIT_US} {500}
    set_instance_parameter_value sys_hps {MEM_TMRD_CK} {4}
    set_instance_parameter_value sys_hps {MEM_TRAS_NS} {35.0}
    set_instance_parameter_value sys_hps {MEM_TRCD_NS} {13.75}
    set_instance_parameter_value sys_hps {MEM_TREFI_US} {7.8}
    set_instance_parameter_value sys_hps {MEM_TRFC_NS} {300.0}
    set_instance_parameter_value sys_hps {MEM_TRP_NS} {13.75}
    set_instance_parameter_value sys_hps {MEM_TRRD_NS} {7.5}
    set_instance_parameter_value sys_hps {MEM_TRTP_NS} {7.5}
    set_instance_parameter_value sys_hps {MEM_TWR_NS} {15.0}
    set_instance_parameter_value sys_hps {MEM_TWTR} {4}
    set_instance_parameter_value sys_hps {MEM_USER_LEVELING_MODE} {Leveling}
    set_instance_parameter_value sys_hps {MEM_VENDOR} {JEDEC}
    set_instance_parameter_value sys_hps {MEM_VERBOSE} {1}
    set_instance_parameter_value sys_hps {MEM_VOLTAGE} {1.5V DDR3}
    set_instance_parameter_value sys_hps {MEM_WTCL} {7}
    set_instance_parameter_value sys_hps {MPU_EVENTS_Enable} {0}
    set_instance_parameter_value sys_hps {MRS_MIRROR_PING_PONG_ATSO} {0}
    set_instance_parameter_value sys_hps {MULTICAST_EN} {0}
    set_instance_parameter_value sys_hps {NAND_Mode} {N/A}
    set_instance_parameter_value sys_hps {NAND_PinMuxing} {Unused}
    set_instance_parameter_value sys_hps {NEXTGEN} {1}
    set_instance_parameter_value sys_hps {NIOS_ROM_DATA_WIDTH} {32}
    set_instance_parameter_value sys_hps {NUM_DLL_SHARING_INTERFACES} {1}
    set_instance_parameter_value sys_hps {NUM_EXTRA_REPORT_PATH} {10}
    set_instance_parameter_value sys_hps {NUM_OCT_SHARING_INTERFACES} {1}
    set_instance_parameter_value sys_hps {NUM_OF_PORTS} {1}
    set_instance_parameter_value sys_hps {NUM_PLL_SHARING_INTERFACES} {1}
    set_instance_parameter_value sys_hps {OCT_SHARING_MODE} {None}
    set_instance_parameter_value sys_hps {P2C_READ_CLOCK_ADD_PHASE} {0.0}
    set_instance_parameter_value sys_hps {PACKAGE_DESKEW} {0}
    set_instance_parameter_value sys_hps {PARSE_FRIENDLY_DEVICE_FAMILY_PARAM} {}
    set_instance_parameter_value sys_hps {PARSE_FRIENDLY_DEVICE_FAMILY_PARAM_VALID} {0}
    set_instance_parameter_value sys_hps {PHY_CSR_CONNECTION} {INTERNAL_JTAG}
    set_instance_parameter_value sys_hps {PHY_CSR_ENABLED} {0}
    set_instance_parameter_value sys_hps {PHY_ONLY} {0}
    set_instance_parameter_value sys_hps {PINGPONGPHY_EN} {0}
    set_instance_parameter_value sys_hps {PLL_ADDR_CMD_CLK_DIV_PARAM} {0}
    set_instance_parameter_value sys_hps {PLL_ADDR_CMD_CLK_FREQ_PARAM} {0.0}
    set_instance_parameter_value sys_hps {PLL_ADDR_CMD_CLK_FREQ_SIM_STR_PARAM} {}
    set_instance_parameter_value sys_hps {PLL_ADDR_CMD_CLK_MULT_PARAM} {0}
    set_instance_parameter_value sys_hps {PLL_ADDR_CMD_CLK_PHASE_PS_PARAM} {0}
    set_instance_parameter_value sys_hps {PLL_ADDR_CMD_CLK_PHASE_PS_SIM_STR_PARAM} {}
    set_instance_parameter_value sys_hps {PLL_AFI_CLK_DIV_PARAM} {0}
    set_instance_parameter_value sys_hps {PLL_AFI_CLK_FREQ_PARAM} {0.0}
    set_instance_parameter_value sys_hps {PLL_AFI_CLK_FREQ_SIM_STR_PARAM} {}
    set_instance_parameter_value sys_hps {PLL_AFI_CLK_MULT_PARAM} {0}
    set_instance_parameter_value sys_hps {PLL_AFI_CLK_PHASE_PS_PARAM} {0}
    set_instance_parameter_value sys_hps {PLL_AFI_CLK_PHASE_PS_SIM_STR_PARAM} {}
    set_instance_parameter_value sys_hps {PLL_AFI_HALF_CLK_DIV_PARAM} {0}
    set_instance_parameter_value sys_hps {PLL_AFI_HALF_CLK_FREQ_PARAM} {0.0}
    set_instance_parameter_value sys_hps {PLL_AFI_HALF_CLK_FREQ_SIM_STR_PARAM} {}
    set_instance_parameter_value sys_hps {PLL_AFI_HALF_CLK_MULT_PARAM} {0}
    set_instance_parameter_value sys_hps {PLL_AFI_HALF_CLK_PHASE_PS_PARAM} {0}
    set_instance_parameter_value sys_hps {PLL_AFI_HALF_CLK_PHASE_PS_SIM_STR_PARAM} {}
    set_instance_parameter_value sys_hps {PLL_AFI_PHY_CLK_DIV_PARAM} {0}
    set_instance_parameter_value sys_hps {PLL_AFI_PHY_CLK_FREQ_PARAM} {0.0}
    set_instance_parameter_value sys_hps {PLL_AFI_PHY_CLK_FREQ_SIM_STR_PARAM} {}
    set_instance_parameter_value sys_hps {PLL_AFI_PHY_CLK_MULT_PARAM} {0}
    set_instance_parameter_value sys_hps {PLL_AFI_PHY_CLK_PHASE_PS_PARAM} {0}
    set_instance_parameter_value sys_hps {PLL_AFI_PHY_CLK_PHASE_PS_SIM_STR_PARAM} {}
    set_instance_parameter_value sys_hps {PLL_C2P_WRITE_CLK_DIV_PARAM} {0}
    set_instance_parameter_value sys_hps {PLL_C2P_WRITE_CLK_FREQ_PARAM} {0.0}
    set_instance_parameter_value sys_hps {PLL_C2P_WRITE_CLK_FREQ_SIM_STR_PARAM} {}
    set_instance_parameter_value sys_hps {PLL_C2P_WRITE_CLK_MULT_PARAM} {0}
    set_instance_parameter_value sys_hps {PLL_C2P_WRITE_CLK_PHASE_PS_PARAM} {0}
    set_instance_parameter_value sys_hps {PLL_C2P_WRITE_CLK_PHASE_PS_SIM_STR_PARAM} {}
    set_instance_parameter_value sys_hps {PLL_CLK_PARAM_VALID} {0}
    set_instance_parameter_value sys_hps {PLL_CONFIG_CLK_DIV_PARAM} {0}
    set_instance_parameter_value sys_hps {PLL_CONFIG_CLK_FREQ_PARAM} {0.0}
    set_instance_parameter_value sys_hps {PLL_CONFIG_CLK_FREQ_SIM_STR_PARAM} {}
    set_instance_parameter_value sys_hps {PLL_CONFIG_CLK_MULT_PARAM} {0}
    set_instance_parameter_value sys_hps {PLL_CONFIG_CLK_PHASE_PS_PARAM} {0}
    set_instance_parameter_value sys_hps {PLL_CONFIG_CLK_PHASE_PS_SIM_STR_PARAM} {}
    set_instance_parameter_value sys_hps {PLL_DR_CLK_DIV_PARAM} {0}
    set_instance_parameter_value sys_hps {PLL_DR_CLK_FREQ_PARAM} {0.0}
    set_instance_parameter_value sys_hps {PLL_DR_CLK_FREQ_SIM_STR_PARAM} {}
    set_instance_parameter_value sys_hps {PLL_DR_CLK_MULT_PARAM} {0}
    set_instance_parameter_value sys_hps {PLL_DR_CLK_PHASE_PS_PARAM} {0}
    set_instance_parameter_value sys_hps {PLL_DR_CLK_PHASE_PS_SIM_STR_PARAM} {}
    set_instance_parameter_value sys_hps {PLL_HR_CLK_DIV_PARAM} {0}
    set_instance_parameter_value sys_hps {PLL_HR_CLK_FREQ_PARAM} {0.0}
    set_instance_parameter_value sys_hps {PLL_HR_CLK_FREQ_SIM_STR_PARAM} {}
    set_instance_parameter_value sys_hps {PLL_HR_CLK_MULT_PARAM} {0}
    set_instance_parameter_value sys_hps {PLL_HR_CLK_PHASE_PS_PARAM} {0}
    set_instance_parameter_value sys_hps {PLL_HR_CLK_PHASE_PS_SIM_STR_PARAM} {}
    set_instance_parameter_value sys_hps {PLL_LOCATION} {Top_Bottom}
    set_instance_parameter_value sys_hps {PLL_MEM_CLK_DIV_PARAM} {0}
    set_instance_parameter_value sys_hps {PLL_MEM_CLK_FREQ_PARAM} {0.0}
    set_instance_parameter_value sys_hps {PLL_MEM_CLK_FREQ_SIM_STR_PARAM} {}
    set_instance_parameter_value sys_hps {PLL_MEM_CLK_MULT_PARAM} {0}
    set_instance_parameter_value sys_hps {PLL_MEM_CLK_PHASE_PS_PARAM} {0}
    set_instance_parameter_value sys_hps {PLL_MEM_CLK_PHASE_PS_SIM_STR_PARAM} {}
    set_instance_parameter_value sys_hps {PLL_NIOS_CLK_DIV_PARAM} {0}
    set_instance_parameter_value sys_hps {PLL_NIOS_CLK_FREQ_PARAM} {0.0}
    set_instance_parameter_value sys_hps {PLL_NIOS_CLK_FREQ_SIM_STR_PARAM} {}
    set_instance_parameter_value sys_hps {PLL_NIOS_CLK_MULT_PARAM} {0}
    set_instance_parameter_value sys_hps {PLL_NIOS_CLK_PHASE_PS_PARAM} {0}
    set_instance_parameter_value sys_hps {PLL_NIOS_CLK_PHASE_PS_SIM_STR_PARAM} {}
    set_instance_parameter_value sys_hps {PLL_P2C_READ_CLK_DIV_PARAM} {0}
    set_instance_parameter_value sys_hps {PLL_P2C_READ_CLK_FREQ_PARAM} {0.0}
    set_instance_parameter_value sys_hps {PLL_P2C_READ_CLK_FREQ_SIM_STR_PARAM} {}
    set_instance_parameter_value sys_hps {PLL_P2C_READ_CLK_MULT_PARAM} {0}
    set_instance_parameter_value sys_hps {PLL_P2C_READ_CLK_PHASE_PS_PARAM} {0}
    set_instance_parameter_value sys_hps {PLL_P2C_READ_CLK_PHASE_PS_SIM_STR_PARAM} {}
    set_instance_parameter_value sys_hps {PLL_SHARING_MODE} {None}
    set_instance_parameter_value sys_hps {PLL_WRITE_CLK_DIV_PARAM} {0}
    set_instance_parameter_value sys_hps {PLL_WRITE_CLK_FREQ_PARAM} {0.0}
    set_instance_parameter_value sys_hps {PLL_WRITE_CLK_FREQ_SIM_STR_PARAM} {}
    set_instance_parameter_value sys_hps {PLL_WRITE_CLK_MULT_PARAM} {0}
    set_instance_parameter_value sys_hps {PLL_WRITE_CLK_PHASE_PS_PARAM} {0}
    set_instance_parameter_value sys_hps {PLL_WRITE_CLK_PHASE_PS_SIM_STR_PARAM} {}
    set_instance_parameter_value sys_hps {POWER_OF_TWO_BUS} {0}
    set_instance_parameter_value sys_hps {PRIORITY_PORT} {1 1 1 1 1 1}
    set_instance_parameter_value sys_hps {QSPI_Mode} {1 SS}
    set_instance_parameter_value sys_hps {QSPI_PinMuxing} {HPS I/O Set 0}
    set_instance_parameter_value sys_hps {RATE} {Full}
    set_instance_parameter_value sys_hps {RDIMM_CONFIG} {0000000000000000}
    set_instance_parameter_value sys_hps {READ_DQ_DQS_CLOCK_SOURCE} {INVERTED_DQS_BUS}
    set_instance_parameter_value sys_hps {READ_FIFO_SIZE} {8}
    set_instance_parameter_value sys_hps {REFRESH_BURST_VALIDATION} {0}
    set_instance_parameter_value sys_hps {REFRESH_INTERVAL} {15000}
    set_instance_parameter_value sys_hps {REF_CLK_FREQ} {25.0}
    set_instance_parameter_value sys_hps {REF_CLK_FREQ_MAX_PARAM} {0.0}
    set_instance_parameter_value sys_hps {REF_CLK_FREQ_MIN_PARAM} {0.0}
    set_instance_parameter_value sys_hps {REF_CLK_FREQ_PARAM_VALID} {0}
    set_instance_parameter_value sys_hps {S2FCLK_COLDRST_Enable} {0}
    set_instance_parameter_value sys_hps {S2FCLK_PENDINGRST_Enable} {0}
    set_instance_parameter_value sys_hps {S2FCLK_USER0CLK_Enable} {1}
    set_instance_parameter_value sys_hps {S2FCLK_USER1CLK_Enable} {0}
    set_instance_parameter_value sys_hps {S2FCLK_USER1CLK_FREQ} {100.0}
    set_instance_parameter_value sys_hps {S2FCLK_USER2CLK} {5}
    set_instance_parameter_value sys_hps {S2FCLK_USER2CLK_Enable} {0}
    set_instance_parameter_value sys_hps {S2FCLK_USER2CLK_FREQ} {100.0}
    set_instance_parameter_value sys_hps {S2FINTERRUPT_CAN_Enable} {0}
    set_instance_parameter_value sys_hps {S2FINTERRUPT_CLOCKPERIPHERAL_Enable} {0}
    set_instance_parameter_value sys_hps {S2FINTERRUPT_CTI_Enable} {0}
    set_instance_parameter_value sys_hps {S2FINTERRUPT_DMA_Enable} {0}
    set_instance_parameter_value sys_hps {S2FINTERRUPT_EMAC_Enable} {0}
    set_instance_parameter_value sys_hps {S2FINTERRUPT_FPGAMANAGER_Enable} {0}
    set_instance_parameter_value sys_hps {S2FINTERRUPT_GPIO_Enable} {0}
    set_instance_parameter_value sys_hps {S2FINTERRUPT_I2CEMAC_Enable} {0}
    set_instance_parameter_value sys_hps {S2FINTERRUPT_I2CPERIPHERAL_Enable} {0}
    set_instance_parameter_value sys_hps {S2FINTERRUPT_L4TIMER_Enable} {0}
    set_instance_parameter_value sys_hps {S2FINTERRUPT_NAND_Enable} {0}
    set_instance_parameter_value sys_hps {S2FINTERRUPT_OSCTIMER_Enable} {0}
    set_instance_parameter_value sys_hps {S2FINTERRUPT_QSPI_Enable} {0}
    set_instance_parameter_value sys_hps {S2FINTERRUPT_SDMMC_Enable} {0}
    set_instance_parameter_value sys_hps {S2FINTERRUPT_SPIMASTER_Enable} {0}
    set_instance_parameter_value sys_hps {S2FINTERRUPT_SPISLAVE_Enable} {0}
    set_instance_parameter_value sys_hps {S2FINTERRUPT_UART_Enable} {0}
    set_instance_parameter_value sys_hps {S2FINTERRUPT_USB_Enable} {0}
    set_instance_parameter_value sys_hps {S2FINTERRUPT_WATCHDOG_Enable} {0}
    set_instance_parameter_value sys_hps {S2F_Width} {2}
    set_instance_parameter_value sys_hps {SDIO_Mode} {4-bit Data}
    set_instance_parameter_value sys_hps {SDIO_PinMuxing} {HPS I/O Set 0}
    set_instance_parameter_value sys_hps {SEQUENCER_TYPE} {NIOS}
    set_instance_parameter_value sys_hps {SEQ_MODE} {0}
    set_instance_parameter_value sys_hps {SKIP_MEM_INIT} {1}
    set_instance_parameter_value sys_hps {SOPC_COMPAT_RESET} {0}
    set_instance_parameter_value sys_hps {SPEED_GRADE} {7}
    set_instance_parameter_value sys_hps {SPIM0_Mode} {N/A}
    set_instance_parameter_value sys_hps {SPIM0_PinMuxing} {Unused}
    set_instance_parameter_value sys_hps {SPIM1_Mode} {Single Slave Select}
    set_instance_parameter_value sys_hps {SPIM1_PinMuxing} {HPS I/O Set 0}
    set_instance_parameter_value sys_hps {SPIS0_Mode} {N/A}
    set_instance_parameter_value sys_hps {SPIS0_PinMuxing} {Unused}
    set_instance_parameter_value sys_hps {SPIS1_Mode} {N/A}
    set_instance_parameter_value sys_hps {SPIS1_PinMuxing} {Unused}
    set_instance_parameter_value sys_hps {STARVE_LIMIT} {10}
    set_instance_parameter_value sys_hps {STM_Enable} {0}
    set_instance_parameter_value sys_hps {TEST_Enable} {0}
    set_instance_parameter_value sys_hps {TIMING_BOARD_AC_EYE_REDUCTION_H} {0.0}
    set_instance_parameter_value sys_hps {TIMING_BOARD_AC_EYE_REDUCTION_SU} {0.0}
    set_instance_parameter_value sys_hps {TIMING_BOARD_AC_SKEW} {0.02}
    set_instance_parameter_value sys_hps {TIMING_BOARD_AC_SLEW_RATE} {1.0}
    set_instance_parameter_value sys_hps {TIMING_BOARD_AC_TO_CK_SKEW} {0.0}
    set_instance_parameter_value sys_hps {TIMING_BOARD_CK_CKN_SLEW_RATE} {2.0}
    set_instance_parameter_value sys_hps {TIMING_BOARD_DELTA_DQS_ARRIVAL_TIME} {0.0}
    set_instance_parameter_value sys_hps {TIMING_BOARD_DELTA_READ_DQS_ARRIVAL_TIME} {0.0}
    set_instance_parameter_value sys_hps {TIMING_BOARD_DERATE_METHOD} {AUTO}
    set_instance_parameter_value sys_hps {TIMING_BOARD_DQS_DQSN_SLEW_RATE} {2.0}
    set_instance_parameter_value sys_hps {TIMING_BOARD_DQ_EYE_REDUCTION} {0.0}
    set_instance_parameter_value sys_hps {TIMING_BOARD_DQ_SLEW_RATE} {1.0}
    set_instance_parameter_value sys_hps {TIMING_BOARD_DQ_TO_DQS_SKEW} {0.0}
    set_instance_parameter_value sys_hps {TIMING_BOARD_ISI_METHOD} {AUTO}
    set_instance_parameter_value sys_hps {TIMING_BOARD_MAX_CK_DELAY} {0.6}
    set_instance_parameter_value sys_hps {TIMING_BOARD_MAX_DQS_DELAY} {0.6}
    set_instance_parameter_value sys_hps {TIMING_BOARD_READ_DQ_EYE_REDUCTION} {0.0}
    set_instance_parameter_value sys_hps {TIMING_BOARD_SKEW_BETWEEN_DIMMS} {0.05}
    set_instance_parameter_value sys_hps {TIMING_BOARD_SKEW_BETWEEN_DQS} {0.02}
    set_instance_parameter_value sys_hps {TIMING_BOARD_SKEW_CKDQS_DIMM_MAX} {0.01}
    set_instance_parameter_value sys_hps {TIMING_BOARD_SKEW_CKDQS_DIMM_MIN} {-0.01}
    set_instance_parameter_value sys_hps {TIMING_BOARD_SKEW_WITHIN_DQS} {0.02}
    set_instance_parameter_value sys_hps {TIMING_BOARD_TDH} {0.0}
    set_instance_parameter_value sys_hps {TIMING_BOARD_TDS} {0.0}
    set_instance_parameter_value sys_hps {TIMING_BOARD_TIH} {0.0}
    set_instance_parameter_value sys_hps {TIMING_BOARD_TIS} {0.0}
    set_instance_parameter_value sys_hps {TIMING_TDH} {125}
    set_instance_parameter_value sys_hps {TIMING_TDQSCK} {400}
    set_instance_parameter_value sys_hps {TIMING_TDQSCKDL} {1200}
    set_instance_parameter_value sys_hps {TIMING_TDQSCKDM} {900}
    set_instance_parameter_value sys_hps {TIMING_TDQSCKDS} {450}
    set_instance_parameter_value sys_hps {TIMING_TDQSH} {0.35}
    set_instance_parameter_value sys_hps {TIMING_TDQSQ} {120}
    set_instance_parameter_value sys_hps {TIMING_TDQSS} {0.25}
    set_instance_parameter_value sys_hps {TIMING_TDS} {50}
    set_instance_parameter_value sys_hps {TIMING_TDSH} {0.2}
    set_instance_parameter_value sys_hps {TIMING_TDSS} {0.2}
    set_instance_parameter_value sys_hps {TIMING_TIH} {250}
    set_instance_parameter_value sys_hps {TIMING_TIS} {175}
    set_instance_parameter_value sys_hps {TIMING_TQH} {0.38}
    set_instance_parameter_value sys_hps {TIMING_TQHS} {300}
    set_instance_parameter_value sys_hps {TIMING_TQSH} {0.38}
    set_instance_parameter_value sys_hps {TPIUFPGA_Enable} {0}
    set_instance_parameter_value sys_hps {TPIUFPGA_alt} {0}
    set_instance_parameter_value sys_hps {TRACE_Mode} {N/A}
    set_instance_parameter_value sys_hps {TRACE_PinMuxing} {Unused}
    set_instance_parameter_value sys_hps {TRACKING_ERROR_TEST} {0}
    set_instance_parameter_value sys_hps {TRACKING_WATCH_TEST} {0}
    set_instance_parameter_value sys_hps {TREFI} {35100}
    set_instance_parameter_value sys_hps {TRFC} {350}
    set_instance_parameter_value sys_hps {UART0_Mode} {No Flow Control}
    set_instance_parameter_value sys_hps {UART0_PinMuxing} {HPS I/O Set 0}
    set_instance_parameter_value sys_hps {UART1_Mode} {N/A}
    set_instance_parameter_value sys_hps {UART1_PinMuxing} {Unused}
    set_instance_parameter_value sys_hps {USB0_Mode} {N/A}
    set_instance_parameter_value sys_hps {USB0_PinMuxing} {Unused}
    set_instance_parameter_value sys_hps {USB1_Mode} {SDR}
    set_instance_parameter_value sys_hps {USB1_PinMuxing} {HPS I/O Set 0}
    set_instance_parameter_value sys_hps {USER_DEBUG_LEVEL} {1}
    set_instance_parameter_value sys_hps {USE_AXI_ADAPTOR} {0}
    set_instance_parameter_value sys_hps {USE_FAKE_PHY} {0}
    set_instance_parameter_value sys_hps {USE_MEM_CLK_FREQ} {0}
    set_instance_parameter_value sys_hps {USE_MM_ADAPTOR} {1}
    set_instance_parameter_value sys_hps {USE_SEQUENCER_BFM} {0}
    set_instance_parameter_value sys_hps {WEIGHT_PORT} {0 0 0 0 0 0}
    set_instance_parameter_value sys_hps {WRBUFFER_ADDR_WIDTH} {6}
    set_instance_parameter_value sys_hps {can0_clk_div} {1}
    set_instance_parameter_value sys_hps {can1_clk_div} {1}
    set_instance_parameter_value sys_hps {configure_advanced_parameters} {0}
    set_instance_parameter_value sys_hps {customize_device_pll_info} {0}
    set_instance_parameter_value sys_hps {dbctrl_stayosc1} {1}
    set_instance_parameter_value sys_hps {dbg_at_clk_div} {0}
    set_instance_parameter_value sys_hps {dbg_clk_div} {1}
    set_instance_parameter_value sys_hps {dbg_trace_clk_div} {0}
    set_instance_parameter_value sys_hps {desired_can0_clk_mhz} {100.0}
    set_instance_parameter_value sys_hps {desired_can1_clk_mhz} {100.0}
    set_instance_parameter_value sys_hps {desired_cfg_clk_mhz} {80.0}
    set_instance_parameter_value sys_hps {desired_emac0_clk_mhz} {250.0}
    set_instance_parameter_value sys_hps {desired_emac1_clk_mhz} {250.0}
    set_instance_parameter_value sys_hps {desired_gpio_db_clk_hz} {32000}
    set_instance_parameter_value sys_hps {desired_l4_mp_clk_mhz} {100.0}
    set_instance_parameter_value sys_hps {desired_l4_sp_clk_mhz} {100.0}
    set_instance_parameter_value sys_hps {desired_mpu_clk_mhz} {800.0}
    set_instance_parameter_value sys_hps {desired_nand_clk_mhz} {12.5}
    set_instance_parameter_value sys_hps {desired_qspi_clk_mhz} {400.0}
    set_instance_parameter_value sys_hps {desired_sdmmc_clk_mhz} {200.0}
    set_instance_parameter_value sys_hps {desired_spi_m_clk_mhz} {200.0}
    set_instance_parameter_value sys_hps {desired_usb_mp_clk_mhz} {200.0}
    set_instance_parameter_value sys_hps {device_pll_info_manual} {{320000000 1600000000} {320000000 1000000000} {800000000 400000000 400000000}}
    set_instance_parameter_value sys_hps {eosc1_clk_mhz} {25.0}
    set_instance_parameter_value sys_hps {eosc2_clk_mhz} {25.0}
    set_instance_parameter_value sys_hps {gpio_db_clk_div} {6249}
    set_instance_parameter_value sys_hps {l3_mp_clk_div} {1}
    set_instance_parameter_value sys_hps {l3_sp_clk_div} {1}
    set_instance_parameter_value sys_hps {l4_mp_clk_div} {1}
    set_instance_parameter_value sys_hps {l4_mp_clk_source} {1}
    set_instance_parameter_value sys_hps {l4_sp_clk_div} {1}
    set_instance_parameter_value sys_hps {l4_sp_clk_source} {1}
    set_instance_parameter_value sys_hps {main_pll_c3} {3}
    set_instance_parameter_value sys_hps {main_pll_c4} {3}
    set_instance_parameter_value sys_hps {main_pll_c5} {15}
    set_instance_parameter_value sys_hps {main_pll_m} {63}
    set_instance_parameter_value sys_hps {main_pll_n} {0}
    set_instance_parameter_value sys_hps {nand_clk_source} {2}
    set_instance_parameter_value sys_hps {periph_pll_c0} {3}
    set_instance_parameter_value sys_hps {periph_pll_c1} {3}
    set_instance_parameter_value sys_hps {periph_pll_c2} {1}
    set_instance_parameter_value sys_hps {periph_pll_c3} {19}
    set_instance_parameter_value sys_hps {periph_pll_c4} {4}
    set_instance_parameter_value sys_hps {periph_pll_c5} {9}
    set_instance_parameter_value sys_hps {periph_pll_m} {79}
    set_instance_parameter_value sys_hps {periph_pll_n} {1}
    set_instance_parameter_value sys_hps {periph_pll_source} {0}
    set_instance_parameter_value sys_hps {qspi_clk_source} {1}
    set_instance_parameter_value sys_hps {sdmmc_clk_source} {2}
    set_instance_parameter_value sys_hps {show_advanced_parameters} {0}
    set_instance_parameter_value sys_hps {show_debug_info_as_warning_msg} {0}
    set_instance_parameter_value sys_hps {show_warning_as_error_msg} {0}
    set_instance_parameter_value sys_hps {spi_m_clk_div} {0}
    set_instance_parameter_value sys_hps {usb_mp_clk_div} {0}
    set_instance_parameter_value sys_hps {use_default_mpu_clk} {1}

    add_instance sys_id altera_avalon_sysid_qsys 18.1
    set_instance_parameter_value sys_id {id} {-1395322110}

    add_instance sys_int_mem altera_avalon_onchip_memory2 18.1
    set_instance_parameter_value sys_int_mem {allowInSystemMemoryContentEditor} {0}
    set_instance_parameter_value sys_int_mem {blockType} {AUTO}
    set_instance_parameter_value sys_int_mem {copyInitFile} {0}
    set_instance_parameter_value sys_int_mem {dataWidth} {64}
    set_instance_parameter_value sys_int_mem {dataWidth2} {32}
    set_instance_parameter_value sys_int_mem {dualPort} {0}
    set_instance_parameter_value sys_int_mem {ecc_enabled} {0}
    set_instance_parameter_value sys_int_mem {enPRInitMode} {0}
    set_instance_parameter_value sys_int_mem {enableDiffWidth} {0}
    set_instance_parameter_value sys_int_mem {initMemContent} {0}
    set_instance_parameter_value sys_int_mem {initializationFileName} {onchip_mem.hex}
    set_instance_parameter_value sys_int_mem {instanceID} {NONE}
    set_instance_parameter_value sys_int_mem {memorySize} {65536.0}
    set_instance_parameter_value sys_int_mem {readDuringWriteMode} {DONT_CARE}
    set_instance_parameter_value sys_int_mem {resetrequest_enabled} {1}
    set_instance_parameter_value sys_int_mem {simAllowMRAMContentsFile} {0}
    set_instance_parameter_value sys_int_mem {simMemInitOnlyFilename} {0}
    set_instance_parameter_value sys_int_mem {singleClockOperation} {0}
    set_instance_parameter_value sys_int_mem {slave1Latency} {1}
    set_instance_parameter_value sys_int_mem {slave2Latency} {1}
    set_instance_parameter_value sys_int_mem {useNonDefaultInitFile} {0}
    set_instance_parameter_value sys_int_mem {useShallowMemBlocks} {0}
    set_instance_parameter_value sys_int_mem {writable} {1}

    add_instance sys_spi altera_avalon_spi 18.1
    set_instance_parameter_value sys_spi {clockPhase} {0}
    set_instance_parameter_value sys_spi {clockPolarity} {1}
    set_instance_parameter_value sys_spi {dataWidth} {8}
    set_instance_parameter_value sys_spi {disableAvalonFlowControl} {0}
    set_instance_parameter_value sys_spi {insertDelayBetweenSlaveSelectAndSClk} {0}
    set_instance_parameter_value sys_spi {insertSync} {0}
    set_instance_parameter_value sys_spi {lsbOrderedFirst} {0}
    set_instance_parameter_value sys_spi {masterSPI} {1}
    set_instance_parameter_value sys_spi {numberOfSlaves} {1}
    set_instance_parameter_value sys_spi {syncRegDepth} {2}
    set_instance_parameter_value sys_spi {targetClockRate} {50000000.0}
    set_instance_parameter_value sys_spi {targetSlaveSelectToSClkDelay} {0.0}

    # connections and connection parameters
    add_connection spi_engine_execution_0.cmd_if spi_engine_interconnect_0.m_cmd_if conduit
    set_connection_parameter_value spi_engine_execution_0.cmd_if/spi_engine_interconnect_0.m_cmd_if endPort {}
    set_connection_parameter_value spi_engine_execution_0.cmd_if/spi_engine_interconnect_0.m_cmd_if endPortLSB {0}
    set_connection_parameter_value spi_engine_execution_0.cmd_if/spi_engine_interconnect_0.m_cmd_if startPort {}
    set_connection_parameter_value spi_engine_execution_0.cmd_if/spi_engine_interconnect_0.m_cmd_if startPortLSB {0}
    set_connection_parameter_value spi_engine_execution_0.cmd_if/spi_engine_interconnect_0.m_cmd_if width {0}

    add_connection spi_engine_execution_0.sdi_if spi_engine_interconnect_0.m_sdi_if conduit
    set_connection_parameter_value spi_engine_execution_0.sdi_if/spi_engine_interconnect_0.m_sdi_if endPort {}
    set_connection_parameter_value spi_engine_execution_0.sdi_if/spi_engine_interconnect_0.m_sdi_if endPortLSB {0}
    set_connection_parameter_value spi_engine_execution_0.sdi_if/spi_engine_interconnect_0.m_sdi_if startPort {}
    set_connection_parameter_value spi_engine_execution_0.sdi_if/spi_engine_interconnect_0.m_sdi_if startPortLSB {0}
    set_connection_parameter_value spi_engine_execution_0.sdi_if/spi_engine_interconnect_0.m_sdi_if width {0}

    add_connection spi_engine_execution_0.sdo_if spi_engine_interconnect_0.m_sdo_if conduit
    set_connection_parameter_value spi_engine_execution_0.sdo_if/spi_engine_interconnect_0.m_sdo_if endPort {}
    set_connection_parameter_value spi_engine_execution_0.sdo_if/spi_engine_interconnect_0.m_sdo_if endPortLSB {0}
    set_connection_parameter_value spi_engine_execution_0.sdo_if/spi_engine_interconnect_0.m_sdo_if startPort {}
    set_connection_parameter_value spi_engine_execution_0.sdo_if/spi_engine_interconnect_0.m_sdo_if startPortLSB {0}
    set_connection_parameter_value spi_engine_execution_0.sdo_if/spi_engine_interconnect_0.m_sdo_if width {0}

    add_connection spi_engine_execution_0.sync_if spi_engine_interconnect_0.m_sync_if conduit
    set_connection_parameter_value spi_engine_execution_0.sync_if/spi_engine_interconnect_0.m_sync_if endPort {}
    set_connection_parameter_value spi_engine_execution_0.sync_if/spi_engine_interconnect_0.m_sync_if endPortLSB {0}
    set_connection_parameter_value spi_engine_execution_0.sync_if/spi_engine_interconnect_0.m_sync_if startPort {}
    set_connection_parameter_value spi_engine_execution_0.sync_if/spi_engine_interconnect_0.m_sync_if startPortLSB {0}
    set_connection_parameter_value spi_engine_execution_0.sync_if/spi_engine_interconnect_0.m_sync_if width {0}

    add_connection spi_engine_interconnect_0.s0_cmd_if axi_spi_engine_0.cmd_if conduit
    set_connection_parameter_value spi_engine_interconnect_0.s0_cmd_if/axi_spi_engine_0.cmd_if endPort {}
    set_connection_parameter_value spi_engine_interconnect_0.s0_cmd_if/axi_spi_engine_0.cmd_if endPortLSB {0}
    set_connection_parameter_value spi_engine_interconnect_0.s0_cmd_if/axi_spi_engine_0.cmd_if startPort {}
    set_connection_parameter_value spi_engine_interconnect_0.s0_cmd_if/axi_spi_engine_0.cmd_if startPortLSB {0}
    set_connection_parameter_value spi_engine_interconnect_0.s0_cmd_if/axi_spi_engine_0.cmd_if width {0}

    add_connection spi_engine_interconnect_0.s0_sdi_if axi_spi_engine_0.sdi_if conduit
    set_connection_parameter_value spi_engine_interconnect_0.s0_sdi_if/axi_spi_engine_0.sdi_if endPort {}
    set_connection_parameter_value spi_engine_interconnect_0.s0_sdi_if/axi_spi_engine_0.sdi_if endPortLSB {0}
    set_connection_parameter_value spi_engine_interconnect_0.s0_sdi_if/axi_spi_engine_0.sdi_if startPort {}
    set_connection_parameter_value spi_engine_interconnect_0.s0_sdi_if/axi_spi_engine_0.sdi_if startPortLSB {0}
    set_connection_parameter_value spi_engine_interconnect_0.s0_sdi_if/axi_spi_engine_0.sdi_if width {0}

    add_connection spi_engine_interconnect_0.s0_sdo_if axi_spi_engine_0.sdo_if conduit
    set_connection_parameter_value spi_engine_interconnect_0.s0_sdo_if/axi_spi_engine_0.sdo_if endPort {}
    set_connection_parameter_value spi_engine_interconnect_0.s0_sdo_if/axi_spi_engine_0.sdo_if endPortLSB {0}
    set_connection_parameter_value spi_engine_interconnect_0.s0_sdo_if/axi_spi_engine_0.sdo_if startPort {}
    set_connection_parameter_value spi_engine_interconnect_0.s0_sdo_if/axi_spi_engine_0.sdo_if startPortLSB {0}
    set_connection_parameter_value spi_engine_interconnect_0.s0_sdo_if/axi_spi_engine_0.sdo_if width {0}

    add_connection spi_engine_interconnect_0.s0_sync_if axi_spi_engine_0.sync_if conduit
    set_connection_parameter_value spi_engine_interconnect_0.s0_sync_if/axi_spi_engine_0.sync_if endPort {}
    set_connection_parameter_value spi_engine_interconnect_0.s0_sync_if/axi_spi_engine_0.sync_if endPortLSB {0}
    set_connection_parameter_value spi_engine_interconnect_0.s0_sync_if/axi_spi_engine_0.sync_if startPort {}
    set_connection_parameter_value spi_engine_interconnect_0.s0_sync_if/axi_spi_engine_0.sync_if startPortLSB {0}
    set_connection_parameter_value spi_engine_interconnect_0.s0_sync_if/axi_spi_engine_0.sync_if width {0}

    add_connection spi_engine_interconnect_0.s1_cmd_if spi_engine_offload_0.cmd_if conduit
    set_connection_parameter_value spi_engine_interconnect_0.s1_cmd_if/spi_engine_offload_0.cmd_if endPort {}
    set_connection_parameter_value spi_engine_interconnect_0.s1_cmd_if/spi_engine_offload_0.cmd_if endPortLSB {0}
    set_connection_parameter_value spi_engine_interconnect_0.s1_cmd_if/spi_engine_offload_0.cmd_if startPort {}
    set_connection_parameter_value spi_engine_interconnect_0.s1_cmd_if/spi_engine_offload_0.cmd_if startPortLSB {0}
    set_connection_parameter_value spi_engine_interconnect_0.s1_cmd_if/spi_engine_offload_0.cmd_if width {0}

    add_connection spi_engine_interconnect_0.s1_sdi_if spi_engine_offload_0.sdi_if conduit
    set_connection_parameter_value spi_engine_interconnect_0.s1_sdi_if/spi_engine_offload_0.sdi_if endPort {}
    set_connection_parameter_value spi_engine_interconnect_0.s1_sdi_if/spi_engine_offload_0.sdi_if endPortLSB {0}
    set_connection_parameter_value spi_engine_interconnect_0.s1_sdi_if/spi_engine_offload_0.sdi_if startPort {}
    set_connection_parameter_value spi_engine_interconnect_0.s1_sdi_if/spi_engine_offload_0.sdi_if startPortLSB {0}
    set_connection_parameter_value spi_engine_interconnect_0.s1_sdi_if/spi_engine_offload_0.sdi_if width {0}

    add_connection spi_engine_interconnect_0.s1_sdo_if spi_engine_offload_0.sdo_if conduit
    set_connection_parameter_value spi_engine_interconnect_0.s1_sdo_if/spi_engine_offload_0.sdo_if endPort {}
    set_connection_parameter_value spi_engine_interconnect_0.s1_sdo_if/spi_engine_offload_0.sdo_if endPortLSB {0}
    set_connection_parameter_value spi_engine_interconnect_0.s1_sdo_if/spi_engine_offload_0.sdo_if startPort {}
    set_connection_parameter_value spi_engine_interconnect_0.s1_sdo_if/spi_engine_offload_0.sdo_if startPortLSB {0}
    set_connection_parameter_value spi_engine_interconnect_0.s1_sdo_if/spi_engine_offload_0.sdo_if width {0}

    add_connection spi_engine_interconnect_0.s1_sync_if spi_engine_offload_0.sync_if conduit
    set_connection_parameter_value spi_engine_interconnect_0.s1_sync_if/spi_engine_offload_0.sync_if endPort {}
    set_connection_parameter_value spi_engine_interconnect_0.s1_sync_if/spi_engine_offload_0.sync_if endPortLSB {0}
    set_connection_parameter_value spi_engine_interconnect_0.s1_sync_if/spi_engine_offload_0.sync_if startPort {}
    set_connection_parameter_value spi_engine_interconnect_0.s1_sync_if/spi_engine_offload_0.sync_if startPortLSB {0}
    set_connection_parameter_value spi_engine_interconnect_0.s1_sync_if/spi_engine_offload_0.sync_if width {0}

    add_connection spi_engine_offload_0.ctrl_cmd_if axi_spi_engine_0.offload0_cmd_if conduit
    set_connection_parameter_value spi_engine_offload_0.ctrl_cmd_if/axi_spi_engine_0.offload0_cmd_if endPort {}
    set_connection_parameter_value spi_engine_offload_0.ctrl_cmd_if/axi_spi_engine_0.offload0_cmd_if endPortLSB {0}
    set_connection_parameter_value spi_engine_offload_0.ctrl_cmd_if/axi_spi_engine_0.offload0_cmd_if startPort {}
    set_connection_parameter_value spi_engine_offload_0.ctrl_cmd_if/axi_spi_engine_0.offload0_cmd_if startPortLSB {0}
    set_connection_parameter_value spi_engine_offload_0.ctrl_cmd_if/axi_spi_engine_0.offload0_cmd_if width {0}

    add_connection spi_engine_offload_0.ctrl_sdo_if axi_spi_engine_0.offload0_sdo_if conduit
    set_connection_parameter_value spi_engine_offload_0.ctrl_sdo_if/axi_spi_engine_0.offload0_sdo_if endPort {}
    set_connection_parameter_value spi_engine_offload_0.ctrl_sdo_if/axi_spi_engine_0.offload0_sdo_if endPortLSB {0}
    set_connection_parameter_value spi_engine_offload_0.ctrl_sdo_if/axi_spi_engine_0.offload0_sdo_if startPort {}
    set_connection_parameter_value spi_engine_offload_0.ctrl_sdo_if/axi_spi_engine_0.offload0_sdo_if startPortLSB {0}
    set_connection_parameter_value spi_engine_offload_0.ctrl_sdo_if/axi_spi_engine_0.offload0_sdo_if width {0}

    add_connection spi_engine_offload_0.if_ctrl_enable axi_spi_engine_0.if_offload0_enable conduit
    set_connection_parameter_value spi_engine_offload_0.if_ctrl_enable/axi_spi_engine_0.if_offload0_enable endPort {}
    set_connection_parameter_value spi_engine_offload_0.if_ctrl_enable/axi_spi_engine_0.if_offload0_enable endPortLSB {0}
    set_connection_parameter_value spi_engine_offload_0.if_ctrl_enable/axi_spi_engine_0.if_offload0_enable startPort {}
    set_connection_parameter_value spi_engine_offload_0.if_ctrl_enable/axi_spi_engine_0.if_offload0_enable startPortLSB {0}
    set_connection_parameter_value spi_engine_offload_0.if_ctrl_enable/axi_spi_engine_0.if_offload0_enable width {0}

    add_connection spi_engine_offload_0.if_ctrl_enabled axi_spi_engine_0.if_offload0_enabled conduit
    set_connection_parameter_value spi_engine_offload_0.if_ctrl_enabled/axi_spi_engine_0.if_offload0_enabled endPort {}
    set_connection_parameter_value spi_engine_offload_0.if_ctrl_enabled/axi_spi_engine_0.if_offload0_enabled endPortLSB {0}
    set_connection_parameter_value spi_engine_offload_0.if_ctrl_enabled/axi_spi_engine_0.if_offload0_enabled startPort {}
    set_connection_parameter_value spi_engine_offload_0.if_ctrl_enabled/axi_spi_engine_0.if_offload0_enabled startPortLSB {0}
    set_connection_parameter_value spi_engine_offload_0.if_ctrl_enabled/axi_spi_engine_0.if_offload0_enabled width {0}

    add_connection spi_engine_offload_0.if_ctrl_mem_reset axi_spi_engine_0.if_offload0_mem_reset conduit
    set_connection_parameter_value spi_engine_offload_0.if_ctrl_mem_reset/axi_spi_engine_0.if_offload0_mem_reset endPort {}
    set_connection_parameter_value spi_engine_offload_0.if_ctrl_mem_reset/axi_spi_engine_0.if_offload0_mem_reset endPortLSB {0}
    set_connection_parameter_value spi_engine_offload_0.if_ctrl_mem_reset/axi_spi_engine_0.if_offload0_mem_reset startPort {}
    set_connection_parameter_value spi_engine_offload_0.if_ctrl_mem_reset/axi_spi_engine_0.if_offload0_mem_reset startPortLSB {0}
    set_connection_parameter_value spi_engine_offload_0.if_ctrl_mem_reset/axi_spi_engine_0.if_offload0_mem_reset width {0}

    add_connection sys_clk.clk axi_spi_engine_0.if_spi_clk clock

    add_connection sys_clk.clk axi_spi_engine_0.s_axi_clock clock

    add_connection sys_clk.clk spi_engine_execution_0.if_clk clock

    add_connection sys_clk.clk spi_engine_interconnect_0.if_clk clock

    add_connection sys_clk.clk spi_engine_offload_0.if_ctrl_clk clock

    add_connection sys_clk.clk spi_engine_offload_0.if_spi_clk clock

    add_connection sys_clk.clk sys_gpio_bd.clk clock

    add_connection sys_clk.clk sys_gpio_in.clk clock

    add_connection sys_clk.clk sys_gpio_out.clk clock

    add_connection sys_clk.clk sys_hps.f2h_axi_clock clock

    add_connection sys_clk.clk sys_hps.f2h_sdram0_clock clock

    add_connection sys_clk.clk sys_hps.h2f_axi_clock clock

    add_connection sys_clk.clk sys_hps.h2f_lw_axi_clock clock

    add_connection sys_clk.clk sys_id.clk clock

    add_connection sys_clk.clk sys_int_mem.clk1 clock

    add_connection sys_clk.clk sys_spi.clk clock

    add_connection sys_clk.clk_reset axi_spi_engine_0.if_spi_resetn reset

    add_connection sys_clk.clk_reset spi_engine_execution_0.if_resetn reset

    add_connection sys_clk.clk_reset spi_engine_interconnect_0.if_resestn reset

    add_connection sys_clk.clk_reset sys_dma_clk.clk_in_reset reset

    add_connection sys_clk.clk_reset sys_gpio_bd.reset reset

    add_connection sys_clk.clk_reset sys_gpio_in.reset reset

    add_connection sys_clk.clk_reset sys_gpio_out.reset reset

    add_connection sys_clk.clk_reset sys_id.reset reset

    add_connection sys_clk.clk_reset sys_int_mem.reset1 reset

    add_connection sys_clk.clk_reset sys_spi.reset reset

    add_connection sys_dma_clk.clk sys_hps.f2h_sdram1_clock clock

    add_connection sys_dma_clk.clk sys_hps.f2h_sdram2_clock clock

    add_connection sys_hps.f2h_irq0 axi_spi_engine_0.interrupt_sender interrupt
    set_connection_parameter_value sys_hps.f2h_irq0/axi_spi_engine_0.interrupt_sender irqNumber {0}

    add_connection sys_hps.h2f_axi_master sys_int_mem.s1 avalon
    set_connection_parameter_value sys_hps.h2f_axi_master/sys_int_mem.s1 arbitrationPriority {1}
    set_connection_parameter_value sys_hps.h2f_axi_master/sys_int_mem.s1 baseAddress {0x0000}
    set_connection_parameter_value sys_hps.h2f_axi_master/sys_int_mem.s1 defaultConnection {0}

    add_connection sys_hps.h2f_lw_axi_master axi_spi_engine_0.s_axi avalon
    set_connection_parameter_value sys_hps.h2f_lw_axi_master/axi_spi_engine_0.s_axi arbitrationPriority {1}
    set_connection_parameter_value sys_hps.h2f_lw_axi_master/axi_spi_engine_0.s_axi baseAddress {0x0000}
    set_connection_parameter_value sys_hps.h2f_lw_axi_master/axi_spi_engine_0.s_axi defaultConnection {0}

    add_connection sys_hps.h2f_lw_axi_master sys_gpio_bd.s1 avalon
    set_connection_parameter_value sys_hps.h2f_lw_axi_master/sys_gpio_bd.s1 arbitrationPriority {1}
    set_connection_parameter_value sys_hps.h2f_lw_axi_master/sys_gpio_bd.s1 baseAddress {0x00010080}
    set_connection_parameter_value sys_hps.h2f_lw_axi_master/sys_gpio_bd.s1 defaultConnection {0}

    add_connection sys_hps.h2f_lw_axi_master sys_gpio_in.s1 avalon
    set_connection_parameter_value sys_hps.h2f_lw_axi_master/sys_gpio_in.s1 arbitrationPriority {1}
    set_connection_parameter_value sys_hps.h2f_lw_axi_master/sys_gpio_in.s1 baseAddress {0x00010100}
    set_connection_parameter_value sys_hps.h2f_lw_axi_master/sys_gpio_in.s1 defaultConnection {0}

    add_connection sys_hps.h2f_lw_axi_master sys_gpio_out.s1 avalon
    set_connection_parameter_value sys_hps.h2f_lw_axi_master/sys_gpio_out.s1 arbitrationPriority {1}
    set_connection_parameter_value sys_hps.h2f_lw_axi_master/sys_gpio_out.s1 baseAddress {0x00109000}
    set_connection_parameter_value sys_hps.h2f_lw_axi_master/sys_gpio_out.s1 defaultConnection {0}

    add_connection sys_hps.h2f_lw_axi_master sys_id.control_slave avalon
    set_connection_parameter_value sys_hps.h2f_lw_axi_master/sys_id.control_slave arbitrationPriority {1}
    set_connection_parameter_value sys_hps.h2f_lw_axi_master/sys_id.control_slave baseAddress {0x00010000}
    set_connection_parameter_value sys_hps.h2f_lw_axi_master/sys_id.control_slave defaultConnection {0}

    add_connection sys_hps.h2f_lw_axi_master sys_spi.spi_control_port avalon
    set_connection_parameter_value sys_hps.h2f_lw_axi_master/sys_spi.spi_control_port arbitrationPriority {1}
    set_connection_parameter_value sys_hps.h2f_lw_axi_master/sys_spi.spi_control_port baseAddress {0x00108000}
    set_connection_parameter_value sys_hps.h2f_lw_axi_master/sys_spi.spi_control_port defaultConnection {0}

    add_connection sys_hps.h2f_reset axi_spi_engine_0.if_spi_resetn reset

    add_connection sys_hps.h2f_reset axi_spi_engine_0.s_axi_reset reset

    add_connection sys_hps.h2f_reset spi_engine_execution_0.if_resetn reset

    add_connection sys_hps.h2f_reset spi_engine_interconnect_0.if_resestn reset

    add_connection sys_hps.h2f_reset spi_engine_offload_0.if_spi_resetn reset

    add_connection sys_hps.h2f_user0_clock sys_dma_clk.clk_in clock

    # exported interfaces
    add_interface spi_engine_execution_0_if_active conduit end
    set_interface_property spi_engine_execution_0_if_active EXPORT_OF spi_engine_execution_0.if_active
    add_interface spi_engine_execution_0_if_cs conduit end
    set_interface_property spi_engine_execution_0_if_cs EXPORT_OF spi_engine_execution_0.if_cs
    add_interface spi_engine_execution_0_if_sclk clock source
    set_interface_property spi_engine_execution_0_if_sclk EXPORT_OF spi_engine_execution_0.if_sclk
    add_interface spi_engine_execution_0_if_sdi conduit end
    set_interface_property spi_engine_execution_0_if_sdi EXPORT_OF spi_engine_execution_0.if_sdi
    add_interface spi_engine_execution_0_if_sdo conduit end
    set_interface_property spi_engine_execution_0_if_sdo EXPORT_OF spi_engine_execution_0.if_sdo
    add_interface spi_engine_execution_0_if_sdo_t conduit end
    set_interface_property spi_engine_execution_0_if_sdo_t EXPORT_OF spi_engine_execution_0.if_sdo_t
    add_interface spi_engine_execution_0_if_three_wire conduit end
    set_interface_property spi_engine_execution_0_if_three_wire EXPORT_OF spi_engine_execution_0.if_three_wire
    add_interface spi_engine_offload_0_if_trigger conduit end
    set_interface_property spi_engine_offload_0_if_trigger EXPORT_OF spi_engine_offload_0.if_trigger
    add_interface sys_clk clock sink
    set_interface_property sys_clk EXPORT_OF sys_clk.clk_in
    add_interface sys_gpio_bd conduit end
    set_interface_property sys_gpio_bd EXPORT_OF sys_gpio_bd.external_connection
    add_interface sys_gpio_in conduit end
    set_interface_property sys_gpio_in EXPORT_OF sys_gpio_in.external_connection
    add_interface sys_gpio_out conduit end
    set_interface_property sys_gpio_out EXPORT_OF sys_gpio_out.external_connection
    add_interface sys_hps_hps_io conduit end
    set_interface_property sys_hps_hps_io EXPORT_OF sys_hps.hps_io
    add_interface sys_hps_i2c0 conduit end
    set_interface_property sys_hps_i2c0 EXPORT_OF sys_hps.i2c0
    add_interface sys_hps_i2c0_clk clock source
    set_interface_property sys_hps_i2c0_clk EXPORT_OF sys_hps.i2c0_clk
    add_interface sys_hps_i2c0_scl_in clock sink
    set_interface_property sys_hps_i2c0_scl_in EXPORT_OF sys_hps.i2c0_scl_in
    add_interface sys_hps_memory conduit end
    set_interface_property sys_hps_memory EXPORT_OF sys_hps.memory
    add_interface sys_rst reset sink
    set_interface_property sys_rst EXPORT_OF sys_clk.clk_in_reset
    add_interface sys_spi conduit end
    set_interface_property sys_spi EXPORT_OF sys_spi.external

    # interconnect requirements
    set_interconnect_requirement {$system} {qsys_mm.burstAdapterImplementation} {PER_BURST_TYPE_CONVERTER}
    set_interconnect_requirement {$system} {qsys_mm.clockCrossingAdapter} {AUTO}
    set_interconnect_requirement {$system} {qsys_mm.maxAdditionalLatency} {4}
}


create_clock -period "10.000 ns"  -name sys_clk_100mhz      [get_ports {sys_clk}]

derive_pll_clocks
derive_clock_uncertainty


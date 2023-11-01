//Copyright (C)2014-2023 GOWIN Semiconductor Corporation.
//All rights reserved.
//File Title: Timing Constraints file
//GOWIN Version: 1.9.9 Beta-3
//Created Time: 2023-08-18 15:50:31
create_clock -name pll_ae350_clkout2 -period 10 -waveform {0 5} [get_pins {u_Gowin_PLL_AE350/PLL_inst/CLKOUT2}]
create_clock -name pll_ddr3_clkout2 -period 2.5 -waveform {0 1.25} [get_pins {u_Gowin_PLL_DDR3/PLL_inst/CLKOUT2}]
create_clock -name pll_ae350_clkout0 -period 12.5 -waveform {0 6.25} [get_pins {u_Gowin_PLL_AE350/PLL_inst/CLKOUT0}]
create_clock -name pll_ddr3_clkout0 -period 20 -waveform {0 10} [get_pins {u_Gowin_PLL_DDR3/PLL_inst/CLKOUT0}]
create_clock -name u_ddr3_fclkdiv -period 20 -waveform {0 10} [get_pins {u_RiscV_AE350_SOC_Top/u_RiscV_AE350_SOC/u_riscv_ae350_ddr3_top/u_ddr3_memory_ahb_top/u_ddr3/gw3_top/u_ddr_phy_top/fclkdiv/CLKOUT}]
create_clock -name pll_ae350_clkout3 -period 10 -waveform {0 5} [get_pins {u_Gowin_PLL_AE350/PLL_inst/CLKOUT3}]
create_clock -name flash_spi_clk_in -period 20 -waveform {0 10} [get_nets {u_RiscV_AE350_SOC_Top/FLASH_SPI_CLK_in}]
set_clock_groups -exclusive -group [get_clocks {flash_spi_clk_in}] -group [get_clocks {pll_ddr3_clkout2}] -group [get_clocks {pll_ae350_clkout2}] -group [get_clocks {pll_ae350_clkout3}] -group [get_clocks {pll_ae350_clkout0}] -group [get_clocks {pll_ddr3_clkout0}] -group [get_clocks {u_ddr3_fclkdiv}]
set_operating_conditions -grade c -model slow -speed 2 -setup -hold

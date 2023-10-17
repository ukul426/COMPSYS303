# THIS FILE IS AUTOMATICALLY GENERATED
# Project: C:\Users\dulan\OneDrive\Desktop\ENGGEN\2023_sem2\303\COMPSYS303\301backup\Dulanya\301_15_path_following\Additional_HD.cydsn\Additional_HD.cyprj
# Date: Mon, 16 Oct 2023 23:38:57 GMT
#set_units -time ns
create_clock -name {CyILO} -period 10000 -waveform {0 5000} [list [get_pins {ClockBlock/ilo}] [get_pins {ClockBlock/clk_100k}] [get_pins {ClockBlock/clk_1k}] [get_pins {ClockBlock/clk_32k}]]
create_clock -name {CyIMO} -period 41.666666666666664 -waveform {0 20.8333333333333} [list [get_pins {ClockBlock/imo}]]
create_clock -name {CyPLL_OUT} -period 20.833333333333332 -waveform {0 10.4166666666667} [list [get_pins {ClockBlock/pllout}]]
create_clock -name {CyMASTER_CLK} -period 20.833333333333332 -waveform {0 10.4166666666667} [list [get_pins {ClockBlock/clk_sync}]]
create_generated_clock -name {CyBUS_CLK} -source [get_pins {ClockBlock/clk_sync}] -edges {1 2 3} [list [get_pins {ClockBlock/clk_bus_glb}]]
create_generated_clock -name {Clock_QENC} -source [get_pins {ClockBlock/clk_sync}] -edges {1 5 9} [list [get_pins {ClockBlock/dclk_glb_0}]]
create_generated_clock -name {Clock_PWM} -source [get_pins {ClockBlock/clk_sync}] -edges {1 49 97} [list [get_pins {ClockBlock/dclk_glb_2}]]
create_generated_clock -name {comp_clk} -source [get_pins {ClockBlock/clk_sync}] -edges {1 49 97} [list [get_pins {ClockBlock/aclk_glb_0}]]
create_generated_clock -name {timer_clock_1} -source [get_pins {ClockBlock/clk_sync}] -edges {1 49 97} [list [get_pins {ClockBlock/dclk_glb_1}]]

set_false_path -from [get_pins {__ONE__/q}]

# Component constraints for C:\Users\dulan\OneDrive\Desktop\ENGGEN\2023_sem2\303\COMPSYS303\301backup\Dulanya\301_15_path_following\Additional_HD.cydsn\TopDesign\TopDesign.cysch
# Project: C:\Users\dulan\OneDrive\Desktop\ENGGEN\2023_sem2\303\COMPSYS303\301backup\Dulanya\301_15_path_following\Additional_HD.cydsn\Additional_HD.cyprj
# Date: Mon, 16 Oct 2023 23:38:53 GMT

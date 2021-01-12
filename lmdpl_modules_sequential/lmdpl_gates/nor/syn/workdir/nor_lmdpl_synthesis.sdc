###################################################################

# Created by write_sdc on Wed Nov 25 17:05:35 2020

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
create_clock [get_ports clk]  -period 11.25  -waveform {0 5.625}
set_clock_uncertainty 0.5  [get_clocks clk]

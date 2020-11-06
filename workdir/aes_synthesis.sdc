###################################################################

# Created by write_sdc on Thu Nov  5 13:56:12 2020

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
create_clock [get_ports clk]  -period 11.25  -waveform {0 5.625}
set_clock_uncertainty 0.5  [get_clocks clk]

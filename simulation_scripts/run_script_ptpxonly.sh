#!/bin/bash

for counter in {0..599}
do

cp pt_script_aes_lowpower.tcl pt_script_mod.tcl
echo "Running simulation number $counter"
sed -i "s/test.vcd/\/home\/dtatest\/DTA-aes\/final_results_1ps_nowddl_lowpower\/vcdFiles_sync\/test_$counter.vcd/g" pt_script_mod.tcl

pt_shell -f pt_script_mod.tcl >>pt.log

mv yuan_power.out /home/dtatest/DTA-aes/final_results_1ps_nowddl_lowpower/inFiles_nowddl_lowpower_newddc_1ps/yuan_power_$counter.out
mv pt.log /home/dtatest/DTA-aes/final_results_1ps_nowddl_lowpower/ptlogfiles_nowddl_lowpower_newddc_1ps/pt_$counter.log

done

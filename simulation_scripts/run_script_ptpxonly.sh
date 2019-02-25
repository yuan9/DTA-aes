#!/bin/bash

for counter in {0..599}
do

cp pt_script_aes.tcl pt_script_mod.tcl
echo "Running simulation number $counter"
sed -i "s/test.vcd/\/home\/dtatest\/DTA-aes\/final_results_100fs_netlist2\/vcdFiles_sync\/test_$counter.vcd/g" pt_script_mod.tcl

pt_shell -f pt_script_mod.tcl>>pt.log

mv yuan_power.out /home/dtatest/DTA-aes/final_results_100fs_netlist2_allwithleaf/inFiles_result_sync/yuan_power_$counter.out


done

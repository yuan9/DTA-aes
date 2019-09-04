# DTA-aes

The standalone AES setup is being used to test countermeasures using WDDL.
There are two main branches which contains two different setups. Simulation procedure is same for both.

Branch 1: no_wddl
  -Testbench runs the design at 24 Mhz.
  -The netlist used for simulation is : aes_netlist.v

Branch 2: ms_dff
  -Testbench runs the design at 12Mhz, precharge at 24Mhz
  -The netlist used for simulation is : aes_netlist_wddl.v
  -Need to create updated sdf and ddc after editing the netlist and before running batch simulation.

For running multiple DTA_AES setups in parallel clone and replace paths in the following files (these are absolute paths):
  -Makefile
  -simulation_scripts/run_script.sh
  -simulation_scripts/pt_script_aes.tcl
  

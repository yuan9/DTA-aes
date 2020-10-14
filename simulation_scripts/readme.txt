File locations:
This applies to no_wddl branch. The timestamps for wddl branch is different in outfile_postprocess_ptpx.py


1. gtl_aes_gui.do and gtl_aes_commandline.do files are in /home/dtatest/DTA-aes/

 
Before running the script 
tips:
1. In the folder: /home/dtatest/DTA-aes/
   create a copy of aes_cipher_top_tb.v by:
   cp aes_cipher_top_tb.v aes_cipher_top_tb_orig
   in the aes_cipher_top_tb_orig, make sure the plaintext value is :
   text_in = 128'hFEDCBA98765432100123456789ABCDEF;
   so that the script run_script.sh can find the location to replace the plaintext by random numbers. 

Notice that for the WDDL mitigation
Before step2, modify the gatelvel netlist to replace the gate with WDDL, /home/dtatest/DTA-aes/workdir/aes_netlist_wddl.v
run: make aes-gui-wddl for the gate-level netlist and this procedure will generate the new .sdf and .ddc file. 

2. In the simulation script /home/dtatest/DTA-aes/simulation_scripts/run_script.sh, change the name of the result folder in in the line: results_folder=TheNameYouLike

Run the script for simulation:
sh run_script.sh

Running the scripts on the tmux:
tmux # start a new session
tmux ls # list all the running sessions
ctrl+B D # dettach from one session
exit # exit current session
ctrl+B % # ctrl+B right, left, switching between differenct simulations
tmux attach-session -t 0 # attach one session

Post processing files in one script
Extract vcd files to one folder, extract .out file to one folder, extract plaintext and ciphertext,  Post processing the .out file to be the input file of Inspector import module (function: extract the power value for defined mode, change name from 1_vector.out --> 001_vector.out, notice we only have 3 digits for now) run:
sh postprocessing_script.sh for no_wddl design/
sh postprocessing_script2.sh for the design with wddl 
the main difference for this script is the plaintext and ciphertext extraction.
 Note that before run this script, need to check the orginial outfile start and end timestamp change change the the start time and end time in the python file: 
outfile_postprocess_ptpx.py(this program is called by the postprocessing_script.sh)


How to run ptpx only after the gate level simulation?
sh run_script_ptpxonly.sh




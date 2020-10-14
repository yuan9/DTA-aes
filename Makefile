gtl-vsim: 

#---------------------------------------------#
# for keccak setting
#---------------------------------------------#
#~ 	#vsim
#~ 	#vlog -work work "Add Tech Library files here!"
#~ 	vlib work
#~ 	vlog -work work /home/dtatest/gtl_sim/fame_v2/lib/tech/dare/components/sage-x_tsmc_cl018g_rvt.v 
#~ 	vlog -work work /home/dtatest/gtl_sim/fame_v2/lib/tech/dare/components/tpz018nv.v  
#~ 	#vlog -work work /home/bilgiday/sram_new/verilog/sram2p8x32.v
#~ 	#vlog -work work /home/bilgiday/sram_new/verilog/sram6x26.v  
#~ 	#vlog -work work /home/bilgiday/sram_new/verilog/sram6x32.v  
#~ 	#vlog -work work /home/bilgiday/sram_new/verilog/sram8x25.v  
#~ 	#vlog -work work /home/bilgiday/sram_new/verilog/sram7x25.v  
#~ 	#vlog -work work /home/bilgiday/sram_new/verilog/sram8x32.v  
#~ 	#vlog -work work /home/bilgiday/sram_new/verilog/sram9x32.v  
#~ 	#vlog -work work /home/bilgiday/sram_new/verilog/sram12x8.v  
#~ 	#vlog -work work /home/bilgiday/sram_new/verilog/sram13x8.v  
	
#~ 	#vlog -work work /home/dtatest/DTA-aes/workdir/aes_netlist.v
#--------------------------------------------#
#-------------------------------------------#
# for wpi setting
#-------------------------------------------#
	vlib work
	vlog -work work ./libs/tcb018gbwp7t.v
	vlog -work work ./libs/tpz973gv.v
	vlog -work work ./libs/PDB1A.v
	vlog -work work ./libs/aspulsgfs1p8192x8cm16sw0_rtl.v
#--------------------------------------------#
	
	vlog -work work aes_cipher_top_tb.v

aes-gui: gtl-vsim
	dc_shell -f run.tcl
	vlog -work work /home/yuan9/DTA-aes/workdir/aes_netlist.v
	#make -C "../../software/test_soft/fault_tests/dtatest" prog.mem
	vsim -L work -i work.aes_cipher_top_tb -do gtl_aes_gui.do +notimingchecks -sdfmax /aes_cipher_top_tb/dut=/home/yuan9/DTA-aes/workdir/aes_synthesis.sdf
	#vsim -L work -novopt -i work.aes_cipher_top_tb +notimingchecks -sdfmax /aes_cipher_top_tb/dut=/home/dtatest/DTA-aes/workdir/aes_synthesis.sdf

	#make -C "../../software/test_soft/fault_tests/dtatest" clean

aes-commandline: gtl-vsim
	vlog -work work /home/dtatest/DTA-aes/workdir/aes_netlist.v
	#make -C "../../software/test_soft/fault_tests/dtatest" prog.mem
	vsim -L work -novopt -c work.aes_cipher_top_tb -do gtl_aes_commandline.do +notimingchecks -sdfmax /aes_cipher_top_tb/dut=/home/dtatest/DTA-aes/workdir/aes_synthesis.sdf
	#vsim -L work -vopt -c work.aes_cipher_top_tb -do gtl_aes_commandline.do +notimingchecks -sdfmax /aes_cipher_top_tb/dut=/home/dtatest/DTA-aes/workdir/aes_synthesis.sdf

aes-gui-wddl: gtl-vsim
	 vlog -work work /home/dtatest/DTA-aes/workdir/aes_netlist_wddl.v
	#make -C "../../software/test_soft/fault_tests/dtatest" prog.mem
	dc_shell -f wddl_sdfupdate.tcl
	vsim -L work -novopt -i work.aes_cipher_top_tb -do gtl_aes_gui.do +notimingchecks -sdfmax /aes_cipher_top_tb/dut=/home/dtatest/DTA-aes/workdir/wddl_aes.sdf
	#vsim -L work -vopt -i work.aes_cipher_top_tb -do gtl_aes_gui.do +notimingchecks -sdfmax /aes_cipher_top_tb/dut=/home/dtatest/DTA-aes/workdir/wddl_aes.sdf
	#vsim -L work -novopt -i work.aes_cipher_top_tb +notimingchecks -sdfmax /aes_cipher_top_tb/dut=/home/dtatest/DTA-aes/workdir/aes_synthesis.sdf

	#make -C "../../software/test_soft/fault_tests/dtatest" clean

aes-commandline-wddl: gtl-vsim
	 vlog -work work /home/dtatest/DTA-aes/workdir/aes_netlist_wddl.v
	#make -C "../../software/test_soft/fault_tests/dtatest" prog.mem
	#dc_shell -f wddl_sdfupdate.tcl
	vsim -L work -novopt -c work.aes_cipher_top_tb -do gtl_aes_commandline.do +notimingchecks -sdfmax /aes_cipher_top_tb/dut=/home/dtatest/DTA-aes/workdir/wddl_aes.sdf
	#vsim -L work -vopt -c work.aes_cipher_top_tb -do gtl_aes_commandline.do +notimingchecks -sdfmax /aes_cipher_top_tb/dut=/home/dtatest/DTA-aes/workdir/wddl_aes.sdf
	#vsim -L work -novopt -i work.aes_cipher_top_tb +notimingchecks -sdfmax /aes_cipher_top_tb/dut=/home/dtatest/DTA-aes/workdir/aes_synthesis.sdf

	#make -C "../../software/test_soft/fault_tests/dtatest" clean

aes-gui-lowpower: gtl-vsim
	 vlog -work work /home/dtatest/DTA-aes/workdir/aes_netlist_lowpower.v
	#make -C "../../software/test_soft/fault_tests/dtatest" prog.mem
	dc_shell -f lowpower_sdfupdate.tcl
	vsim -L work -novopt -i work.aes_cipher_top_tb -do gtl_aes_gui.do +notimingchecks -sdfmax /aes_cipher_top_tb/dut=/home/dtatest/DTA-aes/workdir/lowpower_aes.sdf
	#vsim -L work -novopt -i work.aes_cipher_top_tb +notimingchecks -sdfmax /aes_cipher_top_tb/dut=/home/dtatest/DTA-aes/workdir/aes_synthesis.sdf

	#make -C "../../software/test_soft/fault_tests/dtatest" clean

aes-commandline-lowpower: gtl-vsim
	 vlog -work work /home/dtatest/DTA-aes/workdir/aes_netlist_lowpower.v
	#make -C "../../software/test_soft/fault_tests/dtatest" prog.mem
	#dc_shell -f lowpower_sdfupdate.tcl
	vsim -L work -novopt -c work.aes_cipher_top_tb -do gtl_aes_commandline.do +notimingchecks -sdfmax /aes_cipher_top_tb/dut=/home/dtatest/DTA-aes/workdir/lowpower_aes.sdf
	#vsim -L work -novopt -i work.aes_cipher_top_tb +notimingchecks -sdfmax /aes_cipher_top_tb/dut=/home/dtatest/DTA-aes/workdir/aes_synthesis.sdf

	#make -C "../../software/test_soft/fault_tests/dtatest" clean

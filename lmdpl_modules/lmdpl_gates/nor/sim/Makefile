#LIBRARY='/opt/libraries/TSMCHOME/digital/Front_End/verilog/tcb018gbwp7t_270a/tcb018gbwp7t.v'
LIBRARY='/opt/libs/tsmc180/extracted/tsmc/cl018g/sc9_base_rvt/2008q3v01/verilog/sage-x_tsmc_cl018g_rvt.v'

vsim: compile
	vsim work.nor_lmdpl_sim -voptargs=+acc

vsim-gtl: compile-gtl
	vsim work.nor_lmdpl_sim -voptargs=+acc -sdfmax /nor_lmdpl_sim/nor_lmdpl_inst=../syn/workdir/nor_lmdpl_synthesis.sdf

compile: 
	vlog -quiet -work work ../nor_lmdpl.v  
	vlog -quiet -work work ../nor_lmdpl_sim.v	
	vlog -quiet -work work ../nor_tablegen.v
	vlog -quiet -work work ../../../lmdpl_common/boolean_mask_dualrail.v
	vlog -quiet -work work ../../../lmdpl_common/lmdpl_nl_lut.v
	vlog -quiet -work work ../../../xorshift_prng.v
	vlog -quiet -work work ../../../lmdpl_common/sage_gates.v
	vlog -quiet -work work ../../../lmdpl_common/tsmc18_gates.v
	vlog -quiet -work work $(LIBRARY)

compile-gtl: 
	vlog -quiet -work work ../syn/workdir/nor_lmdpl_netlist.v  
	vlog -quiet -work work ../nor_lmdpl_sim.v	
	vlog -quiet -work work ../../../xorshift_prng.v
	vlog -quiet -work work $(LIBRARY)

vsim-clean:
	@rm -rf work/
	@rm -f transcript
	@rm -f vsim.wlf 
	@rm -f nor_lmdpl_sim.cr.mti  nor_lmdpl_sim.mpf

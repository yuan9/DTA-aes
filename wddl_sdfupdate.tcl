if {[catch {getenv "TSMC180_HOME"} msg]} {
 echo "ERROR: Enviroment variable TSMC180_HOME should point at a tsmc180 lib installation "
 exit
}
set tech 180nm
set grtechlibdir [getenv {TSMC180_HOME}]
set cell_path "${grtechlibdir}/tsmc/cl018g/sc9_base_rvt/2008q3v01/"
set cell_lib_path "$cell_path/db/"
set io_path "${grtechlibdir}/gpio/TPZ018NV/TS02IG502/fb_tpz018nv_280a_r6p0-02eac0/"
set io_lib_path "$io_path/timing_power_noise/NLDM/tpz018nv_280a/"
set memory_path "/home/bilgiday/sram_new"
set memory_lib_path "$memory_path/db/"
set grtechlibpath ". $cell_lib_path $io_lib_path $memory_lib_path"
set grtechlibpath ". $cell_lib_path $io_lib_path $memory_path"
# Target library - worst case condition - 1.62V 125C
set grtechtargetlib "sage-x_tsmc_cl018g_rvt_ss_1p62v_125c.db"
# IO libary - worst case (wc)
set iolib "tpz018nvwc.db"
# Memory Library - worst case (slow)
set memlib "/home/bilgiday/sram_new/db/sram12x8_slow_syn.db /home/bilgiday/sram_new/db/sram6x26_slow_syn.db /home/bilgiday/sram_new/db/sram8x25_slow_syn.db /home/bilgiday/sram_new/db/sram9x32_slow_syn.db /home/bilgiday/sram_new/db/sram6x32_slow_syn.db /home/bilgiday/sram_new/db/sram8x32_slow_syn.db /home/bilgiday/sram_new/db/sram2p8x32_slow_syn.db /home/bilgiday/sram_new/db/sram13x8_slow_syn.db"
# Link library - worst case condition - wc
set grtechlinklib "* $grtechtargetlib $iolib $memlib"
set search_path    $grtechlibpath
set target_library $grtechtargetlib
set link_library   $grtechlinklib
# Technology File
set technology_file_path "$cell_path/milkyway/"
set technology_file "$technology_file_path/tech_sage-x_tsmc_cl018g_6lm.tf"
read_verilog -netlist workdir/aes_netlist_wddl.v
elaborate aes_cipher_top -library work -update
current_design aes_cipher_top
write_sdf -version 2.1 workdir/wddl_aes.sdf
#write -f ddc -hier aes_cipher_top -output workdir/wddl_aes_test.ddc
quit

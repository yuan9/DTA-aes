#################################################################################
#-- File:        setup_dare.tcl
#-- Author:      Chinmay Deshpande 
#-- Description: Library setup for TSMC 180
#################################################################################

#################################################################################
# Library setup
#################################################################################

# TSMC180_HOME - /opt/libs/tsmc180/extracted
# pk TODO:
#if {[catch {getenv "TSMC180_HOME"} msg]} {
# echo "$env(TSMC180_HOME)"
# echo "ERROR: Enviroment variable TSMC180_HOME should point at a tsmc180 lib installation "
# exit
#}

set tech 180nm
set grtechlibdir "/opt/libraries/TSMCHOME/"
#TODO set grtechlibdir [getenv {TSMC180_HOME}]
set front_end_path "$grtechlibdir/digital/Front_End/"
set back_end_path "$grtechlibdir/digital/Back_End/"
set cell_lib_path "$front_end_path/timing_power_noise/NLDM/tcb018gbwp7t_270a/"
#set cell_lib_path "$front_end_path/timing_power_noise/NLDM/tcb018g3d3_280a/"
set io_lib_path "$front_end_path/timing_power_noise/NLDM/tpz973gv_280a/"
set a_io_lib_path "$front_end_path/timing_power/tpa018nv_270a/"
#set memory_path "/home/pantea/RAM_byte/sram8kx8/compout/"
set memory_path "/gulerlab/TAPEOUT2020/sram8kx8/compout/"
set memory_lib_path ""
set grtechlibpath ". $cell_lib_path $io_lib_path $memory_path $a_io_lib_path"
#set grtechlibpath ". $cell_lib_path $io_lib_path $memory_lib_path"
#set grtechlibpath ". ../hdl/ $cell_lib_path $io_lib_path $memory_path"
#set cell_path "${grtechlibdir}/tsmc/cl018g/sc9_base_rvt/2008q3v01/"
#set cell_lib_path "$cell_path/db/"
#set io_path "${grtechlibdir}/gpio/TPZ018NV/TS02IG502/fb_tpz018nv_280a_r6p0-02eac0/" 
#set io_lib_path "$io_path/timing_power_noise/NLDM/tpz018nv_280a/"
#set memory_path "/home/bilgiday/sram_new" 
#set memory_lib_path "$memory_path/db/" 
#set grtechlibpath ". $cell_lib_path $io_lib_path $memory_lib_path"
#set grtechlibpath ". $cell_lib_path $io_lib_path $memory_path"

# Target library - worst case condition - 1.62V 125C
set grtechtargetlib "tcb018gbwp7twc.db"
#set grtechtargetlib "tcb018g3d3wc.db"
#set grtechtargetlib "sage-x_tsmc_cl018g_rvt_ss_1p62v_125c.db"

# IO libary - worst case (wc)
set iolib "tpz973gvwc.db"
set a_iolib "tpa018nvwc.db"
#set iolib "tpz018nvwc.db"

# Memory Library - worst case (slow)
#TODO memlib and search_path accordingly
#set memlib "/home/pantea/RAM_byte/sram16kx8/compout/views/aspulsgfs1p16384x8cm16sw0/Worst/aspulsgfs1p16384x8cm16sw0.lib"
set memlib "$memory_path/libcompile/aspulsgfs1p8192x8cm16sw0/Worst/aspulsgfs1p8192x8cm16sw0_lib.db"
#set memlib "/home/bilgiday/sram_new/db/sram12x8_slow_syn.db /home/bilgiday/sram_new/db/sram6x26_slow_syn.db /home/bilgiday/sram_new/db/sram8x25_slow_syn.db /home/bilgiday/sram_new/db/sram9x32_slow_syn.db /home/bilgiday/sram_new/db/sram6x32_slow_syn.db /home/bilgiday/sram_new/db/sram8x32_slow_syn.db /home/bilgiday/sram_new/db/sram2p8x32_slow_syn.db /home/bilgiday/sram_new/db/sram13x8_slow_syn.db"

# Link library - worst case condition - wc
set grtechlinklib "* $grtechtargetlib $iolib $memlib $a_iolib"

set search_path    $grtechlibpath
set target_library $grtechtargetlib
set link_library   $grtechlinklib

# Technology File
set technology_file_path "$back_end_path/milkyway/tcb018gbwp7t_270a/"
#set technology_file_path "$back_end_path/milkyway/tcb018g3d3_280a/"
set technology_file "$technology_file_path/techfiles/tsmc018_6lm.tf"
#set technology_file_path "$cell_path/milkyway/"
#set technology_file "$technology_file_path/tech_sage-x_tsmc_cl018g_6lm.tf"

# Milkyway Reference Library
set std_cell_mw_ref_lib_path "$technology_file_path/cell_frame/"
set std_cell_mw_ref_lib "$std_cell_mw_ref_lib_path/tcb018gbwp7t"
#set std_cell_mw_ref_lib "$std_cell_mw_ref_lib_path/tcb018g3d3"
#set io_mw_ref_lib_path "$io_path/milkyway/"
#set io_mw_ref_lib "$io_mw_ref_lib_path/tpz018nv_280a/mt_2/6lm/cell_frame/tpz018nv"
# IO MW Ref library changed  to a location where it has the gate area information 
# dumped into the FRAM views of cells
set io_mw_ref_lib_path "$back_end_path/milkyway/"
set io_mw_ref_lib "$io_mw_ref_lib_path/tpz973gv_280a/mt_2/6lm/cell_frame/tpz973gv/"
#set io_mw_ref_lib_path "/home/shashank/nist/NISTCHIP/nistchip_hw/designs/leon3-asic/gpio"
#set io_mw_ref_lib "$io_mw_ref_lib_path/tpz018nv_sel"


set io_bonding_ref_lib "/opt/libraries/TSMCHOME/digital/Back_End/milkyway/tpb018v_180a/cup/6lm/cell_frame/tpb018v"
set a_io_mw_ref_lib "/opt/libraries/TSMCHOME/digital/Back_End/milkyway/tpa018nv_270a/mt_2/6lm/cell_frame/tpa018nv"
set mem_mw_ref_lib_path "$memory_path"
#TODO
set mem_mw_ref_lib "$memory_path/fram/aspulsgfs1p8192x8cm16sw0/fram_for_aspulsgfs1p8192x8cm16sw0/"
#set mem_mw_ref_lib "$memory_path/fram/aspulsgfs1p16384x8cm16sw0/fram_for_aspulsgfs1p16384x8cm16sw0"
#set io_bonding_ref_lib "/opt/libs/tsmc180/extracted/gpio/TPB018NV/TS02IG504/fb_TSMCHOME_tpb018v_140a/digital/Back_End/milkyway/tpb018v_140a/cup/6lm/cell_frame/tpb018v"
#set mem_mw_ref_lib_path "$memory_path"
#set mem_mw_ref_lib "$memory_path/memories8"

#yy
# Milkyway Design
#set mw_design_library picochip_mw_lib

#create_mw_lib -technology $technology_file -mw_reference_library "$std_cell_mw_ref_lib $io_mw_ref_lib $mem_mw_ref_lib $io_bonding_ref_lib $a_io_mw_ref_lib" -open $mw_design_library/

### Library rules...

## Library attributes
## e.g. set hdlin_latch_synch_set_reset "false" 

## Don't use list
## e.g set_dont_use lib/TIEH 
##     set_dont_uselib/TIEL
#if {[info exists timestamp]} {
#	puts "INFO: timestamp already set to $timestamp"
#} else {
#	set timestamp [clock format [clock seconds] -format {%b%d_%H%M%S}]
#	puts "INFO: Setting timestamp to $timestamp"
#}

#catch {sh mkdir dc_logs}
#set sh_output_log_file "dc_logs/dc_logs_$timestamp"

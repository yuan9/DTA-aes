onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /nand_lmdpl_sim/clk
add wave -noupdate /nand_lmdpl_sim/rst_n
add wave -noupdate /nand_lmdpl_sim/precharge
add wave -noupdate /nand_lmdpl_sim/in0
add wave -noupdate /nand_lmdpl_sim/in1
add wave -noupdate /nand_lmdpl_sim/m_in0
add wave -noupdate /nand_lmdpl_sim/m_in1
add wave -noupdate /nand_lmdpl_sim/m_out
add wave -noupdate /nand_lmdpl_sim/nand_out
add wave -noupdate /nand_lmdpl_sim/prng_out
add wave -noupdate -divider NAND
add wave -noupdate /nand_lmdpl_sim/nand_lmdpl_inst/clk
add wave -noupdate /nand_lmdpl_sim/nand_lmdpl_inst/rst_n
add wave -noupdate /nand_lmdpl_sim/nand_lmdpl_inst/precharge
add wave -noupdate /nand_lmdpl_sim/nand_lmdpl_inst/in0
add wave -noupdate /nand_lmdpl_sim/nand_lmdpl_inst/in1
add wave -noupdate /nand_lmdpl_sim/nand_lmdpl_inst/m_in0
add wave -noupdate /nand_lmdpl_sim/nand_lmdpl_inst/m_in1
add wave -noupdate /nand_lmdpl_sim/nand_lmdpl_inst/m_out
add wave -noupdate /nand_lmdpl_sim/nand_lmdpl_inst/out
add wave -noupdate /nand_lmdpl_sim/nand_lmdpl_inst/t
add wave -noupdate /nand_lmdpl_sim/nand_lmdpl_inst/t_reg
add wave -noupdate /nand_lmdpl_sim/nand_lmdpl_inst/in0_m
add wave -noupdate /nand_lmdpl_sim/nand_lmdpl_inst/in0_m_bar
add wave -noupdate /nand_lmdpl_sim/nand_lmdpl_inst/in1_m
add wave -noupdate /nand_lmdpl_sim/nand_lmdpl_inst/in1_m_bar
add wave -noupdate /nand_lmdpl_sim/nand_lmdpl_inst/in0_m_pre
add wave -noupdate /nand_lmdpl_sim/nand_lmdpl_inst/in0_m_bar_pre
add wave -noupdate /nand_lmdpl_sim/nand_lmdpl_inst/in1_m_pre
add wave -noupdate /nand_lmdpl_sim/nand_lmdpl_inst/in1_m_bar_pre
add wave -noupdate /nand_lmdpl_sim/nand_lmdpl_inst/in0_m_pre_reg
add wave -noupdate /nand_lmdpl_sim/nand_lmdpl_inst/in0_m_bar_pre_reg
add wave -noupdate /nand_lmdpl_sim/nand_lmdpl_inst/in1_m_pre_reg
add wave -noupdate /nand_lmdpl_sim/nand_lmdpl_inst/in1_m_bar_pre_reg
add wave -noupdate /nand_lmdpl_sim/nand_lmdpl_inst/out_m
add wave -noupdate /nand_lmdpl_sim/nand_lmdpl_inst/out_m_bar
add wave -noupdate /nand_lmdpl_sim/nand_lmdpl_inst/out_reg
add wave -noupdate /nand_lmdpl_sim/nand_lmdpl_inst/out_bar_reg
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {24259 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {136249 ps}

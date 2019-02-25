# Begin_DVE_Session_Save_Info
# DVE full session
# Saved on Thu Feb 21 14:28:36 2019
# Designs open: 1
#   V1: /home/dtatest/DTA-aes/final_results_100fs/vcdFiles_sync/test_1.vcd
# Toplevel windows open: 1
# 	TopLevel.1
#   Source.1: 
#   Group count = 6
#   Group Group1 signal count = 9
#   Group Group2 signal count = 1
#   Group Group3 signal count = 131
# End_DVE_Session_Save_Info

# DVE version: H-2013.06
# DVE build date: May 30 2013 23:12:01


#<Session mode="Full" path="/home/dtatest/DTA-aes/final_results_100fs/vcdFiles_sync/DVEfiles/session.tcl" type="Debug">

gui_set_loading_session_type Post
gui_continuetime_set

# Close design
if { [gui_sim_state -check active] } {
    gui_sim_terminate
}
gui_close_db -all
gui_expr_clear_all

# Close all windows
gui_close_window -type Console
gui_close_window -type Wave
gui_close_window -type Source
gui_close_window -type Schematic
gui_close_window -type Data
gui_close_window -type DriverLoad
gui_close_window -type List
gui_close_window -type Memory
gui_close_window -type HSPane
gui_close_window -type DLPane
gui_close_window -type Assertion
gui_close_window -type CovHier
gui_close_window -type CoverageTable
gui_close_window -type CoverageMap
gui_close_window -type CovDetail
gui_close_window -type Local
gui_close_window -type Stack
gui_close_window -type Watch
gui_close_window -type Group
gui_close_window -type Transaction



# Application preferences
gui_set_pref_value -key app_default_font -value {Helvetica,10,-1,5,50,0,0,0,0,0}
gui_src_preferences -tabstop 8 -maxbits 24 -windownumber 1
#<WindowLayout>

# DVE top-level session


# Create and position top-level window: TopLevel.1

if {![gui_exist_window -window TopLevel.1]} {
    set TopLevel.1 [ gui_create_window -type TopLevel \
       -icon $::env(DVE)/auxx/gui/images/toolbars/dvewin.xpm] 
} else { 
    set TopLevel.1 TopLevel.1
}
gui_show_window -window ${TopLevel.1} -show_state normal -rect {{65 52} {1677 1048}}

# ToolBar settings
gui_set_toolbar_attributes -toolbar {TimeOperations} -dock_state top
gui_set_toolbar_attributes -toolbar {TimeOperations} -offset 0
gui_show_toolbar -toolbar {TimeOperations}
gui_hide_toolbar -toolbar {&File}
gui_set_toolbar_attributes -toolbar {&Edit} -dock_state top
gui_set_toolbar_attributes -toolbar {&Edit} -offset 0
gui_show_toolbar -toolbar {&Edit}
gui_hide_toolbar -toolbar {CopyPaste}
gui_set_toolbar_attributes -toolbar {&Trace} -dock_state top
gui_set_toolbar_attributes -toolbar {&Trace} -offset 0
gui_show_toolbar -toolbar {&Trace}
gui_hide_toolbar -toolbar {TraceInstance}
gui_hide_toolbar -toolbar {BackTrace}
gui_set_toolbar_attributes -toolbar {&Scope} -dock_state top
gui_set_toolbar_attributes -toolbar {&Scope} -offset 0
gui_show_toolbar -toolbar {&Scope}
gui_set_toolbar_attributes -toolbar {&Window} -dock_state top
gui_set_toolbar_attributes -toolbar {&Window} -offset 0
gui_show_toolbar -toolbar {&Window}
gui_set_toolbar_attributes -toolbar {Signal} -dock_state top
gui_set_toolbar_attributes -toolbar {Signal} -offset 0
gui_show_toolbar -toolbar {Signal}
gui_set_toolbar_attributes -toolbar {Zoom} -dock_state top
gui_set_toolbar_attributes -toolbar {Zoom} -offset 0
gui_show_toolbar -toolbar {Zoom}
gui_set_toolbar_attributes -toolbar {Zoom And Pan History} -dock_state top
gui_set_toolbar_attributes -toolbar {Zoom And Pan History} -offset 0
gui_show_toolbar -toolbar {Zoom And Pan History}
gui_set_toolbar_attributes -toolbar {Grid} -dock_state top
gui_set_toolbar_attributes -toolbar {Grid} -offset 0
gui_show_toolbar -toolbar {Grid}
gui_hide_toolbar -toolbar {Simulator}
gui_hide_toolbar -toolbar {Interactive Rewind}
gui_hide_toolbar -toolbar {Testbench}

# End ToolBar settings

# Docked window settings
set HSPane.1 [gui_create_window -type HSPane -parent ${TopLevel.1} -dock_state left -dock_on_new_line true -dock_extent 455]
catch { set Hier.1 [gui_share_window -id ${HSPane.1} -type Hier] }
gui_set_window_pref_key -window ${HSPane.1} -key dock_width -value_type integer -value 455
gui_set_window_pref_key -window ${HSPane.1} -key dock_height -value_type integer -value 400
gui_set_window_pref_key -window ${HSPane.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${HSPane.1} {{left 0} {top 0} {width 454} {height 399} {dock_state left} {dock_on_new_line true} {child_hier_colhier 323} {child_hier_coltype 106} {child_hier_colpd 0} {child_hier_col1 0} {child_hier_col2 1} {child_hier_col3 -1}}
set DLPane.1 [gui_create_window -type DLPane -parent ${TopLevel.1} -dock_state left -dock_on_new_line true -dock_extent 438]
catch { set Data.1 [gui_share_window -id ${DLPane.1} -type Data] }
gui_set_window_pref_key -window ${DLPane.1} -key dock_width -value_type integer -value 438
gui_set_window_pref_key -window ${DLPane.1} -key dock_height -value_type integer -value 400
gui_set_window_pref_key -window ${DLPane.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${DLPane.1} {{left 0} {top 0} {width 437} {height 399} {dock_state left} {dock_on_new_line true} {child_data_colvariable 371} {child_data_colvalue 147} {child_data_coltype 87} {child_data_col1 0} {child_data_col2 1} {child_data_col3 2}}
set Console.1 [gui_create_window -type Console -parent ${TopLevel.1} -dock_state bottom -dock_on_new_line true -dock_extent 517]
gui_set_window_pref_key -window ${Console.1} -key dock_width -value_type integer -value 1613
gui_set_window_pref_key -window ${Console.1} -key dock_height -value_type integer -value 517
gui_set_window_pref_key -window ${Console.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${Console.1} {{left 0} {top 0} {width 1612} {height 516} {dock_state bottom} {dock_on_new_line true}}
#### Start - Readjusting docked view's offset / size
set dockAreaList { top left right bottom }
foreach dockArea $dockAreaList {
  set viewList [gui_ekki_get_window_ids -active_parent -dock_area $dockArea]
  foreach view $viewList {
      if {[lsearch -exact [gui_get_window_pref_keys -window $view] dock_width] != -1} {
        set dockWidth [gui_get_window_pref_value -window $view -key dock_width]
        set dockHeight [gui_get_window_pref_value -window $view -key dock_height]
        set offset [gui_get_window_pref_value -window $view -key dock_offset]
        if { [string equal "top" $dockArea] || [string equal "bottom" $dockArea]} {
          gui_set_window_attributes -window $view -dock_offset $offset -width $dockWidth
        } else {
          gui_set_window_attributes -window $view -dock_offset $offset -height $dockHeight
        }
      }
  }
}
#### End - Readjusting docked view's offset / size
gui_sync_global -id ${TopLevel.1} -option true

# MDI window settings
set Source.1 [gui_create_window -type {Source}  -parent ${TopLevel.1}]
gui_show_window -window ${Source.1} -show_state maximized
gui_update_layout -id ${Source.1} {{show_state maximized} {dock_state undocked} {dock_on_new_line false}}

# End MDI window settings

gui_set_env TOPLEVELS::TARGET_FRAME(Source) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(Schematic) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(PathSchematic) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(Wave) none
gui_set_env TOPLEVELS::TARGET_FRAME(List) none
gui_set_env TOPLEVELS::TARGET_FRAME(Memory) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(DriverLoad) none
gui_update_statusbar_target_frame ${TopLevel.1}

#</WindowLayout>

#<Database>

# DVE Open design session: 

if { ![gui_is_db_opened -db {/home/dtatest/DTA-aes/final_results_100fs/vcdFiles_sync/test_1.vcd.vpd}] } {
	gui_open_db -design V1 -file /home/dtatest/DTA-aes/final_results_100fs/vcdFiles_sync/test_1.vcd.vpd -nosource
}
gui_set_precision 100fs
gui_set_time_units 100fs
#</Database>

# DVE Global setting session: 


# Global: Bus
gui_bus_create -name EXP:state_reg {{aes_cipher_top_tb.dut.\sa00_reg[1] .Q} {aes_cipher_top_tb.dut.\sa00_reg[2] .Q} {aes_cipher_top_tb.dut.\sa00_reg[3] .Q} {aes_cipher_top_tb.dut.\sa00_reg[4] .Q} {aes_cipher_top_tb.dut.\sa00_reg[5] .Q} {aes_cipher_top_tb.dut.\sa00_reg[6] .Q} {aes_cipher_top_tb.dut.\sa00_reg[7] .Q} {aes_cipher_top_tb.dut.\sa01_reg[0] .Q} {aes_cipher_top_tb.dut.\sa01_reg[1] .Q} {aes_cipher_top_tb.dut.\sa01_reg[2] .Q} {aes_cipher_top_tb.dut.\sa01_reg[3] .Q} {aes_cipher_top_tb.dut.\sa01_reg[4] .Q} {aes_cipher_top_tb.dut.\sa01_reg[5] .Q} {aes_cipher_top_tb.dut.\sa01_reg[6] .Q} {aes_cipher_top_tb.dut.\sa01_reg[7] .Q} {aes_cipher_top_tb.dut.\sa02_reg[0] .Q} {aes_cipher_top_tb.dut.\sa02_reg[1] .Q} {aes_cipher_top_tb.dut.\sa02_reg[2] .Q} {aes_cipher_top_tb.dut.\sa02_reg[3] .Q} {aes_cipher_top_tb.dut.\sa02_reg[4] .Q} {aes_cipher_top_tb.dut.\sa02_reg[5] .Q} {aes_cipher_top_tb.dut.\sa02_reg[6] .Q} {aes_cipher_top_tb.dut.\sa02_reg[7] .Q} {aes_cipher_top_tb.dut.\sa03_reg[0] .Q} {aes_cipher_top_tb.dut.\sa03_reg[1] .Q} {aes_cipher_top_tb.dut.\sa03_reg[2] .Q} {aes_cipher_top_tb.dut.\sa03_reg[3] .Q} {aes_cipher_top_tb.dut.\sa03_reg[4] .Q} {aes_cipher_top_tb.dut.\sa03_reg[5] .Q} {aes_cipher_top_tb.dut.\sa03_reg[6] .Q} {aes_cipher_top_tb.dut.\sa03_reg[7] .Q} {aes_cipher_top_tb.dut.\sa10_reg[0] .Q} {aes_cipher_top_tb.dut.\sa10_reg[1] .Q} {aes_cipher_top_tb.dut.\sa10_reg[2] .Q} {aes_cipher_top_tb.dut.\sa10_reg[3] .Q} {aes_cipher_top_tb.dut.\sa10_reg[4] .Q} {aes_cipher_top_tb.dut.\sa10_reg[5] .Q} {aes_cipher_top_tb.dut.\sa10_reg[6] .Q} {aes_cipher_top_tb.dut.\sa10_reg[7] .Q} {aes_cipher_top_tb.dut.\sa11_reg[0] .Q} {aes_cipher_top_tb.dut.\sa11_reg[1] .Q} {aes_cipher_top_tb.dut.\sa11_reg[2] .Q} {aes_cipher_top_tb.dut.\sa11_reg[3] .Q} {aes_cipher_top_tb.dut.\sa11_reg[4] .Q} {aes_cipher_top_tb.dut.\sa11_reg[5] .Q} {aes_cipher_top_tb.dut.\sa11_reg[6] .Q} {aes_cipher_top_tb.dut.\sa11_reg[7] .Q} {aes_cipher_top_tb.dut.\sa12_reg[0] .Q} {aes_cipher_top_tb.dut.\sa12_reg[1] .Q} {aes_cipher_top_tb.dut.\sa12_reg[2] .Q} {aes_cipher_top_tb.dut.\sa12_reg[3] .Q} {aes_cipher_top_tb.dut.\sa12_reg[4] .Q} {aes_cipher_top_tb.dut.\sa12_reg[5] .Q} {aes_cipher_top_tb.dut.\sa12_reg[6] .Q} {aes_cipher_top_tb.dut.\sa12_reg[7] .Q} {aes_cipher_top_tb.dut.\sa13_reg[0] .Q} {aes_cipher_top_tb.dut.\sa13_reg[1] .Q} {aes_cipher_top_tb.dut.\sa13_reg[2] .Q} {aes_cipher_top_tb.dut.\sa13_reg[3] .Q} {aes_cipher_top_tb.dut.\sa13_reg[4] .Q} {aes_cipher_top_tb.dut.\sa13_reg[5] .Q} {aes_cipher_top_tb.dut.\sa13_reg[6] .Q} {aes_cipher_top_tb.dut.\sa13_reg[7] .Q} {aes_cipher_top_tb.dut.\sa20_reg[0] .Q} {aes_cipher_top_tb.dut.\sa20_reg[1] .Q} {aes_cipher_top_tb.dut.\sa20_reg[2] .Q} {aes_cipher_top_tb.dut.\sa20_reg[3] .Q} {aes_cipher_top_tb.dut.\sa20_reg[4] .Q} {aes_cipher_top_tb.dut.\sa20_reg[5] .Q} {aes_cipher_top_tb.dut.\sa20_reg[6] .Q} {aes_cipher_top_tb.dut.\sa20_reg[7] .Q} {aes_cipher_top_tb.dut.\sa21_reg[0] .Q} {aes_cipher_top_tb.dut.\sa21_reg[1] .Q} {aes_cipher_top_tb.dut.\sa21_reg[2] .Q} {aes_cipher_top_tb.dut.\sa21_reg[3] .Q} {aes_cipher_top_tb.dut.\sa21_reg[4] .Q} {aes_cipher_top_tb.dut.\sa21_reg[5] .Q} {aes_cipher_top_tb.dut.\sa21_reg[6] .Q} {aes_cipher_top_tb.dut.\sa21_reg[7] .Q} {aes_cipher_top_tb.dut.\sa22_reg[0] .Q} {aes_cipher_top_tb.dut.\sa22_reg[1] .Q} {aes_cipher_top_tb.dut.\sa22_reg[2] .Q} {aes_cipher_top_tb.dut.\sa22_reg[3] .Q} {aes_cipher_top_tb.dut.\sa22_reg[4] .Q} {aes_cipher_top_tb.dut.\sa22_reg[5] .Q} {aes_cipher_top_tb.dut.\sa22_reg[6] .Q} {aes_cipher_top_tb.dut.\sa22_reg[7] .Q} {aes_cipher_top_tb.dut.\sa23_reg[0] .Q} {aes_cipher_top_tb.dut.\sa23_reg[1] .Q} {aes_cipher_top_tb.dut.\sa23_reg[2] .Q} {aes_cipher_top_tb.dut.\sa23_reg[3] .Q} {aes_cipher_top_tb.dut.\sa23_reg[4] .Q} {aes_cipher_top_tb.dut.\sa23_reg[5] .Q} {aes_cipher_top_tb.dut.\sa23_reg[6] .Q} {aes_cipher_top_tb.dut.\sa23_reg[7] .Q} {aes_cipher_top_tb.dut.\sa30_reg[0] .Q} {aes_cipher_top_tb.dut.\sa30_reg[1] .Q} {aes_cipher_top_tb.dut.\sa30_reg[2] .Q} {aes_cipher_top_tb.dut.\sa30_reg[3] .Q} {aes_cipher_top_tb.dut.\sa30_reg[4] .Q} {aes_cipher_top_tb.dut.\sa30_reg[5] .Q} {aes_cipher_top_tb.dut.\sa30_reg[6] .Q} {aes_cipher_top_tb.dut.\sa30_reg[7] .Q} {aes_cipher_top_tb.dut.\sa31_reg[0] .Q} {aes_cipher_top_tb.dut.\sa31_reg[1] .Q} {aes_cipher_top_tb.dut.\sa31_reg[2] .Q} {aes_cipher_top_tb.dut.\sa31_reg[3] .Q} {aes_cipher_top_tb.dut.\sa31_reg[4] .Q} {aes_cipher_top_tb.dut.\sa31_reg[5] .Q} {aes_cipher_top_tb.dut.\sa31_reg[6] .Q} {aes_cipher_top_tb.dut.\sa31_reg[7] .Q} {aes_cipher_top_tb.dut.\sa32_reg[0] .Q} {aes_cipher_top_tb.dut.\sa32_reg[1] .Q} {aes_cipher_top_tb.dut.\sa32_reg[2] .Q} {aes_cipher_top_tb.dut.\sa32_reg[3] .Q} {aes_cipher_top_tb.dut.\sa32_reg[4] .Q} {aes_cipher_top_tb.dut.\sa32_reg[5] .Q} {aes_cipher_top_tb.dut.\sa32_reg[6] .Q} {aes_cipher_top_tb.dut.\sa32_reg[7] .Q} {aes_cipher_top_tb.dut.\sa33_reg[0] .Q} {aes_cipher_top_tb.dut.\sa33_reg[1] .Q} {aes_cipher_top_tb.dut.\sa33_reg[2] .Q} {aes_cipher_top_tb.dut.\sa33_reg[3] .Q} {aes_cipher_top_tb.dut.\sa33_reg[4] .Q} {aes_cipher_top_tb.dut.\sa33_reg[5] .Q} {aes_cipher_top_tb.dut.\sa33_reg[6] .Q}}

# Global: Expressions

# Global: Signal Time Shift

# Global: Signal Compare

# Global: Signal Groups
gui_load_child_values {aes_cipher_top_tb.dut.\sa11_reg[7] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa11_reg[6] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa10_reg[7] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa11_reg[5] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa10_reg[6] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa11_reg[4] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa10_reg[5] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa11_reg[3] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa10_reg[4] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa11_reg[2] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa10_reg[3] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa33_reg[7] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa11_reg[1] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa10_reg[2] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa33_reg[6] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa11_reg[0] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa32_reg[7] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa10_reg[1] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa33_reg[5] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa32_reg[6] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa10_reg[0] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa33_reg[4] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa03_reg[7] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa32_reg[5] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa33_reg[3] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa03_reg[6] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa32_reg[4] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa02_reg[7] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa33_reg[2] }
gui_load_child_values {aes_cipher_top_tb}
gui_load_child_values {aes_cipher_top_tb.dut.\sa03_reg[5] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa32_reg[3] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa02_reg[6] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa33_reg[1] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa03_reg[4] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa32_reg[2] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa02_reg[5] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa33_reg[0] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa03_reg[3] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa32_reg[1] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa02_reg[4] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa03_reg[2] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa32_reg[0] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa02_reg[3] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa21_reg[7] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa03_reg[1] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa02_reg[2] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa21_reg[6] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa03_reg[0] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa20_reg[7] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa02_reg[1] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa21_reg[5] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa20_reg[6] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa02_reg[0] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa21_reg[4] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa20_reg[5] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa21_reg[3] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa20_reg[4] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa21_reg[2] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa20_reg[3] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa21_reg[1] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa20_reg[2] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa21_reg[0] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa20_reg[1] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa20_reg[0] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa13_reg[7] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa13_reg[6] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa12_reg[7] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa13_reg[5] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa12_reg[6] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa13_reg[4] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa12_reg[5] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa13_reg[3] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa12_reg[4] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa13_reg[2] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa12_reg[3] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa31_reg[7] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa13_reg[1] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa12_reg[2] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa31_reg[6] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa13_reg[0] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa30_reg[7] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa12_reg[1] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa31_reg[5] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa30_reg[6] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa12_reg[0] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa31_reg[4] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa01_reg[7] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa30_reg[5] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa31_reg[3] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa01_reg[6] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa30_reg[4] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa00_reg[7] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa31_reg[2] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa01_reg[5] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa30_reg[3] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa00_reg[6] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa31_reg[1] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa01_reg[4] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa30_reg[2] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa00_reg[5] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa31_reg[0] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa01_reg[3] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa30_reg[1] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa00_reg[4] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa01_reg[2] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa30_reg[0] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa00_reg[3] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa23_reg[7] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa01_reg[1] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa00_reg[2] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa23_reg[6] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa01_reg[0] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa22_reg[7] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa00_reg[1] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa23_reg[5] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa22_reg[6] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa00_reg[0] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa23_reg[4] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa22_reg[5] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa23_reg[3] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa22_reg[4] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa23_reg[2] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa22_reg[3] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa23_reg[1] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa22_reg[2] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa23_reg[0] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa22_reg[1] }
gui_load_child_values {aes_cipher_top_tb.dut.\sa22_reg[0] }


set _session_group_1 Group1
gui_sg_create "$_session_group_1"
set Group1 "$_session_group_1"

gui_sg_addsignal -group "$_session_group_1" { aes_cipher_top_tb.rst aes_cipher_top_tb.ld aes_cipher_top_tb.done aes_cipher_top_tb.key aes_cipher_top_tb.text_in aes_cipher_top_tb.data_output_encrypt aes_cipher_top_tb.text_out aes_cipher_top_tb.clk {aes_cipher_top_tb.dut.\sa33_reg[7] .Q} }

set _session_group_2 Group2
gui_sg_create "$_session_group_2"
set Group2 "$_session_group_2"

gui_sg_addsignal -group "$_session_group_2" { {aes_cipher_top_tb.dut.\sa00_reg[0] .Q} }

set _session_group_3 Group3
gui_sg_create "$_session_group_3"
set Group3 "$_session_group_3"

gui_sg_addsignal -group "$_session_group_3" { {aes_cipher_top_tb.dut.\sa00_reg[1] .Q} {aes_cipher_top_tb.dut.\sa00_reg[2] .Q} {aes_cipher_top_tb.dut.\sa00_reg[3] .Q} {aes_cipher_top_tb.dut.\sa00_reg[4] .Q} {aes_cipher_top_tb.dut.\sa00_reg[5] .Q} {aes_cipher_top_tb.dut.\sa00_reg[6] .Q} {aes_cipher_top_tb.dut.\sa00_reg[7] .Q} {aes_cipher_top_tb.dut.\sa01_reg[0] .Q} {aes_cipher_top_tb.dut.\sa01_reg[1] .Q} {aes_cipher_top_tb.dut.\sa01_reg[2] .Q} {aes_cipher_top_tb.dut.\sa01_reg[3] .Q} {aes_cipher_top_tb.dut.\sa01_reg[4] .Q} {aes_cipher_top_tb.dut.\sa01_reg[5] .Q} {aes_cipher_top_tb.dut.\sa01_reg[6] .Q} {aes_cipher_top_tb.dut.\sa01_reg[7] .Q} {aes_cipher_top_tb.dut.\sa02_reg[0] .Q} {aes_cipher_top_tb.dut.\sa02_reg[1] .Q} {aes_cipher_top_tb.dut.\sa02_reg[2] .Q} {aes_cipher_top_tb.dut.\sa02_reg[3] .Q} {aes_cipher_top_tb.dut.\sa02_reg[4] .Q} {aes_cipher_top_tb.dut.\sa02_reg[5] .Q} {aes_cipher_top_tb.dut.\sa02_reg[6] .Q} {aes_cipher_top_tb.dut.\sa02_reg[7] .Q} {aes_cipher_top_tb.dut.\sa03_reg[0] .Q} {aes_cipher_top_tb.dut.\sa03_reg[1] .Q} {aes_cipher_top_tb.dut.\sa03_reg[2] .Q} {aes_cipher_top_tb.dut.\sa03_reg[3] .Q} {aes_cipher_top_tb.dut.\sa03_reg[4] .Q} {aes_cipher_top_tb.dut.\sa03_reg[5] .Q} {aes_cipher_top_tb.dut.\sa03_reg[6] .Q} {aes_cipher_top_tb.dut.\sa03_reg[7] .Q} {aes_cipher_top_tb.dut.\sa10_reg[0] .Q} {aes_cipher_top_tb.dut.\sa10_reg[1] .Q} {aes_cipher_top_tb.dut.\sa10_reg[2] .Q} {aes_cipher_top_tb.dut.\sa10_reg[3] .Q} {aes_cipher_top_tb.dut.\sa10_reg[4] .Q} {aes_cipher_top_tb.dut.\sa10_reg[5] .Q} {aes_cipher_top_tb.dut.\sa10_reg[6] .Q} {aes_cipher_top_tb.dut.\sa10_reg[7] .Q} {aes_cipher_top_tb.dut.\sa11_reg[0] .Q} {aes_cipher_top_tb.dut.\sa11_reg[1] .Q} {aes_cipher_top_tb.dut.\sa11_reg[2] .Q} {aes_cipher_top_tb.dut.\sa11_reg[3] .Q} {aes_cipher_top_tb.dut.\sa11_reg[4] .Q} {aes_cipher_top_tb.dut.\sa11_reg[5] .Q} {aes_cipher_top_tb.dut.\sa11_reg[6] .Q} {aes_cipher_top_tb.dut.\sa11_reg[7] .Q} {aes_cipher_top_tb.dut.\sa12_reg[0] .Q} {aes_cipher_top_tb.dut.\sa12_reg[1] .Q} {aes_cipher_top_tb.dut.\sa12_reg[2] .Q} {aes_cipher_top_tb.dut.\sa12_reg[3] .Q} {aes_cipher_top_tb.dut.\sa12_reg[4] .Q} {aes_cipher_top_tb.dut.\sa12_reg[5] .Q} {aes_cipher_top_tb.dut.\sa12_reg[6] .Q} {aes_cipher_top_tb.dut.\sa12_reg[7] .Q} {aes_cipher_top_tb.dut.\sa13_reg[0] .Q} {aes_cipher_top_tb.dut.\sa13_reg[1] .Q} {aes_cipher_top_tb.dut.\sa13_reg[2] .Q} {aes_cipher_top_tb.dut.\sa13_reg[3] .Q} {aes_cipher_top_tb.dut.\sa13_reg[4] .Q} {aes_cipher_top_tb.dut.\sa13_reg[5] .Q} {aes_cipher_top_tb.dut.\sa13_reg[6] .Q} {aes_cipher_top_tb.dut.\sa13_reg[7] .Q} {aes_cipher_top_tb.dut.\sa20_reg[0] .Q} {aes_cipher_top_tb.dut.\sa20_reg[1] .Q} {aes_cipher_top_tb.dut.\sa20_reg[2] .Q} {aes_cipher_top_tb.dut.\sa20_reg[3] .Q} {aes_cipher_top_tb.dut.\sa20_reg[4] .Q} {aes_cipher_top_tb.dut.\sa20_reg[5] .Q} {aes_cipher_top_tb.dut.\sa20_reg[6] .Q} {aes_cipher_top_tb.dut.\sa20_reg[7] .Q} {aes_cipher_top_tb.dut.\sa21_reg[0] .Q} {aes_cipher_top_tb.dut.\sa21_reg[1] .Q} {aes_cipher_top_tb.dut.\sa21_reg[2] .Q} {aes_cipher_top_tb.dut.\sa21_reg[3] .Q} {aes_cipher_top_tb.dut.\sa21_reg[4] .Q} {aes_cipher_top_tb.dut.\sa21_reg[5] .Q} {aes_cipher_top_tb.dut.\sa21_reg[6] .Q} {aes_cipher_top_tb.dut.\sa21_reg[7] .Q} {aes_cipher_top_tb.dut.\sa22_reg[0] .Q} {aes_cipher_top_tb.dut.\sa22_reg[1] .Q} {aes_cipher_top_tb.dut.\sa22_reg[2] .Q} {aes_cipher_top_tb.dut.\sa22_reg[3] .Q} {aes_cipher_top_tb.dut.\sa22_reg[4] .Q} {aes_cipher_top_tb.dut.\sa22_reg[5] .Q} {aes_cipher_top_tb.dut.\sa22_reg[6] .Q} {aes_cipher_top_tb.dut.\sa22_reg[7] .Q} {aes_cipher_top_tb.dut.\sa23_reg[0] .Q} {aes_cipher_top_tb.dut.\sa23_reg[1] .Q} {aes_cipher_top_tb.dut.\sa23_reg[2] .Q} {aes_cipher_top_tb.dut.\sa23_reg[3] .Q} {aes_cipher_top_tb.dut.\sa23_reg[4] .Q} {aes_cipher_top_tb.dut.\sa23_reg[5] .Q} {aes_cipher_top_tb.dut.\sa23_reg[6] .Q} {aes_cipher_top_tb.dut.\sa23_reg[7] .Q} {aes_cipher_top_tb.dut.\sa30_reg[0] .Q} {aes_cipher_top_tb.dut.\sa30_reg[1] .Q} {aes_cipher_top_tb.dut.\sa30_reg[2] .Q} {aes_cipher_top_tb.dut.\sa30_reg[3] .Q} {aes_cipher_top_tb.dut.\sa30_reg[4] .Q} {aes_cipher_top_tb.dut.\sa30_reg[5] .Q} }
gui_sg_addsignal -group "$_session_group_3" { {aes_cipher_top_tb.dut.\sa30_reg[6] .Q} {aes_cipher_top_tb.dut.\sa30_reg[7] .Q} {aes_cipher_top_tb.dut.\sa31_reg[0] .Q} {aes_cipher_top_tb.dut.\sa31_reg[1] .Q} {aes_cipher_top_tb.dut.\sa31_reg[2] .Q} {aes_cipher_top_tb.dut.\sa31_reg[3] .Q} {aes_cipher_top_tb.dut.\sa31_reg[4] .Q} {aes_cipher_top_tb.dut.\sa31_reg[5] .Q} {aes_cipher_top_tb.dut.\sa31_reg[6] .Q} {aes_cipher_top_tb.dut.\sa31_reg[7] .Q} {aes_cipher_top_tb.dut.\sa32_reg[0] .Q} {aes_cipher_top_tb.dut.\sa32_reg[1] .Q} {aes_cipher_top_tb.dut.\sa32_reg[2] .Q} {aes_cipher_top_tb.dut.\sa32_reg[3] .Q} {aes_cipher_top_tb.dut.\sa32_reg[4] .Q} {aes_cipher_top_tb.dut.\sa32_reg[5] .Q} {aes_cipher_top_tb.dut.\sa32_reg[6] .Q} {aes_cipher_top_tb.dut.\sa32_reg[7] .Q} {aes_cipher_top_tb.dut.\sa33_reg[0] .Q} {aes_cipher_top_tb.dut.\sa33_reg[1] .Q} {aes_cipher_top_tb.dut.\sa33_reg[2] .Q} {aes_cipher_top_tb.dut.\sa33_reg[3] .Q} {aes_cipher_top_tb.dut.\sa33_reg[4] .Q} {aes_cipher_top_tb.dut.\sa33_reg[5] .Q} {aes_cipher_top_tb.dut.\sa33_reg[6] .Q} EXP:state_reg {aes_cipher_top_tb.dut.\sa33_reg[7] .n0} }

set _session_group_4 $_session_group_3|
append _session_group_4 {sa33_reg[7]}
gui_sg_create "$_session_group_4"
set {Group3|sa33_reg[7]} "$_session_group_4"

gui_sg_addsignal -group "$_session_group_4" { {aes_cipher_top_tb.dut.\sa33_reg[7] .Q} {aes_cipher_top_tb.dut.\sa33_reg[7] .D} {aes_cipher_top_tb.dut.\sa33_reg[7] .CK} {aes_cipher_top_tb.dut.\sa33_reg[7] .NOTIFIER} {aes_cipher_top_tb.dut.\sa33_reg[7] .xSN} {aes_cipher_top_tb.dut.\sa33_reg[7] .xRN} {aes_cipher_top_tb.dut.\sa33_reg[7] .clk} {aes_cipher_top_tb.dut.\sa33_reg[7] .n0} {aes_cipher_top_tb.dut.\sa33_reg[7] .flag} }

set _session_group_5 $_session_group_3|
append _session_group_5 {sa00_reg[1]}
gui_sg_create "$_session_group_5"
set {Group3|sa00_reg[1]} "$_session_group_5"

gui_sg_addsignal -group "$_session_group_5" { {aes_cipher_top_tb.dut.\sa00_reg[1] .Q} {aes_cipher_top_tb.dut.\sa00_reg[1] .xSN} {aes_cipher_top_tb.dut.\sa00_reg[1] .D} {aes_cipher_top_tb.dut.\sa00_reg[1] .CK} {aes_cipher_top_tb.dut.\sa00_reg[1] .NOTIFIER} {aes_cipher_top_tb.dut.\sa00_reg[1] .xRN} {aes_cipher_top_tb.dut.\sa00_reg[1] .clk} {aes_cipher_top_tb.dut.\sa00_reg[1] .n0} {aes_cipher_top_tb.dut.\sa00_reg[1] .flag} }

gui_sg_move "$_session_group_5" -after "$_session_group_3" -pos 1 

set _session_group_6 $_session_group_3|
append _session_group_6 {sa00_reg[0]}
gui_sg_create "$_session_group_6"
set {Group3|sa00_reg[0]} "$_session_group_6"

gui_sg_addsignal -group "$_session_group_6" { {aes_cipher_top_tb.dut.\sa00_reg[0] .Q} {aes_cipher_top_tb.dut.\sa00_reg[0] .D} {aes_cipher_top_tb.dut.\sa00_reg[0] .CK} {aes_cipher_top_tb.dut.\sa00_reg[0] .NOTIFIER} {aes_cipher_top_tb.dut.\sa00_reg[0] .xSN} {aes_cipher_top_tb.dut.\sa00_reg[0] .xRN} {aes_cipher_top_tb.dut.\sa00_reg[0] .clk} {aes_cipher_top_tb.dut.\sa00_reg[0] .n0} {aes_cipher_top_tb.dut.\sa00_reg[0] .flag} }

gui_sg_move "$_session_group_6" -after "$_session_group_3" -pos 2 

# Global: Highlighting

# Global: Stack
gui_change_stack_mode -mode list

# Post database loading setting...

# Restore C1 time
gui_set_time -C1_only 5351818



# Save global setting...

# Wave/List view global setting
gui_cov_show_value -switch false

# Close all empty TopLevel windows
foreach __top [gui_ekki_get_window_ids -type TopLevel] {
    if { [llength [gui_ekki_get_window_ids -parent $__top]] == 0} {
        gui_close_window -window $__top
    }
}
gui_set_loading_session_type noSession
# DVE View/pane content session: 


# Hier 'Hier.1'
gui_show_window -window ${Hier.1}
gui_list_set_filter -id ${Hier.1} -list { {Package 1} {All 0} {Process 1} {UnnamedProcess 1} {Function 1} {Block 1} {OVA Unit 1} {LeafScCell 1} {LeafVlgCell 1} {Interface 1} {PowSwitch 0} {LeafVhdCell 1} {$unit 1} {NamedBlock 1} {Task 1} {VlgPackage 1} {ClassDef 1} {VirtIsoCell 0} }
gui_list_set_filter -id ${Hier.1} -text {*}
gui_hier_list_init -id ${Hier.1}
gui_change_design -id ${Hier.1} -design V1
catch {gui_list_expand -id ${Hier.1} aes_cipher_top_tb}
catch {gui_list_expand -id ${Hier.1} aes_cipher_top_tb.dut}
catch {gui_list_select -id ${Hier.1} {{aes_cipher_top_tb.dut.\sa33_reg[7] }}}
gui_view_scroll -id ${Hier.1} -vertical -set 24800
gui_view_scroll -id ${Hier.1} -horizontal -set 0

# Data 'Data.1'
gui_list_set_filter -id ${Data.1} -list { {Buffer 1} {Input 1} {Others 1} {Linkage 1} {Output 1} {LowPower 1} {Parameter 1} {All 1} {Aggregate 1} {Event 1} {Assertion 1} {Constant 1} {Interface 1} {Signal 1} {$unit 1} {Inout 1} {Variable 1} }
gui_list_set_filter -id ${Data.1} -text {*}
gui_list_show_data -id ${Data.1} {aes_cipher_top_tb.dut.\sa33_reg[7] }
gui_show_window -window ${Data.1}
catch { gui_list_select -id ${Data.1} {{aes_cipher_top_tb.dut.\sa33_reg[7] .n0} }}
gui_view_scroll -id ${Data.1} -vertical -set 0
gui_view_scroll -id ${Data.1} -horizontal -set 0
gui_view_scroll -id ${Hier.1} -vertical -set 24800
gui_view_scroll -id ${Hier.1} -horizontal -set 0

# Source 'Source.1'
gui_src_value_annotate -id ${Source.1} -switch false
gui_set_env TOGGLE::VALUEANNOTATE 0
gui_view_scroll -id ${Source.1} -vertical -set 0
gui_src_set_reusable -id ${Source.1}
# Restore toplevel window zorder
# The toplevel window could be closed if it has no view/pane
if {[gui_exist_window -window ${TopLevel.1}]} {
	gui_set_active_window -window ${TopLevel.1}
	gui_set_active_window -window ${Source.1}
	gui_set_active_window -window ${DLPane.1}
}
#</Session>


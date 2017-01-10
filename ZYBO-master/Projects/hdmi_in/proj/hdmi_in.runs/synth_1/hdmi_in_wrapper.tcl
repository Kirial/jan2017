# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.cache/wt [current_project]
set_property parent.project_path C:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:zybo:part0:1.0 [current_project]
set_property ip_repo_paths c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/repo [current_project]
add_files C:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/hdmi_in.bd
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_axi_gpio_btn_0/hdmi_in_axi_gpio_btn_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_axi_gpio_btn_0/hdmi_in_axi_gpio_btn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_axi_gpio_btn_0/hdmi_in_axi_gpio_btn_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_axi_gpio_led_0/hdmi_in_axi_gpio_led_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_axi_gpio_led_0/hdmi_in_axi_gpio_led_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_axi_gpio_led_0/hdmi_in_axi_gpio_led_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_axi_gpio_sw_0/hdmi_in_axi_gpio_sw_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_axi_gpio_sw_0/hdmi_in_axi_gpio_sw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_axi_gpio_sw_0/hdmi_in_axi_gpio_sw_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_axi_gpio_video_0/hdmi_in_axi_gpio_video_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_axi_gpio_video_0/hdmi_in_axi_gpio_video_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_axi_gpio_video_0/hdmi_in_axi_gpio_video_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_xbar_0/hdmi_in_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_axi_vdma_0_0/hdmi_in_axi_vdma_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_axi_vdma_0_0/hdmi_in_axi_vdma_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_axi_vdma_0_0/hdmi_in_axi_vdma_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_dvi2rgb_0_0/src/dvi2rgb.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_dvi2rgb_0_0/src/dvi2rgb_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_proc_sys_reset_0_0/hdmi_in_proc_sys_reset_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_proc_sys_reset_0_0/hdmi_in_proc_sys_reset_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_proc_sys_reset_0_0/hdmi_in_proc_sys_reset_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_processing_system7_0_0/hdmi_in_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_xbar_1/hdmi_in_xbar_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_rst_processing_system7_0_100M_0/hdmi_in_rst_processing_system7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_rst_processing_system7_0_100M_0/hdmi_in_rst_processing_system7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_rst_processing_system7_0_100M_0/hdmi_in_rst_processing_system7_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_rst_processing_system7_0_150M_0/hdmi_in_rst_processing_system7_0_150M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_rst_processing_system7_0_150M_0/hdmi_in_rst_processing_system7_0_150M_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_rst_processing_system7_0_150M_0/hdmi_in_rst_processing_system7_0_150M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_v_axi4s_vid_out_0_0/hdmi_in_v_axi4s_vid_out_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_v_axi4s_vid_out_0_0/hdmi_in_v_axi4s_vid_out_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_v_tc_0_0/hdmi_in_v_tc_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_v_tc_0_0/hdmi_in_v_tc_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_v_tc_1_0/hdmi_in_v_tc_1_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_v_tc_1_0/hdmi_in_v_tc_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_v_vid_in_axi4s_0_0/hdmi_in_v_vid_in_axi4s_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_v_vid_in_axi4s_0_0/hdmi_in_v_vid_in_axi4s_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_axi_gpio_0_0/hdmi_in_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_axi_gpio_0_0/hdmi_in_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_axi_gpio_0_0/hdmi_in_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_axi_gpio_1_0/hdmi_in_axi_gpio_1_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_axi_gpio_1_0/hdmi_in_axi_gpio_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_axi_gpio_1_0/hdmi_in_axi_gpio_1_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_s00_regslice_0/hdmi_in_s00_regslice_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_s01_regslice_0/hdmi_in_s01_regslice_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_m00_data_fifo_0/hdmi_in_m00_data_fifo_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_m00_regslice_0/hdmi_in_m00_regslice_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_auto_pc_0/hdmi_in_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_auto_us_df_0/hdmi_in_auto_us_df_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_auto_us_df_0/hdmi_in_auto_us_df_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_auto_us_df_1/hdmi_in_auto_us_df_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_auto_us_df_1/hdmi_in_auto_us_df_1_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_auto_pc_1/hdmi_in_auto_pc_1_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/hdmi_in_ooc.xdc]
set_property is_locked true [get_files C:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/hdmi_in.bd]

read_vhdl -library xil_defaultlib C:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/proj/hdmi_in.srcs/sources_1/bd/hdmi_in/hdl/hdmi_in_wrapper.vhd
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/src/constraints/ZYBO_Master.xdc
set_property used_in_implementation false [get_files C:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/ZYBO-master/Projects/hdmi_in/src/constraints/ZYBO_Master.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top hdmi_in_wrapper -part xc7z010clg400-1 -flatten_hierarchy none -directive RuntimeOptimized -fsm_extraction off


write_checkpoint -force -noxdef hdmi_in_wrapper.dcp

catch { report_utilization -file hdmi_in_wrapper_utilization_synth.rpt -pb hdmi_in_wrapper_utilization_synth.pb }

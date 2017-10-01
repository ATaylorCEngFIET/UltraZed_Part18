# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xczu3eg-sfva625-1-i-es1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/hdl_projects/mpsoc_int/mpsoc_int.cache/wt [current_project]
set_property parent.project_path C:/hdl_projects/mpsoc_int/mpsoc_int.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part em.avnet.com:ultrazed_eg_iocc:part0:1.0 [current_project]
set_property ip_output_repo c:/hdl_projects/mpsoc_int/mpsoc_int.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib C:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.vhd
add_files C:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/design_1.bd
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/design_1_zynq_ultra_ps_e_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/design_1_zynq_ultra_ps_e_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_axi_bram_ctrl_0_0/design_1_axi_bram_ctrl_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_rst_ps8_0_100M_0/design_1_rst_ps8_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_rst_ps8_0_100M_0/design_1_rst_ps8_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_rst_ps8_0_100M_0/design_1_rst_ps8_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_blk_mem_gen_0_0/design_1_blk_mem_gen_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_xbar_0/design_1_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_axi_perf_mon_0_0/design_1_axi_perf_mon_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_axi_perf_mon_0_0/design_1_axi_perf_mon_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_axi_perf_mon_0_0/design_1_axi_perf_mon_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_axi_bram_ctrl_0_1/design_1_axi_bram_ctrl_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_blk_mem_gen_0_1/design_1_blk_mem_gen_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_axi_perf_mon_0_1/design_1_axi_perf_mon_0_1.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_axi_perf_mon_0_1/design_1_axi_perf_mon_0_1_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_axi_perf_mon_0_1/design_1_axi_perf_mon_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_xbar_1/design_1_xbar_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_axi_vdma_0_0/design_1_axi_vdma_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_axi_vdma_0_0/design_1_axi_vdma_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_axi_vdma_0_0/design_1_axi_vdma_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_v_tpg_0_0/design_1_v_tpg_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_v_tpg_0_0/design_1_v_tpg_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_ila_0_0/ila_v6_2/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_ila_0_0/design_1_ila_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_ila_0_1/ila_v6_2/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_ila_0_1/design_1_ila_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_ila_1_0/ila_v6_2/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_ila_1_0/design_1_ila_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_auto_ds_0/design_1_auto_ds_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_auto_ds_0/design_1_auto_ds_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_auto_ds_1/design_1_auto_ds_1_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_auto_ds_1/design_1_auto_ds_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_auto_pc_0/design_1_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_auto_ds_2/design_1_auto_ds_2_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_auto_ds_2/design_1_auto_ds_2_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_auto_ds_3/design_1_auto_ds_3_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_auto_ds_3/design_1_auto_ds_3_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_auto_pc_1/design_1_auto_pc_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_auto_ds_4/design_1_auto_ds_4_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_auto_ds_4/design_1_auto_ds_4_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_auto_pc_2/design_1_auto_pc_2_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_auto_ds_5/design_1_auto_ds_5_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_auto_ds_5/design_1_auto_ds_5_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_auto_pc_3/design_1_auto_pc_3_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_auto_us_0/design_1_auto_us_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_auto_us_0/design_1_auto_us_0_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/design_1_ooc.xdc]
set_property is_locked true [get_files C:/hdl_projects/mpsoc_int/mpsoc_int.srcs/sources_1/bd/design_1/design_1.bd]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top design_1_wrapper -part xczu3eg-sfva625-1-i-es1


write_checkpoint -force -noxdef design_1_wrapper.dcp

catch { report_utilization -file design_1_wrapper_utilization_synth.rpt -pb design_1_wrapper_utilization_synth.pb }

vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm
vlib msim/blk_mem_gen_v8_3_4
vlib msim/axi_bram_ctrl_v4_0_9
vlib msim/lib_cdc_v1_0_2
vlib msim/proc_sys_reset_v5_0_10
vlib msim/generic_baseblocks_v2_1_0
vlib msim/axi_infrastructure_v1_1_0
vlib msim/axi_register_slice_v2_1_10
vlib msim/fifo_generator_v13_1_2
vlib msim/axi_data_fifo_v2_1_9
vlib msim/axi_crossbar_v2_1_11
vlib msim/axi_perf_mon_v5_0_12
vlib msim/lib_pkg_v1_0_2
vlib msim/lib_fifo_v1_0_6
vlib msim/lib_bmg_v1_0_6
vlib msim/lib_srl_fifo_v1_0_2
vlib msim/axi_datamover_v5_1_12
vlib msim/axi_vdma_v6_2_9
vlib msim/v_tpg_v7_0_4
vlib msim/axi_protocol_converter_v2_1_10
vlib msim/axi_clock_converter_v2_1_9
vlib msim/axi_dwidth_converter_v2_1_10

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm
vmap blk_mem_gen_v8_3_4 msim/blk_mem_gen_v8_3_4
vmap axi_bram_ctrl_v4_0_9 msim/axi_bram_ctrl_v4_0_9
vmap lib_cdc_v1_0_2 msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_10 msim/proc_sys_reset_v5_0_10
vmap generic_baseblocks_v2_1_0 msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_10 msim/axi_register_slice_v2_1_10
vmap fifo_generator_v13_1_2 msim/fifo_generator_v13_1_2
vmap axi_data_fifo_v2_1_9 msim/axi_data_fifo_v2_1_9
vmap axi_crossbar_v2_1_11 msim/axi_crossbar_v2_1_11
vmap axi_perf_mon_v5_0_12 msim/axi_perf_mon_v5_0_12
vmap lib_pkg_v1_0_2 msim/lib_pkg_v1_0_2
vmap lib_fifo_v1_0_6 msim/lib_fifo_v1_0_6
vmap lib_bmg_v1_0_6 msim/lib_bmg_v1_0_6
vmap lib_srl_fifo_v1_0_2 msim/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_12 msim/axi_datamover_v5_1_12
vmap axi_vdma_v6_2_9 msim/axi_vdma_v6_2_9
vmap v_tpg_v7_0_4 msim/v_tpg_v7_0_4
vmap axi_protocol_converter_v2_1_10 msim/axi_protocol_converter_v2_1_10
vmap axi_clock_converter_v2_1_9 msim/axi_clock_converter_v2_1_9
vmap axi_dwidth_converter_v2_1_10 msim/axi_dwidth_converter_v2_1_10

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" \
"C:/Xilinx/SDx/2016.3/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/SDx/2016.3/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/SDx/2016.3/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" \
"../../../bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/design_1_zynq_ultra_ps_e_0_0_sim_netlist.v" \

vlog -work blk_mem_gen_v8_3_4 -64 "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" \
"../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/59b0/simulation/blk_mem_gen_v8_3.v" \

vcom -work axi_bram_ctrl_v4_0_9 -64 -93 \
"../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/d95a/hdl/axi_bram_ctrl_v4_0_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_0/sim/design_1_axi_bram_ctrl_0_0.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_10 -64 -93 \
"../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/04b4/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_rst_ps8_0_100M_0/sim/design_1_rst_ps8_0_100M_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" \
"../../../bd/design_1/ip/design_1_blk_mem_gen_0_0/sim/design_1_blk_mem_gen_0_0.v" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" \
"../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7ee0/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" \
"../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_10 -64 "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" \
"../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7efe/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_1_2 -64 "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" \
"../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a807/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_2 -64 -93 \
"../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a807/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_2 -64 "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" \
"../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a807/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work axi_data_fifo_v2_1_9 -64 "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" \
"../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/10b8/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_11 -64 "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" \
"../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/d552/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vlog -work axi_perf_mon_v5_0_12 -64 "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" \
"../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/19c4/hdl/axi_perf_mon_v5_0_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" \
"../../../bd/design_1/ip/design_1_axi_perf_mon_0_0/sim/design_1_axi_perf_mon_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ipshared/2e37/xlconcat.vhd" \
"../../../bd/design_1/ip/design_1_xlconcat_0_0/sim/design_1_xlconcat_0_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_1/sim/design_1_axi_bram_ctrl_0_1.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" \
"../../../bd/design_1/ip/design_1_blk_mem_gen_0_1/sim/design_1_blk_mem_gen_0_1.v" \
"../../../bd/design_1/ip/design_1_axi_perf_mon_0_1/sim/design_1_axi_perf_mon_0_1.v" \
"../../../bd/design_1/ip/design_1_xbar_1/sim/design_1_xbar_1.v" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/832a/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_6 -64 -93 \
"../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/61a7/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_bmg_v1_0_6 -64 -93 \
"../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7d44/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/6039/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_12 -64 -93 \
"../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/1cd0/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vlog -work axi_vdma_v6_2_9 -64 "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" \
"../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl/axi_vdma_v6_2_rfs.v" \

vcom -work axi_vdma_v6_2_9 -64 -93 \
"../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl/axi_vdma_v6_2_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_vdma_0_0/sim/design_1_axi_vdma_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_fifo_w8_d1_A.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_MultiPixStream2AXIvi.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_reg_int_s.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_reg_unsigned_short_s.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgBackground.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgForeground.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternBox.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternCheckerBoa.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternCheckerocq.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternCheckerqcK.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternCheckersc4.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternCheckertde.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternColorBars.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternCrossHa2iS.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternCrossHaDeQ.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternCrossHaEe0.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternCrossHair.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternCrossHatch.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternDPBlackWhi.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternDPColorbkb.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternDPColorcud.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternDPColordEe.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternDPColoreOg.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternDPColorfYi.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternDPColorg8j.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternDPColorhbi.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternDPColoribs.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternDPColorjbC.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternDPColorkbM.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternDPColorlbW.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternDPColormb6.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternDPColorncg.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternDPColorRam.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternDPColorSqu.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternHorizontal.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternMask.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternRainbow.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternRainbowvdy.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternSolidBlack.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternSolidBlue.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternSolidBlZio.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternSolidGr0iy.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternSolidGreen.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternSolidRe1iI.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternSolidRed.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternSolidWhite.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternTartanCFfa.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternTartanColo.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternTemporalRa.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternVerticalHo.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternVerticalRa.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternZonePlaMgi.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternZonePlate.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPRBS.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_v_tpg.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_v_tpg_am_addmul_1OgC.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_v_tpg_CTRL_s_axi.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_v_tpg_mac_muladd_Aem.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_v_tpg_mac_muladd_Bew.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_v_tpg_mac_muladd_CeG.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_v_tpg_mac_muladd_Ngs.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_v_tpg_mac_muladd_PgM.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_v_tpg_mac_muladd_yd2.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_v_tpg_mac_muladd_zec.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_v_tpg_mul_8ns_6nsxdS.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_v_tpg_mul_8ns_8s_wdI.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_v_tpg_mul_mul_9nsQgW.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternCrossHa0iy.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternCrossHaBew.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternCrossHaCeG.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternSolidBlXh4.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternSolidGrYie.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternSolidReZio.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternTartanCDeQ.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_tpgPatternZonePlaKfY.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_v_tpg_am_addmul_1Mgi.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_v_tpg_mac_muladd_Lf8.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_v_tpg_mac_muladd_wdI.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_v_tpg_mac_muladd_xdS.v" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/verilog/design_1_v_tpg_0_0_v_tpg_mul_mul_9nsOgC.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_fifo_w8_d1_A.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_MultiPixStream2AXIvi.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_reg_int_s.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_reg_unsigned_short_s.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgBackground.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgForeground.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternBox.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternCheckerBoa.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternCheckerocq.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternCheckerqcK.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternCheckersc4.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternCheckertde.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternColorBars.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternCrossHa2iS.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternCrossHaDeQ.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternCrossHaEe0.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternCrossHair.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternCrossHatch.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternDPBlackWhi.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternDPColorbkb.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternDPColorcud.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternDPColordEe.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternDPColoreOg.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternDPColorfYi.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternDPColorg8j.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternDPColorhbi.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternDPColoribs.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternDPColorjbC.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternDPColorkbM.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternDPColorlbW.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternDPColormb6.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternDPColorncg.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternDPColorRam.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternDPColorSqu.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternHorizontal.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternMask.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternRainbow.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternRainbowvdy.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternSolidBlack.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternSolidBlue.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternSolidBlZio.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternSolidGr0iy.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternSolidGreen.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternSolidRe1iI.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternSolidRed.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternSolidWhite.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternTartanCFfa.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternTartanColo.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternTemporalRa.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternVerticalHo.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternVerticalRa.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternZonePlaMgi.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternZonePlate.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPRBS.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_v_tpg.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_v_tpg_am_addmul_1OgC.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_v_tpg_CTRL_s_axi.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_v_tpg_mac_muladd_Aem.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_v_tpg_mac_muladd_Bew.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_v_tpg_mac_muladd_CeG.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_v_tpg_mac_muladd_Ngs.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_v_tpg_mac_muladd_PgM.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_v_tpg_mac_muladd_yd2.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_v_tpg_mac_muladd_zec.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_v_tpg_mul_8ns_6nsxdS.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_v_tpg_mul_8ns_8s_wdI.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_v_tpg_mul_mul_9nsQgW.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternCrossHa0iy.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternCrossHaBew.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternCrossHaCeG.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternSolidBlXh4.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternSolidGrYie.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternSolidReZio.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternTartanCDeQ.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_tpgPatternZonePlaKfY.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_v_tpg_am_addmul_1Mgi.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_v_tpg_mac_muladd_Lf8.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_v_tpg_mac_muladd_wdI.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_v_tpg_mac_muladd_xdS.vhd" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/hdl/vhdl/design_1_v_tpg_0_0_v_tpg_mul_mul_9nsOgC.vhd" \

vlog -work v_tpg_v7_0_4 -64 "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" \
"../../../../mpsoc_int.srcs/sources_1/bd/design_1/ip/design_1_v_tpg_0_0/hdl/v_tpg_v7_0_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/sim/design_1_v_tpg_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_ila_0_0/sim/design_1_ila_0_0.vhd" \
"../../../bd/design_1/ip/design_1_ila_0_1/sim/design_1_ila_0_1.vhd" \
"../../../bd/design_1/hdl/design_1.vhd" \

vlog -work axi_protocol_converter_v2_1_10 -64 "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" \
"../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/4a8b/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_9 -64 "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" \
"../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/cf3b/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work axi_dwidth_converter_v2_1_10 -64 "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" \
"../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/4a86/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/3e37/hdl" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/fb8f/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/a07a/hdl/verilog" "+incdir+../../../../mpsoc_int.srcs/sources_1/bd/design_1/ipshared/8ef2/hdl/verilog" \
"../../../bd/design_1/ip/design_1_auto_ds_0/sim/design_1_auto_ds_0.v" \
"../../../bd/design_1/ip/design_1_auto_ds_1/sim/design_1_auto_ds_1.v" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/ip/design_1_auto_ds_2/sim/design_1_auto_ds_2.v" \
"../../../bd/design_1/ip/design_1_auto_ds_3/sim/design_1_auto_ds_3.v" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \
"../../../bd/design_1/ip/design_1_auto_ds_4/sim/design_1_auto_ds_4.v" \
"../../../bd/design_1/ip/design_1_auto_pc_2/sim/design_1_auto_pc_2.v" \
"../../../bd/design_1/ip/design_1_auto_ds_5/sim/design_1_auto_ds_5.v" \
"../../../bd/design_1/ip/design_1_auto_pc_3/sim/design_1_auto_pc_3.v" \
"../../../bd/design_1/ip/design_1_auto_us_0/sim/design_1_auto_us_0.v" \

vlog -work xil_defaultlib "glbl.v"


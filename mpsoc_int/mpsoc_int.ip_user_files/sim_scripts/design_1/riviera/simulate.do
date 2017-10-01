onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+design_1 -L xil_defaultlib -L xpm -L blk_mem_gen_v8_3_4 -L axi_bram_ctrl_v4_0_9 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_10 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_10 -L fifo_generator_v13_1_2 -L axi_data_fifo_v2_1_9 -L axi_crossbar_v2_1_11 -L axi_perf_mon_v5_0_12 -L lib_pkg_v1_0_2 -L lib_fifo_v1_0_6 -L lib_bmg_v1_0_6 -L lib_srl_fifo_v1_0_2 -L axi_datamover_v5_1_12 -L axi_vdma_v6_2_9 -L v_tpg_v7_0_4 -L axi_protocol_converter_v2_1_10 -L axi_clock_converter_v2_1_9 -L axi_dwidth_converter_v2_1_10 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.design_1 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {design_1.udo}

run -all

endsim

quit -force


�
Command: %s
53*	vivadotcl2S
?write_bitstream -force -no_partial_bitfile design_1_wrapper.bit2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xczu3eg-es12default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xczu3eg-es12default:defaultZ17-349h px� 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
Rule violation (%s) %s - %s
20*drc2
DPIP-22default:default2$
Input pipelining2default:default2�
�DSP design_1_i/v_tpg_0/inst/tpgBackground_U0/grp_tpgPatternRainbow_fu_395/tmp_52_reg_724_reg input design_1_i/v_tpg_0/inst/tpgBackground_U0/grp_tpgPatternRainbow_fu_395/tmp_52_reg_724_reg/C[47:0] is not pipelined. Pipelining DSP48 input will improve performance.2default:defaultZ23-20h px� 
�
Rule violation (%s) %s - %s
20*drc2
DPOP-32default:default2*
PREG Output pipelining2default:default2�
�DSP design_1_i/v_tpg_0/inst/tpgBackground_U0/grp_tpgPatternZonePlate_fu_404/v_tpg_am_addmul_1OgC_U62/design_1_v_tpg_0_0_v_tpg_am_addmul_1OgC_DSP48_6_U/m_reg_reg output design_1_i/v_tpg_0/inst/tpgBackground_U0/grp_tpgPatternZonePlate_fu_404/v_tpg_am_addmul_1OgC_U62/design_1_v_tpg_0_0_v_tpg_am_addmul_1OgC_DSP48_6_U/m_reg_reg/P[47:0] is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.2default:defaultZ23-20h px� 
�
Rule violation (%s) %s - %s
20*drc2
DPOP-32default:default2*
PREG Output pipelining2default:default2�
�DSP design_1_i/v_tpg_0/inst/tpgBackground_U0/grp_tpgPatternZonePlate_fu_404/v_tpg_mac_muladd_PgM_U63/design_1_v_tpg_0_0_v_tpg_mac_muladd_PgM_DSP48_7_U/p output design_1_i/v_tpg_0/inst/tpgBackground_U0/grp_tpgPatternZonePlate_fu_404/v_tpg_mac_muladd_PgM_U63/design_1_v_tpg_0_0_v_tpg_mac_muladd_PgM_DSP48_7_U/p/P[47:0] is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.2default:defaultZ23-20h px� 
�
Rule violation (%s) %s - %s
20*drc2
	REQP-17742default:default2>
*RAMB36E2_WRITE_WIDTH_A_18_doesnt_use_WEA322default:default2�
�The RAMB36E2 cell design_1_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_8SERIES.WITH_BMM_INFO.SP.SIMPLE_PRIM36.SERIES8_SP_NO_ECC_ATTR.ram has WRITE_WIDTH_A set to 18. The WEA[3:2] pins should not be connected to active signal.2default:defaultZ23-20h px� 
�
Rule violation (%s) %s - %s
20*drc2
	REQP-17742default:default2>
*RAMB36E2_WRITE_WIDTH_A_18_doesnt_use_WEA322default:default2�
�The RAMB36E2 cell design_1_i/blk_mem_gen_0/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_noinit.ram/DEVICE_8SERIES.WITH_BMM_INFO.SP.SIMPLE_PRIM36.SERIES8_SP_NO_ECC_ATTR.ram has WRITE_WIDTH_A set to 18. The WEA[3:2] pins should not be connected to active signal.2default:defaultZ23-20h px� 
�
Rule violation (%s) %s - %s
20*drc2
	REQP-17742default:default2>
*RAMB36E2_WRITE_WIDTH_A_18_doesnt_use_WEA322default:default2�
�The RAMB36E2 cell design_1_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_8SERIES.WITH_BMM_INFO.SP.SIMPLE_PRIM36.SERIES8_SP_NO_ECC_ATTR.ram has WRITE_WIDTH_A set to 18. The WEA[3:2] pins should not be connected to active signal.2default:defaultZ23-20h px� 
�
Rule violation (%s) %s - %s
20*drc2
	REQP-17742default:default2>
*RAMB36E2_WRITE_WIDTH_A_18_doesnt_use_WEA322default:default2�
�The RAMB36E2 cell design_1_i/blk_mem_gen_1/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_noinit.ram/DEVICE_8SERIES.WITH_BMM_INFO.SP.SIMPLE_PRIM36.SERIES8_SP_NO_ECC_ATTR.ram has WRITE_WIDTH_A set to 18. The WEA[3:2] pins should not be connected to active signal.2default:defaultZ23-20h px� 
�
Rule violation (%s) %s - %s
20*drc2
	RTSTAT-102default:default2%
No routable loads2default:default2�
�186 net(s) have no routable loads. The problem bus(es) and/or net(s) are dbg_hub/inst/RUNTEST, dbg_hub/inst/TCK, dbg_hub/inst/TMS, dbg_hub/inst/UPDATE_temp_i, design_1_i/axi_vdma_0/U0/I_PRMRY_DATAMOVER/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/GEN_ENABLE_INDET_BTT_SF.I_INDET_BTT/I_DATA_FIFO/BLK_MEM.I_SYNC_FIFOGEN_FIFO/FAMILY_SUPPORTED.I_SYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i, design_1_i/axi_mem_intercon1/m01_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_READ.read_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i, design_1_i/axi_perf_mon_0/inst/GEN_Advanced_Mode.adavnced_mode_inst/mon_fifo_ext_event0_inst/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i, design_1_i/axi_mem_intercon/m00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_READ.read_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i, design_1_i/axi_mem_intercon1/m03_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i, design_1_i/axi_mem_intercon/m01_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_READ.read_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i, design_1_i/axi_mem_intercon1/m03_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i, design_1_i/axi_perf_mon_1/inst/GEN_Advanced_Mode.adavnced_mode_inst/mon_fifo_ext_event0_inst/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i, design_1_i/axi_mem_intercon/m01_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i, design_1_i/axi_vdma_0/U0/GEN_SPRT_FOR_S2MM.S2MM_LINEBUFFER_I/GEN_NO_FSYNC_LOGIC.GEN_LINEBUFFER.GEN_SYNC_FIFO.I_LINEBUFFER_FIFO/fg_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i, design_1_i/axi_mem_intercon1/m03_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_READ.read_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i (the first 15 of 175 listed).2default:defaultZ23-20h px� 
�

Rule violation (%s) %s - %s
20*drc2
	REQP-18582default:default2:
&RAMB36E2_writefirst_collision_advisory2default:default2�	
�	Synchronous clocking is detected for BRAM (design_1_i/axi_vdma_0/U0/I_PRMRY_DATAMOVER/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/GEN_ENABLE_INDET_BTT_SF.I_INDET_BTT/I_DATA_FIFO/BLK_MEM.I_SYNC_FIFOGEN_FIFO/FAMILY_SUPPORTED.I_SYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmgb.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram) in SDP mode with WRITE_FIRST write-mode. It is strongly suggested to change this mode to NO_CHANGE for best power characteristics. However, both WRITE_FIRST and NO_CHANGE may exhibit address collisions if the same address appears on both read and write ports resulting in unknown or corrupted read data. It is suggested to confirm via simulation that an address collision never occurs and if so it is suggested to try and avoid this situation. If address collisions cannot be avoided, the write-mode may be set to READ_FIRST which guarantees that the read data is the prior contents of the memory at the cost of additional power in the design. See the FPGA Memory Resources User Guide for additional information.2default:defaultZ23-20h px� 
t
DRC finished with %s
1905*	planAhead26
"0 Errors, 8 Warnings, 1 Advisories2default:defaultZ12-3199h px� 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px� 
?
Loading data files...
1271*designutilsZ12-1165h px� 
>
Loading site data...
1273*designutilsZ12-1167h px� 
?
Loading route data...
1272*designutilsZ12-1166h px� 
?
Processing options...
1362*designutilsZ12-1514h px� 
<
Creating bitmap...
1249*designutilsZ12-1141h px� 
7
Creating bitstream...
7*	bitstreamZ40-7h px� 
g
Writing bitstream %s...
11*	bitstream2*
./design_1_wrapper.bit2default:defaultZ40-11h px� 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1412default:default2
4092default:default2
02default:default2
02default:defaultZ4-41h px� 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:01:152default:default2
00:01:072default:default2
3662.4732default:default2
289.8792default:defaultZ17-268h px� 


End Record
connect -url tcp:127.0.0.1:3121
source C:/Xilinx/SDK/2016.4/scripts/sdk/util/zynqmp_utils.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A1BE22"} -index 1
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT2 210251A1BE22" && level==0} -index 0
fpga -file C:/hdl_projects/mpsoc_int/mpsoc_int.sdk/int_hw/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A1BE22"} -index 1
loadhw C:/hdl_projects/mpsoc_int/mpsoc_int.sdk/int_hw/system.hdf
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A1BE22"} -index 1
source C:/hdl_projects/mpsoc_int/mpsoc_int.sdk/int_hw/psu_init_new.tcl
psu_init
after 1000
psu_ps_pl_isolation_removal
after 1000
psu_ps_pl_reset_config
catch {psu_protection}
targets -set -nocase -filter {name =~"*A53*0" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A1BE22"} -index 1
rst -processor
dow C:/hdl_projects/mpsoc_int/mpsoc_int.sdk/int_app/Debug/int_app.elf
bpadd -addr &main

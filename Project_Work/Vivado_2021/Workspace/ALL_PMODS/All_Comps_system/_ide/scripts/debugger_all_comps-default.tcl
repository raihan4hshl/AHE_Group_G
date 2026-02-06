# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: F:\Advanced_Hardware_Engineering\Vivado_2021\Workspace\ALL_PMODS\All_Comps_system\_ide\scripts\debugger_all_comps-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source F:\Advanced_Hardware_Engineering\Vivado_2021\Workspace\ALL_PMODS\All_Comps_system\_ide\scripts\debugger_all_comps-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Nexys A7 -100T 210292B61B0FA" && level==0 && jtag_device_ctx=="jsn-Nexys A7 -100T-210292B61B0FA-13631093-0"}
fpga -file F:/Advanced_Hardware_Engineering/Vivado_2021/Workspace/ALL_PMODS/All_Comps/_ide/bitstream/TEST_J_2021_ALLPMODS_wrapper.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw F:/Advanced_Hardware_Engineering/Vivado_2021/Workspace/ALL_PMODS/All_PMods_Platform/export/All_PMods_Platform/hw/TEST_J_2021_ALLPMODS_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow F:/Advanced_Hardware_Engineering/Vivado_2021/Workspace/ALL_PMODS/All_Comps/Debug/All_Comps.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con

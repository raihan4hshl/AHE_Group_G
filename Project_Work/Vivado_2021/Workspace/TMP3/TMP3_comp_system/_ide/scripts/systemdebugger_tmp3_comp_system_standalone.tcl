# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\User\Documents\GitHub\AHE_Group_G\Project_Work\Vivado_2021\Workspace\TMP3\TMP3_comp_system\_ide\scripts\systemdebugger_tmp3_comp_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\User\Documents\GitHub\AHE_Group_G\Project_Work\Vivado_2021\Workspace\TMP3\TMP3_comp_system\_ide\scripts\systemdebugger_tmp3_comp_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Nexys A7 -100T 210292B61CF5A" && level==0 && jtag_device_ctx=="jsn-Nexys A7 -100T-210292B61CF5A-13631093-0"}
fpga -file C:/Users/User/Documents/GitHub/AHE_Group_G/Project_Work/Vivado_2021/Workspace/TMP3/TMP3_comp/_ide/bitstream/TEST_J_2021TMP3_wrapper.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw C:/Users/User/Documents/GitHub/AHE_Group_G/Project_Work/Vivado_2021/Workspace/TMP3/TMP3_Platform_J/export/TMP3_Platform_J/hw/TEST_J_2021TMP3_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow C:/Users/User/Documents/GitHub/AHE_Group_G/Project_Work/Vivado_2021/Workspace/TMP3/TMP3_comp/Release/TMP3_comp.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con

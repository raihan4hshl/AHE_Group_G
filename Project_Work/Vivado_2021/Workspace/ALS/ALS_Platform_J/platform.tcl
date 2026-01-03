# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct F:\Advanced_Hardware_Engineering\Vivado_2021\Workspace\ALS\ALS_Platform_J\platform.tcl
# 
# OR launch xsct and run below command.
# source F:\Advanced_Hardware_Engineering\Vivado_2021\Workspace\ALS\ALS_Platform_J\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {ALS_Platform_J}\
-hw {F:\Advanced_Hardware_Engineering\Vivado_2021\TEST_J_2021ALS\test_ALS_wrapper.xsa}\
-proc {microblaze_0} -os {standalone} -out {F:/Advanced_Hardware_Engineering/Vivado_2021/Workspace/ALS}

platform write
platform generate -domains 
platform active {ALS_Platform_J}
platform generate

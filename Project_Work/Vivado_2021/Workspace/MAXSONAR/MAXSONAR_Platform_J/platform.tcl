# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct F:\Advanced_Hardware_Engineering\Vivado_2021\Workspace\MAXSONAR\MAXSONAR_Platform_J\platform.tcl
# 
# OR launch xsct and run below command.
# source F:\Advanced_Hardware_Engineering\Vivado_2021\Workspace\MAXSONAR\MAXSONAR_Platform_J\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {MAXSONAR_Platform_J}\
-hw {F:\Advanced_Hardware_Engineering\Vivado_2021\TEST_J_2021MAXSONAR\TEST_J_2021MAXSONAR\TEST_J_2021MAXSONAR_wrapper.xsa}\
-proc {microblaze_0} -os {standalone} -out {F:/Advanced_Hardware_Engineering/Vivado_2021/Workspace/MAXSONAR}

platform write
platform generate -domains 
platform active {MAXSONAR_Platform_J}
platform generate
platform clean
platform generate

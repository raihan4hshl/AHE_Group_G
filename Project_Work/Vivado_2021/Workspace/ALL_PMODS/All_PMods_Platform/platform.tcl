# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct F:\Advanced_Hardware_Engineering\Vivado_2021\Workspace\ALL_PMODS\All_PMods_Platform\platform.tcl
# 
# OR launch xsct and run below command.
# source F:\Advanced_Hardware_Engineering\Vivado_2021\Workspace\ALL_PMODS\All_PMods_Platform\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {All_PMods_Platform}\
-hw {F:\Advanced_Hardware_Engineering\Vivado_2021\TEST_J_2021_ALLPMODS\TEST_J_2021_ALLPMODS\TEST_J_2021_ALLPMODS_wrapper.xsa}\
-proc {microblaze_0} -os {standalone} -out {F:/Advanced_Hardware_Engineering/Vivado_2021/Workspace/ALL_PMODS}

platform write
platform generate -domains 
platform active {All_PMods_Platform}
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate

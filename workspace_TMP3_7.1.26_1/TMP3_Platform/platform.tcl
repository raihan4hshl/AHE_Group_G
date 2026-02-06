# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\User\Documents\GitHub\AHE_Group_G\workspace_TMP3_7.1.26_1\TMP3_Platform\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\User\Documents\GitHub\AHE_Group_G\workspace_TMP3_7.1.26_1\TMP3_Platform\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {TMP3_Platform}\
-hw {C:\Users\User\Documents\GitHub\Hardware_vhdl_ip_files\TMP3_block_7.1_1\TMP3_pmod_wrapper.xsa}\
-proc {microblaze_0} -os {standalone} -out {C:/Users/User/Documents/GitHub/AHE_Group_G/workspace_TMP3_7.1.26_1}

platform write
platform generate -domains 
platform active {TMP3_Platform}
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

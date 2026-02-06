# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "C:\\Users\\User\\Documents\\GitHub\\AHE_Group_G\\project_workspace_4.1_1\\pmod_TMP3_platform\\microblaze_0\\standalone_microblaze_0\\bsp\\include\\sleep.h"
  "C:\\Users\\User\\Documents\\GitHub\\AHE_Group_G\\project_workspace_4.1_1\\pmod_TMP3_platform\\microblaze_0\\standalone_microblaze_0\\bsp\\include\\xiltimer.h"
  "C:\\Users\\User\\Documents\\GitHub\\AHE_Group_G\\project_workspace_4.1_1\\pmod_TMP3_platform\\microblaze_0\\standalone_microblaze_0\\bsp\\include\\xtimer_config.h"
  "C:\\Users\\User\\Documents\\GitHub\\AHE_Group_G\\project_workspace_4.1_1\\pmod_TMP3_platform\\microblaze_0\\standalone_microblaze_0\\bsp\\lib\\libxiltimer.a"
  )
endif()

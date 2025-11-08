# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "D:\\Advanced_Hardware_Engineering\\Vitis_Workspaces\\hello_demo\\microblaze_0\\standalone_microblaze_0\\bsp\\include\\sleep.h"
  "D:\\Advanced_Hardware_Engineering\\Vitis_Workspaces\\hello_demo\\microblaze_0\\standalone_microblaze_0\\bsp\\include\\xiltimer.h"
  "D:\\Advanced_Hardware_Engineering\\Vitis_Workspaces\\hello_demo\\microblaze_0\\standalone_microblaze_0\\bsp\\include\\xtimer_config.h"
  "D:\\Advanced_Hardware_Engineering\\Vitis_Workspaces\\hello_demo\\microblaze_0\\standalone_microblaze_0\\bsp\\lib\\libxiltimer.a"
  )
endif()

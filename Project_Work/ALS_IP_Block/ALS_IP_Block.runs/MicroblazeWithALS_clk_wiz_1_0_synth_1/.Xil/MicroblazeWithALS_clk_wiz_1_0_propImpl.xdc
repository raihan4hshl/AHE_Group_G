set_property SRC_FILE_INFO {cfile:d:/Advanced_Hardware_Engineering/ALS_IP_Block/ALS_IP_Block.gen/sources_1/bd/MicroblazeWithALS/ip/MicroblazeWithALS_clk_wiz_1_0/MicroblazeWithALS_clk_wiz_1_0.xdc rfile:../../../ALS_IP_Block.gen/sources_1/bd/MicroblazeWithALS/ip/MicroblazeWithALS_clk_wiz_1_0/MicroblazeWithALS_clk_wiz_1_0.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.100

// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Mon Dec 29 14:35:21 2025
// Host        : PILA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/Advanced_Hardware_Engineering/Vivado_2021/TEST_J_2021OLED/Block_OLEDRGB/ip/Block_OLEDRGB_clk_wiz_1_0/Block_OLEDRGB_clk_wiz_1_0_stub.v
// Design      : Block_OLEDRGB_clk_wiz_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module Block_OLEDRGB_clk_wiz_1_0(clk_out1, resetn, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,resetn,locked,clk_in1" */;
  output clk_out1;
  input resetn;
  output locked;
  input clk_in1;
endmodule

//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
//Date        : Sat Nov  1 12:44:55 2025
//Host        : DESKTOP-QB50QQD running 64-bit major release  (build 9200)
//Command     : generate_target one_bit_full_adder.bd
//Design      : one_bit_full_adder
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "one_bit_full_adder,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=one_bit_full_adder,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "one_bit_full_adder.hwdef" *) 
module one_bit_full_adder
   (A,
    B,
    Cin,
    Cout,
    Sum);
  input A;
  input B;
  input Cin;
  output [0:0]Cout;
  output Sum;

  wire A;
  wire B;
  wire Cin;
  wire [0:0]Cout;
  wire Half_Adder_0_Cout;
  wire Half_Adder_0_SUM;
  wire Half_Adder_1_Cout;
  wire Sum;

  one_bit_full_adder_Half_Adder_0_0 Half_Adder_0
       (.A(A),
        .B(B),
        .Cout(Half_Adder_0_Cout),
        .SUM(Half_Adder_0_SUM));
  one_bit_full_adder_Half_Adder_0_1 Half_Adder_1
       (.A(Half_Adder_0_SUM),
        .B(Cin),
        .Cout(Half_Adder_1_Cout),
        .SUM(Sum));
  one_bit_full_adder_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(Half_Adder_1_Cout),
        .Op2(Half_Adder_0_Cout),
        .Res(Cout));
endmodule

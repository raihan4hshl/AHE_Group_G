//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
//Date        : Mon Oct 27 11:59:18 2025
//Host        : DESKTOP-QB50QQD running 64-bit major release  (build 9200)
//Command     : generate_target top.bd
//Design      : top
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=14,numReposBlks=14,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "top.hwdef" *) 
module top
   (A,
    B,
    S);
  input [3:0]A;
  input [3:0]B;
  output [4:0]S;

  wire [3:0]A;
  wire [0:0]A_slice_0_Dout;
  wire [0:0]A_slice_1_Dout;
  wire [0:0]A_slice_2_Dout;
  wire [0:0]A_slice_3_Dout;
  wire [3:0]B;
  wire [0:0]B_slice_0_Dout;
  wire [0:0]B_slice_1_Dout;
  wire [0:0]B_slice_2_Dout;
  wire [0:0]B_slice_3_Dout;
  wire [4:0]S;
  wire full_adder_0_Cout;
  wire full_adder_0_Sum;
  wire full_adder_1_Cout;
  wire full_adder_1_Sum;
  wire full_adder_2_Cout;
  wire full_adder_2_Sum;
  wire full_adder_3_Cout;
  wire full_adder_3_Sum;
  wire [0:0]xlconstant_0_dout;

  top_xlslice_0_0 A_slice_0
       (.Din(A),
        .Dout(A_slice_0_Dout));
  top_A_slice_0_0 A_slice_1
       (.Din(A),
        .Dout(A_slice_1_Dout));
  top_A_slice_1_0 A_slice_2
       (.Din(A),
        .Dout(A_slice_2_Dout));
  top_A_slice_2_0 A_slice_3
       (.Din(A),
        .Dout(A_slice_3_Dout));
  top_A_slice_1_1 B_slice_0
       (.Din(B),
        .Dout(B_slice_0_Dout));
  top_B_slice_0_0 B_slice_1
       (.Din(B),
        .Dout(B_slice_1_Dout));
  top_B_slice_1_0 B_slice_2
       (.Din(B),
        .Dout(B_slice_2_Dout));
  top_B_slice_2_0 B_slice_3
       (.Din(B),
        .Dout(B_slice_3_Dout));
  top_xlconcat_0_0 Concat_In0
       (.In0(full_adder_0_Sum),
        .In1(full_adder_1_Sum),
        .In2(full_adder_2_Sum),
        .In3(full_adder_3_Sum),
        .In4(full_adder_3_Cout),
        .dout(S));
  top_xlconstant_0_0 constant_0
       (.dout(xlconstant_0_dout));
  top_full_adder_0_0 full_adder_0
       (.A(A_slice_0_Dout),
        .B(B_slice_0_Dout),
        .Cin(xlconstant_0_dout),
        .Cout(full_adder_0_Cout),
        .Sum(full_adder_0_Sum));
  top_full_adder_1_0 full_adder_1
       (.A(A_slice_1_Dout),
        .B(B_slice_1_Dout),
        .Cin(full_adder_0_Cout),
        .Cout(full_adder_1_Cout),
        .Sum(full_adder_1_Sum));
  top_full_adder_2_0 full_adder_2
       (.A(A_slice_2_Dout),
        .B(B_slice_2_Dout),
        .Cin(full_adder_1_Cout),
        .Cout(full_adder_2_Cout),
        .Sum(full_adder_2_Sum));
  top_full_adder_3_0 full_adder_3
       (.A(A_slice_3_Dout),
        .B(B_slice_3_Dout),
        .Cin(full_adder_2_Cout),
        .Cout(full_adder_3_Cout),
        .Sum(full_adder_3_Sum));
endmodule

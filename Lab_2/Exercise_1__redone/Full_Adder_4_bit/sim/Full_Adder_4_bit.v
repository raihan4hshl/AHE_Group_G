//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
//Date        : Sat Nov  1 19:54:22 2025
//Host        : DESKTOP-QB50QQD running 64-bit major release  (build 9200)
//Command     : generate_target Full_Adder_4_bit.bd
//Design      : Full_Adder_4_bit
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Full_Adder_4_bit,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Full_Adder_4_bit,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=14,numReposBlks=14,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "Full_Adder_4_bit.hwdef" *) 
module Full_Adder_4_bit
   (A,
    B,
    Sum);
  input [3:0]A;
  input [3:0]B;
  output [4:0]Sum;

  wire [3:0]A;
  wire [0:0]A_0_Dout;
  wire [0:0]A_1_Dout;
  wire [0:0]A_2_Dout;
  wire [0:0]A_3_Dout;
  wire [3:0]B;
  wire [0:0]B_0_Dout;
  wire [0:0]B_1_Dout;
  wire [0:0]B_2_Dout;
  wire [0:0]B_3_Dout;
  wire [0:0]Cin_dout;
  wire [0:0]Full_Adder_oneBit_0_Cout;
  wire Full_Adder_oneBit_0_Sum;
  wire [0:0]Full_Adder_oneBit_1_Cout;
  wire Full_Adder_oneBit_1_Sum;
  wire [0:0]Full_Adder_oneBit_2_Cout;
  wire Full_Adder_oneBit_2_Sum;
  wire [0:0]Full_Adder_oneBit_3_Cout;
  wire Full_Adder_oneBit_3_Sum;
  wire [4:0]Sum;

  Full_Adder_4_bit_xlslice_0_0 A_0
       (.Din(A),
        .Dout(A_0_Dout));
  Full_Adder_4_bit_xlslice_0_1 A_1
       (.Din(A),
        .Dout(A_1_Dout));
  Full_Adder_4_bit_xlslice_1_0 A_2
       (.Din(A),
        .Dout(A_2_Dout));
  Full_Adder_4_bit_xlslice_2_0 A_3
       (.Din(A),
        .Dout(A_3_Dout));
  Full_Adder_4_bit_A_0_0 B_0
       (.Din(B),
        .Dout(B_0_Dout));
  Full_Adder_4_bit_B_0_0 B_1
       (.Din(B),
        .Dout(B_1_Dout));
  Full_Adder_4_bit_B_1_0 B_2
       (.Din(B),
        .Dout(B_2_Dout));
  Full_Adder_4_bit_B_2_0 B_3
       (.Din(B),
        .Dout(B_3_Dout));
  Full_Adder_4_bit_xlconstant_0_0 Cin
       (.dout(Cin_dout));
  Full_Adder_4_bit_Full_Adder_oneBit_0_0 Full_Adder_oneBit_0
       (.A(A_0_Dout),
        .B(B_0_Dout),
        .Cin(Cin_dout),
        .Cout(Full_Adder_oneBit_0_Cout),
        .Sum(Full_Adder_oneBit_0_Sum));
  Full_Adder_4_bit_Full_Adder_oneBit_0_1 Full_Adder_oneBit_1
       (.A(A_1_Dout),
        .B(B_1_Dout),
        .Cin(Full_Adder_oneBit_0_Cout),
        .Cout(Full_Adder_oneBit_1_Cout),
        .Sum(Full_Adder_oneBit_1_Sum));
  Full_Adder_4_bit_Full_Adder_oneBit_1_0 Full_Adder_oneBit_2
       (.A(A_2_Dout),
        .B(B_2_Dout),
        .Cin(Full_Adder_oneBit_1_Cout),
        .Cout(Full_Adder_oneBit_2_Cout),
        .Sum(Full_Adder_oneBit_2_Sum));
  Full_Adder_4_bit_Full_Adder_oneBit_2_0 Full_Adder_oneBit_3
       (.A(A_3_Dout),
        .B(B_3_Dout),
        .Cin(Full_Adder_oneBit_2_Cout),
        .Cout(Full_Adder_oneBit_3_Cout),
        .Sum(Full_Adder_oneBit_3_Sum));
  Full_Adder_4_bit_xlconcat_0_0 Sum_RnM
       (.In0(Full_Adder_oneBit_0_Sum),
        .In1(Full_Adder_oneBit_1_Sum),
        .In2(Full_Adder_oneBit_2_Sum),
        .In3(Full_Adder_oneBit_3_Sum),
        .In4(Full_Adder_oneBit_3_Cout),
        .dout(Sum));
endmodule

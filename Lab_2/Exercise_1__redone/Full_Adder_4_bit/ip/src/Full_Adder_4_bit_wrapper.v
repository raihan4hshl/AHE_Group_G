//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
//Date        : Sat Nov  1 19:54:22 2025
//Host        : DESKTOP-QB50QQD running 64-bit major release  (build 9200)
//Command     : generate_target Full_Adder_4_bit_wrapper.bd
//Design      : Full_Adder_4_bit_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Full_Adder_4_bit_wrapper
   (A,
    B,
    Sum);
  input [3:0]A;
  input [3:0]B;
  output [4:0]Sum;

  wire [3:0]A;
  wire [3:0]B;
  wire [4:0]Sum;

  Full_Adder_4_bit Full_Adder_4_bit_i
       (.A(A),
        .B(B),
        .Sum(Sum));
endmodule

//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
//Date        : Sat Nov  1 12:44:55 2025
//Host        : DESKTOP-QB50QQD running 64-bit major release  (build 9200)
//Command     : generate_target one_bit_full_adder_wrapper.bd
//Design      : one_bit_full_adder_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module one_bit_full_adder_wrapper
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
  wire Sum;

  one_bit_full_adder one_bit_full_adder_i
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

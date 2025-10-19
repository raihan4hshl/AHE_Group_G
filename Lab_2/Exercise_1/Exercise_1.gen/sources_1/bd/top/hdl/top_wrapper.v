//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
//Date        : Sun Oct 19 22:12:34 2025
//Host        : DESKTOP-QB50QQD running 64-bit major release  (build 9200)
//Command     : generate_target top_wrapper.bd
//Design      : top_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module top_wrapper
   (A0,
    A1,
    A2,
    A3,
    B0,
    B1,
    B2,
    B3,
    S);
  input [3:0]A0;
  input [3:0]A1;
  input [3:0]A2;
  input [3:0]A3;
  input [3:0]B0;
  input [3:0]B1;
  input [3:0]B2;
  input [3:0]B3;
  output [4:0]S;

  wire [3:0]A0;
  wire [3:0]A1;
  wire [3:0]A2;
  wire [3:0]A3;
  wire [3:0]B0;
  wire [3:0]B1;
  wire [3:0]B2;
  wire [3:0]B3;
  wire [4:0]S;

  top top_i
       (.A0(A0),
        .A1(A1),
        .A2(A2),
        .A3(A3),
        .B0(B0),
        .B1(B1),
        .B2(B2),
        .B3(B3),
        .S(S));
endmodule

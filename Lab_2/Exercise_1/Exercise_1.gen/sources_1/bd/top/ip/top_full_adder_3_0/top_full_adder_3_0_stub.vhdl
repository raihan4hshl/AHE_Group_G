-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Sun Oct 26 13:42:34 2025
-- Host        : DESKTOP-QB50QQD running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/User/Documents/GitHub/AHE_Group_G/Lab_2/Exercise_1/Exercise_1.gen/sources_1/bd/top/ip/top_full_adder_3_0/top_full_adder_3_0_stub.vhdl
-- Design      : top_full_adder_3_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_full_adder_3_0 is
  Port ( 
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    Sum : out STD_LOGIC;
    Cout : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_full_adder_3_0 : entity is "top_full_adder_3_0,full_adder,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of top_full_adder_3_0 : entity is "top_full_adder_3_0,full_adder,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=full_adder,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of top_full_adder_3_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of top_full_adder_3_0 : entity is "module_ref";
end top_full_adder_3_0;

architecture stub of top_full_adder_3_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "A,B,Cin,Sum,Cout";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "full_adder,Vivado 2025.1";
begin
end;

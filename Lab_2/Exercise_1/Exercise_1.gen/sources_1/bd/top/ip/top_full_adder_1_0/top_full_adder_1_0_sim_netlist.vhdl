-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Sun Oct 26 13:42:34 2025
-- Host        : DESKTOP-QB50QQD running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/User/Documents/GitHub/AHE_Group_G/Lab_2/Exercise_1/Exercise_1.gen/sources_1/bd/top/ip/top_full_adder_1_0/top_full_adder_1_0_sim_netlist.vhdl
-- Design      : top_full_adder_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_full_adder_1_0_full_adder is
  port (
    Sum : out STD_LOGIC;
    Cout : out STD_LOGIC;
    B : in STD_LOGIC;
    A : in STD_LOGIC;
    Cin : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_full_adder_1_0_full_adder : entity is "full_adder";
end top_full_adder_1_0_full_adder;

architecture STRUCTURE of top_full_adder_1_0_full_adder is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Cout__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Sum__0\ : label is "soft_lutpair0";
begin
\Cout__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => B,
      I1 => Cin,
      I2 => A,
      O => Cout
    );
\Sum__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => B,
      I1 => A,
      I2 => Cin,
      O => Sum
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_full_adder_1_0 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    Sum : out STD_LOGIC;
    Cout : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_full_adder_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_full_adder_1_0 : entity is "top_full_adder_1_0,full_adder,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of top_full_adder_1_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of top_full_adder_1_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of top_full_adder_1_0 : entity is "full_adder,Vivado 2025.1";
end top_full_adder_1_0;

architecture STRUCTURE of top_full_adder_1_0 is
begin
inst: entity work.top_full_adder_1_0_full_adder
     port map (
      A => A,
      B => B,
      Cin => Cin,
      Cout => Cout,
      Sum => Sum
    );
end STRUCTURE;

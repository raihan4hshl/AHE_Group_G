--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
--Date        : Tue Jan 13 13:24:04 2026
--Host        : DESKTOP-QB50QQD running 64-bit major release  (build 9200)
--Command     : generate_target tmp3_system_wrapper.bd
--Design      : tmp3_system_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tmp3_system_wrapper is
  port (
    TMP3_scl_tri_io : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    TMP3_sda_tri_io : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    UART_rxd : in STD_LOGIC;
    UART_txd : out STD_LOGIC;
    clk_100MHz : in STD_LOGIC;
    reset_rtl_0 : in STD_LOGIC
  );
end tmp3_system_wrapper;

architecture STRUCTURE of tmp3_system_wrapper is
  component tmp3_system is
  port (
    TMP3_scl_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    TMP3_scl_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    TMP3_scl_tri_t : out STD_LOGIC_VECTOR ( 3 downto 0 );
    TMP3_sda_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    TMP3_sda_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    TMP3_sda_tri_t : out STD_LOGIC_VECTOR ( 3 downto 0 );
    UART_rxd : in STD_LOGIC;
    UART_txd : out STD_LOGIC;
    clk_100MHz : in STD_LOGIC;
    reset_rtl_0 : in STD_LOGIC
  );
  end component tmp3_system;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal TMP3_scl_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TMP3_scl_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal TMP3_scl_tri_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal TMP3_scl_tri_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal TMP3_scl_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TMP3_scl_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal TMP3_scl_tri_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal TMP3_scl_tri_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal TMP3_scl_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TMP3_scl_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal TMP3_scl_tri_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal TMP3_scl_tri_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal TMP3_scl_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TMP3_scl_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal TMP3_scl_tri_t_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal TMP3_scl_tri_t_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal TMP3_sda_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TMP3_sda_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal TMP3_sda_tri_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal TMP3_sda_tri_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal TMP3_sda_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TMP3_sda_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal TMP3_sda_tri_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal TMP3_sda_tri_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal TMP3_sda_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TMP3_sda_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal TMP3_sda_tri_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal TMP3_sda_tri_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal TMP3_sda_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TMP3_sda_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal TMP3_sda_tri_t_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal TMP3_sda_tri_t_3 : STD_LOGIC_VECTOR ( 3 to 3 );
begin
TMP3_scl_tri_iobuf_0: component IOBUF
     port map (
      I => TMP3_scl_tri_o_0(0),
      IO => TMP3_scl_tri_io(0),
      O => TMP3_scl_tri_i_0(0),
      T => TMP3_scl_tri_t_0(0)
    );
TMP3_scl_tri_iobuf_1: component IOBUF
     port map (
      I => TMP3_scl_tri_o_1(1),
      IO => TMP3_scl_tri_io(1),
      O => TMP3_scl_tri_i_1(1),
      T => TMP3_scl_tri_t_1(1)
    );
TMP3_scl_tri_iobuf_2: component IOBUF
     port map (
      I => TMP3_scl_tri_o_2(2),
      IO => TMP3_scl_tri_io(2),
      O => TMP3_scl_tri_i_2(2),
      T => TMP3_scl_tri_t_2(2)
    );
TMP3_scl_tri_iobuf_3: component IOBUF
     port map (
      I => TMP3_scl_tri_o_3(3),
      IO => TMP3_scl_tri_io(3),
      O => TMP3_scl_tri_i_3(3),
      T => TMP3_scl_tri_t_3(3)
    );
TMP3_sda_tri_iobuf_0: component IOBUF
     port map (
      I => TMP3_sda_tri_o_0(0),
      IO => TMP3_sda_tri_io(0),
      O => TMP3_sda_tri_i_0(0),
      T => TMP3_sda_tri_t_0(0)
    );
TMP3_sda_tri_iobuf_1: component IOBUF
     port map (
      I => TMP3_sda_tri_o_1(1),
      IO => TMP3_sda_tri_io(1),
      O => TMP3_sda_tri_i_1(1),
      T => TMP3_sda_tri_t_1(1)
    );
TMP3_sda_tri_iobuf_2: component IOBUF
     port map (
      I => TMP3_sda_tri_o_2(2),
      IO => TMP3_sda_tri_io(2),
      O => TMP3_sda_tri_i_2(2),
      T => TMP3_sda_tri_t_2(2)
    );
TMP3_sda_tri_iobuf_3: component IOBUF
     port map (
      I => TMP3_sda_tri_o_3(3),
      IO => TMP3_sda_tri_io(3),
      O => TMP3_sda_tri_i_3(3),
      T => TMP3_sda_tri_t_3(3)
    );
tmp3_system_i: component tmp3_system
     port map (
      TMP3_scl_tri_i(3) => TMP3_scl_tri_i_3(3),
      TMP3_scl_tri_i(2) => TMP3_scl_tri_i_2(2),
      TMP3_scl_tri_i(1) => TMP3_scl_tri_i_1(1),
      TMP3_scl_tri_i(0) => TMP3_scl_tri_i_0(0),
      TMP3_scl_tri_o(3) => TMP3_scl_tri_o_3(3),
      TMP3_scl_tri_o(2) => TMP3_scl_tri_o_2(2),
      TMP3_scl_tri_o(1) => TMP3_scl_tri_o_1(1),
      TMP3_scl_tri_o(0) => TMP3_scl_tri_o_0(0),
      TMP3_scl_tri_t(3) => TMP3_scl_tri_t_3(3),
      TMP3_scl_tri_t(2) => TMP3_scl_tri_t_2(2),
      TMP3_scl_tri_t(1) => TMP3_scl_tri_t_1(1),
      TMP3_scl_tri_t(0) => TMP3_scl_tri_t_0(0),
      TMP3_sda_tri_i(3) => TMP3_sda_tri_i_3(3),
      TMP3_sda_tri_i(2) => TMP3_sda_tri_i_2(2),
      TMP3_sda_tri_i(1) => TMP3_sda_tri_i_1(1),
      TMP3_sda_tri_i(0) => TMP3_sda_tri_i_0(0),
      TMP3_sda_tri_o(3) => TMP3_sda_tri_o_3(3),
      TMP3_sda_tri_o(2) => TMP3_sda_tri_o_2(2),
      TMP3_sda_tri_o(1) => TMP3_sda_tri_o_1(1),
      TMP3_sda_tri_o(0) => TMP3_sda_tri_o_0(0),
      TMP3_sda_tri_t(3) => TMP3_sda_tri_t_3(3),
      TMP3_sda_tri_t(2) => TMP3_sda_tri_t_2(2),
      TMP3_sda_tri_t(1) => TMP3_sda_tri_t_1(1),
      TMP3_sda_tri_t(0) => TMP3_sda_tri_t_0(0),
      UART_rxd => UART_rxd,
      UART_txd => UART_txd,
      clk_100MHz => clk_100MHz,
      reset_rtl_0 => reset_rtl_0
    );
end STRUCTURE;

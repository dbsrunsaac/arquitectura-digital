-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "11/18/2024 14:16:06"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	comparador8Bits IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	igual : OUT std_logic;
	Amayor : OUT std_logic;
	Amenor : OUT std_logic
	);
END comparador8Bits;

-- Design Ports Information
-- igual	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Amayor	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Amenor	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF comparador8Bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_igual : std_logic;
SIGNAL ww_Amayor : std_logic;
SIGNAL ww_Amenor : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \Amayor~0_combout\ : std_logic;
SIGNAL \Amenor~0_combout\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Amayor~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
igual <= ww_igual;
Amayor <= ww_Amayor;
Amenor <= ww_Amenor;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_Amayor~0_combout\ <= NOT \Amayor~0_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;

-- Location: IOOBUF_X89_Y35_N62
\igual~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~3_combout\,
	devoe => ww_devoe,
	o => ww_igual);

-- Location: IOOBUF_X89_Y35_N79
\Amayor~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Amayor~0_combout\,
	devoe => ww_devoe,
	o => ww_Amayor);

-- Location: IOOBUF_X88_Y81_N20
\Amenor~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Amenor~0_combout\,
	devoe => ww_devoe,
	o => ww_Amenor);

-- Location: IOIBUF_X89_Y36_N38
\A[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X89_Y9_N38
\A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X89_Y36_N4
\B[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X89_Y37_N21
\B[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X89_Y37_N55
\B[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X89_Y37_N4
\A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LABCELL_X88_Y37_N36
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( \B[5]~input_o\ & ( \A[6]~input_o\ & ( (\A[5]~input_o\ & (\B[6]~input_o\ & (!\A[7]~input_o\ $ (\B[7]~input_o\)))) ) ) ) # ( !\B[5]~input_o\ & ( \A[6]~input_o\ & ( (!\A[5]~input_o\ & (\B[6]~input_o\ & (!\A[7]~input_o\ $ 
-- (\B[7]~input_o\)))) ) ) ) # ( \B[5]~input_o\ & ( !\A[6]~input_o\ & ( (\A[5]~input_o\ & (!\B[6]~input_o\ & (!\A[7]~input_o\ $ (\B[7]~input_o\)))) ) ) ) # ( !\B[5]~input_o\ & ( !\A[6]~input_o\ & ( (!\A[5]~input_o\ & (!\B[6]~input_o\ & (!\A[7]~input_o\ $ 
-- (\B[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000010000000001000000001000000000100000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_B[7]~input_o\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: IOIBUF_X89_Y36_N21
\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X89_Y35_N95
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X89_Y38_N21
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X89_Y38_N38
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X88_Y81_N36
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LABCELL_X88_Y37_N3
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( \A[1]~input_o\ & ( (\B[1]~input_o\ & (!\B[0]~input_o\ $ (\A[0]~input_o\))) ) ) # ( !\A[1]~input_o\ & ( (!\B[1]~input_o\ & (!\B[0]~input_o\ $ (\A[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100000000101001010000000000000000101001010000000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: IOIBUF_X89_Y35_N44
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X89_Y38_N55
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X89_Y36_N55
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X89_Y37_N38
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X88_Y37_N0
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \B[2]~input_o\ & ( (\A[2]~input_o\ & (!\A[3]~input_o\ $ (\B[3]~input_o\))) ) ) # ( !\B[2]~input_o\ & ( (!\A[2]~input_o\ & (!\A[3]~input_o\ $ (\B[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110000110000000000110011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X89_Y38_N4
\B[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LABCELL_X88_Y37_N12
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( \Equal0~0_combout\ & ( \B[4]~input_o\ & ( (\Equal0~1_combout\ & (\A[4]~input_o\ & \Equal0~2_combout\)) ) ) ) # ( \Equal0~0_combout\ & ( !\B[4]~input_o\ & ( (\Equal0~1_combout\ & (!\A[4]~input_o\ & \Equal0~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000010000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~1_combout\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_Equal0~2_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X88_Y37_N30
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( \B[5]~input_o\ & ( \A[6]~input_o\ & ( (!\A[7]~input_o\ & (((!\A[5]~input_o\ & \B[6]~input_o\)) # (\B[7]~input_o\))) # (\A[7]~input_o\ & (!\A[5]~input_o\ & (\B[6]~input_o\ & \B[7]~input_o\))) ) ) ) # ( !\B[5]~input_o\ & ( 
-- \A[6]~input_o\ & ( (!\A[7]~input_o\ & \B[7]~input_o\) ) ) ) # ( \B[5]~input_o\ & ( !\A[6]~input_o\ & ( (!\A[7]~input_o\ & ((!\A[5]~input_o\) # ((\B[7]~input_o\) # (\B[6]~input_o\)))) # (\A[7]~input_o\ & (\B[7]~input_o\ & ((!\A[5]~input_o\) # 
-- (\B[6]~input_o\)))) ) ) ) # ( !\B[5]~input_o\ & ( !\A[6]~input_o\ & ( (!\A[7]~input_o\ & ((\B[7]~input_o\) # (\B[6]~input_o\))) # (\A[7]~input_o\ & (\B[6]~input_o\ & \B[7]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001111100011001110111100000000110011000000100011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_B[7]~input_o\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X88_Y37_N51
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( \B[0]~input_o\ & ( \B[1]~input_o\ & ( (!\A[0]~input_o\) # (!\A[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \B[1]~input_o\ & ( !\A[1]~input_o\ ) ) ) # ( \B[0]~input_o\ & ( !\B[1]~input_o\ & ( (!\A[0]~input_o\ & !\A[1]~input_o\) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000011110000111100001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X88_Y37_N27
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( \A[2]~input_o\ & ( \A[3]~input_o\ & ( (\LessThan0~0_combout\ & (\B[2]~input_o\ & \B[3]~input_o\)) ) ) ) # ( !\A[2]~input_o\ & ( \A[3]~input_o\ & ( (\B[3]~input_o\ & ((\B[2]~input_o\) # (\LessThan0~0_combout\))) ) ) ) # ( 
-- \A[2]~input_o\ & ( !\A[3]~input_o\ & ( ((\LessThan0~0_combout\ & \B[2]~input_o\)) # (\B[3]~input_o\) ) ) ) # ( !\A[2]~input_o\ & ( !\A[3]~input_o\ & ( ((\B[3]~input_o\) # (\B[2]~input_o\)) # (\LessThan0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111000111110001111100000111000001110000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~0_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \LessThan0~1_combout\);

-- Location: LABCELL_X88_Y37_N6
\Amayor~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Amayor~0_combout\ = ( \LessThan0~1_combout\ & ( \B[4]~input_o\ & ( ((\Equal0~3_combout\) # (\Equal0~1_combout\)) # (\LessThan0~2_combout\) ) ) ) # ( !\LessThan0~1_combout\ & ( \B[4]~input_o\ & ( (((!\A[4]~input_o\ & \Equal0~1_combout\)) # 
-- (\Equal0~3_combout\)) # (\LessThan0~2_combout\) ) ) ) # ( \LessThan0~1_combout\ & ( !\B[4]~input_o\ & ( (((!\A[4]~input_o\ & \Equal0~1_combout\)) # (\Equal0~3_combout\)) # (\LessThan0~2_combout\) ) ) ) # ( !\LessThan0~1_combout\ & ( !\B[4]~input_o\ & ( 
-- (\Equal0~3_combout\) # (\LessThan0~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001110111111111100111011111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_LessThan0~2_combout\,
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_Equal0~3_combout\,
	datae => \ALT_INV_LessThan0~1_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Amayor~0_combout\);

-- Location: LABCELL_X88_Y37_N42
\Amenor~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Amenor~0_combout\ = ( \LessThan0~1_combout\ & ( \B[4]~input_o\ & ( (!\Equal0~3_combout\ & ((\Equal0~1_combout\) # (\LessThan0~2_combout\))) ) ) ) # ( !\LessThan0~1_combout\ & ( \B[4]~input_o\ & ( (!\Equal0~3_combout\ & (((!\A[4]~input_o\ & 
-- \Equal0~1_combout\)) # (\LessThan0~2_combout\))) ) ) ) # ( \LessThan0~1_combout\ & ( !\B[4]~input_o\ & ( (!\Equal0~3_combout\ & (((!\A[4]~input_o\ & \Equal0~1_combout\)) # (\LessThan0~2_combout\))) ) ) ) # ( !\LessThan0~1_combout\ & ( !\B[4]~input_o\ & ( 
-- (\LessThan0~2_combout\ & !\Equal0~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001110110000000000111011000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_LessThan0~2_combout\,
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_Equal0~3_combout\,
	datae => \ALT_INV_LessThan0~1_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Amenor~0_combout\);

-- Location: LABCELL_X10_Y68_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;



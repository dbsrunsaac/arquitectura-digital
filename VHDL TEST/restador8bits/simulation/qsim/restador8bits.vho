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

-- DATE "11/18/2024 14:38:23"

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

ENTITY 	restador8Bits IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	diferencia : OUT std_logic_vector(7 DOWNTO 0);
	desbordamiento : OUT std_logic
	);
END restador8Bits;

-- Design Ports Information
-- diferencia[0]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- diferencia[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- diferencia[2]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- diferencia[3]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- diferencia[4]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- diferencia[5]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- diferencia[6]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- diferencia[7]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- desbordamiento	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF restador8Bits IS
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
SIGNAL ww_diferencia : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_desbordamiento : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \resta_temporal[8]~1_sumout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \ALT_INV_resta_temporal[8]~1_sumout\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
diferencia <= ww_diferencia;
desbordamiento <= ww_desbordamiento;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_resta_temporal[8]~1_sumout\ <= NOT \resta_temporal[8]~1_sumout\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;

-- Location: IOOBUF_X89_Y38_N39
\diferencia[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~1_sumout\,
	devoe => ww_devoe,
	o => ww_diferencia(0));

-- Location: IOOBUF_X89_Y35_N45
\diferencia[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~5_sumout\,
	devoe => ww_devoe,
	o => ww_diferencia(1));

-- Location: IOOBUF_X89_Y35_N62
\diferencia[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~9_sumout\,
	devoe => ww_devoe,
	o => ww_diferencia(2));

-- Location: IOOBUF_X88_Y81_N54
\diferencia[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~13_sumout\,
	devoe => ww_devoe,
	o => ww_diferencia(3));

-- Location: IOOBUF_X86_Y81_N19
\diferencia[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~17_sumout\,
	devoe => ww_devoe,
	o => ww_diferencia(4));

-- Location: IOOBUF_X89_Y35_N79
\diferencia[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~21_sumout\,
	devoe => ww_devoe,
	o => ww_diferencia(5));

-- Location: IOOBUF_X89_Y9_N56
\diferencia[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_diferencia(6));

-- Location: IOOBUF_X89_Y9_N5
\diferencia[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~29_sumout\,
	devoe => ww_devoe,
	o => ww_diferencia(7));

-- Location: IOOBUF_X89_Y9_N39
\desbordamiento~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \process_0~0_combout\,
	devoe => ww_devoe,
	o => ww_desbordamiento);

-- Location: IOIBUF_X89_Y37_N21
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X89_Y37_N4
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LABCELL_X88_Y37_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( !\B[0]~input_o\ $ (!\A[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( !\B[0]~input_o\ $ (!\A[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Add0~3\ = SHARE((!\A[0]~input_o\) # (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	cin => GND,
	sharein => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\,
	shareout => \Add0~3\);

-- Location: IOIBUF_X88_Y81_N36
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X89_Y38_N4
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
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( !\B[1]~input_o\ $ (\A[1]~input_o\) ) + ( \Add0~3\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( !\B[1]~input_o\ $ (\A[1]~input_o\) ) + ( \Add0~3\ ) + ( \Add0~2\ ))
-- \Add0~7\ = SHARE((\B[1]~input_o\ & !\A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	cin => \Add0~2\,
	sharein => \Add0~3\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\,
	shareout => \Add0~7\);

-- Location: IOIBUF_X82_Y81_N58
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

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

-- Location: LABCELL_X88_Y37_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( !\A[2]~input_o\ $ (\B[2]~input_o\) ) + ( \Add0~7\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( !\A[2]~input_o\ $ (\B[2]~input_o\) ) + ( \Add0~7\ ) + ( \Add0~6\ ))
-- \Add0~11\ = SHARE((!\A[2]~input_o\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	cin => \Add0~6\,
	sharein => \Add0~7\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\,
	shareout => \Add0~11\);

-- Location: IOIBUF_X88_Y81_N19
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

-- Location: LABCELL_X88_Y37_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( !\A[3]~input_o\ $ (\B[3]~input_o\) ) + ( \Add0~11\ ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( !\A[3]~input_o\ $ (\B[3]~input_o\) ) + ( \Add0~11\ ) + ( \Add0~10\ ))
-- \Add0~15\ = SHARE((!\A[3]~input_o\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	cin => \Add0~10\,
	sharein => \Add0~11\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\,
	shareout => \Add0~15\);

-- Location: IOIBUF_X89_Y36_N4
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
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( !\A[4]~input_o\ $ (\B[4]~input_o\) ) + ( \Add0~15\ ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( !\A[4]~input_o\ $ (\B[4]~input_o\) ) + ( \Add0~15\ ) + ( \Add0~14\ ))
-- \Add0~19\ = SHARE((!\A[4]~input_o\ & \B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	cin => \Add0~14\,
	sharein => \Add0~15\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\,
	shareout => \Add0~19\);

-- Location: IOIBUF_X88_Y81_N2
\B[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

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

-- Location: LABCELL_X88_Y37_N15
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( !\B[5]~input_o\ $ (\A[5]~input_o\) ) + ( \Add0~19\ ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( !\B[5]~input_o\ $ (\A[5]~input_o\) ) + ( \Add0~19\ ) + ( \Add0~18\ ))
-- \Add0~23\ = SHARE((\B[5]~input_o\ & !\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	cin => \Add0~18\,
	sharein => \Add0~19\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\,
	shareout => \Add0~23\);

-- Location: IOIBUF_X89_Y37_N55
\A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X89_Y36_N21
\B[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LABCELL_X88_Y37_N18
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( !\A[6]~input_o\ $ (\B[6]~input_o\) ) + ( \Add0~23\ ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( !\A[6]~input_o\ $ (\B[6]~input_o\) ) + ( \Add0~23\ ) + ( \Add0~22\ ))
-- \Add0~27\ = SHARE((!\A[6]~input_o\ & \B[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	cin => \Add0~22\,
	sharein => \Add0~23\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\,
	shareout => \Add0~27\);

-- Location: IOIBUF_X89_Y38_N55
\A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X89_Y38_N21
\B[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LABCELL_X88_Y37_N21
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( !\A[7]~input_o\ $ (\B[7]~input_o\) ) + ( \Add0~27\ ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( !\A[7]~input_o\ $ (\B[7]~input_o\) ) + ( \Add0~27\ ) + ( \Add0~26\ ))
-- \Add0~31\ = SHARE((!\A[7]~input_o\ & \B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_B[7]~input_o\,
	cin => \Add0~26\,
	sharein => \Add0~27\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\,
	shareout => \Add0~31\);

-- Location: LABCELL_X88_Y37_N24
\resta_temporal[8]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \resta_temporal[8]~1_sumout\ = SUM(( VCC ) + ( \Add0~31\ ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Add0~30\,
	sharein => \Add0~31\,
	sumout => \resta_temporal[8]~1_sumout\);

-- Location: LABCELL_X88_Y37_N30
\process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ( !\A[7]~input_o\ & ( \resta_temporal[8]~1_sumout\ & ( \B[7]~input_o\ ) ) ) # ( \A[7]~input_o\ & ( !\resta_temporal[8]~1_sumout\ & ( !\B[7]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[7]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_resta_temporal[8]~1_sumout\,
	combout => \process_0~0_combout\);

-- Location: LABCELL_X70_Y2_N0
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



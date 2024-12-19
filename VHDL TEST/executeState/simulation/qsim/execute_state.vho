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

-- DATE "11/19/2024 20:31:19"

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

ENTITY 	Execute_State IS
    PORT (
	opcode : IN std_logic_vector(2 DOWNTO 0);
	operand : IN std_logic_vector(4 DOWNTO 0);
	result : OUT std_logic_vector(7 DOWNTO 0);
	exec_done : OUT std_logic
	);
END Execute_State;

-- Design Ports Information
-- result[0]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- exec_done	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand[0]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[1]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[0]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand[1]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand[2]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand[3]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand[4]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Execute_State IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_opcode : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_operand : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_exec_done : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \opcode[2]~input_o\ : std_logic;
SIGNAL \operand[0]~input_o\ : std_logic;
SIGNAL \opcode[1]~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \operand[1]~input_o\ : std_logic;
SIGNAL \opcode[0]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \operand[2]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \operand[3]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \operand[4]~input_o\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_operand[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_operand[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_operand[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_operand[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_opcode[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_opcode[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_opcode[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_operand[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Add0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;

BEGIN

ww_opcode <= opcode;
ww_operand <= operand;
result <= ww_result;
exec_done <= ww_exec_done;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_operand[4]~input_o\ <= NOT \operand[4]~input_o\;
\ALT_INV_operand[3]~input_o\ <= NOT \operand[3]~input_o\;
\ALT_INV_operand[2]~input_o\ <= NOT \operand[2]~input_o\;
\ALT_INV_operand[1]~input_o\ <= NOT \operand[1]~input_o\;
\ALT_INV_opcode[0]~input_o\ <= NOT \opcode[0]~input_o\;
\ALT_INV_opcode[2]~input_o\ <= NOT \opcode[2]~input_o\;
\ALT_INV_opcode[1]~input_o\ <= NOT \opcode[1]~input_o\;
\ALT_INV_operand[0]~input_o\ <= NOT \operand[0]~input_o\;
\ALT_INV_Add0~1_combout\ <= NOT \Add0~1_combout\;
\ALT_INV_Add0~0_combout\ <= NOT \Add0~0_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;

-- Location: IOOBUF_X89_Y35_N79
\result[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_result(0));

-- Location: IOOBUF_X89_Y37_N56
\result[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_result(1));

-- Location: IOOBUF_X89_Y36_N56
\result[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_result(2));

-- Location: IOOBUF_X89_Y37_N22
\result[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_result(3));

-- Location: IOOBUF_X89_Y38_N22
\result[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_result(4));

-- Location: IOOBUF_X68_Y0_N53
\result[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_result(5));

-- Location: IOOBUF_X89_Y8_N56
\result[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_result(6));

-- Location: IOOBUF_X58_Y0_N76
\result[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_result(7));

-- Location: IOOBUF_X54_Y81_N36
\exec_done~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_exec_done);

-- Location: IOIBUF_X89_Y37_N4
\opcode[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(2),
	o => \opcode[2]~input_o\);

-- Location: IOIBUF_X89_Y36_N38
\operand[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand(0),
	o => \operand[0]~input_o\);

-- Location: IOIBUF_X89_Y36_N4
\opcode[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(1),
	o => \opcode[1]~input_o\);

-- Location: LABCELL_X88_Y36_N0
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \opcode[1]~input_o\ ) # ( !\opcode[1]~input_o\ & ( (\operand[0]~input_o\) # (\opcode[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111111111111111111101011111010111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[2]~input_o\,
	datac => \ALT_INV_operand[0]~input_o\,
	datae => \ALT_INV_opcode[1]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: IOIBUF_X89_Y35_N95
\operand[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand(1),
	o => \operand[1]~input_o\);

-- Location: IOIBUF_X89_Y38_N38
\opcode[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(0),
	o => \opcode[0]~input_o\);

-- Location: LABCELL_X88_Y36_N9
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \operand[1]~input_o\ & ( \opcode[0]~input_o\ & ( (\operand[0]~input_o\ & (!\opcode[1]~input_o\ & !\opcode[2]~input_o\)) ) ) ) # ( !\operand[1]~input_o\ & ( \opcode[0]~input_o\ & ( (!\operand[0]~input_o\ & (!\opcode[1]~input_o\ & 
-- !\opcode[2]~input_o\)) ) ) ) # ( \operand[1]~input_o\ & ( !\opcode[0]~input_o\ & ( (!\operand[0]~input_o\ & (!\opcode[1]~input_o\ & !\opcode[2]~input_o\)) ) ) ) # ( !\operand[1]~input_o\ & ( !\opcode[0]~input_o\ & ( (\operand[0]~input_o\ & 
-- (!\opcode[1]~input_o\ & !\opcode[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000101000000000000010100000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_operand[0]~input_o\,
	datac => \ALT_INV_opcode[1]~input_o\,
	datad => \ALT_INV_opcode[2]~input_o\,
	datae => \ALT_INV_operand[1]~input_o\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: IOIBUF_X89_Y38_N4
\operand[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand(2),
	o => \operand[2]~input_o\);

-- Location: LABCELL_X88_Y36_N42
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \operand[0]~input_o\ & ( \opcode[0]~input_o\ & ( (!\opcode[2]~input_o\ & (!\opcode[1]~input_o\ & \operand[2]~input_o\)) ) ) ) # ( !\operand[0]~input_o\ & ( \opcode[0]~input_o\ & ( (!\opcode[2]~input_o\ & (!\opcode[1]~input_o\ & 
-- (!\operand[2]~input_o\ $ (\operand[1]~input_o\)))) ) ) ) # ( \operand[0]~input_o\ & ( !\opcode[0]~input_o\ & ( (!\opcode[2]~input_o\ & (!\opcode[1]~input_o\ & (!\operand[2]~input_o\ $ (!\operand[1]~input_o\)))) ) ) ) # ( !\operand[0]~input_o\ & ( 
-- !\opcode[0]~input_o\ & ( (!\opcode[2]~input_o\ & (!\opcode[1]~input_o\ & \operand[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010001000000010000000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[2]~input_o\,
	datab => \ALT_INV_opcode[1]~input_o\,
	datac => \ALT_INV_operand[2]~input_o\,
	datad => \ALT_INV_operand[1]~input_o\,
	datae => \ALT_INV_operand[0]~input_o\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: IOIBUF_X89_Y38_N55
\operand[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand(3),
	o => \operand[3]~input_o\);

-- Location: LABCELL_X88_Y36_N48
\Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = ( \opcode[0]~input_o\ & ( !\operand[3]~input_o\ $ ((((\operand[0]~input_o\) # (\operand[2]~input_o\)) # (\operand[1]~input_o\))) ) ) # ( !\opcode[0]~input_o\ & ( !\operand[3]~input_o\ $ (((!\operand[1]~input_o\) # 
-- ((!\operand[2]~input_o\) # (!\operand[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110110001100110011011010010011001100111001001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_operand[1]~input_o\,
	datab => \ALT_INV_operand[3]~input_o\,
	datac => \ALT_INV_operand[2]~input_o\,
	datad => \ALT_INV_operand[0]~input_o\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \Add0~0_combout\);

-- Location: LABCELL_X88_Y36_N51
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \Add0~0_combout\ & ( (!\opcode[1]~input_o\ & !\opcode[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_opcode[1]~input_o\,
	datad => \ALT_INV_opcode[2]~input_o\,
	dataf => \ALT_INV_Add0~0_combout\,
	combout => \Mux1~0_combout\);

-- Location: IOIBUF_X89_Y36_N21
\operand[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand(4),
	o => \operand[4]~input_o\);

-- Location: LABCELL_X88_Y36_N27
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = ( \operand[1]~input_o\ & ( \opcode[0]~input_o\ ) ) # ( !\operand[1]~input_o\ & ( \opcode[0]~input_o\ & ( ((\operand[2]~input_o\) # (\operand[3]~input_o\)) # (\operand[0]~input_o\) ) ) ) # ( \operand[1]~input_o\ & ( !\opcode[0]~input_o\ 
-- & ( (\operand[0]~input_o\ & (\operand[3]~input_o\ & \operand[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010101011111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_operand[0]~input_o\,
	datac => \ALT_INV_operand[3]~input_o\,
	datad => \ALT_INV_operand[2]~input_o\,
	datae => \ALT_INV_operand[1]~input_o\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \Add0~1_combout\);

-- Location: LABCELL_X88_Y36_N30
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \Add0~1_combout\ & ( \opcode[0]~input_o\ & ( (!\opcode[2]~input_o\ & (!\opcode[1]~input_o\ & \operand[4]~input_o\)) ) ) ) # ( !\Add0~1_combout\ & ( \opcode[0]~input_o\ & ( (!\opcode[2]~input_o\ & (!\opcode[1]~input_o\ & 
-- !\operand[4]~input_o\)) ) ) ) # ( \Add0~1_combout\ & ( !\opcode[0]~input_o\ & ( (!\opcode[2]~input_o\ & (!\opcode[1]~input_o\ & !\operand[4]~input_o\)) ) ) ) # ( !\Add0~1_combout\ & ( !\opcode[0]~input_o\ & ( (!\opcode[2]~input_o\ & (!\opcode[1]~input_o\ 
-- & \operand[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000100000001000000010000000100000000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[2]~input_o\,
	datab => \ALT_INV_opcode[1]~input_o\,
	datac => \ALT_INV_operand[4]~input_o\,
	datae => \ALT_INV_Add0~1_combout\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X31_Y79_N0
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



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

-- DATE "11/19/2024 20:10:06"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Instruccion_Buffer IS
    PORT (
	clk : IN std_logic;
	instr_in : IN std_logic_vector(7 DOWNTO 0);
	load : IN std_logic;
	instr_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END Instruccion_Buffer;

-- Design Ports Information
-- instr_out[0]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[1]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[2]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[3]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[5]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[6]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[7]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_in[0]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_in[1]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_in[2]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_in[3]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_in[4]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_in[5]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_in[6]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_in[7]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Instruccion_Buffer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_instr_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_load : std_logic;
SIGNAL ww_instr_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \instr_in[0]~input_o\ : std_logic;
SIGNAL \trans[0]~feeder_combout\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \instr_in[1]~input_o\ : std_logic;
SIGNAL \trans[1]~feeder_combout\ : std_logic;
SIGNAL \instr_in[2]~input_o\ : std_logic;
SIGNAL \instr_in[3]~input_o\ : std_logic;
SIGNAL \trans[3]~feeder_combout\ : std_logic;
SIGNAL \instr_in[4]~input_o\ : std_logic;
SIGNAL \trans[4]~feeder_combout\ : std_logic;
SIGNAL \instr_in[5]~input_o\ : std_logic;
SIGNAL \trans[5]~feeder_combout\ : std_logic;
SIGNAL \instr_in[6]~input_o\ : std_logic;
SIGNAL \instr_in[7]~input_o\ : std_logic;
SIGNAL \trans[7]~feeder_combout\ : std_logic;
SIGNAL trans : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_instr_in[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_instr_in[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_instr_in[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_instr_in[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_instr_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_instr_in[0]~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_instr_in <= instr_in;
ww_load <= load;
instr_out <= ww_instr_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_instr_in[3]~input_o\ <= NOT \instr_in[3]~input_o\;
\ALT_INV_instr_in[5]~input_o\ <= NOT \instr_in[5]~input_o\;
\ALT_INV_instr_in[4]~input_o\ <= NOT \instr_in[4]~input_o\;
\ALT_INV_instr_in[7]~input_o\ <= NOT \instr_in[7]~input_o\;
\ALT_INV_instr_in[1]~input_o\ <= NOT \instr_in[1]~input_o\;
\ALT_INV_instr_in[0]~input_o\ <= NOT \instr_in[0]~input_o\;

-- Location: IOOBUF_X89_Y36_N56
\instr_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => trans(0),
	devoe => ww_devoe,
	o => ww_instr_out(0));

-- Location: IOOBUF_X89_Y38_N56
\instr_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => trans(1),
	devoe => ww_devoe,
	o => ww_instr_out(1));

-- Location: IOOBUF_X89_Y9_N39
\instr_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => trans(2),
	devoe => ww_devoe,
	o => ww_instr_out(2));

-- Location: IOOBUF_X89_Y37_N22
\instr_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => trans(3),
	devoe => ww_devoe,
	o => ww_instr_out(3));

-- Location: IOOBUF_X89_Y37_N39
\instr_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => trans(4),
	devoe => ww_devoe,
	o => ww_instr_out(4));

-- Location: IOOBUF_X89_Y38_N5
\instr_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => trans(5),
	devoe => ww_devoe,
	o => ww_instr_out(5));

-- Location: IOOBUF_X89_Y37_N56
\instr_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => trans(6),
	devoe => ww_devoe,
	o => ww_instr_out(6));

-- Location: IOOBUF_X89_Y36_N22
\instr_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => trans(7),
	devoe => ww_devoe,
	o => ww_instr_out(7));

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y36_N4
\instr_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_in(0),
	o => \instr_in[0]~input_o\);

-- Location: LABCELL_X88_Y36_N33
\trans[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \trans[0]~feeder_combout\ = ( \instr_in[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_instr_in[0]~input_o\,
	combout => \trans[0]~feeder_combout\);

-- Location: IOIBUF_X89_Y35_N78
\load~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: FF_X88_Y36_N34
\trans[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \trans[0]~feeder_combout\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trans(0));

-- Location: IOIBUF_X89_Y38_N21
\instr_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_in(1),
	o => \instr_in[1]~input_o\);

-- Location: LABCELL_X88_Y38_N33
\trans[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \trans[1]~feeder_combout\ = ( \instr_in[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_instr_in[1]~input_o\,
	combout => \trans[1]~feeder_combout\);

-- Location: FF_X88_Y38_N34
\trans[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \trans[1]~feeder_combout\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trans(1));

-- Location: IOIBUF_X89_Y9_N55
\instr_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_in(2),
	o => \instr_in[2]~input_o\);

-- Location: FF_X88_Y9_N31
\trans[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \instr_in[2]~input_o\,
	sload => VCC,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trans(2));

-- Location: IOIBUF_X89_Y35_N44
\instr_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_in(3),
	o => \instr_in[3]~input_o\);

-- Location: LABCELL_X88_Y37_N0
\trans[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \trans[3]~feeder_combout\ = ( \instr_in[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_instr_in[3]~input_o\,
	combout => \trans[3]~feeder_combout\);

-- Location: FF_X88_Y37_N1
\trans[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \trans[3]~feeder_combout\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trans(3));

-- Location: IOIBUF_X89_Y37_N4
\instr_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_in(4),
	o => \instr_in[4]~input_o\);

-- Location: LABCELL_X88_Y37_N36
\trans[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \trans[4]~feeder_combout\ = ( \instr_in[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_instr_in[4]~input_o\,
	combout => \trans[4]~feeder_combout\);

-- Location: FF_X88_Y37_N37
\trans[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \trans[4]~feeder_combout\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trans(4));

-- Location: IOIBUF_X89_Y38_N38
\instr_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_in(5),
	o => \instr_in[5]~input_o\);

-- Location: LABCELL_X88_Y38_N36
\trans[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \trans[5]~feeder_combout\ = ( \instr_in[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_instr_in[5]~input_o\,
	combout => \trans[5]~feeder_combout\);

-- Location: FF_X88_Y38_N37
\trans[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \trans[5]~feeder_combout\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trans(5));

-- Location: IOIBUF_X89_Y35_N95
\instr_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_in(6),
	o => \instr_in[6]~input_o\);

-- Location: FF_X88_Y37_N16
\trans[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \instr_in[6]~input_o\,
	sload => VCC,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trans(6));

-- Location: IOIBUF_X89_Y36_N38
\instr_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_in(7),
	o => \instr_in[7]~input_o\);

-- Location: LABCELL_X88_Y36_N9
\trans[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \trans[7]~feeder_combout\ = ( \instr_in[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_instr_in[7]~input_o\,
	combout => \trans[7]~feeder_combout\);

-- Location: FF_X88_Y36_N10
\trans[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \trans[7]~feeder_combout\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trans(7));

-- Location: LABCELL_X55_Y5_N3
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



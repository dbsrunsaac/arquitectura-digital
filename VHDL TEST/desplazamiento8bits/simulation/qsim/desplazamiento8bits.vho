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

-- DATE "11/18/2024 14:52:19"

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

ENTITY 	desplazamiento8bits IS
    PORT (
	clk : IN std_logic;
	en : IN std_logic;
	reset : IN std_logic;
	data_in : IN std_logic_vector(7 DOWNTO 0);
	shift_in : IN std_logic;
	data_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END desplazamiento8bits;

-- Design Ports Information
-- data_in[0]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[0]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[5]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[6]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[7]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shift_in	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF desplazamiento8bits IS
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
SIGNAL ww_en : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_data_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_shift_in : std_logic;
SIGNAL ww_data_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \reg_data[0]~feeder_combout\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reg_data[7]~0_combout\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \reg_data[2]~feeder_combout\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \reg_data[3]~feeder_combout\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \reg_data[4]~feeder_combout\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \reg_data[5]~feeder_combout\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \reg_data[6]~feeder_combout\ : std_logic;
SIGNAL \shift_in~input_o\ : std_logic;
SIGNAL \reg_data[7]~feeder_combout\ : std_logic;
SIGNAL reg_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_data_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_en~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_shift_in~input_o\ : std_logic;
SIGNAL \ALT_INV_reg_data[7]~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_en <= en;
ww_reset <= reset;
ww_data_in <= data_in;
ww_shift_in <= shift_in;
data_out <= ww_data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_data_in[1]~input_o\ <= NOT \data_in[1]~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_en~input_o\ <= NOT \en~input_o\;
\ALT_INV_data_in[3]~input_o\ <= NOT \data_in[3]~input_o\;
\ALT_INV_data_in[4]~input_o\ <= NOT \data_in[4]~input_o\;
\ALT_INV_data_in[5]~input_o\ <= NOT \data_in[5]~input_o\;
\ALT_INV_data_in[6]~input_o\ <= NOT \data_in[6]~input_o\;
\ALT_INV_data_in[7]~input_o\ <= NOT \data_in[7]~input_o\;
\ALT_INV_shift_in~input_o\ <= NOT \shift_in~input_o\;
\ALT_INV_reg_data[7]~0_combout\ <= NOT \reg_data[7]~0_combout\;

-- Location: IOOBUF_X54_Y0_N36
\data_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => reg_data(0),
	devoe => ww_devoe,
	o => ww_data_out(0));

-- Location: IOOBUF_X56_Y0_N2
\data_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => reg_data(1),
	devoe => ww_devoe,
	o => ww_data_out(1));

-- Location: IOOBUF_X54_Y0_N53
\data_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => reg_data(2),
	devoe => ww_devoe,
	o => ww_data_out(2));

-- Location: IOOBUF_X62_Y0_N2
\data_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => reg_data(3),
	devoe => ww_devoe,
	o => ww_data_out(3));

-- Location: IOOBUF_X56_Y0_N19
\data_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => reg_data(4),
	devoe => ww_devoe,
	o => ww_data_out(4));

-- Location: IOOBUF_X62_Y0_N53
\data_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => reg_data(5),
	devoe => ww_devoe,
	o => ww_data_out(5));

-- Location: IOOBUF_X56_Y0_N36
\data_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => reg_data(6),
	devoe => ww_devoe,
	o => ww_data_out(6));

-- Location: IOOBUF_X62_Y0_N36
\data_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => reg_data(7),
	devoe => ww_devoe,
	o => ww_data_out(7));

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

-- Location: IOIBUF_X58_Y0_N58
\data_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: MLABCELL_X59_Y1_N33
\reg_data[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_data[0]~feeder_combout\ = ( \data_in[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data_in[1]~input_o\,
	combout => \reg_data[0]~feeder_combout\);

-- Location: IOIBUF_X60_Y0_N1
\en~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: IOIBUF_X60_Y0_N52
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LABCELL_X60_Y1_N15
\reg_data[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_data[7]~0_combout\ = ( \reset~input_o\ ) # ( !\reset~input_o\ & ( !\en~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_en~input_o\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \reg_data[7]~0_combout\);

-- Location: FF_X59_Y1_N34
\reg_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_data[0]~feeder_combout\,
	clrn => \ALT_INV_reg_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data(0));

-- Location: IOIBUF_X56_Y0_N52
\data_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: FF_X59_Y1_N7
\reg_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[2]~input_o\,
	clrn => \ALT_INV_reg_data[7]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data(1));

-- Location: IOIBUF_X58_Y0_N92
\data_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: MLABCELL_X59_Y1_N12
\reg_data[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_data[2]~feeder_combout\ = ( \data_in[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data_in[3]~input_o\,
	combout => \reg_data[2]~feeder_combout\);

-- Location: FF_X59_Y1_N13
\reg_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_data[2]~feeder_combout\,
	clrn => \ALT_INV_reg_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data(2));

-- Location: IOIBUF_X60_Y0_N18
\data_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: LABCELL_X60_Y1_N30
\reg_data[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_data[3]~feeder_combout\ = ( \data_in[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data_in[4]~input_o\,
	combout => \reg_data[3]~feeder_combout\);

-- Location: FF_X60_Y1_N31
\reg_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_data[3]~feeder_combout\,
	clrn => \ALT_INV_reg_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data(3));

-- Location: IOIBUF_X58_Y0_N41
\data_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: MLABCELL_X59_Y1_N48
\reg_data[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_data[4]~feeder_combout\ = ( \data_in[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data_in[5]~input_o\,
	combout => \reg_data[4]~feeder_combout\);

-- Location: FF_X59_Y1_N49
\reg_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_data[4]~feeder_combout\,
	clrn => \ALT_INV_reg_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data(4));

-- Location: IOIBUF_X58_Y0_N75
\data_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: MLABCELL_X59_Y1_N27
\reg_data[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_data[5]~feeder_combout\ = ( \data_in[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data_in[6]~input_o\,
	combout => \reg_data[5]~feeder_combout\);

-- Location: FF_X59_Y1_N28
\reg_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_data[5]~feeder_combout\,
	clrn => \ALT_INV_reg_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data(5));

-- Location: IOIBUF_X62_Y0_N18
\data_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: MLABCELL_X59_Y1_N0
\reg_data[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_data[6]~feeder_combout\ = ( \data_in[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data_in[7]~input_o\,
	combout => \reg_data[6]~feeder_combout\);

-- Location: FF_X59_Y1_N1
\reg_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_data[6]~feeder_combout\,
	clrn => \ALT_INV_reg_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data(6));

-- Location: IOIBUF_X60_Y0_N35
\shift_in~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shift_in,
	o => \shift_in~input_o\);

-- Location: LABCELL_X60_Y1_N6
\reg_data[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_data[7]~feeder_combout\ = ( \shift_in~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_shift_in~input_o\,
	combout => \reg_data[7]~feeder_combout\);

-- Location: FF_X60_Y1_N7
\reg_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_data[7]~feeder_combout\,
	clrn => \ALT_INV_reg_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data(7));

-- Location: IOIBUF_X56_Y81_N18
\data_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: MLABCELL_X8_Y4_N3
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



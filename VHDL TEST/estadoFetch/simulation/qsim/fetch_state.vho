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

-- DATE "11/19/2024 20:16:16"

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

ENTITY 	Fetch_State IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	addr_out : OUT std_logic_vector(4 DOWNTO 0);
	fetch_done : OUT std_logic
	);
END Fetch_State;

-- Design Ports Information
-- addr_out[0]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_out[1]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_out[2]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_out[3]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_out[4]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fetch_done	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Fetch_State IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_addr_out : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_fetch_done : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \addr[0]~4_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \addr[1]~0_combout\ : std_logic;
SIGNAL \addr[1]~DUPLICATE_q\ : std_logic;
SIGNAL \addr[2]~1_combout\ : std_logic;
SIGNAL \addr[2]~DUPLICATE_q\ : std_logic;
SIGNAL \addr[3]~2_combout\ : std_logic;
SIGNAL \addr[4]~3_combout\ : std_logic;
SIGNAL \fetch_done~reg0feeder_combout\ : std_logic;
SIGNAL \fetch_done~reg0_q\ : std_logic;
SIGNAL addr : std_logic_vector(4 DOWNTO 0);
SIGNAL ALT_INV_addr : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_addr[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
addr_out <= ww_addr_out;
fetch_done <= ww_fetch_done;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_addr(0) <= NOT addr(0);
\ALT_INV_addr[1]~DUPLICATE_q\ <= NOT \addr[1]~DUPLICATE_q\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
ALT_INV_addr(4) <= NOT addr(4);
ALT_INV_addr(3) <= NOT addr(3);
ALT_INV_addr(2) <= NOT addr(2);
ALT_INV_addr(1) <= NOT addr(1);

-- Location: IOOBUF_X89_Y37_N39
\addr_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => addr(0),
	devoe => ww_devoe,
	o => ww_addr_out(0));

-- Location: IOOBUF_X89_Y37_N5
\addr_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => addr(1),
	devoe => ww_devoe,
	o => ww_addr_out(1));

-- Location: IOOBUF_X89_Y37_N22
\addr_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \addr[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_addr_out(2));

-- Location: IOOBUF_X89_Y38_N39
\addr_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => addr(3),
	devoe => ww_devoe,
	o => ww_addr_out(3));

-- Location: IOOBUF_X89_Y37_N56
\addr_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => addr(4),
	devoe => ww_devoe,
	o => ww_addr_out(4));

-- Location: IOOBUF_X89_Y36_N39
\fetch_done~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_done~reg0_q\,
	devoe => ww_devoe,
	o => ww_fetch_done);

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

-- Location: LABCELL_X88_Y37_N57
\addr[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \addr[0]~4_combout\ = ( !addr(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_addr(0),
	combout => \addr[0]~4_combout\);

-- Location: IOIBUF_X89_Y36_N55
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X88_Y37_N59
\addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \addr[0]~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr(0));

-- Location: LABCELL_X88_Y37_N33
\addr[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \addr[1]~0_combout\ = ( !addr(1) & ( addr(0) ) ) # ( addr(1) & ( !addr(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_addr(1),
	dataf => ALT_INV_addr(0),
	combout => \addr[1]~0_combout\);

-- Location: FF_X88_Y37_N35
\addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \addr[1]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr(1));

-- Location: FF_X88_Y37_N53
\addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \addr[2]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr(2));

-- Location: FF_X88_Y37_N34
\addr[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \addr[1]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \addr[1]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y37_N51
\addr[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \addr[2]~1_combout\ = ( addr(2) & ( \addr[1]~DUPLICATE_q\ & ( !addr(0) ) ) ) # ( !addr(2) & ( \addr[1]~DUPLICATE_q\ & ( addr(0) ) ) ) # ( addr(2) & ( !\addr[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_addr(0),
	datae => ALT_INV_addr(2),
	dataf => \ALT_INV_addr[1]~DUPLICATE_q\,
	combout => \addr[2]~1_combout\);

-- Location: FF_X88_Y37_N52
\addr[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \addr[2]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \addr[2]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y37_N42
\addr[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \addr[3]~2_combout\ = ( addr(3) & ( \addr[1]~DUPLICATE_q\ & ( (!addr(0)) # (!addr(2)) ) ) ) # ( !addr(3) & ( \addr[1]~DUPLICATE_q\ & ( (addr(0) & addr(2)) ) ) ) # ( addr(3) & ( !\addr[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000011000000111111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_addr(0),
	datac => ALT_INV_addr(2),
	datae => ALT_INV_addr(3),
	dataf => \ALT_INV_addr[1]~DUPLICATE_q\,
	combout => \addr[3]~2_combout\);

-- Location: FF_X88_Y37_N44
\addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \addr[3]~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr(3));

-- Location: LABCELL_X88_Y37_N18
\addr[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \addr[4]~3_combout\ = ( addr(4) & ( \addr[1]~DUPLICATE_q\ & ( (!addr(0)) # ((!addr(2)) # (!addr(3))) ) ) ) # ( !addr(4) & ( \addr[1]~DUPLICATE_q\ & ( (addr(0) & (addr(2) & addr(3))) ) ) ) # ( addr(4) & ( !\addr[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000111111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_addr(0),
	datac => ALT_INV_addr(2),
	datad => ALT_INV_addr(3),
	datae => ALT_INV_addr(4),
	dataf => \ALT_INV_addr[1]~DUPLICATE_q\,
	combout => \addr[4]~3_combout\);

-- Location: FF_X88_Y37_N19
\addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \addr[4]~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr(4));

-- Location: LABCELL_X88_Y36_N3
\fetch_done~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fetch_done~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \fetch_done~reg0feeder_combout\);

-- Location: FF_X88_Y36_N4
\fetch_done~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \fetch_done~reg0feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_done~reg0_q\);

-- Location: LABCELL_X85_Y54_N0
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



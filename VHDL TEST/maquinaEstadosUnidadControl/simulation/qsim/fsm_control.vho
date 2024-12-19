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

-- DATE "11/19/2024 19:51:33"

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

ENTITY 	FSM_Control IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	state : OUT std_logic_vector(1 DOWNTO 0)
	);
END FSM_Control;

-- Design Ports Information
-- state[0]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[1]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FSM_Control IS
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
SIGNAL ww_state : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \current_state.WRITEBACK~q\ : std_logic;
SIGNAL \current_state.FETCH~0_combout\ : std_logic;
SIGNAL \current_state.FETCH~q\ : std_logic;
SIGNAL \current_state.DECODE~0_combout\ : std_logic;
SIGNAL \current_state.DECODE~q\ : std_logic;
SIGNAL \current_state.EXECUTE~q\ : std_logic;
SIGNAL \current_state.FETCH~DUPLICATE_q\ : std_logic;
SIGNAL \state~3_combout\ : std_logic;
SIGNAL \current_state.DECODE~DUPLICATE_q\ : std_logic;
SIGNAL \state~4_combout\ : std_logic;
SIGNAL \ALT_INV_current_state.FETCH~q\ : std_logic;
SIGNAL \ALT_INV_current_state.EXECUTE~q\ : std_logic;
SIGNAL \ALT_INV_state~3_combout\ : std_logic;
SIGNAL \ALT_INV_state~4_combout\ : std_logic;
SIGNAL \ALT_INV_current_state.WRITEBACK~q\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_current_state.FETCH~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_current_state.DECODE~DUPLICATE_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
state <= ww_state;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_current_state.FETCH~q\ <= NOT \current_state.FETCH~q\;
\ALT_INV_current_state.EXECUTE~q\ <= NOT \current_state.EXECUTE~q\;
\ALT_INV_state~3_combout\ <= NOT \state~3_combout\;
\ALT_INV_state~4_combout\ <= NOT \state~4_combout\;
\ALT_INV_current_state.WRITEBACK~q\ <= NOT \current_state.WRITEBACK~q\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_current_state.FETCH~DUPLICATE_q\ <= NOT \current_state.FETCH~DUPLICATE_q\;
\ALT_INV_current_state.DECODE~DUPLICATE_q\ <= NOT \current_state.DECODE~DUPLICATE_q\;

-- Location: IOOBUF_X89_Y37_N5
\state[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_state~3_combout\,
	devoe => ww_devoe,
	o => ww_state(0));

-- Location: IOOBUF_X89_Y37_N22
\state[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_state~4_combout\,
	devoe => ww_devoe,
	o => ww_state(1));

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

-- Location: IOIBUF_X89_Y37_N55
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X88_Y37_N41
\current_state.WRITEBACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \current_state.EXECUTE~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.WRITEBACK~q\);

-- Location: LABCELL_X88_Y37_N48
\current_state.FETCH~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \current_state.FETCH~0_combout\ = ( !\current_state.WRITEBACK~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_current_state.WRITEBACK~q\,
	combout => \current_state.FETCH~0_combout\);

-- Location: FF_X88_Y37_N49
\current_state.FETCH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \current_state.FETCH~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.FETCH~q\);

-- Location: LABCELL_X88_Y37_N36
\current_state.DECODE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \current_state.DECODE~0_combout\ = ( !\current_state.FETCH~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_current_state.FETCH~q\,
	combout => \current_state.DECODE~0_combout\);

-- Location: FF_X88_Y37_N38
\current_state.DECODE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \current_state.DECODE~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.DECODE~q\);

-- Location: FF_X88_Y37_N53
\current_state.EXECUTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \current_state.DECODE~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.EXECUTE~q\);

-- Location: FF_X88_Y37_N50
\current_state.FETCH~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \current_state.FETCH~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.FETCH~DUPLICATE_q\);

-- Location: LABCELL_X88_Y37_N51
\state~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~3_combout\ = ( \current_state.FETCH~DUPLICATE_q\ & ( \current_state.EXECUTE~q\ ) ) # ( !\current_state.FETCH~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_current_state.EXECUTE~q\,
	dataf => \ALT_INV_current_state.FETCH~DUPLICATE_q\,
	combout => \state~3_combout\);

-- Location: FF_X88_Y37_N37
\current_state.DECODE~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \current_state.DECODE~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.DECODE~DUPLICATE_q\);

-- Location: LABCELL_X88_Y37_N54
\state~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~4_combout\ = ( \current_state.DECODE~DUPLICATE_q\ & ( \current_state.FETCH~DUPLICATE_q\ ) ) # ( \current_state.DECODE~DUPLICATE_q\ & ( !\current_state.FETCH~DUPLICATE_q\ ) ) # ( !\current_state.DECODE~DUPLICATE_q\ & ( 
-- !\current_state.FETCH~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_current_state.DECODE~DUPLICATE_q\,
	dataf => \ALT_INV_current_state.FETCH~DUPLICATE_q\,
	combout => \state~4_combout\);

-- Location: LABCELL_X67_Y6_N3
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



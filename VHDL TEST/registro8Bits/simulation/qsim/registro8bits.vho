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

-- DATE "11/18/2024 14:50:39"

-- 
-- Device: Altera EP4CGX150DF31C7 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_NCEO~	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ~ALTERA_DATA0~	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_NCSO~	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_NCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_NCSO~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	registro8Bits IS
    PORT (
	clk : IN std_logic;
	en : IN std_logic;
	reset : IN std_logic;
	data_in : IN std_logic_vector(7 DOWNTO 0);
	data_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END registro8Bits;

-- Design Ports Information
-- data_out[0]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_F30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[4]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[5]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[6]	=>  Location: PIN_K30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[7]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AJ13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_E30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF registro8Bits IS
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
SIGNAL ww_data_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_data[7]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_out[0]~output_o\ : std_logic;
SIGNAL \data_out[1]~output_o\ : std_logic;
SIGNAL \data_out[2]~output_o\ : std_logic;
SIGNAL \data_out[3]~output_o\ : std_logic;
SIGNAL \data_out[4]~output_o\ : std_logic;
SIGNAL \data_out[5]~output_o\ : std_logic;
SIGNAL \data_out[6]~output_o\ : std_logic;
SIGNAL \data_out[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \reg_data[0]~feeder_combout\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reg_data[7]~0_combout\ : std_logic;
SIGNAL \reg_data[7]~0clkctrl_outclk\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \reg_data[1]~feeder_combout\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \reg_data[2]~feeder_combout\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \reg_data[3]~feeder_combout\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \reg_data[4]~feeder_combout\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \reg_data[5]~feeder_combout\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \reg_data[6]~feeder_combout\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL reg_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reg_data[7]~0clkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_en <= en;
ww_reset <= reset;
ww_data_in <= data_in;
data_out <= ww_data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reg_data[7]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reg_data[7]~0_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reg_data[7]~0clkctrl_outclk\ <= NOT \reg_data[7]~0clkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X117_Y79_N9
\data_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg_data(0),
	devoe => ww_devoe,
	o => \data_out[0]~output_o\);

-- Location: IOOBUF_X82_Y91_N2
\data_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg_data(1),
	devoe => ww_devoe,
	o => \data_out[1]~output_o\);

-- Location: IOOBUF_X117_Y69_N2
\data_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg_data(2),
	devoe => ww_devoe,
	o => \data_out[2]~output_o\);

-- Location: IOOBUF_X8_Y91_N16
\data_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg_data(3),
	devoe => ww_devoe,
	o => \data_out[3]~output_o\);

-- Location: IOOBUF_X15_Y0_N2
\data_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg_data(4),
	devoe => ww_devoe,
	o => \data_out[4]~output_o\);

-- Location: IOOBUF_X70_Y0_N23
\data_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg_data(5),
	devoe => ww_devoe,
	o => \data_out[5]~output_o\);

-- Location: IOOBUF_X117_Y60_N9
\data_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg_data(6),
	devoe => ww_devoe,
	o => \data_out[6]~output_o\);

-- Location: IOOBUF_X28_Y91_N16
\data_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg_data(7),
	devoe => ww_devoe,
	o => \data_out[7]~output_o\);

-- Location: IOIBUF_X57_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G29
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X117_Y79_N1
\data_in[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: LCCOMB_X116_Y79_N24
\reg_data[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_data[0]~feeder_combout\ = \data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \reg_data[0]~feeder_combout\);

-- Location: IOIBUF_X53_Y0_N1
\en~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: IOIBUF_X53_Y0_N8
\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X53_Y1_N16
\reg_data[7]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_data[7]~0_combout\ = (\reset~input_o\) # (!\en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en~input_o\,
	datad => \reset~input_o\,
	combout => \reg_data[7]~0_combout\);

-- Location: CLKCTRL_G24
\reg_data[7]~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reg_data[7]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reg_data[7]~0clkctrl_outclk\);

-- Location: FF_X116_Y79_N25
\reg_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_data[0]~feeder_combout\,
	clrn => \ALT_INV_reg_data[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data(0));

-- Location: IOIBUF_X84_Y91_N1
\data_in[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: LCCOMB_X84_Y90_N16
\reg_data[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_data[1]~feeder_combout\ = \data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \reg_data[1]~feeder_combout\);

-- Location: FF_X84_Y90_N17
\reg_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_data[1]~feeder_combout\,
	clrn => \ALT_INV_reg_data[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data(1));

-- Location: IOIBUF_X117_Y69_N8
\data_in[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: LCCOMB_X116_Y69_N24
\reg_data[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_data[2]~feeder_combout\ = \data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \reg_data[2]~feeder_combout\);

-- Location: FF_X116_Y69_N25
\reg_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_data[2]~feeder_combout\,
	clrn => \ALT_INV_reg_data[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data(2));

-- Location: IOIBUF_X8_Y91_N1
\data_in[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: LCCOMB_X8_Y90_N0
\reg_data[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_data[3]~feeder_combout\ = \data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \reg_data[3]~feeder_combout\);

-- Location: FF_X8_Y90_N1
\reg_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_data[3]~feeder_combout\,
	clrn => \ALT_INV_reg_data[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data(3));

-- Location: IOIBUF_X15_Y0_N22
\data_in[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: LCCOMB_X15_Y1_N8
\reg_data[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_data[4]~feeder_combout\ = \data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \reg_data[4]~feeder_combout\);

-- Location: FF_X15_Y1_N9
\reg_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_data[4]~feeder_combout\,
	clrn => \ALT_INV_reg_data[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data(4));

-- Location: IOIBUF_X70_Y0_N1
\data_in[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: LCCOMB_X70_Y1_N24
\reg_data[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_data[5]~feeder_combout\ = \data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[5]~input_o\,
	combout => \reg_data[5]~feeder_combout\);

-- Location: FF_X70_Y1_N25
\reg_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_data[5]~feeder_combout\,
	clrn => \ALT_INV_reg_data[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data(5));

-- Location: IOIBUF_X117_Y60_N15
\data_in[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: LCCOMB_X116_Y60_N24
\reg_data[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_data[6]~feeder_combout\ = \data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \reg_data[6]~feeder_combout\);

-- Location: FF_X116_Y60_N25
\reg_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_data[6]~feeder_combout\,
	clrn => \ALT_INV_reg_data[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data(6));

-- Location: IOIBUF_X28_Y91_N8
\data_in[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: FF_X28_Y90_N1
\reg_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[7]~input_o\,
	clrn => \ALT_INV_reg_data[7]~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data(7));

ww_data_out(0) <= \data_out[0]~output_o\;

ww_data_out(1) <= \data_out[1]~output_o\;

ww_data_out(2) <= \data_out[2]~output_o\;

ww_data_out(3) <= \data_out[3]~output_o\;

ww_data_out(4) <= \data_out[4]~output_o\;

ww_data_out(5) <= \data_out[5]~output_o\;

ww_data_out(6) <= \data_out[6]~output_o\;

ww_data_out(7) <= \data_out[7]~output_o\;
END structure;



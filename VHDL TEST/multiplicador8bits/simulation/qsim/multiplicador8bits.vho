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

-- DATE "11/18/2024 14:40:31"

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

ENTITY 	multiplicador8bits IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	en : IN std_logic;
	final : OUT std_logic;
	producto : OUT std_logic_vector(15 DOWNTO 0)
	);
END multiplicador8bits;

-- Design Ports Information
-- final	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- producto[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- producto[1]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- producto[2]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- producto[3]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- producto[4]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- producto[5]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- producto[6]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- producto[7]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- producto[8]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- producto[9]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- producto[10]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- producto[11]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- producto[12]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- producto[13]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- producto[14]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- producto[15]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF multiplicador8bits IS
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
SIGNAL ww_en : std_logic;
SIGNAL ww_final : std_logic;
SIGNAL ww_producto : std_logic_vector(15 DOWNTO 0);
SIGNAL \Mult0~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult0~8_AY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult0~24\ : std_logic;
SIGNAL \Mult0~25\ : std_logic;
SIGNAL \Mult0~26\ : std_logic;
SIGNAL \Mult0~27\ : std_logic;
SIGNAL \Mult0~28\ : std_logic;
SIGNAL \Mult0~29\ : std_logic;
SIGNAL \Mult0~30\ : std_logic;
SIGNAL \Mult0~31\ : std_logic;
SIGNAL \Mult0~32\ : std_logic;
SIGNAL \Mult0~33\ : std_logic;
SIGNAL \Mult0~34\ : std_logic;
SIGNAL \Mult0~35\ : std_logic;
SIGNAL \Mult0~36\ : std_logic;
SIGNAL \Mult0~37\ : std_logic;
SIGNAL \Mult0~38\ : std_logic;
SIGNAL \Mult0~39\ : std_logic;
SIGNAL \Mult0~40\ : std_logic;
SIGNAL \Mult0~41\ : std_logic;
SIGNAL \Mult0~42\ : std_logic;
SIGNAL \Mult0~43\ : std_logic;
SIGNAL \Mult0~44\ : std_logic;
SIGNAL \Mult0~45\ : std_logic;
SIGNAL \Mult0~46\ : std_logic;
SIGNAL \Mult0~47\ : std_logic;
SIGNAL \Mult0~48\ : std_logic;
SIGNAL \Mult0~49\ : std_logic;
SIGNAL \Mult0~50\ : std_logic;
SIGNAL \Mult0~51\ : std_logic;
SIGNAL \Mult0~52\ : std_logic;
SIGNAL \Mult0~53\ : std_logic;
SIGNAL \Mult0~54\ : std_logic;
SIGNAL \Mult0~55\ : std_logic;
SIGNAL \Mult0~56\ : std_logic;
SIGNAL \Mult0~57\ : std_logic;
SIGNAL \Mult0~58\ : std_logic;
SIGNAL \Mult0~59\ : std_logic;
SIGNAL \Mult0~60\ : std_logic;
SIGNAL \Mult0~61\ : std_logic;
SIGNAL \Mult0~62\ : std_logic;
SIGNAL \Mult0~63\ : std_logic;
SIGNAL \Mult0~64\ : std_logic;
SIGNAL \Mult0~65\ : std_logic;
SIGNAL \Mult0~66\ : std_logic;
SIGNAL \Mult0~67\ : std_logic;
SIGNAL \Mult0~68\ : std_logic;
SIGNAL \Mult0~69\ : std_logic;
SIGNAL \Mult0~70\ : std_logic;
SIGNAL \Mult0~71\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Mult0~8_resulta\ : std_logic;
SIGNAL \producto~0_combout\ : std_logic;
SIGNAL \Mult0~9\ : std_logic;
SIGNAL \producto~1_combout\ : std_logic;
SIGNAL \Mult0~10\ : std_logic;
SIGNAL \producto~2_combout\ : std_logic;
SIGNAL \Mult0~11\ : std_logic;
SIGNAL \producto~3_combout\ : std_logic;
SIGNAL \Mult0~12\ : std_logic;
SIGNAL \producto~4_combout\ : std_logic;
SIGNAL \Mult0~13\ : std_logic;
SIGNAL \producto~5_combout\ : std_logic;
SIGNAL \Mult0~14\ : std_logic;
SIGNAL \producto~6_combout\ : std_logic;
SIGNAL \Mult0~15\ : std_logic;
SIGNAL \producto~7_combout\ : std_logic;
SIGNAL \Mult0~16\ : std_logic;
SIGNAL \producto~8_combout\ : std_logic;
SIGNAL \Mult0~17\ : std_logic;
SIGNAL \producto~9_combout\ : std_logic;
SIGNAL \Mult0~18\ : std_logic;
SIGNAL \producto~10_combout\ : std_logic;
SIGNAL \Mult0~19\ : std_logic;
SIGNAL \producto~11_combout\ : std_logic;
SIGNAL \Mult0~20\ : std_logic;
SIGNAL \producto~12_combout\ : std_logic;
SIGNAL \Mult0~21\ : std_logic;
SIGNAL \producto~13_combout\ : std_logic;
SIGNAL \Mult0~22\ : std_logic;
SIGNAL \producto~14_combout\ : std_logic;
SIGNAL \Mult0~23\ : std_logic;
SIGNAL \producto~15_combout\ : std_logic;
SIGNAL \ALT_INV_en~input_o\ : std_logic;
SIGNAL \ALT_INV_Mult0~23\ : std_logic;
SIGNAL \ALT_INV_Mult0~22\ : std_logic;
SIGNAL \ALT_INV_Mult0~21\ : std_logic;
SIGNAL \ALT_INV_Mult0~20\ : std_logic;
SIGNAL \ALT_INV_Mult0~19\ : std_logic;
SIGNAL \ALT_INV_Mult0~18\ : std_logic;
SIGNAL \ALT_INV_Mult0~17\ : std_logic;
SIGNAL \ALT_INV_Mult0~16\ : std_logic;
SIGNAL \ALT_INV_Mult0~15\ : std_logic;
SIGNAL \ALT_INV_Mult0~14\ : std_logic;
SIGNAL \ALT_INV_Mult0~13\ : std_logic;
SIGNAL \ALT_INV_Mult0~12\ : std_logic;
SIGNAL \ALT_INV_Mult0~11\ : std_logic;
SIGNAL \ALT_INV_Mult0~10\ : std_logic;
SIGNAL \ALT_INV_Mult0~9\ : std_logic;
SIGNAL \ALT_INV_Mult0~8_resulta\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_en <= en;
final <= ww_final;
producto <= ww_producto;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0~8_AX_bus\ <= (\A[7]~input_o\ & \A[6]~input_o\ & \A[5]~input_o\ & \A[4]~input_o\ & \A[3]~input_o\ & \A[2]~input_o\ & \A[1]~input_o\ & \A[0]~input_o\);

\Mult0~8_AY_bus\ <= (\B[7]~input_o\ & \B[6]~input_o\ & \B[5]~input_o\ & \B[4]~input_o\ & \B[3]~input_o\ & \B[2]~input_o\ & \B[1]~input_o\ & \B[0]~input_o\);

\Mult0~8_resulta\ <= \Mult0~8_RESULTA_bus\(0);
\Mult0~9\ <= \Mult0~8_RESULTA_bus\(1);
\Mult0~10\ <= \Mult0~8_RESULTA_bus\(2);
\Mult0~11\ <= \Mult0~8_RESULTA_bus\(3);
\Mult0~12\ <= \Mult0~8_RESULTA_bus\(4);
\Mult0~13\ <= \Mult0~8_RESULTA_bus\(5);
\Mult0~14\ <= \Mult0~8_RESULTA_bus\(6);
\Mult0~15\ <= \Mult0~8_RESULTA_bus\(7);
\Mult0~16\ <= \Mult0~8_RESULTA_bus\(8);
\Mult0~17\ <= \Mult0~8_RESULTA_bus\(9);
\Mult0~18\ <= \Mult0~8_RESULTA_bus\(10);
\Mult0~19\ <= \Mult0~8_RESULTA_bus\(11);
\Mult0~20\ <= \Mult0~8_RESULTA_bus\(12);
\Mult0~21\ <= \Mult0~8_RESULTA_bus\(13);
\Mult0~22\ <= \Mult0~8_RESULTA_bus\(14);
\Mult0~23\ <= \Mult0~8_RESULTA_bus\(15);
\Mult0~24\ <= \Mult0~8_RESULTA_bus\(16);
\Mult0~25\ <= \Mult0~8_RESULTA_bus\(17);
\Mult0~26\ <= \Mult0~8_RESULTA_bus\(18);
\Mult0~27\ <= \Mult0~8_RESULTA_bus\(19);
\Mult0~28\ <= \Mult0~8_RESULTA_bus\(20);
\Mult0~29\ <= \Mult0~8_RESULTA_bus\(21);
\Mult0~30\ <= \Mult0~8_RESULTA_bus\(22);
\Mult0~31\ <= \Mult0~8_RESULTA_bus\(23);
\Mult0~32\ <= \Mult0~8_RESULTA_bus\(24);
\Mult0~33\ <= \Mult0~8_RESULTA_bus\(25);
\Mult0~34\ <= \Mult0~8_RESULTA_bus\(26);
\Mult0~35\ <= \Mult0~8_RESULTA_bus\(27);
\Mult0~36\ <= \Mult0~8_RESULTA_bus\(28);
\Mult0~37\ <= \Mult0~8_RESULTA_bus\(29);
\Mult0~38\ <= \Mult0~8_RESULTA_bus\(30);
\Mult0~39\ <= \Mult0~8_RESULTA_bus\(31);
\Mult0~40\ <= \Mult0~8_RESULTA_bus\(32);
\Mult0~41\ <= \Mult0~8_RESULTA_bus\(33);
\Mult0~42\ <= \Mult0~8_RESULTA_bus\(34);
\Mult0~43\ <= \Mult0~8_RESULTA_bus\(35);
\Mult0~44\ <= \Mult0~8_RESULTA_bus\(36);
\Mult0~45\ <= \Mult0~8_RESULTA_bus\(37);
\Mult0~46\ <= \Mult0~8_RESULTA_bus\(38);
\Mult0~47\ <= \Mult0~8_RESULTA_bus\(39);
\Mult0~48\ <= \Mult0~8_RESULTA_bus\(40);
\Mult0~49\ <= \Mult0~8_RESULTA_bus\(41);
\Mult0~50\ <= \Mult0~8_RESULTA_bus\(42);
\Mult0~51\ <= \Mult0~8_RESULTA_bus\(43);
\Mult0~52\ <= \Mult0~8_RESULTA_bus\(44);
\Mult0~53\ <= \Mult0~8_RESULTA_bus\(45);
\Mult0~54\ <= \Mult0~8_RESULTA_bus\(46);
\Mult0~55\ <= \Mult0~8_RESULTA_bus\(47);
\Mult0~56\ <= \Mult0~8_RESULTA_bus\(48);
\Mult0~57\ <= \Mult0~8_RESULTA_bus\(49);
\Mult0~58\ <= \Mult0~8_RESULTA_bus\(50);
\Mult0~59\ <= \Mult0~8_RESULTA_bus\(51);
\Mult0~60\ <= \Mult0~8_RESULTA_bus\(52);
\Mult0~61\ <= \Mult0~8_RESULTA_bus\(53);
\Mult0~62\ <= \Mult0~8_RESULTA_bus\(54);
\Mult0~63\ <= \Mult0~8_RESULTA_bus\(55);
\Mult0~64\ <= \Mult0~8_RESULTA_bus\(56);
\Mult0~65\ <= \Mult0~8_RESULTA_bus\(57);
\Mult0~66\ <= \Mult0~8_RESULTA_bus\(58);
\Mult0~67\ <= \Mult0~8_RESULTA_bus\(59);
\Mult0~68\ <= \Mult0~8_RESULTA_bus\(60);
\Mult0~69\ <= \Mult0~8_RESULTA_bus\(61);
\Mult0~70\ <= \Mult0~8_RESULTA_bus\(62);
\Mult0~71\ <= \Mult0~8_RESULTA_bus\(63);
\ALT_INV_en~input_o\ <= NOT \en~input_o\;
\ALT_INV_Mult0~23\ <= NOT \Mult0~23\;
\ALT_INV_Mult0~22\ <= NOT \Mult0~22\;
\ALT_INV_Mult0~21\ <= NOT \Mult0~21\;
\ALT_INV_Mult0~20\ <= NOT \Mult0~20\;
\ALT_INV_Mult0~19\ <= NOT \Mult0~19\;
\ALT_INV_Mult0~18\ <= NOT \Mult0~18\;
\ALT_INV_Mult0~17\ <= NOT \Mult0~17\;
\ALT_INV_Mult0~16\ <= NOT \Mult0~16\;
\ALT_INV_Mult0~15\ <= NOT \Mult0~15\;
\ALT_INV_Mult0~14\ <= NOT \Mult0~14\;
\ALT_INV_Mult0~13\ <= NOT \Mult0~13\;
\ALT_INV_Mult0~12\ <= NOT \Mult0~12\;
\ALT_INV_Mult0~11\ <= NOT \Mult0~11\;
\ALT_INV_Mult0~10\ <= NOT \Mult0~10\;
\ALT_INV_Mult0~9\ <= NOT \Mult0~9\;
\ALT_INV_Mult0~8_resulta\ <= NOT \Mult0~8_resulta\;

-- Location: IOOBUF_X72_Y0_N2
\final~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \en~input_o\,
	devoe => ww_devoe,
	o => ww_final);

-- Location: IOOBUF_X89_Y35_N62
\producto[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \producto~0_combout\,
	devoe => ww_devoe,
	o => ww_producto(0));

-- Location: IOOBUF_X89_Y6_N56
\producto[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \producto~1_combout\,
	devoe => ww_devoe,
	o => ww_producto(1));

-- Location: IOOBUF_X89_Y8_N5
\producto[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \producto~2_combout\,
	devoe => ww_devoe,
	o => ww_producto(2));

-- Location: IOOBUF_X89_Y6_N5
\producto[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \producto~3_combout\,
	devoe => ww_devoe,
	o => ww_producto(3));

-- Location: IOOBUF_X89_Y4_N45
\producto[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \producto~4_combout\,
	devoe => ww_devoe,
	o => ww_producto(4));

-- Location: IOOBUF_X89_Y38_N39
\producto[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \producto~5_combout\,
	devoe => ww_devoe,
	o => ww_producto(5));

-- Location: IOOBUF_X89_Y36_N5
\producto[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \producto~6_combout\,
	devoe => ww_devoe,
	o => ww_producto(6));

-- Location: IOOBUF_X89_Y8_N22
\producto[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \producto~7_combout\,
	devoe => ww_devoe,
	o => ww_producto(7));

-- Location: IOOBUF_X89_Y8_N56
\producto[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \producto~8_combout\,
	devoe => ww_devoe,
	o => ww_producto(8));

-- Location: IOOBUF_X89_Y36_N56
\producto[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \producto~9_combout\,
	devoe => ww_devoe,
	o => ww_producto(9));

-- Location: IOOBUF_X70_Y0_N36
\producto[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \producto~10_combout\,
	devoe => ww_devoe,
	o => ww_producto(10));

-- Location: IOOBUF_X89_Y9_N5
\producto[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \producto~11_combout\,
	devoe => ww_devoe,
	o => ww_producto(11));

-- Location: IOOBUF_X89_Y8_N39
\producto[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \producto~12_combout\,
	devoe => ww_devoe,
	o => ww_producto(12));

-- Location: IOOBUF_X89_Y35_N45
\producto[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \producto~13_combout\,
	devoe => ww_devoe,
	o => ww_producto(13));

-- Location: IOOBUF_X89_Y36_N22
\producto[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \producto~14_combout\,
	devoe => ww_devoe,
	o => ww_producto(14));

-- Location: IOOBUF_X89_Y6_N22
\producto[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \producto~15_combout\,
	devoe => ww_devoe,
	o => ww_producto(15));

-- Location: IOIBUF_X72_Y0_N18
\en~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: IOIBUF_X89_Y9_N55
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X89_Y4_N61
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X70_Y0_N52
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X89_Y35_N78
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X89_Y9_N21
\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X68_Y0_N1
\A[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X89_Y6_N38
\A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X89_Y4_N78
\A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X89_Y9_N38
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X72_Y0_N52
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X89_Y4_N95
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X89_Y35_N95
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X72_Y0_N35
\B[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X68_Y0_N18
\B[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X70_Y0_N1
\B[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X70_Y0_N18
\B[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: DSP_X86_Y8_N0
\Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 8,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m9x9",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Mult0~8_AX_bus\,
	ay => \Mult0~8_AY_bus\,
	resulta => \Mult0~8_RESULTA_bus\);

-- Location: MLABCELL_X87_Y8_N30
\producto~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \producto~0_combout\ = ( \en~input_o\ & ( \Mult0~8_resulta\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult0~8_resulta\,
	datae => \ALT_INV_en~input_o\,
	combout => \producto~0_combout\);

-- Location: MLABCELL_X87_Y8_N39
\producto~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \producto~1_combout\ = ( \en~input_o\ & ( \Mult0~9\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~9\,
	datae => \ALT_INV_en~input_o\,
	combout => \producto~1_combout\);

-- Location: MLABCELL_X87_Y8_N45
\producto~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \producto~2_combout\ = ( \en~input_o\ & ( \Mult0~10\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_en~input_o\,
	dataf => \ALT_INV_Mult0~10\,
	combout => \producto~2_combout\);

-- Location: MLABCELL_X87_Y8_N48
\producto~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \producto~3_combout\ = (\en~input_o\ & \Mult0~11\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_en~input_o\,
	datad => \ALT_INV_Mult0~11\,
	combout => \producto~3_combout\);

-- Location: MLABCELL_X87_Y8_N51
\producto~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \producto~4_combout\ = ( \Mult0~12\ & ( \en~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_en~input_o\,
	dataf => \ALT_INV_Mult0~12\,
	combout => \producto~4_combout\);

-- Location: MLABCELL_X87_Y8_N54
\producto~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \producto~5_combout\ = ( \Mult0~13\ & ( \en~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_en~input_o\,
	dataf => \ALT_INV_Mult0~13\,
	combout => \producto~5_combout\);

-- Location: MLABCELL_X87_Y8_N57
\producto~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \producto~6_combout\ = (\en~input_o\ & \Mult0~14\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_en~input_o\,
	datac => \ALT_INV_Mult0~14\,
	combout => \producto~6_combout\);

-- Location: MLABCELL_X87_Y8_N0
\producto~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \producto~7_combout\ = ( \Mult0~15\ & ( \en~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_en~input_o\,
	dataf => \ALT_INV_Mult0~15\,
	combout => \producto~7_combout\);

-- Location: MLABCELL_X87_Y8_N3
\producto~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \producto~8_combout\ = (\en~input_o\ & \Mult0~16\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_en~input_o\,
	datac => \ALT_INV_Mult0~16\,
	combout => \producto~8_combout\);

-- Location: MLABCELL_X87_Y8_N9
\producto~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \producto~9_combout\ = ( \Mult0~17\ & ( \en~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_en~input_o\,
	dataf => \ALT_INV_Mult0~17\,
	combout => \producto~9_combout\);

-- Location: MLABCELL_X87_Y8_N12
\producto~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \producto~10_combout\ = ( \en~input_o\ & ( \Mult0~18\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult0~18\,
	datae => \ALT_INV_en~input_o\,
	combout => \producto~10_combout\);

-- Location: MLABCELL_X87_Y8_N18
\producto~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \producto~11_combout\ = (\en~input_o\ & \Mult0~19\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_en~input_o\,
	datac => \ALT_INV_Mult0~19\,
	combout => \producto~11_combout\);

-- Location: MLABCELL_X87_Y8_N21
\producto~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \producto~12_combout\ = ( \Mult0~20\ & ( \en~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_en~input_o\,
	dataf => \ALT_INV_Mult0~20\,
	combout => \producto~12_combout\);

-- Location: MLABCELL_X87_Y8_N24
\producto~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \producto~13_combout\ = ( \Mult0~21\ & ( \en~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_en~input_o\,
	dataf => \ALT_INV_Mult0~21\,
	combout => \producto~13_combout\);

-- Location: MLABCELL_X87_Y8_N27
\producto~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \producto~14_combout\ = ( \Mult0~22\ & ( \en~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_en~input_o\,
	dataf => \ALT_INV_Mult0~22\,
	combout => \producto~14_combout\);

-- Location: MLABCELL_X87_Y8_N6
\producto~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \producto~15_combout\ = ( \Mult0~23\ & ( \en~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_en~input_o\,
	dataf => \ALT_INV_Mult0~23\,
	combout => \producto~15_combout\);

-- Location: MLABCELL_X15_Y33_N0
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



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

-- DATE "11/18/2024 14:44:28"

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

ENTITY 	divisor8Bits IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	cociente : OUT std_logic_vector(7 DOWNTO 0);
	residuo : OUT std_logic_vector(7 DOWNTO 0)
	);
END divisor8Bits;

-- Design Ports Information
-- cociente[0]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cociente[1]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cociente[2]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cociente[3]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cociente[4]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cociente[5]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cociente[6]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cociente[7]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- residuo[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- residuo[1]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- residuo[2]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- residuo[3]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- residuo[4]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- residuo[5]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- residuo[6]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- residuo[7]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF divisor8Bits IS
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
SIGNAL ww_cociente : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_residuo : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[0]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[9]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[8]~9_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~13_sumout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~22_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~17_sumout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~26_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~11_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~15_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[24]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~21_sumout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~30_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~26\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[45]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[36]~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[35]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[34]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~19_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~21_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~25_sumout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~34_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~30\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~26\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[45]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[44]~13_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[43]~17_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[42]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[41]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[40]~23_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~29_sumout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~38_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~34_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~30_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~26_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~22_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~18_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~14_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~10_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~1_sumout\ : std_logic;
SIGNAL \temp_cociente~0_combout\ : std_logic;
SIGNAL \temp_cociente~1_combout\ : std_logic;
SIGNAL \temp_cociente~2_combout\ : std_logic;
SIGNAL \temp_cociente~3_combout\ : std_logic;
SIGNAL \temp_cociente~4_combout\ : std_logic;
SIGNAL \temp_cociente~5_combout\ : std_logic;
SIGNAL \temp_cociente~6_combout\ : std_logic;
SIGNAL \temp_cociente~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~38_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_0_result_int[0]~2\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_0_result_int[0]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_0_result_int[1]~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_0_result_int[0]~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_1_result_int[0]~6\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_1_result_int[0]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_1_result_int[1]~10\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_1_result_int[1]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_1_result_int[1]~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[9]~17_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[0]~18_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_1_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~6\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~10\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~14\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[9]~19_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[8]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~22_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~6\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~10\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~14\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~18\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[17]~11_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~26_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~6\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~18\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~22\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~21_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[24]~3_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~30_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~6\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~10\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~14\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~18\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~22\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~26\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[36]~22_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~25_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[35]~13_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[34]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[33]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~34_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~6\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~10\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~14\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~18\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~22\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~26\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~29_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[45]~15_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~30\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[45]~23_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[44]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~25_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[43]~9_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[42]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[41]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[40]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~6\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~10\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~14\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~18\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~22\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~26\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~30\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~34\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~1_sumout\ : std_logic;
SIGNAL \temp_residuo~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~9_sumout\ : std_logic;
SIGNAL \temp_residuo~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~13_sumout\ : std_logic;
SIGNAL \temp_residuo~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~17_sumout\ : std_logic;
SIGNAL \temp_residuo~3_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~21_sumout\ : std_logic;
SIGNAL \temp_residuo~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~25_sumout\ : std_logic;
SIGNAL \temp_residuo~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~29_sumout\ : std_logic;
SIGNAL \temp_residuo~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~33_sumout\ : std_logic;
SIGNAL \temp_residuo~7_combout\ : std_logic;
SIGNAL \temp_residuo~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|selnose\ : std_logic_vector(71 DOWNTO 0);
SIGNAL \Mod0|auto_generated|divider|divider|selnose\ : std_logic_vector(71 DOWNTO 0);
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[1]~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[0]~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[0]~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[1]~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[1]~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[2]~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[1]~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[0]~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[2]~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[1]~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[1]~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[40]~23_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[41]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[32]~21_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[42]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[33]~19_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[24]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[43]~17_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[34]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~15_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[44]~13_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[35]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[26]~11_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[8]~9_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[36]~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[9]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[0]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[9]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_selnose\ : std_logic_vector(54 DOWNTO 0);
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_selnose\ : std_logic_vector(54 DOWNTO 0);
SIGNAL \ALT_INV_temp_residuo~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[45]~23_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[36]~22_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[27]~21_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[18]~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[9]~19_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[0]~18_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[9]~17_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[27]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[45]~15_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[44]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[35]~13_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[26]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[17]~11_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[8]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[43]~9_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[34]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[25]~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[16]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[42]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[33]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~3_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[41]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[40]~0_combout\ : std_logic;
SIGNAL \ALT_INV_temp_cociente~7_combout\ : std_logic;
SIGNAL \ALT_INV_temp_cociente~6_combout\ : std_logic;
SIGNAL \ALT_INV_temp_cociente~5_combout\ : std_logic;
SIGNAL \ALT_INV_temp_cociente~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_temp_cociente~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_temp_cociente~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_temp_cociente~1_combout\ : std_logic;
SIGNAL \ALT_INV_temp_cociente~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
cociente <= ww_cociente;
residuo <= ww_residuo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Mod0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_4~1_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~9_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~17_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~13_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~5_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~1_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~9_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~13_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~5_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~1_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~9_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~9_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~5_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~1_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~5_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[1]~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_4~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_7~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_8~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_7~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_4~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_7~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[0]~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_4~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_7~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[0]~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[1]~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_4~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_7~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[0]~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[1]~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[2]~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_4~5_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~5_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~5_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_7~5_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[1]~5_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_0_result_int[1]~5_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[0]~1_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_0_result_int[0]~1_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[2]~13_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~13_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[1]~9_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_1_result_int[1]~9_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~21_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_4~17_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~29_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~25_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~33_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~29_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~25_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~21_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~17_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_4~13_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[0]~5_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_1_result_int[0]~5_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[1]~9_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~9_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~25_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~21_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~17_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~13_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[0]~5_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~5_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_4~9_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~21_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~17_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~13_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_4~5_sumout\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[40]~23_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[40]~23_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[41]~22_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[41]~22_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[32]~21_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[32]~21_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[42]~20_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[42]~20_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[33]~19_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[33]~19_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[24]~18_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[24]~18_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[43]~17_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[43]~17_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[34]~16_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[34]~16_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~15_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[25]~15_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~14_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[16]~14_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[44]~13_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[44]~13_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[35]~12_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[35]~12_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[26]~11_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[26]~11_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~10_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[17]~10_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[8]~9_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[8]~9_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~8_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[45]~8_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[36]~7_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[36]~7_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~6_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[27]~6_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~5_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[18]~5_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[9]~4_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[9]~4_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[0]~3_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[0]~3_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[9]~2_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[9]~2_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~1_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[27]~1_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~0_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[45]~0_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_selnose\(54) <= NOT \Div0|auto_generated|divider|divider|selnose\(54);
\Mod0|auto_generated|divider|divider|ALT_INV_selnose\(0) <= NOT \Mod0|auto_generated|divider|divider|selnose\(0);
\Mod0|auto_generated|divider|divider|ALT_INV_selnose\(18) <= NOT \Mod0|auto_generated|divider|divider|selnose\(18);
\Mod0|auto_generated|divider|divider|ALT_INV_selnose\(36) <= NOT \Mod0|auto_generated|divider|divider|selnose\(36);
\Mod0|auto_generated|divider|divider|ALT_INV_selnose\(9) <= NOT \Mod0|auto_generated|divider|divider|selnose\(9);
\ALT_INV_temp_residuo~7_combout\ <= NOT \temp_residuo~7_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[45]~23_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[45]~23_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[36]~22_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[36]~22_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[27]~21_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[27]~21_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[18]~20_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[18]~20_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[9]~19_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[9]~19_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[0]~18_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[0]~18_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[9]~17_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[9]~17_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[27]~16_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[27]~16_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[45]~15_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[45]~15_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[44]~14_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[44]~14_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[35]~13_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[35]~13_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[26]~12_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[26]~12_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[17]~11_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[17]~11_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[8]~10_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[8]~10_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[43]~9_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[43]~9_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[34]~8_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[34]~8_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[25]~7_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[25]~7_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[16]~6_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[42]~5_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[42]~5_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[33]~4_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[33]~4_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~3_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[24]~3_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[41]~2_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[41]~2_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~1_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[32]~1_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[40]~0_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[40]~0_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_selnose\(54) <= NOT \Mod0|auto_generated|divider|divider|selnose\(54);
\ALT_INV_temp_cociente~7_combout\ <= NOT \temp_cociente~7_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_selnose\(0) <= NOT \Div0|auto_generated|divider|divider|selnose\(0);
\ALT_INV_temp_cociente~6_combout\ <= NOT \temp_cociente~6_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_selnose\(9) <= NOT \Div0|auto_generated|divider|divider|selnose\(9);
\ALT_INV_temp_cociente~5_combout\ <= NOT \temp_cociente~5_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_selnose\(18) <= NOT \Div0|auto_generated|divider|divider|selnose\(18);
\ALT_INV_temp_cociente~4_combout\ <= NOT \temp_cociente~4_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_temp_cociente~3_combout\ <= NOT \temp_cociente~3_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_selnose\(36) <= NOT \Div0|auto_generated|divider|divider|selnose\(36);
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_temp_cociente~2_combout\ <= NOT \temp_cociente~2_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_temp_cociente~1_combout\ <= NOT \temp_cociente~1_combout\;
\ALT_INV_temp_cociente~0_combout\ <= NOT \temp_cociente~0_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_7~29_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~25_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_7~25_sumout\;

-- Location: IOOBUF_X72_Y0_N2
\cociente[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_temp_cociente~0_combout\,
	devoe => ww_devoe,
	o => ww_cociente(0));

-- Location: IOOBUF_X68_Y0_N36
\cociente[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_temp_cociente~1_combout\,
	devoe => ww_devoe,
	o => ww_cociente(1));

-- Location: IOOBUF_X64_Y0_N19
\cociente[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_temp_cociente~2_combout\,
	devoe => ww_devoe,
	o => ww_cociente(2));

-- Location: IOOBUF_X62_Y0_N36
\cociente[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_temp_cociente~3_combout\,
	devoe => ww_devoe,
	o => ww_cociente(3));

-- Location: IOOBUF_X62_Y0_N53
\cociente[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_temp_cociente~4_combout\,
	devoe => ww_devoe,
	o => ww_cociente(4));

-- Location: IOOBUF_X56_Y0_N2
\cociente[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_temp_cociente~5_combout\,
	devoe => ww_devoe,
	o => ww_cociente(5));

-- Location: IOOBUF_X60_Y0_N36
\cociente[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_temp_cociente~6_combout\,
	devoe => ww_devoe,
	o => ww_cociente(6));

-- Location: IOOBUF_X62_Y0_N19
\cociente[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_temp_cociente~7_combout\,
	devoe => ww_devoe,
	o => ww_cociente(7));

-- Location: IOOBUF_X66_Y0_N42
\residuo[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_residuo~0_combout\,
	devoe => ww_devoe,
	o => ww_residuo(0));

-- Location: IOOBUF_X58_Y0_N59
\residuo[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_residuo~1_combout\,
	devoe => ww_devoe,
	o => ww_residuo(1));

-- Location: IOOBUF_X58_Y0_N76
\residuo[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_residuo~2_combout\,
	devoe => ww_devoe,
	o => ww_residuo(2));

-- Location: IOOBUF_X58_Y0_N93
\residuo[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_residuo~3_combout\,
	devoe => ww_devoe,
	o => ww_residuo(3));

-- Location: IOOBUF_X64_Y0_N36
\residuo[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_residuo~4_combout\,
	devoe => ww_devoe,
	o => ww_residuo(4));

-- Location: IOOBUF_X66_Y0_N93
\residuo[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_residuo~5_combout\,
	devoe => ww_devoe,
	o => ww_residuo(5));

-- Location: IOOBUF_X72_Y0_N53
\residuo[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_residuo~6_combout\,
	devoe => ww_devoe,
	o => ww_residuo(6));

-- Location: IOOBUF_X62_Y0_N2
\residuo[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_residuo~8_combout\,
	devoe => ww_devoe,
	o => ww_residuo(7));

-- Location: IOIBUF_X58_Y0_N41
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X64_Y0_N52
\B[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X70_Y0_N1
\B[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X70_Y0_N52
\B[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X68_Y0_N1
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
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LABCELL_X71_Y3_N30
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\B[3]~input_o\ & ( (!\B[7]~input_o\ & (!\B[5]~input_o\ & (!\B[6]~input_o\ & !\B[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X66_Y0_N75
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X72_Y0_N35
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X67_Y4_N15
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & (\Equal0~0_combout\ & !\B[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X71_Y3_N51
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !\B[7]~input_o\ & ( !\B[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X71_Y3_N54
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( \Equal0~2_combout\ & ( !\B[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X71_Y4_N3
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!\B[4]~input_o\ & \Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: IOIBUF_X60_Y0_N18
\A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LABCELL_X68_Y4_N30
\Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\ = SUM(( !\A[7]~input_o\ $ (!\B[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~6\ = CARRY(( !\A[7]~input_o\ $ (!\B[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~7\ = SHARE((!\B[0]~input_o\) # (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	cin => GND,
	sharein => GND,
	sumout => \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~6\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~7\);

-- Location: LABCELL_X68_Y4_N33
\Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\ = SUM(( VCC ) + ( \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~7\ ) + ( \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~6\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~7\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\);

-- Location: LABCELL_X67_Y4_N42
\Div0|auto_generated|divider|divider|selnose[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(0) = ( \B[2]~input_o\ ) # ( !\B[2]~input_o\ & ( ((!\Equal0~0_combout\) # (\Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\)) # (\B[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111011111110111111101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[1]~1_sumout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Div0|auto_generated|divider|divider|selnose\(0));

-- Location: IOIBUF_X64_Y0_N1
\A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LABCELL_X66_Y4_N0
\Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\ = SUM(( !\A[6]~input_o\ $ (!\B[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~10\ = CARRY(( !\A[6]~input_o\ $ (!\B[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~11\ = SHARE((!\B[0]~input_o\) # (\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	cin => GND,
	sharein => GND,
	sumout => \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~10\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~11\);

-- Location: LABCELL_X66_Y4_N3
\Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\ = SUM(( !\B[1]~input_o\ $ (((!\Div0|auto_generated|divider|divider|selnose\(0) & (\Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|selnose\(0) & ((\A[7]~input_o\))))) ) + ( \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~11\ ) + ( \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~10\ ))
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~6\ = CARRY(( !\B[1]~input_o\ $ (((!\Div0|auto_generated|divider|divider|selnose\(0) & (\Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|selnose\(0) & ((\A[7]~input_o\))))) ) + ( \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~11\ ) + ( \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~10\ ))
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~7\ = SHARE((!\B[1]~input_o\ & ((!\Div0|auto_generated|divider|divider|selnose\(0) & (\Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|selnose\(0) & ((\A[7]~input_o\))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000010101000000000000000001010011010010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_selnose\(0),
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[0]~5_sumout\,
	datad => \ALT_INV_A[7]~input_o\,
	cin => \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~10\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~11\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~6\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~7\);

-- Location: LABCELL_X67_Y4_N24
\Div0|auto_generated|divider|divider|StageOut[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[0]~3_combout\ = ( \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\ & ( \Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\ & ( \A[7]~input_o\ ) ) ) # ( 
-- !\Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\ & ( \Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\ & ( \A[7]~input_o\ ) ) ) # ( \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\ & ( 
-- !\Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\ & ( ((!\B[1]~input_o\ & (!\B[2]~input_o\ & \Equal0~0_combout\))) # (\A[7]~input_o\) ) ) ) # ( !\Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\ & ( 
-- !\Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\ & ( (\A[7]~input_o\ & (((!\Equal0~0_combout\) # (\B[2]~input_o\)) # (\B[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000111000011111000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[0]~5_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[1]~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[0]~3_combout\);

-- Location: LABCELL_X66_Y4_N6
\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ = SUM(( VCC ) + ( \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~7\ ) + ( \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~6\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~7\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\);

-- Location: LABCELL_X67_Y4_N54
\Div0|auto_generated|divider|divider|selnose[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(9) = ( \B[2]~input_o\ ) # ( !\B[2]~input_o\ & ( (!\Equal0~0_combout\) # (\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Div0|auto_generated|divider|divider|selnose\(9));

-- Location: IOIBUF_X70_Y0_N18
\A[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LABCELL_X66_Y4_N30
\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~13_sumout\ = SUM(( !\A[5]~input_o\ $ (!\B[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~14\ = CARRY(( !\A[5]~input_o\ $ (!\B[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~15\ = SHARE((!\B[0]~input_o\) # (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	cin => GND,
	sharein => GND,
	sumout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~14\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~15\);

-- Location: LABCELL_X66_Y4_N33
\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~9_sumout\ = SUM(( !\B[1]~input_o\ $ (((!\Div0|auto_generated|divider|divider|selnose\(9) & ((\Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|selnose\(9) & (\A[6]~input_o\)))) ) + ( \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~15\ ) + ( \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~14\ ))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~10\ = CARRY(( !\B[1]~input_o\ $ (((!\Div0|auto_generated|divider|divider|selnose\(9) & ((\Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|selnose\(9) & (\A[6]~input_o\)))) ) + ( \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~15\ ) + ( \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~14\ ))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~11\ = SHARE((!\B[1]~input_o\ & ((!\Div0|auto_generated|divider|divider|selnose\(9) & ((\Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|selnose\(9) & (\A[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000101010001000000000000000001010100101011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_selnose\(9),
	datad => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[0]~9_sumout\,
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~14\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~15\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~10\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~11\);

-- Location: LABCELL_X66_Y4_N36
\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5_sumout\ = SUM(( !\B[2]~input_o\ $ (((!\Div0|auto_generated|divider|divider|selnose\(9) & (\Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|selnose\(9) & ((\Div0|auto_generated|divider|divider|StageOut[0]~3_combout\))))) ) + ( \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~11\ ) + ( 
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~10\ ))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~6\ = CARRY(( !\B[2]~input_o\ $ (((!\Div0|auto_generated|divider|divider|selnose\(9) & (\Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|selnose\(9) & ((\Div0|auto_generated|divider|divider|StageOut[0]~3_combout\))))) ) + ( \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~11\ ) + ( 
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~10\ ))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~7\ = SHARE((!\B[2]~input_o\ & ((!\Div0|auto_generated|divider|divider|selnose\(9) & (\Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|selnose\(9) & ((\Div0|auto_generated|divider|divider|StageOut[0]~3_combout\))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000011000000000000000000001010010111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[1]~5_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[0]~3_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_selnose\(9),
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~10\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~11\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~6\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~7\);

-- Location: LABCELL_X66_Y4_N39
\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ = SUM(( VCC ) + ( \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~7\ ) + ( \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~6\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~7\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\);

-- Location: LABCELL_X67_Y4_N48
\Div0|auto_generated|divider|divider|selnose[18]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(18) = ( \Equal0~0_combout\ & ( \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ ) ) # ( !\Equal0~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Div0|auto_generated|divider|divider|selnose\(18));

-- Location: LABCELL_X66_Y4_N45
\Div0|auto_generated|divider|divider|StageOut[9]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[9]~2_combout\ = ( !\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & ( (!\B[2]~input_o\ & (\Equal0~0_combout\ & \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[1]~5_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[9]~2_combout\);

-- Location: LABCELL_X66_Y4_N42
\Div0|auto_generated|divider|divider|StageOut[9]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ = ( \Div0|auto_generated|divider|divider|StageOut[0]~3_combout\ & ( ((!\Equal0~0_combout\) # (\B[2]~input_o\)) # (\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111001111111111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[0]~3_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[9]~4_combout\);

-- Location: LABCELL_X66_Y4_N57
\Div0|auto_generated|divider|divider|StageOut[8]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[8]~9_combout\ = ( \Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & ( \A[6]~input_o\ ) ) # ( !\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & ( (!\B[2]~input_o\ 
-- & ((!\Equal0~0_combout\ & (\A[6]~input_o\)) # (\Equal0~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\))))) # (\B[2]~input_o\ & (((\A[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100101111000011010010111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[0]~9_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[8]~9_combout\);

-- Location: IOIBUF_X66_Y0_N58
\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LABCELL_X66_Y4_N12
\Div0|auto_generated|divider|divider|op_4~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~22_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_4~22_cout\);

-- Location: LABCELL_X66_Y4_N15
\Div0|auto_generated|divider|divider|op_4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~17_sumout\ = SUM(( !\B[0]~input_o\ ) + ( \A[4]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_4~22_cout\ ))
-- \Div0|auto_generated|divider|divider|op_4~18\ = CARRY(( !\B[0]~input_o\ ) + ( \A[4]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_4~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_4~22_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_4~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_4~18\);

-- Location: LABCELL_X66_Y4_N18
\Div0|auto_generated|divider|divider|op_4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~13_sumout\ = SUM(( !\B[1]~input_o\ ) + ( (!\Equal0~0_combout\ & (((\A[5]~input_o\)))) # (\Equal0~0_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~13_sumout\)) # (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & ((\A[5]~input_o\))))) ) + ( \Div0|auto_generated|divider|divider|op_4~18\ ))
-- \Div0|auto_generated|divider|divider|op_4~14\ = CARRY(( !\B[1]~input_o\ ) + ( (!\Equal0~0_combout\ & (((\A[5]~input_o\)))) # (\Equal0~0_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~13_sumout\)) # (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & ((\A[5]~input_o\))))) ) + ( \Div0|auto_generated|divider|divider|op_4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110100000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[0]~13_sumout\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_4~18\,
	sumout => \Div0|auto_generated|divider|divider|op_4~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_4~14\);

-- Location: LABCELL_X66_Y4_N21
\Div0|auto_generated|divider|divider|op_4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~9_sumout\ = SUM(( !\B[2]~input_o\ ) + ( (!\Equal0~0_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[8]~9_combout\)))) # (\Equal0~0_combout\ & 
-- ((!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & (\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~9_sumout\)) # (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[8]~9_combout\))))) ) + ( \Div0|auto_generated|divider|divider|op_4~14\ ))
-- \Div0|auto_generated|divider|divider|op_4~10\ = CARRY(( !\B[2]~input_o\ ) + ( (!\Equal0~0_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[8]~9_combout\)))) # (\Equal0~0_combout\ & 
-- ((!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & (\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~9_sumout\)) # (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[8]~9_combout\))))) ) + ( \Div0|auto_generated|divider|divider|op_4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110100000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[1]~9_sumout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[8]~9_combout\,
	cin => \Div0|auto_generated|divider|divider|op_4~14\,
	sumout => \Div0|auto_generated|divider|divider|op_4~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_4~10\);

-- Location: LABCELL_X66_Y4_N24
\Div0|auto_generated|divider|divider|op_4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~5_sumout\ = SUM(( !\B[3]~input_o\ ) + ( (!\Div0|auto_generated|divider|divider|selnose\(18) & (((\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5_sumout\)))) # 
-- (\Div0|auto_generated|divider|divider|selnose\(18) & (((\Div0|auto_generated|divider|divider|StageOut[9]~4_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[9]~2_combout\))) ) + ( \Div0|auto_generated|divider|divider|op_4~10\ ))
-- \Div0|auto_generated|divider|divider|op_4~6\ = CARRY(( !\B[3]~input_o\ ) + ( (!\Div0|auto_generated|divider|divider|selnose\(18) & (((\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5_sumout\)))) # 
-- (\Div0|auto_generated|divider|divider|selnose\(18) & (((\Div0|auto_generated|divider|divider|StageOut[9]~4_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[9]~2_combout\))) ) + ( \Div0|auto_generated|divider|divider|op_4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111001001010000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_selnose\(18),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[9]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[2]~5_sumout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[9]~4_combout\,
	cin => \Div0|auto_generated|divider|divider|op_4~10\,
	sumout => \Div0|auto_generated|divider|divider|op_4~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_4~6\);

-- Location: LABCELL_X66_Y4_N27
\Div0|auto_generated|divider|divider|op_4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_4~6\,
	sumout => \Div0|auto_generated|divider|divider|op_4~1_sumout\);

-- Location: LABCELL_X66_Y4_N48
\Div0|auto_generated|divider|divider|StageOut[18]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~5_combout\ = ( \Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ & ( (!\Equal0~0_combout\) # ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5_sumout\) # 
-- (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\)) ) ) # ( !\Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ & ( (!\Equal0~0_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[9]~2_combout\)))) # 
-- (\Equal0~0_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & (\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5_sumout\)) # (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[9]~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010111111000001001011111110111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[2]~5_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[9]~2_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[9]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~5_combout\);

-- Location: LABCELL_X66_Y4_N51
\Div0|auto_generated|divider|divider|StageOut[17]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~10_combout\ = ( \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~9_sumout\ & ( ((\Equal0~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|StageOut[8]~9_combout\) ) ) # ( !\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~9_sumout\ & ( (\Div0|auto_generated|divider|divider|StageOut[8]~9_combout\ & ((!\Equal0~0_combout\) # 
-- (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100001011000010110000101101001111010011110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[8]~9_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[1]~9_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~10_combout\);

-- Location: LABCELL_X66_Y4_N54
\Div0|auto_generated|divider|divider|StageOut[16]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~14_combout\ = ( \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & ( \A[5]~input_o\ ) ) # ( !\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & ( 
-- (!\Equal0~0_combout\ & ((\A[5]~input_o\))) # (\Equal0~0_combout\ & (\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~13_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[0]~13_sumout\,
	datad => \ALT_INV_A[5]~input_o\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~14_combout\);

-- Location: IOIBUF_X68_Y0_N52
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X68_Y3_N6
\Div0|auto_generated|divider|divider|op_5~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_5~26_cout\);

-- Location: LABCELL_X68_Y3_N9
\Div0|auto_generated|divider|divider|op_5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~21_sumout\ = SUM(( \A[3]~input_o\ ) + ( !\B[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_5~26_cout\ ))
-- \Div0|auto_generated|divider|divider|op_5~22\ = CARRY(( \A[3]~input_o\ ) + ( !\B[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_5~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_5~26_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_5~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~22\);

-- Location: LABCELL_X68_Y3_N12
\Div0|auto_generated|divider|divider|op_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~17_sumout\ = SUM(( (!\Equal0~4_combout\ & (((\A[4]~input_o\)))) # (\Equal0~4_combout\ & ((!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\Div0|auto_generated|divider|divider|op_4~17_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\A[4]~input_o\))))) ) + ( !\B[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_5~22\ ))
-- \Div0|auto_generated|divider|divider|op_5~18\ = CARRY(( (!\Equal0~4_combout\ & (((\A[4]~input_o\)))) # (\Equal0~4_combout\ & ((!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\Div0|auto_generated|divider|divider|op_4~17_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\A[4]~input_o\))))) ) + ( !\B[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~4_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\,
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_5~22\,
	sumout => \Div0|auto_generated|divider|divider|op_5~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~18\);

-- Location: LABCELL_X68_Y3_N15
\Div0|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( !\B[2]~input_o\ ) + ( (!\Equal0~4_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[16]~14_combout\)))) # (\Equal0~4_combout\ & ((!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|op_4~13_sumout\)) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Div0|auto_generated|divider|divider|StageOut[16]~14_combout\))))) ) + ( \Div0|auto_generated|divider|divider|op_5~18\ ))
-- \Div0|auto_generated|divider|divider|op_5~14\ = CARRY(( !\B[2]~input_o\ ) + ( (!\Equal0~4_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[16]~14_combout\)))) # (\Equal0~4_combout\ & ((!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|op_4~13_sumout\)) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Div0|auto_generated|divider|divider|StageOut[16]~14_combout\))))) ) + ( \Div0|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110100000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~4_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~14_combout\,
	cin => \Div0|auto_generated|divider|divider|op_5~18\,
	sumout => \Div0|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~14\);

-- Location: LABCELL_X68_Y3_N18
\Div0|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( (!\Equal0~4_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[17]~10_combout\)))) # (\Equal0~4_combout\ & ((!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- ((\Div0|auto_generated|divider|divider|op_4~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\Div0|auto_generated|divider|divider|StageOut[17]~10_combout\)))) ) + ( !\B[3]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_5~14\ 
-- ))
-- \Div0|auto_generated|divider|divider|op_5~10\ = CARRY(( (!\Equal0~4_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[17]~10_combout\)))) # (\Equal0~4_combout\ & ((!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- ((\Div0|auto_generated|divider|divider|op_4~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\Div0|auto_generated|divider|divider|StageOut[17]~10_combout\)))) ) + ( !\B[3]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_5~14\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~4_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\,
	dataf => \ALT_INV_B[3]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_5~14\,
	sumout => \Div0|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~10\);

-- Location: LABCELL_X68_Y3_N21
\Div0|auto_generated|divider|divider|op_5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~5_sumout\ = SUM(( (!\Equal0~4_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[18]~5_combout\)))) # (\Equal0~4_combout\ & ((!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- ((\Div0|auto_generated|divider|divider|op_4~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\Div0|auto_generated|divider|divider|StageOut[18]~5_combout\)))) ) + ( !\B[4]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_5~10\ 
-- ))
-- \Div0|auto_generated|divider|divider|op_5~6\ = CARRY(( (!\Equal0~4_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[18]~5_combout\)))) # (\Equal0~4_combout\ & ((!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- ((\Div0|auto_generated|divider|divider|op_4~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\Div0|auto_generated|divider|divider|StageOut[18]~5_combout\)))) ) + ( !\B[4]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_5~10\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~4_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~5_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\,
	dataf => \ALT_INV_B[4]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_5~10\,
	sumout => \Div0|auto_generated|divider|divider|op_5~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~6\);

-- Location: LABCELL_X68_Y4_N12
\Div0|auto_generated|divider|divider|StageOut[27]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~1_combout\ = ( \Div0|auto_generated|divider|divider|op_4~5_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & \Equal0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \ALT_INV_Equal0~4_combout\,
	datae => \Div0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~1_combout\);

-- Location: LABCELL_X68_Y3_N24
\Div0|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_5~6\,
	sumout => \Div0|auto_generated|divider|divider|op_5~1_sumout\);

-- Location: LABCELL_X71_Y3_N57
\Div0|auto_generated|divider|divider|selnose[36]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(36) = (!\Equal0~3_combout\) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101111111110101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datad => \ALT_INV_Equal0~3_combout\,
	combout => \Div0|auto_generated|divider|divider|selnose\(36));

-- Location: LABCELL_X68_Y4_N51
\Div0|auto_generated|divider|divider|StageOut[27]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~6_combout\ = ( \Equal0~4_combout\ & ( (\Div0|auto_generated|divider|divider|StageOut[18]~5_combout\ & \Div0|auto_generated|divider|divider|op_4~1_sumout\) ) ) # ( !\Equal0~4_combout\ & ( 
-- \Div0|auto_generated|divider|divider|StageOut[18]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000001010000010101010101010101010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~5_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datae => \ALT_INV_Equal0~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~6_combout\);

-- Location: LABCELL_X68_Y3_N57
\Div0|auto_generated|divider|divider|StageOut[26]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~11_combout\ = ( \Equal0~4_combout\ & ( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_4~9_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\Div0|auto_generated|divider|divider|StageOut[17]~10_combout\)) ) ) # ( !\Equal0~4_combout\ & ( \Div0|auto_generated|divider|divider|StageOut[17]~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~11_combout\);

-- Location: LABCELL_X68_Y4_N54
\Div0|auto_generated|divider|divider|StageOut[25]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~15_combout\ = ( \Div0|auto_generated|divider|divider|StageOut[16]~14_combout\ & ( ((!\Equal0~4_combout\) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|op_4~13_sumout\) ) ) # ( !\Div0|auto_generated|divider|divider|StageOut[16]~14_combout\ & ( (\Div0|auto_generated|divider|divider|op_4~13_sumout\ & (\Equal0~4_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_4~1_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000111100111111111100000011000000001111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\,
	datac => \ALT_INV_Equal0~4_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datae => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~15_combout\);

-- Location: LABCELL_X67_Y3_N0
\Div0|auto_generated|divider|divider|StageOut[24]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[24]~18_combout\ = ( \A[4]~input_o\ & ( \Equal0~4_combout\ & ( (\Div0|auto_generated|divider|divider|op_4~17_sumout\) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\) ) ) ) # ( !\A[4]~input_o\ & ( 
-- \Equal0~4_combout\ & ( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & \Div0|auto_generated|divider|divider|op_4~17_sumout\) ) ) ) # ( \A[4]~input_o\ & ( !\Equal0~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[24]~18_combout\);

-- Location: IOIBUF_X60_Y0_N1
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LABCELL_X68_Y3_N30
\Div0|auto_generated|divider|divider|op_6~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~30_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_6~30_cout\);

-- Location: LABCELL_X68_Y3_N33
\Div0|auto_generated|divider|divider|op_6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~25_sumout\ = SUM(( !\B[0]~input_o\ ) + ( \A[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_6~30_cout\ ))
-- \Div0|auto_generated|divider|divider|op_6~26\ = CARRY(( !\B[0]~input_o\ ) + ( \A[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_6~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_6~30_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_6~25_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~26\);

-- Location: LABCELL_X68_Y3_N36
\Div0|auto_generated|divider|divider|op_6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~21_sumout\ = SUM(( (!\Equal0~3_combout\ & (((\A[3]~input_o\)))) # (\Equal0~3_combout\ & ((!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\Div0|auto_generated|divider|divider|op_5~21_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\A[3]~input_o\))))) ) + ( !\B[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_6~26\ ))
-- \Div0|auto_generated|divider|divider|op_6~22\ = CARRY(( (!\Equal0~3_combout\ & (((\A[3]~input_o\)))) # (\Equal0~3_combout\ & ((!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\Div0|auto_generated|divider|divider|op_5~21_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\A[3]~input_o\))))) ) + ( !\B[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~3_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	datad => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_6~26\,
	sumout => \Div0|auto_generated|divider|divider|op_6~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~22\);

-- Location: LABCELL_X68_Y3_N39
\Div0|auto_generated|divider|divider|op_6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~17_sumout\ = SUM(( (!\Equal0~3_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[24]~18_combout\)))) # (\Equal0~3_combout\ & ((!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|op_5~17_sumout\)) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|StageOut[24]~18_combout\))))) ) + ( !\B[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_6~22\ 
-- ))
-- \Div0|auto_generated|divider|divider|op_6~18\ = CARRY(( (!\Equal0~3_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[24]~18_combout\)))) # (\Equal0~3_combout\ & ((!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|op_5~17_sumout\)) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|StageOut[24]~18_combout\))))) ) + ( !\B[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_6~22\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~3_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[24]~18_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_6~22\,
	sumout => \Div0|auto_generated|divider|divider|op_6~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~18\);

-- Location: LABCELL_X68_Y3_N42
\Div0|auto_generated|divider|divider|op_6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~13_sumout\ = SUM(( (!\Equal0~3_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[25]~15_combout\)))) # (\Equal0~3_combout\ & ((!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- ((\Div0|auto_generated|divider|divider|op_5~13_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\Div0|auto_generated|divider|divider|StageOut[25]~15_combout\)))) ) + ( !\B[3]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_6~18\ 
-- ))
-- \Div0|auto_generated|divider|divider|op_6~14\ = CARRY(( (!\Equal0~3_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[25]~15_combout\)))) # (\Equal0~3_combout\ & ((!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- ((\Div0|auto_generated|divider|divider|op_5~13_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\Div0|auto_generated|divider|divider|StageOut[25]~15_combout\)))) ) + ( !\B[3]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_6~18\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~3_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~15_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	dataf => \ALT_INV_B[3]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_6~18\,
	sumout => \Div0|auto_generated|divider|divider|op_6~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~14\);

-- Location: LABCELL_X68_Y3_N45
\Div0|auto_generated|divider|divider|op_6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~9_sumout\ = SUM(( !\B[4]~input_o\ ) + ( (!\Equal0~3_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[26]~11_combout\)))) # (\Equal0~3_combout\ & ((!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- ((\Div0|auto_generated|divider|divider|op_5~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\Div0|auto_generated|divider|divider|StageOut[26]~11_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_6~14\ ))
-- \Div0|auto_generated|divider|divider|op_6~10\ = CARRY(( !\B[4]~input_o\ ) + ( (!\Equal0~3_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[26]~11_combout\)))) # (\Equal0~3_combout\ & ((!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- ((\Div0|auto_generated|divider|divider|op_5~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\Div0|auto_generated|divider|divider|StageOut[26]~11_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101001011000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~3_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[26]~11_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_6~14\,
	sumout => \Div0|auto_generated|divider|divider|op_6~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~10\);

-- Location: LABCELL_X68_Y3_N48
\Div0|auto_generated|divider|divider|op_6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~5_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|selnose\(36) & (\Div0|auto_generated|divider|divider|op_5~5_sumout\)) # (\Div0|auto_generated|divider|divider|selnose\(36) & 
-- (((\Div0|auto_generated|divider|divider|StageOut[27]~6_combout\) # (\Div0|auto_generated|divider|divider|StageOut[27]~1_combout\)))) ) + ( !\B[5]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_6~10\ ))
-- \Div0|auto_generated|divider|divider|op_6~6\ = CARRY(( (!\Div0|auto_generated|divider|divider|selnose\(36) & (\Div0|auto_generated|divider|divider|op_5~5_sumout\)) # (\Div0|auto_generated|divider|divider|selnose\(36) & 
-- (((\Div0|auto_generated|divider|divider|StageOut[27]~6_combout\) # (\Div0|auto_generated|divider|divider|StageOut[27]~1_combout\)))) ) + ( !\B[5]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000101001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~1_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_selnose\(36),
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~6_combout\,
	dataf => \ALT_INV_B[5]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_6~10\,
	sumout => \Div0|auto_generated|divider|divider|op_6~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~6\);

-- Location: LABCELL_X68_Y3_N51
\Div0|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_6~6\,
	sumout => \Div0|auto_generated|divider|divider|op_6~1_sumout\);

-- Location: LABCELL_X70_Y3_N36
\Div0|auto_generated|divider|divider|StageOut[45]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[45]~0_combout\ = (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\Equal0~2_combout\ & \Div0|auto_generated|divider|divider|op_6~5_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \ALT_INV_Equal0~2_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[45]~0_combout\);

-- Location: LABCELL_X68_Y3_N0
\Div0|auto_generated|divider|divider|StageOut[36]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[36]~7_combout\ = ( \Div0|auto_generated|divider|divider|StageOut[27]~1_combout\ & ( (!\Equal0~3_combout\) # ((\Div0|auto_generated|divider|divider|op_5~5_sumout\) # 
-- (\Div0|auto_generated|divider|divider|op_5~1_sumout\)) ) ) # ( !\Div0|auto_generated|divider|divider|StageOut[27]~1_combout\ & ( (!\Equal0~3_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[27]~6_combout\)))) # (\Equal0~3_combout\ & 
-- ((!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\Div0|auto_generated|divider|divider|op_5~5_sumout\)) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|StageOut[27]~6_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010111111000001001011111110111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~3_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~6_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~1_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[36]~7_combout\);

-- Location: LABCELL_X68_Y3_N3
\Div0|auto_generated|divider|divider|StageOut[35]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[35]~12_combout\ = ( \Div0|auto_generated|divider|divider|op_5~9_sumout\ & ( ((\Equal0~3_combout\ & !\Div0|auto_generated|divider|divider|op_5~1_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|StageOut[26]~11_combout\) ) ) # ( !\Div0|auto_generated|divider|divider|op_5~9_sumout\ & ( (\Div0|auto_generated|divider|divider|StageOut[26]~11_combout\ & ((!\Equal0~3_combout\) # 
-- (\Div0|auto_generated|divider|divider|op_5~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100001011000010110000101101001111010011110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~3_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[26]~11_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[35]~12_combout\);

-- Location: LABCELL_X70_Y3_N48
\Div0|auto_generated|divider|divider|StageOut[34]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[34]~16_combout\ = (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((!\Equal0~3_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[25]~15_combout\))) # (\Equal0~3_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_5~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Div0|auto_generated|divider|divider|StageOut[25]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011011111000000101101111100000010110111110000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \ALT_INV_Equal0~3_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~15_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[34]~16_combout\);

-- Location: LABCELL_X68_Y3_N54
\Div0|auto_generated|divider|divider|StageOut[33]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~19_combout\ = ( \Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \Div0|auto_generated|divider|divider|StageOut[24]~18_combout\ ) ) # ( !\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( 
-- (!\Equal0~3_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[24]~18_combout\))) # (\Equal0~3_combout\ & (\Div0|auto_generated|divider|divider|op_5~17_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	datac => \ALT_INV_Equal0~3_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[24]~18_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~19_combout\);

-- Location: LABCELL_X70_Y3_N51
\Div0|auto_generated|divider|divider|StageOut[32]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~21_combout\ = ( \Div0|auto_generated|divider|divider|op_5~21_sumout\ & ( ((!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & \Equal0~3_combout\)) # (\A[3]~input_o\) ) ) # ( 
-- !\Div0|auto_generated|divider|divider|op_5~21_sumout\ & ( (\A[3]~input_o\ & ((!\Equal0~3_combout\) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \ALT_INV_Equal0~3_combout\,
	datac => \ALT_INV_A[3]~input_o\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~21_combout\);

-- Location: IOIBUF_X70_Y0_N35
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LABCELL_X70_Y3_N6
\Div0|auto_generated|divider|divider|op_7~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_7~34_cout\);

-- Location: LABCELL_X70_Y3_N9
\Div0|auto_generated|divider|divider|op_7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~29_sumout\ = SUM(( !\B[0]~input_o\ ) + ( \A[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_7~34_cout\ ))
-- \Div0|auto_generated|divider|divider|op_7~30\ = CARRY(( !\B[0]~input_o\ ) + ( \A[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_7~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_7~34_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_7~29_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_7~30\);

-- Location: LABCELL_X70_Y3_N12
\Div0|auto_generated|divider|divider|op_7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~25_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\Equal0~2_combout\ & ((\A[2]~input_o\))) # (\Equal0~2_combout\ & (\Div0|auto_generated|divider|divider|op_6~25_sumout\)))) # 
-- (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\A[2]~input_o\)))) ) + ( !\B[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_7~30\ ))
-- \Div0|auto_generated|divider|divider|op_7~26\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\Equal0~2_combout\ & ((\A[2]~input_o\))) # (\Equal0~2_combout\ & (\Div0|auto_generated|divider|divider|op_6~25_sumout\)))) # 
-- (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\A[2]~input_o\)))) ) + ( !\B[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \ALT_INV_Equal0~2_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_7~30\,
	sumout => \Div0|auto_generated|divider|divider|op_7~25_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_7~26\);

-- Location: LABCELL_X70_Y3_N15
\Div0|auto_generated|divider|divider|op_7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~21_sumout\ = SUM(( !\B[2]~input_o\ ) + ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\Equal0~2_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[32]~21_combout\))) # (\Equal0~2_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_6~21_sumout\)))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Div0|auto_generated|divider|divider|StageOut[32]~21_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_7~26\ ))
-- \Div0|auto_generated|divider|divider|op_7~22\ = CARRY(( !\B[2]~input_o\ ) + ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\Equal0~2_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[32]~21_combout\))) # (\Equal0~2_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_6~21_sumout\)))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Div0|auto_generated|divider|divider|StageOut[32]~21_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010010000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \ALT_INV_Equal0~2_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[32]~21_combout\,
	cin => \Div0|auto_generated|divider|divider|op_7~26\,
	sumout => \Div0|auto_generated|divider|divider|op_7~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_7~22\);

-- Location: LABCELL_X70_Y3_N18
\Div0|auto_generated|divider|divider|op_7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~17_sumout\ = SUM(( !\B[3]~input_o\ ) + ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\Equal0~2_combout\ & (\Div0|auto_generated|divider|divider|StageOut[33]~19_combout\)) # (\Equal0~2_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_6~17_sumout\))))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Div0|auto_generated|divider|divider|StageOut[33]~19_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_7~22\ ))
-- \Div0|auto_generated|divider|divider|op_7~18\ = CARRY(( !\B[3]~input_o\ ) + ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\Equal0~2_combout\ & (\Div0|auto_generated|divider|divider|StageOut[33]~19_combout\)) # (\Equal0~2_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_6~17_sumout\))))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Div0|auto_generated|divider|divider|StageOut[33]~19_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100101101000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \ALT_INV_Equal0~2_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[33]~19_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_7~22\,
	sumout => \Div0|auto_generated|divider|divider|op_7~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_7~18\);

-- Location: LABCELL_X70_Y3_N21
\Div0|auto_generated|divider|divider|op_7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\Equal0~2_combout\ & (\Div0|auto_generated|divider|divider|StageOut[34]~16_combout\)) # (\Equal0~2_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_6~13_sumout\))))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Div0|auto_generated|divider|divider|StageOut[34]~16_combout\)))) ) + ( !\B[4]~input_o\ ) + ( 
-- \Div0|auto_generated|divider|divider|op_7~18\ ))
-- \Div0|auto_generated|divider|divider|op_7~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\Equal0~2_combout\ & (\Div0|auto_generated|divider|divider|StageOut[34]~16_combout\)) # (\Equal0~2_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_6~13_sumout\))))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Div0|auto_generated|divider|divider|StageOut[34]~16_combout\)))) ) + ( !\B[4]~input_o\ ) + ( 
-- \Div0|auto_generated|divider|divider|op_7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000110100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \ALT_INV_Equal0~2_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[34]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	dataf => \ALT_INV_B[4]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_7~18\,
	sumout => \Div0|auto_generated|divider|divider|op_7~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_7~14\);

-- Location: LABCELL_X70_Y3_N24
\Div0|auto_generated|divider|divider|op_7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~9_sumout\ = SUM(( !\B[5]~input_o\ ) + ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\Equal0~2_combout\ & (\Div0|auto_generated|divider|divider|StageOut[35]~12_combout\)) # (\Equal0~2_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_6~9_sumout\))))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Div0|auto_generated|divider|divider|StageOut[35]~12_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_7~14\ ))
-- \Div0|auto_generated|divider|divider|op_7~10\ = CARRY(( !\B[5]~input_o\ ) + ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\Equal0~2_combout\ & (\Div0|auto_generated|divider|divider|StageOut[35]~12_combout\)) # (\Equal0~2_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_6~9_sumout\))))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Div0|auto_generated|divider|divider|StageOut[35]~12_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100101101000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \ALT_INV_Equal0~2_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[35]~12_combout\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_7~14\,
	sumout => \Div0|auto_generated|divider|divider|op_7~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_7~10\);

-- Location: LABCELL_X70_Y3_N27
\Div0|auto_generated|divider|divider|op_7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~5_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\Equal0~2_combout\ & (\Div0|auto_generated|divider|divider|StageOut[36]~7_combout\)) # (\Equal0~2_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_6~5_sumout\))))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Div0|auto_generated|divider|divider|StageOut[36]~7_combout\)))) ) + ( !\B[6]~input_o\ ) + ( 
-- \Div0|auto_generated|divider|divider|op_7~10\ ))
-- \Div0|auto_generated|divider|divider|op_7~6\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\Equal0~2_combout\ & (\Div0|auto_generated|divider|divider|StageOut[36]~7_combout\)) # (\Equal0~2_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_6~5_sumout\))))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Div0|auto_generated|divider|divider|StageOut[36]~7_combout\)))) ) + ( !\B[6]~input_o\ ) + ( 
-- \Div0|auto_generated|divider|divider|op_7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000110100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \ALT_INV_Equal0~2_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[36]~7_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	dataf => \ALT_INV_B[6]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_7~10\,
	sumout => \Div0|auto_generated|divider|divider|op_7~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_7~6\);

-- Location: LABCELL_X70_Y3_N30
\Div0|auto_generated|divider|divider|op_7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_7~6\,
	sumout => \Div0|auto_generated|divider|divider|op_7~1_sumout\);

-- Location: LABCELL_X71_Y3_N33
\Div0|auto_generated|divider|divider|selnose[54]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(54) = ( \Div0|auto_generated|divider|divider|op_7~1_sumout\ ) # ( !\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( \B[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|selnose\(54));

-- Location: LABCELL_X70_Y3_N39
\Div0|auto_generated|divider|divider|StageOut[45]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[45]~8_combout\ = ( \Div0|auto_generated|divider|divider|StageOut[36]~7_combout\ & ( (!\Equal0~2_combout\) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \ALT_INV_Equal0~2_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[36]~7_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[45]~8_combout\);

-- Location: LABCELL_X70_Y3_N42
\Div0|auto_generated|divider|divider|StageOut[44]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[44]~13_combout\ = ( \Div0|auto_generated|divider|divider|op_6~9_sumout\ & ( ((!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & \Equal0~2_combout\)) # 
-- (\Div0|auto_generated|divider|divider|StageOut[35]~12_combout\) ) ) # ( !\Div0|auto_generated|divider|divider|op_6~9_sumout\ & ( (\Div0|auto_generated|divider|divider|StageOut[35]~12_combout\ & ((!\Equal0~2_combout\) # 
-- (\Div0|auto_generated|divider|divider|op_6~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \ALT_INV_Equal0~2_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[35]~12_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[44]~13_combout\);

-- Location: LABCELL_X70_Y3_N57
\Div0|auto_generated|divider|divider|StageOut[43]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[43]~17_combout\ = ( \Div0|auto_generated|divider|divider|StageOut[34]~16_combout\ & ( ((!\Equal0~2_combout\) # (\Div0|auto_generated|divider|divider|op_6~13_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|op_6~1_sumout\) ) ) # ( !\Div0|auto_generated|divider|divider|StageOut[34]~16_combout\ & ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\Equal0~2_combout\ & 
-- \Div0|auto_generated|divider|divider|op_6~13_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001011011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \ALT_INV_Equal0~2_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[34]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[43]~17_combout\);

-- Location: LABCELL_X70_Y3_N45
\Div0|auto_generated|divider|divider|StageOut[42]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[42]~20_combout\ = ( \Div0|auto_generated|divider|divider|op_6~17_sumout\ & ( ((!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & \Equal0~2_combout\)) # 
-- (\Div0|auto_generated|divider|divider|StageOut[33]~19_combout\) ) ) # ( !\Div0|auto_generated|divider|divider|op_6~17_sumout\ & ( (\Div0|auto_generated|divider|divider|StageOut[33]~19_combout\ & ((!\Equal0~2_combout\) # 
-- (\Div0|auto_generated|divider|divider|op_6~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \ALT_INV_Equal0~2_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[33]~19_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[42]~20_combout\);

-- Location: LABCELL_X70_Y3_N54
\Div0|auto_generated|divider|divider|StageOut[41]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[41]~22_combout\ = ( \Div0|auto_generated|divider|divider|StageOut[32]~21_combout\ & ( ((!\Equal0~2_combout\) # (\Div0|auto_generated|divider|divider|op_6~21_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|op_6~1_sumout\) ) ) # ( !\Div0|auto_generated|divider|divider|StageOut[32]~21_combout\ & ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\Equal0~2_combout\ & 
-- \Div0|auto_generated|divider|divider|op_6~21_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001011011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \ALT_INV_Equal0~2_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[32]~21_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[41]~22_combout\);

-- Location: LABCELL_X70_Y3_N0
\Div0|auto_generated|divider|divider|StageOut[40]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[40]~23_combout\ = (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\Equal0~2_combout\ & (\A[2]~input_o\)) # (\Equal0~2_combout\ & ((\Div0|auto_generated|divider|divider|op_6~25_sumout\))))) # 
-- (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100101111000011010010111100001101001011110000110100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \ALT_INV_Equal0~2_combout\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[40]~23_combout\);

-- Location: IOIBUF_X72_Y0_N18
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LABCELL_X71_Y3_N0
\Div0|auto_generated|divider|divider|op_8~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~38_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_8~38_cout\);

-- Location: LABCELL_X71_Y3_N3
\Div0|auto_generated|divider|divider|op_8~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~34_cout\ = CARRY(( \A[0]~input_o\ ) + ( !\B[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_8~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_8~38_cout\,
	cout => \Div0|auto_generated|divider|divider|op_8~34_cout\);

-- Location: LABCELL_X71_Y3_N6
\Div0|auto_generated|divider|divider|op_8~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~30_cout\ = CARRY(( !\B[1]~input_o\ ) + ( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((!\B[7]~input_o\ & (\Div0|auto_generated|divider|divider|op_7~29_sumout\)) # (\B[7]~input_o\ & 
-- ((\A[1]~input_o\))))) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\A[1]~input_o\)))) ) + ( \Div0|auto_generated|divider|divider|op_8~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_8~34_cout\,
	cout => \Div0|auto_generated|divider|divider|op_8~30_cout\);

-- Location: LABCELL_X71_Y3_N9
\Div0|auto_generated|divider|divider|op_8~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~26_cout\ = CARRY(( !\B[2]~input_o\ ) + ( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((!\B[7]~input_o\ & (\Div0|auto_generated|divider|divider|op_7~25_sumout\)) # (\B[7]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[40]~23_combout\))))) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\Div0|auto_generated|divider|divider|StageOut[40]~23_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_8~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[40]~23_combout\,
	cin => \Div0|auto_generated|divider|divider|op_8~30_cout\,
	cout => \Div0|auto_generated|divider|divider|op_8~26_cout\);

-- Location: LABCELL_X71_Y3_N12
\Div0|auto_generated|divider|divider|op_8~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~22_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((!\B[7]~input_o\ & ((\Div0|auto_generated|divider|divider|op_7~21_sumout\))) # (\B[7]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[41]~22_combout\)))) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\Div0|auto_generated|divider|divider|StageOut[41]~22_combout\)))) ) + ( !\B[3]~input_o\ ) + ( 
-- \Div0|auto_generated|divider|divider|op_8~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[41]~22_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\,
	dataf => \ALT_INV_B[3]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_8~26_cout\,
	cout => \Div0|auto_generated|divider|divider|op_8~22_cout\);

-- Location: LABCELL_X71_Y3_N15
\Div0|auto_generated|divider|divider|op_8~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~18_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((!\B[7]~input_o\ & ((\Div0|auto_generated|divider|divider|op_7~17_sumout\))) # (\B[7]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[42]~20_combout\)))) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\Div0|auto_generated|divider|divider|StageOut[42]~20_combout\)))) ) + ( !\B[4]~input_o\ ) + ( 
-- \Div0|auto_generated|divider|divider|op_8~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[42]~20_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	dataf => \ALT_INV_B[4]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_8~22_cout\,
	cout => \Div0|auto_generated|divider|divider|op_8~18_cout\);

-- Location: LABCELL_X71_Y3_N18
\Div0|auto_generated|divider|divider|op_8~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~14_cout\ = CARRY(( !\B[5]~input_o\ ) + ( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((!\B[7]~input_o\ & ((\Div0|auto_generated|divider|divider|op_7~13_sumout\))) # (\B[7]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[43]~17_combout\)))) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\Div0|auto_generated|divider|divider|StageOut[43]~17_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_8~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110000111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[43]~17_combout\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_8~18_cout\,
	cout => \Div0|auto_generated|divider|divider|op_8~14_cout\);

-- Location: LABCELL_X71_Y3_N21
\Div0|auto_generated|divider|divider|op_8~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~10_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((!\B[7]~input_o\ & ((\Div0|auto_generated|divider|divider|op_7~9_sumout\))) # (\B[7]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[44]~13_combout\)))) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\Div0|auto_generated|divider|divider|StageOut[44]~13_combout\)))) ) + ( !\B[6]~input_o\ ) + ( 
-- \Div0|auto_generated|divider|divider|op_8~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[44]~13_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	dataf => \ALT_INV_B[6]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_8~14_cout\,
	cout => \Div0|auto_generated|divider|divider|op_8~10_cout\);

-- Location: LABCELL_X71_Y3_N24
\Div0|auto_generated|divider|divider|op_8~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~6_cout\ = CARRY(( !\B[7]~input_o\ ) + ( (!\Div0|auto_generated|divider|divider|selnose\(54) & (((\Div0|auto_generated|divider|divider|op_7~5_sumout\)))) # (\Div0|auto_generated|divider|divider|selnose\(54) & 
-- (((\Div0|auto_generated|divider|divider|StageOut[45]~8_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[45]~0_combout\))) ) + ( \Div0|auto_generated|divider|divider|op_8~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010101100000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_selnose\(54),
	datad => \ALT_INV_B[7]~input_o\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~8_combout\,
	cin => \Div0|auto_generated|divider|divider|op_8~10_cout\,
	cout => \Div0|auto_generated|divider|divider|op_8~6_cout\);

-- Location: LABCELL_X71_Y3_N27
\Div0|auto_generated|divider|divider|op_8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_8~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_8~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_8~1_sumout\);

-- Location: LABCELL_X71_Y3_N36
\temp_cociente~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_cociente~0_combout\ = (\Div0|auto_generated|divider|divider|op_8~1_sumout\) # (\Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \temp_cociente~0_combout\);

-- Location: LABCELL_X71_Y3_N42
\temp_cociente~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_cociente~1_combout\ = ( \Div0|auto_generated|divider|divider|op_7~1_sumout\ ) # ( !\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( (\B[7]~input_o\) # (\Equal0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_B[7]~input_o\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \temp_cociente~1_combout\);

-- Location: LABCELL_X70_Y3_N3
\temp_cociente~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_cociente~2_combout\ = ( \Equal0~1_combout\ ) # ( !\Equal0~1_combout\ & ( (!\Equal0~2_combout\) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111101011111010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \ALT_INV_Equal0~2_combout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \temp_cociente~2_combout\);

-- Location: LABCELL_X71_Y3_N45
\temp_cociente~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_cociente~3_combout\ = (\Div0|auto_generated|divider|divider|selnose\(36)) # (\Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_selnose\(36),
	combout => \temp_cociente~3_combout\);

-- Location: LABCELL_X66_Y3_N0
\temp_cociente~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_cociente~4_combout\ = ( \Equal0~4_combout\ & ( (\Div0|auto_generated|divider|divider|op_4~1_sumout\) # (\Equal0~1_combout\) ) ) # ( !\Equal0~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001111110011111111111111111111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datae => \ALT_INV_Equal0~4_combout\,
	combout => \temp_cociente~4_combout\);

-- Location: LABCELL_X67_Y4_N51
\temp_cociente~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_cociente~5_combout\ = ( \Equal0~1_combout\ ) # ( !\Equal0~1_combout\ & ( \Div0|auto_generated|divider|divider|selnose\(18) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_selnose\(18),
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \temp_cociente~5_combout\);

-- Location: LABCELL_X67_Y4_N57
\temp_cociente~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_cociente~6_combout\ = (\Equal0~1_combout\) # (\Div0|auto_generated|divider|divider|selnose\(9))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_selnose\(9),
	datac => \ALT_INV_Equal0~1_combout\,
	combout => \temp_cociente~6_combout\);

-- Location: LABCELL_X67_Y4_N12
\temp_cociente~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_cociente~7_combout\ = ( \Div0|auto_generated|divider|divider|selnose\(0) ) # ( !\Div0|auto_generated|divider|divider|selnose\(0) & ( \Equal0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~1_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_selnose\(0),
	combout => \temp_cociente~7_combout\);

-- Location: LABCELL_X73_Y4_N12
\Mod0|auto_generated|divider|divider|op_8~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~38_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Mod0|auto_generated|divider|divider|op_8~38_cout\);

-- Location: LABCELL_X73_Y4_N15
\Mod0|auto_generated|divider|divider|op_8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~5_sumout\ = SUM(( !\B[0]~input_o\ ) + ( \A[0]~input_o\ ) + ( \Mod0|auto_generated|divider|divider|op_8~38_cout\ ))
-- \Mod0|auto_generated|divider|divider|op_8~6\ = CARRY(( !\B[0]~input_o\ ) + ( \A[0]~input_o\ ) + ( \Mod0|auto_generated|divider|divider|op_8~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	cin => \Mod0|auto_generated|divider|divider|op_8~38_cout\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~5_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~6\);

-- Location: LABCELL_X68_Y4_N0
\Mod0|auto_generated|divider|divider|add_sub_0_result_int[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_0_result_int[0]~1_sumout\ = SUM(( !\A[7]~input_o\ $ (!\B[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Mod0|auto_generated|divider|divider|add_sub_0_result_int[0]~2\ = CARRY(( !\A[7]~input_o\ $ (!\B[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Mod0|auto_generated|divider|divider|add_sub_0_result_int[0]~3\ = SHARE((!\B[0]~input_o\) # (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	cin => GND,
	sharein => GND,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_0_result_int[0]~1_sumout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_0_result_int[0]~2\,
	shareout => \Mod0|auto_generated|divider|divider|add_sub_0_result_int[0]~3\);

-- Location: LABCELL_X68_Y4_N3
\Mod0|auto_generated|divider|divider|add_sub_0_result_int[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_0_result_int[1]~5_sumout\ = SUM(( VCC ) + ( \Mod0|auto_generated|divider|divider|add_sub_0_result_int[0]~3\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_0_result_int[0]~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_0_result_int[0]~2\,
	sharein => \Mod0|auto_generated|divider|divider|add_sub_0_result_int[0]~3\,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_0_result_int[1]~5_sumout\);

-- Location: LABCELL_X67_Y4_N45
\Mod0|auto_generated|divider|divider|selnose[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|selnose\(0) = ( \B[2]~input_o\ ) # ( !\B[2]~input_o\ & ( ((!\Equal0~0_combout\) # (\Mod0|auto_generated|divider|divider|add_sub_0_result_int[1]~5_sumout\)) # (\B[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111011111110111111101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[1]~5_sumout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|selnose\(0));

-- Location: LABCELL_X67_Y4_N0
\Mod0|auto_generated|divider|divider|add_sub_1_result_int[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_1_result_int[0]~5_sumout\ = SUM(( !\A[6]~input_o\ $ (!\B[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Mod0|auto_generated|divider|divider|add_sub_1_result_int[0]~6\ = CARRY(( !\A[6]~input_o\ $ (!\B[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Mod0|auto_generated|divider|divider|add_sub_1_result_int[0]~7\ = SHARE((!\B[0]~input_o\) # (\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	cin => GND,
	sharein => GND,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_1_result_int[0]~5_sumout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_1_result_int[0]~6\,
	shareout => \Mod0|auto_generated|divider|divider|add_sub_1_result_int[0]~7\);

-- Location: LABCELL_X67_Y4_N3
\Mod0|auto_generated|divider|divider|add_sub_1_result_int[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_1_result_int[1]~9_sumout\ = SUM(( !\B[1]~input_o\ $ (((!\Mod0|auto_generated|divider|divider|selnose\(0) & ((\Mod0|auto_generated|divider|divider|add_sub_0_result_int[0]~1_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|selnose\(0) & (\A[7]~input_o\)))) ) + ( \Mod0|auto_generated|divider|divider|add_sub_1_result_int[0]~7\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_1_result_int[0]~6\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_1_result_int[1]~10\ = CARRY(( !\B[1]~input_o\ $ (((!\Mod0|auto_generated|divider|divider|selnose\(0) & ((\Mod0|auto_generated|divider|divider|add_sub_0_result_int[0]~1_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|selnose\(0) & (\A[7]~input_o\)))) ) + ( \Mod0|auto_generated|divider|divider|add_sub_1_result_int[0]~7\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_1_result_int[0]~6\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_1_result_int[1]~11\ = SHARE((!\B[1]~input_o\ & ((!\Mod0|auto_generated|divider|divider|selnose\(0) & ((\Mod0|auto_generated|divider|divider|add_sub_0_result_int[0]~1_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|selnose\(0) & (\A[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000101010001000000000000000001010100101011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_selnose\(0),
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[0]~1_sumout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_1_result_int[0]~6\,
	sharein => \Mod0|auto_generated|divider|divider|add_sub_1_result_int[0]~7\,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_1_result_int[1]~9_sumout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_1_result_int[1]~10\,
	shareout => \Mod0|auto_generated|divider|divider|add_sub_1_result_int[1]~11\);

-- Location: LABCELL_X67_Y4_N6
\Mod0|auto_generated|divider|divider|add_sub_1_result_int[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ = SUM(( VCC ) + ( \Mod0|auto_generated|divider|divider|add_sub_1_result_int[1]~11\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_1_result_int[1]~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_1_result_int[1]~10\,
	sharein => \Mod0|auto_generated|divider|divider|add_sub_1_result_int[1]~11\,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\);

-- Location: LABCELL_X70_Y4_N54
\Mod0|auto_generated|divider|divider|StageOut[9]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[9]~17_combout\ = ( !\B[2]~input_o\ & ( (!\Mod0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & (\Equal0~0_combout\ & \Mod0|auto_generated|divider|divider|add_sub_1_result_int[1]~9_sumout\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[1]~9_sumout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[9]~17_combout\);

-- Location: LABCELL_X67_Y4_N27
\Mod0|auto_generated|divider|divider|StageOut[0]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[0]~18_combout\ = ( \Mod0|auto_generated|divider|divider|add_sub_0_result_int[0]~1_sumout\ & ( \Mod0|auto_generated|divider|divider|add_sub_0_result_int[1]~5_sumout\ & ( \A[7]~input_o\ ) ) ) # ( 
-- !\Mod0|auto_generated|divider|divider|add_sub_0_result_int[0]~1_sumout\ & ( \Mod0|auto_generated|divider|divider|add_sub_0_result_int[1]~5_sumout\ & ( \A[7]~input_o\ ) ) ) # ( \Mod0|auto_generated|divider|divider|add_sub_0_result_int[0]~1_sumout\ & ( 
-- !\Mod0|auto_generated|divider|divider|add_sub_0_result_int[1]~5_sumout\ & ( ((!\B[1]~input_o\ & (!\B[2]~input_o\ & \Equal0~0_combout\))) # (\A[7]~input_o\) ) ) ) # ( !\Mod0|auto_generated|divider|divider|add_sub_0_result_int[0]~1_sumout\ & ( 
-- !\Mod0|auto_generated|divider|divider|add_sub_0_result_int[1]~5_sumout\ & ( (\A[7]~input_o\ & (((!\Equal0~0_combout\) # (\B[2]~input_o\)) # (\B[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110111000010001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[0]~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[1]~5_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[0]~18_combout\);

-- Location: LABCELL_X67_Y4_N21
\Mod0|auto_generated|divider|divider|selnose[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|selnose\(9) = ( \B[2]~input_o\ ) # ( !\B[2]~input_o\ & ( (!\Equal0~0_combout\) # (\Mod0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	datab => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|selnose\(9));

-- Location: LABCELL_X67_Y4_N30
\Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~5_sumout\ = SUM(( !\A[5]~input_o\ $ (!\B[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~6\ = CARRY(( !\A[5]~input_o\ $ (!\B[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~7\ = SHARE((!\B[0]~input_o\) # (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	cin => GND,
	sharein => GND,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~5_sumout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~6\,
	shareout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~7\);

-- Location: LABCELL_X67_Y4_N33
\Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~9_sumout\ = SUM(( !\B[1]~input_o\ $ (((!\Mod0|auto_generated|divider|divider|selnose\(9) & ((\Mod0|auto_generated|divider|divider|add_sub_1_result_int[0]~5_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|selnose\(9) & (\A[6]~input_o\)))) ) + ( \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~7\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~6\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~10\ = CARRY(( !\B[1]~input_o\ $ (((!\Mod0|auto_generated|divider|divider|selnose\(9) & ((\Mod0|auto_generated|divider|divider|add_sub_1_result_int[0]~5_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|selnose\(9) & (\A[6]~input_o\)))) ) + ( \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~7\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~6\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~11\ = SHARE((!\B[1]~input_o\ & ((!\Mod0|auto_generated|divider|divider|selnose\(9) & ((\Mod0|auto_generated|divider|divider|add_sub_1_result_int[0]~5_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|selnose\(9) & (\A[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001001000110000000000000000001100100101100011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_selnose\(9),
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[0]~5_sumout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~6\,
	sharein => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~7\,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~9_sumout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~10\,
	shareout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~11\);

-- Location: LABCELL_X67_Y4_N36
\Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~13_sumout\ = SUM(( !\B[2]~input_o\ $ (((!\Mod0|auto_generated|divider|divider|selnose\(9) & ((\Mod0|auto_generated|divider|divider|add_sub_1_result_int[1]~9_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|selnose\(9) & (\Mod0|auto_generated|divider|divider|StageOut[0]~18_combout\)))) ) + ( \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~11\ ) + ( 
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~10\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~14\ = CARRY(( !\B[2]~input_o\ $ (((!\Mod0|auto_generated|divider|divider|selnose\(9) & ((\Mod0|auto_generated|divider|divider|add_sub_1_result_int[1]~9_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|selnose\(9) & (\Mod0|auto_generated|divider|divider|StageOut[0]~18_combout\)))) ) + ( \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~11\ ) + ( 
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~10\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~15\ = SHARE((!\B[2]~input_o\ & ((!\Mod0|auto_generated|divider|divider|selnose\(9) & ((\Mod0|auto_generated|divider|divider|add_sub_1_result_int[1]~9_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|selnose\(9) & (\Mod0|auto_generated|divider|divider|StageOut[0]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001001100010000000000000000001100100100111001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[0]~18_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_selnose\(9),
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[1]~9_sumout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~10\,
	sharein => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~11\,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~13_sumout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~14\,
	shareout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~15\);

-- Location: LABCELL_X67_Y4_N39
\Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ = SUM(( VCC ) + ( \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~15\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~14\,
	sharein => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~15\,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\);

-- Location: LABCELL_X70_Y4_N21
\Mod0|auto_generated|divider|divider|selnose[18]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|selnose\(18) = (!\Equal0~0_combout\) # (\Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\,
	datab => \ALT_INV_Equal0~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|selnose\(18));

-- Location: LABCELL_X70_Y4_N57
\Mod0|auto_generated|divider|divider|StageOut[9]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[9]~19_combout\ = ( \B[2]~input_o\ & ( \Mod0|auto_generated|divider|divider|StageOut[0]~18_combout\ ) ) # ( !\B[2]~input_o\ & ( (\Mod0|auto_generated|divider|divider|StageOut[0]~18_combout\ & 
-- ((!\Equal0~0_combout\) # (\Mod0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[0]~18_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[9]~19_combout\);

-- Location: LABCELL_X67_Y4_N18
\Mod0|auto_generated|divider|divider|StageOut[8]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[8]~10_combout\ = ( \B[2]~input_o\ & ( \A[6]~input_o\ ) ) # ( !\B[2]~input_o\ & ( (!\Mod0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & ((!\Equal0~0_combout\ & (\A[6]~input_o\)) # 
-- (\Equal0~0_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_1_result_int[0]~5_sumout\))))) # (\Mod0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & (((\A[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100101111000011010010111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[0]~5_sumout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[8]~10_combout\);

-- Location: LABCELL_X70_Y4_N0
\Mod0|auto_generated|divider|divider|op_4~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_4~22_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Mod0|auto_generated|divider|divider|op_4~22_cout\);

-- Location: LABCELL_X70_Y4_N3
\Mod0|auto_generated|divider|divider|op_4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_4~5_sumout\ = SUM(( !\B[0]~input_o\ ) + ( \A[4]~input_o\ ) + ( \Mod0|auto_generated|divider|divider|op_4~22_cout\ ))
-- \Mod0|auto_generated|divider|divider|op_4~6\ = CARRY(( !\B[0]~input_o\ ) + ( \A[4]~input_o\ ) + ( \Mod0|auto_generated|divider|divider|op_4~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	cin => \Mod0|auto_generated|divider|divider|op_4~22_cout\,
	sumout => \Mod0|auto_generated|divider|divider|op_4~5_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_4~6\);

-- Location: LABCELL_X70_Y4_N6
\Mod0|auto_generated|divider|divider|op_4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_4~9_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & ((!\Equal0~0_combout\ & ((\A[5]~input_o\))) # (\Equal0~0_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~5_sumout\)))) # (\Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & (((\A[5]~input_o\)))) ) + ( !\B[1]~input_o\ ) + ( \Mod0|auto_generated|divider|divider|op_4~6\ ))
-- \Mod0|auto_generated|divider|divider|op_4~10\ = CARRY(( (!\Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & ((!\Equal0~0_combout\ & ((\A[5]~input_o\))) # (\Equal0~0_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~5_sumout\)))) # (\Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & (((\A[5]~input_o\)))) ) + ( !\B[1]~input_o\ ) + ( \Mod0|auto_generated|divider|divider|op_4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[0]~5_sumout\,
	datad => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	cin => \Mod0|auto_generated|divider|divider|op_4~6\,
	sumout => \Mod0|auto_generated|divider|divider|op_4~9_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_4~10\);

-- Location: LABCELL_X70_Y4_N9
\Mod0|auto_generated|divider|divider|op_4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_4~13_sumout\ = SUM(( !\B[2]~input_o\ ) + ( (!\Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & ((!\Equal0~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[8]~10_combout\))) # 
-- (\Equal0~0_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~9_sumout\)))) # (\Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & (((\Mod0|auto_generated|divider|divider|StageOut[8]~10_combout\)))) ) + ( 
-- \Mod0|auto_generated|divider|divider|op_4~10\ ))
-- \Mod0|auto_generated|divider|divider|op_4~14\ = CARRY(( !\B[2]~input_o\ ) + ( (!\Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & ((!\Equal0~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[8]~10_combout\))) # 
-- (\Equal0~0_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~9_sumout\)))) # (\Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & (((\Mod0|auto_generated|divider|divider|StageOut[8]~10_combout\)))) ) + ( 
-- \Mod0|auto_generated|divider|divider|op_4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010010000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[1]~9_sumout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[8]~10_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_4~10\,
	sumout => \Mod0|auto_generated|divider|divider|op_4~13_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_4~14\);

-- Location: LABCELL_X70_Y4_N12
\Mod0|auto_generated|divider|divider|op_4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_4~17_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|selnose\(18) & (((\Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~13_sumout\)))) # (\Mod0|auto_generated|divider|divider|selnose\(18) & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[9]~19_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[9]~17_combout\))) ) + ( !\B[3]~input_o\ ) + ( \Mod0|auto_generated|divider|divider|op_4~14\ ))
-- \Mod0|auto_generated|divider|divider|op_4~18\ = CARRY(( (!\Mod0|auto_generated|divider|divider|selnose\(18) & (((\Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~13_sumout\)))) # (\Mod0|auto_generated|divider|divider|selnose\(18) & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[9]~19_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[9]~17_combout\))) ) + ( !\B[3]~input_o\ ) + ( \Mod0|auto_generated|divider|divider|op_4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000011010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[9]~17_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[2]~13_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_selnose\(18),
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[9]~19_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	cin => \Mod0|auto_generated|divider|divider|op_4~14\,
	sumout => \Mod0|auto_generated|divider|divider|op_4~17_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_4~18\);

-- Location: LABCELL_X70_Y4_N15
\Mod0|auto_generated|divider|divider|op_4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_4~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_4~18\,
	sumout => \Mod0|auto_generated|divider|divider|op_4~1_sumout\);

-- Location: LABCELL_X70_Y4_N48
\Mod0|auto_generated|divider|divider|StageOut[18]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~20_combout\ = ( \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~13_sumout\ & ( (((!\Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & \Equal0~0_combout\)) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[9]~19_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[9]~17_combout\) ) ) # ( !\Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~13_sumout\ & ( 
-- (!\Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & (!\Equal0~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[9]~19_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[9]~17_combout\)))) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & (((\Mod0|auto_generated|divider|divider|StageOut[9]~19_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[9]~17_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110111011101000011011101110100101111111111110010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[9]~17_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[9]~19_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[2]~13_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~20_combout\);

-- Location: LABCELL_X70_Y4_N51
\Mod0|auto_generated|divider|divider|StageOut[17]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[17]~11_combout\ = ( \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~9_sumout\ & ( ((!\Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & \Equal0~0_combout\)) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[8]~10_combout\) ) ) # ( !\Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~9_sumout\ & ( (\Mod0|auto_generated|divider|divider|StageOut[8]~10_combout\ & ((!\Equal0~0_combout\) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[8]~10_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[1]~9_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[17]~11_combout\);

-- Location: LABCELL_X70_Y4_N18
\Mod0|auto_generated|divider|divider|StageOut[16]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & ((!\Equal0~0_combout\ & ((\A[5]~input_o\))) # (\Equal0~0_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~5_sumout\)))) # (\Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & (((\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011011111000000101101111100000010110111110000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[0]~5_sumout\,
	datad => \ALT_INV_A[5]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\);

-- Location: LABCELL_X70_Y4_N24
\Mod0|auto_generated|divider|divider|op_5~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Mod0|auto_generated|divider|divider|op_5~26_cout\);

-- Location: LABCELL_X70_Y4_N27
\Mod0|auto_generated|divider|divider|op_5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~5_sumout\ = SUM(( !\B[0]~input_o\ ) + ( \A[3]~input_o\ ) + ( \Mod0|auto_generated|divider|divider|op_5~26_cout\ ))
-- \Mod0|auto_generated|divider|divider|op_5~6\ = CARRY(( !\B[0]~input_o\ ) + ( \A[3]~input_o\ ) + ( \Mod0|auto_generated|divider|divider|op_5~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	cin => \Mod0|auto_generated|divider|divider|op_5~26_cout\,
	sumout => \Mod0|auto_generated|divider|divider|op_5~5_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~6\);

-- Location: LABCELL_X70_Y4_N30
\Mod0|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( (!\Equal0~4_combout\ & (((\A[4]~input_o\)))) # (\Equal0~4_combout\ & ((!\Mod0|auto_generated|divider|divider|op_4~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_4~5_sumout\)) # 
-- (\Mod0|auto_generated|divider|divider|op_4~1_sumout\ & ((\A[4]~input_o\))))) ) + ( !\B[1]~input_o\ ) + ( \Mod0|auto_generated|divider|divider|op_5~6\ ))
-- \Mod0|auto_generated|divider|divider|op_5~10\ = CARRY(( (!\Equal0~4_combout\ & (((\A[4]~input_o\)))) # (\Equal0~4_combout\ & ((!\Mod0|auto_generated|divider|divider|op_4~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_4~5_sumout\)) # 
-- (\Mod0|auto_generated|divider|divider|op_4~1_sumout\ & ((\A[4]~input_o\))))) ) + ( !\B[1]~input_o\ ) + ( \Mod0|auto_generated|divider|divider|op_5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\,
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	cin => \Mod0|auto_generated|divider|divider|op_5~6\,
	sumout => \Mod0|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~10\);

-- Location: LABCELL_X70_Y4_N33
\Mod0|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( (!\Equal0~4_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\)))) # (\Equal0~4_combout\ & ((!\Mod0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|op_4~9_sumout\)) # (\Mod0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\))))) ) + ( !\B[2]~input_o\ ) + ( \Mod0|auto_generated|divider|divider|op_5~10\ 
-- ))
-- \Mod0|auto_generated|divider|divider|op_5~14\ = CARRY(( (!\Equal0~4_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\)))) # (\Equal0~4_combout\ & ((!\Mod0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|op_4~9_sumout\)) # (\Mod0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\))))) ) + ( !\B[2]~input_o\ ) + ( \Mod0|auto_generated|divider|divider|op_5~10\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[16]~6_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	cin => \Mod0|auto_generated|divider|divider|op_5~10\,
	sumout => \Mod0|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~14\);

-- Location: LABCELL_X70_Y4_N36
\Mod0|auto_generated|divider|divider|op_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~17_sumout\ = SUM(( (!\Equal0~4_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[17]~11_combout\)))) # (\Equal0~4_combout\ & ((!\Mod0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- ((\Mod0|auto_generated|divider|divider|op_4~13_sumout\))) # (\Mod0|auto_generated|divider|divider|op_4~1_sumout\ & (\Mod0|auto_generated|divider|divider|StageOut[17]~11_combout\)))) ) + ( !\B[3]~input_o\ ) + ( \Mod0|auto_generated|divider|divider|op_5~14\ 
-- ))
-- \Mod0|auto_generated|divider|divider|op_5~18\ = CARRY(( (!\Equal0~4_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[17]~11_combout\)))) # (\Equal0~4_combout\ & ((!\Mod0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- ((\Mod0|auto_generated|divider|divider|op_4~13_sumout\))) # (\Mod0|auto_generated|divider|divider|op_4~1_sumout\ & (\Mod0|auto_generated|divider|divider|StageOut[17]~11_combout\)))) ) + ( !\B[3]~input_o\ ) + ( \Mod0|auto_generated|divider|divider|op_5~14\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[17]~11_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\,
	dataf => \ALT_INV_B[3]~input_o\,
	cin => \Mod0|auto_generated|divider|divider|op_5~14\,
	sumout => \Mod0|auto_generated|divider|divider|op_5~17_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~18\);

-- Location: LABCELL_X70_Y4_N39
\Mod0|auto_generated|divider|divider|op_5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~21_sumout\ = SUM(( !\B[4]~input_o\ ) + ( (!\Equal0~4_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[18]~20_combout\)))) # (\Equal0~4_combout\ & ((!\Mod0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- ((\Mod0|auto_generated|divider|divider|op_4~17_sumout\))) # (\Mod0|auto_generated|divider|divider|op_4~1_sumout\ & (\Mod0|auto_generated|divider|divider|StageOut[18]~20_combout\)))) ) + ( \Mod0|auto_generated|divider|divider|op_5~18\ ))
-- \Mod0|auto_generated|divider|divider|op_5~22\ = CARRY(( !\B[4]~input_o\ ) + ( (!\Equal0~4_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[18]~20_combout\)))) # (\Equal0~4_combout\ & ((!\Mod0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- ((\Mod0|auto_generated|divider|divider|op_4~17_sumout\))) # (\Mod0|auto_generated|divider|divider|op_4~1_sumout\ & (\Mod0|auto_generated|divider|divider|StageOut[18]~20_combout\)))) ) + ( \Mod0|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101001011000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[18]~20_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_5~18\,
	sumout => \Mod0|auto_generated|divider|divider|op_5~21_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~22\);

-- Location: LABCELL_X70_Y4_N42
\Mod0|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_5~22\,
	sumout => \Mod0|auto_generated|divider|divider|op_5~1_sumout\);

-- Location: LABCELL_X71_Y4_N39
\Mod0|auto_generated|divider|divider|selnose[36]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|selnose\(36) = (!\Equal0~3_combout\) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal0~3_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|selnose\(36));

-- Location: LABCELL_X71_Y4_N54
\Mod0|auto_generated|divider|divider|StageOut[27]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~16_combout\ = (\Equal0~4_combout\ & (!\Mod0|auto_generated|divider|divider|op_4~1_sumout\ & \Mod0|auto_generated|divider|divider|op_4~17_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~16_combout\);

-- Location: LABCELL_X71_Y4_N57
\Mod0|auto_generated|divider|divider|StageOut[27]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~21_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[18]~20_combout\ & ((!\Equal0~4_combout\) # (\Mod0|auto_generated|divider|divider|op_4~1_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100001011000010110000101100001011000010110000101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[18]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~21_combout\);

-- Location: LABCELL_X71_Y4_N6
\Mod0|auto_generated|divider|divider|StageOut[26]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~12_combout\ = ( \Mod0|auto_generated|divider|divider|op_4~13_sumout\ & ( ((\Equal0~4_combout\ & !\Mod0|auto_generated|divider|divider|op_4~1_sumout\)) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[17]~11_combout\) ) ) # ( !\Mod0|auto_generated|divider|divider|op_4~13_sumout\ & ( (\Mod0|auto_generated|divider|divider|StageOut[17]~11_combout\ & ((!\Equal0~4_combout\) # 
-- (\Mod0|auto_generated|divider|divider|op_4~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100001011000010110000101101001111010011110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[17]~11_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~12_combout\);

-- Location: LABCELL_X71_Y4_N0
\Mod0|auto_generated|divider|divider|StageOut[25]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~7_combout\ = ( \Mod0|auto_generated|divider|divider|op_4~1_sumout\ & ( \Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\ ) ) # ( !\Mod0|auto_generated|divider|divider|op_4~1_sumout\ & ( 
-- (!\Equal0~4_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\)) # (\Equal0~4_combout\ & ((\Mod0|auto_generated|divider|divider|op_4~9_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[16]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~7_combout\);

-- Location: LABCELL_X71_Y4_N9
\Mod0|auto_generated|divider|divider|StageOut[24]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[24]~3_combout\ = (!\Equal0~4_combout\ & (((\A[4]~input_o\)))) # (\Equal0~4_combout\ & ((!\Mod0|auto_generated|divider|divider|op_4~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_4~5_sumout\)) # 
-- (\Mod0|auto_generated|divider|divider|op_4~1_sumout\ & ((\A[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010111111000001001011111100000100101111110000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\,
	datad => \ALT_INV_A[4]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[24]~3_combout\);

-- Location: LABCELL_X71_Y4_N12
\Mod0|auto_generated|divider|divider|op_6~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~30_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Mod0|auto_generated|divider|divider|op_6~30_cout\);

-- Location: LABCELL_X71_Y4_N15
\Mod0|auto_generated|divider|divider|op_6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~5_sumout\ = SUM(( !\B[0]~input_o\ ) + ( \A[2]~input_o\ ) + ( \Mod0|auto_generated|divider|divider|op_6~30_cout\ ))
-- \Mod0|auto_generated|divider|divider|op_6~6\ = CARRY(( !\B[0]~input_o\ ) + ( \A[2]~input_o\ ) + ( \Mod0|auto_generated|divider|divider|op_6~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	cin => \Mod0|auto_generated|divider|divider|op_6~30_cout\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~5_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~6\);

-- Location: LABCELL_X71_Y4_N18
\Mod0|auto_generated|divider|divider|op_6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~9_sumout\ = SUM(( !\B[1]~input_o\ ) + ( (!\Equal0~3_combout\ & (((\A[3]~input_o\)))) # (\Equal0~3_combout\ & ((!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|op_5~5_sumout\)) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\A[3]~input_o\))))) ) + ( \Mod0|auto_generated|divider|divider|op_6~6\ ))
-- \Mod0|auto_generated|divider|divider|op_6~10\ = CARRY(( !\B[1]~input_o\ ) + ( (!\Equal0~3_combout\ & (((\A[3]~input_o\)))) # (\Equal0~3_combout\ & ((!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|op_5~5_sumout\)) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\A[3]~input_o\))))) ) + ( \Mod0|auto_generated|divider|divider|op_6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110100000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~3_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	cin => \Mod0|auto_generated|divider|divider|op_6~6\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~9_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~10\);

-- Location: LABCELL_X71_Y4_N21
\Mod0|auto_generated|divider|divider|op_6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~13_sumout\ = SUM(( !\B[2]~input_o\ ) + ( (!\Equal0~3_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[24]~3_combout\)))) # (\Equal0~3_combout\ & ((!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|op_5~9_sumout\)) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod0|auto_generated|divider|divider|StageOut[24]~3_combout\))))) ) + ( \Mod0|auto_generated|divider|divider|op_6~10\ ))
-- \Mod0|auto_generated|divider|divider|op_6~14\ = CARRY(( !\B[2]~input_o\ ) + ( (!\Equal0~3_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[24]~3_combout\)))) # (\Equal0~3_combout\ & ((!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|op_5~9_sumout\)) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod0|auto_generated|divider|divider|StageOut[24]~3_combout\))))) ) + ( \Mod0|auto_generated|divider|divider|op_6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110100000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~3_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~3_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_6~10\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~13_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~14\);

-- Location: LABCELL_X71_Y4_N24
\Mod0|auto_generated|divider|divider|op_6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~17_sumout\ = SUM(( (!\Equal0~3_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[25]~7_combout\)))) # (\Equal0~3_combout\ & ((!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- ((\Mod0|auto_generated|divider|divider|op_5~13_sumout\))) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\Mod0|auto_generated|divider|divider|StageOut[25]~7_combout\)))) ) + ( !\B[3]~input_o\ ) + ( \Mod0|auto_generated|divider|divider|op_6~14\ 
-- ))
-- \Mod0|auto_generated|divider|divider|op_6~18\ = CARRY(( (!\Equal0~3_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[25]~7_combout\)))) # (\Equal0~3_combout\ & ((!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- ((\Mod0|auto_generated|divider|divider|op_5~13_sumout\))) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\Mod0|auto_generated|divider|divider|StageOut[25]~7_combout\)))) ) + ( !\B[3]~input_o\ ) + ( \Mod0|auto_generated|divider|divider|op_6~14\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~3_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[25]~7_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	dataf => \ALT_INV_B[3]~input_o\,
	cin => \Mod0|auto_generated|divider|divider|op_6~14\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~17_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~18\);

-- Location: LABCELL_X71_Y4_N27
\Mod0|auto_generated|divider|divider|op_6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~21_sumout\ = SUM(( !\B[4]~input_o\ ) + ( (!\Equal0~3_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[26]~12_combout\)))) # (\Equal0~3_combout\ & ((!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- ((\Mod0|auto_generated|divider|divider|op_5~17_sumout\))) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\Mod0|auto_generated|divider|divider|StageOut[26]~12_combout\)))) ) + ( \Mod0|auto_generated|divider|divider|op_6~18\ ))
-- \Mod0|auto_generated|divider|divider|op_6~22\ = CARRY(( !\B[4]~input_o\ ) + ( (!\Equal0~3_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[26]~12_combout\)))) # (\Equal0~3_combout\ & ((!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- ((\Mod0|auto_generated|divider|divider|op_5~17_sumout\))) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\Mod0|auto_generated|divider|divider|StageOut[26]~12_combout\)))) ) + ( \Mod0|auto_generated|divider|divider|op_6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101001011000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~3_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[26]~12_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_6~18\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~21_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~22\);

-- Location: LABCELL_X71_Y4_N30
\Mod0|auto_generated|divider|divider|op_6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~25_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|selnose\(36) & (\Mod0|auto_generated|divider|divider|op_5~21_sumout\)) # (\Mod0|auto_generated|divider|divider|selnose\(36) & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[27]~21_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[27]~16_combout\)))) ) + ( !\B[5]~input_o\ ) + ( \Mod0|auto_generated|divider|divider|op_6~22\ ))
-- \Mod0|auto_generated|divider|divider|op_6~26\ = CARRY(( (!\Mod0|auto_generated|divider|divider|selnose\(36) & (\Mod0|auto_generated|divider|divider|op_5~21_sumout\)) # (\Mod0|auto_generated|divider|divider|selnose\(36) & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[27]~21_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[27]~16_combout\)))) ) + ( !\B[5]~input_o\ ) + ( \Mod0|auto_generated|divider|divider|op_6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_selnose\(36),
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[27]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[27]~21_combout\,
	dataf => \ALT_INV_B[5]~input_o\,
	cin => \Mod0|auto_generated|divider|divider|op_6~22\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~25_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~26\);

-- Location: LABCELL_X71_Y4_N33
\Mod0|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_6~26\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~1_sumout\);

-- Location: LABCELL_X71_Y4_N42
\Mod0|auto_generated|divider|divider|StageOut[36]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[36]~22_combout\ = ( \Mod0|auto_generated|divider|divider|op_5~21_sumout\ & ( (((\Equal0~3_combout\ & !\Mod0|auto_generated|divider|divider|op_5~1_sumout\)) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[27]~21_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[27]~16_combout\) ) ) # ( !\Mod0|auto_generated|divider|divider|op_5~21_sumout\ & ( (!\Equal0~3_combout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[27]~21_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[27]~16_combout\)))) # (\Equal0~3_combout\ & (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[27]~21_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[27]~16_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101110111011000010111011101101001111111111110100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~3_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[27]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[27]~21_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[36]~22_combout\);

-- Location: LABCELL_X71_Y4_N51
\Mod0|auto_generated|divider|divider|StageOut[35]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[35]~13_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[26]~12_combout\ & ( ((!\Equal0~3_combout\) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\)) # 
-- (\Mod0|auto_generated|divider|divider|op_5~17_sumout\) ) ) # ( !\Mod0|auto_generated|divider|divider|StageOut[26]~12_combout\ & ( (\Mod0|auto_generated|divider|divider|op_5~17_sumout\ & (!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- \Equal0~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010011110111111101111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \ALT_INV_Equal0~3_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[26]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[35]~13_combout\);

-- Location: LABCELL_X71_Y4_N48
\Mod0|auto_generated|divider|divider|StageOut[34]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[34]~8_combout\ = ( \Equal0~3_combout\ & ( (!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_5~13_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\Mod0|auto_generated|divider|divider|StageOut[25]~7_combout\)) ) ) # ( !\Equal0~3_combout\ & ( \Mod0|auto_generated|divider|divider|StageOut[25]~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[25]~7_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	dataf => \ALT_INV_Equal0~3_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[34]~8_combout\);

-- Location: LABCELL_X71_Y4_N45
\Mod0|auto_generated|divider|divider|StageOut[33]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[33]~4_combout\ = ( \Mod0|auto_generated|divider|divider|op_5~9_sumout\ & ( ((\Equal0~3_combout\ & !\Mod0|auto_generated|divider|divider|op_5~1_sumout\)) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[24]~3_combout\) ) ) # ( !\Mod0|auto_generated|divider|divider|op_5~9_sumout\ & ( (\Mod0|auto_generated|divider|divider|StageOut[24]~3_combout\ & ((!\Equal0~3_combout\) # 
-- (\Mod0|auto_generated|divider|divider|op_5~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111011000000001011101101000100111111110100010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~3_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~3_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[33]~4_combout\);

-- Location: LABCELL_X71_Y4_N36
\Mod0|auto_generated|divider|divider|StageOut[32]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~1_combout\ = (!\Equal0~3_combout\ & (((\A[3]~input_o\)))) # (\Equal0~3_combout\ & ((!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_5~5_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101101001111000010110100111100001011010011110000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~3_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~1_combout\);

-- Location: MLABCELL_X72_Y4_N0
\Mod0|auto_generated|divider|divider|op_7~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Mod0|auto_generated|divider|divider|op_7~34_cout\);

-- Location: MLABCELL_X72_Y4_N3
\Mod0|auto_generated|divider|divider|op_7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~5_sumout\ = SUM(( !\B[0]~input_o\ ) + ( \A[1]~input_o\ ) + ( \Mod0|auto_generated|divider|divider|op_7~34_cout\ ))
-- \Mod0|auto_generated|divider|divider|op_7~6\ = CARRY(( !\B[0]~input_o\ ) + ( \A[1]~input_o\ ) + ( \Mod0|auto_generated|divider|divider|op_7~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	cin => \Mod0|auto_generated|divider|divider|op_7~34_cout\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~5_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_7~6\);

-- Location: MLABCELL_X72_Y4_N6
\Mod0|auto_generated|divider|divider|op_7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~9_sumout\ = SUM(( (!\Equal0~2_combout\ & (((\A[2]~input_o\)))) # (\Equal0~2_combout\ & ((!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_6~5_sumout\)) # 
-- (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\A[2]~input_o\))))) ) + ( !\B[1]~input_o\ ) + ( \Mod0|auto_generated|divider|divider|op_7~6\ ))
-- \Mod0|auto_generated|divider|divider|op_7~10\ = CARRY(( (!\Equal0~2_combout\ & (((\A[2]~input_o\)))) # (\Equal0~2_combout\ & ((!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_6~5_sumout\)) # 
-- (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\A[2]~input_o\))))) ) + ( !\B[1]~input_o\ ) + ( \Mod0|auto_generated|divider|divider|op_7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	cin => \Mod0|auto_generated|divider|divider|op_7~6\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~9_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_7~10\);

-- Location: MLABCELL_X72_Y4_N9
\Mod0|auto_generated|divider|divider|op_7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~13_sumout\ = SUM(( !\B[2]~input_o\ ) + ( (!\Equal0~2_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[32]~1_combout\)))) # (\Equal0~2_combout\ & ((!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|op_6~9_sumout\)) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod0|auto_generated|divider|divider|StageOut[32]~1_combout\))))) ) + ( \Mod0|auto_generated|divider|divider|op_7~10\ ))
-- \Mod0|auto_generated|divider|divider|op_7~14\ = CARRY(( !\B[2]~input_o\ ) + ( (!\Equal0~2_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[32]~1_combout\)))) # (\Equal0~2_combout\ & ((!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|op_6~9_sumout\)) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod0|auto_generated|divider|divider|StageOut[32]~1_combout\))))) ) + ( \Mod0|auto_generated|divider|divider|op_7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110100000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~1_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_7~10\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~13_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_7~14\);

-- Location: MLABCELL_X72_Y4_N12
\Mod0|auto_generated|divider|divider|op_7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~17_sumout\ = SUM(( (!\Equal0~2_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[33]~4_combout\)))) # (\Equal0~2_combout\ & ((!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- ((\Mod0|auto_generated|divider|divider|op_6~13_sumout\))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Mod0|auto_generated|divider|divider|StageOut[33]~4_combout\)))) ) + ( !\B[3]~input_o\ ) + ( \Mod0|auto_generated|divider|divider|op_7~14\ 
-- ))
-- \Mod0|auto_generated|divider|divider|op_7~18\ = CARRY(( (!\Equal0~2_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[33]~4_combout\)))) # (\Equal0~2_combout\ & ((!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- ((\Mod0|auto_generated|divider|divider|op_6~13_sumout\))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Mod0|auto_generated|divider|divider|StageOut[33]~4_combout\)))) ) + ( !\B[3]~input_o\ ) + ( \Mod0|auto_generated|divider|divider|op_7~14\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[33]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	dataf => \ALT_INV_B[3]~input_o\,
	cin => \Mod0|auto_generated|divider|divider|op_7~14\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~17_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_7~18\);

-- Location: MLABCELL_X72_Y4_N15
\Mod0|auto_generated|divider|divider|op_7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~21_sumout\ = SUM(( !\B[4]~input_o\ ) + ( (!\Equal0~2_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[34]~8_combout\)))) # (\Equal0~2_combout\ & ((!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- ((\Mod0|auto_generated|divider|divider|op_6~17_sumout\))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Mod0|auto_generated|divider|divider|StageOut[34]~8_combout\)))) ) + ( \Mod0|auto_generated|divider|divider|op_7~18\ ))
-- \Mod0|auto_generated|divider|divider|op_7~22\ = CARRY(( !\B[4]~input_o\ ) + ( (!\Equal0~2_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[34]~8_combout\)))) # (\Equal0~2_combout\ & ((!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- ((\Mod0|auto_generated|divider|divider|op_6~17_sumout\))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Mod0|auto_generated|divider|divider|StageOut[34]~8_combout\)))) ) + ( \Mod0|auto_generated|divider|divider|op_7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101001011000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[34]~8_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_7~18\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~21_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_7~22\);

-- Location: MLABCELL_X72_Y4_N18
\Mod0|auto_generated|divider|divider|op_7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~25_sumout\ = SUM(( (!\Equal0~2_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[35]~13_combout\)))) # (\Equal0~2_combout\ & ((!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- ((\Mod0|auto_generated|divider|divider|op_6~21_sumout\))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Mod0|auto_generated|divider|divider|StageOut[35]~13_combout\)))) ) + ( !\B[5]~input_o\ ) + ( \Mod0|auto_generated|divider|divider|op_7~22\ 
-- ))
-- \Mod0|auto_generated|divider|divider|op_7~26\ = CARRY(( (!\Equal0~2_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[35]~13_combout\)))) # (\Equal0~2_combout\ & ((!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- ((\Mod0|auto_generated|divider|divider|op_6~21_sumout\))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Mod0|auto_generated|divider|divider|StageOut[35]~13_combout\)))) ) + ( !\B[5]~input_o\ ) + ( \Mod0|auto_generated|divider|divider|op_7~22\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[35]~13_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	dataf => \ALT_INV_B[5]~input_o\,
	cin => \Mod0|auto_generated|divider|divider|op_7~22\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~25_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_7~26\);

-- Location: MLABCELL_X72_Y4_N21
\Mod0|auto_generated|divider|divider|op_7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~29_sumout\ = SUM(( !\B[6]~input_o\ ) + ( (!\Equal0~2_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[36]~22_combout\)))) # (\Equal0~2_combout\ & ((!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- ((\Mod0|auto_generated|divider|divider|op_6~25_sumout\))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Mod0|auto_generated|divider|divider|StageOut[36]~22_combout\)))) ) + ( \Mod0|auto_generated|divider|divider|op_7~26\ ))
-- \Mod0|auto_generated|divider|divider|op_7~30\ = CARRY(( !\B[6]~input_o\ ) + ( (!\Equal0~2_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[36]~22_combout\)))) # (\Equal0~2_combout\ & ((!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- ((\Mod0|auto_generated|divider|divider|op_6~25_sumout\))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Mod0|auto_generated|divider|divider|StageOut[36]~22_combout\)))) ) + ( \Mod0|auto_generated|divider|divider|op_7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101001011000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[36]~22_combout\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_7~26\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~29_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_7~30\);

-- Location: MLABCELL_X72_Y4_N57
\Mod0|auto_generated|divider|divider|StageOut[45]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[45]~15_combout\ = ( \Mod0|auto_generated|divider|divider|op_6~25_sumout\ & ( (\Equal0~2_combout\ & !\Mod0|auto_generated|divider|divider|op_6~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[45]~15_combout\);

-- Location: MLABCELL_X72_Y4_N24
\Mod0|auto_generated|divider|divider|op_7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_7~30\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~1_sumout\);

-- Location: LABCELL_X73_Y4_N3
\Mod0|auto_generated|divider|divider|selnose[54]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|selnose\(54) = ( \Mod0|auto_generated|divider|divider|op_7~1_sumout\ ) # ( !\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( \B[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|selnose\(54));

-- Location: MLABCELL_X72_Y4_N54
\Mod0|auto_generated|divider|divider|StageOut[45]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[45]~23_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[36]~22_combout\ & ( (!\Equal0~2_combout\) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[36]~22_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[45]~23_combout\);

-- Location: MLABCELL_X72_Y4_N30
\Mod0|auto_generated|divider|divider|StageOut[44]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[44]~14_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[35]~13_combout\ & ( (!\Equal0~2_combout\) # ((\Mod0|auto_generated|divider|divider|op_6~21_sumout\) # 
-- (\Mod0|auto_generated|divider|divider|op_6~1_sumout\)) ) ) # ( !\Mod0|auto_generated|divider|divider|StageOut[35]~13_combout\ & ( (\Equal0~2_combout\ & (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- \Mod0|auto_generated|divider|divider|op_6~21_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[35]~13_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[44]~14_combout\);

-- Location: MLABCELL_X72_Y4_N45
\Mod0|auto_generated|divider|divider|StageOut[43]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[43]~9_combout\ = ( \Mod0|auto_generated|divider|divider|op_6~17_sumout\ & ( ((\Equal0~2_combout\ & !\Mod0|auto_generated|divider|divider|op_6~1_sumout\)) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[34]~8_combout\) ) ) # ( !\Mod0|auto_generated|divider|divider|op_6~17_sumout\ & ( (\Mod0|auto_generated|divider|divider|StageOut[34]~8_combout\ & ((!\Equal0~2_combout\) # 
-- (\Mod0|auto_generated|divider|divider|op_6~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100001011000010110000101101001111010011110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[34]~8_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[43]~9_combout\);

-- Location: MLABCELL_X72_Y4_N42
\Mod0|auto_generated|divider|divider|StageOut[42]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[42]~5_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[33]~4_combout\ & ( (!\Equal0~2_combout\) # ((\Mod0|auto_generated|divider|divider|op_6~13_sumout\) # 
-- (\Mod0|auto_generated|divider|divider|op_6~1_sumout\)) ) ) # ( !\Mod0|auto_generated|divider|divider|StageOut[33]~4_combout\ & ( (\Equal0~2_combout\ & (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- \Mod0|auto_generated|divider|divider|op_6~13_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[33]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[42]~5_combout\);

-- Location: MLABCELL_X72_Y4_N33
\Mod0|auto_generated|divider|divider|StageOut[41]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[41]~2_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[32]~1_combout\ & ( (!\Equal0~2_combout\) # ((\Mod0|auto_generated|divider|divider|op_6~9_sumout\) # 
-- (\Mod0|auto_generated|divider|divider|op_6~1_sumout\)) ) ) # ( !\Mod0|auto_generated|divider|divider|StageOut[32]~1_combout\ & ( (\Equal0~2_combout\ & (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- \Mod0|auto_generated|divider|divider|op_6~9_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~1_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[41]~2_combout\);

-- Location: LABCELL_X68_Y4_N39
\Mod0|auto_generated|divider|divider|StageOut[40]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[40]~0_combout\ = ( \A[2]~input_o\ & ( \Mod0|auto_generated|divider|divider|op_6~1_sumout\ ) ) # ( \A[2]~input_o\ & ( !\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( (!\Equal0~2_combout\) # 
-- (\Mod0|auto_generated|divider|divider|op_6~5_sumout\) ) ) ) # ( !\A[2]~input_o\ & ( !\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( (\Equal0~2_combout\ & \Mod0|auto_generated|divider|divider|op_6~5_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[40]~0_combout\);

-- Location: LABCELL_X73_Y4_N18
\Mod0|auto_generated|divider|divider|op_8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~9_sumout\ = SUM(( !\B[1]~input_o\ ) + ( (!\B[7]~input_o\ & ((!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_7~5_sumout\)) # 
-- (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\A[1]~input_o\))))) # (\B[7]~input_o\ & (((\A[1]~input_o\)))) ) + ( \Mod0|auto_generated|divider|divider|op_8~6\ ))
-- \Mod0|auto_generated|divider|divider|op_8~10\ = CARRY(( !\B[1]~input_o\ ) + ( (!\B[7]~input_o\ & ((!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_7~5_sumout\)) # 
-- (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\A[1]~input_o\))))) # (\B[7]~input_o\ & (((\A[1]~input_o\)))) ) + ( \Mod0|auto_generated|divider|divider|op_8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	cin => \Mod0|auto_generated|divider|divider|op_8~6\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~9_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~10\);

-- Location: LABCELL_X73_Y4_N21
\Mod0|auto_generated|divider|divider|op_8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~13_sumout\ = SUM(( (!\B[7]~input_o\ & ((!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_7~9_sumout\)) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[40]~0_combout\))))) # (\B[7]~input_o\ & (((\Mod0|auto_generated|divider|divider|StageOut[40]~0_combout\)))) ) + ( !\B[2]~input_o\ ) + ( \Mod0|auto_generated|divider|divider|op_8~10\ ))
-- \Mod0|auto_generated|divider|divider|op_8~14\ = CARRY(( (!\B[7]~input_o\ & ((!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_7~9_sumout\)) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[40]~0_combout\))))) # (\B[7]~input_o\ & (((\Mod0|auto_generated|divider|divider|StageOut[40]~0_combout\)))) ) + ( !\B[2]~input_o\ ) + ( \Mod0|auto_generated|divider|divider|op_8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[40]~0_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	cin => \Mod0|auto_generated|divider|divider|op_8~10\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~13_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~14\);

-- Location: LABCELL_X73_Y4_N24
\Mod0|auto_generated|divider|divider|op_8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~17_sumout\ = SUM(( !\B[3]~input_o\ ) + ( (!\B[7]~input_o\ & ((!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_7~13_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\Mod0|auto_generated|divider|divider|StageOut[41]~2_combout\)))) # (\B[7]~input_o\ & (((\Mod0|auto_generated|divider|divider|StageOut[41]~2_combout\)))) ) + ( 
-- \Mod0|auto_generated|divider|divider|op_8~14\ ))
-- \Mod0|auto_generated|divider|divider|op_8~18\ = CARRY(( !\B[3]~input_o\ ) + ( (!\B[7]~input_o\ & ((!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_7~13_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\Mod0|auto_generated|divider|divider|StageOut[41]~2_combout\)))) # (\B[7]~input_o\ & (((\Mod0|auto_generated|divider|divider|StageOut[41]~2_combout\)))) ) + ( 
-- \Mod0|auto_generated|divider|divider|op_8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110000111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[41]~2_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~14\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~17_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~18\);

-- Location: LABCELL_X73_Y4_N27
\Mod0|auto_generated|divider|divider|op_8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~21_sumout\ = SUM(( !\B[4]~input_o\ ) + ( (!\B[7]~input_o\ & ((!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_7~17_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\Mod0|auto_generated|divider|divider|StageOut[42]~5_combout\)))) # (\B[7]~input_o\ & (((\Mod0|auto_generated|divider|divider|StageOut[42]~5_combout\)))) ) + ( 
-- \Mod0|auto_generated|divider|divider|op_8~18\ ))
-- \Mod0|auto_generated|divider|divider|op_8~22\ = CARRY(( !\B[4]~input_o\ ) + ( (!\B[7]~input_o\ & ((!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_7~17_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\Mod0|auto_generated|divider|divider|StageOut[42]~5_combout\)))) # (\B[7]~input_o\ & (((\Mod0|auto_generated|divider|divider|StageOut[42]~5_combout\)))) ) + ( 
-- \Mod0|auto_generated|divider|divider|op_8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110000111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[42]~5_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~18\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~21_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~22\);

-- Location: LABCELL_X73_Y4_N30
\Mod0|auto_generated|divider|divider|op_8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~25_sumout\ = SUM(( !\B[5]~input_o\ ) + ( (!\B[7]~input_o\ & ((!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_7~21_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\Mod0|auto_generated|divider|divider|StageOut[43]~9_combout\)))) # (\B[7]~input_o\ & (((\Mod0|auto_generated|divider|divider|StageOut[43]~9_combout\)))) ) + ( 
-- \Mod0|auto_generated|divider|divider|op_8~22\ ))
-- \Mod0|auto_generated|divider|divider|op_8~26\ = CARRY(( !\B[5]~input_o\ ) + ( (!\B[7]~input_o\ & ((!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_7~21_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\Mod0|auto_generated|divider|divider|StageOut[43]~9_combout\)))) # (\B[7]~input_o\ & (((\Mod0|auto_generated|divider|divider|StageOut[43]~9_combout\)))) ) + ( 
-- \Mod0|auto_generated|divider|divider|op_8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110000111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[43]~9_combout\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~22\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~25_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~26\);

-- Location: LABCELL_X73_Y4_N33
\Mod0|auto_generated|divider|divider|op_8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~29_sumout\ = SUM(( !\B[6]~input_o\ ) + ( (!\B[7]~input_o\ & ((!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_7~25_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\Mod0|auto_generated|divider|divider|StageOut[44]~14_combout\)))) # (\B[7]~input_o\ & (((\Mod0|auto_generated|divider|divider|StageOut[44]~14_combout\)))) ) + ( 
-- \Mod0|auto_generated|divider|divider|op_8~26\ ))
-- \Mod0|auto_generated|divider|divider|op_8~30\ = CARRY(( !\B[6]~input_o\ ) + ( (!\B[7]~input_o\ & ((!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_7~25_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\Mod0|auto_generated|divider|divider|StageOut[44]~14_combout\)))) # (\B[7]~input_o\ & (((\Mod0|auto_generated|divider|divider|StageOut[44]~14_combout\)))) ) + ( 
-- \Mod0|auto_generated|divider|divider|op_8~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110000111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[44]~14_combout\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~26\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~29_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~30\);

-- Location: LABCELL_X73_Y4_N36
\Mod0|auto_generated|divider|divider|op_8~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~33_sumout\ = SUM(( !\B[7]~input_o\ ) + ( (!\Mod0|auto_generated|divider|divider|selnose\(54) & (\Mod0|auto_generated|divider|divider|op_7~29_sumout\)) # (\Mod0|auto_generated|divider|divider|selnose\(54) & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[45]~23_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[45]~15_combout\)))) ) + ( \Mod0|auto_generated|divider|divider|op_8~30\ ))
-- \Mod0|auto_generated|divider|divider|op_8~34\ = CARRY(( !\B[7]~input_o\ ) + ( (!\Mod0|auto_generated|divider|divider|selnose\(54) & (\Mod0|auto_generated|divider|divider|op_7~29_sumout\)) # (\Mod0|auto_generated|divider|divider|selnose\(54) & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[45]~23_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[45]~15_combout\)))) ) + ( \Mod0|auto_generated|divider|divider|op_8~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011001010000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[45]~15_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_selnose\(54),
	datad => \ALT_INV_B[7]~input_o\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[45]~23_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~30\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~33_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~34\);

-- Location: LABCELL_X73_Y4_N39
\Mod0|auto_generated|divider|divider|op_8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_8~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_8~34\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~1_sumout\);

-- Location: LABCELL_X71_Y3_N48
\temp_residuo~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_residuo~0_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( (!\Equal0~1_combout\ & \A[0]~input_o\) ) ) # ( !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( (!\Equal0~1_combout\ & 
-- \Mod0|auto_generated|divider|divider|op_8~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \temp_residuo~0_combout\);

-- Location: LABCELL_X73_Y4_N6
\temp_residuo~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_residuo~1_combout\ = ( \Mod0|auto_generated|divider|divider|selnose\(54) & ( \Mod0|auto_generated|divider|divider|op_8~9_sumout\ & ( (!\Equal0~1_combout\ & ((!\Mod0|auto_generated|divider|divider|op_8~1_sumout\) # (\A[1]~input_o\))) ) ) ) # ( 
-- !\Mod0|auto_generated|divider|divider|selnose\(54) & ( \Mod0|auto_generated|divider|divider|op_8~9_sumout\ & ( (!\Equal0~1_combout\ & ((!\Mod0|auto_generated|divider|divider|op_8~1_sumout\) # (\Mod0|auto_generated|divider|divider|op_7~5_sumout\))) ) ) ) # 
-- ( \Mod0|auto_generated|divider|divider|selnose\(54) & ( !\Mod0|auto_generated|divider|divider|op_8~9_sumout\ & ( (\A[1]~input_o\ & (!\Equal0~1_combout\ & \Mod0|auto_generated|divider|divider|op_8~1_sumout\)) ) ) ) # ( 
-- !\Mod0|auto_generated|divider|divider|selnose\(54) & ( !\Mod0|auto_generated|divider|divider|op_8~9_sumout\ & ( (!\Equal0~1_combout\ & (\Mod0|auto_generated|divider|divider|op_7~5_sumout\ & \Mod0|auto_generated|divider|divider|op_8~1_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000100010011001100000011001100110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_selnose\(54),
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\,
	combout => \temp_residuo~1_combout\);

-- Location: LABCELL_X73_Y4_N42
\temp_residuo~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_residuo~2_combout\ = ( \Mod0|auto_generated|divider|divider|selnose\(54) & ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( (!\Equal0~1_combout\ & \Mod0|auto_generated|divider|divider|StageOut[40]~0_combout\) ) ) ) # ( 
-- !\Mod0|auto_generated|divider|divider|selnose\(54) & ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( (!\Equal0~1_combout\ & \Mod0|auto_generated|divider|divider|op_7~9_sumout\) ) ) ) # ( \Mod0|auto_generated|divider|divider|selnose\(54) & ( 
-- !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( (!\Equal0~1_combout\ & \Mod0|auto_generated|divider|divider|op_8~13_sumout\) ) ) ) # ( !\Mod0|auto_generated|divider|divider|selnose\(54) & ( !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( 
-- (!\Equal0~1_combout\ & \Mod0|auto_generated|divider|divider|op_8~13_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001010000010100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~1_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[40]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\,
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_selnose\(54),
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \temp_residuo~2_combout\);

-- Location: MLABCELL_X72_Y4_N36
\temp_residuo~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_residuo~3_combout\ = ( \Mod0|auto_generated|divider|divider|op_7~13_sumout\ & ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( (!\Equal0~1_combout\ & ((!\Mod0|auto_generated|divider|divider|selnose\(54)) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[41]~2_combout\))) ) ) ) # ( !\Mod0|auto_generated|divider|divider|op_7~13_sumout\ & ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( (\Mod0|auto_generated|divider|divider|selnose\(54) & 
-- (!\Equal0~1_combout\ & \Mod0|auto_generated|divider|divider|StageOut[41]~2_combout\)) ) ) ) # ( \Mod0|auto_generated|divider|divider|op_7~13_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( (!\Equal0~1_combout\ & 
-- \Mod0|auto_generated|divider|divider|op_8~17_sumout\) ) ) ) # ( !\Mod0|auto_generated|divider|divider|op_7~13_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( (!\Equal0~1_combout\ & \Mod0|auto_generated|divider|divider|op_8~17_sumout\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000100000001001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_selnose\(54),
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[41]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\,
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \temp_residuo~3_combout\);

-- Location: LABCELL_X73_Y4_N48
\temp_residuo~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_residuo~4_combout\ = ( !\Equal0~1_combout\ & ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( (!\Mod0|auto_generated|divider|divider|selnose\(54) & (\Mod0|auto_generated|divider|divider|op_7~17_sumout\)) # 
-- (\Mod0|auto_generated|divider|divider|selnose\(54) & ((\Mod0|auto_generated|divider|divider|StageOut[42]~5_combout\))) ) ) ) # ( !\Equal0~1_combout\ & ( !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( 
-- \Mod0|auto_generated|divider|divider|op_8~21_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000100010011101110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_selnose\(54),
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[42]~5_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \temp_residuo~4_combout\);

-- Location: MLABCELL_X72_Y4_N48
\temp_residuo~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_residuo~5_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[43]~9_combout\ & ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( (!\Equal0~1_combout\ & ((\Mod0|auto_generated|divider|divider|op_7~21_sumout\) # 
-- (\Mod0|auto_generated|divider|divider|selnose\(54)))) ) ) ) # ( !\Mod0|auto_generated|divider|divider|StageOut[43]~9_combout\ & ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( (!\Mod0|auto_generated|divider|divider|selnose\(54) & 
-- (!\Equal0~1_combout\ & \Mod0|auto_generated|divider|divider|op_7~21_sumout\)) ) ) ) # ( \Mod0|auto_generated|divider|divider|StageOut[43]~9_combout\ & ( !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( (!\Equal0~1_combout\ & 
-- \Mod0|auto_generated|divider|divider|op_8~25_sumout\) ) ) ) # ( !\Mod0|auto_generated|divider|divider|StageOut[43]~9_combout\ & ( !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( (!\Equal0~1_combout\ & 
-- \Mod0|auto_generated|divider|divider|op_8~25_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000100010000100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_selnose\(54),
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\,
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[43]~9_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \temp_residuo~5_combout\);

-- Location: LABCELL_X73_Y4_N54
\temp_residuo~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_residuo~6_combout\ = ( \Mod0|auto_generated|divider|divider|selnose\(54) & ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( (!\Equal0~1_combout\ & \Mod0|auto_generated|divider|divider|StageOut[44]~14_combout\) ) ) ) # ( 
-- !\Mod0|auto_generated|divider|divider|selnose\(54) & ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( (\Mod0|auto_generated|divider|divider|op_7~25_sumout\ & !\Equal0~1_combout\) ) ) ) # ( \Mod0|auto_generated|divider|divider|selnose\(54) & ( 
-- !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( (\Mod0|auto_generated|divider|divider|op_8~29_sumout\ & !\Equal0~1_combout\) ) ) ) # ( !\Mod0|auto_generated|divider|divider|selnose\(54) & ( !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( 
-- (\Mod0|auto_generated|divider|divider|op_8~29_sumout\ & !\Equal0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000110000001100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\,
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[44]~14_combout\,
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_selnose\(54),
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \temp_residuo~6_combout\);

-- Location: LABCELL_X73_Y4_N0
\temp_residuo~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_residuo~7_combout\ = ( \Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( (!\Mod0|auto_generated|divider|divider|StageOut[45]~15_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[45]~23_combout\) ) ) # ( 
-- !\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( (!\B[7]~input_o\ & (((!\Mod0|auto_generated|divider|divider|op_7~29_sumout\)))) # (\B[7]~input_o\ & (!\Mod0|auto_generated|divider|divider|StageOut[45]~15_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[45]~23_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101001000000111010100100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[45]~15_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[45]~23_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \temp_residuo~7_combout\);

-- Location: LABCELL_X71_Y3_N39
\temp_residuo~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_residuo~8_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( (!\Equal0~1_combout\ & !\temp_residuo~7_combout\) ) ) # ( !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( (\Mod0|auto_generated|divider|divider|op_8~33_sumout\ & 
-- !\Equal0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_temp_residuo~7_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \temp_residuo~8_combout\);

-- Location: MLABCELL_X8_Y48_N0
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



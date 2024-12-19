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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/19/2024 20:31:18"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Execute_State
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Execute_State_vhd_vec_tst IS
END Execute_State_vhd_vec_tst;
ARCHITECTURE Execute_State_arch OF Execute_State_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL exec_done : STD_LOGIC;
SIGNAL opcode : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL operand : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL result : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT Execute_State
	PORT (
	exec_done : OUT STD_LOGIC;
	opcode : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	operand : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Execute_State
	PORT MAP (
-- list connections between master ports and signals
	exec_done => exec_done,
	opcode => opcode,
	operand => operand,
	result => result
	);
-- opcode[2]
t_prcs_opcode_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		opcode(2) <= '0';
		WAIT FOR 40000 ps;
		opcode(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	opcode(2) <= '0';
WAIT;
END PROCESS t_prcs_opcode_2;
-- opcode[1]
t_prcs_opcode_1: PROCESS
BEGIN
LOOP
	opcode(1) <= '0';
	WAIT FOR 20000 ps;
	opcode(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_opcode_1;
-- opcode[0]
t_prcs_opcode_0: PROCESS
BEGIN
LOOP
	opcode(0) <= '0';
	WAIT FOR 10000 ps;
	opcode(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_opcode_0;
-- operand[4]
t_prcs_operand_4: PROCESS
BEGIN
	operand(4) <= '0';
	WAIT FOR 30000 ps;
	operand(4) <= '1';
	WAIT FOR 10000 ps;
	operand(4) <= '0';
	WAIT FOR 10000 ps;
	operand(4) <= '1';
	WAIT FOR 10000 ps;
	operand(4) <= '0';
	WAIT FOR 30000 ps;
	operand(4) <= '1';
	WAIT FOR 30000 ps;
	operand(4) <= '0';
	WAIT FOR 20000 ps;
	operand(4) <= '1';
	WAIT FOR 10000 ps;
	operand(4) <= '0';
	WAIT FOR 10000 ps;
	operand(4) <= '1';
	WAIT FOR 10000 ps;
	operand(4) <= '0';
	WAIT FOR 30000 ps;
	operand(4) <= '1';
	WAIT FOR 10000 ps;
	operand(4) <= '0';
	WAIT FOR 30000 ps;
	operand(4) <= '1';
	WAIT FOR 10000 ps;
	operand(4) <= '0';
	WAIT FOR 10000 ps;
	operand(4) <= '1';
	WAIT FOR 20000 ps;
	operand(4) <= '0';
	WAIT FOR 10000 ps;
	operand(4) <= '1';
	WAIT FOR 40000 ps;
	operand(4) <= '0';
	WAIT FOR 20000 ps;
	operand(4) <= '1';
	WAIT FOR 20000 ps;
	operand(4) <= '0';
	WAIT FOR 20000 ps;
	operand(4) <= '1';
	WAIT FOR 20000 ps;
	operand(4) <= '0';
	WAIT FOR 60000 ps;
	operand(4) <= '1';
	WAIT FOR 30000 ps;
	operand(4) <= '0';
	WAIT FOR 30000 ps;
	operand(4) <= '1';
	WAIT FOR 30000 ps;
	operand(4) <= '0';
	WAIT FOR 10000 ps;
	operand(4) <= '1';
	WAIT FOR 10000 ps;
	operand(4) <= '0';
	WAIT FOR 10000 ps;
	operand(4) <= '1';
	WAIT FOR 20000 ps;
	operand(4) <= '0';
	WAIT FOR 10000 ps;
	operand(4) <= '1';
	WAIT FOR 10000 ps;
	operand(4) <= '0';
	WAIT FOR 50000 ps;
	operand(4) <= '1';
	WAIT FOR 10000 ps;
	operand(4) <= '0';
	WAIT FOR 10000 ps;
	operand(4) <= '1';
	WAIT FOR 10000 ps;
	operand(4) <= '0';
	WAIT FOR 20000 ps;
	operand(4) <= '1';
	WAIT FOR 10000 ps;
	operand(4) <= '0';
	WAIT FOR 10000 ps;
	operand(4) <= '1';
	WAIT FOR 10000 ps;
	operand(4) <= '0';
	WAIT FOR 20000 ps;
	operand(4) <= '1';
	WAIT FOR 30000 ps;
	operand(4) <= '0';
	WAIT FOR 10000 ps;
	operand(4) <= '1';
	WAIT FOR 20000 ps;
	operand(4) <= '0';
	WAIT FOR 40000 ps;
	operand(4) <= '1';
	WAIT FOR 10000 ps;
	operand(4) <= '0';
	WAIT FOR 30000 ps;
	operand(4) <= '1';
	WAIT FOR 10000 ps;
	operand(4) <= '0';
	WAIT FOR 20000 ps;
	operand(4) <= '1';
WAIT;
END PROCESS t_prcs_operand_4;
-- operand[3]
t_prcs_operand_3: PROCESS
BEGIN
	operand(3) <= '0';
	WAIT FOR 10000 ps;
	operand(3) <= '1';
	WAIT FOR 10000 ps;
	operand(3) <= '0';
	WAIT FOR 10000 ps;
	operand(3) <= '1';
	WAIT FOR 20000 ps;
	operand(3) <= '0';
	WAIT FOR 20000 ps;
	operand(3) <= '1';
	WAIT FOR 20000 ps;
	operand(3) <= '0';
	WAIT FOR 10000 ps;
	operand(3) <= '1';
	WAIT FOR 30000 ps;
	operand(3) <= '0';
	WAIT FOR 20000 ps;
	operand(3) <= '1';
	WAIT FOR 10000 ps;
	operand(3) <= '0';
	WAIT FOR 20000 ps;
	operand(3) <= '1';
	WAIT FOR 20000 ps;
	operand(3) <= '0';
	WAIT FOR 30000 ps;
	operand(3) <= '1';
	WAIT FOR 10000 ps;
	operand(3) <= '0';
	WAIT FOR 30000 ps;
	operand(3) <= '1';
	WAIT FOR 10000 ps;
	operand(3) <= '0';
	WAIT FOR 10000 ps;
	operand(3) <= '1';
	WAIT FOR 10000 ps;
	operand(3) <= '0';
	WAIT FOR 10000 ps;
	operand(3) <= '1';
	WAIT FOR 20000 ps;
	operand(3) <= '0';
	WAIT FOR 20000 ps;
	operand(3) <= '1';
	WAIT FOR 20000 ps;
	operand(3) <= '0';
	WAIT FOR 10000 ps;
	operand(3) <= '1';
	WAIT FOR 10000 ps;
	operand(3) <= '0';
	WAIT FOR 10000 ps;
	operand(3) <= '1';
	WAIT FOR 30000 ps;
	operand(3) <= '0';
	WAIT FOR 10000 ps;
	operand(3) <= '1';
	WAIT FOR 20000 ps;
	operand(3) <= '0';
	WAIT FOR 30000 ps;
	operand(3) <= '1';
	WAIT FOR 20000 ps;
	operand(3) <= '0';
	WAIT FOR 10000 ps;
	operand(3) <= '1';
	WAIT FOR 30000 ps;
	operand(3) <= '0';
	WAIT FOR 10000 ps;
	operand(3) <= '1';
	WAIT FOR 10000 ps;
	operand(3) <= '0';
	WAIT FOR 20000 ps;
	operand(3) <= '1';
	WAIT FOR 20000 ps;
	operand(3) <= '0';
	WAIT FOR 10000 ps;
	operand(3) <= '1';
	WAIT FOR 10000 ps;
	operand(3) <= '0';
	WAIT FOR 60000 ps;
	operand(3) <= '1';
	WAIT FOR 10000 ps;
	operand(3) <= '0';
	WAIT FOR 60000 ps;
	operand(3) <= '1';
	WAIT FOR 20000 ps;
	operand(3) <= '0';
	WAIT FOR 20000 ps;
	operand(3) <= '1';
	WAIT FOR 10000 ps;
	operand(3) <= '0';
	WAIT FOR 20000 ps;
	operand(3) <= '1';
	WAIT FOR 40000 ps;
	operand(3) <= '0';
	WAIT FOR 30000 ps;
	operand(3) <= '1';
	WAIT FOR 20000 ps;
	operand(3) <= '0';
	WAIT FOR 10000 ps;
	operand(3) <= '1';
	WAIT FOR 10000 ps;
	operand(3) <= '0';
	WAIT FOR 20000 ps;
	operand(3) <= '1';
	WAIT FOR 30000 ps;
	operand(3) <= '0';
WAIT;
END PROCESS t_prcs_operand_3;
-- operand[2]
t_prcs_operand_2: PROCESS
BEGIN
	operand(2) <= '1';
	WAIT FOR 20000 ps;
	operand(2) <= '0';
	WAIT FOR 10000 ps;
	operand(2) <= '1';
	WAIT FOR 10000 ps;
	operand(2) <= '0';
	WAIT FOR 10000 ps;
	operand(2) <= '1';
	WAIT FOR 60000 ps;
	operand(2) <= '0';
	WAIT FOR 10000 ps;
	operand(2) <= '1';
	WAIT FOR 20000 ps;
	operand(2) <= '0';
	WAIT FOR 30000 ps;
	operand(2) <= '1';
	WAIT FOR 20000 ps;
	operand(2) <= '0';
	WAIT FOR 10000 ps;
	operand(2) <= '1';
	WAIT FOR 20000 ps;
	operand(2) <= '0';
	WAIT FOR 20000 ps;
	operand(2) <= '1';
	WAIT FOR 10000 ps;
	operand(2) <= '0';
	WAIT FOR 20000 ps;
	operand(2) <= '1';
	WAIT FOR 10000 ps;
	operand(2) <= '0';
	WAIT FOR 10000 ps;
	operand(2) <= '1';
	WAIT FOR 10000 ps;
	operand(2) <= '0';
	WAIT FOR 20000 ps;
	operand(2) <= '1';
	WAIT FOR 20000 ps;
	operand(2) <= '0';
	WAIT FOR 20000 ps;
	operand(2) <= '1';
	WAIT FOR 10000 ps;
	operand(2) <= '0';
	WAIT FOR 30000 ps;
	operand(2) <= '1';
	WAIT FOR 10000 ps;
	operand(2) <= '0';
	WAIT FOR 20000 ps;
	operand(2) <= '1';
	WAIT FOR 10000 ps;
	operand(2) <= '0';
	WAIT FOR 30000 ps;
	operand(2) <= '1';
	WAIT FOR 10000 ps;
	operand(2) <= '0';
	WAIT FOR 10000 ps;
	operand(2) <= '1';
	WAIT FOR 10000 ps;
	operand(2) <= '0';
	WAIT FOR 80000 ps;
	operand(2) <= '1';
	WAIT FOR 30000 ps;
	operand(2) <= '0';
	WAIT FOR 10000 ps;
	operand(2) <= '1';
	WAIT FOR 20000 ps;
	operand(2) <= '0';
	WAIT FOR 10000 ps;
	operand(2) <= '1';
	WAIT FOR 20000 ps;
	operand(2) <= '0';
	WAIT FOR 10000 ps;
	operand(2) <= '1';
	WAIT FOR 10000 ps;
	operand(2) <= '0';
	WAIT FOR 60000 ps;
	operand(2) <= '1';
	WAIT FOR 10000 ps;
	operand(2) <= '0';
	WAIT FOR 20000 ps;
	operand(2) <= '1';
	WAIT FOR 10000 ps;
	operand(2) <= '0';
	WAIT FOR 10000 ps;
	operand(2) <= '1';
	WAIT FOR 70000 ps;
	operand(2) <= '0';
	WAIT FOR 20000 ps;
	operand(2) <= '1';
	WAIT FOR 10000 ps;
	operand(2) <= '0';
	WAIT FOR 30000 ps;
	operand(2) <= '1';
	WAIT FOR 30000 ps;
	operand(2) <= '0';
	WAIT FOR 20000 ps;
	operand(2) <= '1';
WAIT;
END PROCESS t_prcs_operand_2;
-- operand[1]
t_prcs_operand_1: PROCESS
BEGIN
	operand(1) <= '0';
	WAIT FOR 10000 ps;
	operand(1) <= '1';
	WAIT FOR 10000 ps;
	operand(1) <= '0';
	WAIT FOR 10000 ps;
	operand(1) <= '1';
	WAIT FOR 10000 ps;
	operand(1) <= '0';
	WAIT FOR 10000 ps;
	operand(1) <= '1';
	WAIT FOR 10000 ps;
	operand(1) <= '0';
	WAIT FOR 30000 ps;
	operand(1) <= '1';
	WAIT FOR 10000 ps;
	operand(1) <= '0';
	WAIT FOR 10000 ps;
	operand(1) <= '1';
	WAIT FOR 20000 ps;
	operand(1) <= '0';
	WAIT FOR 10000 ps;
	operand(1) <= '1';
	WAIT FOR 10000 ps;
	operand(1) <= '0';
	WAIT FOR 10000 ps;
	operand(1) <= '1';
	WAIT FOR 10000 ps;
	operand(1) <= '0';
	WAIT FOR 10000 ps;
	operand(1) <= '1';
	WAIT FOR 40000 ps;
	operand(1) <= '0';
	WAIT FOR 10000 ps;
	operand(1) <= '1';
	WAIT FOR 20000 ps;
	operand(1) <= '0';
	WAIT FOR 20000 ps;
	operand(1) <= '1';
	WAIT FOR 10000 ps;
	operand(1) <= '0';
	WAIT FOR 20000 ps;
	operand(1) <= '1';
	WAIT FOR 20000 ps;
	operand(1) <= '0';
	WAIT FOR 10000 ps;
	operand(1) <= '1';
	WAIT FOR 20000 ps;
	operand(1) <= '0';
	WAIT FOR 30000 ps;
	operand(1) <= '1';
	WAIT FOR 10000 ps;
	operand(1) <= '0';
	WAIT FOR 20000 ps;
	operand(1) <= '1';
	WAIT FOR 10000 ps;
	operand(1) <= '0';
	WAIT FOR 20000 ps;
	operand(1) <= '1';
	WAIT FOR 10000 ps;
	operand(1) <= '0';
	WAIT FOR 10000 ps;
	operand(1) <= '1';
	WAIT FOR 20000 ps;
	operand(1) <= '0';
	WAIT FOR 20000 ps;
	operand(1) <= '1';
	WAIT FOR 40000 ps;
	operand(1) <= '0';
	WAIT FOR 10000 ps;
	operand(1) <= '1';
	WAIT FOR 30000 ps;
	operand(1) <= '0';
	WAIT FOR 10000 ps;
	operand(1) <= '1';
	WAIT FOR 30000 ps;
	operand(1) <= '0';
	WAIT FOR 30000 ps;
	operand(1) <= '1';
	WAIT FOR 10000 ps;
	operand(1) <= '0';
	WAIT FOR 20000 ps;
	operand(1) <= '1';
	WAIT FOR 30000 ps;
	operand(1) <= '0';
	WAIT FOR 10000 ps;
	operand(1) <= '1';
	WAIT FOR 60000 ps;
	operand(1) <= '0';
	WAIT FOR 10000 ps;
	operand(1) <= '1';
	WAIT FOR 50000 ps;
	operand(1) <= '0';
	WAIT FOR 10000 ps;
	operand(1) <= '1';
	WAIT FOR 30000 ps;
	operand(1) <= '0';
	WAIT FOR 10000 ps;
	operand(1) <= '1';
	WAIT FOR 10000 ps;
	operand(1) <= '0';
	WAIT FOR 20000 ps;
	operand(1) <= '1';
	WAIT FOR 10000 ps;
	operand(1) <= '0';
	WAIT FOR 10000 ps;
	operand(1) <= '1';
	WAIT FOR 20000 ps;
	operand(1) <= '0';
	WAIT FOR 10000 ps;
	operand(1) <= '1';
	WAIT FOR 10000 ps;
	operand(1) <= '0';
	WAIT FOR 10000 ps;
	operand(1) <= '1';
WAIT;
END PROCESS t_prcs_operand_1;
-- operand[0]
t_prcs_operand_0: PROCESS
BEGIN
	operand(0) <= '1';
	WAIT FOR 10000 ps;
	operand(0) <= '0';
	WAIT FOR 10000 ps;
	operand(0) <= '1';
	WAIT FOR 10000 ps;
	operand(0) <= '0';
	WAIT FOR 20000 ps;
	operand(0) <= '1';
	WAIT FOR 20000 ps;
	operand(0) <= '0';
	WAIT FOR 60000 ps;
	operand(0) <= '1';
	WAIT FOR 10000 ps;
	operand(0) <= '0';
	WAIT FOR 50000 ps;
	operand(0) <= '1';
	WAIT FOR 10000 ps;
	operand(0) <= '0';
	WAIT FOR 20000 ps;
	operand(0) <= '1';
	WAIT FOR 50000 ps;
	operand(0) <= '0';
	WAIT FOR 10000 ps;
	operand(0) <= '1';
	WAIT FOR 20000 ps;
	operand(0) <= '0';
	WAIT FOR 30000 ps;
	operand(0) <= '1';
	WAIT FOR 10000 ps;
	operand(0) <= '0';
	WAIT FOR 20000 ps;
	operand(0) <= '1';
	WAIT FOR 30000 ps;
	operand(0) <= '0';
	WAIT FOR 20000 ps;
	operand(0) <= '1';
	WAIT FOR 10000 ps;
	operand(0) <= '0';
	WAIT FOR 10000 ps;
	operand(0) <= '1';
	WAIT FOR 10000 ps;
	operand(0) <= '0';
	WAIT FOR 20000 ps;
	operand(0) <= '1';
	WAIT FOR 10000 ps;
	operand(0) <= '0';
	WAIT FOR 10000 ps;
	operand(0) <= '1';
	WAIT FOR 10000 ps;
	operand(0) <= '0';
	WAIT FOR 30000 ps;
	operand(0) <= '1';
	WAIT FOR 30000 ps;
	operand(0) <= '0';
	WAIT FOR 10000 ps;
	operand(0) <= '1';
	WAIT FOR 10000 ps;
	operand(0) <= '0';
	WAIT FOR 10000 ps;
	operand(0) <= '1';
	WAIT FOR 20000 ps;
	operand(0) <= '0';
	WAIT FOR 40000 ps;
	operand(0) <= '1';
	WAIT FOR 40000 ps;
	operand(0) <= '0';
	WAIT FOR 20000 ps;
	operand(0) <= '1';
	WAIT FOR 10000 ps;
	operand(0) <= '0';
	WAIT FOR 20000 ps;
	operand(0) <= '1';
	WAIT FOR 60000 ps;
	operand(0) <= '0';
	WAIT FOR 10000 ps;
	operand(0) <= '1';
	WAIT FOR 30000 ps;
	operand(0) <= '0';
	WAIT FOR 10000 ps;
	operand(0) <= '1';
	WAIT FOR 20000 ps;
	operand(0) <= '0';
	WAIT FOR 20000 ps;
	operand(0) <= '1';
	WAIT FOR 10000 ps;
	operand(0) <= '0';
	WAIT FOR 20000 ps;
	operand(0) <= '1';
	WAIT FOR 20000 ps;
	operand(0) <= '0';
	WAIT FOR 10000 ps;
	operand(0) <= '1';
	WAIT FOR 20000 ps;
	operand(0) <= '0';
	WAIT FOR 10000 ps;
	operand(0) <= '1';
	WAIT FOR 20000 ps;
	operand(0) <= '0';
WAIT;
END PROCESS t_prcs_operand_0;
END Execute_State_arch;

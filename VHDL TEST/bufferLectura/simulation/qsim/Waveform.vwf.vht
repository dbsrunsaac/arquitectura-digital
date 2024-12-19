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
-- Generated on "11/19/2024 20:10:05"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Instruccion_Buffer
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Instruccion_Buffer_vhd_vec_tst IS
END Instruccion_Buffer_vhd_vec_tst;
ARCHITECTURE Instruccion_Buffer_arch OF Instruccion_Buffer_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL instr_in : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL instr_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL load : STD_LOGIC;
COMPONENT Instruccion_Buffer
	PORT (
	clk : IN STD_LOGIC;
	instr_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	instr_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	load : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Instruccion_Buffer
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	instr_in => instr_in,
	instr_out => instr_out,
	load => load
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- instr_in[7]
t_prcs_instr_in_7: PROCESS
BEGIN
	instr_in(7) <= '0';
	WAIT FOR 10000 ps;
	instr_in(7) <= '1';
	WAIT FOR 10000 ps;
	instr_in(7) <= '0';
	WAIT FOR 10000 ps;
	instr_in(7) <= '1';
	WAIT FOR 10000 ps;
	instr_in(7) <= '0';
WAIT;
END PROCESS t_prcs_instr_in_7;
-- instr_in[6]
t_prcs_instr_in_6: PROCESS
BEGIN
	instr_in(6) <= '1';
	WAIT FOR 30000 ps;
	instr_in(6) <= '0';
WAIT;
END PROCESS t_prcs_instr_in_6;
-- instr_in[5]
t_prcs_instr_in_5: PROCESS
BEGIN
	instr_in(5) <= '1';
	WAIT FOR 20000 ps;
	instr_in(5) <= '0';
	WAIT FOR 10000 ps;
	instr_in(5) <= '1';
	WAIT FOR 10000 ps;
	instr_in(5) <= '0';
WAIT;
END PROCESS t_prcs_instr_in_5;
-- instr_in[4]
t_prcs_instr_in_4: PROCESS
BEGIN
	instr_in(4) <= '0';
	WAIT FOR 20000 ps;
	instr_in(4) <= '1';
	WAIT FOR 10000 ps;
	instr_in(4) <= '0';
WAIT;
END PROCESS t_prcs_instr_in_4;
-- instr_in[3]
t_prcs_instr_in_3: PROCESS
BEGIN
	instr_in(3) <= '1';
	WAIT FOR 10000 ps;
	instr_in(3) <= '0';
	WAIT FOR 10000 ps;
	instr_in(3) <= '1';
	WAIT FOR 20000 ps;
	instr_in(3) <= '0';
WAIT;
END PROCESS t_prcs_instr_in_3;
-- instr_in[2]
t_prcs_instr_in_2: PROCESS
BEGIN
	instr_in(2) <= '1';
	WAIT FOR 40000 ps;
	instr_in(2) <= '0';
WAIT;
END PROCESS t_prcs_instr_in_2;
-- instr_in[1]
t_prcs_instr_in_1: PROCESS
BEGIN
	instr_in(1) <= '0';
	WAIT FOR 20000 ps;
	instr_in(1) <= '1';
	WAIT FOR 20000 ps;
	instr_in(1) <= '0';
WAIT;
END PROCESS t_prcs_instr_in_1;
-- instr_in[0]
t_prcs_instr_in_0: PROCESS
BEGIN
	instr_in(0) <= '0';
	WAIT FOR 10000 ps;
	instr_in(0) <= '1';
	WAIT FOR 30000 ps;
	instr_in(0) <= '0';
WAIT;
END PROCESS t_prcs_instr_in_0;

-- load
t_prcs_load: PROCESS
BEGIN
	load <= '1';
	WAIT FOR 20000 ps;
	load <= '0';
WAIT;
END PROCESS t_prcs_load;
END Instruccion_Buffer_arch;

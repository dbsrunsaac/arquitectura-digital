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
-- Generated on "11/12/2024 20:51:43"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Demux1to2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Demux1to2_vhd_vec_tst IS
END Demux1to2_vhd_vec_tst;
ARCHITECTURE Demux1to2_arch OF Demux1to2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL Sel : STD_LOGIC;
SIGNAL Y0 : STD_LOGIC;
SIGNAL Y1 : STD_LOGIC;
COMPONENT Demux1to2
	PORT (
	A : IN STD_LOGIC;
	Sel : IN STD_LOGIC;
	Y0 : OUT STD_LOGIC;
	Y1 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Demux1to2
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	Sel => Sel,
	Y0 => Y0,
	Y1 => Y1
	);

-- A
t_prcs_A: PROCESS
BEGIN
	A <= '0';
	WAIT FOR 10000 ps;
	A <= '1';
	WAIT FOR 20000 ps;
	A <= '0';
	WAIT FOR 30000 ps;
	A <= '1';
	WAIT FOR 20000 ps;
	A <= '0';
	WAIT FOR 10000 ps;
	A <= '1';
	WAIT FOR 20000 ps;
	A <= '0';
	WAIT FOR 10000 ps;
	A <= '1';
	WAIT FOR 40000 ps;
	A <= '0';
	WAIT FOR 20000 ps;
	A <= '1';
	WAIT FOR 10000 ps;
	A <= '0';
	WAIT FOR 20000 ps;
	A <= '1';
	WAIT FOR 10000 ps;
	A <= '0';
	WAIT FOR 20000 ps;
	A <= '1';
	WAIT FOR 20000 ps;
	A <= '0';
	WAIT FOR 30000 ps;
	A <= '1';
	WAIT FOR 30000 ps;
	A <= '0';
	WAIT FOR 10000 ps;
	A <= '1';
	WAIT FOR 20000 ps;
	A <= '0';
	WAIT FOR 10000 ps;
	A <= '1';
	WAIT FOR 20000 ps;
	A <= '0';
	WAIT FOR 20000 ps;
	A <= '1';
	WAIT FOR 10000 ps;
	A <= '0';
	WAIT FOR 10000 ps;
	A <= '1';
	WAIT FOR 10000 ps;
	A <= '0';
	WAIT FOR 20000 ps;
	A <= '1';
	WAIT FOR 20000 ps;
	A <= '0';
	WAIT FOR 60000 ps;
	A <= '1';
	WAIT FOR 20000 ps;
	A <= '0';
	WAIT FOR 10000 ps;
	A <= '1';
	WAIT FOR 10000 ps;
	A <= '0';
	WAIT FOR 20000 ps;
	A <= '1';
	WAIT FOR 20000 ps;
	A <= '0';
	WAIT FOR 20000 ps;
	A <= '1';
	WAIT FOR 40000 ps;
	A <= '0';
	WAIT FOR 20000 ps;
	A <= '1';
	WAIT FOR 10000 ps;
	A <= '0';
	WAIT FOR 10000 ps;
	A <= '1';
	WAIT FOR 20000 ps;
	A <= '0';
	WAIT FOR 10000 ps;
	A <= '1';
	WAIT FOR 10000 ps;
	A <= '0';
	WAIT FOR 10000 ps;
	A <= '1';
	WAIT FOR 20000 ps;
	A <= '0';
	WAIT FOR 10000 ps;
	A <= '1';
	WAIT FOR 80000 ps;
	A <= '0';
	WAIT FOR 40000 ps;
	A <= '1';
	WAIT FOR 10000 ps;
	A <= '0';
	WAIT FOR 60000 ps;
	A <= '1';
	WAIT FOR 10000 ps;
	A <= '0';
WAIT;
END PROCESS t_prcs_A;

-- Sel
t_prcs_Sel: PROCESS
BEGIN
	Sel <= '1';
	WAIT FOR 10000 ps;
	Sel <= '0';
	WAIT FOR 30000 ps;
	Sel <= '1';
	WAIT FOR 20000 ps;
	Sel <= '0';
	WAIT FOR 10000 ps;
	Sel <= '1';
	WAIT FOR 30000 ps;
	Sel <= '0';
	WAIT FOR 10000 ps;
	Sel <= '1';
	WAIT FOR 10000 ps;
	Sel <= '0';
	WAIT FOR 10000 ps;
	Sel <= '1';
	WAIT FOR 10000 ps;
	Sel <= '0';
	WAIT FOR 20000 ps;
	Sel <= '1';
	WAIT FOR 10000 ps;
	Sel <= '0';
	WAIT FOR 10000 ps;
	Sel <= '1';
	WAIT FOR 10000 ps;
	Sel <= '0';
	WAIT FOR 30000 ps;
	Sel <= '1';
	WAIT FOR 10000 ps;
	Sel <= '0';
	WAIT FOR 30000 ps;
	Sel <= '1';
	WAIT FOR 10000 ps;
	Sel <= '0';
	WAIT FOR 40000 ps;
	Sel <= '1';
	WAIT FOR 10000 ps;
	Sel <= '0';
	WAIT FOR 10000 ps;
	Sel <= '1';
	WAIT FOR 10000 ps;
	Sel <= '0';
	WAIT FOR 10000 ps;
	Sel <= '1';
	WAIT FOR 10000 ps;
	Sel <= '0';
	WAIT FOR 10000 ps;
	Sel <= '1';
	WAIT FOR 10000 ps;
	Sel <= '0';
	WAIT FOR 10000 ps;
	Sel <= '1';
	WAIT FOR 10000 ps;
	Sel <= '0';
	WAIT FOR 10000 ps;
	Sel <= '1';
	WAIT FOR 40000 ps;
	Sel <= '0';
	WAIT FOR 30000 ps;
	Sel <= '1';
	WAIT FOR 10000 ps;
	Sel <= '0';
	WAIT FOR 10000 ps;
	Sel <= '1';
	WAIT FOR 20000 ps;
	Sel <= '0';
	WAIT FOR 30000 ps;
	Sel <= '1';
	WAIT FOR 40000 ps;
	Sel <= '0';
	WAIT FOR 10000 ps;
	Sel <= '1';
	WAIT FOR 20000 ps;
	Sel <= '0';
	WAIT FOR 10000 ps;
	Sel <= '1';
	WAIT FOR 10000 ps;
	Sel <= '0';
	WAIT FOR 20000 ps;
	Sel <= '1';
	WAIT FOR 10000 ps;
	Sel <= '0';
	WAIT FOR 10000 ps;
	Sel <= '1';
	WAIT FOR 20000 ps;
	Sel <= '0';
	WAIT FOR 10000 ps;
	Sel <= '1';
	WAIT FOR 10000 ps;
	Sel <= '0';
	WAIT FOR 20000 ps;
	Sel <= '1';
	WAIT FOR 10000 ps;
	Sel <= '0';
	WAIT FOR 80000 ps;
	Sel <= '1';
	WAIT FOR 10000 ps;
	Sel <= '0';
	WAIT FOR 10000 ps;
	Sel <= '1';
	WAIT FOR 10000 ps;
	Sel <= '0';
	WAIT FOR 10000 ps;
	Sel <= '1';
	WAIT FOR 30000 ps;
	Sel <= '0';
	WAIT FOR 20000 ps;
	Sel <= '1';
	WAIT FOR 10000 ps;
	Sel <= '0';
	WAIT FOR 10000 ps;
	Sel <= '1';
	WAIT FOR 10000 ps;
	Sel <= '0';
WAIT;
END PROCESS t_prcs_Sel;
END Demux1to2_arch;

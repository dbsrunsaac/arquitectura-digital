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
-- Generated on "11/19/2024 20:16:15"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Fetch_State
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Fetch_State_vhd_vec_tst IS
END Fetch_State_vhd_vec_tst;
ARCHITECTURE Fetch_State_arch OF Fetch_State_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addr_out : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL fetch_done : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT Fetch_State
	PORT (
	addr_out : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	clk : IN STD_LOGIC;
	fetch_done : OUT STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Fetch_State
	PORT MAP (
-- list connections between master ports and signals
	addr_out => addr_out,
	clk => clk,
	fetch_done => fetch_done,
	reset => reset
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

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END Fetch_State_arch;

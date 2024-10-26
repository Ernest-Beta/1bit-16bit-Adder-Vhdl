-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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
-- Generated on "06/09/2023 14:21:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          them1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY them1_vhd_vec_tst IS
END them1_vhd_vec_tst;
ARCHITECTURE them1_arch OF them1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL Ainvert : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL Binvert : STD_LOGIC;
SIGNAL CarryIn : STD_LOGIC;
SIGNAL CarryOut : STD_LOGIC;
SIGNAL Operation : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Result : STD_LOGIC;
COMPONENT them1
	PORT (
	A : IN STD_LOGIC;
	Ainvert : IN STD_LOGIC;
	B : IN STD_LOGIC;
	Binvert : IN STD_LOGIC;
	CarryIn : IN STD_LOGIC;
	CarryOut : OUT STD_LOGIC;
	Operation : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	Result : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : them1
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	Ainvert => Ainvert,
	B => B,
	Binvert => Binvert,
	CarryIn => CarryIn,
	CarryOut => CarryOut,
	Operation => Operation,
	Result => Result
	);

-- A
t_prcs_A: PROCESS
BEGIN
LOOP
	A <= '0';
	WAIT FOR 90000 ps;
	A <= '1';
	WAIT FOR 90000 ps;
	IF (NOW >= 180000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A;

-- Ainvert
t_prcs_Ainvert: PROCESS
BEGIN
	Ainvert <= '1';
WAIT;
END PROCESS t_prcs_Ainvert;

-- B
t_prcs_B: PROCESS
BEGIN
LOOP
	B <= '0';
	WAIT FOR 45000 ps;
	B <= '1';
	WAIT FOR 45000 ps;
	IF (NOW >= 180000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_B;

-- Binvert
t_prcs_Binvert: PROCESS
BEGIN
	Binvert <= '1';
WAIT;
END PROCESS t_prcs_Binvert;

-- CarryIn
t_prcs_CarryIn: PROCESS
BEGIN
	CarryIn <= '0';
WAIT;
END PROCESS t_prcs_CarryIn;
-- Operation[1]
t_prcs_Operation_1: PROCESS
BEGIN
	Operation(1) <= '0';
WAIT;
END PROCESS t_prcs_Operation_1;
-- Operation[0]
t_prcs_Operation_0: PROCESS
BEGIN
	Operation(0) <= '0';
WAIT;
END PROCESS t_prcs_Operation_0;
END them1_arch;

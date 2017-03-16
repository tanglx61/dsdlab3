-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Thu Mar 16 01:04:26 2017"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY g58_lab3 IS 
	PORT
	(
		enable :  IN  STD_LOGIC;
		rst :  IN  STD_LOGIC;
		clk :  IN  STD_LOGIC;
		addr :  IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
		data :  IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
		mode :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		empty :  OUT  STD_LOGIC;
		full :  OUT  STD_LOGIC;
		num :  OUT  STD_LOGIC_VECTOR(5 DOWNTO 0);
		test :  OUT  STD_LOGIC_VECTOR(5 DOWNTO 0);
		value :  OUT  STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END g58_lab3;

ARCHITECTURE bdf_type OF g58_lab3 IS 

COMPONENT g58_stack52
	PORT(enable : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 addr : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 data : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 mode : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 empty : OUT STD_LOGIC;
		 full : OUT STD_LOGIC;
		 num : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		 test : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		 value : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;



BEGIN 



b2v_inst : g58_stack52
PORT MAP(enable => enable,
		 rst => rst,
		 clk => clk,
		 addr => addr,
		 data => data,
		 mode => mode,
		 empty => empty,
		 full => full,
		 num => num,
		 test => test,
		 value => value);


END bdf_type;
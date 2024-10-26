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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "06/09/2023 14:43:33"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	them2 IS
    PORT (
	OPcode : IN std_logic_vector(2 DOWNTO 0);
	a : IN std_logic_vector(15 DOWNTO 0);
	b : IN std_logic_vector(15 DOWNTO 0);
	result : OUT std_logic_vector(15 DOWNTO 0);
	overflow : OUT std_logic
	);
END them2;

-- Design Ports Information
-- result[0]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[8]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[9]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[10]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[11]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[12]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[13]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[14]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[15]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- overflow	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPcode[1]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPcode[2]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPcode[0]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[8]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[9]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[10]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[11]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[12]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[13]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[14]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[15]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF them2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_OPcode : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_a : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_overflow : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \result[4]~output_o\ : std_logic;
SIGNAL \result[5]~output_o\ : std_logic;
SIGNAL \result[6]~output_o\ : std_logic;
SIGNAL \result[7]~output_o\ : std_logic;
SIGNAL \result[8]~output_o\ : std_logic;
SIGNAL \result[9]~output_o\ : std_logic;
SIGNAL \result[10]~output_o\ : std_logic;
SIGNAL \result[11]~output_o\ : std_logic;
SIGNAL \result[12]~output_o\ : std_logic;
SIGNAL \result[13]~output_o\ : std_logic;
SIGNAL \result[14]~output_o\ : std_logic;
SIGNAL \result[15]~output_o\ : std_logic;
SIGNAL \overflow~output_o\ : std_logic;
SIGNAL \OPcode[2]~input_o\ : std_logic;
SIGNAL \OPcode[1]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \OPcode[0]~input_o\ : std_logic;
SIGNAL \slice0|Mux0~2_combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \slice0|Mux0~3_combout\ : std_logic;
SIGNAL \slice0|Mux0~4_combout\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \slice1|U1|Result~0_combout\ : std_logic;
SIGNAL \slice0|U5|CarryOut~0_combout\ : std_logic;
SIGNAL \slice0|U5|CarryOut~1_combout\ : std_logic;
SIGNAL \slice|Mux3~0_combout\ : std_logic;
SIGNAL \slice|Mux4~0_combout\ : std_logic;
SIGNAL \slice1|Mux0~0_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \slice1|U0|Result~0_combout\ : std_logic;
SIGNAL \slice1|Mux0~1_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \slice2|U0|Result~0_combout\ : std_logic;
SIGNAL \slice|Mux1~0_combout\ : std_logic;
SIGNAL \slice1|U5|CarryOut~0_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \slice2|U4|Z~0_combout\ : std_logic;
SIGNAL \slice2|Mux0~0_combout\ : std_logic;
SIGNAL \slice2|U1|Result~0_combout\ : std_logic;
SIGNAL \slice2|Mux0~1_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \slice3|U1|Result~0_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \slice3|U0|Result~0_combout\ : std_logic;
SIGNAL \slice2|U5|CarryOut~0_combout\ : std_logic;
SIGNAL \slice3|Mux0~0_combout\ : std_logic;
SIGNAL \slice3|Mux0~1_combout\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \slice4|U1|Result~0_combout\ : std_logic;
SIGNAL \slice3|U5|CarryOut~0_combout\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \slice4|U0|Result~0_combout\ : std_logic;
SIGNAL \slice4|U4|Z~0_combout\ : std_logic;
SIGNAL \slice4|Mux0~0_combout\ : std_logic;
SIGNAL \slice4|Mux0~1_combout\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \slice5|U0|Result~0_combout\ : std_logic;
SIGNAL \slice4|U5|CarryOut~0_combout\ : std_logic;
SIGNAL \slice5|Mux0~0_combout\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \slice5|U1|Result~0_combout\ : std_logic;
SIGNAL \slice5|Mux0~1_combout\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \slice6|U0|Result~0_combout\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \slice6|U1|Result~0_combout\ : std_logic;
SIGNAL \slice5|U5|CarryOut~0_combout\ : std_logic;
SIGNAL \slice6|U4|Z~0_combout\ : std_logic;
SIGNAL \slice6|Mux0~0_combout\ : std_logic;
SIGNAL \slice6|Mux0~1_combout\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \slice7|U0|Result~0_combout\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \slice7|U1|Result~0_combout\ : std_logic;
SIGNAL \slice6|U5|CarryOut~0_combout\ : std_logic;
SIGNAL \slice7|Mux0~0_combout\ : std_logic;
SIGNAL \slice7|Mux0~1_combout\ : std_logic;
SIGNAL \b[8]~input_o\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \slice8|U0|Result~0_combout\ : std_logic;
SIGNAL \slice8|U4|Z~0_combout\ : std_logic;
SIGNAL \slice7|U5|CarryOut~0_combout\ : std_logic;
SIGNAL \slice8|Mux0~0_combout\ : std_logic;
SIGNAL \slice8|U1|Result~0_combout\ : std_logic;
SIGNAL \slice8|Mux0~1_combout\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \slice9|U0|Result~0_combout\ : std_logic;
SIGNAL \slice8|U5|CarryOut~0_combout\ : std_logic;
SIGNAL \slice9|Mux0~0_combout\ : std_logic;
SIGNAL \b[9]~input_o\ : std_logic;
SIGNAL \slice9|U1|Result~0_combout\ : std_logic;
SIGNAL \slice9|Mux0~1_combout\ : std_logic;
SIGNAL \b[10]~input_o\ : std_logic;
SIGNAL \slice10|U1|Result~0_combout\ : std_logic;
SIGNAL \slice9|U5|CarryOut~0_combout\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \slice10|U0|Result~0_combout\ : std_logic;
SIGNAL \slice10|U4|Z~0_combout\ : std_logic;
SIGNAL \slice10|Mux0~0_combout\ : std_logic;
SIGNAL \slice10|Mux0~1_combout\ : std_logic;
SIGNAL \slice10|U5|CarryOut~0_combout\ : std_logic;
SIGNAL \slice11|Mux0~0_combout\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \slice11|U0|Result~0_combout\ : std_logic;
SIGNAL \b[11]~input_o\ : std_logic;
SIGNAL \slice11|U1|Result~0_combout\ : std_logic;
SIGNAL \slice11|Mux0~1_combout\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \slice12|U0|Result~0_combout\ : std_logic;
SIGNAL \b[12]~input_o\ : std_logic;
SIGNAL \slice12|U4|Z~0_combout\ : std_logic;
SIGNAL \slice11|U5|CarryOut~0_combout\ : std_logic;
SIGNAL \slice12|Mux0~0_combout\ : std_logic;
SIGNAL \slice12|U1|Result~0_combout\ : std_logic;
SIGNAL \slice12|Mux0~1_combout\ : std_logic;
SIGNAL \slice12|U5|CarryOut~0_combout\ : std_logic;
SIGNAL \slice13|Mux0~0_combout\ : std_logic;
SIGNAL \b[13]~input_o\ : std_logic;
SIGNAL \slice13|U1|Result~0_combout\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \slice13|U0|Result~0_combout\ : std_logic;
SIGNAL \slice13|Mux0~1_combout\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \slice14|U0|Result~0_combout\ : std_logic;
SIGNAL \b[14]~input_o\ : std_logic;
SIGNAL \slice14|U4|Z~0_combout\ : std_logic;
SIGNAL \slice13|U5|CarryOut~0_combout\ : std_logic;
SIGNAL \slice14|Mux0~0_combout\ : std_logic;
SIGNAL \slice14|U1|Result~0_combout\ : std_logic;
SIGNAL \slice14|Mux0~1_combout\ : std_logic;
SIGNAL \b[15]~input_o\ : std_logic;
SIGNAL \slice15|U1|Result~0_combout\ : std_logic;
SIGNAL \slice14|U5|CarryOut~0_combout\ : std_logic;
SIGNAL \slice15|Mux0~0_combout\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \slice15|U0|Result~0_combout\ : std_logic;
SIGNAL \slice15|Mux0~1_combout\ : std_logic;
SIGNAL \slice15|U5|CarryOut~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_OPcode <= OPcode;
ww_a <= a;
ww_b <= b;
result <= ww_result;
overflow <= ww_overflow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y16_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X6_Y10_N2
\result[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \slice0|Mux0~4_combout\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X10_Y15_N9
\result[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \slice1|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X1_Y10_N16
\result[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \slice2|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X10_Y17_N9
\result[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \slice3|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOOBUF_X10_Y17_N2
\result[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \slice4|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \result[4]~output_o\);

-- Location: IOOBUF_X10_Y16_N2
\result[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \slice5|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \result[5]~output_o\);

-- Location: IOOBUF_X10_Y20_N9
\result[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \slice6|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \result[6]~output_o\);

-- Location: IOOBUF_X31_Y19_N2
\result[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \slice7|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \result[7]~output_o\);

-- Location: IOOBUF_X10_Y22_N16
\result[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \slice8|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \result[8]~output_o\);

-- Location: IOOBUF_X15_Y25_N16
\result[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \slice9|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \result[9]~output_o\);

-- Location: IOOBUF_X13_Y25_N16
\result[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \slice10|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \result[10]~output_o\);

-- Location: IOOBUF_X6_Y10_N9
\result[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \slice11|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \result[11]~output_o\);

-- Location: IOOBUF_X15_Y25_N23
\result[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \slice12|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \result[12]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\result[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \slice13|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \result[13]~output_o\);

-- Location: IOOBUF_X10_Y15_N23
\result[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \slice14|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \result[14]~output_o\);

-- Location: IOOBUF_X13_Y0_N9
\result[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \slice15|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \result[15]~output_o\);

-- Location: IOOBUF_X13_Y0_N30
\overflow~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \overflow~output_o\);

-- Location: IOIBUF_X10_Y19_N1
\OPcode[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPcode(2),
	o => \OPcode[2]~input_o\);

-- Location: IOIBUF_X10_Y15_N1
\OPcode[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPcode(1),
	o => \OPcode[1]~input_o\);

-- Location: IOIBUF_X3_Y10_N29
\b[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X10_Y20_N15
\OPcode[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPcode(0),
	o => \OPcode[0]~input_o\);

-- Location: LCCOMB_X11_Y10_N30
\slice0|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice0|Mux0~2_combout\ = (\OPcode[2]~input_o\ & (\OPcode[1]~input_o\ $ (((\OPcode[0]~input_o\) # (!\b[0]~input_o\))))) # (!\OPcode[2]~input_o\ & (\b[0]~input_o\ & ((\OPcode[1]~input_o\) # (\OPcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPcode[2]~input_o\,
	datab => \OPcode[1]~input_o\,
	datac => \b[0]~input_o\,
	datad => \OPcode[0]~input_o\,
	combout => \slice0|Mux0~2_combout\);

-- Location: IOIBUF_X1_Y10_N8
\a[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X11_Y10_N24
\slice0|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice0|Mux0~3_combout\ = (\OPcode[1]~input_o\ & (\b[0]~input_o\ $ (((!\OPcode[0]~input_o\) # (!\OPcode[2]~input_o\))))) # (!\OPcode[1]~input_o\ & ((\b[0]~input_o\ & (!\OPcode[2]~input_o\)) # (!\b[0]~input_o\ & ((\OPcode[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPcode[2]~input_o\,
	datab => \OPcode[1]~input_o\,
	datac => \b[0]~input_o\,
	datad => \OPcode[0]~input_o\,
	combout => \slice0|Mux0~3_combout\);

-- Location: LCCOMB_X11_Y10_N10
\slice0|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice0|Mux0~4_combout\ = (\a[0]~input_o\ & ((\slice0|Mux0~3_combout\))) # (!\a[0]~input_o\ & (\slice0|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice0|Mux0~2_combout\,
	datac => \a[0]~input_o\,
	datad => \slice0|Mux0~3_combout\,
	combout => \slice0|Mux0~4_combout\);

-- Location: IOIBUF_X6_Y10_N22
\b[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LCCOMB_X11_Y10_N2
\slice1|U1|Result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice1|U1|Result~0_combout\ = \b[1]~input_o\ $ (((\OPcode[2]~input_o\ & (!\OPcode[1]~input_o\)) # (!\OPcode[2]~input_o\ & (\OPcode[1]~input_o\ & \OPcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPcode[2]~input_o\,
	datab => \OPcode[1]~input_o\,
	datac => \b[1]~input_o\,
	datad => \OPcode[0]~input_o\,
	combout => \slice1|U1|Result~0_combout\);

-- Location: LCCOMB_X11_Y10_N20
\slice0|U5|CarryOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice0|U5|CarryOut~0_combout\ = (\b[0]~input_o\ & (\a[0]~input_o\ & ((\OPcode[1]~input_o\) # (!\OPcode[2]~input_o\)))) # (!\b[0]~input_o\ & ((\OPcode[1]~input_o\ & ((!\OPcode[2]~input_o\))) # (!\OPcode[1]~input_o\ & (!\a[0]~input_o\ & 
-- \OPcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \OPcode[1]~input_o\,
	datac => \a[0]~input_o\,
	datad => \OPcode[2]~input_o\,
	combout => \slice0|U5|CarryOut~0_combout\);

-- Location: LCCOMB_X11_Y10_N6
\slice0|U5|CarryOut~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice0|U5|CarryOut~1_combout\ = (\slice0|U5|CarryOut~0_combout\ & ((\OPcode[0]~input_o\) # ((\b[0]~input_o\) # (!\OPcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPcode[0]~input_o\,
	datab => \OPcode[1]~input_o\,
	datac => \b[0]~input_o\,
	datad => \slice0|U5|CarryOut~0_combout\,
	combout => \slice0|U5|CarryOut~1_combout\);

-- Location: LCCOMB_X11_Y17_N16
\slice|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice|Mux3~0_combout\ = ((\OPcode[2]~input_o\ & \OPcode[0]~input_o\)) # (!\OPcode[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPcode[1]~input_o\,
	datac => \OPcode[2]~input_o\,
	datad => \OPcode[0]~input_o\,
	combout => \slice|Mux3~0_combout\);

-- Location: LCCOMB_X14_Y13_N8
\slice|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice|Mux4~0_combout\ = (\OPcode[0]~input_o\ & (!\OPcode[1]~input_o\)) # (!\OPcode[0]~input_o\ & (\OPcode[1]~input_o\ & \OPcode[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPcode[0]~input_o\,
	datab => \OPcode[1]~input_o\,
	datac => \OPcode[2]~input_o\,
	combout => \slice|Mux4~0_combout\);

-- Location: LCCOMB_X11_Y10_N14
\slice1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice1|Mux0~0_combout\ = (\slice|Mux3~0_combout\ & ((\slice|Mux4~0_combout\))) # (!\slice|Mux3~0_combout\ & (\slice0|U5|CarryOut~1_combout\ & !\slice|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice0|U5|CarryOut~1_combout\,
	datac => \slice|Mux3~0_combout\,
	datad => \slice|Mux4~0_combout\,
	combout => \slice1|Mux0~0_combout\);

-- Location: IOIBUF_X6_Y10_N29
\a[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LCCOMB_X11_Y10_N28
\slice1|U0|Result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice1|U0|Result~0_combout\ = \a[1]~input_o\ $ (((!\OPcode[1]~input_o\ & \OPcode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OPcode[1]~input_o\,
	datac => \a[1]~input_o\,
	datad => \OPcode[2]~input_o\,
	combout => \slice1|U0|Result~0_combout\);

-- Location: LCCOMB_X11_Y10_N16
\slice1|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice1|Mux0~1_combout\ = (\slice|Mux3~0_combout\ & ((\slice1|U1|Result~0_combout\ & ((\slice1|Mux0~0_combout\) # (\slice1|U0|Result~0_combout\))) # (!\slice1|U1|Result~0_combout\ & (\slice1|Mux0~0_combout\ & \slice1|U0|Result~0_combout\)))) # 
-- (!\slice|Mux3~0_combout\ & (\slice1|U1|Result~0_combout\ $ (\slice1|Mux0~0_combout\ $ (\slice1|U0|Result~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice1|U1|Result~0_combout\,
	datab => \slice1|Mux0~0_combout\,
	datac => \slice|Mux3~0_combout\,
	datad => \slice1|U0|Result~0_combout\,
	combout => \slice1|Mux0~1_combout\);

-- Location: IOIBUF_X10_Y16_N8
\a[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X11_Y13_N8
\slice2|U0|Result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice2|U0|Result~0_combout\ = \a[2]~input_o\ $ (((!\OPcode[1]~input_o\ & \OPcode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[2]~input_o\,
	datac => \OPcode[1]~input_o\,
	datad => \OPcode[2]~input_o\,
	combout => \slice2|U0|Result~0_combout\);

-- Location: LCCOMB_X11_Y10_N0
\slice|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice|Mux1~0_combout\ = (\OPcode[2]~input_o\ & (!\OPcode[1]~input_o\)) # (!\OPcode[2]~input_o\ & (\OPcode[1]~input_o\ & \OPcode[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPcode[2]~input_o\,
	datab => \OPcode[1]~input_o\,
	datad => \OPcode[0]~input_o\,
	combout => \slice|Mux1~0_combout\);

-- Location: LCCOMB_X11_Y10_N12
\slice1|U5|CarryOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice1|U5|CarryOut~0_combout\ = (\slice0|U5|CarryOut~1_combout\ & ((\slice1|U0|Result~0_combout\) # (\b[1]~input_o\ $ (\slice|Mux1~0_combout\)))) # (!\slice0|U5|CarryOut~1_combout\ & (\slice1|U0|Result~0_combout\ & (\b[1]~input_o\ $ 
-- (\slice|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice0|U5|CarryOut~1_combout\,
	datab => \slice1|U0|Result~0_combout\,
	datac => \b[1]~input_o\,
	datad => \slice|Mux1~0_combout\,
	combout => \slice1|U5|CarryOut~0_combout\);

-- Location: IOIBUF_X3_Y10_N1
\b[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LCCOMB_X11_Y10_N22
\slice2|U4|Z~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice2|U4|Z~0_combout\ = \slice|Mux1~0_combout\ $ (\b[2]~input_o\ $ (\slice2|U0|Result~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \slice|Mux1~0_combout\,
	datac => \b[2]~input_o\,
	datad => \slice2|U0|Result~0_combout\,
	combout => \slice2|U4|Z~0_combout\);

-- Location: LCCOMB_X11_Y10_N8
\slice2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice2|Mux0~0_combout\ = (\slice|Mux3~0_combout\ & (((\slice|Mux4~0_combout\)))) # (!\slice|Mux3~0_combout\ & (\slice2|U4|Z~0_combout\ $ (((\slice1|U5|CarryOut~0_combout\ & !\slice|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice1|U5|CarryOut~0_combout\,
	datab => \slice|Mux3~0_combout\,
	datac => \slice2|U4|Z~0_combout\,
	datad => \slice|Mux4~0_combout\,
	combout => \slice2|Mux0~0_combout\);

-- Location: LCCOMB_X11_Y10_N18
\slice2|U1|Result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice2|U1|Result~0_combout\ = \b[2]~input_o\ $ (((\OPcode[2]~input_o\ & (!\OPcode[1]~input_o\)) # (!\OPcode[2]~input_o\ & (\OPcode[1]~input_o\ & \OPcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPcode[2]~input_o\,
	datab => \OPcode[1]~input_o\,
	datac => \b[2]~input_o\,
	datad => \OPcode[0]~input_o\,
	combout => \slice2|U1|Result~0_combout\);

-- Location: LCCOMB_X11_Y10_N26
\slice2|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice2|Mux0~1_combout\ = (\slice2|U0|Result~0_combout\ & ((\slice2|Mux0~0_combout\) # ((\slice|Mux3~0_combout\ & \slice2|U1|Result~0_combout\)))) # (!\slice2|U0|Result~0_combout\ & (\slice2|Mux0~0_combout\ & ((\slice2|U1|Result~0_combout\) # 
-- (!\slice|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice2|U0|Result~0_combout\,
	datab => \slice2|Mux0~0_combout\,
	datac => \slice|Mux3~0_combout\,
	datad => \slice2|U1|Result~0_combout\,
	combout => \slice2|Mux0~1_combout\);

-- Location: IOIBUF_X10_Y19_N8
\b[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LCCOMB_X11_Y17_N26
\slice3|U1|Result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice3|U1|Result~0_combout\ = \b[3]~input_o\ $ (((\OPcode[1]~input_o\ & (!\OPcode[2]~input_o\ & \OPcode[0]~input_o\)) # (!\OPcode[1]~input_o\ & (\OPcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPcode[1]~input_o\,
	datab => \b[3]~input_o\,
	datac => \OPcode[2]~input_o\,
	datad => \OPcode[0]~input_o\,
	combout => \slice3|U1|Result~0_combout\);

-- Location: IOIBUF_X10_Y18_N8
\a[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LCCOMB_X11_Y17_N28
\slice3|U0|Result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice3|U0|Result~0_combout\ = \a[3]~input_o\ $ (((!\OPcode[1]~input_o\ & \OPcode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPcode[1]~input_o\,
	datac => \OPcode[2]~input_o\,
	datad => \a[3]~input_o\,
	combout => \slice3|U0|Result~0_combout\);

-- Location: LCCOMB_X11_Y10_N4
\slice2|U5|CarryOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice2|U5|CarryOut~0_combout\ = (\slice1|U5|CarryOut~0_combout\ & ((\slice2|U0|Result~0_combout\) # (\slice|Mux1~0_combout\ $ (\b[2]~input_o\)))) # (!\slice1|U5|CarryOut~0_combout\ & (\slice2|U0|Result~0_combout\ & (\slice|Mux1~0_combout\ $ 
-- (\b[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice1|U5|CarryOut~0_combout\,
	datab => \slice|Mux1~0_combout\,
	datac => \b[2]~input_o\,
	datad => \slice2|U0|Result~0_combout\,
	combout => \slice2|U5|CarryOut~0_combout\);

-- Location: LCCOMB_X11_Y17_N22
\slice3|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice3|Mux0~0_combout\ = (\slice|Mux3~0_combout\ & ((\slice|Mux4~0_combout\))) # (!\slice|Mux3~0_combout\ & (\slice2|U5|CarryOut~0_combout\ & !\slice|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice2|U5|CarryOut~0_combout\,
	datab => \slice|Mux3~0_combout\,
	datac => \slice|Mux4~0_combout\,
	combout => \slice3|Mux0~0_combout\);

-- Location: LCCOMB_X11_Y17_N8
\slice3|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice3|Mux0~1_combout\ = (\slice|Mux3~0_combout\ & ((\slice3|U1|Result~0_combout\ & ((\slice3|U0|Result~0_combout\) # (\slice3|Mux0~0_combout\))) # (!\slice3|U1|Result~0_combout\ & (\slice3|U0|Result~0_combout\ & \slice3|Mux0~0_combout\)))) # 
-- (!\slice|Mux3~0_combout\ & (\slice3|U1|Result~0_combout\ $ (\slice3|U0|Result~0_combout\ $ (\slice3|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice3|U1|Result~0_combout\,
	datab => \slice3|U0|Result~0_combout\,
	datac => \slice3|Mux0~0_combout\,
	datad => \slice|Mux3~0_combout\,
	combout => \slice3|Mux0~1_combout\);

-- Location: IOIBUF_X10_Y19_N15
\b[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: LCCOMB_X11_Y17_N10
\slice4|U1|Result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice4|U1|Result~0_combout\ = \b[4]~input_o\ $ (((\OPcode[2]~input_o\ & ((!\OPcode[1]~input_o\))) # (!\OPcode[2]~input_o\ & (\OPcode[0]~input_o\ & \OPcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPcode[2]~input_o\,
	datab => \OPcode[0]~input_o\,
	datac => \b[4]~input_o\,
	datad => \OPcode[1]~input_o\,
	combout => \slice4|U1|Result~0_combout\);

-- Location: LCCOMB_X11_Y17_N12
\slice3|U5|CarryOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice3|U5|CarryOut~0_combout\ = (\slice2|U5|CarryOut~0_combout\ & ((\slice3|U0|Result~0_combout\) # (\slice|Mux1~0_combout\ $ (\b[3]~input_o\)))) # (!\slice2|U5|CarryOut~0_combout\ & (\slice3|U0|Result~0_combout\ & (\slice|Mux1~0_combout\ $ 
-- (\b[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice2|U5|CarryOut~0_combout\,
	datab => \slice|Mux1~0_combout\,
	datac => \b[3]~input_o\,
	datad => \slice3|U0|Result~0_combout\,
	combout => \slice3|U5|CarryOut~0_combout\);

-- Location: IOIBUF_X15_Y0_N29
\a[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LCCOMB_X14_Y13_N2
\slice4|U0|Result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice4|U0|Result~0_combout\ = \a[4]~input_o\ $ (((!\OPcode[1]~input_o\ & \OPcode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OPcode[1]~input_o\,
	datac => \OPcode[2]~input_o\,
	datad => \a[4]~input_o\,
	combout => \slice4|U0|Result~0_combout\);

-- Location: LCCOMB_X11_Y17_N14
\slice4|U4|Z~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice4|U4|Z~0_combout\ = \slice|Mux1~0_combout\ $ (\b[4]~input_o\ $ (\slice4|U0|Result~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \slice|Mux1~0_combout\,
	datac => \b[4]~input_o\,
	datad => \slice4|U0|Result~0_combout\,
	combout => \slice4|U4|Z~0_combout\);

-- Location: LCCOMB_X11_Y17_N0
\slice4|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice4|Mux0~0_combout\ = (\slice|Mux3~0_combout\ & (((\slice|Mux4~0_combout\)))) # (!\slice|Mux3~0_combout\ & (\slice4|U4|Z~0_combout\ $ (((\slice3|U5|CarryOut~0_combout\ & !\slice|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice3|U5|CarryOut~0_combout\,
	datab => \slice4|U4|Z~0_combout\,
	datac => \slice|Mux4~0_combout\,
	datad => \slice|Mux3~0_combout\,
	combout => \slice4|Mux0~0_combout\);

-- Location: LCCOMB_X11_Y17_N18
\slice4|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice4|Mux0~1_combout\ = (\slice4|U1|Result~0_combout\ & ((\slice4|Mux0~0_combout\) # ((\slice|Mux3~0_combout\ & \slice4|U0|Result~0_combout\)))) # (!\slice4|U1|Result~0_combout\ & (\slice4|Mux0~0_combout\ & ((\slice4|U0|Result~0_combout\) # 
-- (!\slice|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice4|U1|Result~0_combout\,
	datab => \slice|Mux3~0_combout\,
	datac => \slice4|Mux0~0_combout\,
	datad => \slice4|U0|Result~0_combout\,
	combout => \slice4|Mux0~1_combout\);

-- Location: IOIBUF_X10_Y20_N1
\a[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: LCCOMB_X11_Y17_N6
\slice5|U0|Result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice5|U0|Result~0_combout\ = \a[5]~input_o\ $ (((\OPcode[2]~input_o\ & !\OPcode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPcode[2]~input_o\,
	datac => \a[5]~input_o\,
	datad => \OPcode[1]~input_o\,
	combout => \slice5|U0|Result~0_combout\);

-- Location: LCCOMB_X11_Y17_N24
\slice4|U5|CarryOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice4|U5|CarryOut~0_combout\ = (\slice3|U5|CarryOut~0_combout\ & ((\slice4|U0|Result~0_combout\) # (\slice|Mux1~0_combout\ $ (\b[4]~input_o\)))) # (!\slice3|U5|CarryOut~0_combout\ & (\slice4|U0|Result~0_combout\ & (\slice|Mux1~0_combout\ $ 
-- (\b[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice3|U5|CarryOut~0_combout\,
	datab => \slice|Mux1~0_combout\,
	datac => \b[4]~input_o\,
	datad => \slice4|U0|Result~0_combout\,
	combout => \slice4|U5|CarryOut~0_combout\);

-- Location: LCCOMB_X11_Y17_N2
\slice5|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice5|Mux0~0_combout\ = (\slice|Mux4~0_combout\ & ((\slice|Mux3~0_combout\))) # (!\slice|Mux4~0_combout\ & (\slice4|U5|CarryOut~0_combout\ & !\slice|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \slice4|U5|CarryOut~0_combout\,
	datac => \slice|Mux4~0_combout\,
	datad => \slice|Mux3~0_combout\,
	combout => \slice5|Mux0~0_combout\);

-- Location: IOIBUF_X10_Y21_N22
\b[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: LCCOMB_X11_Y17_N4
\slice5|U1|Result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice5|U1|Result~0_combout\ = \b[5]~input_o\ $ (((\OPcode[2]~input_o\ & ((!\OPcode[1]~input_o\))) # (!\OPcode[2]~input_o\ & (\OPcode[0]~input_o\ & \OPcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPcode[2]~input_o\,
	datab => \OPcode[0]~input_o\,
	datac => \b[5]~input_o\,
	datad => \OPcode[1]~input_o\,
	combout => \slice5|U1|Result~0_combout\);

-- Location: LCCOMB_X11_Y17_N20
\slice5|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice5|Mux0~1_combout\ = (\slice|Mux3~0_combout\ & ((\slice5|U0|Result~0_combout\ & ((\slice5|Mux0~0_combout\) # (\slice5|U1|Result~0_combout\))) # (!\slice5|U0|Result~0_combout\ & (\slice5|Mux0~0_combout\ & \slice5|U1|Result~0_combout\)))) # 
-- (!\slice|Mux3~0_combout\ & (\slice5|U0|Result~0_combout\ $ (\slice5|Mux0~0_combout\ $ (\slice5|U1|Result~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice5|U0|Result~0_combout\,
	datab => \slice5|Mux0~0_combout\,
	datac => \slice5|U1|Result~0_combout\,
	datad => \slice|Mux3~0_combout\,
	combout => \slice5|Mux0~1_combout\);

-- Location: IOIBUF_X15_Y25_N29
\a[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: LCCOMB_X16_Y19_N26
\slice6|U0|Result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice6|U0|Result~0_combout\ = \a[6]~input_o\ $ (((!\OPcode[1]~input_o\ & \OPcode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPcode[1]~input_o\,
	datac => \OPcode[2]~input_o\,
	datad => \a[6]~input_o\,
	combout => \slice6|U0|Result~0_combout\);

-- Location: IOIBUF_X17_Y25_N15
\b[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: LCCOMB_X16_Y19_N16
\slice6|U1|Result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice6|U1|Result~0_combout\ = \b[6]~input_o\ $ (((\OPcode[1]~input_o\ & (!\OPcode[2]~input_o\ & \OPcode[0]~input_o\)) # (!\OPcode[1]~input_o\ & (\OPcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPcode[1]~input_o\,
	datab => \b[6]~input_o\,
	datac => \OPcode[2]~input_o\,
	datad => \OPcode[0]~input_o\,
	combout => \slice6|U1|Result~0_combout\);

-- Location: LCCOMB_X11_Y17_N30
\slice5|U5|CarryOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice5|U5|CarryOut~0_combout\ = (\slice5|U0|Result~0_combout\ & ((\slice4|U5|CarryOut~0_combout\) # (\slice|Mux1~0_combout\ $ (\b[5]~input_o\)))) # (!\slice5|U0|Result~0_combout\ & (\slice4|U5|CarryOut~0_combout\ & (\slice|Mux1~0_combout\ $ 
-- (\b[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice5|U0|Result~0_combout\,
	datab => \slice|Mux1~0_combout\,
	datac => \b[5]~input_o\,
	datad => \slice4|U5|CarryOut~0_combout\,
	combout => \slice5|U5|CarryOut~0_combout\);

-- Location: LCCOMB_X16_Y19_N12
\slice6|U4|Z~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice6|U4|Z~0_combout\ = \slice|Mux1~0_combout\ $ (\slice6|U0|Result~0_combout\ $ (\b[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \slice|Mux1~0_combout\,
	datac => \slice6|U0|Result~0_combout\,
	datad => \b[6]~input_o\,
	combout => \slice6|U4|Z~0_combout\);

-- Location: LCCOMB_X16_Y19_N6
\slice6|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice6|Mux0~0_combout\ = (\slice|Mux3~0_combout\ & (\slice|Mux4~0_combout\)) # (!\slice|Mux3~0_combout\ & (\slice6|U4|Z~0_combout\ $ (((!\slice|Mux4~0_combout\ & \slice5|U5|CarryOut~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice|Mux4~0_combout\,
	datab => \slice5|U5|CarryOut~0_combout\,
	datac => \slice|Mux3~0_combout\,
	datad => \slice6|U4|Z~0_combout\,
	combout => \slice6|Mux0~0_combout\);

-- Location: LCCOMB_X16_Y19_N0
\slice6|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice6|Mux0~1_combout\ = (\slice6|U0|Result~0_combout\ & ((\slice6|Mux0~0_combout\) # ((\slice6|U1|Result~0_combout\ & \slice|Mux3~0_combout\)))) # (!\slice6|U0|Result~0_combout\ & (\slice6|Mux0~0_combout\ & ((\slice6|U1|Result~0_combout\) # 
-- (!\slice|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice6|U0|Result~0_combout\,
	datab => \slice6|U1|Result~0_combout\,
	datac => \slice|Mux3~0_combout\,
	datad => \slice6|Mux0~0_combout\,
	combout => \slice6|Mux0~1_combout\);

-- Location: IOIBUF_X10_Y20_N22
\a[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: LCCOMB_X16_Y19_N28
\slice7|U0|Result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice7|U0|Result~0_combout\ = \a[7]~input_o\ $ (((!\OPcode[1]~input_o\ & \OPcode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPcode[1]~input_o\,
	datac => \OPcode[2]~input_o\,
	datad => \a[7]~input_o\,
	combout => \slice7|U0|Result~0_combout\);

-- Location: IOIBUF_X13_Y25_N29
\b[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: LCCOMB_X16_Y19_N18
\slice7|U1|Result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice7|U1|Result~0_combout\ = \b[7]~input_o\ $ (((\OPcode[1]~input_o\ & (!\OPcode[2]~input_o\ & \OPcode[0]~input_o\)) # (!\OPcode[1]~input_o\ & (\OPcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPcode[1]~input_o\,
	datab => \OPcode[2]~input_o\,
	datac => \b[7]~input_o\,
	datad => \OPcode[0]~input_o\,
	combout => \slice7|U1|Result~0_combout\);

-- Location: LCCOMB_X16_Y19_N14
\slice6|U5|CarryOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice6|U5|CarryOut~0_combout\ = (\slice5|U5|CarryOut~0_combout\ & ((\slice6|U0|Result~0_combout\) # (\slice|Mux1~0_combout\ $ (\b[6]~input_o\)))) # (!\slice5|U5|CarryOut~0_combout\ & (\slice6|U0|Result~0_combout\ & (\slice|Mux1~0_combout\ $ 
-- (\b[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice|Mux1~0_combout\,
	datab => \slice5|U5|CarryOut~0_combout\,
	datac => \slice6|U0|Result~0_combout\,
	datad => \b[6]~input_o\,
	combout => \slice6|U5|CarryOut~0_combout\);

-- Location: LCCOMB_X16_Y19_N24
\slice7|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice7|Mux0~0_combout\ = (\slice|Mux4~0_combout\ & ((\slice|Mux3~0_combout\))) # (!\slice|Mux4~0_combout\ & (\slice6|U5|CarryOut~0_combout\ & !\slice|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice|Mux4~0_combout\,
	datab => \slice6|U5|CarryOut~0_combout\,
	datac => \slice|Mux3~0_combout\,
	combout => \slice7|Mux0~0_combout\);

-- Location: LCCOMB_X16_Y19_N2
\slice7|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice7|Mux0~1_combout\ = (\slice|Mux3~0_combout\ & ((\slice7|U0|Result~0_combout\ & ((\slice7|U1|Result~0_combout\) # (\slice7|Mux0~0_combout\))) # (!\slice7|U0|Result~0_combout\ & (\slice7|U1|Result~0_combout\ & \slice7|Mux0~0_combout\)))) # 
-- (!\slice|Mux3~0_combout\ & (\slice7|U0|Result~0_combout\ $ (\slice7|U1|Result~0_combout\ $ (\slice7|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice7|U0|Result~0_combout\,
	datab => \slice7|U1|Result~0_combout\,
	datac => \slice|Mux3~0_combout\,
	datad => \slice7|Mux0~0_combout\,
	combout => \slice7|Mux0~1_combout\);

-- Location: IOIBUF_X15_Y25_N1
\b[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(8),
	o => \b[8]~input_o\);

-- Location: IOIBUF_X10_Y18_N22
\a[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: LCCOMB_X16_Y18_N0
\slice8|U0|Result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice8|U0|Result~0_combout\ = \a[8]~input_o\ $ (((!\OPcode[1]~input_o\ & \OPcode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPcode[1]~input_o\,
	datac => \a[8]~input_o\,
	datad => \OPcode[2]~input_o\,
	combout => \slice8|U0|Result~0_combout\);

-- Location: LCCOMB_X16_Y19_N8
\slice8|U4|Z~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice8|U4|Z~0_combout\ = \slice|Mux1~0_combout\ $ (\b[8]~input_o\ $ (\slice8|U0|Result~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \slice|Mux1~0_combout\,
	datac => \b[8]~input_o\,
	datad => \slice8|U0|Result~0_combout\,
	combout => \slice8|U4|Z~0_combout\);

-- Location: LCCOMB_X16_Y19_N22
\slice7|U5|CarryOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice7|U5|CarryOut~0_combout\ = (\slice6|U5|CarryOut~0_combout\ & ((\slice7|U0|Result~0_combout\) # (\slice|Mux1~0_combout\ $ (\b[7]~input_o\)))) # (!\slice6|U5|CarryOut~0_combout\ & (\slice7|U0|Result~0_combout\ & (\slice|Mux1~0_combout\ $ 
-- (\b[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice|Mux1~0_combout\,
	datab => \b[7]~input_o\,
	datac => \slice6|U5|CarryOut~0_combout\,
	datad => \slice7|U0|Result~0_combout\,
	combout => \slice7|U5|CarryOut~0_combout\);

-- Location: LCCOMB_X16_Y19_N10
\slice8|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice8|Mux0~0_combout\ = (\slice|Mux3~0_combout\ & (((\slice|Mux4~0_combout\)))) # (!\slice|Mux3~0_combout\ & (\slice8|U4|Z~0_combout\ $ (((\slice7|U5|CarryOut~0_combout\ & !\slice|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice|Mux3~0_combout\,
	datab => \slice8|U4|Z~0_combout\,
	datac => \slice7|U5|CarryOut~0_combout\,
	datad => \slice|Mux4~0_combout\,
	combout => \slice8|Mux0~0_combout\);

-- Location: LCCOMB_X16_Y19_N20
\slice8|U1|Result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice8|U1|Result~0_combout\ = \b[8]~input_o\ $ (((\OPcode[1]~input_o\ & (!\OPcode[2]~input_o\ & \OPcode[0]~input_o\)) # (!\OPcode[1]~input_o\ & (\OPcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPcode[1]~input_o\,
	datab => \OPcode[2]~input_o\,
	datac => \b[8]~input_o\,
	datad => \OPcode[0]~input_o\,
	combout => \slice8|U1|Result~0_combout\);

-- Location: LCCOMB_X16_Y19_N4
\slice8|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice8|Mux0~1_combout\ = (\slice8|Mux0~0_combout\ & ((\slice8|U0|Result~0_combout\) # ((\slice8|U1|Result~0_combout\) # (!\slice|Mux3~0_combout\)))) # (!\slice8|Mux0~0_combout\ & (\slice8|U0|Result~0_combout\ & (\slice|Mux3~0_combout\ & 
-- \slice8|U1|Result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice8|Mux0~0_combout\,
	datab => \slice8|U0|Result~0_combout\,
	datac => \slice|Mux3~0_combout\,
	datad => \slice8|U1|Result~0_combout\,
	combout => \slice8|Mux0~1_combout\);

-- Location: IOIBUF_X10_Y19_N22
\a[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: LCCOMB_X16_Y18_N12
\slice9|U0|Result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice9|U0|Result~0_combout\ = \a[9]~input_o\ $ (((!\OPcode[1]~input_o\ & \OPcode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPcode[1]~input_o\,
	datab => \OPcode[2]~input_o\,
	datad => \a[9]~input_o\,
	combout => \slice9|U0|Result~0_combout\);

-- Location: LCCOMB_X16_Y19_N30
\slice8|U5|CarryOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice8|U5|CarryOut~0_combout\ = (\slice7|U5|CarryOut~0_combout\ & ((\slice8|U0|Result~0_combout\) # (\slice|Mux1~0_combout\ $ (\b[8]~input_o\)))) # (!\slice7|U5|CarryOut~0_combout\ & (\slice8|U0|Result~0_combout\ & (\slice|Mux1~0_combout\ $ 
-- (\b[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice7|U5|CarryOut~0_combout\,
	datab => \slice|Mux1~0_combout\,
	datac => \b[8]~input_o\,
	datad => \slice8|U0|Result~0_combout\,
	combout => \slice8|U5|CarryOut~0_combout\);

-- Location: LCCOMB_X16_Y18_N22
\slice9|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice9|Mux0~0_combout\ = (\slice|Mux3~0_combout\ & ((\slice|Mux4~0_combout\))) # (!\slice|Mux3~0_combout\ & (\slice8|U5|CarryOut~0_combout\ & !\slice|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice|Mux3~0_combout\,
	datac => \slice8|U5|CarryOut~0_combout\,
	datad => \slice|Mux4~0_combout\,
	combout => \slice9|Mux0~0_combout\);

-- Location: IOIBUF_X10_Y18_N1
\b[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(9),
	o => \b[9]~input_o\);

-- Location: LCCOMB_X16_Y18_N10
\slice9|U1|Result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice9|U1|Result~0_combout\ = \b[9]~input_o\ $ (((\OPcode[1]~input_o\ & (!\OPcode[2]~input_o\ & \OPcode[0]~input_o\)) # (!\OPcode[1]~input_o\ & (\OPcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPcode[1]~input_o\,
	datab => \OPcode[2]~input_o\,
	datac => \b[9]~input_o\,
	datad => \OPcode[0]~input_o\,
	combout => \slice9|U1|Result~0_combout\);

-- Location: LCCOMB_X16_Y18_N16
\slice9|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice9|Mux0~1_combout\ = (\slice|Mux3~0_combout\ & ((\slice9|U0|Result~0_combout\ & ((\slice9|Mux0~0_combout\) # (\slice9|U1|Result~0_combout\))) # (!\slice9|U0|Result~0_combout\ & (\slice9|Mux0~0_combout\ & \slice9|U1|Result~0_combout\)))) # 
-- (!\slice|Mux3~0_combout\ & (\slice9|U0|Result~0_combout\ $ (\slice9|Mux0~0_combout\ $ (\slice9|U1|Result~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice9|U0|Result~0_combout\,
	datab => \slice9|Mux0~0_combout\,
	datac => \slice|Mux3~0_combout\,
	datad => \slice9|U1|Result~0_combout\,
	combout => \slice9|Mux0~1_combout\);

-- Location: IOIBUF_X10_Y18_N15
\b[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(10),
	o => \b[10]~input_o\);

-- Location: LCCOMB_X16_Y18_N26
\slice10|U1|Result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice10|U1|Result~0_combout\ = \b[10]~input_o\ $ (((\OPcode[1]~input_o\ & (!\OPcode[2]~input_o\ & \OPcode[0]~input_o\)) # (!\OPcode[1]~input_o\ & (\OPcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPcode[1]~input_o\,
	datab => \OPcode[2]~input_o\,
	datac => \b[10]~input_o\,
	datad => \OPcode[0]~input_o\,
	combout => \slice10|U1|Result~0_combout\);

-- Location: LCCOMB_X16_Y18_N30
\slice9|U5|CarryOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice9|U5|CarryOut~0_combout\ = (\slice8|U5|CarryOut~0_combout\ & ((\slice9|U0|Result~0_combout\) # (\slice|Mux1~0_combout\ $ (\b[9]~input_o\)))) # (!\slice8|U5|CarryOut~0_combout\ & (\slice9|U0|Result~0_combout\ & (\slice|Mux1~0_combout\ $ 
-- (\b[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice|Mux1~0_combout\,
	datab => \b[9]~input_o\,
	datac => \slice8|U5|CarryOut~0_combout\,
	datad => \slice9|U0|Result~0_combout\,
	combout => \slice9|U5|CarryOut~0_combout\);

-- Location: IOIBUF_X15_Y25_N8
\a[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: LCCOMB_X16_Y18_N20
\slice10|U0|Result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice10|U0|Result~0_combout\ = \a[10]~input_o\ $ (((!\OPcode[1]~input_o\ & \OPcode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPcode[1]~input_o\,
	datab => \OPcode[2]~input_o\,
	datad => \a[10]~input_o\,
	combout => \slice10|U0|Result~0_combout\);

-- Location: LCCOMB_X16_Y18_N24
\slice10|U4|Z~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice10|U4|Z~0_combout\ = \b[10]~input_o\ $ (\slice|Mux1~0_combout\ $ (\slice10|U0|Result~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[10]~input_o\,
	datac => \slice|Mux1~0_combout\,
	datad => \slice10|U0|Result~0_combout\,
	combout => \slice10|U4|Z~0_combout\);

-- Location: LCCOMB_X16_Y18_N18
\slice10|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice10|Mux0~0_combout\ = (\slice|Mux3~0_combout\ & (((\slice|Mux4~0_combout\)))) # (!\slice|Mux3~0_combout\ & (\slice10|U4|Z~0_combout\ $ (((\slice9|U5|CarryOut~0_combout\ & !\slice|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice9|U5|CarryOut~0_combout\,
	datab => \slice|Mux4~0_combout\,
	datac => \slice|Mux3~0_combout\,
	datad => \slice10|U4|Z~0_combout\,
	combout => \slice10|Mux0~0_combout\);

-- Location: LCCOMB_X16_Y18_N28
\slice10|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice10|Mux0~1_combout\ = (\slice10|U1|Result~0_combout\ & ((\slice10|Mux0~0_combout\) # ((\slice|Mux3~0_combout\ & \slice10|U0|Result~0_combout\)))) # (!\slice10|U1|Result~0_combout\ & (\slice10|Mux0~0_combout\ & ((\slice10|U0|Result~0_combout\) # 
-- (!\slice|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice10|U1|Result~0_combout\,
	datab => \slice10|Mux0~0_combout\,
	datac => \slice|Mux3~0_combout\,
	datad => \slice10|U0|Result~0_combout\,
	combout => \slice10|Mux0~1_combout\);

-- Location: LCCOMB_X16_Y18_N6
\slice10|U5|CarryOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice10|U5|CarryOut~0_combout\ = (\slice9|U5|CarryOut~0_combout\ & ((\slice10|U0|Result~0_combout\) # (\b[10]~input_o\ $ (\slice|Mux1~0_combout\)))) # (!\slice9|U5|CarryOut~0_combout\ & (\slice10|U0|Result~0_combout\ & (\b[10]~input_o\ $ 
-- (\slice|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice9|U5|CarryOut~0_combout\,
	datab => \b[10]~input_o\,
	datac => \slice|Mux1~0_combout\,
	datad => \slice10|U0|Result~0_combout\,
	combout => \slice10|U5|CarryOut~0_combout\);

-- Location: LCCOMB_X15_Y10_N20
\slice11|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice11|Mux0~0_combout\ = (\slice|Mux4~0_combout\ & (\slice|Mux3~0_combout\)) # (!\slice|Mux4~0_combout\ & (!\slice|Mux3~0_combout\ & \slice10|U5|CarryOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice|Mux4~0_combout\,
	datab => \slice|Mux3~0_combout\,
	datad => \slice10|U5|CarryOut~0_combout\,
	combout => \slice11|Mux0~0_combout\);

-- Location: IOIBUF_X10_Y15_N15
\a[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: LCCOMB_X15_Y10_N26
\slice11|U0|Result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice11|U0|Result~0_combout\ = \a[11]~input_o\ $ (((\OPcode[2]~input_o\ & !\OPcode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPcode[2]~input_o\,
	datab => \OPcode[1]~input_o\,
	datac => \a[11]~input_o\,
	combout => \slice11|U0|Result~0_combout\);

-- Location: IOIBUF_X6_Y10_N15
\b[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(11),
	o => \b[11]~input_o\);

-- Location: LCCOMB_X15_Y10_N24
\slice11|U1|Result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice11|U1|Result~0_combout\ = \b[11]~input_o\ $ (((\OPcode[2]~input_o\ & (!\OPcode[1]~input_o\)) # (!\OPcode[2]~input_o\ & (\OPcode[1]~input_o\ & \OPcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPcode[2]~input_o\,
	datab => \b[11]~input_o\,
	datac => \OPcode[1]~input_o\,
	datad => \OPcode[0]~input_o\,
	combout => \slice11|U1|Result~0_combout\);

-- Location: LCCOMB_X15_Y10_N6
\slice11|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice11|Mux0~1_combout\ = (\slice|Mux3~0_combout\ & ((\slice11|Mux0~0_combout\ & ((\slice11|U0|Result~0_combout\) # (\slice11|U1|Result~0_combout\))) # (!\slice11|Mux0~0_combout\ & (\slice11|U0|Result~0_combout\ & \slice11|U1|Result~0_combout\)))) # 
-- (!\slice|Mux3~0_combout\ & (\slice11|Mux0~0_combout\ $ (\slice11|U0|Result~0_combout\ $ (\slice11|U1|Result~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice|Mux3~0_combout\,
	datab => \slice11|Mux0~0_combout\,
	datac => \slice11|U0|Result~0_combout\,
	datad => \slice11|U1|Result~0_combout\,
	combout => \slice11|Mux0~1_combout\);

-- Location: IOIBUF_X15_Y0_N22
\a[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: LCCOMB_X15_Y4_N0
\slice12|U0|Result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice12|U0|Result~0_combout\ = \a[12]~input_o\ $ (((!\OPcode[1]~input_o\ & \OPcode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPcode[1]~input_o\,
	datac => \OPcode[2]~input_o\,
	datad => \a[12]~input_o\,
	combout => \slice12|U0|Result~0_combout\);

-- Location: IOIBUF_X3_Y10_N8
\b[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(12),
	o => \b[12]~input_o\);

-- Location: LCCOMB_X15_Y10_N4
\slice12|U4|Z~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice12|U4|Z~0_combout\ = \slice12|U0|Result~0_combout\ $ (\slice|Mux1~0_combout\ $ (\b[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \slice12|U0|Result~0_combout\,
	datac => \slice|Mux1~0_combout\,
	datad => \b[12]~input_o\,
	combout => \slice12|U4|Z~0_combout\);

-- Location: LCCOMB_X15_Y10_N10
\slice11|U5|CarryOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice11|U5|CarryOut~0_combout\ = (\slice11|U0|Result~0_combout\ & ((\slice10|U5|CarryOut~0_combout\) # (\b[11]~input_o\ $ (\slice|Mux1~0_combout\)))) # (!\slice11|U0|Result~0_combout\ & (\slice10|U5|CarryOut~0_combout\ & (\b[11]~input_o\ $ 
-- (\slice|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice11|U0|Result~0_combout\,
	datab => \b[11]~input_o\,
	datac => \slice|Mux1~0_combout\,
	datad => \slice10|U5|CarryOut~0_combout\,
	combout => \slice11|U5|CarryOut~0_combout\);

-- Location: LCCOMB_X15_Y10_N22
\slice12|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice12|Mux0~0_combout\ = (\slice|Mux3~0_combout\ & (\slice|Mux4~0_combout\)) # (!\slice|Mux3~0_combout\ & (\slice12|U4|Z~0_combout\ $ (((!\slice|Mux4~0_combout\ & \slice11|U5|CarryOut~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice|Mux4~0_combout\,
	datab => \slice|Mux3~0_combout\,
	datac => \slice12|U4|Z~0_combout\,
	datad => \slice11|U5|CarryOut~0_combout\,
	combout => \slice12|Mux0~0_combout\);

-- Location: LCCOMB_X15_Y10_N0
\slice12|U1|Result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice12|U1|Result~0_combout\ = \b[12]~input_o\ $ (((\OPcode[1]~input_o\ & (!\OPcode[2]~input_o\ & \OPcode[0]~input_o\)) # (!\OPcode[1]~input_o\ & (\OPcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[12]~input_o\,
	datab => \OPcode[1]~input_o\,
	datac => \OPcode[2]~input_o\,
	datad => \OPcode[0]~input_o\,
	combout => \slice12|U1|Result~0_combout\);

-- Location: LCCOMB_X15_Y10_N8
\slice12|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice12|Mux0~1_combout\ = (\slice|Mux3~0_combout\ & ((\slice12|U0|Result~0_combout\ & ((\slice12|Mux0~0_combout\) # (\slice12|U1|Result~0_combout\))) # (!\slice12|U0|Result~0_combout\ & (\slice12|Mux0~0_combout\ & \slice12|U1|Result~0_combout\)))) # 
-- (!\slice|Mux3~0_combout\ & (((\slice12|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice|Mux3~0_combout\,
	datab => \slice12|U0|Result~0_combout\,
	datac => \slice12|Mux0~0_combout\,
	datad => \slice12|U1|Result~0_combout\,
	combout => \slice12|Mux0~1_combout\);

-- Location: LCCOMB_X15_Y10_N18
\slice12|U5|CarryOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice12|U5|CarryOut~0_combout\ = (\slice12|U0|Result~0_combout\ & ((\slice11|U5|CarryOut~0_combout\) # (\b[12]~input_o\ $ (\slice|Mux1~0_combout\)))) # (!\slice12|U0|Result~0_combout\ & (\slice11|U5|CarryOut~0_combout\ & (\b[12]~input_o\ $ 
-- (\slice|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[12]~input_o\,
	datab => \slice12|U0|Result~0_combout\,
	datac => \slice|Mux1~0_combout\,
	datad => \slice11|U5|CarryOut~0_combout\,
	combout => \slice12|U5|CarryOut~0_combout\);

-- Location: LCCOMB_X14_Y4_N28
\slice13|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice13|Mux0~0_combout\ = (\slice|Mux4~0_combout\ & (\slice|Mux3~0_combout\)) # (!\slice|Mux4~0_combout\ & (!\slice|Mux3~0_combout\ & \slice12|U5|CarryOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \slice|Mux4~0_combout\,
	datac => \slice|Mux3~0_combout\,
	datad => \slice12|U5|CarryOut~0_combout\,
	combout => \slice13|Mux0~0_combout\);

-- Location: IOIBUF_X15_Y0_N8
\b[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(13),
	o => \b[13]~input_o\);

-- Location: LCCOMB_X14_Y4_N8
\slice13|U1|Result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice13|U1|Result~0_combout\ = \b[13]~input_o\ $ (((\OPcode[2]~input_o\ & ((!\OPcode[1]~input_o\))) # (!\OPcode[2]~input_o\ & (\OPcode[0]~input_o\ & \OPcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPcode[2]~input_o\,
	datab => \OPcode[0]~input_o\,
	datac => \b[13]~input_o\,
	datad => \OPcode[1]~input_o\,
	combout => \slice13|U1|Result~0_combout\);

-- Location: IOIBUF_X9_Y0_N15
\a[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: LCCOMB_X14_Y4_N10
\slice13|U0|Result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice13|U0|Result~0_combout\ = \a[13]~input_o\ $ (((\OPcode[2]~input_o\ & !\OPcode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[13]~input_o\,
	datac => \OPcode[2]~input_o\,
	datad => \OPcode[1]~input_o\,
	combout => \slice13|U0|Result~0_combout\);

-- Location: LCCOMB_X14_Y4_N14
\slice13|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice13|Mux0~1_combout\ = (\slice|Mux3~0_combout\ & ((\slice13|Mux0~0_combout\ & ((\slice13|U1|Result~0_combout\) # (\slice13|U0|Result~0_combout\))) # (!\slice13|Mux0~0_combout\ & (\slice13|U1|Result~0_combout\ & \slice13|U0|Result~0_combout\)))) # 
-- (!\slice|Mux3~0_combout\ & (\slice13|Mux0~0_combout\ $ (\slice13|U1|Result~0_combout\ $ (\slice13|U0|Result~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice|Mux3~0_combout\,
	datab => \slice13|Mux0~0_combout\,
	datac => \slice13|U1|Result~0_combout\,
	datad => \slice13|U0|Result~0_combout\,
	combout => \slice13|Mux0~1_combout\);

-- Location: IOIBUF_X15_Y0_N1
\a[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: LCCOMB_X14_Y4_N26
\slice14|U0|Result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice14|U0|Result~0_combout\ = \a[14]~input_o\ $ (((\OPcode[2]~input_o\ & !\OPcode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPcode[2]~input_o\,
	datac => \a[14]~input_o\,
	datad => \OPcode[1]~input_o\,
	combout => \slice14|U0|Result~0_combout\);

-- Location: IOIBUF_X17_Y0_N8
\b[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(14),
	o => \b[14]~input_o\);

-- Location: LCCOMB_X14_Y4_N22
\slice14|U4|Z~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice14|U4|Z~0_combout\ = \slice|Mux1~0_combout\ $ (\slice14|U0|Result~0_combout\ $ (\b[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \slice|Mux1~0_combout\,
	datac => \slice14|U0|Result~0_combout\,
	datad => \b[14]~input_o\,
	combout => \slice14|U4|Z~0_combout\);

-- Location: LCCOMB_X14_Y4_N4
\slice13|U5|CarryOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice13|U5|CarryOut~0_combout\ = (\slice13|U0|Result~0_combout\ & ((\slice12|U5|CarryOut~0_combout\) # (\slice|Mux1~0_combout\ $ (\b[13]~input_o\)))) # (!\slice13|U0|Result~0_combout\ & (\slice12|U5|CarryOut~0_combout\ & (\slice|Mux1~0_combout\ $ 
-- (\b[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice13|U0|Result~0_combout\,
	datab => \slice|Mux1~0_combout\,
	datac => \b[13]~input_o\,
	datad => \slice12|U5|CarryOut~0_combout\,
	combout => \slice13|U5|CarryOut~0_combout\);

-- Location: LCCOMB_X14_Y4_N16
\slice14|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice14|Mux0~0_combout\ = (\slice|Mux3~0_combout\ & (((\slice|Mux4~0_combout\)))) # (!\slice|Mux3~0_combout\ & (\slice14|U4|Z~0_combout\ $ (((\slice13|U5|CarryOut~0_combout\ & !\slice|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice14|U4|Z~0_combout\,
	datab => \slice13|U5|CarryOut~0_combout\,
	datac => \slice|Mux3~0_combout\,
	datad => \slice|Mux4~0_combout\,
	combout => \slice14|Mux0~0_combout\);

-- Location: LCCOMB_X14_Y4_N0
\slice14|U1|Result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice14|U1|Result~0_combout\ = \b[14]~input_o\ $ (((\OPcode[1]~input_o\ & (\OPcode[0]~input_o\ & !\OPcode[2]~input_o\)) # (!\OPcode[1]~input_o\ & ((\OPcode[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPcode[1]~input_o\,
	datab => \OPcode[0]~input_o\,
	datac => \OPcode[2]~input_o\,
	datad => \b[14]~input_o\,
	combout => \slice14|U1|Result~0_combout\);

-- Location: LCCOMB_X14_Y4_N2
\slice14|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice14|Mux0~1_combout\ = (\slice14|U0|Result~0_combout\ & ((\slice14|Mux0~0_combout\) # ((\slice|Mux3~0_combout\ & \slice14|U1|Result~0_combout\)))) # (!\slice14|U0|Result~0_combout\ & (\slice14|Mux0~0_combout\ & ((\slice14|U1|Result~0_combout\) # 
-- (!\slice|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice14|U0|Result~0_combout\,
	datab => \slice14|Mux0~0_combout\,
	datac => \slice|Mux3~0_combout\,
	datad => \slice14|U1|Result~0_combout\,
	combout => \slice14|Mux0~1_combout\);

-- Location: IOIBUF_X13_Y0_N22
\b[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(15),
	o => \b[15]~input_o\);

-- Location: LCCOMB_X14_Y4_N20
\slice15|U1|Result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice15|U1|Result~0_combout\ = \b[15]~input_o\ $ (((\OPcode[2]~input_o\ & ((!\OPcode[1]~input_o\))) # (!\OPcode[2]~input_o\ & (\OPcode[0]~input_o\ & \OPcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPcode[2]~input_o\,
	datab => \OPcode[0]~input_o\,
	datac => \b[15]~input_o\,
	datad => \OPcode[1]~input_o\,
	combout => \slice15|U1|Result~0_combout\);

-- Location: LCCOMB_X14_Y4_N30
\slice14|U5|CarryOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice14|U5|CarryOut~0_combout\ = (\slice14|U0|Result~0_combout\ & ((\slice13|U5|CarryOut~0_combout\) # (\slice|Mux1~0_combout\ $ (\b[14]~input_o\)))) # (!\slice14|U0|Result~0_combout\ & (\slice13|U5|CarryOut~0_combout\ & (\slice|Mux1~0_combout\ $ 
-- (\b[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice14|U0|Result~0_combout\,
	datab => \slice|Mux1~0_combout\,
	datac => \slice13|U5|CarryOut~0_combout\,
	datad => \b[14]~input_o\,
	combout => \slice14|U5|CarryOut~0_combout\);

-- Location: LCCOMB_X14_Y4_N24
\slice15|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice15|Mux0~0_combout\ = (\slice|Mux3~0_combout\ & ((\slice|Mux4~0_combout\))) # (!\slice|Mux3~0_combout\ & (\slice14|U5|CarryOut~0_combout\ & !\slice|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice14|U5|CarryOut~0_combout\,
	datac => \slice|Mux3~0_combout\,
	datad => \slice|Mux4~0_combout\,
	combout => \slice15|Mux0~0_combout\);

-- Location: IOIBUF_X15_Y0_N15
\a[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: LCCOMB_X15_Y4_N18
\slice15|U0|Result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice15|U0|Result~0_combout\ = \a[15]~input_o\ $ (((!\OPcode[1]~input_o\ & \OPcode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPcode[1]~input_o\,
	datab => \a[15]~input_o\,
	datac => \OPcode[2]~input_o\,
	combout => \slice15|U0|Result~0_combout\);

-- Location: LCCOMB_X14_Y4_N18
\slice15|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice15|Mux0~1_combout\ = (\slice|Mux3~0_combout\ & ((\slice15|U1|Result~0_combout\ & ((\slice15|Mux0~0_combout\) # (\slice15|U0|Result~0_combout\))) # (!\slice15|U1|Result~0_combout\ & (\slice15|Mux0~0_combout\ & \slice15|U0|Result~0_combout\)))) # 
-- (!\slice|Mux3~0_combout\ & (\slice15|U1|Result~0_combout\ $ (\slice15|Mux0~0_combout\ $ (\slice15|U0|Result~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice15|U1|Result~0_combout\,
	datab => \slice15|Mux0~0_combout\,
	datac => \slice|Mux3~0_combout\,
	datad => \slice15|U0|Result~0_combout\,
	combout => \slice15|Mux0~1_combout\);

-- Location: LCCOMB_X14_Y4_N12
\slice15|U5|CarryOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slice15|U5|CarryOut~0_combout\ = (\slice14|U5|CarryOut~0_combout\ & ((\slice15|U0|Result~0_combout\) # (\slice|Mux1~0_combout\ $ (\b[15]~input_o\)))) # (!\slice14|U5|CarryOut~0_combout\ & (\slice15|U0|Result~0_combout\ & (\slice|Mux1~0_combout\ $ 
-- (\b[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slice14|U5|CarryOut~0_combout\,
	datab => \slice|Mux1~0_combout\,
	datac => \b[15]~input_o\,
	datad => \slice15|U0|Result~0_combout\,
	combout => \slice15|U5|CarryOut~0_combout\);

-- Location: LCCOMB_X14_Y4_N6
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\OPcode[2]~input_o\ & (\OPcode[1]~input_o\ & (\slice14|U5|CarryOut~0_combout\ $ (\slice15|U5|CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPcode[2]~input_o\,
	datab => \OPcode[1]~input_o\,
	datac => \slice14|U5|CarryOut~0_combout\,
	datad => \slice15|U5|CarryOut~0_combout\,
	combout => \Mux0~0_combout\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_result(4) <= \result[4]~output_o\;

ww_result(5) <= \result[5]~output_o\;

ww_result(6) <= \result[6]~output_o\;

ww_result(7) <= \result[7]~output_o\;

ww_result(8) <= \result[8]~output_o\;

ww_result(9) <= \result[9]~output_o\;

ww_result(10) <= \result[10]~output_o\;

ww_result(11) <= \result[11]~output_o\;

ww_result(12) <= \result[12]~output_o\;

ww_result(13) <= \result[13]~output_o\;

ww_result(14) <= \result[14]~output_o\;

ww_result(15) <= \result[15]~output_o\;

ww_overflow <= \overflow~output_o\;
END structure;



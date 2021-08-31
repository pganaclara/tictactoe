-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "08/31/2021 12:00:23"

-- 
-- Device: Altera 10M50DCF672C7G Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	tictactoe IS
    PORT (
	CLK : IN std_logic;
	YMOVE : IN std_logic_vector(30 DOWNTO 0);
	XMOVE : BUFFER std_logic_vector(30 DOWNTO 0);
	XWIN : BUFFER std_logic;
	DRAW : BUFFER std_logic;
	RESET : IN std_logic
	);
END tictactoe;

-- Design Ports Information
-- YMOVE[4]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[5]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[7]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[8]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[9]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[10]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[11]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[12]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[13]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[14]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[15]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[16]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[17]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[18]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[19]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[20]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[21]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[22]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[23]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[24]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[25]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[26]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[27]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[28]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[29]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[30]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[0]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[2]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[3]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[5]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[6]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[7]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[8]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[9]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[10]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[11]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[12]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[13]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[14]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[15]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[16]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[17]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[18]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[19]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[20]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[21]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[22]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[23]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[24]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[25]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[26]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[27]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[28]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[29]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[30]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XWIN	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAW	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[3]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[2]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[1]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[0]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF tictactoe IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_YMOVE : std_logic_vector(30 DOWNTO 0);
SIGNAL ww_XMOVE : std_logic_vector(30 DOWNTO 0);
SIGNAL ww_XWIN : std_logic;
SIGNAL ww_DRAW : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \YMOVE[4]~input_o\ : std_logic;
SIGNAL \YMOVE[5]~input_o\ : std_logic;
SIGNAL \YMOVE[6]~input_o\ : std_logic;
SIGNAL \YMOVE[7]~input_o\ : std_logic;
SIGNAL \YMOVE[8]~input_o\ : std_logic;
SIGNAL \YMOVE[9]~input_o\ : std_logic;
SIGNAL \YMOVE[10]~input_o\ : std_logic;
SIGNAL \YMOVE[11]~input_o\ : std_logic;
SIGNAL \YMOVE[12]~input_o\ : std_logic;
SIGNAL \YMOVE[13]~input_o\ : std_logic;
SIGNAL \YMOVE[14]~input_o\ : std_logic;
SIGNAL \YMOVE[15]~input_o\ : std_logic;
SIGNAL \YMOVE[16]~input_o\ : std_logic;
SIGNAL \YMOVE[17]~input_o\ : std_logic;
SIGNAL \YMOVE[18]~input_o\ : std_logic;
SIGNAL \YMOVE[19]~input_o\ : std_logic;
SIGNAL \YMOVE[20]~input_o\ : std_logic;
SIGNAL \YMOVE[21]~input_o\ : std_logic;
SIGNAL \YMOVE[22]~input_o\ : std_logic;
SIGNAL \YMOVE[23]~input_o\ : std_logic;
SIGNAL \YMOVE[24]~input_o\ : std_logic;
SIGNAL \YMOVE[25]~input_o\ : std_logic;
SIGNAL \YMOVE[26]~input_o\ : std_logic;
SIGNAL \YMOVE[27]~input_o\ : std_logic;
SIGNAL \YMOVE[28]~input_o\ : std_logic;
SIGNAL \YMOVE[29]~input_o\ : std_logic;
SIGNAL \YMOVE[30]~input_o\ : std_logic;
SIGNAL \YMOVE[3]~input_o\ : std_logic;
SIGNAL \YMOVE[2]~input_o\ : std_logic;
SIGNAL \YMOVE[1]~input_o\ : std_logic;
SIGNAL \YMOVE[0]~input_o\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \XMOVE[0]~output_o\ : std_logic;
SIGNAL \XMOVE[1]~output_o\ : std_logic;
SIGNAL \XMOVE[2]~output_o\ : std_logic;
SIGNAL \XMOVE[3]~output_o\ : std_logic;
SIGNAL \XMOVE[4]~output_o\ : std_logic;
SIGNAL \XMOVE[5]~output_o\ : std_logic;
SIGNAL \XMOVE[6]~output_o\ : std_logic;
SIGNAL \XMOVE[7]~output_o\ : std_logic;
SIGNAL \XMOVE[8]~output_o\ : std_logic;
SIGNAL \XMOVE[9]~output_o\ : std_logic;
SIGNAL \XMOVE[10]~output_o\ : std_logic;
SIGNAL \XMOVE[11]~output_o\ : std_logic;
SIGNAL \XMOVE[12]~output_o\ : std_logic;
SIGNAL \XMOVE[13]~output_o\ : std_logic;
SIGNAL \XMOVE[14]~output_o\ : std_logic;
SIGNAL \XMOVE[15]~output_o\ : std_logic;
SIGNAL \XMOVE[16]~output_o\ : std_logic;
SIGNAL \XMOVE[17]~output_o\ : std_logic;
SIGNAL \XMOVE[18]~output_o\ : std_logic;
SIGNAL \XMOVE[19]~output_o\ : std_logic;
SIGNAL \XMOVE[20]~output_o\ : std_logic;
SIGNAL \XMOVE[21]~output_o\ : std_logic;
SIGNAL \XMOVE[22]~output_o\ : std_logic;
SIGNAL \XMOVE[23]~output_o\ : std_logic;
SIGNAL \XMOVE[24]~output_o\ : std_logic;
SIGNAL \XMOVE[25]~output_o\ : std_logic;
SIGNAL \XMOVE[26]~output_o\ : std_logic;
SIGNAL \XMOVE[27]~output_o\ : std_logic;
SIGNAL \XMOVE[28]~output_o\ : std_logic;
SIGNAL \XMOVE[29]~output_o\ : std_logic;
SIGNAL \XMOVE[30]~output_o\ : std_logic;
SIGNAL \XWIN~output_o\ : std_logic;
SIGNAL \DRAW~output_o\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_YMOVE <= YMOVE;
XMOVE <= ww_XMOVE;
XWIN <= ww_XWIN;
DRAW <= ww_DRAW;
ww_RESET <= RESET;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

-- Location: LCCOMB_X44_Y49_N16
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

-- Location: IOOBUF_X29_Y0_N2
\XMOVE[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \XMOVE[0]~output_o\);

-- Location: IOOBUF_X38_Y39_N9
\XMOVE[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \XMOVE[1]~output_o\);

-- Location: IOOBUF_X64_Y0_N30
\XMOVE[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \XMOVE[2]~output_o\);

-- Location: IOOBUF_X49_Y0_N30
\XMOVE[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \XMOVE[3]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\XMOVE[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \XMOVE[4]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\XMOVE[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \XMOVE[5]~output_o\);

-- Location: IOOBUF_X78_Y8_N2
\XMOVE[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \XMOVE[6]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\XMOVE[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \XMOVE[7]~output_o\);

-- Location: IOOBUF_X60_Y54_N30
\XMOVE[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \XMOVE[8]~output_o\);

-- Location: IOOBUF_X78_Y16_N16
\XMOVE[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \XMOVE[9]~output_o\);

-- Location: IOOBUF_X60_Y54_N23
\XMOVE[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \XMOVE[10]~output_o\);

-- Location: IOOBUF_X78_Y12_N9
\XMOVE[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \XMOVE[11]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\XMOVE[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \XMOVE[12]~output_o\);

-- Location: IOOBUF_X51_Y0_N9
\XMOVE[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \XMOVE[13]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\XMOVE[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \XMOVE[14]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\XMOVE[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \XMOVE[15]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\XMOVE[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \XMOVE[16]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\XMOVE[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \XMOVE[17]~output_o\);

-- Location: IOOBUF_X78_Y13_N9
\XMOVE[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \XMOVE[18]~output_o\);

-- Location: IOOBUF_X64_Y54_N23
\XMOVE[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \XMOVE[19]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\XMOVE[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \XMOVE[20]~output_o\);

-- Location: IOOBUF_X51_Y0_N30
\XMOVE[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \XMOVE[21]~output_o\);

-- Location: IOOBUF_X78_Y15_N23
\XMOVE[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \XMOVE[22]~output_o\);

-- Location: IOOBUF_X20_Y39_N2
\XMOVE[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \XMOVE[23]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\XMOVE[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \XMOVE[24]~output_o\);

-- Location: IOOBUF_X40_Y39_N16
\XMOVE[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \XMOVE[25]~output_o\);

-- Location: IOOBUF_X78_Y49_N23
\XMOVE[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \XMOVE[26]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\XMOVE[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \XMOVE[27]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\XMOVE[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \XMOVE[28]~output_o\);

-- Location: IOOBUF_X40_Y39_N23
\XMOVE[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \XMOVE[29]~output_o\);

-- Location: IOOBUF_X78_Y4_N16
\XMOVE[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \XMOVE[30]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\XWIN~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \XWIN~output_o\);

-- Location: IOOBUF_X20_Y0_N30
\DRAW~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAW~output_o\);

-- Location: IOIBUF_X64_Y54_N8
\YMOVE[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YMOVE(4),
	o => \YMOVE[4]~input_o\);

-- Location: IOIBUF_X78_Y3_N1
\YMOVE[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YMOVE(5),
	o => \YMOVE[5]~input_o\);

-- Location: IOIBUF_X0_Y28_N8
\YMOVE[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YMOVE(6),
	o => \YMOVE[6]~input_o\);

-- Location: IOIBUF_X0_Y7_N15
\YMOVE[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YMOVE(7),
	o => \YMOVE[7]~input_o\);

-- Location: IOIBUF_X62_Y54_N29
\YMOVE[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YMOVE(8),
	o => \YMOVE[8]~input_o\);

-- Location: IOIBUF_X29_Y0_N15
\YMOVE[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YMOVE(9),
	o => \YMOVE[9]~input_o\);

-- Location: IOIBUF_X78_Y25_N8
\YMOVE[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YMOVE(10),
	o => \YMOVE[10]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\YMOVE[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YMOVE(11),
	o => \YMOVE[11]~input_o\);

-- Location: IOIBUF_X78_Y15_N15
\YMOVE[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YMOVE(12),
	o => \YMOVE[12]~input_o\);

-- Location: IOIBUF_X42_Y0_N1
\YMOVE[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YMOVE(13),
	o => \YMOVE[13]~input_o\);

-- Location: IOIBUF_X78_Y4_N1
\YMOVE[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YMOVE(14),
	o => \YMOVE[14]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\YMOVE[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YMOVE(15),
	o => \YMOVE[15]~input_o\);

-- Location: IOIBUF_X62_Y54_N22
\YMOVE[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YMOVE(16),
	o => \YMOVE[16]~input_o\);

-- Location: IOIBUF_X78_Y30_N8
\YMOVE[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YMOVE(17),
	o => \YMOVE[17]~input_o\);

-- Location: IOIBUF_X69_Y54_N22
\YMOVE[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YMOVE(18),
	o => \YMOVE[18]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\YMOVE[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YMOVE(19),
	o => \YMOVE[19]~input_o\);

-- Location: IOIBUF_X74_Y54_N8
\YMOVE[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YMOVE(20),
	o => \YMOVE[20]~input_o\);

-- Location: IOIBUF_X58_Y0_N22
\YMOVE[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YMOVE(21),
	o => \YMOVE[21]~input_o\);

-- Location: IOIBUF_X0_Y3_N1
\YMOVE[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YMOVE(22),
	o => \YMOVE[22]~input_o\);

-- Location: IOIBUF_X26_Y0_N15
\YMOVE[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YMOVE(23),
	o => \YMOVE[23]~input_o\);

-- Location: IOIBUF_X0_Y13_N1
\YMOVE[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YMOVE(24),
	o => \YMOVE[24]~input_o\);

-- Location: IOIBUF_X42_Y0_N15
\YMOVE[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YMOVE(25),
	o => \YMOVE[25]~input_o\);

-- Location: IOIBUF_X22_Y0_N22
\YMOVE[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YMOVE(26),
	o => \YMOVE[26]~input_o\);

-- Location: IOIBUF_X66_Y0_N22
\YMOVE[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YMOVE(27),
	o => \YMOVE[27]~input_o\);

-- Location: IOIBUF_X66_Y54_N8
\YMOVE[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YMOVE(28),
	o => \YMOVE[28]~input_o\);

-- Location: IOIBUF_X56_Y0_N8
\YMOVE[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YMOVE(29),
	o => \YMOVE[29]~input_o\);

-- Location: IOIBUF_X29_Y0_N29
\YMOVE[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YMOVE(30),
	o => \YMOVE[30]~input_o\);

-- Location: IOIBUF_X31_Y39_N8
\YMOVE[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YMOVE(3),
	o => \YMOVE[3]~input_o\);

-- Location: IOIBUF_X0_Y34_N8
\YMOVE[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YMOVE(2),
	o => \YMOVE[2]~input_o\);

-- Location: IOIBUF_X0_Y7_N22
\YMOVE[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YMOVE(1),
	o => \YMOVE[1]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\YMOVE[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YMOVE(0),
	o => \YMOVE[0]~input_o\);

-- Location: IOIBUF_X60_Y0_N29
\RESET~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: IOIBUF_X64_Y54_N15
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
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
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
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
	testbits => 0,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 0,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_XMOVE(0) <= \XMOVE[0]~output_o\;

ww_XMOVE(1) <= \XMOVE[1]~output_o\;

ww_XMOVE(2) <= \XMOVE[2]~output_o\;

ww_XMOVE(3) <= \XMOVE[3]~output_o\;

ww_XMOVE(4) <= \XMOVE[4]~output_o\;

ww_XMOVE(5) <= \XMOVE[5]~output_o\;

ww_XMOVE(6) <= \XMOVE[6]~output_o\;

ww_XMOVE(7) <= \XMOVE[7]~output_o\;

ww_XMOVE(8) <= \XMOVE[8]~output_o\;

ww_XMOVE(9) <= \XMOVE[9]~output_o\;

ww_XMOVE(10) <= \XMOVE[10]~output_o\;

ww_XMOVE(11) <= \XMOVE[11]~output_o\;

ww_XMOVE(12) <= \XMOVE[12]~output_o\;

ww_XMOVE(13) <= \XMOVE[13]~output_o\;

ww_XMOVE(14) <= \XMOVE[14]~output_o\;

ww_XMOVE(15) <= \XMOVE[15]~output_o\;

ww_XMOVE(16) <= \XMOVE[16]~output_o\;

ww_XMOVE(17) <= \XMOVE[17]~output_o\;

ww_XMOVE(18) <= \XMOVE[18]~output_o\;

ww_XMOVE(19) <= \XMOVE[19]~output_o\;

ww_XMOVE(20) <= \XMOVE[20]~output_o\;

ww_XMOVE(21) <= \XMOVE[21]~output_o\;

ww_XMOVE(22) <= \XMOVE[22]~output_o\;

ww_XMOVE(23) <= \XMOVE[23]~output_o\;

ww_XMOVE(24) <= \XMOVE[24]~output_o\;

ww_XMOVE(25) <= \XMOVE[25]~output_o\;

ww_XMOVE(26) <= \XMOVE[26]~output_o\;

ww_XMOVE(27) <= \XMOVE[27]~output_o\;

ww_XMOVE(28) <= \XMOVE[28]~output_o\;

ww_XMOVE(29) <= \XMOVE[29]~output_o\;

ww_XMOVE(30) <= \XMOVE[30]~output_o\;

ww_XWIN <= \XWIN~output_o\;

ww_DRAW <= \DRAW~output_o\;
END structure;



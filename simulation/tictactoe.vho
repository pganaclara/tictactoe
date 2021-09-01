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

-- DATE "09/01/2021 15:11:30"

-- 
-- Device: Altera 10M50DCF672C7G Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	tictactoe IS
    PORT (
	CLK : IN std_logic;
	FLAG : IN std_logic;
	YMOVE : IN std_logic_vector(30 DOWNTO 0);
	XMOVE : BUFFER std_logic_vector(30 DOWNTO 0);
	XWIN : BUFFER std_logic;
	YWIN : BUFFER std_logic;
	DRAW : BUFFER std_logic;
	RESET : IN std_logic
	);
END tictactoe;

-- Design Ports Information
-- YMOVE[4]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[5]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[6]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[7]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[8]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[9]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[10]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[11]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[12]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[13]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[14]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[15]	=>  Location: PIN_T24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[16]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[17]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[18]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[19]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[20]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[21]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[22]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[23]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[24]	=>  Location: PIN_AD6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[25]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[26]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[27]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[28]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[29]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[30]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[0]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[1]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[2]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[3]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[4]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[5]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[6]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[7]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[8]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[9]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[10]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[11]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[12]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[13]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[14]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[15]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[16]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[17]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[18]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[19]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[20]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[21]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[22]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[23]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[24]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[25]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[26]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[27]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[28]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[29]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XMOVE[30]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XWIN	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YWIN	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAW	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FLAG	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[0]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[1]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[3]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMOVE[2]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_FLAG : std_logic;
SIGNAL ww_YMOVE : std_logic_vector(30 DOWNTO 0);
SIGNAL ww_XMOVE : std_logic_vector(30 DOWNTO 0);
SIGNAL ww_XWIN : std_logic;
SIGNAL ww_YWIN : std_logic;
SIGNAL ww_DRAW : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \YWIN~output_o\ : std_logic;
SIGNAL \DRAW~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \FLAG~input_o\ : std_logic;
SIGNAL \YMOVE[3]~input_o\ : std_logic;
SIGNAL \YMOVE[1]~input_o\ : std_logic;
SIGNAL \YMOVE[0]~input_o\ : std_logic;
SIGNAL \YMOVE[2]~input_o\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \board~90_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \board~94_combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \board~110_combout\ : std_logic;
SIGNAL \Decoder1~3_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \board~102_combout\ : std_logic;
SIGNAL \board~103_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \board~104_combout\ : std_logic;
SIGNAL \board~105_combout\ : std_logic;
SIGNAL \board[2].X~q\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \board~106_combout\ : std_logic;
SIGNAL \Decoder1~4_combout\ : std_logic;
SIGNAL \board~107_combout\ : std_logic;
SIGNAL \board~108_combout\ : std_logic;
SIGNAL \board~109_combout\ : std_logic;
SIGNAL \board[1].X~q\ : std_logic;
SIGNAL \U4|U1|L~1_combout\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \board~122_combout\ : std_logic;
SIGNAL \Decoder1~8_combout\ : std_logic;
SIGNAL \board~123_combout\ : std_logic;
SIGNAL \board~124_combout\ : std_logic;
SIGNAL \board~125_combout\ : std_logic;
SIGNAL \board[5].X~q\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \board~98_combout\ : std_logic;
SIGNAL \Decoder1~2_combout\ : std_logic;
SIGNAL \board~100_combout\ : std_logic;
SIGNAL \board~101_combout\ : std_logic;
SIGNAL \board[6].EMPTY~q\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \board~114_combout\ : std_logic;
SIGNAL \Decoder1~6_combout\ : std_logic;
SIGNAL \board~115_combout\ : std_logic;
SIGNAL \board~116_combout\ : std_logic;
SIGNAL \board~117_combout\ : std_logic;
SIGNAL \board[4].X~q\ : std_logic;
SIGNAL \U4|U1|L~2_combout\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \board~118_combout\ : std_logic;
SIGNAL \Decoder1~7_combout\ : std_logic;
SIGNAL \board~120_combout\ : std_logic;
SIGNAL \board[8].EMPTY~feeder_combout\ : std_logic;
SIGNAL \board~121_combout\ : std_logic;
SIGNAL \board[8].EMPTY~q\ : std_logic;
SIGNAL \board~91_combout\ : std_logic;
SIGNAL \board~93_combout\ : std_logic;
SIGNAL \board[7].X~q\ : std_logic;
SIGNAL \U4|U1|L~6_combout\ : std_logic;
SIGNAL \board[2].EMPTY~feeder_combout\ : std_logic;
SIGNAL \board[2].EMPTY~q\ : std_logic;
SIGNAL \board~95_combout\ : std_logic;
SIGNAL \board~97_combout\ : std_logic;
SIGNAL \board[3].X~q\ : std_logic;
SIGNAL \U4|U1|L~3_combout\ : std_logic;
SIGNAL \board~119_combout\ : std_logic;
SIGNAL \board[8].X~q\ : std_logic;
SIGNAL \U4|U1|L~4_combout\ : std_logic;
SIGNAL \board[5].EMPTY~q\ : std_logic;
SIGNAL \board~99_combout\ : std_logic;
SIGNAL \board[6].X~q\ : std_logic;
SIGNAL \U4|U1|L~7_combout\ : std_logic;
SIGNAL \U4|U1|linemove[3]~12_combout\ : std_logic;
SIGNAL \U4|U1|linemove[3]~13_combout\ : std_logic;
SIGNAL \U4|U1|linemove[2]~14_combout\ : std_logic;
SIGNAL \board[1].EMPTY~q\ : std_logic;
SIGNAL \U4|U1|L~5_combout\ : std_logic;
SIGNAL \board[4].EMPTY~q\ : std_logic;
SIGNAL \U4|U1|L~0_combout\ : std_logic;
SIGNAL \U4|U1|linemove[0]~4_combout\ : std_logic;
SIGNAL \U4|U1|linemove[1]~6_combout\ : std_logic;
SIGNAL \U4|U1|linemove[2]~15_combout\ : std_logic;
SIGNAL \U4|U1|linemove[2]~16_combout\ : std_logic;
SIGNAL \U4|U1|linemove[1]~5_combout\ : std_logic;
SIGNAL \U4|U1|linemove[0]~17_combout\ : std_logic;
SIGNAL \U4|U1|linemove[1]~7_combout\ : std_logic;
SIGNAL \U4|U1|linemove[1]~8_combout\ : std_logic;
SIGNAL \U4|U1|linemove[0]~9_combout\ : std_logic;
SIGNAL \U4|U1|linemove[0]~10_combout\ : std_logic;
SIGNAL \U4|U1|linemove[0]~11_combout\ : std_logic;
SIGNAL \U4|U1|Equal0~0_combout\ : std_logic;
SIGNAL \U4|U1|C~6_combout\ : std_logic;
SIGNAL \U4|U1|C~2_combout\ : std_logic;
SIGNAL \U4|U1|C~0_combout\ : std_logic;
SIGNAL \U4|U1|C~1_combout\ : std_logic;
SIGNAL \U4|U1|C~3_combout\ : std_logic;
SIGNAL \U4|U1|colmove[1]~4_combout\ : std_logic;
SIGNAL \U4|U1|C~4_combout\ : std_logic;
SIGNAL \U4|U1|C~5_combout\ : std_logic;
SIGNAL \U4|U1|colmove[1]~5_combout\ : std_logic;
SIGNAL \U4|U1|colmove[0]~8_combout\ : std_logic;
SIGNAL \U4|U1|colmove[1]~9_combout\ : std_logic;
SIGNAL \U4|U1|MOVE[1]~0_combout\ : std_logic;
SIGNAL \U4|U1|D~0_combout\ : std_logic;
SIGNAL \U4|U1|D~1_combout\ : std_logic;
SIGNAL \U4|U1|diagmove[3]~0_combout\ : std_logic;
SIGNAL \U4|U1|diagmove[2]~1_combout\ : std_logic;
SIGNAL \U4|U1|MOVE[1]~6_combout\ : std_logic;
SIGNAL \U4|U1|MOVE[1]~12_combout\ : std_logic;
SIGNAL \U4|U3|MOVE[2]~1_combout\ : std_logic;
SIGNAL \U4|U3|MOVE[1]~7_combout\ : std_logic;
SIGNAL \U4|U3|MOVE[1]~8_combout\ : std_logic;
SIGNAL \U4|U3|MOVE[1]~9_combout\ : std_logic;
SIGNAL \U4|U1|colmove[0]~10_combout\ : std_logic;
SIGNAL \U4|U1|colmove[0]~11_combout\ : std_logic;
SIGNAL \U4|U1|MOVE[0]~1_combout\ : std_logic;
SIGNAL \U4|U1|colmove[2]~12_combout\ : std_logic;
SIGNAL \U4|U1|MOVE[3]~2_combout\ : std_logic;
SIGNAL \U4|U1|D~2_combout\ : std_logic;
SIGNAL \U4|U1|MOVE[0]~7_combout\ : std_logic;
SIGNAL \U4|U1|MOVE[0]~8_combout\ : std_logic;
SIGNAL \U4|U1|MOVE[2]~9_combout\ : std_logic;
SIGNAL \U4|U1|MOVE[2]~10_combout\ : std_logic;
SIGNAL \U4|U3|Equal0~0_combout\ : std_logic;
SIGNAL \U4|U1|colmove[0]~14_combout\ : std_logic;
SIGNAL \U4|U1|colmove[2]~13_combout\ : std_logic;
SIGNAL \U4|U1|MOVE[2]~5_combout\ : std_logic;
SIGNAL \U4|U3|Equal0~1_combout\ : std_logic;
SIGNAL \U4|U3|Equal0~2_combout\ : std_logic;
SIGNAL \board~130_combout\ : std_logic;
SIGNAL \board[1].Y~q\ : std_logic;
SIGNAL \board~131_combout\ : std_logic;
SIGNAL \board~113_combout\ : std_logic;
SIGNAL \board[9].Y~q\ : std_logic;
SIGNAL \U4|U2|D~2_combout\ : std_logic;
SIGNAL \board~126_combout\ : std_logic;
SIGNAL \board[7].Y~q\ : std_logic;
SIGNAL \board~134_combout\ : std_logic;
SIGNAL \board[5].Y~q\ : std_logic;
SIGNAL \U4|U2|D~0_combout\ : std_logic;
SIGNAL \board~127_combout\ : std_logic;
SIGNAL \board[3].Y~q\ : std_logic;
SIGNAL \U4|U2|MOVE[0]~9_combout\ : std_logic;
SIGNAL \U4|U2|MOVE[0]~10_combout\ : std_logic;
SIGNAL \U4|U2|diagmove[3]~0_combout\ : std_logic;
SIGNAL \U4|U2|diagmove[0]~1_combout\ : std_logic;
SIGNAL \U4|U2|MOVE[0]~11_combout\ : std_logic;
SIGNAL \board~132_combout\ : std_logic;
SIGNAL \board[4].Y~q\ : std_logic;
SIGNAL \U4|U2|L~3_combout\ : std_logic;
SIGNAL \board~129_combout\ : std_logic;
SIGNAL \board[2].Y~q\ : std_logic;
SIGNAL \U4|U2|L~1_combout\ : std_logic;
SIGNAL \U4|U2|L~6_combout\ : std_logic;
SIGNAL \U4|U2|L~4_combout\ : std_logic;
SIGNAL \board~128_combout\ : std_logic;
SIGNAL \board[6].Y~q\ : std_logic;
SIGNAL \U4|U2|L~5_combout\ : std_logic;
SIGNAL \board~133_combout\ : std_logic;
SIGNAL \board[8].Y~q\ : std_logic;
SIGNAL \U4|U2|L~2_combout\ : std_logic;
SIGNAL \U4|U2|linemove[3]~12_combout\ : std_logic;
SIGNAL \U4|U2|linemove[3]~13_combout\ : std_logic;
SIGNAL \U4|U2|linemove[2]~14_combout\ : std_logic;
SIGNAL \U4|U2|L~0_combout\ : std_logic;
SIGNAL \U4|U2|L~7_combout\ : std_logic;
SIGNAL \U4|U2|linemove[0]~4_combout\ : std_logic;
SIGNAL \U4|U2|linemove[0]~7_combout\ : std_logic;
SIGNAL \U4|U2|linemove[2]~15_combout\ : std_logic;
SIGNAL \U4|U2|linemove[2]~16_combout\ : std_logic;
SIGNAL \U4|U2|linemove[0]~6_combout\ : std_logic;
SIGNAL \U4|U2|linemove[0]~5_combout\ : std_logic;
SIGNAL \U4|U2|linemove[0]~17_combout\ : std_logic;
SIGNAL \U4|U2|linemove[0]~8_combout\ : std_logic;
SIGNAL \U4|U2|linemove[0]~9_combout\ : std_logic;
SIGNAL \U4|U2|linemove[1]~10_combout\ : std_logic;
SIGNAL \U4|U2|linemove[1]~11_combout\ : std_logic;
SIGNAL \U4|U2|Equal0~0_combout\ : std_logic;
SIGNAL \U4|U2|C~6_combout\ : std_logic;
SIGNAL \U4|U2|C~0_combout\ : std_logic;
SIGNAL \U4|U2|C~2_combout\ : std_logic;
SIGNAL \U4|U2|C~5_combout\ : std_logic;
SIGNAL \U4|U2|C~3_combout\ : std_logic;
SIGNAL \U4|U2|colmove[1]~9_combout\ : std_logic;
SIGNAL \U4|U2|C~1_combout\ : std_logic;
SIGNAL \U4|U2|C~4_combout\ : std_logic;
SIGNAL \U4|U2|colmove[1]~10_combout\ : std_logic;
SIGNAL \U4|U2|colmove[0]~11_combout\ : std_logic;
SIGNAL \U4|U2|colmove[1]~13_combout\ : std_logic;
SIGNAL \U4|U2|colmove[0]~8_combout\ : std_logic;
SIGNAL \U4|U2|colmove[0]~12_combout\ : std_logic;
SIGNAL \U4|U2|colmove[0]~17_combout\ : std_logic;
SIGNAL \U4|U2|colmove[2]~18_combout\ : std_logic;
SIGNAL \U4|U2|MOVE[3]~2_combout\ : std_logic;
SIGNAL \U4|U2|colmove[1]~14_combout\ : std_logic;
SIGNAL \U4|U2|colmove[1]~15_combout\ : std_logic;
SIGNAL \U4|U2|MOVE[3]~3_combout\ : std_logic;
SIGNAL \U4|U2|MOVE[0]~8_combout\ : std_logic;
SIGNAL \U4|U2|MOVE[0]~15_combout\ : std_logic;
SIGNAL \U4|U2|MOVE[3]~4_combout\ : std_logic;
SIGNAL \U4|U2|MOVE[3]~5_combout\ : std_logic;
SIGNAL \U4|U2|D~1_combout\ : std_logic;
SIGNAL \U4|U2|MOVE[1]~6_combout\ : std_logic;
SIGNAL \U4|U2|MOVE[1]~7_combout\ : std_logic;
SIGNAL \U4|U3|MOVE[0]~2_combout\ : std_logic;
SIGNAL \U4|U2|colmove[2]~16_combout\ : std_logic;
SIGNAL \U4|U2|MOVE[2]~12_combout\ : std_logic;
SIGNAL \U4|U2|MOVE[2]~13_combout\ : std_logic;
SIGNAL \U4|U2|MOVE[2]~14_combout\ : std_logic;
SIGNAL \U4|U3|MOVE[0]~3_combout\ : std_logic;
SIGNAL \U4|U3|MOVE[1]~6_combout\ : std_logic;
SIGNAL \U4|U3|MOVE[1]~10_combout\ : std_logic;
SIGNAL \Decoder1~5_combout\ : std_logic;
SIGNAL \board~111_combout\ : std_logic;
SIGNAL \board[9].X~q\ : std_logic;
SIGNAL \U4|U1|colmove[1]~6_combout\ : std_logic;
SIGNAL \U4|U1|colmove[1]~7_combout\ : std_logic;
SIGNAL \U4|U1|MOVE[3]~3_combout\ : std_logic;
SIGNAL \U4|U1|MOVE[3]~4_combout\ : std_logic;
SIGNAL \U4|U1|MOVE[2]~13_combout\ : std_logic;
SIGNAL \U4|U3|MOVE[2]~12_combout\ : std_logic;
SIGNAL \DRAW~0_combout\ : std_logic;
SIGNAL \U4|U3|MOVE[2]~13_combout\ : std_logic;
SIGNAL \U4|U3|MOVE[2]~11_combout\ : std_logic;
SIGNAL \U4|U3|MOVE[2]~14_combout\ : std_logic;
SIGNAL \Decoder1~1_combout\ : std_logic;
SIGNAL \board~96_combout\ : std_logic;
SIGNAL \board[3].EMPTY~q\ : std_logic;
SIGNAL \U4|U3|MOVE[1]~0_combout\ : std_logic;
SIGNAL \U4|U3|MOVE[3]~16_combout\ : std_logic;
SIGNAL \U4|U3|MOVE[3]~17_combout\ : std_logic;
SIGNAL \U4|U1|MOVE[3]~14_combout\ : std_logic;
SIGNAL \U4|U3|MOVE[3]~15_combout\ : std_logic;
SIGNAL \U4|U3|MOVE[3]~18_combout\ : std_logic;
SIGNAL \Decoder1~0_combout\ : std_logic;
SIGNAL \board~92_combout\ : std_logic;
SIGNAL \board[7].EMPTY~q\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \state~0_combout\ : std_logic;
SIGNAL \state~q\ : std_logic;
SIGNAL \board~112_combout\ : std_logic;
SIGNAL \board[9].EMPTY~q\ : std_logic;
SIGNAL \U4|U1|MOVE[0]~11_combout\ : std_logic;
SIGNAL \U4|U3|MOVE[0]~4_combout\ : std_logic;
SIGNAL \U4|U3|MOVE[0]~5_combout\ : std_logic;
SIGNAL \XMOVE[0]~0_combout\ : std_logic;
SIGNAL \XMOVE[0]~reg0_q\ : std_logic;
SIGNAL \XMOVE[1]~reg0_q\ : std_logic;
SIGNAL \XMOVE[2]~reg0_q\ : std_logic;
SIGNAL \XMOVE[3]~reg0_q\ : std_logic;
SIGNAL \winpc~4_combout\ : std_logic;
SIGNAL \winpc~3_combout\ : std_logic;
SIGNAL \winpc~1_combout\ : std_logic;
SIGNAL \winpc~0_combout\ : std_logic;
SIGNAL \winpc~2_combout\ : std_logic;
SIGNAL \winpc~5_combout\ : std_logic;
SIGNAL \winplayer~3_combout\ : std_logic;
SIGNAL \winplayer~4_combout\ : std_logic;
SIGNAL \winplayer~0_combout\ : std_logic;
SIGNAL \winplayer~1_combout\ : std_logic;
SIGNAL \winplayer~2_combout\ : std_logic;
SIGNAL \winplayer~5_combout\ : std_logic;
SIGNAL \YWIN~0_combout\ : std_logic;
SIGNAL \DRAW~1_combout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_FLAG <= FLAG;
ww_YMOVE <= YMOVE;
XMOVE <= ww_XMOVE;
XWIN <= ww_XWIN;
YWIN <= ww_YWIN;
DRAW <= ww_DRAW;
ww_RESET <= RESET;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

-- Location: LCCOMB_X44_Y50_N12
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

-- Location: IOOBUF_X0_Y21_N9
\XMOVE[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \XMOVE[0]~reg0_q\,
	devoe => ww_devoe,
	o => \XMOVE[0]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\XMOVE[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \XMOVE[1]~reg0_q\,
	devoe => ww_devoe,
	o => \XMOVE[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N2
\XMOVE[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \XMOVE[2]~reg0_q\,
	devoe => ww_devoe,
	o => \XMOVE[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\XMOVE[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \XMOVE[3]~reg0_q\,
	devoe => ww_devoe,
	o => \XMOVE[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N23
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

-- Location: IOOBUF_X60_Y54_N9
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

-- Location: IOOBUF_X16_Y0_N23
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

-- Location: IOOBUF_X22_Y0_N30
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

-- Location: IOOBUF_X36_Y39_N23
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

-- Location: IOOBUF_X26_Y0_N30
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

-- Location: IOOBUF_X69_Y0_N30
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

-- Location: IOOBUF_X78_Y36_N24
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

-- Location: IOOBUF_X78_Y40_N16
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

-- Location: IOOBUF_X31_Y0_N16
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

-- Location: IOOBUF_X46_Y54_N9
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

-- Location: IOOBUF_X78_Y31_N23
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

-- Location: IOOBUF_X0_Y36_N9
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

-- Location: IOOBUF_X36_Y0_N2
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

-- Location: IOOBUF_X71_Y54_N16
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

-- Location: IOOBUF_X78_Y29_N9
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

-- Location: IOOBUF_X31_Y0_N9
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

-- Location: IOOBUF_X0_Y34_N16
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

-- Location: IOOBUF_X78_Y3_N9
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

-- Location: IOOBUF_X22_Y39_N16
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

-- Location: IOOBUF_X26_Y39_N2
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

-- Location: IOOBUF_X78_Y31_N16
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

-- Location: IOOBUF_X78_Y24_N24
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

-- Location: IOOBUF_X78_Y30_N2
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

-- Location: IOOBUF_X78_Y12_N2
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

-- Location: IOOBUF_X58_Y0_N9
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

-- Location: IOOBUF_X78_Y25_N9
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

-- Location: IOOBUF_X0_Y24_N23
\XWIN~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \winpc~5_combout\,
	devoe => ww_devoe,
	o => \XWIN~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\YWIN~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \YWIN~0_combout\,
	devoe => ww_devoe,
	o => \YWIN~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\DRAW~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAW~1_combout\,
	devoe => ww_devoe,
	o => \DRAW~output_o\);

-- Location: IOIBUF_X0_Y18_N15
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

-- Location: CLKCTRL_G3
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y20_N1
\FLAG~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FLAG,
	o => \FLAG~input_o\);

-- Location: IOIBUF_X0_Y23_N15
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

-- Location: IOIBUF_X0_Y23_N8
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

-- Location: IOIBUF_X0_Y23_N1
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

-- Location: IOIBUF_X0_Y23_N22
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

-- Location: LCCOMB_X12_Y23_N6
\Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (!\YMOVE[3]~input_o\ & (\YMOVE[1]~input_o\ & (\YMOVE[0]~input_o\ & \YMOVE[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YMOVE[3]~input_o\,
	datab => \YMOVE[1]~input_o\,
	datac => \YMOVE[0]~input_o\,
	datad => \YMOVE[2]~input_o\,
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X13_Y20_N24
\board~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~90_combout\ = (!\state~q\ & ((!\Mux0~6_combout\) # (!\Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state~q\,
	datac => \Decoder0~0_combout\,
	datad => \Mux0~6_combout\,
	combout => \board~90_combout\);

-- Location: LCCOMB_X12_Y23_N20
\Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (!\YMOVE[3]~input_o\ & (\YMOVE[1]~input_o\ & (\YMOVE[0]~input_o\ & !\YMOVE[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YMOVE[3]~input_o\,
	datab => \YMOVE[1]~input_o\,
	datac => \YMOVE[0]~input_o\,
	datad => \YMOVE[2]~input_o\,
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X14_Y23_N10
\board~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~94_combout\ = (!\state~q\ & ((!\Mux0~6_combout\) # (!\Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state~q\,
	datac => \Decoder0~1_combout\,
	datad => \Mux0~6_combout\,
	combout => \board~94_combout\);

-- Location: LCCOMB_X12_Y23_N12
\Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (\YMOVE[3]~input_o\ & (!\YMOVE[1]~input_o\ & (\YMOVE[0]~input_o\ & !\YMOVE[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YMOVE[3]~input_o\,
	datab => \YMOVE[1]~input_o\,
	datac => \YMOVE[0]~input_o\,
	datad => \YMOVE[2]~input_o\,
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X14_Y20_N16
\board~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~110_combout\ = (!\state~q\ & ((!\Mux0~6_combout\) # (!\Decoder0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~5_combout\,
	datab => \Mux0~6_combout\,
	datad => \state~q\,
	combout => \board~110_combout\);

-- Location: LCCOMB_X13_Y21_N0
\Decoder1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder1~3_combout\ = (!\U4|U3|MOVE[3]~18_combout\ & (!\U4|U3|MOVE[2]~14_combout\ & (\U4|U3|MOVE[1]~10_combout\ & !\U4|U3|MOVE[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U3|MOVE[3]~18_combout\,
	datab => \U4|U3|MOVE[2]~14_combout\,
	datac => \U4|U3|MOVE[1]~10_combout\,
	datad => \U4|U3|MOVE[0]~5_combout\,
	combout => \Decoder1~3_combout\);

-- Location: LCCOMB_X12_Y23_N16
\Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (!\YMOVE[3]~input_o\ & (\YMOVE[1]~input_o\ & (!\YMOVE[0]~input_o\ & !\YMOVE[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YMOVE[3]~input_o\,
	datab => \YMOVE[1]~input_o\,
	datac => \YMOVE[0]~input_o\,
	datad => \YMOVE[2]~input_o\,
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X12_Y22_N12
\board~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~102_combout\ = (!\state~q\ & ((!\Mux0~6_combout\) # (!\Decoder0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~3_combout\,
	datac => \Mux0~6_combout\,
	datad => \state~q\,
	combout => \board~102_combout\);

-- Location: LCCOMB_X12_Y22_N16
\board~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~103_combout\ = (\state~q\ & (\Decoder1~3_combout\ & (\FLAG~input_o\ & !\board~102_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~q\,
	datab => \Decoder1~3_combout\,
	datac => \FLAG~input_o\,
	datad => \board~102_combout\,
	combout => \board~103_combout\);

-- Location: IOIBUF_X0_Y20_N22
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

-- Location: LCCOMB_X12_Y22_N18
\board~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~104_combout\ = (!\board~102_combout\ & (\FLAG~input_o\ & ((\Decoder1~3_combout\) # (!\state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~q\,
	datab => \board~102_combout\,
	datac => \FLAG~input_o\,
	datad => \Decoder1~3_combout\,
	combout => \board~104_combout\);

-- Location: LCCOMB_X12_Y22_N0
\board~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~105_combout\ = (\RESET~input_o\) # (\board~104_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datad => \board~104_combout\,
	combout => \board~105_combout\);

-- Location: FF_X12_Y22_N17
\board[2].X\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \board~103_combout\,
	ena => \board~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board[2].X~q\);

-- Location: LCCOMB_X12_Y23_N14
\Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (!\YMOVE[3]~input_o\ & (!\YMOVE[1]~input_o\ & (\YMOVE[0]~input_o\ & !\YMOVE[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YMOVE[3]~input_o\,
	datab => \YMOVE[1]~input_o\,
	datac => \YMOVE[0]~input_o\,
	datad => \YMOVE[2]~input_o\,
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X13_Y20_N30
\board~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~106_combout\ = (!\state~q\ & ((!\Mux0~6_combout\) # (!\Decoder0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~4_combout\,
	datab => \state~q\,
	datad => \Mux0~6_combout\,
	combout => \board~106_combout\);

-- Location: LCCOMB_X13_Y21_N18
\Decoder1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder1~4_combout\ = (!\U4|U3|MOVE[3]~18_combout\ & (!\U4|U3|MOVE[2]~14_combout\ & (!\U4|U3|MOVE[1]~10_combout\ & \U4|U3|MOVE[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U3|MOVE[3]~18_combout\,
	datab => \U4|U3|MOVE[2]~14_combout\,
	datac => \U4|U3|MOVE[1]~10_combout\,
	datad => \U4|U3|MOVE[0]~5_combout\,
	combout => \Decoder1~4_combout\);

-- Location: LCCOMB_X13_Y20_N20
\board~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~107_combout\ = (\FLAG~input_o\ & (\state~q\ & (!\board~106_combout\ & \Decoder1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FLAG~input_o\,
	datab => \state~q\,
	datac => \board~106_combout\,
	datad => \Decoder1~4_combout\,
	combout => \board~107_combout\);

-- Location: LCCOMB_X13_Y20_N18
\board~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~108_combout\ = (\FLAG~input_o\ & (!\board~106_combout\ & ((\Decoder1~4_combout\) # (!\state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FLAG~input_o\,
	datab => \state~q\,
	datac => \board~106_combout\,
	datad => \Decoder1~4_combout\,
	combout => \board~108_combout\);

-- Location: LCCOMB_X13_Y20_N28
\board~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~109_combout\ = (\RESET~input_o\) # (\board~108_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RESET~input_o\,
	datad => \board~108_combout\,
	combout => \board~109_combout\);

-- Location: FF_X13_Y20_N21
\board[1].X\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \board~107_combout\,
	ena => \board~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board[1].X~q\);

-- Location: LCCOMB_X13_Y22_N16
\U4|U1|L~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|L~1_combout\ = (\board[2].X~q\ & (!\board[3].EMPTY~q\ & \board[1].X~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[2].X~q\,
	datac => \board[3].EMPTY~q\,
	datad => \board[1].X~q\,
	combout => \U4|U1|L~1_combout\);

-- Location: LCCOMB_X12_Y23_N2
\Decoder0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = (!\YMOVE[3]~input_o\ & (!\YMOVE[1]~input_o\ & (\YMOVE[0]~input_o\ & \YMOVE[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YMOVE[3]~input_o\,
	datab => \YMOVE[1]~input_o\,
	datac => \YMOVE[0]~input_o\,
	datad => \YMOVE[2]~input_o\,
	combout => \Decoder0~8_combout\);

-- Location: LCCOMB_X15_Y21_N0
\board~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~122_combout\ = (!\state~q\ & ((!\Decoder0~8_combout\) # (!\Mux0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~6_combout\,
	datac => \Decoder0~8_combout\,
	datad => \state~q\,
	combout => \board~122_combout\);

-- Location: LCCOMB_X13_Y21_N10
\Decoder1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder1~8_combout\ = (!\U4|U3|MOVE[3]~18_combout\ & (\U4|U3|MOVE[0]~5_combout\ & (!\U4|U3|MOVE[1]~10_combout\ & \U4|U3|MOVE[2]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U3|MOVE[3]~18_combout\,
	datab => \U4|U3|MOVE[0]~5_combout\,
	datac => \U4|U3|MOVE[1]~10_combout\,
	datad => \U4|U3|MOVE[2]~14_combout\,
	combout => \Decoder1~8_combout\);

-- Location: LCCOMB_X14_Y21_N30
\board~123\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~123_combout\ = (\FLAG~input_o\ & (\state~q\ & (!\board~122_combout\ & \Decoder1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FLAG~input_o\,
	datab => \state~q\,
	datac => \board~122_combout\,
	datad => \Decoder1~8_combout\,
	combout => \board~123_combout\);

-- Location: LCCOMB_X14_Y21_N18
\board~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~124_combout\ = (\FLAG~input_o\ & (!\board~122_combout\ & ((\Decoder1~8_combout\) # (!\state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FLAG~input_o\,
	datab => \state~q\,
	datac => \board~122_combout\,
	datad => \Decoder1~8_combout\,
	combout => \board~124_combout\);

-- Location: LCCOMB_X14_Y21_N20
\board~125\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~125_combout\ = (\RESET~input_o\) # (\board~124_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datad => \board~124_combout\,
	combout => \board~125_combout\);

-- Location: FF_X14_Y21_N31
\board[5].X\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \board~123_combout\,
	ena => \board~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board[5].X~q\);

-- Location: LCCOMB_X12_Y23_N26
\Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!\YMOVE[3]~input_o\ & (\YMOVE[1]~input_o\ & (!\YMOVE[0]~input_o\ & \YMOVE[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YMOVE[3]~input_o\,
	datab => \YMOVE[1]~input_o\,
	datac => \YMOVE[0]~input_o\,
	datad => \YMOVE[2]~input_o\,
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X13_Y23_N30
\board~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~98_combout\ = (!\state~q\ & ((!\Mux0~6_combout\) # (!\Decoder0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~2_combout\,
	datab => \state~q\,
	datad => \Mux0~6_combout\,
	combout => \board~98_combout\);

-- Location: LCCOMB_X13_Y21_N2
\Decoder1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder1~2_combout\ = (!\U4|U3|MOVE[3]~18_combout\ & (\U4|U3|MOVE[2]~14_combout\ & (\U4|U3|MOVE[1]~10_combout\ & !\U4|U3|MOVE[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U3|MOVE[3]~18_combout\,
	datab => \U4|U3|MOVE[2]~14_combout\,
	datac => \U4|U3|MOVE[1]~10_combout\,
	datad => \U4|U3|MOVE[0]~5_combout\,
	combout => \Decoder1~2_combout\);

-- Location: LCCOMB_X13_Y23_N20
\board~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~100_combout\ = (!\board~98_combout\ & (\FLAG~input_o\ & ((\Decoder1~2_combout\) # (!\state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board~98_combout\,
	datab => \state~q\,
	datac => \FLAG~input_o\,
	datad => \Decoder1~2_combout\,
	combout => \board~100_combout\);

-- Location: LCCOMB_X13_Y23_N18
\board~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~101_combout\ = (\RESET~input_o\) # (\board~100_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \board~100_combout\,
	combout => \board~101_combout\);

-- Location: FF_X13_Y23_N9
\board[6].EMPTY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \board~100_combout\,
	sload => VCC,
	ena => \board~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board[6].EMPTY~q\);

-- Location: LCCOMB_X12_Y23_N18
\Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (!\YMOVE[3]~input_o\ & (!\YMOVE[1]~input_o\ & (!\YMOVE[0]~input_o\ & \YMOVE[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YMOVE[3]~input_o\,
	datab => \YMOVE[1]~input_o\,
	datac => \YMOVE[0]~input_o\,
	datad => \YMOVE[2]~input_o\,
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X14_Y21_N28
\board~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~114_combout\ = (!\state~q\ & ((!\Mux0~6_combout\) # (!\Decoder0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~6_combout\,
	datab => \Mux0~6_combout\,
	datad => \state~q\,
	combout => \board~114_combout\);

-- Location: LCCOMB_X13_Y21_N28
\Decoder1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder1~6_combout\ = (!\U4|U3|MOVE[3]~18_combout\ & (!\U4|U3|MOVE[0]~5_combout\ & (!\U4|U3|MOVE[1]~10_combout\ & \U4|U3|MOVE[2]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U3|MOVE[3]~18_combout\,
	datab => \U4|U3|MOVE[0]~5_combout\,
	datac => \U4|U3|MOVE[1]~10_combout\,
	datad => \U4|U3|MOVE[2]~14_combout\,
	combout => \Decoder1~6_combout\);

-- Location: LCCOMB_X14_Y21_N12
\board~115\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~115_combout\ = (\state~q\ & (!\board~114_combout\ & (\FLAG~input_o\ & \Decoder1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~q\,
	datab => \board~114_combout\,
	datac => \FLAG~input_o\,
	datad => \Decoder1~6_combout\,
	combout => \board~115_combout\);

-- Location: LCCOMB_X14_Y21_N2
\board~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~116_combout\ = (!\board~114_combout\ & (\FLAG~input_o\ & ((\Decoder1~6_combout\) # (!\state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~q\,
	datab => \board~114_combout\,
	datac => \FLAG~input_o\,
	datad => \Decoder1~6_combout\,
	combout => \board~116_combout\);

-- Location: LCCOMB_X14_Y21_N8
\board~117\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~117_combout\ = (\RESET~input_o\) # (\board~116_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datad => \board~116_combout\,
	combout => \board~117_combout\);

-- Location: FF_X14_Y21_N13
\board[4].X\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \board~115_combout\,
	ena => \board~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board[4].X~q\);

-- Location: LCCOMB_X14_Y21_N6
\U4|U1|L~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|L~2_combout\ = (\board[5].X~q\ & (!\board[6].EMPTY~q\ & \board[4].X~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[5].X~q\,
	datac => \board[6].EMPTY~q\,
	datad => \board[4].X~q\,
	combout => \U4|U1|L~2_combout\);

-- Location: LCCOMB_X12_Y23_N4
\Decoder0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (\YMOVE[3]~input_o\ & (!\YMOVE[1]~input_o\ & (!\YMOVE[0]~input_o\ & !\YMOVE[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YMOVE[3]~input_o\,
	datab => \YMOVE[1]~input_o\,
	datac => \YMOVE[0]~input_o\,
	datad => \YMOVE[2]~input_o\,
	combout => \Decoder0~7_combout\);

-- Location: LCCOMB_X15_Y20_N22
\board~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~118_combout\ = (!\state~q\ & ((!\Mux0~6_combout\) # (!\Decoder0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state~q\,
	datac => \Decoder0~7_combout\,
	datad => \Mux0~6_combout\,
	combout => \board~118_combout\);

-- Location: LCCOMB_X14_Y20_N12
\Decoder1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder1~7_combout\ = (\U4|U3|MOVE[3]~18_combout\ & (!\U4|U3|MOVE[0]~5_combout\ & (!\U4|U3|MOVE[1]~10_combout\ & !\U4|U3|MOVE[2]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U3|MOVE[3]~18_combout\,
	datab => \U4|U3|MOVE[0]~5_combout\,
	datac => \U4|U3|MOVE[1]~10_combout\,
	datad => \U4|U3|MOVE[2]~14_combout\,
	combout => \Decoder1~7_combout\);

-- Location: LCCOMB_X15_Y20_N16
\board~120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~120_combout\ = (\FLAG~input_o\ & (!\board~118_combout\ & ((\Decoder1~7_combout\) # (!\state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FLAG~input_o\,
	datab => \state~q\,
	datac => \board~118_combout\,
	datad => \Decoder1~7_combout\,
	combout => \board~120_combout\);

-- Location: LCCOMB_X15_Y20_N0
\board[8].EMPTY~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board[8].EMPTY~feeder_combout\ = \board~120_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \board~120_combout\,
	combout => \board[8].EMPTY~feeder_combout\);

-- Location: LCCOMB_X15_Y20_N18
\board~121\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~121_combout\ = (\RESET~input_o\) # (\board~120_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \board~120_combout\,
	combout => \board~121_combout\);

-- Location: FF_X15_Y20_N1
\board[8].EMPTY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \board[8].EMPTY~feeder_combout\,
	ena => \board~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board[8].EMPTY~q\);

-- Location: LCCOMB_X14_Y20_N8
\board~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~91_combout\ = (!\board~90_combout\ & (\state~q\ & (\FLAG~input_o\ & \Decoder1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board~90_combout\,
	datab => \state~q\,
	datac => \FLAG~input_o\,
	datad => \Decoder1~0_combout\,
	combout => \board~91_combout\);

-- Location: LCCOMB_X14_Y20_N4
\board~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~93_combout\ = (\RESET~input_o\) # (\board~92_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \board~92_combout\,
	combout => \board~93_combout\);

-- Location: FF_X14_Y20_N9
\board[7].X\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \board~91_combout\,
	ena => \board~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board[7].X~q\);

-- Location: LCCOMB_X15_Y20_N24
\U4|U1|L~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|L~6_combout\ = (\board[8].EMPTY~q\) # ((!\board[7].X~q\) # (!\board[9].X~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \board[8].EMPTY~q\,
	datac => \board[9].X~q\,
	datad => \board[7].X~q\,
	combout => \U4|U1|L~6_combout\);

-- Location: LCCOMB_X12_Y22_N6
\board[2].EMPTY~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board[2].EMPTY~feeder_combout\ = \board~104_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \board~104_combout\,
	combout => \board[2].EMPTY~feeder_combout\);

-- Location: FF_X12_Y22_N7
\board[2].EMPTY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \board[2].EMPTY~feeder_combout\,
	ena => \board~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board[2].EMPTY~q\);

-- Location: LCCOMB_X13_Y23_N16
\board~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~95_combout\ = (\FLAG~input_o\ & (\state~q\ & (!\board~94_combout\ & \Decoder1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FLAG~input_o\,
	datab => \state~q\,
	datac => \board~94_combout\,
	datad => \Decoder1~1_combout\,
	combout => \board~95_combout\);

-- Location: LCCOMB_X13_Y23_N26
\board~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~97_combout\ = (\RESET~input_o\) # (\board~96_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datac => \board~96_combout\,
	combout => \board~97_combout\);

-- Location: FF_X13_Y23_N17
\board[3].X\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \board~95_combout\,
	ena => \board~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board[3].X~q\);

-- Location: LCCOMB_X13_Y22_N6
\U4|U1|L~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|L~3_combout\ = (!\board[2].EMPTY~q\ & (\board[3].X~q\ & \board[1].X~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \board[2].EMPTY~q\,
	datac => \board[3].X~q\,
	datad => \board[1].X~q\,
	combout => \U4|U1|L~3_combout\);

-- Location: LCCOMB_X15_Y20_N8
\board~119\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~119_combout\ = (!\board~118_combout\ & (\state~q\ & (\FLAG~input_o\ & \Decoder1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board~118_combout\,
	datab => \state~q\,
	datac => \FLAG~input_o\,
	datad => \Decoder1~7_combout\,
	combout => \board~119_combout\);

-- Location: FF_X15_Y20_N9
\board[8].X\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \board~119_combout\,
	ena => \board~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board[8].X~q\);

-- Location: LCCOMB_X15_Y20_N10
\U4|U1|L~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|L~4_combout\ = (\board[8].X~q\ & (!\board[9].EMPTY~q\ & \board[7].X~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \board[8].X~q\,
	datac => \board[9].EMPTY~q\,
	datad => \board[7].X~q\,
	combout => \U4|U1|L~4_combout\);

-- Location: FF_X14_Y21_N29
\board[5].EMPTY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \board~124_combout\,
	sload => VCC,
	ena => \board~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board[5].EMPTY~q\);

-- Location: LCCOMB_X13_Y23_N14
\board~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~99_combout\ = (!\board~98_combout\ & (\state~q\ & (\FLAG~input_o\ & \Decoder1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board~98_combout\,
	datab => \state~q\,
	datac => \FLAG~input_o\,
	datad => \Decoder1~2_combout\,
	combout => \board~99_combout\);

-- Location: FF_X13_Y23_N15
\board[6].X\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \board~99_combout\,
	ena => \board~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board[6].X~q\);

-- Location: LCCOMB_X14_Y21_N16
\U4|U1|L~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|L~7_combout\ = (!\board[5].EMPTY~q\ & (\board[6].X~q\ & \board[4].X~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[5].EMPTY~q\,
	datac => \board[6].X~q\,
	datad => \board[4].X~q\,
	combout => \U4|U1|L~7_combout\);

-- Location: LCCOMB_X14_Y22_N28
\U4|U1|linemove[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|linemove[3]~12_combout\ = (\U4|U1|L~4_combout\) # ((!\U4|U1|L~6_combout\ & (!\U4|U1|L~3_combout\ & !\U4|U1|L~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|L~6_combout\,
	datab => \U4|U1|L~3_combout\,
	datac => \U4|U1|L~4_combout\,
	datad => \U4|U1|L~7_combout\,
	combout => \U4|U1|linemove[3]~12_combout\);

-- Location: LCCOMB_X14_Y22_N26
\U4|U1|linemove[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|linemove[3]~13_combout\ = (!\U4|U1|L~1_combout\ & (!\U4|U1|L~2_combout\ & \U4|U1|linemove[3]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|L~1_combout\,
	datac => \U4|U1|L~2_combout\,
	datad => \U4|U1|linemove[3]~12_combout\,
	combout => \U4|U1|linemove[3]~13_combout\);

-- Location: LCCOMB_X14_Y22_N4
\U4|U1|linemove[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|linemove[2]~14_combout\ = (!\U4|U1|L~1_combout\ & (!\U4|U1|L~4_combout\ & (!\U4|U1|L~3_combout\ & \U4|U1|L~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|L~1_combout\,
	datab => \U4|U1|L~4_combout\,
	datac => \U4|U1|L~3_combout\,
	datad => \U4|U1|L~7_combout\,
	combout => \U4|U1|linemove[2]~14_combout\);

-- Location: FF_X13_Y20_N31
\board[1].EMPTY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \board~108_combout\,
	sload => VCC,
	ena => \board~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board[1].EMPTY~q\);

-- Location: LCCOMB_X13_Y23_N12
\U4|U1|L~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|L~5_combout\ = ((\board[1].EMPTY~q\) # (!\board[2].X~q\)) # (!\board[3].X~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \board[3].X~q\,
	datac => \board[2].X~q\,
	datad => \board[1].EMPTY~q\,
	combout => \U4|U1|L~5_combout\);

-- Location: FF_X14_Y21_N27
\board[4].EMPTY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \board~116_combout\,
	sload => VCC,
	ena => \board~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board[4].EMPTY~q\);

-- Location: LCCOMB_X14_Y21_N0
\U4|U1|L~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|L~0_combout\ = (\board[5].X~q\ & (\board[6].X~q\ & !\board[4].EMPTY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[5].X~q\,
	datac => \board[6].X~q\,
	datad => \board[4].EMPTY~q\,
	combout => \U4|U1|L~0_combout\);

-- Location: LCCOMB_X14_Y20_N26
\U4|U1|linemove[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|linemove[0]~4_combout\ = (\board[9].X~q\ & (!\board[7].EMPTY~q\ & \board[8].X~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[9].X~q\,
	datac => \board[7].EMPTY~q\,
	datad => \board[8].X~q\,
	combout => \U4|U1|linemove[0]~4_combout\);

-- Location: LCCOMB_X14_Y22_N6
\U4|U1|linemove[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|linemove[1]~6_combout\ = (!\U4|U1|L~1_combout\ & (!\U4|U1|L~4_combout\ & (!\U4|U1|L~3_combout\ & \U4|U1|L~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|L~1_combout\,
	datab => \U4|U1|L~4_combout\,
	datac => \U4|U1|L~3_combout\,
	datad => \U4|U1|L~6_combout\,
	combout => \U4|U1|linemove[1]~6_combout\);

-- Location: LCCOMB_X14_Y22_N10
\U4|U1|linemove[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|linemove[2]~15_combout\ = (\U4|U1|L~5_combout\ & (\U4|U1|linemove[1]~6_combout\ & ((\U4|U1|L~0_combout\) # (\U4|U1|linemove[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|L~5_combout\,
	datab => \U4|U1|L~0_combout\,
	datac => \U4|U1|linemove[0]~4_combout\,
	datad => \U4|U1|linemove[1]~6_combout\,
	combout => \U4|U1|linemove[2]~15_combout\);

-- Location: LCCOMB_X14_Y22_N16
\U4|U1|linemove[2]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|linemove[2]~16_combout\ = (\U4|U1|linemove[2]~14_combout\) # ((\U4|U1|linemove[2]~15_combout\) # ((!\U4|U1|L~1_combout\ & \U4|U1|L~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|L~1_combout\,
	datab => \U4|U1|L~2_combout\,
	datac => \U4|U1|linemove[2]~14_combout\,
	datad => \U4|U1|linemove[2]~15_combout\,
	combout => \U4|U1|linemove[2]~16_combout\);

-- Location: LCCOMB_X14_Y22_N24
\U4|U1|linemove[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|linemove[1]~5_combout\ = (\U4|U1|L~1_combout\) # ((\U4|U1|L~2_combout\) # ((\U4|U1|L~3_combout\ & !\U4|U1|L~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|L~1_combout\,
	datab => \U4|U1|L~3_combout\,
	datac => \U4|U1|L~4_combout\,
	datad => \U4|U1|L~2_combout\,
	combout => \U4|U1|linemove[1]~5_combout\);

-- Location: LCCOMB_X14_Y21_N10
\U4|U1|linemove[0]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|linemove[0]~17_combout\ = (\board[9].X~q\ & (!\board[7].EMPTY~q\ & (\board[8].X~q\ & !\U4|U1|L~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[9].X~q\,
	datab => \board[7].EMPTY~q\,
	datac => \board[8].X~q\,
	datad => \U4|U1|L~0_combout\,
	combout => \U4|U1|linemove[0]~17_combout\);

-- Location: LCCOMB_X14_Y22_N12
\U4|U1|linemove[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|linemove[1]~7_combout\ = (!\U4|U1|L~7_combout\ & (!\U4|U1|L~2_combout\ & (\U4|U1|L~5_combout\ & \U4|U1|linemove[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|L~7_combout\,
	datab => \U4|U1|L~2_combout\,
	datac => \U4|U1|L~5_combout\,
	datad => \U4|U1|linemove[1]~6_combout\,
	combout => \U4|U1|linemove[1]~7_combout\);

-- Location: LCCOMB_X14_Y22_N14
\U4|U1|linemove[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|linemove[1]~8_combout\ = (\U4|U1|linemove[1]~7_combout\ & ((\U4|U1|linemove[0]~17_combout\))) # (!\U4|U1|linemove[1]~7_combout\ & (\U4|U1|linemove[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|U1|linemove[1]~5_combout\,
	datac => \U4|U1|linemove[0]~17_combout\,
	datad => \U4|U1|linemove[1]~7_combout\,
	combout => \U4|U1|linemove[1]~8_combout\);

-- Location: LCCOMB_X14_Y22_N8
\U4|U1|linemove[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|linemove[0]~9_combout\ = (\U4|U1|L~1_combout\) # ((\U4|U1|L~4_combout\ & !\U4|U1|L~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|L~1_combout\,
	datab => \U4|U1|L~4_combout\,
	datac => \U4|U1|L~2_combout\,
	combout => \U4|U1|linemove[0]~9_combout\);

-- Location: LCCOMB_X13_Y22_N0
\U4|U1|linemove[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|linemove[0]~10_combout\ = (!\U4|U1|L~3_combout\ & (!\U4|U1|L~2_combout\ & ((\U4|U1|L~6_combout\) # (\U4|U1|L~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|L~3_combout\,
	datab => \U4|U1|L~6_combout\,
	datac => \U4|U1|L~2_combout\,
	datad => \U4|U1|L~7_combout\,
	combout => \U4|U1|linemove[0]~10_combout\);

-- Location: LCCOMB_X14_Y22_N2
\U4|U1|linemove[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|linemove[0]~11_combout\ = (\U4|U1|linemove[1]~7_combout\ & (\U4|U1|linemove[0]~17_combout\)) # (!\U4|U1|linemove[1]~7_combout\ & (((\U4|U1|linemove[0]~9_combout\) # (\U4|U1|linemove[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|linemove[0]~17_combout\,
	datab => \U4|U1|linemove[0]~9_combout\,
	datac => \U4|U1|linemove[0]~10_combout\,
	datad => \U4|U1|linemove[1]~7_combout\,
	combout => \U4|U1|linemove[0]~11_combout\);

-- Location: LCCOMB_X14_Y22_N22
\U4|U1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|Equal0~0_combout\ = (!\U4|U1|linemove[3]~13_combout\ & (!\U4|U1|linemove[2]~16_combout\ & (!\U4|U1|linemove[1]~8_combout\ & !\U4|U1|linemove[0]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|linemove[3]~13_combout\,
	datab => \U4|U1|linemove[2]~16_combout\,
	datac => \U4|U1|linemove[1]~8_combout\,
	datad => \U4|U1|linemove[0]~11_combout\,
	combout => \U4|U1|Equal0~0_combout\);

-- Location: LCCOMB_X12_Y20_N30
\U4|U1|C~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|C~6_combout\ = (\board[9].X~q\ & (!\board[6].EMPTY~q\ & \board[3].X~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \board[9].X~q\,
	datac => \board[6].EMPTY~q\,
	datad => \board[3].X~q\,
	combout => \U4|U1|C~6_combout\);

-- Location: LCCOMB_X12_Y20_N26
\U4|U1|C~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|C~2_combout\ = (!\board[8].EMPTY~q\ & (\board[5].X~q\ & \board[2].X~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[8].EMPTY~q\,
	datab => \board[5].X~q\,
	datad => \board[2].X~q\,
	combout => \U4|U1|C~2_combout\);

-- Location: LCCOMB_X12_Y20_N4
\U4|U1|C~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|C~0_combout\ = (\board[2].X~q\ & (\board[8].X~q\ & !\board[5].EMPTY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[2].X~q\,
	datac => \board[8].X~q\,
	datad => \board[5].EMPTY~q\,
	combout => \U4|U1|C~0_combout\);

-- Location: LCCOMB_X13_Y20_N12
\U4|U1|C~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|C~1_combout\ = (\board[7].X~q\ & (!\board[4].EMPTY~q\ & \board[1].X~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \board[7].X~q\,
	datac => \board[4].EMPTY~q\,
	datad => \board[1].X~q\,
	combout => \U4|U1|C~1_combout\);

-- Location: LCCOMB_X13_Y23_N22
\U4|U1|C~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|C~3_combout\ = (\board[3].X~q\ & (\board[6].X~q\ & !\board[9].EMPTY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \board[3].X~q\,
	datac => \board[6].X~q\,
	datad => \board[9].EMPTY~q\,
	combout => \U4|U1|C~3_combout\);

-- Location: LCCOMB_X12_Y20_N28
\U4|U1|colmove[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|colmove[1]~4_combout\ = (!\U4|U1|C~2_combout\ & (!\U4|U1|C~0_combout\ & (!\U4|U1|C~1_combout\ & !\U4|U1|C~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|C~2_combout\,
	datab => \U4|U1|C~0_combout\,
	datac => \U4|U1|C~1_combout\,
	datad => \U4|U1|C~3_combout\,
	combout => \U4|U1|colmove[1]~4_combout\);

-- Location: LCCOMB_X12_Y20_N2
\U4|U1|C~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|C~4_combout\ = (\board[7].X~q\ & (!\board[1].EMPTY~q\ & \board[4].X~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[7].X~q\,
	datac => \board[1].EMPTY~q\,
	datad => \board[4].X~q\,
	combout => \U4|U1|C~4_combout\);

-- Location: LCCOMB_X13_Y20_N14
\U4|U1|C~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|C~5_combout\ = (\board[1].X~q\ & (!\board[7].EMPTY~q\ & \board[4].X~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \board[1].X~q\,
	datac => \board[7].EMPTY~q\,
	datad => \board[4].X~q\,
	combout => \U4|U1|C~5_combout\);

-- Location: LCCOMB_X12_Y20_N8
\U4|U1|colmove[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|colmove[1]~5_combout\ = (!\U4|U1|C~4_combout\ & (((\board[2].EMPTY~q\) # (!\board[5].X~q\)) # (!\board[8].X~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[8].X~q\,
	datab => \board[5].X~q\,
	datac => \board[2].EMPTY~q\,
	datad => \U4|U1|C~4_combout\,
	combout => \U4|U1|colmove[1]~5_combout\);

-- Location: LCCOMB_X12_Y20_N12
\U4|U1|colmove[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|colmove[0]~8_combout\ = (!\U4|U1|C~5_combout\ & ((\U4|U1|C~6_combout\) # ((!\U4|U1|colmove[1]~4_combout\) # (!\U4|U1|colmove[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|C~6_combout\,
	datab => \U4|U1|C~5_combout\,
	datac => \U4|U1|colmove[1]~5_combout\,
	datad => \U4|U1|colmove[1]~4_combout\,
	combout => \U4|U1|colmove[0]~8_combout\);

-- Location: LCCOMB_X12_Y20_N14
\U4|U1|colmove[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|colmove[1]~9_combout\ = ((\U4|U1|colmove[1]~4_combout\ & ((\U4|U1|C~6_combout\) # (!\U4|U1|C~4_combout\)))) # (!\U4|U1|colmove[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|C~6_combout\,
	datab => \U4|U1|colmove[1]~4_combout\,
	datac => \U4|U1|C~4_combout\,
	datad => \U4|U1|colmove[0]~8_combout\,
	combout => \U4|U1|colmove[1]~9_combout\);

-- Location: LCCOMB_X14_Y22_N0
\U4|U1|MOVE[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|MOVE[1]~0_combout\ = (\U4|U1|linemove[1]~8_combout\) # ((\U4|U1|Equal0~0_combout\ & (\U4|U1|colmove[1]~9_combout\ & \U4|U1|colmove[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|Equal0~0_combout\,
	datab => \U4|U1|linemove[1]~8_combout\,
	datac => \U4|U1|colmove[1]~9_combout\,
	datad => \U4|U1|colmove[1]~7_combout\,
	combout => \U4|U1|MOVE[1]~0_combout\);

-- Location: LCCOMB_X13_Y23_N24
\U4|U1|D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|D~0_combout\ = (\board[5].X~q\ & (\board[3].X~q\ & !\board[7].EMPTY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[5].X~q\,
	datab => \board[3].X~q\,
	datad => \board[7].EMPTY~q\,
	combout => \U4|U1|D~0_combout\);

-- Location: LCCOMB_X14_Y23_N14
\U4|U1|D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|D~1_combout\ = (\board[3].EMPTY~q\) # ((!\board[7].X~q\) # (!\board[5].X~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \board[3].EMPTY~q\,
	datac => \board[5].X~q\,
	datad => \board[7].X~q\,
	combout => \U4|U1|D~1_combout\);

-- Location: LCCOMB_X14_Y23_N2
\U4|U1|diagmove[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|diagmove[3]~0_combout\ = (!\board[9].EMPTY~q\ & (\board[5].X~q\ & \board[1].X~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \board[9].EMPTY~q\,
	datac => \board[5].X~q\,
	datad => \board[1].X~q\,
	combout => \U4|U1|diagmove[3]~0_combout\);

-- Location: LCCOMB_X14_Y23_N16
\U4|U1|diagmove[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|diagmove[2]~1_combout\ = (!\U4|U1|diagmove[3]~0_combout\ & (((\board[1].EMPTY~q\) # (!\board[5].X~q\)) # (!\board[9].X~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[9].X~q\,
	datab => \board[5].X~q\,
	datac => \board[1].EMPTY~q\,
	datad => \U4|U1|diagmove[3]~0_combout\,
	combout => \U4|U1|diagmove[2]~1_combout\);

-- Location: LCCOMB_X14_Y23_N12
\U4|U1|MOVE[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|MOVE[1]~6_combout\ = (\U4|U1|diagmove[2]~1_combout\ & (\U4|U1|D~0_combout\ $ (!\U4|U1|D~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|U1|D~0_combout\,
	datac => \U4|U1|D~1_combout\,
	datad => \U4|U1|diagmove[2]~1_combout\,
	combout => \U4|U1|MOVE[1]~6_combout\);

-- Location: LCCOMB_X13_Y22_N26
\U4|U1|MOVE[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|MOVE[1]~12_combout\ = (\U4|U1|MOVE[1]~0_combout\) # ((\U4|U1|MOVE[3]~4_combout\ & (\U4|U1|Equal0~0_combout\ & \U4|U1|MOVE[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|MOVE[3]~4_combout\,
	datab => \U4|U1|Equal0~0_combout\,
	datac => \U4|U1|MOVE[1]~0_combout\,
	datad => \U4|U1|MOVE[1]~6_combout\,
	combout => \U4|U1|MOVE[1]~12_combout\);

-- Location: LCCOMB_X11_Y22_N28
\U4|U3|MOVE[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U3|MOVE[2]~1_combout\ = (\board[9].EMPTY~q\ & \board[2].EMPTY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \board[9].EMPTY~q\,
	datad => \board[2].EMPTY~q\,
	combout => \U4|U3|MOVE[2]~1_combout\);

-- Location: LCCOMB_X12_Y22_N26
\U4|U3|MOVE[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U3|MOVE[1]~7_combout\ = (\U4|U3|MOVE[2]~1_combout\ & (!\board[6].EMPTY~q\ & (\board[4].EMPTY~q\ & \U4|U3|MOVE[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U3|MOVE[2]~1_combout\,
	datab => \board[6].EMPTY~q\,
	datac => \board[4].EMPTY~q\,
	datad => \U4|U3|MOVE[1]~0_combout\,
	combout => \U4|U3|MOVE[1]~7_combout\);

-- Location: LCCOMB_X12_Y22_N24
\U4|U3|MOVE[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U3|MOVE[1]~8_combout\ = (((!\board[2].EMPTY~q\ & \board[9].EMPTY~q\)) # (!\board[3].EMPTY~q\)) # (!\board[7].EMPTY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[2].EMPTY~q\,
	datab => \board[9].EMPTY~q\,
	datac => \board[7].EMPTY~q\,
	datad => \board[3].EMPTY~q\,
	combout => \U4|U3|MOVE[1]~8_combout\);

-- Location: LCCOMB_X12_Y22_N2
\U4|U3|MOVE[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U3|MOVE[1]~9_combout\ = (\U4|U3|MOVE[1]~7_combout\) # ((\board[1].EMPTY~q\ & (\board[5].EMPTY~q\ & \U4|U3|MOVE[1]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[1].EMPTY~q\,
	datab => \board[5].EMPTY~q\,
	datac => \U4|U3|MOVE[1]~7_combout\,
	datad => \U4|U3|MOVE[1]~8_combout\,
	combout => \U4|U3|MOVE[1]~9_combout\);

-- Location: LCCOMB_X12_Y20_N16
\U4|U1|colmove[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|colmove[0]~10_combout\ = (!\U4|U1|C~1_combout\ & ((\U4|U1|C~0_combout\) # ((\U4|U1|C~4_combout\ & !\U4|U1|C~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|C~4_combout\,
	datab => \U4|U1|C~6_combout\,
	datac => \U4|U1|C~1_combout\,
	datad => \U4|U1|C~0_combout\,
	combout => \U4|U1|colmove[0]~10_combout\);

-- Location: LCCOMB_X12_Y20_N22
\U4|U1|colmove[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|colmove[0]~11_combout\ = ((!\U4|U1|C~2_combout\ & ((\U4|U1|C~3_combout\) # (\U4|U1|colmove[0]~10_combout\)))) # (!\U4|U1|colmove[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|C~2_combout\,
	datab => \U4|U1|C~3_combout\,
	datac => \U4|U1|colmove[0]~10_combout\,
	datad => \U4|U1|colmove[0]~8_combout\,
	combout => \U4|U1|colmove[0]~11_combout\);

-- Location: LCCOMB_X13_Y22_N30
\U4|U1|MOVE[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|MOVE[0]~1_combout\ = (\U4|U1|linemove[0]~11_combout\) # ((\U4|U1|colmove[1]~7_combout\ & (\U4|U1|colmove[0]~11_combout\ & \U4|U1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|linemove[0]~11_combout\,
	datab => \U4|U1|colmove[1]~7_combout\,
	datac => \U4|U1|colmove[0]~11_combout\,
	datad => \U4|U1|Equal0~0_combout\,
	combout => \U4|U1|MOVE[0]~1_combout\);

-- Location: LCCOMB_X12_Y20_N20
\U4|U1|colmove[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|colmove[2]~12_combout\ = (!\U4|U1|C~2_combout\ & ((\board[9].EMPTY~q\) # ((!\board[3].X~q\) # (!\board[6].X~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[9].EMPTY~q\,
	datab => \board[6].X~q\,
	datac => \U4|U1|C~2_combout\,
	datad => \board[3].X~q\,
	combout => \U4|U1|colmove[2]~12_combout\);

-- Location: LCCOMB_X14_Y22_N18
\U4|U1|MOVE[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|MOVE[3]~2_combout\ = (\U4|U1|linemove[3]~13_combout\) # ((!\U4|U1|C~5_combout\ & (\U4|U1|Equal0~0_combout\ & !\U4|U1|colmove[2]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|linemove[3]~13_combout\,
	datab => \U4|U1|C~5_combout\,
	datac => \U4|U1|Equal0~0_combout\,
	datad => \U4|U1|colmove[2]~12_combout\,
	combout => \U4|U1|MOVE[3]~2_combout\);

-- Location: LCCOMB_X14_Y23_N6
\U4|U1|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|D~2_combout\ = (\board[9].X~q\ & (!\board[5].EMPTY~q\ & \board[1].X~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[9].X~q\,
	datac => \board[5].EMPTY~q\,
	datad => \board[1].X~q\,
	combout => \U4|U1|D~2_combout\);

-- Location: LCCOMB_X14_Y23_N4
\U4|U1|MOVE[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|MOVE[0]~7_combout\ = (!\U4|U1|D~0_combout\ & (((\board[5].EMPTY~q\) # (!\board[3].X~q\)) # (!\board[7].X~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[7].X~q\,
	datab => \board[5].EMPTY~q\,
	datac => \board[3].X~q\,
	datad => \U4|U1|D~0_combout\,
	combout => \U4|U1|MOVE[0]~7_combout\);

-- Location: LCCOMB_X14_Y23_N30
\U4|U1|MOVE[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|MOVE[0]~8_combout\ = (\U4|U1|D~2_combout\) # (((!\U4|U1|MOVE[0]~7_combout\) # (!\U4|U1|D~1_combout\)) # (!\U4|U1|diagmove[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|D~2_combout\,
	datab => \U4|U1|diagmove[2]~1_combout\,
	datac => \U4|U1|D~1_combout\,
	datad => \U4|U1|MOVE[0]~7_combout\,
	combout => \U4|U1|MOVE[0]~8_combout\);

-- Location: LCCOMB_X14_Y23_N28
\U4|U1|MOVE[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|MOVE[2]~9_combout\ = (!\U4|U1|D~2_combout\ & (\U4|U1|D~1_combout\ & (!\U4|U1|MOVE[0]~7_combout\ & \U4|U1|diagmove[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|D~2_combout\,
	datab => \U4|U1|D~1_combout\,
	datac => \U4|U1|MOVE[0]~7_combout\,
	datad => \U4|U1|diagmove[2]~1_combout\,
	combout => \U4|U1|MOVE[2]~9_combout\);

-- Location: LCCOMB_X14_Y23_N22
\U4|U1|MOVE[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|MOVE[2]~10_combout\ = (\U4|U1|MOVE[2]~9_combout\) # ((\U4|U1|D~2_combout\ & !\U4|U1|diagmove[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|D~2_combout\,
	datab => \U4|U1|diagmove[3]~0_combout\,
	datad => \U4|U1|MOVE[2]~9_combout\,
	combout => \U4|U1|MOVE[2]~10_combout\);

-- Location: LCCOMB_X14_Y23_N24
\U4|U3|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U3|Equal0~0_combout\ = (!\U4|U1|MOVE[0]~8_combout\ & (!\U4|U1|diagmove[3]~0_combout\ & (!\U4|U1|MOVE[2]~10_combout\ & !\U4|U1|MOVE[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|MOVE[0]~8_combout\,
	datab => \U4|U1|diagmove[3]~0_combout\,
	datac => \U4|U1|MOVE[2]~10_combout\,
	datad => \U4|U1|MOVE[1]~6_combout\,
	combout => \U4|U3|Equal0~0_combout\);

-- Location: LCCOMB_X13_Y20_N6
\U4|U1|colmove[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|colmove[0]~14_combout\ = (!\U4|U1|C~6_combout\ & (((\board[4].EMPTY~q\) # (!\board[1].X~q\)) # (!\board[7].X~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[7].X~q\,
	datab => \board[1].X~q\,
	datac => \board[4].EMPTY~q\,
	datad => \U4|U1|C~6_combout\,
	combout => \U4|U1|colmove[0]~14_combout\);

-- Location: LCCOMB_X12_Y20_N6
\U4|U1|colmove[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|colmove[2]~13_combout\ = (\U4|U1|C~5_combout\) # ((\U4|U1|colmove[2]~12_combout\ & ((\U4|U1|C~0_combout\) # (!\U4|U1|colmove[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|C~0_combout\,
	datab => \U4|U1|colmove[2]~12_combout\,
	datac => \U4|U1|C~5_combout\,
	datad => \U4|U1|colmove[0]~14_combout\,
	combout => \U4|U1|colmove[2]~13_combout\);

-- Location: LCCOMB_X14_Y22_N20
\U4|U1|MOVE[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|MOVE[2]~5_combout\ = (\U4|U1|linemove[2]~16_combout\) # ((\U4|U1|Equal0~0_combout\ & \U4|U1|colmove[2]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|U1|linemove[2]~16_combout\,
	datac => \U4|U1|Equal0~0_combout\,
	datad => \U4|U1|colmove[2]~13_combout\,
	combout => \U4|U1|MOVE[2]~5_combout\);

-- Location: LCCOMB_X13_Y21_N20
\U4|U3|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U3|Equal0~1_combout\ = (!\U4|U1|MOVE[2]~5_combout\ & ((\U4|U3|Equal0~0_combout\) # ((!\U4|U1|Equal0~0_combout\) # (!\U4|U1|MOVE[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U3|Equal0~0_combout\,
	datab => \U4|U1|MOVE[3]~4_combout\,
	datac => \U4|U1|Equal0~0_combout\,
	datad => \U4|U1|MOVE[2]~5_combout\,
	combout => \U4|U3|Equal0~1_combout\);

-- Location: LCCOMB_X13_Y21_N26
\U4|U3|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U3|Equal0~2_combout\ = (!\U4|U1|MOVE[0]~1_combout\ & (!\U4|U1|MOVE[3]~2_combout\ & (!\U4|U1|MOVE[1]~0_combout\ & \U4|U3|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|MOVE[0]~1_combout\,
	datab => \U4|U1|MOVE[3]~2_combout\,
	datac => \U4|U1|MOVE[1]~0_combout\,
	datad => \U4|U3|Equal0~1_combout\,
	combout => \U4|U3|Equal0~2_combout\);

-- Location: LCCOMB_X13_Y20_N4
\board~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~130_combout\ = (\Decoder0~4_combout\ & (\Mux0~6_combout\ & (!\state~q\ & \FLAG~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~4_combout\,
	datab => \Mux0~6_combout\,
	datac => \state~q\,
	datad => \FLAG~input_o\,
	combout => \board~130_combout\);

-- Location: FF_X13_Y20_N5
\board[1].Y\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \board~130_combout\,
	ena => \board~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board[1].Y~q\);

-- Location: LCCOMB_X14_Y20_N28
\board~131\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~131_combout\ = (\Mux0~6_combout\ & (\Decoder0~5_combout\ & (\FLAG~input_o\ & !\state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~6_combout\,
	datab => \Decoder0~5_combout\,
	datac => \FLAG~input_o\,
	datad => \state~q\,
	combout => \board~131_combout\);

-- Location: LCCOMB_X14_Y20_N14
\board~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~113_combout\ = (\RESET~input_o\) # (\board~112_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \board~112_combout\,
	combout => \board~113_combout\);

-- Location: FF_X14_Y20_N29
\board[9].Y\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \board~131_combout\,
	ena => \board~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board[9].Y~q\);

-- Location: LCCOMB_X10_Y21_N12
\U4|U2|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|D~2_combout\ = (!\board[5].EMPTY~q\ & (\board[1].Y~q\ & \board[9].Y~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \board[5].EMPTY~q\,
	datac => \board[1].Y~q\,
	datad => \board[9].Y~q\,
	combout => \U4|U2|D~2_combout\);

-- Location: LCCOMB_X13_Y20_N26
\board~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~126_combout\ = (\FLAG~input_o\ & (\Decoder0~0_combout\ & (!\state~q\ & \Mux0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FLAG~input_o\,
	datab => \Decoder0~0_combout\,
	datac => \state~q\,
	datad => \Mux0~6_combout\,
	combout => \board~126_combout\);

-- Location: FF_X13_Y20_N27
\board[7].Y\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \board~126_combout\,
	ena => \board~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board[7].Y~q\);

-- Location: LCCOMB_X14_Y21_N14
\board~134\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~134_combout\ = (\FLAG~input_o\ & (!\state~q\ & (\Mux0~6_combout\ & \Decoder0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FLAG~input_o\,
	datab => \state~q\,
	datac => \Mux0~6_combout\,
	datad => \Decoder0~8_combout\,
	combout => \board~134_combout\);

-- Location: FF_X14_Y21_N15
\board[5].Y\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \board~134_combout\,
	ena => \board~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board[5].Y~q\);

-- Location: LCCOMB_X10_Y21_N24
\U4|U2|D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|D~0_combout\ = ((\board[3].EMPTY~q\) # (!\board[5].Y~q\)) # (!\board[7].Y~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[7].Y~q\,
	datab => \board[3].EMPTY~q\,
	datac => \board[5].Y~q\,
	combout => \U4|U2|D~0_combout\);

-- Location: LCCOMB_X13_Y23_N0
\board~127\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~127_combout\ = (\FLAG~input_o\ & (!\state~q\ & (\Decoder0~1_combout\ & \Mux0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FLAG~input_o\,
	datab => \state~q\,
	datac => \Decoder0~1_combout\,
	datad => \Mux0~6_combout\,
	combout => \board~127_combout\);

-- Location: FF_X13_Y23_N1
\board[3].Y\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \board~127_combout\,
	ena => \board~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board[3].Y~q\);

-- Location: LCCOMB_X10_Y21_N18
\U4|U2|MOVE[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|MOVE[0]~9_combout\ = (\board[3].Y~q\ & (!\board[5].EMPTY~q\ & \board[7].Y~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[3].Y~q\,
	datab => \board[5].EMPTY~q\,
	datad => \board[7].Y~q\,
	combout => \U4|U2|MOVE[0]~9_combout\);

-- Location: LCCOMB_X10_Y21_N4
\U4|U2|MOVE[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|MOVE[0]~10_combout\ = (!\U4|U2|MOVE[0]~9_combout\ & (((\board[7].EMPTY~q\) # (!\board[5].Y~q\)) # (!\board[3].Y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[3].Y~q\,
	datab => \board[7].EMPTY~q\,
	datac => \board[5].Y~q\,
	datad => \U4|U2|MOVE[0]~9_combout\,
	combout => \U4|U2|MOVE[0]~10_combout\);

-- Location: LCCOMB_X10_Y21_N28
\U4|U2|diagmove[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|diagmove[3]~0_combout\ = (\board[1].Y~q\ & (\board[5].Y~q\ & !\board[9].EMPTY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \board[1].Y~q\,
	datac => \board[5].Y~q\,
	datad => \board[9].EMPTY~q\,
	combout => \U4|U2|diagmove[3]~0_combout\);

-- Location: LCCOMB_X10_Y21_N2
\U4|U2|diagmove[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|diagmove[0]~1_combout\ = (!\U4|U2|diagmove[3]~0_combout\ & (((\board[1].EMPTY~q\) # (!\board[5].Y~q\)) # (!\board[9].Y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[9].Y~q\,
	datab => \board[5].Y~q\,
	datac => \board[1].EMPTY~q\,
	datad => \U4|U2|diagmove[3]~0_combout\,
	combout => \U4|U2|diagmove[0]~1_combout\);

-- Location: LCCOMB_X10_Y21_N10
\U4|U2|MOVE[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|MOVE[0]~11_combout\ = (\U4|U2|D~2_combout\) # (((!\U4|U2|diagmove[0]~1_combout\) # (!\U4|U2|MOVE[0]~10_combout\)) # (!\U4|U2|D~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|D~2_combout\,
	datab => \U4|U2|D~0_combout\,
	datac => \U4|U2|MOVE[0]~10_combout\,
	datad => \U4|U2|diagmove[0]~1_combout\,
	combout => \U4|U2|MOVE[0]~11_combout\);

-- Location: LCCOMB_X14_Y21_N4
\board~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~132_combout\ = (\Decoder0~6_combout\ & (\FLAG~input_o\ & (\Mux0~6_combout\ & !\state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~6_combout\,
	datab => \FLAG~input_o\,
	datac => \Mux0~6_combout\,
	datad => \state~q\,
	combout => \board~132_combout\);

-- Location: FF_X14_Y21_N5
\board[4].Y\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \board~132_combout\,
	ena => \board~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board[4].Y~q\);

-- Location: LCCOMB_X14_Y21_N26
\U4|U2|L~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|L~3_combout\ = (!\board[6].EMPTY~q\ & (\board[5].Y~q\ & \board[4].Y~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[6].EMPTY~q\,
	datab => \board[5].Y~q\,
	datad => \board[4].Y~q\,
	combout => \U4|U2|L~3_combout\);

-- Location: LCCOMB_X12_Y22_N10
\board~129\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~129_combout\ = (\Decoder0~3_combout\ & (\Mux0~6_combout\ & (\FLAG~input_o\ & !\state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~3_combout\,
	datab => \Mux0~6_combout\,
	datac => \FLAG~input_o\,
	datad => \state~q\,
	combout => \board~129_combout\);

-- Location: FF_X12_Y22_N11
\board[2].Y\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \board~129_combout\,
	ena => \board~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board[2].Y~q\);

-- Location: LCCOMB_X12_Y22_N30
\U4|U2|L~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|L~1_combout\ = (\board[2].Y~q\ & (\board[1].Y~q\ & !\board[3].EMPTY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[2].Y~q\,
	datac => \board[1].Y~q\,
	datad => \board[3].EMPTY~q\,
	combout => \U4|U2|L~1_combout\);

-- Location: LCCOMB_X12_Y23_N24
\U4|U2|L~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|L~6_combout\ = (\board[1].Y~q\ & (\board[3].Y~q\ & !\board[2].EMPTY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[1].Y~q\,
	datac => \board[3].Y~q\,
	datad => \board[2].EMPTY~q\,
	combout => \U4|U2|L~6_combout\);

-- Location: LCCOMB_X11_Y21_N22
\U4|U2|L~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|L~4_combout\ = ((\board[8].EMPTY~q\) # (!\board[9].Y~q\)) # (!\board[7].Y~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[7].Y~q\,
	datac => \board[8].EMPTY~q\,
	datad => \board[9].Y~q\,
	combout => \U4|U2|L~4_combout\);

-- Location: LCCOMB_X13_Y23_N2
\board~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~128_combout\ = (\FLAG~input_o\ & (!\state~q\ & (\Decoder0~2_combout\ & \Mux0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FLAG~input_o\,
	datab => \state~q\,
	datac => \Decoder0~2_combout\,
	datad => \Mux0~6_combout\,
	combout => \board~128_combout\);

-- Location: FF_X13_Y23_N3
\board[6].Y\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \board~128_combout\,
	ena => \board~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board[6].Y~q\);

-- Location: LCCOMB_X13_Y23_N8
\U4|U2|L~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|L~5_combout\ = (\board[6].Y~q\ & (!\board[5].EMPTY~q\ & \board[4].Y~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[6].Y~q\,
	datab => \board[5].EMPTY~q\,
	datad => \board[4].Y~q\,
	combout => \U4|U2|L~5_combout\);

-- Location: LCCOMB_X15_Y20_N26
\board~133\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~133_combout\ = (\FLAG~input_o\ & (\Mux0~6_combout\ & (\Decoder0~7_combout\ & !\state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FLAG~input_o\,
	datab => \Mux0~6_combout\,
	datac => \Decoder0~7_combout\,
	datad => \state~q\,
	combout => \board~133_combout\);

-- Location: FF_X15_Y20_N27
\board[8].Y\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \board~133_combout\,
	ena => \board~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board[8].Y~q\);

-- Location: LCCOMB_X14_Y20_N30
\U4|U2|L~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|L~2_combout\ = (!\board[9].EMPTY~q\ & (\board[7].Y~q\ & \board[8].Y~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \board[9].EMPTY~q\,
	datac => \board[7].Y~q\,
	datad => \board[8].Y~q\,
	combout => \U4|U2|L~2_combout\);

-- Location: LCCOMB_X11_Y21_N28
\U4|U2|linemove[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|linemove[3]~12_combout\ = (\U4|U2|L~2_combout\) # ((!\U4|U2|L~6_combout\ & (!\U4|U2|L~4_combout\ & !\U4|U2|L~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|L~6_combout\,
	datab => \U4|U2|L~4_combout\,
	datac => \U4|U2|L~5_combout\,
	datad => \U4|U2|L~2_combout\,
	combout => \U4|U2|linemove[3]~12_combout\);

-- Location: LCCOMB_X11_Y21_N26
\U4|U2|linemove[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|linemove[3]~13_combout\ = (!\U4|U2|L~3_combout\ & (!\U4|U2|L~1_combout\ & \U4|U2|linemove[3]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|L~3_combout\,
	datac => \U4|U2|L~1_combout\,
	datad => \U4|U2|linemove[3]~12_combout\,
	combout => \U4|U2|linemove[3]~13_combout\);

-- Location: LCCOMB_X11_Y21_N4
\U4|U2|linemove[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|linemove[2]~14_combout\ = (!\U4|U2|L~6_combout\ & (!\U4|U2|L~1_combout\ & (\U4|U2|L~5_combout\ & !\U4|U2|L~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|L~6_combout\,
	datab => \U4|U2|L~1_combout\,
	datac => \U4|U2|L~5_combout\,
	datad => \U4|U2|L~2_combout\,
	combout => \U4|U2|linemove[2]~14_combout\);

-- Location: LCCOMB_X14_Y20_N0
\U4|U2|L~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|L~0_combout\ = (\board[6].Y~q\ & (!\board[4].EMPTY~q\ & \board[5].Y~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \board[6].Y~q\,
	datac => \board[4].EMPTY~q\,
	datad => \board[5].Y~q\,
	combout => \U4|U2|L~0_combout\);

-- Location: LCCOMB_X12_Y22_N8
\U4|U2|L~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|L~7_combout\ = ((\board[1].EMPTY~q\) # (!\board[3].Y~q\)) # (!\board[2].Y~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[2].Y~q\,
	datac => \board[3].Y~q\,
	datad => \board[1].EMPTY~q\,
	combout => \U4|U2|L~7_combout\);

-- Location: LCCOMB_X14_Y20_N22
\U4|U2|linemove[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|linemove[0]~4_combout\ = (\board[9].Y~q\ & (!\board[7].EMPTY~q\ & \board[8].Y~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \board[9].Y~q\,
	datac => \board[7].EMPTY~q\,
	datad => \board[8].Y~q\,
	combout => \U4|U2|linemove[0]~4_combout\);

-- Location: LCCOMB_X11_Y21_N10
\U4|U2|linemove[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|linemove[0]~7_combout\ = (\U4|U2|L~4_combout\ & (!\U4|U2|L~1_combout\ & (!\U4|U2|L~2_combout\ & !\U4|U2|L~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|L~4_combout\,
	datab => \U4|U2|L~1_combout\,
	datac => \U4|U2|L~2_combout\,
	datad => \U4|U2|L~6_combout\,
	combout => \U4|U2|linemove[0]~7_combout\);

-- Location: LCCOMB_X11_Y21_N2
\U4|U2|linemove[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|linemove[2]~15_combout\ = (\U4|U2|L~7_combout\ & (\U4|U2|linemove[0]~7_combout\ & ((\U4|U2|L~0_combout\) # (\U4|U2|linemove[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|L~0_combout\,
	datab => \U4|U2|L~7_combout\,
	datac => \U4|U2|linemove[0]~4_combout\,
	datad => \U4|U2|linemove[0]~7_combout\,
	combout => \U4|U2|linemove[2]~15_combout\);

-- Location: LCCOMB_X11_Y21_N8
\U4|U2|linemove[2]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|linemove[2]~16_combout\ = (\U4|U2|linemove[2]~14_combout\) # ((\U4|U2|linemove[2]~15_combout\) # ((!\U4|U2|L~1_combout\ & \U4|U2|L~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|L~1_combout\,
	datab => \U4|U2|L~3_combout\,
	datac => \U4|U2|linemove[2]~14_combout\,
	datad => \U4|U2|linemove[2]~15_combout\,
	combout => \U4|U2|linemove[2]~16_combout\);

-- Location: LCCOMB_X11_Y21_N12
\U4|U2|linemove[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|linemove[0]~6_combout\ = (!\U4|U2|L~3_combout\ & (!\U4|U2|L~6_combout\ & ((\U4|U2|L~4_combout\) # (\U4|U2|L~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|L~4_combout\,
	datab => \U4|U2|L~3_combout\,
	datac => \U4|U2|L~5_combout\,
	datad => \U4|U2|L~6_combout\,
	combout => \U4|U2|linemove[0]~6_combout\);

-- Location: LCCOMB_X11_Y21_N0
\U4|U2|linemove[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|linemove[0]~5_combout\ = (\U4|U2|L~1_combout\) # ((!\U4|U2|L~3_combout\ & \U4|U2|L~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|L~3_combout\,
	datac => \U4|U2|L~1_combout\,
	datad => \U4|U2|L~2_combout\,
	combout => \U4|U2|linemove[0]~5_combout\);

-- Location: LCCOMB_X14_Y20_N18
\U4|U2|linemove[0]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|linemove[0]~17_combout\ = (\board[9].Y~q\ & (\board[8].Y~q\ & (!\board[7].EMPTY~q\ & !\U4|U2|L~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[9].Y~q\,
	datab => \board[8].Y~q\,
	datac => \board[7].EMPTY~q\,
	datad => \U4|U2|L~0_combout\,
	combout => \U4|U2|linemove[0]~17_combout\);

-- Location: LCCOMB_X11_Y21_N24
\U4|U2|linemove[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|linemove[0]~8_combout\ = (!\U4|U2|L~3_combout\ & (\U4|U2|L~7_combout\ & (!\U4|U2|L~5_combout\ & \U4|U2|linemove[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|L~3_combout\,
	datab => \U4|U2|L~7_combout\,
	datac => \U4|U2|L~5_combout\,
	datad => \U4|U2|linemove[0]~7_combout\,
	combout => \U4|U2|linemove[0]~8_combout\);

-- Location: LCCOMB_X11_Y21_N14
\U4|U2|linemove[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|linemove[0]~9_combout\ = (\U4|U2|linemove[0]~8_combout\ & (((\U4|U2|linemove[0]~17_combout\)))) # (!\U4|U2|linemove[0]~8_combout\ & ((\U4|U2|linemove[0]~6_combout\) # ((\U4|U2|linemove[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|linemove[0]~6_combout\,
	datab => \U4|U2|linemove[0]~5_combout\,
	datac => \U4|U2|linemove[0]~17_combout\,
	datad => \U4|U2|linemove[0]~8_combout\,
	combout => \U4|U2|linemove[0]~9_combout\);

-- Location: LCCOMB_X11_Y21_N20
\U4|U2|linemove[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|linemove[1]~10_combout\ = (\U4|U2|L~3_combout\) # ((\U4|U2|L~1_combout\) # ((\U4|U2|L~6_combout\ & !\U4|U2|L~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|L~6_combout\,
	datab => \U4|U2|L~3_combout\,
	datac => \U4|U2|L~1_combout\,
	datad => \U4|U2|L~2_combout\,
	combout => \U4|U2|linemove[1]~10_combout\);

-- Location: LCCOMB_X11_Y21_N6
\U4|U2|linemove[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|linemove[1]~11_combout\ = (\U4|U2|linemove[0]~8_combout\ & ((\U4|U2|linemove[0]~17_combout\))) # (!\U4|U2|linemove[0]~8_combout\ & (\U4|U2|linemove[1]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|U2|linemove[1]~10_combout\,
	datac => \U4|U2|linemove[0]~17_combout\,
	datad => \U4|U2|linemove[0]~8_combout\,
	combout => \U4|U2|linemove[1]~11_combout\);

-- Location: LCCOMB_X11_Y21_N18
\U4|U2|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|Equal0~0_combout\ = (!\U4|U2|linemove[3]~13_combout\ & (!\U4|U2|linemove[2]~16_combout\ & (!\U4|U2|linemove[0]~9_combout\ & !\U4|U2|linemove[1]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|linemove[3]~13_combout\,
	datab => \U4|U2|linemove[2]~16_combout\,
	datac => \U4|U2|linemove[0]~9_combout\,
	datad => \U4|U2|linemove[1]~11_combout\,
	combout => \U4|U2|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y21_N24
\U4|U2|C~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|C~6_combout\ = (\board[4].Y~q\ & (\board[7].Y~q\ & !\board[1].EMPTY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \board[4].Y~q\,
	datac => \board[7].Y~q\,
	datad => \board[1].EMPTY~q\,
	combout => \U4|U2|C~6_combout\);

-- Location: LCCOMB_X14_Y21_N22
\U4|U2|C~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|C~0_combout\ = (!\board[4].EMPTY~q\ & (\board[7].Y~q\ & \board[1].Y~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[4].EMPTY~q\,
	datac => \board[7].Y~q\,
	datad => \board[1].Y~q\,
	combout => \U4|U2|C~0_combout\);

-- Location: LCCOMB_X12_Y21_N8
\U4|U2|C~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|C~2_combout\ = (!\board[8].EMPTY~q\ & (\board[5].Y~q\ & \board[2].Y~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \board[8].EMPTY~q\,
	datac => \board[5].Y~q\,
	datad => \board[2].Y~q\,
	combout => \U4|U2|C~2_combout\);

-- Location: LCCOMB_X13_Y20_N22
\U4|U2|C~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|C~5_combout\ = (\board[8].Y~q\ & (!\board[5].EMPTY~q\ & \board[2].Y~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[8].Y~q\,
	datac => \board[5].EMPTY~q\,
	datad => \board[2].Y~q\,
	combout => \U4|U2|C~5_combout\);

-- Location: LCCOMB_X13_Y23_N28
\U4|U2|C~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|C~3_combout\ = (\board[3].Y~q\ & (\board[6].Y~q\ & !\board[9].EMPTY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \board[3].Y~q\,
	datac => \board[6].Y~q\,
	datad => \board[9].EMPTY~q\,
	combout => \U4|U2|C~3_combout\);

-- Location: LCCOMB_X12_Y21_N20
\U4|U2|colmove[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|colmove[1]~9_combout\ = (!\U4|U2|C~0_combout\ & (!\U4|U2|C~2_combout\ & (!\U4|U2|C~5_combout\ & !\U4|U2|C~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|C~0_combout\,
	datab => \U4|U2|C~2_combout\,
	datac => \U4|U2|C~5_combout\,
	datad => \U4|U2|C~3_combout\,
	combout => \U4|U2|colmove[1]~9_combout\);

-- Location: LCCOMB_X13_Y23_N6
\U4|U2|C~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|C~1_combout\ = (\board[3].Y~q\ & (!\board[6].EMPTY~q\ & \board[9].Y~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \board[3].Y~q\,
	datac => \board[6].EMPTY~q\,
	datad => \board[9].Y~q\,
	combout => \U4|U2|C~1_combout\);

-- Location: LCCOMB_X13_Y20_N16
\U4|U2|C~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|C~4_combout\ = (\board[1].Y~q\ & (\board[4].Y~q\ & !\board[7].EMPTY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \board[1].Y~q\,
	datac => \board[4].Y~q\,
	datad => \board[7].EMPTY~q\,
	combout => \U4|U2|C~4_combout\);

-- Location: LCCOMB_X12_Y21_N22
\U4|U2|colmove[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|colmove[1]~10_combout\ = (!\U4|U2|C~6_combout\ & (((\board[2].EMPTY~q\) # (!\board[8].Y~q\)) # (!\board[5].Y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[5].Y~q\,
	datab => \board[2].EMPTY~q\,
	datac => \board[8].Y~q\,
	datad => \U4|U2|C~6_combout\,
	combout => \U4|U2|colmove[1]~10_combout\);

-- Location: LCCOMB_X12_Y21_N24
\U4|U2|colmove[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|colmove[0]~11_combout\ = (!\U4|U2|C~4_combout\ & ((\U4|U2|C~1_combout\) # ((!\U4|U2|colmove[1]~9_combout\) # (!\U4|U2|colmove[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|C~1_combout\,
	datab => \U4|U2|C~4_combout\,
	datac => \U4|U2|colmove[1]~10_combout\,
	datad => \U4|U2|colmove[1]~9_combout\,
	combout => \U4|U2|colmove[0]~11_combout\);

-- Location: LCCOMB_X12_Y21_N12
\U4|U2|colmove[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|colmove[1]~13_combout\ = ((\U4|U2|colmove[1]~9_combout\ & ((\U4|U2|C~1_combout\) # (!\U4|U2|C~6_combout\)))) # (!\U4|U2|colmove[0]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|C~6_combout\,
	datab => \U4|U2|colmove[1]~9_combout\,
	datac => \U4|U2|C~1_combout\,
	datad => \U4|U2|colmove[0]~11_combout\,
	combout => \U4|U2|colmove[1]~13_combout\);

-- Location: LCCOMB_X12_Y21_N26
\U4|U2|colmove[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|colmove[0]~8_combout\ = (!\U4|U2|C~0_combout\ & ((\U4|U2|C~5_combout\) # ((!\U4|U2|C~1_combout\ & \U4|U2|C~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|C~0_combout\,
	datab => \U4|U2|C~5_combout\,
	datac => \U4|U2|C~1_combout\,
	datad => \U4|U2|C~6_combout\,
	combout => \U4|U2|colmove[0]~8_combout\);

-- Location: LCCOMB_X12_Y21_N18
\U4|U2|colmove[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|colmove[0]~12_combout\ = ((!\U4|U2|C~2_combout\ & ((\U4|U2|C~3_combout\) # (\U4|U2|colmove[0]~8_combout\)))) # (!\U4|U2|colmove[0]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|C~3_combout\,
	datab => \U4|U2|C~2_combout\,
	datac => \U4|U2|colmove[0]~8_combout\,
	datad => \U4|U2|colmove[0]~11_combout\,
	combout => \U4|U2|colmove[0]~12_combout\);

-- Location: LCCOMB_X13_Y20_N8
\U4|U2|colmove[0]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|colmove[0]~17_combout\ = (!\U4|U2|C~1_combout\ & (((\board[4].EMPTY~q\) # (!\board[1].Y~q\)) # (!\board[7].Y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[7].Y~q\,
	datab => \board[1].Y~q\,
	datac => \board[4].EMPTY~q\,
	datad => \U4|U2|C~1_combout\,
	combout => \U4|U2|colmove[0]~17_combout\);

-- Location: LCCOMB_X13_Y20_N2
\U4|U2|colmove[2]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|colmove[2]~18_combout\ = (!\U4|U2|C~3_combout\ & (((\board[8].EMPTY~q\) # (!\board[2].Y~q\)) # (!\board[5].Y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[5].Y~q\,
	datab => \board[2].Y~q\,
	datac => \board[8].EMPTY~q\,
	datad => \U4|U2|C~3_combout\,
	combout => \U4|U2|colmove[2]~18_combout\);

-- Location: LCCOMB_X13_Y20_N0
\U4|U2|MOVE[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|MOVE[3]~2_combout\ = (!\U4|U2|C~5_combout\ & (!\U4|U2|C~4_combout\ & (\U4|U2|colmove[0]~17_combout\ & \U4|U2|colmove[2]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|C~5_combout\,
	datab => \U4|U2|C~4_combout\,
	datac => \U4|U2|colmove[0]~17_combout\,
	datad => \U4|U2|colmove[2]~18_combout\,
	combout => \U4|U2|MOVE[3]~2_combout\);

-- Location: LCCOMB_X12_Y21_N6
\U4|U2|colmove[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|colmove[1]~14_combout\ = (!\U4|U2|C~1_combout\ & (!\U4|U2|C~4_combout\ & (\U4|U2|colmove[1]~10_combout\ & \U4|U2|colmove[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|C~1_combout\,
	datab => \U4|U2|C~4_combout\,
	datac => \U4|U2|colmove[1]~10_combout\,
	datad => \U4|U2|colmove[1]~9_combout\,
	combout => \U4|U2|colmove[1]~14_combout\);

-- Location: LCCOMB_X12_Y21_N28
\U4|U2|colmove[1]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|colmove[1]~15_combout\ = ((\board[6].Y~q\ & (!\board[3].EMPTY~q\ & \board[9].Y~q\))) # (!\U4|U2|colmove[1]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[6].Y~q\,
	datab => \board[3].EMPTY~q\,
	datac => \board[9].Y~q\,
	datad => \U4|U2|colmove[1]~14_combout\,
	combout => \U4|U2|colmove[1]~15_combout\);

-- Location: LCCOMB_X12_Y21_N10
\U4|U2|MOVE[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|MOVE[3]~3_combout\ = (\U4|U2|MOVE[3]~2_combout\ & (((!\U4|U2|colmove[1]~13_combout\ & !\U4|U2|colmove[0]~12_combout\)) # (!\U4|U2|colmove[1]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|colmove[1]~13_combout\,
	datab => \U4|U2|colmove[0]~12_combout\,
	datac => \U4|U2|MOVE[3]~2_combout\,
	datad => \U4|U2|colmove[1]~15_combout\,
	combout => \U4|U2|MOVE[3]~3_combout\);

-- Location: LCCOMB_X11_Y21_N16
\U4|U2|MOVE[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|MOVE[0]~8_combout\ = (\U4|U2|linemove[0]~9_combout\) # ((\U4|U2|colmove[1]~15_combout\ & (\U4|U2|colmove[0]~12_combout\ & \U4|U2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|colmove[1]~15_combout\,
	datab => \U4|U2|colmove[0]~12_combout\,
	datac => \U4|U2|linemove[0]~9_combout\,
	datad => \U4|U2|Equal0~0_combout\,
	combout => \U4|U2|MOVE[0]~8_combout\);

-- Location: LCCOMB_X11_Y21_N30
\U4|U2|MOVE[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|MOVE[0]~15_combout\ = (\U4|U2|MOVE[0]~8_combout\) # ((\U4|U2|MOVE[0]~11_combout\ & (\U4|U2|Equal0~0_combout\ & \U4|U2|MOVE[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|MOVE[0]~11_combout\,
	datab => \U4|U2|Equal0~0_combout\,
	datac => \U4|U2|MOVE[3]~3_combout\,
	datad => \U4|U2|MOVE[0]~8_combout\,
	combout => \U4|U2|MOVE[0]~15_combout\);

-- Location: LCCOMB_X12_Y21_N16
\U4|U2|MOVE[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|MOVE[3]~4_combout\ = (\U4|U2|MOVE[3]~3_combout\ & \U4|U2|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|MOVE[3]~3_combout\,
	datad => \U4|U2|Equal0~0_combout\,
	combout => \U4|U2|MOVE[3]~4_combout\);

-- Location: LCCOMB_X12_Y21_N30
\U4|U2|MOVE[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|MOVE[3]~5_combout\ = (\U4|U2|linemove[3]~13_combout\) # ((!\U4|U2|colmove[2]~18_combout\ & (!\U4|U2|C~4_combout\ & \U4|U2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|linemove[3]~13_combout\,
	datab => \U4|U2|colmove[2]~18_combout\,
	datac => \U4|U2|C~4_combout\,
	datad => \U4|U2|Equal0~0_combout\,
	combout => \U4|U2|MOVE[3]~5_combout\);

-- Location: LCCOMB_X10_Y21_N14
\U4|U2|D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|D~1_combout\ = \U4|U2|D~0_combout\ $ (((\board[3].Y~q\ & (\board[5].Y~q\ & !\board[7].EMPTY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[3].Y~q\,
	datab => \board[5].Y~q\,
	datac => \board[7].EMPTY~q\,
	datad => \U4|U2|D~0_combout\,
	combout => \U4|U2|D~1_combout\);

-- Location: LCCOMB_X12_Y21_N0
\U4|U2|MOVE[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|MOVE[1]~6_combout\ = (\U4|U2|linemove[1]~11_combout\) # ((\U4|U2|colmove[1]~13_combout\ & (\U4|U2|colmove[1]~15_combout\ & \U4|U2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|colmove[1]~13_combout\,
	datab => \U4|U2|colmove[1]~15_combout\,
	datac => \U4|U2|linemove[1]~11_combout\,
	datad => \U4|U2|Equal0~0_combout\,
	combout => \U4|U2|MOVE[1]~6_combout\);

-- Location: LCCOMB_X12_Y21_N2
\U4|U2|MOVE[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|MOVE[1]~7_combout\ = (\U4|U2|MOVE[1]~6_combout\) # ((!\U4|U2|D~1_combout\ & (\U4|U2|diagmove[0]~1_combout\ & \U4|U2|MOVE[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|D~1_combout\,
	datab => \U4|U2|MOVE[1]~6_combout\,
	datac => \U4|U2|diagmove[0]~1_combout\,
	datad => \U4|U2|MOVE[3]~4_combout\,
	combout => \U4|U2|MOVE[1]~7_combout\);

-- Location: LCCOMB_X12_Y21_N4
\U4|U3|MOVE[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U3|MOVE[0]~2_combout\ = (!\U4|U2|MOVE[3]~5_combout\ & (!\U4|U2|MOVE[1]~7_combout\ & ((!\U4|U2|MOVE[3]~4_combout\) # (!\U4|U2|diagmove[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|diagmove[3]~0_combout\,
	datab => \U4|U2|MOVE[3]~4_combout\,
	datac => \U4|U2|MOVE[3]~5_combout\,
	datad => \U4|U2|MOVE[1]~7_combout\,
	combout => \U4|U3|MOVE[0]~2_combout\);

-- Location: LCCOMB_X13_Y20_N10
\U4|U2|colmove[2]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|colmove[2]~16_combout\ = (\U4|U2|C~4_combout\) # ((\U4|U2|colmove[2]~18_combout\ & ((\U4|U2|C~5_combout\) # (!\U4|U2|colmove[0]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|C~5_combout\,
	datab => \U4|U2|C~4_combout\,
	datac => \U4|U2|colmove[0]~17_combout\,
	datad => \U4|U2|colmove[2]~18_combout\,
	combout => \U4|U2|colmove[2]~16_combout\);

-- Location: LCCOMB_X10_Y21_N20
\U4|U2|MOVE[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|MOVE[2]~12_combout\ = (\U4|U2|D~0_combout\ & (!\U4|U2|MOVE[0]~10_combout\ & \U4|U2|diagmove[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|U2|D~0_combout\,
	datac => \U4|U2|MOVE[0]~10_combout\,
	datad => \U4|U2|diagmove[0]~1_combout\,
	combout => \U4|U2|MOVE[2]~12_combout\);

-- Location: LCCOMB_X10_Y21_N6
\U4|U2|MOVE[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|MOVE[2]~13_combout\ = (\U4|U2|MOVE[3]~3_combout\ & ((\U4|U2|D~2_combout\ & (!\U4|U2|diagmove[3]~0_combout\)) # (!\U4|U2|D~2_combout\ & ((\U4|U2|MOVE[2]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|D~2_combout\,
	datab => \U4|U2|diagmove[3]~0_combout\,
	datac => \U4|U2|MOVE[3]~3_combout\,
	datad => \U4|U2|MOVE[2]~12_combout\,
	combout => \U4|U2|MOVE[2]~13_combout\);

-- Location: LCCOMB_X10_Y21_N8
\U4|U2|MOVE[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U2|MOVE[2]~14_combout\ = (\U4|U2|linemove[2]~16_combout\) # ((\U4|U2|Equal0~0_combout\ & ((\U4|U2|colmove[2]~16_combout\) # (\U4|U2|MOVE[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|colmove[2]~16_combout\,
	datab => \U4|U2|linemove[2]~16_combout\,
	datac => \U4|U2|Equal0~0_combout\,
	datad => \U4|U2|MOVE[2]~13_combout\,
	combout => \U4|U2|MOVE[2]~14_combout\);

-- Location: LCCOMB_X13_Y21_N8
\U4|U3|MOVE[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U3|MOVE[0]~3_combout\ = (\U4|U3|Equal0~2_combout\ & (!\U4|U2|MOVE[0]~15_combout\ & (\U4|U3|MOVE[0]~2_combout\ & !\U4|U2|MOVE[2]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U3|Equal0~2_combout\,
	datab => \U4|U2|MOVE[0]~15_combout\,
	datac => \U4|U3|MOVE[0]~2_combout\,
	datad => \U4|U2|MOVE[2]~14_combout\,
	combout => \U4|U3|MOVE[0]~3_combout\);

-- Location: LCCOMB_X12_Y21_N14
\U4|U3|MOVE[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U3|MOVE[1]~6_combout\ = (\U4|U2|MOVE[1]~7_combout\ & \U4|U3|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|U2|MOVE[1]~7_combout\,
	datad => \U4|U3|Equal0~2_combout\,
	combout => \U4|U3|MOVE[1]~6_combout\);

-- Location: LCCOMB_X13_Y21_N30
\U4|U3|MOVE[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U3|MOVE[1]~10_combout\ = (\U4|U1|MOVE[1]~12_combout\) # ((\U4|U3|MOVE[1]~6_combout\) # ((\U4|U3|MOVE[1]~9_combout\ & \U4|U3|MOVE[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|MOVE[1]~12_combout\,
	datab => \U4|U3|MOVE[1]~9_combout\,
	datac => \U4|U3|MOVE[0]~3_combout\,
	datad => \U4|U3|MOVE[1]~6_combout\,
	combout => \U4|U3|MOVE[1]~10_combout\);

-- Location: LCCOMB_X14_Y20_N2
\Decoder1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder1~5_combout\ = (\U4|U3|MOVE[3]~18_combout\ & (\U4|U3|MOVE[0]~5_combout\ & (!\U4|U3|MOVE[2]~14_combout\ & !\U4|U3|MOVE[1]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U3|MOVE[3]~18_combout\,
	datab => \U4|U3|MOVE[0]~5_combout\,
	datac => \U4|U3|MOVE[2]~14_combout\,
	datad => \U4|U3|MOVE[1]~10_combout\,
	combout => \Decoder1~5_combout\);

-- Location: LCCOMB_X14_Y20_N6
\board~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~111_combout\ = (\state~q\ & (!\board~110_combout\ & (\FLAG~input_o\ & \Decoder1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~q\,
	datab => \board~110_combout\,
	datac => \FLAG~input_o\,
	datad => \Decoder1~5_combout\,
	combout => \board~111_combout\);

-- Location: FF_X14_Y20_N7
\board[9].X\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \board~111_combout\,
	ena => \board~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board[9].X~q\);

-- Location: LCCOMB_X12_Y20_N24
\U4|U1|colmove[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|colmove[1]~6_combout\ = (!\U4|U1|C~6_combout\ & (!\U4|U1|C~5_combout\ & (\U4|U1|colmove[1]~5_combout\ & \U4|U1|colmove[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|C~6_combout\,
	datab => \U4|U1|C~5_combout\,
	datac => \U4|U1|colmove[1]~5_combout\,
	datad => \U4|U1|colmove[1]~4_combout\,
	combout => \U4|U1|colmove[1]~6_combout\);

-- Location: LCCOMB_X12_Y20_N10
\U4|U1|colmove[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|colmove[1]~7_combout\ = ((\board[9].X~q\ & (\board[6].X~q\ & !\board[3].EMPTY~q\))) # (!\U4|U1|colmove[1]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[9].X~q\,
	datab => \board[6].X~q\,
	datac => \board[3].EMPTY~q\,
	datad => \U4|U1|colmove[1]~6_combout\,
	combout => \U4|U1|colmove[1]~7_combout\);

-- Location: LCCOMB_X12_Y20_N18
\U4|U1|MOVE[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|MOVE[3]~3_combout\ = (!\U4|U1|C~0_combout\ & (\U4|U1|colmove[2]~12_combout\ & (!\U4|U1|C~5_combout\ & \U4|U1|colmove[0]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|C~0_combout\,
	datab => \U4|U1|colmove[2]~12_combout\,
	datac => \U4|U1|C~5_combout\,
	datad => \U4|U1|colmove[0]~14_combout\,
	combout => \U4|U1|MOVE[3]~3_combout\);

-- Location: LCCOMB_X12_Y20_N0
\U4|U1|MOVE[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|MOVE[3]~4_combout\ = (\U4|U1|MOVE[3]~3_combout\ & (((!\U4|U1|colmove[0]~11_combout\ & !\U4|U1|colmove[1]~9_combout\)) # (!\U4|U1|colmove[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|colmove[1]~7_combout\,
	datab => \U4|U1|MOVE[3]~3_combout\,
	datac => \U4|U1|colmove[0]~11_combout\,
	datad => \U4|U1|colmove[1]~9_combout\,
	combout => \U4|U1|MOVE[3]~4_combout\);

-- Location: LCCOMB_X13_Y22_N12
\U4|U1|MOVE[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|MOVE[2]~13_combout\ = (\U4|U1|MOVE[2]~5_combout\) # ((\U4|U1|MOVE[3]~4_combout\ & (\U4|U1|MOVE[2]~10_combout\ & \U4|U1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|MOVE[3]~4_combout\,
	datab => \U4|U1|MOVE[2]~10_combout\,
	datac => \U4|U1|MOVE[2]~5_combout\,
	datad => \U4|U1|Equal0~0_combout\,
	combout => \U4|U1|MOVE[2]~13_combout\);

-- Location: LCCOMB_X12_Y22_N4
\U4|U3|MOVE[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U3|MOVE[2]~12_combout\ = (\board[3].EMPTY~q\ & (((\board[9].EMPTY~q\ & \board[2].EMPTY~q\)) # (!\board[7].EMPTY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[3].EMPTY~q\,
	datab => \board[9].EMPTY~q\,
	datac => \board[7].EMPTY~q\,
	datad => \board[2].EMPTY~q\,
	combout => \U4|U3|MOVE[2]~12_combout\);

-- Location: LCCOMB_X12_Y22_N20
\DRAW~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAW~0_combout\ = (\U4|U3|MOVE[2]~1_combout\ & (\board[6].EMPTY~q\ & (\board[4].EMPTY~q\ & \U4|U3|MOVE[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U3|MOVE[2]~1_combout\,
	datab => \board[6].EMPTY~q\,
	datac => \board[4].EMPTY~q\,
	datad => \U4|U3|MOVE[1]~0_combout\,
	combout => \DRAW~0_combout\);

-- Location: LCCOMB_X12_Y22_N14
\U4|U3|MOVE[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U3|MOVE[2]~13_combout\ = (!\DRAW~0_combout\ & (((\board[1].EMPTY~q\ & \U4|U3|MOVE[2]~12_combout\)) # (!\board[5].EMPTY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[1].EMPTY~q\,
	datab => \board[5].EMPTY~q\,
	datac => \U4|U3|MOVE[2]~12_combout\,
	datad => \DRAW~0_combout\,
	combout => \U4|U3|MOVE[2]~13_combout\);

-- Location: LCCOMB_X13_Y21_N12
\U4|U3|MOVE[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U3|MOVE[2]~11_combout\ = (\U4|U3|Equal0~2_combout\ & \U4|U2|MOVE[2]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|U3|Equal0~2_combout\,
	datad => \U4|U2|MOVE[2]~14_combout\,
	combout => \U4|U3|MOVE[2]~11_combout\);

-- Location: LCCOMB_X13_Y21_N4
\U4|U3|MOVE[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U3|MOVE[2]~14_combout\ = (\U4|U1|MOVE[2]~13_combout\) # ((\U4|U3|MOVE[2]~11_combout\) # ((\U4|U3|MOVE[2]~13_combout\ & \U4|U3|MOVE[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|MOVE[2]~13_combout\,
	datab => \U4|U3|MOVE[2]~13_combout\,
	datac => \U4|U3|MOVE[0]~3_combout\,
	datad => \U4|U3|MOVE[2]~11_combout\,
	combout => \U4|U3|MOVE[2]~14_combout\);

-- Location: LCCOMB_X13_Y21_N24
\Decoder1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder1~1_combout\ = (!\U4|U3|MOVE[3]~18_combout\ & (!\U4|U3|MOVE[2]~14_combout\ & (\U4|U3|MOVE[1]~10_combout\ & \U4|U3|MOVE[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U3|MOVE[3]~18_combout\,
	datab => \U4|U3|MOVE[2]~14_combout\,
	datac => \U4|U3|MOVE[1]~10_combout\,
	datad => \U4|U3|MOVE[0]~5_combout\,
	combout => \Decoder1~1_combout\);

-- Location: LCCOMB_X13_Y23_N4
\board~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~96_combout\ = (\FLAG~input_o\ & (!\board~94_combout\ & ((\Decoder1~1_combout\) # (!\state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FLAG~input_o\,
	datab => \state~q\,
	datac => \board~94_combout\,
	datad => \Decoder1~1_combout\,
	combout => \board~96_combout\);

-- Location: FF_X13_Y23_N31
\board[3].EMPTY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \board~96_combout\,
	sload => VCC,
	ena => \board~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board[3].EMPTY~q\);

-- Location: LCCOMB_X12_Y22_N28
\U4|U3|MOVE[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U3|MOVE[1]~0_combout\ = (\board[3].EMPTY~q\ & (\board[5].EMPTY~q\ & (\board[7].EMPTY~q\ & \board[1].EMPTY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[3].EMPTY~q\,
	datab => \board[5].EMPTY~q\,
	datac => \board[7].EMPTY~q\,
	datad => \board[1].EMPTY~q\,
	combout => \U4|U3|MOVE[1]~0_combout\);

-- Location: LCCOMB_X15_Y21_N28
\U4|U3|MOVE[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U3|MOVE[3]~16_combout\ = (\board[4].EMPTY~q\ & (!\board[8].EMPTY~q\ & (\board[2].EMPTY~q\ & \board[6].EMPTY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[4].EMPTY~q\,
	datab => \board[8].EMPTY~q\,
	datac => \board[2].EMPTY~q\,
	datad => \board[6].EMPTY~q\,
	combout => \U4|U3|MOVE[3]~16_combout\);

-- Location: LCCOMB_X15_Y21_N18
\U4|U3|MOVE[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U3|MOVE[3]~17_combout\ = (\U4|U3|MOVE[1]~0_combout\ & ((\U4|U3|MOVE[3]~16_combout\) # (!\board[9].EMPTY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[9].EMPTY~q\,
	datac => \U4|U3|MOVE[1]~0_combout\,
	datad => \U4|U3|MOVE[3]~16_combout\,
	combout => \U4|U3|MOVE[3]~17_combout\);

-- Location: LCCOMB_X14_Y22_N30
\U4|U1|MOVE[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|MOVE[3]~14_combout\ = (\U4|U1|MOVE[3]~2_combout\) # ((\U4|U1|Equal0~0_combout\ & (\U4|U1|diagmove[3]~0_combout\ & \U4|U1|MOVE[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|Equal0~0_combout\,
	datab => \U4|U1|diagmove[3]~0_combout\,
	datac => \U4|U1|MOVE[3]~4_combout\,
	datad => \U4|U1|MOVE[3]~2_combout\,
	combout => \U4|U1|MOVE[3]~14_combout\);

-- Location: LCCOMB_X13_Y21_N22
\U4|U3|MOVE[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U3|MOVE[3]~15_combout\ = (\U4|U3|Equal0~2_combout\ & ((\U4|U2|MOVE[3]~5_combout\) # ((\U4|U2|MOVE[3]~4_combout\ & \U4|U2|diagmove[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|MOVE[3]~4_combout\,
	datab => \U4|U2|MOVE[3]~5_combout\,
	datac => \U4|U3|Equal0~2_combout\,
	datad => \U4|U2|diagmove[3]~0_combout\,
	combout => \U4|U3|MOVE[3]~15_combout\);

-- Location: LCCOMB_X13_Y21_N6
\U4|U3|MOVE[3]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U3|MOVE[3]~18_combout\ = (\U4|U1|MOVE[3]~14_combout\) # ((\U4|U3|MOVE[3]~15_combout\) # ((\U4|U3|MOVE[3]~17_combout\ & \U4|U3|MOVE[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U3|MOVE[3]~17_combout\,
	datab => \U4|U1|MOVE[3]~14_combout\,
	datac => \U4|U3|MOVE[0]~3_combout\,
	datad => \U4|U3|MOVE[3]~15_combout\,
	combout => \U4|U3|MOVE[3]~18_combout\);

-- Location: LCCOMB_X14_Y20_N24
\Decoder1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder1~0_combout\ = (!\U4|U3|MOVE[3]~18_combout\ & (\U4|U3|MOVE[0]~5_combout\ & (\U4|U3|MOVE[1]~10_combout\ & \U4|U3|MOVE[2]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U3|MOVE[3]~18_combout\,
	datab => \U4|U3|MOVE[0]~5_combout\,
	datac => \U4|U3|MOVE[1]~10_combout\,
	datad => \U4|U3|MOVE[2]~14_combout\,
	combout => \Decoder1~0_combout\);

-- Location: LCCOMB_X14_Y20_N10
\board~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~92_combout\ = (!\board~90_combout\ & (\FLAG~input_o\ & ((\Decoder1~0_combout\) # (!\state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board~90_combout\,
	datab => \state~q\,
	datac => \FLAG~input_o\,
	datad => \Decoder1~0_combout\,
	combout => \board~92_combout\);

-- Location: FF_X14_Y20_N23
\board[7].EMPTY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \board~92_combout\,
	sload => VCC,
	ena => \board~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board[7].EMPTY~q\);

-- Location: LCCOMB_X12_Y23_N28
\Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\YMOVE[1]~input_o\ & (((\YMOVE[0]~input_o\)))) # (!\YMOVE[1]~input_o\ & ((\YMOVE[0]~input_o\ & (!\board[5].EMPTY~q\)) # (!\YMOVE[0]~input_o\ & ((!\board[4].EMPTY~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[5].EMPTY~q\,
	datab => \YMOVE[1]~input_o\,
	datac => \YMOVE[0]~input_o\,
	datad => \board[4].EMPTY~q\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X12_Y23_N22
\Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\YMOVE[1]~input_o\ & ((\Mux0~4_combout\ & (!\board[7].EMPTY~q\)) # (!\Mux0~4_combout\ & ((!\board[6].EMPTY~q\))))) # (!\YMOVE[1]~input_o\ & (((\Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[7].EMPTY~q\,
	datab => \YMOVE[1]~input_o\,
	datac => \board[6].EMPTY~q\,
	datad => \Mux0~4_combout\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X12_Y23_N30
\Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\YMOVE[0]~input_o\ & ((\YMOVE[1]~input_o\ & ((!\board[3].EMPTY~q\))) # (!\YMOVE[1]~input_o\ & (!\board[1].EMPTY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[1].EMPTY~q\,
	datab => \YMOVE[0]~input_o\,
	datac => \board[3].EMPTY~q\,
	datad => \YMOVE[1]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X12_Y23_N0
\Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\Mux0~1_combout\) # ((!\board[2].EMPTY~q\ & (!\YMOVE[0]~input_o\ & \YMOVE[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[2].EMPTY~q\,
	datab => \Mux0~1_combout\,
	datac => \YMOVE[0]~input_o\,
	datad => \YMOVE[1]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X13_Y23_N10
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\YMOVE[1]~input_o\ & ((\YMOVE[0]~input_o\ & ((!\board[9].EMPTY~q\))) # (!\YMOVE[0]~input_o\ & (!\board[8].EMPTY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YMOVE[0]~input_o\,
	datab => \board[8].EMPTY~q\,
	datac => \YMOVE[1]~input_o\,
	datad => \board[9].EMPTY~q\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X12_Y23_N10
\Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (!\YMOVE[2]~input_o\ & ((\YMOVE[3]~input_o\ & ((\Mux0~0_combout\))) # (!\YMOVE[3]~input_o\ & (\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~2_combout\,
	datab => \YMOVE[2]~input_o\,
	datac => \YMOVE[3]~input_o\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X12_Y23_N8
\Mux0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (\Mux0~3_combout\) # ((\Mux0~5_combout\ & (\YMOVE[2]~input_o\ & !\YMOVE[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~5_combout\,
	datab => \YMOVE[2]~input_o\,
	datac => \YMOVE[3]~input_o\,
	datad => \Mux0~3_combout\,
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X15_Y21_N16
\state~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~0_combout\ = (\FLAG~input_o\ & (!\state~q\ & \Mux0~6_combout\)) # (!\FLAG~input_o\ & (\state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FLAG~input_o\,
	datac => \state~q\,
	datad => \Mux0~6_combout\,
	combout => \state~0_combout\);

-- Location: FF_X15_Y21_N17
state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state~q\);

-- Location: LCCOMB_X14_Y20_N20
\board~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \board~112_combout\ = (!\board~110_combout\ & (\FLAG~input_o\ & ((\Decoder1~5_combout\) # (!\state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~q\,
	datab => \board~110_combout\,
	datac => \FLAG~input_o\,
	datad => \Decoder1~5_combout\,
	combout => \board~112_combout\);

-- Location: FF_X14_Y20_N17
\board[9].EMPTY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \board~112_combout\,
	sload => VCC,
	ena => \board~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board[9].EMPTY~q\);

-- Location: LCCOMB_X13_Y22_N28
\U4|U1|MOVE[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U1|MOVE[0]~11_combout\ = (\U4|U1|MOVE[0]~1_combout\) # ((\U4|U1|MOVE[3]~4_combout\ & (\U4|U1|MOVE[0]~8_combout\ & \U4|U1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|MOVE[3]~4_combout\,
	datab => \U4|U1|MOVE[0]~8_combout\,
	datac => \U4|U1|MOVE[0]~1_combout\,
	datad => \U4|U1|Equal0~0_combout\,
	combout => \U4|U1|MOVE[0]~11_combout\);

-- Location: LCCOMB_X13_Y21_N14
\U4|U3|MOVE[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U3|MOVE[0]~4_combout\ = (\U4|U1|MOVE[0]~11_combout\) # ((\U4|U2|MOVE[0]~15_combout\ & \U4|U3|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|MOVE[0]~15_combout\,
	datac => \U4|U3|Equal0~2_combout\,
	datad => \U4|U1|MOVE[0]~11_combout\,
	combout => \U4|U3|MOVE[0]~4_combout\);

-- Location: LCCOMB_X13_Y21_N16
\U4|U3|MOVE[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|U3|MOVE[0]~5_combout\ = (\U4|U3|MOVE[0]~4_combout\) # ((\U4|U3|MOVE[0]~3_combout\ & ((!\U4|U3|MOVE[1]~0_combout\) # (!\board[9].EMPTY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[9].EMPTY~q\,
	datab => \U4|U3|MOVE[0]~4_combout\,
	datac => \U4|U3|MOVE[0]~3_combout\,
	datad => \U4|U3|MOVE[1]~0_combout\,
	combout => \U4|U3|MOVE[0]~5_combout\);

-- Location: LCCOMB_X15_Y21_N6
\XMOVE[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XMOVE[0]~0_combout\ = (\FLAG~input_o\ & \state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FLAG~input_o\,
	datad => \state~q\,
	combout => \XMOVE[0]~0_combout\);

-- Location: FF_X13_Y21_N17
\XMOVE[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U4|U3|MOVE[0]~5_combout\,
	ena => \XMOVE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \XMOVE[0]~reg0_q\);

-- Location: FF_X13_Y21_N31
\XMOVE[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U4|U3|MOVE[1]~10_combout\,
	ena => \XMOVE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \XMOVE[1]~reg0_q\);

-- Location: FF_X13_Y21_N5
\XMOVE[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U4|U3|MOVE[2]~14_combout\,
	ena => \XMOVE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \XMOVE[2]~reg0_q\);

-- Location: FF_X13_Y21_N7
\XMOVE[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U4|U3|MOVE[3]~18_combout\,
	ena => \XMOVE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \XMOVE[3]~reg0_q\);

-- Location: LCCOMB_X14_Y23_N26
\winpc~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \winpc~4_combout\ = (\board[9].X~q\ & ((\board[1].X~q\) # ((\board[7].X~q\ & \board[3].X~q\)))) # (!\board[9].X~q\ & (((\board[7].X~q\ & \board[3].X~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[9].X~q\,
	datab => \board[1].X~q\,
	datac => \board[7].X~q\,
	datad => \board[3].X~q\,
	combout => \winpc~4_combout\);

-- Location: LCCOMB_X14_Y23_N20
\winpc~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \winpc~3_combout\ = (\board[6].X~q\ & ((\board[4].X~q\) # ((\board[2].X~q\ & \board[8].X~q\)))) # (!\board[6].X~q\ & (\board[2].X~q\ & (\board[8].X~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[6].X~q\,
	datab => \board[2].X~q\,
	datac => \board[8].X~q\,
	datad => \board[4].X~q\,
	combout => \winpc~3_combout\);

-- Location: LCCOMB_X15_Y23_N4
\winpc~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \winpc~1_combout\ = (\board[8].X~q\ & ((\board[9].X~q\) # ((\board[1].X~q\ & \board[4].X~q\)))) # (!\board[8].X~q\ & (\board[1].X~q\ & (\board[4].X~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[8].X~q\,
	datab => \board[1].X~q\,
	datac => \board[4].X~q\,
	datad => \board[9].X~q\,
	combout => \winpc~1_combout\);

-- Location: LCCOMB_X14_Y23_N8
\winpc~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \winpc~0_combout\ = (\board[9].X~q\ & ((\board[6].X~q\) # ((\board[2].X~q\ & \board[1].X~q\)))) # (!\board[9].X~q\ & (\board[2].X~q\ & ((\board[1].X~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[9].X~q\,
	datab => \board[2].X~q\,
	datac => \board[6].X~q\,
	datad => \board[1].X~q\,
	combout => \winpc~0_combout\);

-- Location: LCCOMB_X14_Y23_N18
\winpc~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \winpc~2_combout\ = (\winpc~1_combout\ & ((\board[7].X~q\) # ((\board[3].X~q\ & \winpc~0_combout\)))) # (!\winpc~1_combout\ & (\board[3].X~q\ & (\winpc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \winpc~1_combout\,
	datab => \board[3].X~q\,
	datac => \winpc~0_combout\,
	datad => \board[7].X~q\,
	combout => \winpc~2_combout\);

-- Location: LCCOMB_X14_Y23_N0
\winpc~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \winpc~5_combout\ = (\winpc~2_combout\) # ((\board[5].X~q\ & ((\winpc~4_combout\) # (\winpc~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \winpc~4_combout\,
	datab => \board[5].X~q\,
	datac => \winpc~3_combout\,
	datad => \winpc~2_combout\,
	combout => \winpc~5_combout\);

-- Location: LCCOMB_X11_Y20_N10
\winplayer~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \winplayer~3_combout\ = (\board[6].Y~q\ & ((\board[4].Y~q\) # ((\board[2].Y~q\ & \board[8].Y~q\)))) # (!\board[6].Y~q\ & (\board[2].Y~q\ & ((\board[8].Y~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[6].Y~q\,
	datab => \board[2].Y~q\,
	datac => \board[4].Y~q\,
	datad => \board[8].Y~q\,
	combout => \winplayer~3_combout\);

-- Location: LCCOMB_X11_Y20_N4
\winplayer~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \winplayer~4_combout\ = (\board[1].Y~q\ & ((\board[9].Y~q\) # ((\board[7].Y~q\ & \board[3].Y~q\)))) # (!\board[1].Y~q\ & (\board[7].Y~q\ & ((\board[3].Y~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[1].Y~q\,
	datab => \board[7].Y~q\,
	datac => \board[9].Y~q\,
	datad => \board[3].Y~q\,
	combout => \winplayer~4_combout\);

-- Location: LCCOMB_X11_Y20_N16
\winplayer~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \winplayer~0_combout\ = (\board[6].Y~q\ & ((\board[9].Y~q\) # ((\board[2].Y~q\ & \board[1].Y~q\)))) # (!\board[6].Y~q\ & (\board[2].Y~q\ & ((\board[1].Y~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[6].Y~q\,
	datab => \board[2].Y~q\,
	datac => \board[9].Y~q\,
	datad => \board[1].Y~q\,
	combout => \winplayer~0_combout\);

-- Location: LCCOMB_X11_Y20_N22
\winplayer~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \winplayer~1_combout\ = (\board[9].Y~q\ & ((\board[8].Y~q\) # ((\board[1].Y~q\ & \board[4].Y~q\)))) # (!\board[9].Y~q\ & (\board[1].Y~q\ & (\board[4].Y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[9].Y~q\,
	datab => \board[1].Y~q\,
	datac => \board[4].Y~q\,
	datad => \board[8].Y~q\,
	combout => \winplayer~1_combout\);

-- Location: LCCOMB_X11_Y20_N28
\winplayer~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \winplayer~2_combout\ = (\board[3].Y~q\ & ((\winplayer~0_combout\) # ((\winplayer~1_combout\ & \board[7].Y~q\)))) # (!\board[3].Y~q\ & (((\winplayer~1_combout\ & \board[7].Y~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[3].Y~q\,
	datab => \winplayer~0_combout\,
	datac => \winplayer~1_combout\,
	datad => \board[7].Y~q\,
	combout => \winplayer~2_combout\);

-- Location: LCCOMB_X11_Y20_N30
\winplayer~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \winplayer~5_combout\ = (\winplayer~2_combout\) # ((\board[5].Y~q\ & ((\winplayer~3_combout\) # (\winplayer~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \winplayer~3_combout\,
	datab => \winplayer~4_combout\,
	datac => \board[5].Y~q\,
	datad => \winplayer~2_combout\,
	combout => \winplayer~5_combout\);

-- Location: LCCOMB_X11_Y20_N20
\YWIN~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YWIN~0_combout\ = (\winplayer~5_combout\ & !\winpc~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \winplayer~5_combout\,
	datad => \winpc~5_combout\,
	combout => \YWIN~0_combout\);

-- Location: LCCOMB_X11_Y20_N14
\DRAW~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAW~1_combout\ = (\board[8].EMPTY~q\ & (\DRAW~0_combout\ & (!\winplayer~5_combout\ & !\winpc~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \board[8].EMPTY~q\,
	datab => \DRAW~0_combout\,
	datac => \winplayer~5_combout\,
	datad => \winpc~5_combout\,
	combout => \DRAW~1_combout\);

-- Location: IOIBUF_X0_Y10_N15
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

-- Location: IOIBUF_X0_Y4_N22
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

-- Location: IOIBUF_X0_Y4_N15
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

-- Location: IOIBUF_X78_Y29_N1
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

-- Location: IOIBUF_X0_Y4_N1
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

-- Location: IOIBUF_X46_Y0_N22
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

-- Location: IOIBUF_X0_Y32_N8
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

-- Location: IOIBUF_X64_Y54_N1
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

-- Location: IOIBUF_X0_Y36_N15
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

-- Location: IOIBUF_X78_Y3_N15
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

-- Location: IOIBUF_X0_Y16_N1
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

-- Location: IOIBUF_X78_Y21_N22
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

-- Location: IOIBUF_X18_Y0_N22
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

-- Location: IOIBUF_X38_Y39_N29
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

-- Location: IOIBUF_X69_Y54_N15
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

-- Location: IOIBUF_X0_Y33_N22
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

-- Location: IOIBUF_X78_Y35_N1
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

-- Location: IOIBUF_X69_Y0_N22
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

-- Location: IOIBUF_X58_Y0_N1
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

-- Location: IOIBUF_X49_Y0_N15
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

-- Location: IOIBUF_X22_Y0_N1
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

-- Location: IOIBUF_X20_Y0_N15
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

-- Location: IOIBUF_X78_Y29_N15
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

-- Location: IOIBUF_X34_Y0_N8
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

-- Location: IOIBUF_X69_Y54_N8
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

-- Location: IOIBUF_X60_Y0_N15
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

-- Location: IOIBUF_X0_Y15_N8
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

ww_YWIN <= \YWIN~output_o\;

ww_DRAW <= \DRAW~output_o\;
END structure;



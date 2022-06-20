-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "06/17/2022 18:14:05"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ROM_Demo IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(2 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END ROM_Demo;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ROM_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \Counter|s_count[0]~8_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \PulseGenerator|Add0~0_combout\ : std_logic;
SIGNAL \PulseGenerator|Add0~1\ : std_logic;
SIGNAL \PulseGenerator|Add0~2_combout\ : std_logic;
SIGNAL \PulseGenerator|Add0~3\ : std_logic;
SIGNAL \PulseGenerator|Add0~4_combout\ : std_logic;
SIGNAL \PulseGenerator|Add0~5\ : std_logic;
SIGNAL \PulseGenerator|Add0~6_combout\ : std_logic;
SIGNAL \PulseGenerator|Add0~7\ : std_logic;
SIGNAL \PulseGenerator|Add0~8_combout\ : std_logic;
SIGNAL \PulseGenerator|Add0~9\ : std_logic;
SIGNAL \PulseGenerator|Add0~10_combout\ : std_logic;
SIGNAL \PulseGenerator|Add0~11\ : std_logic;
SIGNAL \PulseGenerator|Add0~12_combout\ : std_logic;
SIGNAL \PulseGenerator|s_cnt~5_combout\ : std_logic;
SIGNAL \PulseGenerator|Add0~13\ : std_logic;
SIGNAL \PulseGenerator|Add0~14_combout\ : std_logic;
SIGNAL \PulseGenerator|Add0~15\ : std_logic;
SIGNAL \PulseGenerator|Add0~16_combout\ : std_logic;
SIGNAL \PulseGenerator|Add0~17\ : std_logic;
SIGNAL \PulseGenerator|Add0~18_combout\ : std_logic;
SIGNAL \PulseGenerator|Add0~19\ : std_logic;
SIGNAL \PulseGenerator|Add0~20_combout\ : std_logic;
SIGNAL \PulseGenerator|Add0~21\ : std_logic;
SIGNAL \PulseGenerator|Add0~22_combout\ : std_logic;
SIGNAL \PulseGenerator|s_cnt~4_combout\ : std_logic;
SIGNAL \PulseGenerator|Add0~23\ : std_logic;
SIGNAL \PulseGenerator|Add0~24_combout\ : std_logic;
SIGNAL \PulseGenerator|s_cnt~3_combout\ : std_logic;
SIGNAL \PulseGenerator|Add0~25\ : std_logic;
SIGNAL \PulseGenerator|Add0~26_combout\ : std_logic;
SIGNAL \PulseGenerator|s_cnt~2_combout\ : std_logic;
SIGNAL \PulseGenerator|Add0~27\ : std_logic;
SIGNAL \PulseGenerator|Add0~28_combout\ : std_logic;
SIGNAL \PulseGenerator|s_cnt~1_combout\ : std_logic;
SIGNAL \PulseGenerator|Add0~29\ : std_logic;
SIGNAL \PulseGenerator|Add0~30_combout\ : std_logic;
SIGNAL \PulseGenerator|Add0~31\ : std_logic;
SIGNAL \PulseGenerator|Add0~32_combout\ : std_logic;
SIGNAL \PulseGenerator|s_cnt~0_combout\ : std_logic;
SIGNAL \PulseGenerator|Add0~33\ : std_logic;
SIGNAL \PulseGenerator|Add0~34_combout\ : std_logic;
SIGNAL \PulseGenerator|Add0~35\ : std_logic;
SIGNAL \PulseGenerator|Add0~36_combout\ : std_logic;
SIGNAL \PulseGenerator|s_cnt~6_combout\ : std_logic;
SIGNAL \PulseGenerator|Add0~37\ : std_logic;
SIGNAL \PulseGenerator|Add0~38_combout\ : std_logic;
SIGNAL \PulseGenerator|s_cnt~7_combout\ : std_logic;
SIGNAL \PulseGenerator|Add0~39\ : std_logic;
SIGNAL \PulseGenerator|Add0~40_combout\ : std_logic;
SIGNAL \PulseGenerator|s_cnt~9_combout\ : std_logic;
SIGNAL \PulseGenerator|Add0~41\ : std_logic;
SIGNAL \PulseGenerator|Add0~42_combout\ : std_logic;
SIGNAL \PulseGenerator|s_cnt~10_combout\ : std_logic;
SIGNAL \PulseGenerator|Add0~43\ : std_logic;
SIGNAL \PulseGenerator|Add0~44_combout\ : std_logic;
SIGNAL \PulseGenerator|s_cnt~11_combout\ : std_logic;
SIGNAL \PulseGenerator|Add0~45\ : std_logic;
SIGNAL \PulseGenerator|Add0~46_combout\ : std_logic;
SIGNAL \PulseGenerator|Add0~47\ : std_logic;
SIGNAL \PulseGenerator|Add0~48_combout\ : std_logic;
SIGNAL \PulseGenerator|s_cnt~8_combout\ : std_logic;
SIGNAL \PulseGenerator|Equal0~6_combout\ : std_logic;
SIGNAL \PulseGenerator|Equal0~5_combout\ : std_logic;
SIGNAL \PulseGenerator|Equal0~1_combout\ : std_logic;
SIGNAL \PulseGenerator|Equal0~0_combout\ : std_logic;
SIGNAL \PulseGenerator|Equal0~3_combout\ : std_logic;
SIGNAL \PulseGenerator|Equal0~2_combout\ : std_logic;
SIGNAL \PulseGenerator|Equal0~4_combout\ : std_logic;
SIGNAL \PulseGenerator|Equal0~7_combout\ : std_logic;
SIGNAL \PulseGenerator|pulseOut~feeder_combout\ : std_logic;
SIGNAL \PulseGenerator|pulseOut~q\ : std_logic;
SIGNAL \Counter|s_count[0]~9\ : std_logic;
SIGNAL \Counter|s_count[1]~10_combout\ : std_logic;
SIGNAL \Counter|s_count[1]~11\ : std_logic;
SIGNAL \Counter|s_count[2]~12_combout\ : std_logic;
SIGNAL \Counter|s_count[2]~13\ : std_logic;
SIGNAL \Counter|s_count[3]~14_combout\ : std_logic;
SIGNAL \Counter|s_count[3]~15\ : std_logic;
SIGNAL \Counter|s_count[4]~16_combout\ : std_logic;
SIGNAL \Counter|s_count[4]~17\ : std_logic;
SIGNAL \Counter|s_count[5]~18_combout\ : std_logic;
SIGNAL \Counter|s_count[5]~19\ : std_logic;
SIGNAL \Counter|s_count[6]~20_combout\ : std_logic;
SIGNAL \Counter|s_count[6]~21\ : std_logic;
SIGNAL \Counter|s_count[7]~22_combout\ : std_logic;
SIGNAL \ROM|Mux0~3_combout\ : std_logic;
SIGNAL \ROM|Mux0~2_combout\ : std_logic;
SIGNAL \ROM|Mux0~4_combout\ : std_logic;
SIGNAL \ROM|Mux0~0_combout\ : std_logic;
SIGNAL \ROM|Mux0~1_combout\ : std_logic;
SIGNAL \ROM|Mux0~5_combout\ : std_logic;
SIGNAL \d2|decOut_n[0]~11_combout\ : std_logic;
SIGNAL \d2|decOut_n[0]~12_combout\ : std_logic;
SIGNAL \d2|decOut_n[0]~4_combout\ : std_logic;
SIGNAL \d2|decOut_n[0]~5_combout\ : std_logic;
SIGNAL \ROM|Mux5~0_combout\ : std_logic;
SIGNAL \d2|decOut_n[0]~6_combout\ : std_logic;
SIGNAL \d2|decOut_n[0]~7_combout\ : std_logic;
SIGNAL \d2|decOut_n[0]~10_combout\ : std_logic;
SIGNAL \d2|decOut_n[0]~8_combout\ : std_logic;
SIGNAL \d2|decOut_n[0]~9_combout\ : std_logic;
SIGNAL \ROM|Mux1~8_combout\ : std_logic;
SIGNAL \ROM|Mux1~7_combout\ : std_logic;
SIGNAL \ROM|Mux1~9_combout\ : std_logic;
SIGNAL \ROM|Mux1~3_combout\ : std_logic;
SIGNAL \ROM|Mux1~4_combout\ : std_logic;
SIGNAL \ROM|Mux1~5_combout\ : std_logic;
SIGNAL \ROM|Mux1~2_combout\ : std_logic;
SIGNAL \ROM|Mux1~6_combout\ : std_logic;
SIGNAL \ROM|Mux1~0_combout\ : std_logic;
SIGNAL \ROM|Mux1~1_combout\ : std_logic;
SIGNAL \ROM|Mux1~10_combout\ : std_logic;
SIGNAL \ROM|Mux2~15_combout\ : std_logic;
SIGNAL \ROM|Mux2~0_combout\ : std_logic;
SIGNAL \ROM|Mux2~13_combout\ : std_logic;
SIGNAL \ROM|Mux2~12_combout\ : std_logic;
SIGNAL \ROM|Mux2~14_combout\ : std_logic;
SIGNAL \ROM|Mux2~16_combout\ : std_logic;
SIGNAL \ROM|Mux2~2_combout\ : std_logic;
SIGNAL \ROM|Mux2~4_combout\ : std_logic;
SIGNAL \ROM|Mux2~3_combout\ : std_logic;
SIGNAL \ROM|Mux2~1_combout\ : std_logic;
SIGNAL \ROM|Mux2~5_combout\ : std_logic;
SIGNAL \ROM|Mux2~7_combout\ : std_logic;
SIGNAL \ROM|Mux2~6_combout\ : std_logic;
SIGNAL \ROM|Mux2~8_combout\ : std_logic;
SIGNAL \ROM|Mux2~9_combout\ : std_logic;
SIGNAL \ROM|Mux2~10_combout\ : std_logic;
SIGNAL \ROM|Mux2~11_combout\ : std_logic;
SIGNAL \ROM|Mux2~17_combout\ : std_logic;
SIGNAL \ROM|Mux3~2_combout\ : std_logic;
SIGNAL \ROM|Mux3~14_combout\ : std_logic;
SIGNAL \ROM|Mux3~11_combout\ : std_logic;
SIGNAL \ROM|Mux3~12_combout\ : std_logic;
SIGNAL \ROM|Mux3~15_combout\ : std_logic;
SIGNAL \ROM|Mux3~16_combout\ : std_logic;
SIGNAL \ROM|Mux3~8_combout\ : std_logic;
SIGNAL \ROM|Mux3~9_combout\ : std_logic;
SIGNAL \ROM|Mux3~10_combout\ : std_logic;
SIGNAL \ROM|Mux3~6_combout\ : std_logic;
SIGNAL \ROM|Mux3~3_combout\ : std_logic;
SIGNAL \ROM|Mux3~4_combout\ : std_logic;
SIGNAL \ROM|Mux3~5_combout\ : std_logic;
SIGNAL \ROM|Mux3~7_combout\ : std_logic;
SIGNAL \ROM|Mux3~13_combout\ : std_logic;
SIGNAL \ROM|Mux4~16_combout\ : std_logic;
SIGNAL \ROM|Mux4~14_combout\ : std_logic;
SIGNAL \ROM|Mux4~15_combout\ : std_logic;
SIGNAL \ROM|Mux4~7_combout\ : std_logic;
SIGNAL \ROM|Mux4~6_combout\ : std_logic;
SIGNAL \ROM|Mux4~3_combout\ : std_logic;
SIGNAL \ROM|Mux4~17_combout\ : std_logic;
SIGNAL \ROM|Mux4~10_combout\ : std_logic;
SIGNAL \ROM|Mux4~9_combout\ : std_logic;
SIGNAL \ROM|Mux4~8_combout\ : std_logic;
SIGNAL \ROM|Mux4~12_combout\ : std_logic;
SIGNAL \ROM|Mux4~11_combout\ : std_logic;
SIGNAL \ROM|Mux4~13_combout\ : std_logic;
SIGNAL \ROM|Mux5~5_combout\ : std_logic;
SIGNAL \ROM|Mux5~4_combout\ : std_logic;
SIGNAL \ROM|Mux5~6_combout\ : std_logic;
SIGNAL \ROM|Mux5~2_combout\ : std_logic;
SIGNAL \ROM|Mux5~7_combout\ : std_logic;
SIGNAL \ROM|Mux5~8_combout\ : std_logic;
SIGNAL \ROM|Mux5~11_combout\ : std_logic;
SIGNAL \ROM|Mux5~9_combout\ : std_logic;
SIGNAL \ROM|Mux5~10_combout\ : std_logic;
SIGNAL \ROM|Mux5~12_combout\ : std_logic;
SIGNAL \ROM|Mux5~1_combout\ : std_logic;
SIGNAL \ROM|Mux5~3_combout\ : std_logic;
SIGNAL \ROM|Mux5~13_combout\ : std_logic;
SIGNAL \ROM|Mux6~4_combout\ : std_logic;
SIGNAL \ROM|Mux6~8_combout\ : std_logic;
SIGNAL \ROM|Mux6~6_combout\ : std_logic;
SIGNAL \ROM|Mux6~7_combout\ : std_logic;
SIGNAL \ROM|Mux6~5_combout\ : std_logic;
SIGNAL \ROM|Mux6~9_combout\ : std_logic;
SIGNAL \ROM|Mux6~10_combout\ : std_logic;
SIGNAL \ROM|Mux6~11_combout\ : std_logic;
SIGNAL \ROM|Mux6~14_combout\ : std_logic;
SIGNAL \ROM|Mux6~15_combout\ : std_logic;
SIGNAL \ROM|Mux6~13_combout\ : std_logic;
SIGNAL \ROM|Mux6~12_combout\ : std_logic;
SIGNAL \ROM|Mux7~2_combout\ : std_logic;
SIGNAL \ROM|Mux7~3_combout\ : std_logic;
SIGNAL \ROM|Mux7~4_combout\ : std_logic;
SIGNAL \ROM|Mux7~7_combout\ : std_logic;
SIGNAL \ROM|Mux7~6_combout\ : std_logic;
SIGNAL \ROM|Mux7~5_combout\ : std_logic;
SIGNAL \ROM|Mux7~1_combout\ : std_logic;
SIGNAL \ROM|Mux7~9_combout\ : std_logic;
SIGNAL \ROM|Mux7~8_combout\ : std_logic;
SIGNAL \ROM|Mux7~0_combout\ : std_logic;
SIGNAL \ROM|Mux7~10_combout\ : std_logic;
SIGNAL \Signed2BCD|Add0~1_cout\ : std_logic;
SIGNAL \Signed2BCD|Add0~3\ : std_logic;
SIGNAL \Signed2BCD|Add0~5\ : std_logic;
SIGNAL \Signed2BCD|Add0~7\ : std_logic;
SIGNAL \Signed2BCD|Add0~9\ : std_logic;
SIGNAL \Signed2BCD|Add0~11\ : std_logic;
SIGNAL \Signed2BCD|Add0~13\ : std_logic;
SIGNAL \Signed2BCD|Add0~14_combout\ : std_logic;
SIGNAL \Signed2BCD|Add0~16_combout\ : std_logic;
SIGNAL \Signed2BCD|Add0~12_combout\ : std_logic;
SIGNAL \Signed2BCD|Add0~17_combout\ : std_logic;
SIGNAL \Signed2BCD|Add0~10_combout\ : std_logic;
SIGNAL \Signed2BCD|Add0~18_combout\ : std_logic;
SIGNAL \Signed2BCD|Add0~8_combout\ : std_logic;
SIGNAL \Signed2BCD|Add0~19_combout\ : std_logic;
SIGNAL \Signed2BCD|Add0~6_combout\ : std_logic;
SIGNAL \Signed2BCD|Add0~20_combout\ : std_logic;
SIGNAL \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[54]~10_combout\ : std_logic;
SIGNAL \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[54]~17_combout\ : std_logic;
SIGNAL \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[53]~18_combout\ : std_logic;
SIGNAL \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[53]~11_combout\ : std_logic;
SIGNAL \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[52]~12_combout\ : std_logic;
SIGNAL \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[52]~19_combout\ : std_logic;
SIGNAL \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[51]~20_combout\ : std_logic;
SIGNAL \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[51]~13_combout\ : std_logic;
SIGNAL \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[50]~14_combout\ : std_logic;
SIGNAL \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[50]~21_combout\ : std_logic;
SIGNAL \Signed2BCD|Add0~4_combout\ : std_logic;
SIGNAL \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[49]~16_combout\ : std_logic;
SIGNAL \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[49]~15_combout\ : std_logic;
SIGNAL \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ : std_logic;
SIGNAL \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ : std_logic;
SIGNAL \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ : std_logic;
SIGNAL \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ : std_logic;
SIGNAL \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ : std_logic;
SIGNAL \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~54_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~33_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~34_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~55_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~28_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~51_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~52_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~29_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~30_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~53_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~32_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~31_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~49_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\ : std_logic;
SIGNAL \d1|decOut_n[0]~4_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~46_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~61_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\ : std_logic;
SIGNAL \d1|decOut_n[6]~5_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~44_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~58_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~60_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~45_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~59_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[17]~49_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[18]~48_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[18]~32_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[17]~33_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[16]~34_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[16]~50_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[15]~51_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[15]~35_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[23]~52_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[23]~36_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[22]~37_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[22]~53_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[21]~38_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[21]~54_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[20]~55_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[28]~56_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[27]~57_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[26]~58_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~37_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[25]~59_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~38_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[25]~43_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[33]~44_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[33]~60_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[32]~45_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[32]~61_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[31]~62_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[31]~46_combout\ : std_logic;
SIGNAL \Signed2BCD|Add0~2_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~41_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~40_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~42_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~39_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[30]~47_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[30]~63_combout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \d1|decOut_n~3_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~56_combout\ : std_logic;
SIGNAL \d1|decOut_n[0]~1_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~57_combout\ : std_logic;
SIGNAL \d1|decOut_n[0]~0_combout\ : std_logic;
SIGNAL \d1|decOut_n[0]~2_combout\ : std_logic;
SIGNAL \d1|decOut_n[0]~6_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\ : std_logic;
SIGNAL \d1|decOut_n[0]~7_combout\ : std_logic;
SIGNAL \d1|decOut_n[0]~8_combout\ : std_logic;
SIGNAL \d1|decOut_n[0]~9_combout\ : std_logic;
SIGNAL \d1|decOut_n[0]~10_combout\ : std_logic;
SIGNAL \d1|decOut_n[0]~11_combout\ : std_logic;
SIGNAL \d1|decOut_n[0]~12_combout\ : std_logic;
SIGNAL \d1|decOut_n[0]~13_combout\ : std_logic;
SIGNAL \d1|decOut_n[0]~18_combout\ : std_logic;
SIGNAL \d1|decOut_n[1]~19_combout\ : std_logic;
SIGNAL \d1|decOut_n[0]~15_combout\ : std_logic;
SIGNAL \d1|decOut_n~14_combout\ : std_logic;
SIGNAL \d1|decOut_n[6]~16_combout\ : std_logic;
SIGNAL \d1|decOut_n[1]~17_combout\ : std_logic;
SIGNAL \d1|decOut_n[1]~21_combout\ : std_logic;
SIGNAL \d1|decOut_n[1]~20_combout\ : std_logic;
SIGNAL \d1|decOut_n[1]~22_combout\ : std_logic;
SIGNAL \d1|decOut_n[1]~23_combout\ : std_logic;
SIGNAL \d1|decOut_n[0]~24_combout\ : std_logic;
SIGNAL \d1|decOut_n[2]~25_combout\ : std_logic;
SIGNAL \d1|decOut_n[2]~26_combout\ : std_logic;
SIGNAL \d1|decOut_n[2]~27_combout\ : std_logic;
SIGNAL \d1|decOut_n[2]~28_combout\ : std_logic;
SIGNAL \d1|decOut_n[3]~39_combout\ : std_logic;
SIGNAL \d1|decOut_n[3]~40_combout\ : std_logic;
SIGNAL \d1|decOut_n[3]~38_combout\ : std_logic;
SIGNAL \d1|decOut_n[3]~42_combout\ : std_logic;
SIGNAL \d1|decOut_n[3]~41_combout\ : std_logic;
SIGNAL \d1|decOut_n[3]~43_combout\ : std_logic;
SIGNAL \d1|decOut_n[3]~29_combout\ : std_logic;
SIGNAL \d1|decOut_n[3]~30_combout\ : std_logic;
SIGNAL \d1|decOut_n[3]~31_combout\ : std_logic;
SIGNAL \d1|decOut_n[3]~32_combout\ : std_logic;
SIGNAL \d1|decOut_n[3]~36_combout\ : std_logic;
SIGNAL \d1|decOut_n[6]~33_combout\ : std_logic;
SIGNAL \d1|decOut_n[6]~34_combout\ : std_logic;
SIGNAL \d1|decOut_n[6]~35_combout\ : std_logic;
SIGNAL \d1|decOut_n[3]~37_combout\ : std_logic;
SIGNAL \d1|decOut_n[3]~44_combout\ : std_logic;
SIGNAL \d1|decOut_n[4]~45_combout\ : std_logic;
SIGNAL \d1|decOut_n[5]~49_combout\ : std_logic;
SIGNAL \d1|decOut_n[5]~46_combout\ : std_logic;
SIGNAL \d1|decOut_n[5]~47_combout\ : std_logic;
SIGNAL \d1|decOut_n[5]~48_combout\ : std_logic;
SIGNAL \d1|decOut_n[5]~50_combout\ : std_logic;
SIGNAL \d1|decOut_n[6]~51_combout\ : std_logic;
SIGNAL \d1|decOut_n[6]~52_combout\ : std_logic;
SIGNAL \d1|decOut_n[6]~53_combout\ : std_logic;
SIGNAL \d1|decOut_n[6]~56_combout\ : std_logic;
SIGNAL \d1|decOut_n[6]~54_combout\ : std_logic;
SIGNAL \d1|decOut_n[6]~55_combout\ : std_logic;
SIGNAL \d1|decOut_n[6]~57_combout\ : std_logic;
SIGNAL \d1|decOut_n[6]~58_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~44_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~70_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~71_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~45_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~46_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~72_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~47_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~73_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~48_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~74_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~49_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~75_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~50_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~76_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~51_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~77_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~78_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~52_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~53_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~79_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~54_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~80_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~55_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~81_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~56_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~82_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~83_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~57_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~84_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~58_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~59_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~85_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~86_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~60_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~61_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~87_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~88_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~62_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~63_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~89_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~90_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~64_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~65_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~91_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~66_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~68_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~69_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[56]~64_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[56]~63_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\ : std_logic;
SIGNAL \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[56]~67_combout\ : std_logic;
SIGNAL \d0|decOut_n[0]~0_combout\ : std_logic;
SIGNAL \d0|decOut_n[1]~1_combout\ : std_logic;
SIGNAL \d0|decOut_n[2]~2_combout\ : std_logic;
SIGNAL \d0|decOut_n[3]~3_combout\ : std_logic;
SIGNAL \d0|decOut_n[4]~4_combout\ : std_logic;
SIGNAL \d0|decOut_n[5]~5_combout\ : std_logic;
SIGNAL \d0|decOut_n[6]~6_combout\ : std_logic;
SIGNAL \Counter|s_count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PulseGenerator|s_cnt\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \Signed2BCD|Div1|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_Mux0~5_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
HEX3 <= ww_HEX3;
HEX2 <= ww_HEX2;
HEX1 <= ww_HEX1;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\Signed2BCD|Div1|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\ <= NOT \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\;
\ROM|ALT_INV_Mux0~5_combout\ <= NOT \ROM|Mux0~5_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|Mux0~5_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|Mux0~5_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|Mux0~5_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|Mux0~5_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|Mux0~5_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|Mux0~5_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|ALT_INV_Mux0~5_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d2|decOut_n[0]~9_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d2|decOut_n[0]~9_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Signed2BCD|Div1|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d2|decOut_n[0]~9_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d1|decOut_n[0]~13_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d1|decOut_n[1]~23_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d1|decOut_n[2]~28_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d1|decOut_n[3]~44_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d1|decOut_n[4]~45_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d1|decOut_n[5]~50_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d1|decOut_n[6]~58_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|decOut_n[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|decOut_n[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|decOut_n[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|decOut_n[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|decOut_n[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|decOut_n[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|decOut_n[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X107_Y24_N4
\Counter|s_count[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|s_count[0]~8_combout\ = \Counter|s_count\(0) $ (VCC)
-- \Counter|s_count[0]~9\ = CARRY(\Counter|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter|s_count\(0),
	datad => VCC,
	combout => \Counter|s_count[0]~8_combout\,
	cout => \Counter|s_count[0]~9\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LCCOMB_X77_Y36_N8
\PulseGenerator|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|Add0~0_combout\ = \PulseGenerator|s_cnt\(0) $ (VCC)
-- \PulseGenerator|Add0~1\ = CARRY(\PulseGenerator|s_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PulseGenerator|s_cnt\(0),
	datad => VCC,
	combout => \PulseGenerator|Add0~0_combout\,
	cout => \PulseGenerator|Add0~1\);

-- Location: FF_X77_Y36_N9
\PulseGenerator|s_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGenerator|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGenerator|s_cnt\(0));

-- Location: LCCOMB_X77_Y36_N10
\PulseGenerator|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|Add0~2_combout\ = (\PulseGenerator|s_cnt\(1) & (!\PulseGenerator|Add0~1\)) # (!\PulseGenerator|s_cnt\(1) & ((\PulseGenerator|Add0~1\) # (GND)))
-- \PulseGenerator|Add0~3\ = CARRY((!\PulseGenerator|Add0~1\) # (!\PulseGenerator|s_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGenerator|s_cnt\(1),
	datad => VCC,
	cin => \PulseGenerator|Add0~1\,
	combout => \PulseGenerator|Add0~2_combout\,
	cout => \PulseGenerator|Add0~3\);

-- Location: FF_X77_Y36_N11
\PulseGenerator|s_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGenerator|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGenerator|s_cnt\(1));

-- Location: LCCOMB_X77_Y36_N12
\PulseGenerator|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|Add0~4_combout\ = (\PulseGenerator|s_cnt\(2) & (\PulseGenerator|Add0~3\ $ (GND))) # (!\PulseGenerator|s_cnt\(2) & (!\PulseGenerator|Add0~3\ & VCC))
-- \PulseGenerator|Add0~5\ = CARRY((\PulseGenerator|s_cnt\(2) & !\PulseGenerator|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGenerator|s_cnt\(2),
	datad => VCC,
	cin => \PulseGenerator|Add0~3\,
	combout => \PulseGenerator|Add0~4_combout\,
	cout => \PulseGenerator|Add0~5\);

-- Location: FF_X77_Y36_N13
\PulseGenerator|s_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGenerator|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGenerator|s_cnt\(2));

-- Location: LCCOMB_X77_Y36_N14
\PulseGenerator|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|Add0~6_combout\ = (\PulseGenerator|s_cnt\(3) & (!\PulseGenerator|Add0~5\)) # (!\PulseGenerator|s_cnt\(3) & ((\PulseGenerator|Add0~5\) # (GND)))
-- \PulseGenerator|Add0~7\ = CARRY((!\PulseGenerator|Add0~5\) # (!\PulseGenerator|s_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PulseGenerator|s_cnt\(3),
	datad => VCC,
	cin => \PulseGenerator|Add0~5\,
	combout => \PulseGenerator|Add0~6_combout\,
	cout => \PulseGenerator|Add0~7\);

-- Location: FF_X77_Y36_N15
\PulseGenerator|s_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGenerator|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGenerator|s_cnt\(3));

-- Location: LCCOMB_X77_Y36_N16
\PulseGenerator|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|Add0~8_combout\ = (\PulseGenerator|s_cnt\(4) & (\PulseGenerator|Add0~7\ $ (GND))) # (!\PulseGenerator|s_cnt\(4) & (!\PulseGenerator|Add0~7\ & VCC))
-- \PulseGenerator|Add0~9\ = CARRY((\PulseGenerator|s_cnt\(4) & !\PulseGenerator|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PulseGenerator|s_cnt\(4),
	datad => VCC,
	cin => \PulseGenerator|Add0~7\,
	combout => \PulseGenerator|Add0~8_combout\,
	cout => \PulseGenerator|Add0~9\);

-- Location: FF_X77_Y36_N17
\PulseGenerator|s_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGenerator|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGenerator|s_cnt\(4));

-- Location: LCCOMB_X77_Y36_N18
\PulseGenerator|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|Add0~10_combout\ = (\PulseGenerator|s_cnt\(5) & (!\PulseGenerator|Add0~9\)) # (!\PulseGenerator|s_cnt\(5) & ((\PulseGenerator|Add0~9\) # (GND)))
-- \PulseGenerator|Add0~11\ = CARRY((!\PulseGenerator|Add0~9\) # (!\PulseGenerator|s_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PulseGenerator|s_cnt\(5),
	datad => VCC,
	cin => \PulseGenerator|Add0~9\,
	combout => \PulseGenerator|Add0~10_combout\,
	cout => \PulseGenerator|Add0~11\);

-- Location: FF_X77_Y36_N19
\PulseGenerator|s_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGenerator|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGenerator|s_cnt\(5));

-- Location: LCCOMB_X77_Y36_N20
\PulseGenerator|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|Add0~12_combout\ = (\PulseGenerator|s_cnt\(6) & (\PulseGenerator|Add0~11\ $ (GND))) # (!\PulseGenerator|s_cnt\(6) & (!\PulseGenerator|Add0~11\ & VCC))
-- \PulseGenerator|Add0~13\ = CARRY((\PulseGenerator|s_cnt\(6) & !\PulseGenerator|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PulseGenerator|s_cnt\(6),
	datad => VCC,
	cin => \PulseGenerator|Add0~11\,
	combout => \PulseGenerator|Add0~12_combout\,
	cout => \PulseGenerator|Add0~13\);

-- Location: LCCOMB_X77_Y36_N2
\PulseGenerator|s_cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|s_cnt~5_combout\ = (\PulseGenerator|Add0~12_combout\ & !\PulseGenerator|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PulseGenerator|Add0~12_combout\,
	datad => \PulseGenerator|Equal0~7_combout\,
	combout => \PulseGenerator|s_cnt~5_combout\);

-- Location: FF_X77_Y36_N3
\PulseGenerator|s_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGenerator|s_cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGenerator|s_cnt\(6));

-- Location: LCCOMB_X77_Y36_N22
\PulseGenerator|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|Add0~14_combout\ = (\PulseGenerator|s_cnt\(7) & (!\PulseGenerator|Add0~13\)) # (!\PulseGenerator|s_cnt\(7) & ((\PulseGenerator|Add0~13\) # (GND)))
-- \PulseGenerator|Add0~15\ = CARRY((!\PulseGenerator|Add0~13\) # (!\PulseGenerator|s_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGenerator|s_cnt\(7),
	datad => VCC,
	cin => \PulseGenerator|Add0~13\,
	combout => \PulseGenerator|Add0~14_combout\,
	cout => \PulseGenerator|Add0~15\);

-- Location: FF_X77_Y36_N23
\PulseGenerator|s_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGenerator|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGenerator|s_cnt\(7));

-- Location: LCCOMB_X77_Y36_N24
\PulseGenerator|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|Add0~16_combout\ = (\PulseGenerator|s_cnt\(8) & (\PulseGenerator|Add0~15\ $ (GND))) # (!\PulseGenerator|s_cnt\(8) & (!\PulseGenerator|Add0~15\ & VCC))
-- \PulseGenerator|Add0~17\ = CARRY((\PulseGenerator|s_cnt\(8) & !\PulseGenerator|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PulseGenerator|s_cnt\(8),
	datad => VCC,
	cin => \PulseGenerator|Add0~15\,
	combout => \PulseGenerator|Add0~16_combout\,
	cout => \PulseGenerator|Add0~17\);

-- Location: FF_X77_Y36_N25
\PulseGenerator|s_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGenerator|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGenerator|s_cnt\(8));

-- Location: LCCOMB_X77_Y36_N26
\PulseGenerator|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|Add0~18_combout\ = (\PulseGenerator|s_cnt\(9) & (!\PulseGenerator|Add0~17\)) # (!\PulseGenerator|s_cnt\(9) & ((\PulseGenerator|Add0~17\) # (GND)))
-- \PulseGenerator|Add0~19\ = CARRY((!\PulseGenerator|Add0~17\) # (!\PulseGenerator|s_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGenerator|s_cnt\(9),
	datad => VCC,
	cin => \PulseGenerator|Add0~17\,
	combout => \PulseGenerator|Add0~18_combout\,
	cout => \PulseGenerator|Add0~19\);

-- Location: FF_X77_Y36_N27
\PulseGenerator|s_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGenerator|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGenerator|s_cnt\(9));

-- Location: LCCOMB_X77_Y36_N28
\PulseGenerator|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|Add0~20_combout\ = (\PulseGenerator|s_cnt\(10) & (\PulseGenerator|Add0~19\ $ (GND))) # (!\PulseGenerator|s_cnt\(10) & (!\PulseGenerator|Add0~19\ & VCC))
-- \PulseGenerator|Add0~21\ = CARRY((\PulseGenerator|s_cnt\(10) & !\PulseGenerator|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PulseGenerator|s_cnt\(10),
	datad => VCC,
	cin => \PulseGenerator|Add0~19\,
	combout => \PulseGenerator|Add0~20_combout\,
	cout => \PulseGenerator|Add0~21\);

-- Location: FF_X77_Y36_N29
\PulseGenerator|s_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGenerator|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGenerator|s_cnt\(10));

-- Location: LCCOMB_X77_Y36_N30
\PulseGenerator|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|Add0~22_combout\ = (\PulseGenerator|s_cnt\(11) & (!\PulseGenerator|Add0~21\)) # (!\PulseGenerator|s_cnt\(11) & ((\PulseGenerator|Add0~21\) # (GND)))
-- \PulseGenerator|Add0~23\ = CARRY((!\PulseGenerator|Add0~21\) # (!\PulseGenerator|s_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PulseGenerator|s_cnt\(11),
	datad => VCC,
	cin => \PulseGenerator|Add0~21\,
	combout => \PulseGenerator|Add0~22_combout\,
	cout => \PulseGenerator|Add0~23\);

-- Location: LCCOMB_X77_Y36_N0
\PulseGenerator|s_cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|s_cnt~4_combout\ = (\PulseGenerator|Add0~22_combout\ & !\PulseGenerator|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PulseGenerator|Add0~22_combout\,
	datad => \PulseGenerator|Equal0~7_combout\,
	combout => \PulseGenerator|s_cnt~4_combout\);

-- Location: FF_X77_Y36_N1
\PulseGenerator|s_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGenerator|s_cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGenerator|s_cnt\(11));

-- Location: LCCOMB_X77_Y35_N0
\PulseGenerator|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|Add0~24_combout\ = (\PulseGenerator|s_cnt\(12) & (\PulseGenerator|Add0~23\ $ (GND))) # (!\PulseGenerator|s_cnt\(12) & (!\PulseGenerator|Add0~23\ & VCC))
-- \PulseGenerator|Add0~25\ = CARRY((\PulseGenerator|s_cnt\(12) & !\PulseGenerator|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGenerator|s_cnt\(12),
	datad => VCC,
	cin => \PulseGenerator|Add0~23\,
	combout => \PulseGenerator|Add0~24_combout\,
	cout => \PulseGenerator|Add0~25\);

-- Location: LCCOMB_X76_Y35_N12
\PulseGenerator|s_cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|s_cnt~3_combout\ = (!\PulseGenerator|Equal0~7_combout\ & \PulseGenerator|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGenerator|Equal0~7_combout\,
	datac => \PulseGenerator|Add0~24_combout\,
	combout => \PulseGenerator|s_cnt~3_combout\);

-- Location: FF_X76_Y35_N13
\PulseGenerator|s_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGenerator|s_cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGenerator|s_cnt\(12));

-- Location: LCCOMB_X77_Y35_N2
\PulseGenerator|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|Add0~26_combout\ = (\PulseGenerator|s_cnt\(13) & (!\PulseGenerator|Add0~25\)) # (!\PulseGenerator|s_cnt\(13) & ((\PulseGenerator|Add0~25\) # (GND)))
-- \PulseGenerator|Add0~27\ = CARRY((!\PulseGenerator|Add0~25\) # (!\PulseGenerator|s_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PulseGenerator|s_cnt\(13),
	datad => VCC,
	cin => \PulseGenerator|Add0~25\,
	combout => \PulseGenerator|Add0~26_combout\,
	cout => \PulseGenerator|Add0~27\);

-- Location: LCCOMB_X76_Y35_N20
\PulseGenerator|s_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|s_cnt~2_combout\ = (!\PulseGenerator|Equal0~7_combout\ & \PulseGenerator|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PulseGenerator|Equal0~7_combout\,
	datad => \PulseGenerator|Add0~26_combout\,
	combout => \PulseGenerator|s_cnt~2_combout\);

-- Location: FF_X76_Y35_N21
\PulseGenerator|s_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGenerator|s_cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGenerator|s_cnt\(13));

-- Location: LCCOMB_X77_Y35_N4
\PulseGenerator|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|Add0~28_combout\ = (\PulseGenerator|s_cnt\(14) & (\PulseGenerator|Add0~27\ $ (GND))) # (!\PulseGenerator|s_cnt\(14) & (!\PulseGenerator|Add0~27\ & VCC))
-- \PulseGenerator|Add0~29\ = CARRY((\PulseGenerator|s_cnt\(14) & !\PulseGenerator|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGenerator|s_cnt\(14),
	datad => VCC,
	cin => \PulseGenerator|Add0~27\,
	combout => \PulseGenerator|Add0~28_combout\,
	cout => \PulseGenerator|Add0~29\);

-- Location: LCCOMB_X76_Y35_N2
\PulseGenerator|s_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|s_cnt~1_combout\ = (!\PulseGenerator|Equal0~7_combout\ & \PulseGenerator|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PulseGenerator|Equal0~7_combout\,
	datad => \PulseGenerator|Add0~28_combout\,
	combout => \PulseGenerator|s_cnt~1_combout\);

-- Location: FF_X76_Y35_N3
\PulseGenerator|s_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGenerator|s_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGenerator|s_cnt\(14));

-- Location: LCCOMB_X77_Y35_N6
\PulseGenerator|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|Add0~30_combout\ = (\PulseGenerator|s_cnt\(15) & (!\PulseGenerator|Add0~29\)) # (!\PulseGenerator|s_cnt\(15) & ((\PulseGenerator|Add0~29\) # (GND)))
-- \PulseGenerator|Add0~31\ = CARRY((!\PulseGenerator|Add0~29\) # (!\PulseGenerator|s_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGenerator|s_cnt\(15),
	datad => VCC,
	cin => \PulseGenerator|Add0~29\,
	combout => \PulseGenerator|Add0~30_combout\,
	cout => \PulseGenerator|Add0~31\);

-- Location: FF_X77_Y35_N7
\PulseGenerator|s_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGenerator|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGenerator|s_cnt\(15));

-- Location: LCCOMB_X77_Y35_N8
\PulseGenerator|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|Add0~32_combout\ = (\PulseGenerator|s_cnt\(16) & (\PulseGenerator|Add0~31\ $ (GND))) # (!\PulseGenerator|s_cnt\(16) & (!\PulseGenerator|Add0~31\ & VCC))
-- \PulseGenerator|Add0~33\ = CARRY((\PulseGenerator|s_cnt\(16) & !\PulseGenerator|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGenerator|s_cnt\(16),
	datad => VCC,
	cin => \PulseGenerator|Add0~31\,
	combout => \PulseGenerator|Add0~32_combout\,
	cout => \PulseGenerator|Add0~33\);

-- Location: LCCOMB_X77_Y35_N30
\PulseGenerator|s_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|s_cnt~0_combout\ = (\PulseGenerator|Add0~32_combout\ & !\PulseGenerator|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PulseGenerator|Add0~32_combout\,
	datad => \PulseGenerator|Equal0~7_combout\,
	combout => \PulseGenerator|s_cnt~0_combout\);

-- Location: FF_X77_Y35_N31
\PulseGenerator|s_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGenerator|s_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGenerator|s_cnt\(16));

-- Location: LCCOMB_X77_Y35_N10
\PulseGenerator|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|Add0~34_combout\ = (\PulseGenerator|s_cnt\(17) & (!\PulseGenerator|Add0~33\)) # (!\PulseGenerator|s_cnt\(17) & ((\PulseGenerator|Add0~33\) # (GND)))
-- \PulseGenerator|Add0~35\ = CARRY((!\PulseGenerator|Add0~33\) # (!\PulseGenerator|s_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGenerator|s_cnt\(17),
	datad => VCC,
	cin => \PulseGenerator|Add0~33\,
	combout => \PulseGenerator|Add0~34_combout\,
	cout => \PulseGenerator|Add0~35\);

-- Location: FF_X77_Y35_N11
\PulseGenerator|s_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGenerator|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGenerator|s_cnt\(17));

-- Location: LCCOMB_X77_Y35_N12
\PulseGenerator|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|Add0~36_combout\ = (\PulseGenerator|s_cnt\(18) & (\PulseGenerator|Add0~35\ $ (GND))) # (!\PulseGenerator|s_cnt\(18) & (!\PulseGenerator|Add0~35\ & VCC))
-- \PulseGenerator|Add0~37\ = CARRY((\PulseGenerator|s_cnt\(18) & !\PulseGenerator|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PulseGenerator|s_cnt\(18),
	datad => VCC,
	cin => \PulseGenerator|Add0~35\,
	combout => \PulseGenerator|Add0~36_combout\,
	cout => \PulseGenerator|Add0~37\);

-- Location: LCCOMB_X77_Y35_N28
\PulseGenerator|s_cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|s_cnt~6_combout\ = (!\PulseGenerator|Equal0~7_combout\ & \PulseGenerator|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PulseGenerator|Equal0~7_combout\,
	datad => \PulseGenerator|Add0~36_combout\,
	combout => \PulseGenerator|s_cnt~6_combout\);

-- Location: FF_X77_Y35_N29
\PulseGenerator|s_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGenerator|s_cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGenerator|s_cnt\(18));

-- Location: LCCOMB_X77_Y35_N14
\PulseGenerator|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|Add0~38_combout\ = (\PulseGenerator|s_cnt\(19) & (!\PulseGenerator|Add0~37\)) # (!\PulseGenerator|s_cnt\(19) & ((\PulseGenerator|Add0~37\) # (GND)))
-- \PulseGenerator|Add0~39\ = CARRY((!\PulseGenerator|Add0~37\) # (!\PulseGenerator|s_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGenerator|s_cnt\(19),
	datad => VCC,
	cin => \PulseGenerator|Add0~37\,
	combout => \PulseGenerator|Add0~38_combout\,
	cout => \PulseGenerator|Add0~39\);

-- Location: LCCOMB_X76_Y35_N10
\PulseGenerator|s_cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|s_cnt~7_combout\ = (!\PulseGenerator|Equal0~7_combout\ & \PulseGenerator|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGenerator|Equal0~7_combout\,
	datac => \PulseGenerator|Add0~38_combout\,
	combout => \PulseGenerator|s_cnt~7_combout\);

-- Location: FF_X76_Y35_N11
\PulseGenerator|s_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGenerator|s_cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGenerator|s_cnt\(19));

-- Location: LCCOMB_X77_Y35_N16
\PulseGenerator|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|Add0~40_combout\ = (\PulseGenerator|s_cnt\(20) & (\PulseGenerator|Add0~39\ $ (GND))) # (!\PulseGenerator|s_cnt\(20) & (!\PulseGenerator|Add0~39\ & VCC))
-- \PulseGenerator|Add0~41\ = CARRY((\PulseGenerator|s_cnt\(20) & !\PulseGenerator|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGenerator|s_cnt\(20),
	datad => VCC,
	cin => \PulseGenerator|Add0~39\,
	combout => \PulseGenerator|Add0~40_combout\,
	cout => \PulseGenerator|Add0~41\);

-- Location: LCCOMB_X76_Y35_N16
\PulseGenerator|s_cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|s_cnt~9_combout\ = (!\PulseGenerator|Equal0~7_combout\ & \PulseGenerator|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PulseGenerator|Equal0~7_combout\,
	datad => \PulseGenerator|Add0~40_combout\,
	combout => \PulseGenerator|s_cnt~9_combout\);

-- Location: FF_X76_Y35_N17
\PulseGenerator|s_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGenerator|s_cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGenerator|s_cnt\(20));

-- Location: LCCOMB_X77_Y35_N18
\PulseGenerator|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|Add0~42_combout\ = (\PulseGenerator|s_cnt\(21) & (!\PulseGenerator|Add0~41\)) # (!\PulseGenerator|s_cnt\(21) & ((\PulseGenerator|Add0~41\) # (GND)))
-- \PulseGenerator|Add0~43\ = CARRY((!\PulseGenerator|Add0~41\) # (!\PulseGenerator|s_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGenerator|s_cnt\(21),
	datad => VCC,
	cin => \PulseGenerator|Add0~41\,
	combout => \PulseGenerator|Add0~42_combout\,
	cout => \PulseGenerator|Add0~43\);

-- Location: LCCOMB_X77_Y35_N26
\PulseGenerator|s_cnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|s_cnt~10_combout\ = (!\PulseGenerator|Equal0~7_combout\ & \PulseGenerator|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PulseGenerator|Equal0~7_combout\,
	datad => \PulseGenerator|Add0~42_combout\,
	combout => \PulseGenerator|s_cnt~10_combout\);

-- Location: FF_X77_Y35_N27
\PulseGenerator|s_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGenerator|s_cnt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGenerator|s_cnt\(21));

-- Location: LCCOMB_X77_Y35_N20
\PulseGenerator|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|Add0~44_combout\ = (\PulseGenerator|s_cnt\(22) & (\PulseGenerator|Add0~43\ $ (GND))) # (!\PulseGenerator|s_cnt\(22) & (!\PulseGenerator|Add0~43\ & VCC))
-- \PulseGenerator|Add0~45\ = CARRY((\PulseGenerator|s_cnt\(22) & !\PulseGenerator|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PulseGenerator|s_cnt\(22),
	datad => VCC,
	cin => \PulseGenerator|Add0~43\,
	combout => \PulseGenerator|Add0~44_combout\,
	cout => \PulseGenerator|Add0~45\);

-- Location: LCCOMB_X76_Y35_N6
\PulseGenerator|s_cnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|s_cnt~11_combout\ = (!\PulseGenerator|Equal0~7_combout\ & \PulseGenerator|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGenerator|Equal0~7_combout\,
	datac => \PulseGenerator|Add0~44_combout\,
	combout => \PulseGenerator|s_cnt~11_combout\);

-- Location: FF_X76_Y35_N7
\PulseGenerator|s_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGenerator|s_cnt~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGenerator|s_cnt\(22));

-- Location: LCCOMB_X77_Y35_N22
\PulseGenerator|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|Add0~46_combout\ = (\PulseGenerator|s_cnt\(23) & (!\PulseGenerator|Add0~45\)) # (!\PulseGenerator|s_cnt\(23) & ((\PulseGenerator|Add0~45\) # (GND)))
-- \PulseGenerator|Add0~47\ = CARRY((!\PulseGenerator|Add0~45\) # (!\PulseGenerator|s_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGenerator|s_cnt\(23),
	datad => VCC,
	cin => \PulseGenerator|Add0~45\,
	combout => \PulseGenerator|Add0~46_combout\,
	cout => \PulseGenerator|Add0~47\);

-- Location: FF_X77_Y35_N23
\PulseGenerator|s_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGenerator|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGenerator|s_cnt\(23));

-- Location: LCCOMB_X77_Y35_N24
\PulseGenerator|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|Add0~48_combout\ = \PulseGenerator|s_cnt\(24) $ (!\PulseGenerator|Add0~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGenerator|s_cnt\(24),
	cin => \PulseGenerator|Add0~47\,
	combout => \PulseGenerator|Add0~48_combout\);

-- Location: LCCOMB_X76_Y35_N26
\PulseGenerator|s_cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|s_cnt~8_combout\ = (!\PulseGenerator|Equal0~7_combout\ & \PulseGenerator|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PulseGenerator|Equal0~7_combout\,
	datad => \PulseGenerator|Add0~48_combout\,
	combout => \PulseGenerator|s_cnt~8_combout\);

-- Location: FF_X76_Y35_N27
\PulseGenerator|s_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGenerator|s_cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGenerator|s_cnt\(24));

-- Location: LCCOMB_X76_Y35_N28
\PulseGenerator|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|Equal0~6_combout\ = (\PulseGenerator|s_cnt\(22) & (\PulseGenerator|s_cnt\(20) & (!\PulseGenerator|s_cnt\(23) & \PulseGenerator|s_cnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGenerator|s_cnt\(22),
	datab => \PulseGenerator|s_cnt\(20),
	datac => \PulseGenerator|s_cnt\(23),
	datad => \PulseGenerator|s_cnt\(21),
	combout => \PulseGenerator|Equal0~6_combout\);

-- Location: LCCOMB_X76_Y35_N4
\PulseGenerator|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|Equal0~5_combout\ = (\PulseGenerator|s_cnt\(19) & (\PulseGenerator|s_cnt\(18) & (!\PulseGenerator|s_cnt\(17) & \PulseGenerator|s_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGenerator|s_cnt\(19),
	datab => \PulseGenerator|s_cnt\(18),
	datac => \PulseGenerator|s_cnt\(17),
	datad => \PulseGenerator|s_cnt\(0),
	combout => \PulseGenerator|Equal0~5_combout\);

-- Location: LCCOMB_X76_Y35_N30
\PulseGenerator|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|Equal0~1_combout\ = (\PulseGenerator|s_cnt\(12) & (!\PulseGenerator|s_cnt\(9) & (\PulseGenerator|s_cnt\(11) & !\PulseGenerator|s_cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGenerator|s_cnt\(12),
	datab => \PulseGenerator|s_cnt\(9),
	datac => \PulseGenerator|s_cnt\(11),
	datad => \PulseGenerator|s_cnt\(10),
	combout => \PulseGenerator|Equal0~1_combout\);

-- Location: LCCOMB_X76_Y35_N18
\PulseGenerator|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|Equal0~0_combout\ = (\PulseGenerator|s_cnt\(13) & (\PulseGenerator|s_cnt\(14) & (\PulseGenerator|s_cnt\(16) & !\PulseGenerator|s_cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGenerator|s_cnt\(13),
	datab => \PulseGenerator|s_cnt\(14),
	datac => \PulseGenerator|s_cnt\(16),
	datad => \PulseGenerator|s_cnt\(15),
	combout => \PulseGenerator|Equal0~0_combout\);

-- Location: LCCOMB_X77_Y36_N6
\PulseGenerator|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|Equal0~3_combout\ = (\PulseGenerator|s_cnt\(1) & (\PulseGenerator|s_cnt\(4) & (\PulseGenerator|s_cnt\(3) & \PulseGenerator|s_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGenerator|s_cnt\(1),
	datab => \PulseGenerator|s_cnt\(4),
	datac => \PulseGenerator|s_cnt\(3),
	datad => \PulseGenerator|s_cnt\(2),
	combout => \PulseGenerator|Equal0~3_combout\);

-- Location: LCCOMB_X77_Y36_N4
\PulseGenerator|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|Equal0~2_combout\ = (!\PulseGenerator|s_cnt\(7) & (!\PulseGenerator|s_cnt\(6) & (\PulseGenerator|s_cnt\(5) & !\PulseGenerator|s_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGenerator|s_cnt\(7),
	datab => \PulseGenerator|s_cnt\(6),
	datac => \PulseGenerator|s_cnt\(5),
	datad => \PulseGenerator|s_cnt\(8),
	combout => \PulseGenerator|Equal0~2_combout\);

-- Location: LCCOMB_X76_Y35_N24
\PulseGenerator|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|Equal0~4_combout\ = (\PulseGenerator|Equal0~1_combout\ & (\PulseGenerator|Equal0~0_combout\ & (\PulseGenerator|Equal0~3_combout\ & \PulseGenerator|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGenerator|Equal0~1_combout\,
	datab => \PulseGenerator|Equal0~0_combout\,
	datac => \PulseGenerator|Equal0~3_combout\,
	datad => \PulseGenerator|Equal0~2_combout\,
	combout => \PulseGenerator|Equal0~4_combout\);

-- Location: LCCOMB_X76_Y35_N22
\PulseGenerator|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|Equal0~7_combout\ = (\PulseGenerator|s_cnt\(24) & (\PulseGenerator|Equal0~6_combout\ & (\PulseGenerator|Equal0~5_combout\ & \PulseGenerator|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGenerator|s_cnt\(24),
	datab => \PulseGenerator|Equal0~6_combout\,
	datac => \PulseGenerator|Equal0~5_combout\,
	datad => \PulseGenerator|Equal0~4_combout\,
	combout => \PulseGenerator|Equal0~7_combout\);

-- Location: LCCOMB_X76_Y35_N8
\PulseGenerator|pulseOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGenerator|pulseOut~feeder_combout\ = \PulseGenerator|Equal0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PulseGenerator|Equal0~7_combout\,
	combout => \PulseGenerator|pulseOut~feeder_combout\);

-- Location: FF_X76_Y35_N9
\PulseGenerator|pulseOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGenerator|pulseOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGenerator|pulseOut~q\);

-- Location: FF_X107_Y24_N5
\Counter|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Counter|s_count[0]~8_combout\,
	sclr => \ALT_INV_KEY[2]~input_o\,
	ena => \PulseGenerator|pulseOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter|s_count\(0));

-- Location: LCCOMB_X107_Y24_N6
\Counter|s_count[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|s_count[1]~10_combout\ = (\Counter|s_count\(1) & (!\Counter|s_count[0]~9\)) # (!\Counter|s_count\(1) & ((\Counter|s_count[0]~9\) # (GND)))
-- \Counter|s_count[1]~11\ = CARRY((!\Counter|s_count[0]~9\) # (!\Counter|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(1),
	datad => VCC,
	cin => \Counter|s_count[0]~9\,
	combout => \Counter|s_count[1]~10_combout\,
	cout => \Counter|s_count[1]~11\);

-- Location: FF_X107_Y24_N7
\Counter|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Counter|s_count[1]~10_combout\,
	sclr => \ALT_INV_KEY[2]~input_o\,
	ena => \PulseGenerator|pulseOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter|s_count\(1));

-- Location: LCCOMB_X107_Y24_N8
\Counter|s_count[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|s_count[2]~12_combout\ = (\Counter|s_count\(2) & (\Counter|s_count[1]~11\ $ (GND))) # (!\Counter|s_count\(2) & (!\Counter|s_count[1]~11\ & VCC))
-- \Counter|s_count[2]~13\ = CARRY((\Counter|s_count\(2) & !\Counter|s_count[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Counter|s_count\(2),
	datad => VCC,
	cin => \Counter|s_count[1]~11\,
	combout => \Counter|s_count[2]~12_combout\,
	cout => \Counter|s_count[2]~13\);

-- Location: FF_X107_Y24_N9
\Counter|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Counter|s_count[2]~12_combout\,
	sclr => \ALT_INV_KEY[2]~input_o\,
	ena => \PulseGenerator|pulseOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter|s_count\(2));

-- Location: LCCOMB_X107_Y24_N10
\Counter|s_count[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|s_count[3]~14_combout\ = (\Counter|s_count\(3) & (!\Counter|s_count[2]~13\)) # (!\Counter|s_count\(3) & ((\Counter|s_count[2]~13\) # (GND)))
-- \Counter|s_count[3]~15\ = CARRY((!\Counter|s_count[2]~13\) # (!\Counter|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(3),
	datad => VCC,
	cin => \Counter|s_count[2]~13\,
	combout => \Counter|s_count[3]~14_combout\,
	cout => \Counter|s_count[3]~15\);

-- Location: FF_X107_Y24_N11
\Counter|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Counter|s_count[3]~14_combout\,
	sclr => \ALT_INV_KEY[2]~input_o\,
	ena => \PulseGenerator|pulseOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter|s_count\(3));

-- Location: LCCOMB_X107_Y24_N12
\Counter|s_count[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|s_count[4]~16_combout\ = (\Counter|s_count\(4) & (\Counter|s_count[3]~15\ $ (GND))) # (!\Counter|s_count\(4) & (!\Counter|s_count[3]~15\ & VCC))
-- \Counter|s_count[4]~17\ = CARRY((\Counter|s_count\(4) & !\Counter|s_count[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(4),
	datad => VCC,
	cin => \Counter|s_count[3]~15\,
	combout => \Counter|s_count[4]~16_combout\,
	cout => \Counter|s_count[4]~17\);

-- Location: FF_X107_Y24_N13
\Counter|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Counter|s_count[4]~16_combout\,
	sclr => \ALT_INV_KEY[2]~input_o\,
	ena => \PulseGenerator|pulseOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter|s_count\(4));

-- Location: LCCOMB_X107_Y24_N14
\Counter|s_count[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|s_count[5]~18_combout\ = (\Counter|s_count\(5) & (!\Counter|s_count[4]~17\)) # (!\Counter|s_count\(5) & ((\Counter|s_count[4]~17\) # (GND)))
-- \Counter|s_count[5]~19\ = CARRY((!\Counter|s_count[4]~17\) # (!\Counter|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Counter|s_count\(5),
	datad => VCC,
	cin => \Counter|s_count[4]~17\,
	combout => \Counter|s_count[5]~18_combout\,
	cout => \Counter|s_count[5]~19\);

-- Location: FF_X107_Y24_N15
\Counter|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Counter|s_count[5]~18_combout\,
	sclr => \ALT_INV_KEY[2]~input_o\,
	ena => \PulseGenerator|pulseOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter|s_count\(5));

-- Location: LCCOMB_X107_Y24_N16
\Counter|s_count[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|s_count[6]~20_combout\ = (\Counter|s_count\(6) & (\Counter|s_count[5]~19\ $ (GND))) # (!\Counter|s_count\(6) & (!\Counter|s_count[5]~19\ & VCC))
-- \Counter|s_count[6]~21\ = CARRY((\Counter|s_count\(6) & !\Counter|s_count[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Counter|s_count\(6),
	datad => VCC,
	cin => \Counter|s_count[5]~19\,
	combout => \Counter|s_count[6]~20_combout\,
	cout => \Counter|s_count[6]~21\);

-- Location: FF_X107_Y24_N17
\Counter|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Counter|s_count[6]~20_combout\,
	sclr => \ALT_INV_KEY[2]~input_o\,
	ena => \PulseGenerator|pulseOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter|s_count\(6));

-- Location: LCCOMB_X107_Y24_N18
\Counter|s_count[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|s_count[7]~22_combout\ = \Counter|s_count[6]~21\ $ (\Counter|s_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Counter|s_count\(7),
	cin => \Counter|s_count[6]~21\,
	combout => \Counter|s_count[7]~22_combout\);

-- Location: FF_X107_Y24_N19
\Counter|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Counter|s_count[7]~22_combout\,
	sclr => \ALT_INV_KEY[2]~input_o\,
	ena => \PulseGenerator|pulseOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter|s_count\(7));

-- Location: LCCOMB_X108_Y24_N16
\ROM|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux0~3_combout\ = (\Counter|s_count\(3) & ((\Counter|s_count\(2)) # ((\Counter|s_count\(0) & \Counter|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(2),
	datab => \Counter|s_count\(0),
	datac => \Counter|s_count\(1),
	datad => \Counter|s_count\(3),
	combout => \ROM|Mux0~3_combout\);

-- Location: LCCOMB_X109_Y24_N18
\ROM|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux0~2_combout\ = (\Counter|s_count\(3)) # ((\Counter|s_count\(2)) # ((\Counter|s_count\(1) & \Counter|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(1),
	datab => \Counter|s_count\(0),
	datac => \Counter|s_count\(3),
	datad => \Counter|s_count\(2),
	combout => \ROM|Mux0~2_combout\);

-- Location: LCCOMB_X109_Y24_N4
\ROM|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux0~4_combout\ = (\Counter|s_count\(4) & ((\Counter|s_count\(7) & ((\ROM|Mux0~2_combout\))) # (!\Counter|s_count\(7) & (\ROM|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(4),
	datab => \Counter|s_count\(7),
	datac => \ROM|Mux0~3_combout\,
	datad => \ROM|Mux0~2_combout\,
	combout => \ROM|Mux0~4_combout\);

-- Location: LCCOMB_X109_Y24_N24
\ROM|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux0~0_combout\ = (\Counter|s_count\(7) & ((\Counter|s_count\(3)) # ((\Counter|s_count\(2) & \Counter|s_count\(1))))) # (!\Counter|s_count\(7) & (\Counter|s_count\(2) & (\Counter|s_count\(3) & \Counter|s_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(7),
	datab => \Counter|s_count\(2),
	datac => \Counter|s_count\(3),
	datad => \Counter|s_count\(1),
	combout => \ROM|Mux0~0_combout\);

-- Location: LCCOMB_X110_Y24_N28
\ROM|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux0~1_combout\ = (!\Counter|s_count\(6) & (!\Counter|s_count\(5) & ((!\ROM|Mux0~0_combout\) # (!\Counter|s_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(4),
	datab => \Counter|s_count\(6),
	datac => \Counter|s_count\(5),
	datad => \ROM|Mux0~0_combout\,
	combout => \ROM|Mux0~1_combout\);

-- Location: LCCOMB_X110_Y24_N30
\ROM|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux0~5_combout\ = (\ROM|Mux0~1_combout\) # ((\Counter|s_count\(6) & ((\Counter|s_count\(5)) # (\ROM|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(5),
	datab => \Counter|s_count\(6),
	datac => \ROM|Mux0~4_combout\,
	datad => \ROM|Mux0~1_combout\,
	combout => \ROM|Mux0~5_combout\);

-- Location: LCCOMB_X107_Y24_N28
\d2|decOut_n[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|decOut_n[0]~11_combout\ = (\Counter|s_count\(5) & (((!\Counter|s_count\(2) & !\Counter|s_count\(6))) # (!\Counter|s_count\(7)))) # (!\Counter|s_count\(5) & (!\Counter|s_count\(7) & ((!\Counter|s_count\(6)) # (!\Counter|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(5),
	datab => \Counter|s_count\(7),
	datac => \Counter|s_count\(2),
	datad => \Counter|s_count\(6),
	combout => \d2|decOut_n[0]~11_combout\);

-- Location: LCCOMB_X107_Y24_N22
\d2|decOut_n[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|decOut_n[0]~12_combout\ = (\d2|decOut_n[0]~11_combout\ & ((\Counter|s_count\(4) & (\Counter|s_count\(5) & \Counter|s_count\(3))) # (!\Counter|s_count\(4) & (!\Counter|s_count\(5) & !\Counter|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(4),
	datab => \d2|decOut_n[0]~11_combout\,
	datac => \Counter|s_count\(5),
	datad => \Counter|s_count\(3),
	combout => \d2|decOut_n[0]~12_combout\);

-- Location: LCCOMB_X107_Y24_N20
\d2|decOut_n[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|decOut_n[0]~4_combout\ = (\Counter|s_count\(6) & ((\Counter|s_count\(2)) # ((!\Counter|s_count\(4) & \Counter|s_count\(1))))) # (!\Counter|s_count\(6) & (!\Counter|s_count\(4) & (\Counter|s_count\(2) & \Counter|s_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(4),
	datab => \Counter|s_count\(6),
	datac => \Counter|s_count\(2),
	datad => \Counter|s_count\(1),
	combout => \d2|decOut_n[0]~4_combout\);

-- Location: LCCOMB_X107_Y24_N30
\d2|decOut_n[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|decOut_n[0]~5_combout\ = (\Counter|s_count\(4) & (!\d2|decOut_n[0]~4_combout\ & !\Counter|s_count\(7))) # (!\Counter|s_count\(4) & (\d2|decOut_n[0]~4_combout\ & \Counter|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(4),
	datab => \d2|decOut_n[0]~4_combout\,
	datad => \Counter|s_count\(7),
	combout => \d2|decOut_n[0]~5_combout\);

-- Location: LCCOMB_X107_Y24_N24
\ROM|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux5~0_combout\ = (!\Counter|s_count\(4) & (!\Counter|s_count\(7) & (!\Counter|s_count\(2) & !\Counter|s_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(4),
	datab => \Counter|s_count\(7),
	datac => \Counter|s_count\(2),
	datad => \Counter|s_count\(6),
	combout => \ROM|Mux5~0_combout\);

-- Location: LCCOMB_X108_Y24_N26
\d2|decOut_n[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|decOut_n[0]~6_combout\ = (\Counter|s_count\(6) & ((\Counter|s_count\(0)) # (!\Counter|s_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter|s_count\(0),
	datac => \Counter|s_count\(6),
	datad => \Counter|s_count\(7),
	combout => \d2|decOut_n[0]~6_combout\);

-- Location: LCCOMB_X108_Y24_N4
\d2|decOut_n[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|decOut_n[0]~7_combout\ = (\Counter|s_count\(2) & ((\Counter|s_count\(7) & ((!\Counter|s_count\(1)) # (!\d2|decOut_n[0]~6_combout\))) # (!\Counter|s_count\(7) & ((\d2|decOut_n[0]~6_combout\) # (\Counter|s_count\(1)))))) # (!\Counter|s_count\(2) & 
-- ((\Counter|s_count\(7)) # ((\d2|decOut_n[0]~6_combout\ & \Counter|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(2),
	datab => \Counter|s_count\(7),
	datac => \d2|decOut_n[0]~6_combout\,
	datad => \Counter|s_count\(1),
	combout => \d2|decOut_n[0]~7_combout\);

-- Location: LCCOMB_X107_Y24_N26
\d2|decOut_n[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|decOut_n[0]~10_combout\ = (\Counter|s_count\(5) & (\Counter|s_count\(4) & ((\d2|decOut_n[0]~7_combout\)))) # (!\Counter|s_count\(5) & (((\ROM|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(4),
	datab => \ROM|Mux5~0_combout\,
	datac => \Counter|s_count\(5),
	datad => \d2|decOut_n[0]~7_combout\,
	combout => \d2|decOut_n[0]~10_combout\);

-- Location: LCCOMB_X107_Y24_N2
\d2|decOut_n[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|decOut_n[0]~8_combout\ = (\Counter|s_count\(3) & (\d2|decOut_n[0]~5_combout\ & (\Counter|s_count\(5)))) # (!\Counter|s_count\(3) & (((\d2|decOut_n[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|decOut_n[0]~5_combout\,
	datab => \Counter|s_count\(5),
	datac => \d2|decOut_n[0]~10_combout\,
	datad => \Counter|s_count\(3),
	combout => \d2|decOut_n[0]~8_combout\);

-- Location: LCCOMB_X107_Y24_N0
\d2|decOut_n[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|decOut_n[0]~9_combout\ = (\d2|decOut_n[0]~8_combout\) # ((\d2|decOut_n[0]~12_combout\ & ((!\Counter|s_count\(1)) # (!\Counter|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|decOut_n[0]~12_combout\,
	datab => \d2|decOut_n[0]~8_combout\,
	datac => \Counter|s_count\(0),
	datad => \Counter|s_count\(1),
	combout => \d2|decOut_n[0]~9_combout\);

-- Location: LCCOMB_X109_Y24_N10
\ROM|Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux1~8_combout\ = (\Counter|s_count\(7) & (\Counter|s_count\(2) & (\Counter|s_count\(3) & \Counter|s_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(7),
	datab => \Counter|s_count\(2),
	datac => \Counter|s_count\(3),
	datad => \Counter|s_count\(1),
	combout => \ROM|Mux1~8_combout\);

-- Location: LCCOMB_X109_Y24_N20
\ROM|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux1~7_combout\ = (!\Counter|s_count\(5) & ((\Counter|s_count\(7) & ((\ROM|Mux0~2_combout\))) # (!\Counter|s_count\(7) & (\ROM|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(7),
	datab => \Counter|s_count\(5),
	datac => \ROM|Mux0~3_combout\,
	datad => \ROM|Mux0~2_combout\,
	combout => \ROM|Mux1~7_combout\);

-- Location: LCCOMB_X109_Y24_N0
\ROM|Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux1~9_combout\ = (\ROM|Mux1~7_combout\) # ((\ROM|Mux1~8_combout\ & (\Counter|s_count\(0) & \Counter|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux1~8_combout\,
	datab => \Counter|s_count\(0),
	datac => \Counter|s_count\(5),
	datad => \ROM|Mux1~7_combout\,
	combout => \ROM|Mux1~9_combout\);

-- Location: LCCOMB_X106_Y24_N8
\ROM|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux1~3_combout\ = (\Counter|s_count\(2) & (\Counter|s_count\(1) & ((\Counter|s_count\(0)) # (\Counter|s_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(0),
	datab => \Counter|s_count\(5),
	datac => \Counter|s_count\(2),
	datad => \Counter|s_count\(1),
	combout => \ROM|Mux1~3_combout\);

-- Location: LCCOMB_X106_Y24_N2
\ROM|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux1~4_combout\ = (\Counter|s_count\(2) & ((\Counter|s_count\(0) & ((\Counter|s_count\(5)) # (\Counter|s_count\(1)))) # (!\Counter|s_count\(0) & (\Counter|s_count\(5) & \Counter|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(0),
	datab => \Counter|s_count\(5),
	datac => \Counter|s_count\(2),
	datad => \Counter|s_count\(1),
	combout => \ROM|Mux1~4_combout\);

-- Location: LCCOMB_X106_Y24_N24
\ROM|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux1~5_combout\ = (\Counter|s_count\(3) & (((\ROM|Mux1~4_combout\) # (\Counter|s_count\(7))))) # (!\Counter|s_count\(3) & (\ROM|Mux1~3_combout\ & ((\Counter|s_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux1~3_combout\,
	datab => \ROM|Mux1~4_combout\,
	datac => \Counter|s_count\(3),
	datad => \Counter|s_count\(7),
	combout => \ROM|Mux1~5_combout\);

-- Location: LCCOMB_X109_Y24_N14
\ROM|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux1~2_combout\ = (\Counter|s_count\(5)) # (!\ROM|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Counter|s_count\(5),
	datad => \ROM|Mux0~0_combout\,
	combout => \ROM|Mux1~2_combout\);

-- Location: LCCOMB_X110_Y24_N8
\ROM|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux1~6_combout\ = (\Counter|s_count\(4) & ((\Counter|s_count\(6)) # ((\ROM|Mux1~2_combout\)))) # (!\Counter|s_count\(4) & (!\Counter|s_count\(6) & (\ROM|Mux1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(4),
	datab => \Counter|s_count\(6),
	datac => \ROM|Mux1~5_combout\,
	datad => \ROM|Mux1~2_combout\,
	combout => \ROM|Mux1~6_combout\);

-- Location: LCCOMB_X109_Y24_N26
\ROM|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux1~0_combout\ = (\Counter|s_count\(2)) # ((\Counter|s_count\(5) & \Counter|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter|s_count\(2),
	datac => \Counter|s_count\(5),
	datad => \Counter|s_count\(1),
	combout => \ROM|Mux1~0_combout\);

-- Location: LCCOMB_X109_Y24_N8
\ROM|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux1~1_combout\ = (\Counter|s_count\(7) & ((\Counter|s_count\(3)) # (\ROM|Mux1~0_combout\))) # (!\Counter|s_count\(7) & (\Counter|s_count\(3) & \ROM|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(7),
	datab => \Counter|s_count\(3),
	datac => \ROM|Mux1~0_combout\,
	combout => \ROM|Mux1~1_combout\);

-- Location: LCCOMB_X110_Y24_N6
\ROM|Mux1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux1~10_combout\ = (\Counter|s_count\(6) & ((\ROM|Mux1~6_combout\ & (\ROM|Mux1~9_combout\)) # (!\ROM|Mux1~6_combout\ & ((!\ROM|Mux1~1_combout\))))) # (!\Counter|s_count\(6) & (((\ROM|Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux1~9_combout\,
	datab => \Counter|s_count\(6),
	datac => \ROM|Mux1~6_combout\,
	datad => \ROM|Mux1~1_combout\,
	combout => \ROM|Mux1~10_combout\);

-- Location: LCCOMB_X108_Y23_N6
\ROM|Mux2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux2~15_combout\ = (\Counter|s_count\(4) & (\Counter|s_count\(5) & ((!\Counter|s_count\(1)) # (!\Counter|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(4),
	datab => \Counter|s_count\(5),
	datac => \Counter|s_count\(0),
	datad => \Counter|s_count\(1),
	combout => \ROM|Mux2~15_combout\);

-- Location: LCCOMB_X108_Y23_N16
\ROM|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux2~0_combout\ = (\Counter|s_count\(4) & \Counter|s_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(4),
	datad => \Counter|s_count\(5),
	combout => \ROM|Mux2~0_combout\);

-- Location: LCCOMB_X108_Y23_N30
\ROM|Mux2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux2~13_combout\ = (\Counter|s_count\(1) & ((\Counter|s_count\(4) & (!\Counter|s_count\(5) & \Counter|s_count\(0))) # (!\Counter|s_count\(4) & (\Counter|s_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(4),
	datab => \Counter|s_count\(5),
	datac => \Counter|s_count\(0),
	datad => \Counter|s_count\(1),
	combout => \ROM|Mux2~13_combout\);

-- Location: LCCOMB_X108_Y23_N20
\ROM|Mux2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux2~12_combout\ = (\Counter|s_count\(5) & (!\Counter|s_count\(4) & ((\Counter|s_count\(0)) # (\Counter|s_count\(1))))) # (!\Counter|s_count\(5) & (\Counter|s_count\(1) & ((\Counter|s_count\(4)) # (\Counter|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(4),
	datab => \Counter|s_count\(5),
	datac => \Counter|s_count\(0),
	datad => \Counter|s_count\(1),
	combout => \ROM|Mux2~12_combout\);

-- Location: LCCOMB_X108_Y23_N28
\ROM|Mux2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux2~14_combout\ = (\Counter|s_count\(2) & (((\Counter|s_count\(3))))) # (!\Counter|s_count\(2) & ((\Counter|s_count\(3) & ((!\ROM|Mux2~12_combout\))) # (!\Counter|s_count\(3) & (\ROM|Mux2~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux2~13_combout\,
	datab => \Counter|s_count\(2),
	datac => \Counter|s_count\(3),
	datad => \ROM|Mux2~12_combout\,
	combout => \ROM|Mux2~14_combout\);

-- Location: LCCOMB_X108_Y23_N0
\ROM|Mux2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux2~16_combout\ = (\Counter|s_count\(2) & ((\ROM|Mux2~14_combout\ & (\ROM|Mux2~15_combout\)) # (!\ROM|Mux2~14_combout\ & ((!\ROM|Mux2~0_combout\))))) # (!\Counter|s_count\(2) & (((\ROM|Mux2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux2~15_combout\,
	datab => \ROM|Mux2~0_combout\,
	datac => \Counter|s_count\(2),
	datad => \ROM|Mux2~14_combout\,
	combout => \ROM|Mux2~16_combout\);

-- Location: LCCOMB_X108_Y23_N8
\ROM|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux2~2_combout\ = (\Counter|s_count\(1)) # ((\Counter|s_count\(4) & \Counter|s_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(4),
	datac => \Counter|s_count\(0),
	datad => \Counter|s_count\(1),
	combout => \ROM|Mux2~2_combout\);

-- Location: LCCOMB_X108_Y23_N12
\ROM|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux2~4_combout\ = (\Counter|s_count\(4) & ((\Counter|s_count\(2)) # ((\ROM|Mux2~2_combout\) # (!\Counter|s_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(4),
	datab => \Counter|s_count\(2),
	datac => \ROM|Mux2~2_combout\,
	datad => \Counter|s_count\(5),
	combout => \ROM|Mux2~4_combout\);

-- Location: LCCOMB_X108_Y23_N18
\ROM|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux2~3_combout\ = (\Counter|s_count\(2) & (((\Counter|s_count\(5))) # (!\Counter|s_count\(4)))) # (!\Counter|s_count\(2) & (((\ROM|Mux2~2_combout\ & \Counter|s_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(4),
	datab => \Counter|s_count\(2),
	datac => \ROM|Mux2~2_combout\,
	datad => \Counter|s_count\(5),
	combout => \ROM|Mux2~3_combout\);

-- Location: LCCOMB_X108_Y23_N10
\ROM|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux2~1_combout\ = \Counter|s_count\(3) $ (((\Counter|s_count\(2)) # ((\Counter|s_count\(0) & \Counter|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(3),
	datab => \Counter|s_count\(2),
	datac => \Counter|s_count\(0),
	datad => \Counter|s_count\(1),
	combout => \ROM|Mux2~1_combout\);

-- Location: LCCOMB_X108_Y23_N22
\ROM|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux2~5_combout\ = (\ROM|Mux2~4_combout\ & (!\ROM|Mux2~3_combout\ & ((!\ROM|Mux2~1_combout\)))) # (!\ROM|Mux2~4_combout\ & (\ROM|Mux2~3_combout\ $ ((!\Counter|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux2~4_combout\,
	datab => \ROM|Mux2~3_combout\,
	datac => \Counter|s_count\(3),
	datad => \ROM|Mux2~1_combout\,
	combout => \ROM|Mux2~5_combout\);

-- Location: LCCOMB_X109_Y24_N12
\ROM|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux2~7_combout\ = (\Counter|s_count\(5) & ((\Counter|s_count\(4)) # ((\Counter|s_count\(0) & !\Counter|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(4),
	datab => \Counter|s_count\(0),
	datac => \Counter|s_count\(5),
	datad => \Counter|s_count\(1),
	combout => \ROM|Mux2~7_combout\);

-- Location: LCCOMB_X109_Y24_N2
\ROM|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux2~6_combout\ = (\Counter|s_count\(0) & ((\Counter|s_count\(5) & (!\Counter|s_count\(4))) # (!\Counter|s_count\(5) & ((\Counter|s_count\(1)))))) # (!\Counter|s_count\(0) & (\Counter|s_count\(1) & (\Counter|s_count\(4) $ (\Counter|s_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(4),
	datab => \Counter|s_count\(0),
	datac => \Counter|s_count\(5),
	datad => \Counter|s_count\(1),
	combout => \ROM|Mux2~6_combout\);

-- Location: LCCOMB_X109_Y24_N30
\ROM|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux2~8_combout\ = (\ROM|Mux2~7_combout\ & ((\Counter|s_count\(2) $ (!\ROM|Mux2~6_combout\)) # (!\Counter|s_count\(3)))) # (!\ROM|Mux2~7_combout\ & (\Counter|s_count\(3) $ (((!\ROM|Mux2~6_combout\) # (!\Counter|s_count\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux2~7_combout\,
	datab => \Counter|s_count\(2),
	datac => \Counter|s_count\(3),
	datad => \ROM|Mux2~6_combout\,
	combout => \ROM|Mux2~8_combout\);

-- Location: LCCOMB_X109_Y24_N16
\ROM|Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux2~9_combout\ = (\Counter|s_count\(1) & (\Counter|s_count\(2) & (\Counter|s_count\(3) $ (\Counter|s_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(1),
	datab => \Counter|s_count\(3),
	datac => \Counter|s_count\(5),
	datad => \Counter|s_count\(2),
	combout => \ROM|Mux2~9_combout\);

-- Location: LCCOMB_X109_Y24_N6
\ROM|Mux2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux2~10_combout\ = (\Counter|s_count\(4) & ((\Counter|s_count\(3) & ((!\ROM|Mux2~9_combout\))) # (!\Counter|s_count\(3) & (\ROM|Mux1~4_combout\)))) # (!\Counter|s_count\(4) & ((\Counter|s_count\(3) & (!\ROM|Mux1~4_combout\)) # (!\Counter|s_count\(3) 
-- & ((\ROM|Mux2~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(4),
	datab => \Counter|s_count\(3),
	datac => \ROM|Mux1~4_combout\,
	datad => \ROM|Mux2~9_combout\,
	combout => \ROM|Mux2~10_combout\);

-- Location: LCCOMB_X109_Y24_N28
\ROM|Mux2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux2~11_combout\ = (\Counter|s_count\(7) & ((\Counter|s_count\(6)) # ((\ROM|Mux2~8_combout\)))) # (!\Counter|s_count\(7) & (!\Counter|s_count\(6) & ((\ROM|Mux2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(7),
	datab => \Counter|s_count\(6),
	datac => \ROM|Mux2~8_combout\,
	datad => \ROM|Mux2~10_combout\,
	combout => \ROM|Mux2~11_combout\);

-- Location: LCCOMB_X108_Y24_N6
\ROM|Mux2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux2~17_combout\ = (\Counter|s_count\(6) & ((\ROM|Mux2~11_combout\ & (\ROM|Mux2~16_combout\)) # (!\ROM|Mux2~11_combout\ & ((\ROM|Mux2~5_combout\))))) # (!\Counter|s_count\(6) & (((\ROM|Mux2~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(6),
	datab => \ROM|Mux2~16_combout\,
	datac => \ROM|Mux2~5_combout\,
	datad => \ROM|Mux2~11_combout\,
	combout => \ROM|Mux2~17_combout\);

-- Location: LCCOMB_X107_Y23_N24
\ROM|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux3~2_combout\ = (\Counter|s_count\(3) & ((\Counter|s_count\(4)) # ((\Counter|s_count\(6) & !\Counter|s_count\(7))))) # (!\Counter|s_count\(3) & (((\Counter|s_count\(7)) # (!\Counter|s_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(6),
	datab => \Counter|s_count\(3),
	datac => \Counter|s_count\(4),
	datad => \Counter|s_count\(7),
	combout => \ROM|Mux3~2_combout\);

-- Location: LCCOMB_X108_Y23_N26
\ROM|Mux3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux3~14_combout\ = (\ROM|Mux3~2_combout\) # (!\Counter|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Counter|s_count\(0),
	datad => \ROM|Mux3~2_combout\,
	combout => \ROM|Mux3~14_combout\);

-- Location: LCCOMB_X109_Y23_N2
\ROM|Mux3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux3~11_combout\ = (\Counter|s_count\(7) & (((!\Counter|s_count\(6)) # (!\Counter|s_count\(3))) # (!\Counter|s_count\(0)))) # (!\Counter|s_count\(7) & (((\Counter|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(0),
	datab => \Counter|s_count\(7),
	datac => \Counter|s_count\(3),
	datad => \Counter|s_count\(6),
	combout => \ROM|Mux3~11_combout\);

-- Location: LCCOMB_X108_Y23_N14
\ROM|Mux3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux3~12_combout\ = (\Counter|s_count\(1) & (\Counter|s_count\(4) & ((\ROM|Mux3~11_combout\)))) # (!\Counter|s_count\(1) & (((\ROM|Mux3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(4),
	datab => \Counter|s_count\(1),
	datac => \ROM|Mux3~14_combout\,
	datad => \ROM|Mux3~11_combout\,
	combout => \ROM|Mux3~12_combout\);

-- Location: LCCOMB_X107_Y23_N0
\ROM|Mux3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux3~15_combout\ = (\Counter|s_count\(3) & ((\Counter|s_count\(7)) # ((!\Counter|s_count\(6) & !\Counter|s_count\(4))))) # (!\Counter|s_count\(3) & (!\Counter|s_count\(6) & (!\Counter|s_count\(4) & \Counter|s_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(6),
	datab => \Counter|s_count\(3),
	datac => \Counter|s_count\(4),
	datad => \Counter|s_count\(7),
	combout => \ROM|Mux3~15_combout\);

-- Location: LCCOMB_X107_Y23_N14
\ROM|Mux3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux3~16_combout\ = (\Counter|s_count\(1) & ((\ROM|Mux3~15_combout\ & ((\Counter|s_count\(4)) # (\Counter|s_count\(0)))) # (!\ROM|Mux3~15_combout\ & (\Counter|s_count\(4) & \Counter|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(1),
	datab => \ROM|Mux3~15_combout\,
	datac => \Counter|s_count\(4),
	datad => \Counter|s_count\(0),
	combout => \ROM|Mux3~16_combout\);

-- Location: LCCOMB_X107_Y23_N4
\ROM|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux3~8_combout\ = (\Counter|s_count\(4) & ((\Counter|s_count\(7)) # ((\Counter|s_count\(3)) # (\Counter|s_count\(0))))) # (!\Counter|s_count\(4) & (\Counter|s_count\(0) & ((\Counter|s_count\(7)) # (\Counter|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(4),
	datab => \Counter|s_count\(7),
	datac => \Counter|s_count\(3),
	datad => \Counter|s_count\(0),
	combout => \ROM|Mux3~8_combout\);

-- Location: LCCOMB_X108_Y23_N2
\ROM|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux3~9_combout\ = (!\Counter|s_count\(1)) # (!\ROM|Mux3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ROM|Mux3~8_combout\,
	datad => \Counter|s_count\(1),
	combout => \ROM|Mux3~9_combout\);

-- Location: LCCOMB_X108_Y23_N24
\ROM|Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux3~10_combout\ = (\Counter|s_count\(5) & (((\Counter|s_count\(2))))) # (!\Counter|s_count\(5) & ((\Counter|s_count\(2) & ((\ROM|Mux3~9_combout\))) # (!\Counter|s_count\(2) & (\ROM|Mux3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux3~16_combout\,
	datab => \Counter|s_count\(5),
	datac => \Counter|s_count\(2),
	datad => \ROM|Mux3~9_combout\,
	combout => \ROM|Mux3~10_combout\);

-- Location: LCCOMB_X109_Y23_N26
\ROM|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux3~6_combout\ = (\Counter|s_count\(4) & ((\Counter|s_count\(3) & ((\Counter|s_count\(7)) # (\Counter|s_count\(6)))) # (!\Counter|s_count\(3) & (\Counter|s_count\(7) & \Counter|s_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(3),
	datab => \Counter|s_count\(7),
	datac => \Counter|s_count\(4),
	datad => \Counter|s_count\(6),
	combout => \ROM|Mux3~6_combout\);

-- Location: LCCOMB_X109_Y23_N8
\ROM|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux3~3_combout\ = (\Counter|s_count\(3) & ((\Counter|s_count\(7) & (!\Counter|s_count\(4))) # (!\Counter|s_count\(7) & (\Counter|s_count\(4) & !\Counter|s_count\(6))))) # (!\Counter|s_count\(3) & (\Counter|s_count\(4) & ((!\Counter|s_count\(6)) # 
-- (!\Counter|s_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(3),
	datab => \Counter|s_count\(7),
	datac => \Counter|s_count\(4),
	datad => \Counter|s_count\(6),
	combout => \ROM|Mux3~3_combout\);

-- Location: LCCOMB_X109_Y23_N10
\ROM|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux3~4_combout\ = (\Counter|s_count\(4) & ((\Counter|s_count\(3) & (\Counter|s_count\(7) $ (\Counter|s_count\(6)))) # (!\Counter|s_count\(3) & (\Counter|s_count\(7) & \Counter|s_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(3),
	datab => \Counter|s_count\(7),
	datac => \Counter|s_count\(4),
	datad => \Counter|s_count\(6),
	combout => \ROM|Mux3~4_combout\);

-- Location: LCCOMB_X109_Y23_N28
\ROM|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux3~5_combout\ = (\Counter|s_count\(0) & ((\Counter|s_count\(1) & ((!\ROM|Mux3~4_combout\))) # (!\Counter|s_count\(1) & (\ROM|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(1),
	datab => \ROM|Mux3~3_combout\,
	datac => \Counter|s_count\(0),
	datad => \ROM|Mux3~4_combout\,
	combout => \ROM|Mux3~5_combout\);

-- Location: LCCOMB_X109_Y23_N20
\ROM|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux3~7_combout\ = (\ROM|Mux3~5_combout\) # ((!\Counter|s_count\(0) & (\Counter|s_count\(1) & !\ROM|Mux3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(0),
	datab => \Counter|s_count\(1),
	datac => \ROM|Mux3~6_combout\,
	datad => \ROM|Mux3~5_combout\,
	combout => \ROM|Mux3~7_combout\);

-- Location: LCCOMB_X109_Y23_N0
\ROM|Mux3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux3~13_combout\ = (\ROM|Mux3~10_combout\ & ((\ROM|Mux3~12_combout\) # ((!\Counter|s_count\(5))))) # (!\ROM|Mux3~10_combout\ & (((\Counter|s_count\(5) & \ROM|Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux3~12_combout\,
	datab => \ROM|Mux3~10_combout\,
	datac => \Counter|s_count\(5),
	datad => \ROM|Mux3~7_combout\,
	combout => \ROM|Mux3~13_combout\);

-- Location: LCCOMB_X107_Y23_N10
\ROM|Mux4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux4~16_combout\ = (\Counter|s_count\(0) & ((\Counter|s_count\(4)) # (\Counter|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter|s_count\(4),
	datac => \Counter|s_count\(3),
	datad => \Counter|s_count\(0),
	combout => \ROM|Mux4~16_combout\);

-- Location: LCCOMB_X107_Y23_N2
\ROM|Mux4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux4~14_combout\ = (\Counter|s_count\(4) & (\Counter|s_count\(7) $ (\Counter|s_count\(3) $ (\Counter|s_count\(0))))) # (!\Counter|s_count\(4) & (\Counter|s_count\(7) & ((\Counter|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(4),
	datab => \Counter|s_count\(7),
	datac => \Counter|s_count\(3),
	datad => \Counter|s_count\(0),
	combout => \ROM|Mux4~14_combout\);

-- Location: LCCOMB_X107_Y23_N20
\ROM|Mux4~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux4~15_combout\ = (\Counter|s_count\(3) & (\Counter|s_count\(4) & ((\Counter|s_count\(7)) # (\Counter|s_count\(0))))) # (!\Counter|s_count\(3) & (((\Counter|s_count\(7) & \Counter|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(4),
	datab => \Counter|s_count\(7),
	datac => \Counter|s_count\(3),
	datad => \Counter|s_count\(0),
	combout => \ROM|Mux4~15_combout\);

-- Location: LCCOMB_X107_Y23_N12
\ROM|Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux4~7_combout\ = (\ROM|Mux4~16_combout\ & ((\Counter|s_count\(5) & ((\ROM|Mux4~15_combout\))) # (!\Counter|s_count\(5) & (!\ROM|Mux4~14_combout\ & !\ROM|Mux4~15_combout\)))) # (!\ROM|Mux4~16_combout\ & (\ROM|Mux4~14_combout\ & 
-- (!\Counter|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux4~16_combout\,
	datab => \ROM|Mux4~14_combout\,
	datac => \Counter|s_count\(5),
	datad => \ROM|Mux4~15_combout\,
	combout => \ROM|Mux4~7_combout\);

-- Location: LCCOMB_X107_Y23_N18
\ROM|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux4~6_combout\ = (\ROM|Mux4~16_combout\ & ((\ROM|Mux4~14_combout\ $ (!\ROM|Mux4~15_combout\)) # (!\Counter|s_count\(5)))) # (!\ROM|Mux4~16_combout\ & ((\Counter|s_count\(5) & ((!\ROM|Mux4~15_combout\) # (!\ROM|Mux4~14_combout\))) # 
-- (!\Counter|s_count\(5) & ((\ROM|Mux4~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux4~16_combout\,
	datab => \ROM|Mux4~14_combout\,
	datac => \Counter|s_count\(5),
	datad => \ROM|Mux4~15_combout\,
	combout => \ROM|Mux4~6_combout\);

-- Location: LCCOMB_X107_Y23_N8
\ROM|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux4~3_combout\ = (\Counter|s_count\(3) & ((\Counter|s_count\(4)) # (!\Counter|s_count\(7)))) # (!\Counter|s_count\(3) & ((\Counter|s_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter|s_count\(3),
	datac => \Counter|s_count\(4),
	datad => \Counter|s_count\(7),
	combout => \ROM|Mux4~3_combout\);

-- Location: LCCOMB_X107_Y23_N26
\ROM|Mux4~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux4~17_combout\ = (\Counter|s_count\(5) & (\ROM|Mux4~3_combout\ & \Counter|s_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(5),
	datac => \ROM|Mux4~3_combout\,
	datad => \Counter|s_count\(0),
	combout => \ROM|Mux4~17_combout\);

-- Location: LCCOMB_X107_Y23_N22
\ROM|Mux4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux4~10_combout\ = (\ROM|Mux4~7_combout\ & (\ROM|Mux4~6_combout\ & ((\Counter|s_count\(6)) # (!\ROM|Mux4~17_combout\)))) # (!\ROM|Mux4~7_combout\ & (\ROM|Mux4~17_combout\ & ((\ROM|Mux4~6_combout\) # (\Counter|s_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux4~7_combout\,
	datab => \ROM|Mux4~6_combout\,
	datac => \ROM|Mux4~17_combout\,
	datad => \Counter|s_count\(6),
	combout => \ROM|Mux4~10_combout\);

-- Location: LCCOMB_X107_Y23_N16
\ROM|Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux4~9_combout\ = (\ROM|Mux4~17_combout\ & ((\Counter|s_count\(6) & (!\ROM|Mux4~7_combout\)) # (!\Counter|s_count\(6) & ((!\ROM|Mux4~6_combout\))))) # (!\ROM|Mux4~17_combout\ & (\ROM|Mux4~7_combout\ & (!\ROM|Mux4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux4~7_combout\,
	datab => \ROM|Mux4~6_combout\,
	datac => \ROM|Mux4~17_combout\,
	datad => \Counter|s_count\(6),
	combout => \ROM|Mux4~9_combout\);

-- Location: LCCOMB_X107_Y23_N6
\ROM|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux4~8_combout\ = (\ROM|Mux4~17_combout\ & (!\Counter|s_count\(6) & ((\ROM|Mux4~6_combout\) # (!\ROM|Mux4~7_combout\)))) # (!\ROM|Mux4~17_combout\ & (\Counter|s_count\(6) $ (((!\ROM|Mux4~7_combout\ & \ROM|Mux4~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux4~7_combout\,
	datab => \ROM|Mux4~6_combout\,
	datac => \ROM|Mux4~17_combout\,
	datad => \Counter|s_count\(6),
	combout => \ROM|Mux4~8_combout\);

-- Location: LCCOMB_X107_Y23_N30
\ROM|Mux4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux4~12_combout\ = (\ROM|Mux4~10_combout\ & (\ROM|Mux4~9_combout\ $ (((\ROM|Mux4~8_combout\) # (!\Counter|s_count\(1)))))) # (!\ROM|Mux4~10_combout\ & (\ROM|Mux4~9_combout\ & ((\Counter|s_count\(1)) # (!\ROM|Mux4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux4~10_combout\,
	datab => \ROM|Mux4~9_combout\,
	datac => \Counter|s_count\(1),
	datad => \ROM|Mux4~8_combout\,
	combout => \ROM|Mux4~12_combout\);

-- Location: LCCOMB_X107_Y23_N28
\ROM|Mux4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux4~11_combout\ = (\ROM|Mux4~10_combout\ & ((\ROM|Mux4~9_combout\ & (\Counter|s_count\(1))) # (!\ROM|Mux4~9_combout\ & (!\Counter|s_count\(1) & \ROM|Mux4~8_combout\)))) # (!\ROM|Mux4~10_combout\ & ((\Counter|s_count\(1) $ (\ROM|Mux4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux4~10_combout\,
	datab => \ROM|Mux4~9_combout\,
	datac => \Counter|s_count\(1),
	datad => \ROM|Mux4~8_combout\,
	combout => \ROM|Mux4~11_combout\);

-- Location: LCCOMB_X108_Y23_N4
\ROM|Mux4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux4~13_combout\ = \ROM|Mux4~11_combout\ $ (((\ROM|Mux4~12_combout\ & \Counter|s_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ROM|Mux4~12_combout\,
	datac => \Counter|s_count\(2),
	datad => \ROM|Mux4~11_combout\,
	combout => \ROM|Mux4~13_combout\);

-- Location: LCCOMB_X106_Y24_N30
\ROM|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux5~5_combout\ = (\Counter|s_count\(3) & ((\Counter|s_count\(2)) # (\Counter|s_count\(7)))) # (!\Counter|s_count\(3) & (\Counter|s_count\(2) & \Counter|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter|s_count\(3),
	datac => \Counter|s_count\(2),
	datad => \Counter|s_count\(7),
	combout => \ROM|Mux5~5_combout\);

-- Location: LCCOMB_X106_Y24_N28
\ROM|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux5~4_combout\ = (\Counter|s_count\(3) & ((\Counter|s_count\(1)) # ((\Counter|s_count\(2)) # (\Counter|s_count\(7))))) # (!\Counter|s_count\(3) & (\Counter|s_count\(7) & ((\Counter|s_count\(1)) # (\Counter|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(1),
	datab => \Counter|s_count\(3),
	datac => \Counter|s_count\(2),
	datad => \Counter|s_count\(7),
	combout => \ROM|Mux5~4_combout\);

-- Location: LCCOMB_X106_Y24_N12
\ROM|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux5~6_combout\ = (\Counter|s_count\(4) & (\ROM|Mux5~5_combout\ $ (((\Counter|s_count\(6)))))) # (!\Counter|s_count\(4) & ((\Counter|s_count\(6) & (\ROM|Mux5~5_combout\)) # (!\Counter|s_count\(6) & ((!\ROM|Mux5~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux5~5_combout\,
	datab => \ROM|Mux5~4_combout\,
	datac => \Counter|s_count\(4),
	datad => \Counter|s_count\(6),
	combout => \ROM|Mux5~6_combout\);

-- Location: LCCOMB_X106_Y24_N4
\ROM|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux5~2_combout\ = (\Counter|s_count\(3) & ((\Counter|s_count\(7)) # ((\Counter|s_count\(1) & \Counter|s_count\(2))))) # (!\Counter|s_count\(3) & (\Counter|s_count\(1) & (\Counter|s_count\(2) & \Counter|s_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(1),
	datab => \Counter|s_count\(3),
	datac => \Counter|s_count\(2),
	datad => \Counter|s_count\(7),
	combout => \ROM|Mux5~2_combout\);

-- Location: LCCOMB_X106_Y24_N14
\ROM|Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux5~7_combout\ = (\Counter|s_count\(4) & ((\Counter|s_count\(6) & ((\ROM|Mux5~2_combout\))) # (!\Counter|s_count\(6) & (!\ROM|Mux5~5_combout\)))) # (!\Counter|s_count\(4) & (\ROM|Mux5~5_combout\ $ (((\Counter|s_count\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux5~5_combout\,
	datab => \ROM|Mux5~2_combout\,
	datac => \Counter|s_count\(4),
	datad => \Counter|s_count\(6),
	combout => \ROM|Mux5~7_combout\);

-- Location: LCCOMB_X106_Y24_N20
\ROM|Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux5~8_combout\ = (\Counter|s_count\(5) & (((\Counter|s_count\(0))))) # (!\Counter|s_count\(5) & ((\Counter|s_count\(0) & (\ROM|Mux5~6_combout\)) # (!\Counter|s_count\(0) & ((\ROM|Mux5~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux5~6_combout\,
	datab => \ROM|Mux5~7_combout\,
	datac => \Counter|s_count\(5),
	datad => \Counter|s_count\(0),
	combout => \ROM|Mux5~8_combout\);

-- Location: LCCOMB_X106_Y24_N10
\ROM|Mux5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux5~11_combout\ = (\Counter|s_count\(4) & (((!\Counter|s_count\(1) & !\Counter|s_count\(2))) # (!\Counter|s_count\(7)))) # (!\Counter|s_count\(4) & ((\Counter|s_count\(7)) # ((\Counter|s_count\(1) & \Counter|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(1),
	datab => \Counter|s_count\(4),
	datac => \Counter|s_count\(2),
	datad => \Counter|s_count\(7),
	combout => \ROM|Mux5~11_combout\);

-- Location: LCCOMB_X106_Y24_N22
\ROM|Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux5~9_combout\ = (\Counter|s_count\(4)) # ((\Counter|s_count\(1) & (\Counter|s_count\(2) & \Counter|s_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(1),
	datab => \Counter|s_count\(4),
	datac => \Counter|s_count\(2),
	datad => \Counter|s_count\(7),
	combout => \ROM|Mux5~9_combout\);

-- Location: LCCOMB_X106_Y24_N16
\ROM|Mux5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux5~10_combout\ = (\Counter|s_count\(3) & (((\ROM|Mux5~0_combout\)))) # (!\Counter|s_count\(3) & (\ROM|Mux5~9_combout\ $ (((!\Counter|s_count\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux5~9_combout\,
	datab => \ROM|Mux5~0_combout\,
	datac => \Counter|s_count\(3),
	datad => \Counter|s_count\(6),
	combout => \ROM|Mux5~10_combout\);

-- Location: LCCOMB_X106_Y24_N0
\ROM|Mux5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux5~12_combout\ = (\ROM|Mux5~10_combout\) # ((\ROM|Mux5~11_combout\ & (\Counter|s_count\(3) & \Counter|s_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux5~11_combout\,
	datab => \ROM|Mux5~10_combout\,
	datac => \Counter|s_count\(3),
	datad => \Counter|s_count\(6),
	combout => \ROM|Mux5~12_combout\);

-- Location: LCCOMB_X106_Y24_N26
\ROM|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux5~1_combout\ = (\Counter|s_count\(2) & (\Counter|s_count\(3) & (\Counter|s_count\(4) & \Counter|s_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(2),
	datab => \Counter|s_count\(3),
	datac => \Counter|s_count\(4),
	datad => \Counter|s_count\(7),
	combout => \ROM|Mux5~1_combout\);

-- Location: LCCOMB_X106_Y24_N18
\ROM|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux5~3_combout\ = (\ROM|Mux5~1_combout\) # (\Counter|s_count\(6) $ (((\ROM|Mux5~2_combout\) # (\Counter|s_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux5~1_combout\,
	datab => \ROM|Mux5~2_combout\,
	datac => \Counter|s_count\(4),
	datad => \Counter|s_count\(6),
	combout => \ROM|Mux5~3_combout\);

-- Location: LCCOMB_X106_Y24_N6
\ROM|Mux5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux5~13_combout\ = (\ROM|Mux5~8_combout\ & ((\ROM|Mux5~12_combout\) # ((!\Counter|s_count\(5))))) # (!\ROM|Mux5~8_combout\ & (((\Counter|s_count\(5) & \ROM|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux5~8_combout\,
	datab => \ROM|Mux5~12_combout\,
	datac => \Counter|s_count\(5),
	datad => \ROM|Mux5~3_combout\,
	combout => \ROM|Mux5~13_combout\);

-- Location: LCCOMB_X108_Y24_N28
\ROM|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux6~4_combout\ = \Counter|s_count\(7) $ (((\Counter|s_count\(3) & ((!\Counter|s_count\(5)) # (!\Counter|s_count\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(3),
	datab => \Counter|s_count\(4),
	datac => \Counter|s_count\(5),
	datad => \Counter|s_count\(7),
	combout => \ROM|Mux6~4_combout\);

-- Location: LCCOMB_X108_Y24_N12
\ROM|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux6~8_combout\ = (\Counter|s_count\(4) & ((\Counter|s_count\(5)) # ((\Counter|s_count\(3) & \Counter|s_count\(7))))) # (!\Counter|s_count\(4) & (((\Counter|s_count\(5) & \Counter|s_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(3),
	datab => \Counter|s_count\(4),
	datac => \Counter|s_count\(5),
	datad => \Counter|s_count\(7),
	combout => \ROM|Mux6~8_combout\);

-- Location: LCCOMB_X108_Y24_N0
\ROM|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux6~6_combout\ = (\Counter|s_count\(2) & ((\Counter|s_count\(1)) # ((\Counter|s_count\(0)) # (!\Counter|s_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(1),
	datab => \Counter|s_count\(5),
	datac => \Counter|s_count\(0),
	datad => \Counter|s_count\(2),
	combout => \ROM|Mux6~6_combout\);

-- Location: LCCOMB_X108_Y24_N22
\ROM|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux6~7_combout\ = (\Counter|s_count\(5) & ((\Counter|s_count\(4) & ((\Counter|s_count\(3)) # (\Counter|s_count\(7)))) # (!\Counter|s_count\(4) & ((!\Counter|s_count\(7)))))) # (!\Counter|s_count\(5) & (\Counter|s_count\(4) $ (((\Counter|s_count\(3) & 
-- \Counter|s_count\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(3),
	datab => \Counter|s_count\(4),
	datac => \Counter|s_count\(5),
	datad => \Counter|s_count\(7),
	combout => \ROM|Mux6~7_combout\);

-- Location: LCCOMB_X108_Y24_N2
\ROM|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux6~5_combout\ = (\Counter|s_count\(1) & (((\Counter|s_count\(0)) # (\Counter|s_count\(2))))) # (!\Counter|s_count\(1) & (\Counter|s_count\(2) & (\Counter|s_count\(5) $ (\Counter|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(1),
	datab => \Counter|s_count\(5),
	datac => \Counter|s_count\(0),
	datad => \Counter|s_count\(2),
	combout => \ROM|Mux6~5_combout\);

-- Location: LCCOMB_X108_Y24_N30
\ROM|Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux6~9_combout\ = (\ROM|Mux6~6_combout\ & (\ROM|Mux6~7_combout\ & ((\ROM|Mux6~8_combout\) # (!\ROM|Mux6~5_combout\)))) # (!\ROM|Mux6~6_combout\ & (\ROM|Mux6~5_combout\ & (\ROM|Mux6~8_combout\ $ (!\ROM|Mux6~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux6~8_combout\,
	datab => \ROM|Mux6~6_combout\,
	datac => \ROM|Mux6~7_combout\,
	datad => \ROM|Mux6~5_combout\,
	combout => \ROM|Mux6~9_combout\);

-- Location: LCCOMB_X108_Y24_N20
\ROM|Mux6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux6~10_combout\ = (\ROM|Mux6~8_combout\ & ((\ROM|Mux6~7_combout\) # ((\ROM|Mux6~6_combout\ & !\ROM|Mux6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux6~8_combout\,
	datab => \ROM|Mux6~6_combout\,
	datac => \ROM|Mux6~7_combout\,
	datad => \ROM|Mux6~5_combout\,
	combout => \ROM|Mux6~10_combout\);

-- Location: LCCOMB_X108_Y24_N10
\ROM|Mux6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux6~11_combout\ = (\Counter|s_count\(6) & (\ROM|Mux2~1_combout\)) # (!\Counter|s_count\(6) & ((\ROM|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ROM|Mux2~1_combout\,
	datac => \Counter|s_count\(6),
	datad => \ROM|Mux0~3_combout\,
	combout => \ROM|Mux6~11_combout\);

-- Location: LCCOMB_X108_Y24_N8
\ROM|Mux6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux6~14_combout\ = (\Counter|s_count\(6) & (\ROM|Mux6~9_combout\ $ (((\ROM|Mux6~10_combout\ & !\ROM|Mux6~11_combout\))))) # (!\Counter|s_count\(6) & (\ROM|Mux6~10_combout\ & ((!\ROM|Mux6~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(6),
	datab => \ROM|Mux6~10_combout\,
	datac => \ROM|Mux6~9_combout\,
	datad => \ROM|Mux6~11_combout\,
	combout => \ROM|Mux6~14_combout\);

-- Location: LCCOMB_X108_Y24_N14
\ROM|Mux6~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux6~15_combout\ = (\ROM|Mux6~14_combout\ & ((\ROM|Mux6~9_combout\) # ((\ROM|Mux6~10_combout\ & !\ROM|Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux6~9_combout\,
	datab => \ROM|Mux6~10_combout\,
	datac => \ROM|Mux6~14_combout\,
	datad => \ROM|Mux6~6_combout\,
	combout => \ROM|Mux6~15_combout\);

-- Location: LCCOMB_X108_Y24_N18
\ROM|Mux6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux6~13_combout\ = (\ROM|Mux6~9_combout\ & ((\ROM|Mux6~10_combout\) # ((!\Counter|s_count\(6))))) # (!\ROM|Mux6~9_combout\ & (\ROM|Mux6~10_combout\ $ (\Counter|s_count\(6) $ (\ROM|Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101110011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux6~9_combout\,
	datab => \ROM|Mux6~10_combout\,
	datac => \Counter|s_count\(6),
	datad => \ROM|Mux6~6_combout\,
	combout => \ROM|Mux6~13_combout\);

-- Location: LCCOMB_X108_Y24_N24
\ROM|Mux6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux6~12_combout\ = \ROM|Mux6~13_combout\ $ (((\ROM|Mux6~4_combout\ & !\ROM|Mux6~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ROM|Mux6~4_combout\,
	datac => \ROM|Mux6~15_combout\,
	datad => \ROM|Mux6~13_combout\,
	combout => \ROM|Mux6~12_combout\);

-- Location: LCCOMB_X109_Y23_N4
\ROM|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux7~2_combout\ = (\Counter|s_count\(2) & (\Counter|s_count\(3) $ (((\Counter|s_count\(7) & \Counter|s_count\(6)))))) # (!\Counter|s_count\(2) & (\Counter|s_count\(3) & ((\Counter|s_count\(7)) # (\Counter|s_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(2),
	datab => \Counter|s_count\(7),
	datac => \Counter|s_count\(3),
	datad => \Counter|s_count\(6),
	combout => \ROM|Mux7~2_combout\);

-- Location: LCCOMB_X109_Y23_N30
\ROM|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux7~3_combout\ = (\Counter|s_count\(7) & (\Counter|s_count\(2) & (\Counter|s_count\(3) & \Counter|s_count\(6)))) # (!\Counter|s_count\(7) & (\Counter|s_count\(2) $ (((\Counter|s_count\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(2),
	datab => \Counter|s_count\(7),
	datac => \Counter|s_count\(3),
	datad => \Counter|s_count\(6),
	combout => \ROM|Mux7~3_combout\);

-- Location: LCCOMB_X109_Y23_N12
\ROM|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux7~4_combout\ = (\Counter|s_count\(7) & ((\Counter|s_count\(2) & ((\Counter|s_count\(3)) # (!\Counter|s_count\(6)))) # (!\Counter|s_count\(2) & ((\Counter|s_count\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(2),
	datab => \Counter|s_count\(7),
	datac => \Counter|s_count\(3),
	datad => \Counter|s_count\(6),
	combout => \ROM|Mux7~4_combout\);

-- Location: LCCOMB_X109_Y23_N6
\ROM|Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux7~7_combout\ = (\Counter|s_count\(1) & (!\ROM|Mux7~2_combout\ & (\ROM|Mux7~3_combout\))) # (!\Counter|s_count\(1) & (((!\ROM|Mux7~3_combout\ & \ROM|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(1),
	datab => \ROM|Mux7~2_combout\,
	datac => \ROM|Mux7~3_combout\,
	datad => \ROM|Mux7~4_combout\,
	combout => \ROM|Mux7~7_combout\);

-- Location: LCCOMB_X109_Y23_N16
\ROM|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux7~6_combout\ = (\Counter|s_count\(1) & (\ROM|Mux7~4_combout\ $ (((\ROM|Mux7~2_combout\ & \ROM|Mux7~3_combout\))))) # (!\Counter|s_count\(1) & ((\ROM|Mux7~2_combout\ & ((!\ROM|Mux7~4_combout\) # (!\ROM|Mux7~3_combout\))) # (!\ROM|Mux7~2_combout\ & 
-- (\ROM|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(1),
	datab => \ROM|Mux7~2_combout\,
	datac => \ROM|Mux7~3_combout\,
	datad => \ROM|Mux7~4_combout\,
	combout => \ROM|Mux7~6_combout\);

-- Location: LCCOMB_X109_Y23_N14
\ROM|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux7~5_combout\ = (\ROM|Mux7~4_combout\ & ((\Counter|s_count\(1)) # ((!\ROM|Mux7~2_combout\ & !\ROM|Mux7~3_combout\)))) # (!\ROM|Mux7~4_combout\ & (\ROM|Mux7~3_combout\ $ (((\Counter|s_count\(1) & !\ROM|Mux7~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(1),
	datab => \ROM|Mux7~2_combout\,
	datac => \ROM|Mux7~3_combout\,
	datad => \ROM|Mux7~4_combout\,
	combout => \ROM|Mux7~5_combout\);

-- Location: LCCOMB_X109_Y23_N18
\ROM|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux7~1_combout\ = (\Counter|s_count\(0) & ((\Counter|s_count\(4) & (\Counter|s_count\(5) & \Counter|s_count\(1))) # (!\Counter|s_count\(4) & (\Counter|s_count\(5) $ (\Counter|s_count\(1)))))) # (!\Counter|s_count\(0) & (\Counter|s_count\(4) & 
-- (!\Counter|s_count\(5) & !\Counter|s_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(0),
	datab => \Counter|s_count\(4),
	datac => \Counter|s_count\(5),
	datad => \Counter|s_count\(1),
	combout => \ROM|Mux7~1_combout\);

-- Location: LCCOMB_X109_Y23_N22
\ROM|Mux7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux7~9_combout\ = (\ROM|Mux7~6_combout\ & (\ROM|Mux7~7_combout\ $ (((\ROM|Mux7~5_combout\) # (\ROM|Mux7~1_combout\))))) # (!\ROM|Mux7~6_combout\ & ((\ROM|Mux7~1_combout\ & ((\ROM|Mux7~5_combout\))) # (!\ROM|Mux7~1_combout\ & (\ROM|Mux7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux7~7_combout\,
	datab => \ROM|Mux7~6_combout\,
	datac => \ROM|Mux7~5_combout\,
	datad => \ROM|Mux7~1_combout\,
	combout => \ROM|Mux7~9_combout\);

-- Location: LCCOMB_X109_Y23_N24
\ROM|Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux7~8_combout\ = (\ROM|Mux7~7_combout\ & (!\ROM|Mux7~5_combout\ & (\ROM|Mux7~6_combout\ $ (!\ROM|Mux7~1_combout\)))) # (!\ROM|Mux7~7_combout\ & (\ROM|Mux7~1_combout\ $ (((!\ROM|Mux7~6_combout\ & \ROM|Mux7~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux7~7_combout\,
	datab => \ROM|Mux7~6_combout\,
	datac => \ROM|Mux7~5_combout\,
	datad => \ROM|Mux7~1_combout\,
	combout => \ROM|Mux7~8_combout\);

-- Location: LCCOMB_X109_Y24_N22
\ROM|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux7~0_combout\ = (\Counter|s_count\(5) & ((\Counter|s_count\(4)) # (!\Counter|s_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(4),
	datac => \Counter|s_count\(5),
	datad => \Counter|s_count\(1),
	combout => \ROM|Mux7~0_combout\);

-- Location: LCCOMB_X110_Y27_N20
\ROM|Mux7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux7~10_combout\ = \ROM|Mux7~9_combout\ $ (((\ROM|Mux7~8_combout\) # (!\ROM|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ROM|Mux7~9_combout\,
	datac => \ROM|Mux7~8_combout\,
	datad => \ROM|Mux7~0_combout\,
	combout => \ROM|Mux7~10_combout\);

-- Location: LCCOMB_X110_Y24_N12
\Signed2BCD|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Add0~1_cout\ = CARRY(!\ROM|Mux7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux7~10_combout\,
	datad => VCC,
	cout => \Signed2BCD|Add0~1_cout\);

-- Location: LCCOMB_X110_Y24_N14
\Signed2BCD|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Add0~2_combout\ = (\ROM|Mux6~12_combout\ & ((\Signed2BCD|Add0~1_cout\) # (GND))) # (!\ROM|Mux6~12_combout\ & (!\Signed2BCD|Add0~1_cout\))
-- \Signed2BCD|Add0~3\ = CARRY((\ROM|Mux6~12_combout\) # (!\Signed2BCD|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux6~12_combout\,
	datad => VCC,
	cin => \Signed2BCD|Add0~1_cout\,
	combout => \Signed2BCD|Add0~2_combout\,
	cout => \Signed2BCD|Add0~3\);

-- Location: LCCOMB_X110_Y24_N16
\Signed2BCD|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Add0~4_combout\ = (\ROM|Mux5~13_combout\ & (!\Signed2BCD|Add0~3\ & VCC)) # (!\ROM|Mux5~13_combout\ & (\Signed2BCD|Add0~3\ $ (GND)))
-- \Signed2BCD|Add0~5\ = CARRY((!\ROM|Mux5~13_combout\ & !\Signed2BCD|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ROM|Mux5~13_combout\,
	datad => VCC,
	cin => \Signed2BCD|Add0~3\,
	combout => \Signed2BCD|Add0~4_combout\,
	cout => \Signed2BCD|Add0~5\);

-- Location: LCCOMB_X110_Y24_N18
\Signed2BCD|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Add0~6_combout\ = (\ROM|Mux4~13_combout\ & ((\Signed2BCD|Add0~5\) # (GND))) # (!\ROM|Mux4~13_combout\ & (!\Signed2BCD|Add0~5\))
-- \Signed2BCD|Add0~7\ = CARRY((\ROM|Mux4~13_combout\) # (!\Signed2BCD|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux4~13_combout\,
	datad => VCC,
	cin => \Signed2BCD|Add0~5\,
	combout => \Signed2BCD|Add0~6_combout\,
	cout => \Signed2BCD|Add0~7\);

-- Location: LCCOMB_X110_Y24_N20
\Signed2BCD|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Add0~8_combout\ = (\ROM|Mux3~13_combout\ & (!\Signed2BCD|Add0~7\ & VCC)) # (!\ROM|Mux3~13_combout\ & (\Signed2BCD|Add0~7\ $ (GND)))
-- \Signed2BCD|Add0~9\ = CARRY((!\ROM|Mux3~13_combout\ & !\Signed2BCD|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux3~13_combout\,
	datad => VCC,
	cin => \Signed2BCD|Add0~7\,
	combout => \Signed2BCD|Add0~8_combout\,
	cout => \Signed2BCD|Add0~9\);

-- Location: LCCOMB_X110_Y24_N22
\Signed2BCD|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Add0~10_combout\ = (\ROM|Mux2~17_combout\ & ((\Signed2BCD|Add0~9\) # (GND))) # (!\ROM|Mux2~17_combout\ & (!\Signed2BCD|Add0~9\))
-- \Signed2BCD|Add0~11\ = CARRY((\ROM|Mux2~17_combout\) # (!\Signed2BCD|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ROM|Mux2~17_combout\,
	datad => VCC,
	cin => \Signed2BCD|Add0~9\,
	combout => \Signed2BCD|Add0~10_combout\,
	cout => \Signed2BCD|Add0~11\);

-- Location: LCCOMB_X110_Y24_N24
\Signed2BCD|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Add0~12_combout\ = (\ROM|Mux1~10_combout\ & (!\Signed2BCD|Add0~11\ & VCC)) # (!\ROM|Mux1~10_combout\ & (\Signed2BCD|Add0~11\ $ (GND)))
-- \Signed2BCD|Add0~13\ = CARRY((!\ROM|Mux1~10_combout\ & !\Signed2BCD|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux1~10_combout\,
	datad => VCC,
	cin => \Signed2BCD|Add0~11\,
	combout => \Signed2BCD|Add0~12_combout\,
	cout => \Signed2BCD|Add0~13\);

-- Location: LCCOMB_X110_Y24_N26
\Signed2BCD|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Add0~14_combout\ = \ROM|Mux0~5_combout\ $ (!\Signed2BCD|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux0~5_combout\,
	cin => \Signed2BCD|Add0~13\,
	combout => \Signed2BCD|Add0~14_combout\);

-- Location: LCCOMB_X111_Y25_N8
\Signed2BCD|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Add0~16_combout\ = (\Signed2BCD|Add0~14_combout\ & \ROM|Mux0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Signed2BCD|Add0~14_combout\,
	datad => \ROM|Mux0~5_combout\,
	combout => \Signed2BCD|Add0~16_combout\);

-- Location: LCCOMB_X110_Y24_N0
\Signed2BCD|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Add0~17_combout\ = (\ROM|Mux0~5_combout\ & (\Signed2BCD|Add0~12_combout\)) # (!\ROM|Mux0~5_combout\ & ((\ROM|Mux1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Signed2BCD|Add0~12_combout\,
	datac => \ROM|Mux0~5_combout\,
	datad => \ROM|Mux1~10_combout\,
	combout => \Signed2BCD|Add0~17_combout\);

-- Location: LCCOMB_X111_Y24_N0
\Signed2BCD|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Add0~18_combout\ = (\ROM|Mux0~5_combout\ & ((\Signed2BCD|Add0~10_combout\))) # (!\ROM|Mux0~5_combout\ & (\ROM|Mux2~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux2~17_combout\,
	datab => \Signed2BCD|Add0~10_combout\,
	datad => \ROM|Mux0~5_combout\,
	combout => \Signed2BCD|Add0~18_combout\);

-- Location: LCCOMB_X111_Y24_N26
\Signed2BCD|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Add0~19_combout\ = (\ROM|Mux0~5_combout\ & (\Signed2BCD|Add0~8_combout\)) # (!\ROM|Mux0~5_combout\ & ((\ROM|Mux3~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Signed2BCD|Add0~8_combout\,
	datac => \ROM|Mux3~13_combout\,
	datad => \ROM|Mux0~5_combout\,
	combout => \Signed2BCD|Add0~19_combout\);

-- Location: LCCOMB_X112_Y24_N4
\Signed2BCD|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Add0~20_combout\ = (\ROM|Mux0~5_combout\ & (\Signed2BCD|Add0~6_combout\)) # (!\ROM|Mux0~5_combout\ & ((\ROM|Mux4~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Add0~6_combout\,
	datac => \ROM|Mux4~13_combout\,
	datad => \ROM|Mux0~5_combout\,
	combout => \Signed2BCD|Add0~20_combout\);

-- Location: LCCOMB_X111_Y24_N10
\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \Signed2BCD|Add0~20_combout\ $ (VCC)
-- \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\Signed2BCD|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Add0~20_combout\,
	datad => VCC,
	combout => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X111_Y24_N12
\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\Signed2BCD|Add0~19_combout\ & (\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\Signed2BCD|Add0~19_combout\ & 
-- (!\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\Signed2BCD|Add0~19_combout\ & !\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Add0~19_combout\,
	datad => VCC,
	cin => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X111_Y24_N14
\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\Signed2BCD|Add0~18_combout\ & ((GND) # (!\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\Signed2BCD|Add0~18_combout\ & 
-- (\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\Signed2BCD|Add0~18_combout\) # (!\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Signed2BCD|Add0~18_combout\,
	datad => VCC,
	cin => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X111_Y24_N16
\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\Signed2BCD|Add0~17_combout\ & (!\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\Signed2BCD|Add0~17_combout\ & 
-- ((\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\Signed2BCD|Add0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Add0~17_combout\,
	datad => VCC,
	cin => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X111_Y24_N18
\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\Signed2BCD|Add0~16_combout\ & (\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!\Signed2BCD|Add0~16_combout\ & 
-- (!\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\Signed2BCD|Add0~16_combout\ & !\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Signed2BCD|Add0~16_combout\,
	datad => VCC,
	cin => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X111_Y24_N20
\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X112_Y24_N6
\Signed2BCD|Div1|auto_generated|divider|divider|StageOut[54]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[54]~10_combout\ = (\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[54]~10_combout\);

-- Location: LCCOMB_X111_Y24_N28
\Signed2BCD|Div1|auto_generated|divider|divider|StageOut[54]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[54]~17_combout\ = (\ROM|Mux0~5_combout\ & (\Signed2BCD|Add0~14_combout\ & \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ROM|Mux0~5_combout\,
	datac => \Signed2BCD|Add0~14_combout\,
	datad => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[54]~17_combout\);

-- Location: LCCOMB_X111_Y24_N2
\Signed2BCD|Div1|auto_generated|divider|divider|StageOut[53]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[53]~18_combout\ = (\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\ROM|Mux0~5_combout\ & (\Signed2BCD|Add0~12_combout\)) # (!\ROM|Mux0~5_combout\ & 
-- ((\ROM|Mux1~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux0~5_combout\,
	datab => \Signed2BCD|Add0~12_combout\,
	datac => \ROM|Mux1~10_combout\,
	datad => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[53]~18_combout\);

-- Location: LCCOMB_X112_Y24_N28
\Signed2BCD|Div1|auto_generated|divider|divider|StageOut[53]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[53]~11_combout\ = (\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[53]~11_combout\);

-- Location: LCCOMB_X112_Y24_N26
\Signed2BCD|Div1|auto_generated|divider|divider|StageOut[52]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[52]~12_combout\ = (\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[52]~12_combout\);

-- Location: LCCOMB_X112_Y24_N24
\Signed2BCD|Div1|auto_generated|divider|divider|StageOut[52]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[52]~19_combout\ = (\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\ROM|Mux0~5_combout\ & (\Signed2BCD|Add0~10_combout\)) # (!\ROM|Mux0~5_combout\ & 
-- ((\ROM|Mux2~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Add0~10_combout\,
	datab => \ROM|Mux0~5_combout\,
	datac => \ROM|Mux2~17_combout\,
	datad => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[52]~19_combout\);

-- Location: LCCOMB_X111_Y24_N24
\Signed2BCD|Div1|auto_generated|divider|divider|StageOut[51]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[51]~20_combout\ = (\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\ROM|Mux0~5_combout\ & (\Signed2BCD|Add0~8_combout\)) # (!\ROM|Mux0~5_combout\ & 
-- ((\ROM|Mux3~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux0~5_combout\,
	datab => \Signed2BCD|Add0~8_combout\,
	datac => \ROM|Mux3~13_combout\,
	datad => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[51]~20_combout\);

-- Location: LCCOMB_X111_Y24_N4
\Signed2BCD|Div1|auto_generated|divider|divider|StageOut[51]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[51]~13_combout\ = (\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[51]~13_combout\);

-- Location: LCCOMB_X112_Y24_N30
\Signed2BCD|Div1|auto_generated|divider|divider|StageOut[50]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[50]~14_combout\ = (\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & !\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[50]~14_combout\);

-- Location: LCCOMB_X112_Y24_N2
\Signed2BCD|Div1|auto_generated|divider|divider|StageOut[50]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[50]~21_combout\ = (\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\ROM|Mux0~5_combout\ & (\Signed2BCD|Add0~6_combout\)) # (!\ROM|Mux0~5_combout\ & 
-- ((\ROM|Mux4~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Add0~6_combout\,
	datab => \ROM|Mux0~5_combout\,
	datac => \ROM|Mux4~13_combout\,
	datad => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[50]~21_combout\);

-- Location: LCCOMB_X111_Y24_N8
\Signed2BCD|Div1|auto_generated|divider|divider|StageOut[49]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[49]~16_combout\ = (!\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\ROM|Mux0~5_combout\ & ((\Signed2BCD|Add0~4_combout\))) # (!\ROM|Mux0~5_combout\ & 
-- (\ROM|Mux5~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux5~13_combout\,
	datab => \ROM|Mux0~5_combout\,
	datac => \Signed2BCD|Add0~4_combout\,
	datad => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[49]~16_combout\);

-- Location: LCCOMB_X111_Y24_N22
\Signed2BCD|Div1|auto_generated|divider|divider|StageOut[49]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[49]~15_combout\ = (\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\ROM|Mux0~5_combout\ & ((\Signed2BCD|Add0~4_combout\))) # (!\ROM|Mux0~5_combout\ & 
-- (\ROM|Mux5~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux5~13_combout\,
	datab => \ROM|Mux0~5_combout\,
	datac => \Signed2BCD|Add0~4_combout\,
	datad => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[49]~15_combout\);

-- Location: LCCOMB_X112_Y24_N8
\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ = CARRY((\Signed2BCD|Div1|auto_generated|divider|divider|StageOut[49]~16_combout\) # (\Signed2BCD|Div1|auto_generated|divider|divider|StageOut[49]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[49]~16_combout\,
	datab => \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[49]~15_combout\,
	datad => VCC,
	cout => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\);

-- Location: LCCOMB_X112_Y24_N10
\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ = CARRY((!\Signed2BCD|Div1|auto_generated|divider|divider|StageOut[50]~14_combout\ & (!\Signed2BCD|Div1|auto_generated|divider|divider|StageOut[50]~21_combout\ & 
-- !\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[50]~14_combout\,
	datab => \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[50]~21_combout\,
	datad => VCC,
	cin => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\,
	cout => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\);

-- Location: LCCOMB_X112_Y24_N12
\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ = CARRY((\Signed2BCD|Div1|auto_generated|divider|divider|StageOut[51]~20_combout\) # ((\Signed2BCD|Div1|auto_generated|divider|divider|StageOut[51]~13_combout\) # 
-- (!\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[51]~20_combout\,
	datab => \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[51]~13_combout\,
	datad => VCC,
	cin => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\,
	cout => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\);

-- Location: LCCOMB_X112_Y24_N14
\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ = CARRY(((!\Signed2BCD|Div1|auto_generated|divider|divider|StageOut[52]~12_combout\ & !\Signed2BCD|Div1|auto_generated|divider|divider|StageOut[52]~19_combout\)) # 
-- (!\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[52]~12_combout\,
	datab => \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[52]~19_combout\,
	datad => VCC,
	cin => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\,
	cout => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\);

-- Location: LCCOMB_X112_Y24_N16
\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ = CARRY((!\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ & ((\Signed2BCD|Div1|auto_generated|divider|divider|StageOut[53]~18_combout\) # 
-- (\Signed2BCD|Div1|auto_generated|divider|divider|StageOut[53]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[53]~18_combout\,
	datab => \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[53]~11_combout\,
	datad => VCC,
	cin => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\,
	cout => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\);

-- Location: LCCOMB_X112_Y24_N18
\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY((!\Signed2BCD|Div1|auto_generated|divider|divider|StageOut[54]~10_combout\ & (!\Signed2BCD|Div1|auto_generated|divider|divider|StageOut[54]~17_combout\ & 
-- !\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[54]~10_combout\,
	datab => \Signed2BCD|Div1|auto_generated|divider|divider|StageOut[54]~17_combout\,
	datad => VCC,
	cin => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\,
	cout => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X112_Y24_N20
\Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\,
	combout => \Signed2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X111_Y25_N12
\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \Signed2BCD|Add0~20_combout\ $ (VCC)
-- \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\Signed2BCD|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Signed2BCD|Add0~20_combout\,
	datad => VCC,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X111_Y25_N14
\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\Signed2BCD|Add0~19_combout\ & (\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\Signed2BCD|Add0~19_combout\ & 
-- (!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\Signed2BCD|Add0~19_combout\ & !\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Signed2BCD|Add0~19_combout\,
	datad => VCC,
	cin => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X111_Y25_N16
\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\Signed2BCD|Add0~18_combout\ & ((GND) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\Signed2BCD|Add0~18_combout\ & 
-- (\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\Signed2BCD|Add0~18_combout\) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Add0~18_combout\,
	datad => VCC,
	cin => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X111_Y25_N18
\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\Signed2BCD|Add0~17_combout\ & (!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\Signed2BCD|Add0~17_combout\ & 
-- ((\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\Signed2BCD|Add0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Add0~17_combout\,
	datad => VCC,
	cin => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X111_Y25_N20
\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\Signed2BCD|Add0~16_combout\ & (\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!\Signed2BCD|Add0~16_combout\ & 
-- (!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\Signed2BCD|Add0~16_combout\ & !\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Signed2BCD|Add0~16_combout\,
	datad => VCC,
	cin => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X111_Y25_N22
\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X111_Y25_N4
\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~54_combout\ = (\Signed2BCD|Add0~14_combout\ & (\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \ROM|Mux0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Signed2BCD|Add0~14_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \ROM|Mux0~5_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~54_combout\);

-- Location: LCCOMB_X111_Y25_N28
\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~33_combout\ = (!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~33_combout\);

-- Location: LCCOMB_X111_Y25_N2
\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~34_combout\ = (!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~34_combout\);

-- Location: LCCOMB_X110_Y24_N10
\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~55_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\ROM|Mux0~5_combout\ & ((\Signed2BCD|Add0~12_combout\))) # (!\ROM|Mux0~5_combout\ & 
-- (\ROM|Mux1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux1~10_combout\,
	datab => \Signed2BCD|Add0~12_combout\,
	datac => \ROM|Mux0~5_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~55_combout\);

-- Location: LCCOMB_X111_Y25_N30
\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~28_combout\ = (!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~28_combout\);

-- Location: LCCOMB_X112_Y24_N0
\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~51_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\ROM|Mux0~5_combout\ & (\Signed2BCD|Add0~10_combout\)) # (!\ROM|Mux0~5_combout\ & 
-- ((\ROM|Mux2~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Add0~10_combout\,
	datab => \ROM|Mux0~5_combout\,
	datac => \ROM|Mux2~17_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~51_combout\);

-- Location: LCCOMB_X111_Y24_N6
\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~52_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\ROM|Mux0~5_combout\ & (\Signed2BCD|Add0~8_combout\)) # (!\ROM|Mux0~5_combout\ & 
-- ((\ROM|Mux3~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \Signed2BCD|Add0~8_combout\,
	datac => \ROM|Mux3~13_combout\,
	datad => \ROM|Mux0~5_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~52_combout\);

-- Location: LCCOMB_X111_Y25_N24
\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~29_combout\ = (!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~29_combout\);

-- Location: LCCOMB_X111_Y25_N6
\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~30_combout\ = (!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~30_combout\);

-- Location: LCCOMB_X112_Y24_N22
\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~53_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\ROM|Mux0~5_combout\ & (\Signed2BCD|Add0~6_combout\)) # (!\ROM|Mux0~5_combout\ & 
-- ((\ROM|Mux4~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Add0~6_combout\,
	datab => \ROM|Mux0~5_combout\,
	datac => \ROM|Mux4~13_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~53_combout\);

-- Location: LCCOMB_X110_Y24_N4
\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~32_combout\ = (!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\ROM|Mux0~5_combout\ & (\Signed2BCD|Add0~4_combout\)) # (!\ROM|Mux0~5_combout\ & 
-- ((\ROM|Mux5~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux0~5_combout\,
	datab => \Signed2BCD|Add0~4_combout\,
	datac => \ROM|Mux5~13_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~32_combout\);

-- Location: LCCOMB_X110_Y24_N2
\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~31_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\ROM|Mux0~5_combout\ & (\Signed2BCD|Add0~4_combout\)) # (!\ROM|Mux0~5_combout\ & 
-- ((\ROM|Mux5~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux0~5_combout\,
	datab => \Signed2BCD|Add0~4_combout\,
	datac => \ROM|Mux5~13_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~31_combout\);

-- Location: LCCOMB_X110_Y25_N18
\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = (((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~32_combout\) # (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~31_combout\)))
-- \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~32_combout\) # (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~32_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~31_combout\,
	datad => VCC,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X110_Y25_N20
\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~30_combout\) # 
-- (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~53_combout\)))) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~30_combout\ & 
-- (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~53_combout\)))
-- \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY((!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~30_combout\ & (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~53_combout\ & 
-- !\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~30_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~53_combout\,
	datad => VCC,
	cin => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X110_Y25_N22
\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~52_combout\) # 
-- (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~29_combout\))))) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~52_combout\) # 
-- ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~29_combout\) # (GND))))
-- \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~52_combout\) # ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~29_combout\) # 
-- (!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~52_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~29_combout\,
	datad => VCC,
	cin => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

-- Location: LCCOMB_X110_Y25_N24
\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~28_combout\ & (((!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)))) # 
-- (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~28_combout\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~51_combout\ & (!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)) # 
-- (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~51_combout\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (GND)))))
-- \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ = CARRY(((!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~28_combout\ & !\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~51_combout\)) # 
-- (!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~28_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~51_combout\,
	datad => VCC,
	cin => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	cout => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\);

-- Location: LCCOMB_X110_Y25_N26
\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & (((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~34_combout\) # 
-- (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~55_combout\)))) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~34_combout\) # 
-- (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~55_combout\)))))
-- \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~34_combout\) # 
-- (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~34_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~55_combout\,
	datad => VCC,
	cin => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

-- Location: LCCOMB_X110_Y25_N28
\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~54_combout\) # 
-- (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~33_combout\)))) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~54_combout\ & 
-- (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~33_combout\)))
-- \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ = CARRY((!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~54_combout\ & (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~33_combout\ & 
-- !\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~54_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~33_combout\,
	datad => VCC,
	cin => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	cout => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\);

-- Location: LCCOMB_X110_Y25_N30
\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X110_Y25_N14
\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~49_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~54_combout\) # 
-- ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~33_combout\)))) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (((\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~54_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~33_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~49_combout\);

-- Location: LCCOMB_X110_Y25_N12
\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~52_combout\) # 
-- ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~29_combout\)))) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (((\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~52_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~29_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\);

-- Location: LCCOMB_X110_Y25_N2
\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~55_combout\) # 
-- ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~34_combout\)))) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (((\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~55_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~34_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\);

-- Location: LCCOMB_X110_Y25_N4
\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~28_combout\) # 
-- ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~51_combout\)))) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (((\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~28_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~51_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\);

-- Location: LCCOMB_X110_Y26_N6
\d1|decOut_n[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[0]~4_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~49_combout\ & (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\ & 
-- ((!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\)))) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~49_combout\ & 
-- ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\ & (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\ & \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\)) # 
-- (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\ & (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\ & !\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~49_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\,
	combout => \d1|decOut_n[0]~4_combout\);

-- Location: LCCOMB_X108_Y26_N30
\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~46_combout\ = (!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~46_combout\);

-- Location: LCCOMB_X110_Y25_N16
\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~61_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~52_combout\) # 
-- ((\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~52_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~61_combout\);

-- Location: LCCOMB_X111_Y25_N10
\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~53_combout\) # 
-- ((\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & !\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~53_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\);

-- Location: LCCOMB_X107_Y26_N14
\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\ = (!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\);

-- Location: LCCOMB_X108_Y26_N2
\d1|decOut_n[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[6]~5_combout\ = (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\ & (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\ & 
-- ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~46_combout\) # (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~46_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~61_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\,
	combout => \d1|decOut_n[6]~5_combout\);

-- Location: LCCOMB_X109_Y25_N30
\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~44_combout\ = (!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~44_combout\);

-- Location: LCCOMB_X111_Y25_N26
\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~58_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~54_combout\) # 
-- ((!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~54_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~58_combout\);

-- Location: LCCOMB_X110_Y25_N6
\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~60_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~55_combout\) # 
-- ((!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~55_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~60_combout\);

-- Location: LCCOMB_X109_Y25_N6
\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~45_combout\ = (!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~45_combout\);

-- Location: LCCOMB_X109_Y25_N4
\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\ = (!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\);

-- Location: LCCOMB_X111_Y25_N0
\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~59_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~51_combout\) # 
-- ((!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~51_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~59_combout\);

-- Location: LCCOMB_X109_Y25_N16
\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\) # (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~59_combout\)))
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\) # (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~59_combout\,
	datad => VCC,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X109_Y25_N18
\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~60_combout\) # 
-- (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~45_combout\)))) # (!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~60_combout\ & 
-- (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~45_combout\)))
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~60_combout\ & (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~45_combout\ & 
-- !\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~60_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~45_combout\,
	datad => VCC,
	cin => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X109_Y25_N20
\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~44_combout\) # 
-- (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~58_combout\)))) # (!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~44_combout\) # 
-- (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~58_combout\)))))
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~44_combout\) # 
-- (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~44_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~58_combout\,
	datad => VCC,
	cin => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X109_Y25_N22
\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X109_Y25_N8
\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[17]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[17]~49_combout\ = (\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~60_combout\) # 
-- ((!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~60_combout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[17]~49_combout\);

-- Location: LCCOMB_X109_Y25_N14
\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[18]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[18]~48_combout\ = (\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~58_combout\) # 
-- ((!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~58_combout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[18]~48_combout\);

-- Location: LCCOMB_X109_Y25_N0
\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[18]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[18]~32_combout\ = (!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[18]~32_combout\);

-- Location: LCCOMB_X109_Y25_N2
\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[17]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[17]~33_combout\ = (!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[17]~33_combout\);

-- Location: LCCOMB_X109_Y26_N0
\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[16]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[16]~34_combout\ = (!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[16]~34_combout\);

-- Location: LCCOMB_X109_Y25_N10
\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[16]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[16]~50_combout\ = (\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~59_combout\) # 
-- ((!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~59_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[16]~50_combout\);

-- Location: LCCOMB_X108_Y26_N16
\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[15]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[15]~51_combout\ = (\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~61_combout\) # 
-- ((!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~61_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[15]~51_combout\);

-- Location: LCCOMB_X108_Y26_N12
\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~46_combout\) # (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~46_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~61_combout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\);

-- Location: LCCOMB_X108_Y26_N20
\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[15]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[15]~35_combout\ = (!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[15]~35_combout\);

-- Location: LCCOMB_X109_Y26_N10
\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[15]~51_combout\) # (\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[15]~35_combout\)))
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[15]~51_combout\) # (\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[15]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[15]~51_combout\,
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[15]~35_combout\,
	datad => VCC,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X109_Y26_N12
\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[16]~34_combout\) # 
-- (\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[16]~50_combout\)))) # (!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[16]~34_combout\ & 
-- (!\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[16]~50_combout\)))
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[16]~34_combout\ & (!\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[16]~50_combout\ & 
-- !\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[16]~34_combout\,
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[16]~50_combout\,
	datad => VCC,
	cin => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X109_Y26_N14
\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[17]~33_combout\) # 
-- (\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[17]~49_combout\)))) # (!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[17]~33_combout\) # 
-- (\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[17]~49_combout\)))))
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[17]~33_combout\) # 
-- (\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[17]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[17]~33_combout\,
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[17]~49_combout\,
	datad => VCC,
	cin => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X109_Y26_N16
\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[18]~48_combout\ & (!\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[18]~32_combout\ & 
-- !\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[18]~48_combout\,
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[18]~32_combout\,
	datad => VCC,
	cin => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X109_Y26_N18
\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X109_Y26_N4
\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[23]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[23]~52_combout\ = (\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[17]~49_combout\) # 
-- ((!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[17]~49_combout\,
	datac => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[23]~52_combout\);

-- Location: LCCOMB_X110_Y26_N8
\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[23]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[23]~36_combout\ = (!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[23]~36_combout\);

-- Location: LCCOMB_X109_Y26_N6
\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[22]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[22]~37_combout\ = (\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[22]~37_combout\);

-- Location: LCCOMB_X109_Y26_N2
\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[22]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[22]~53_combout\ = (\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[16]~50_combout\) # 
-- ((!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[16]~50_combout\,
	datad => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[22]~53_combout\);

-- Location: LCCOMB_X108_Y26_N14
\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[21]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[21]~38_combout\ = (!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[21]~38_combout\);

-- Location: LCCOMB_X108_Y26_N6
\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[21]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[21]~54_combout\ = (\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[15]~51_combout\) # 
-- ((!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[15]~51_combout\,
	datac => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[21]~54_combout\);

-- Location: LCCOMB_X107_Y26_N28
\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[20]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[20]~55_combout\ = (\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\) # 
-- ((!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\,
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[20]~55_combout\);

-- Location: LCCOMB_X108_Y26_N22
\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\) # (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

-- Location: LCCOMB_X108_Y26_N28
\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[20]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\ = (!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\);

-- Location: LCCOMB_X109_Y26_N20
\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[20]~55_combout\) # (\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\)))
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[20]~55_combout\) # (\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[20]~55_combout\,
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\,
	datad => VCC,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X109_Y26_N22
\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[21]~38_combout\) # 
-- (\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[21]~54_combout\)))) # (!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[21]~38_combout\ & 
-- (!\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[21]~54_combout\)))
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[21]~38_combout\ & (!\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[21]~54_combout\ & 
-- !\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[21]~38_combout\,
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[21]~54_combout\,
	datad => VCC,
	cin => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X109_Y26_N24
\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[22]~37_combout\) # 
-- (\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[22]~53_combout\)))) # (!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[22]~37_combout\) # 
-- (\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[22]~53_combout\)))))
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[22]~37_combout\) # 
-- (\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[22]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[22]~37_combout\,
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[22]~53_combout\,
	datad => VCC,
	cin => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X109_Y26_N26
\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[23]~52_combout\ & (!\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[23]~36_combout\ & 
-- !\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[23]~52_combout\,
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[23]~36_combout\,
	datad => VCC,
	cin => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X109_Y26_N28
\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X109_Y27_N30
\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[28]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ = (\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\);

-- Location: LCCOMB_X109_Y27_N0
\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[28]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[28]~56_combout\ = (\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[22]~53_combout\) # 
-- ((\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[22]~53_combout\,
	datac => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[28]~56_combout\);

-- Location: LCCOMB_X108_Y27_N8
\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[27]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\ = (!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\);

-- Location: LCCOMB_X108_Y26_N0
\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[27]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[27]~57_combout\ = (\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[21]~54_combout\) # 
-- ((!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[21]~54_combout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[27]~57_combout\);

-- Location: LCCOMB_X108_Y27_N10
\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[26]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ = (!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\);

-- Location: LCCOMB_X108_Y26_N10
\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[26]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[26]~58_combout\ = (\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[20]~55_combout\) # 
-- ((!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[20]~55_combout\,
	datac => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datad => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[26]~58_combout\);

-- Location: LCCOMB_X111_Y24_N30
\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~37_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\ROM|Mux0~5_combout\ & (\Signed2BCD|Add0~4_combout\)) # (!\ROM|Mux0~5_combout\ & 
-- ((\ROM|Mux5~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Add0~4_combout\,
	datab => \ROM|Mux0~5_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \ROM|Mux5~13_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~37_combout\);

-- Location: LCCOMB_X109_Y27_N6
\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[25]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[25]~59_combout\ = (\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~37_combout\) # 
-- ((!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~37_combout\,
	datad => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[25]~59_combout\);

-- Location: LCCOMB_X109_Y27_N20
\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~38_combout\ = (!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~38_combout\);

-- Location: LCCOMB_X108_Y27_N4
\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~38_combout\) # (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~38_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~37_combout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\);

-- Location: LCCOMB_X108_Y27_N16
\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[25]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[25]~43_combout\ = (\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ & !\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	datac => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[25]~43_combout\);

-- Location: LCCOMB_X108_Y27_N18
\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[25]~59_combout\) # (\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[25]~43_combout\)))
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[25]~59_combout\) # (\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[25]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[25]~59_combout\,
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[25]~43_combout\,
	datad => VCC,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X108_Y27_N20
\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\) # 
-- (\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[26]~58_combout\)))) # (!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ & 
-- (!\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[26]~58_combout\)))
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ & (!\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[26]~58_combout\ & 
-- !\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\,
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[26]~58_combout\,
	datad => VCC,
	cin => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X108_Y27_N22
\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\) # 
-- (\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[27]~57_combout\)))) # (!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\) # 
-- (\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[27]~57_combout\)))))
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\) # 
-- (\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[27]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\,
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[27]~57_combout\,
	datad => VCC,
	cin => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X108_Y27_N24
\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ & (!\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[28]~56_combout\ & 
-- !\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\,
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[28]~56_combout\,
	datad => VCC,
	cin => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X108_Y27_N26
\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X107_Y27_N10
\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[33]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[33]~44_combout\ = (\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[33]~44_combout\);

-- Location: LCCOMB_X108_Y27_N28
\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[33]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[33]~60_combout\ = (\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[27]~57_combout\) # 
-- ((!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[27]~57_combout\,
	datac => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[33]~60_combout\);

-- Location: LCCOMB_X107_Y27_N4
\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[32]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[32]~45_combout\ = (\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[32]~45_combout\);

-- Location: LCCOMB_X108_Y27_N14
\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[32]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[32]~61_combout\ = (\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[26]~58_combout\) # 
-- ((!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[26]~58_combout\,
	datac => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[32]~61_combout\);

-- Location: LCCOMB_X108_Y27_N12
\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[31]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[31]~62_combout\ = (\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[25]~59_combout\) # 
-- ((!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	datad => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[25]~59_combout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[31]~62_combout\);

-- Location: LCCOMB_X107_Y27_N18
\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[31]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[31]~46_combout\ = (\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[31]~46_combout\);

-- Location: LCCOMB_X110_Y27_N22
\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~41_combout\ = (!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\ROM|Mux0~5_combout\ & ((\Signed2BCD|Add0~2_combout\))) # (!\ROM|Mux0~5_combout\ & 
-- (\ROM|Mux6~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux0~5_combout\,
	datab => \ROM|Mux6~12_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Signed2BCD|Add0~2_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~41_combout\);

-- Location: LCCOMB_X110_Y27_N28
\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~40_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\ROM|Mux0~5_combout\ & ((\Signed2BCD|Add0~2_combout\))) # (!\ROM|Mux0~5_combout\ & 
-- (\ROM|Mux6~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux0~5_combout\,
	datab => \ROM|Mux6~12_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Signed2BCD|Add0~2_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~40_combout\);

-- Location: LCCOMB_X110_Y27_N8
\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~41_combout\) # (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~41_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~40_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\);

-- Location: LCCOMB_X107_Y27_N0
\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~42_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ & !\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~42_combout\);

-- Location: LCCOMB_X110_Y27_N10
\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~39_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\ROM|Mux0~5_combout\ & ((\Signed2BCD|Add0~2_combout\))) # (!\ROM|Mux0~5_combout\ & 
-- (\ROM|Mux6~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux0~5_combout\,
	datab => \ROM|Mux6~12_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Signed2BCD|Add0~2_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~39_combout\);

-- Location: LCCOMB_X107_Y27_N8
\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~42_combout\) # (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~42_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~39_combout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\);

-- Location: LCCOMB_X107_Y27_N12
\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[30]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[30]~47_combout\ = (\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ & !\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\,
	datad => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[30]~47_combout\);

-- Location: LCCOMB_X107_Y27_N20
\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[30]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[30]~63_combout\ = (\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~39_combout\) # 
-- ((!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~39_combout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[30]~63_combout\);

-- Location: LCCOMB_X107_Y27_N22
\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[30]~47_combout\) # (\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[30]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[30]~47_combout\,
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[30]~63_combout\,
	datad => VCC,
	cout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X107_Y27_N24
\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[31]~62_combout\ & (!\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[31]~46_combout\ & 
-- !\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[31]~62_combout\,
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[31]~46_combout\,
	datad => VCC,
	cin => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X107_Y27_N26
\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[32]~45_combout\) # 
-- (\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[32]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[32]~45_combout\,
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[32]~61_combout\,
	datad => VCC,
	cin => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X107_Y27_N28
\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[33]~44_combout\ & (!\Signed2BCD|Div0|auto_generated|divider|divider|StageOut[33]~60_combout\ & 
-- !\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[33]~44_combout\,
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|StageOut[33]~60_combout\,
	datad => VCC,
	cin => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X107_Y27_N30
\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X107_Y26_N24
\d1|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n~3_combout\ = (!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \d1|decOut_n~3_combout\);

-- Location: LCCOMB_X109_Y27_N14
\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~56_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~37_combout\) # ((!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~37_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~56_combout\);

-- Location: LCCOMB_X109_Y25_N24
\d1|decOut_n[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[0]~1_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~44_combout\ & (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\ & 
-- (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~59_combout\))) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~44_combout\ & (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~58_combout\ $ 
-- (((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\) # (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~59_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~44_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~59_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~58_combout\,
	combout => \d1|decOut_n[0]~1_combout\);

-- Location: LCCOMB_X110_Y27_N12
\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~57_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~39_combout\) # ((\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ & 
-- !\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~39_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~57_combout\);

-- Location: LCCOMB_X110_Y26_N16
\d1|decOut_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[0]~0_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\) # 
-- ((!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~57_combout\ & !\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~56_combout\)))) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\ & 
-- (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~57_combout\ & (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~56_combout\ & \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~57_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~56_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\,
	combout => \d1|decOut_n[0]~0_combout\);

-- Location: LCCOMB_X110_Y26_N18
\d1|decOut_n[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[0]~2_combout\ = (\d1|decOut_n[0]~1_combout\ & (((\d1|decOut_n[0]~0_combout\)))) # (!\d1|decOut_n[0]~1_combout\ & (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~56_combout\ & 
-- (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~56_combout\,
	datab => \d1|decOut_n[0]~1_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\,
	datad => \d1|decOut_n[0]~0_combout\,
	combout => \d1|decOut_n[0]~2_combout\);

-- Location: LCCOMB_X110_Y26_N0
\d1|decOut_n[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[0]~6_combout\ = (\d1|decOut_n[0]~4_combout\ & ((\d1|decOut_n~3_combout\) # ((\d1|decOut_n[6]~5_combout\ & \d1|decOut_n[0]~2_combout\)))) # (!\d1|decOut_n[0]~4_combout\ & (\d1|decOut_n[6]~5_combout\ & ((\d1|decOut_n[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|decOut_n[0]~4_combout\,
	datab => \d1|decOut_n[6]~5_combout\,
	datac => \d1|decOut_n~3_combout\,
	datad => \d1|decOut_n[0]~2_combout\,
	combout => \d1|decOut_n[0]~6_combout\);

-- Location: LCCOMB_X110_Y25_N8
\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~30_combout\) # 
-- ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~53_combout\)))) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (((\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~30_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~53_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\);

-- Location: LCCOMB_X110_Y28_N8
\d1|decOut_n[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[0]~7_combout\ = (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\ & (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~49_combout\ $ 
-- (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~49_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\,
	combout => \d1|decOut_n[0]~7_combout\);

-- Location: LCCOMB_X108_Y27_N2
\d1|decOut_n[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[0]~8_combout\ = (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~38_combout\ & (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~39_combout\ & 
-- (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~42_combout\ & !\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~38_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~39_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~42_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~37_combout\,
	combout => \d1|decOut_n[0]~8_combout\);

-- Location: LCCOMB_X110_Y28_N30
\d1|decOut_n[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[0]~9_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\ & (\d1|decOut_n[0]~7_combout\ & !\d1|decOut_n[0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\,
	datab => \d1|decOut_n[0]~7_combout\,
	datac => \d1|decOut_n[0]~8_combout\,
	combout => \d1|decOut_n[0]~9_combout\);

-- Location: LCCOMB_X109_Y25_N12
\d1|decOut_n[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[0]~10_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~60_combout\ & (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\ & 
-- (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~59_combout\))) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~60_combout\ & (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~45_combout\ $ 
-- (((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\) # (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~59_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~60_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~59_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~45_combout\,
	combout => \d1|decOut_n[0]~10_combout\);

-- Location: LCCOMB_X110_Y28_N16
\d1|decOut_n[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[0]~11_combout\ = (\d1|decOut_n[0]~10_combout\) # ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\ & (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~57_combout\ & 
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~57_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~56_combout\,
	datad => \d1|decOut_n[0]~10_combout\,
	combout => \d1|decOut_n[0]~11_combout\);

-- Location: LCCOMB_X110_Y28_N18
\d1|decOut_n[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[0]~12_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\ & (\d1|decOut_n[0]~1_combout\ & \d1|decOut_n[0]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\,
	datab => \d1|decOut_n[0]~1_combout\,
	datad => \d1|decOut_n[0]~11_combout\,
	combout => \d1|decOut_n[0]~12_combout\);

-- Location: LCCOMB_X110_Y28_N24
\d1|decOut_n[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[0]~13_combout\ = (\d1|decOut_n[0]~6_combout\) # ((!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\ & ((\d1|decOut_n[0]~9_combout\) # (\d1|decOut_n[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|decOut_n[0]~6_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\,
	datac => \d1|decOut_n[0]~9_combout\,
	datad => \d1|decOut_n[0]~12_combout\,
	combout => \d1|decOut_n[0]~13_combout\);

-- Location: LCCOMB_X110_Y28_N10
\d1|decOut_n[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[0]~18_combout\ = (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\ & ((!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~57_combout\) # 
-- (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~56_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~57_combout\,
	combout => \d1|decOut_n[0]~18_combout\);

-- Location: LCCOMB_X110_Y28_N12
\d1|decOut_n[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[1]~19_combout\ = (\d1|decOut_n[0]~18_combout\ & (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\ & (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\ & !\d1|decOut_n[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|decOut_n[0]~18_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\,
	datad => \d1|decOut_n[0]~1_combout\,
	combout => \d1|decOut_n[1]~19_combout\);

-- Location: LCCOMB_X110_Y28_N22
\d1|decOut_n[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[0]~15_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~49_combout\ & (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\ & 
-- ((!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\)))) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~49_combout\ & (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\ & 
-- (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\ & \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~49_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\,
	combout => \d1|decOut_n[0]~15_combout\);

-- Location: LCCOMB_X107_Y26_N2
\d1|decOut_n~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n~14_combout\ = (!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # (!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \d1|decOut_n~14_combout\);

-- Location: LCCOMB_X110_Y27_N0
\d1|decOut_n[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[6]~16_combout\ = (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\ & (((!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~56_combout\ & 
-- !\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~57_combout\)) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~56_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~57_combout\,
	combout => \d1|decOut_n[6]~16_combout\);

-- Location: LCCOMB_X110_Y28_N20
\d1|decOut_n[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[1]~17_combout\ = (\d1|decOut_n~14_combout\ & ((\d1|decOut_n[0]~15_combout\) # ((\d1|decOut_n[0]~7_combout\ & \d1|decOut_n[6]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|decOut_n[0]~15_combout\,
	datab => \d1|decOut_n~14_combout\,
	datac => \d1|decOut_n[0]~7_combout\,
	datad => \d1|decOut_n[6]~16_combout\,
	combout => \d1|decOut_n[1]~17_combout\);

-- Location: LCCOMB_X110_Y28_N28
\d1|decOut_n[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[1]~21_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\ & (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\ & 
-- (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~56_combout\ & \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~57_combout\))) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\ & 
-- (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~56_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~57_combout\,
	combout => \d1|decOut_n[1]~21_combout\);

-- Location: LCCOMB_X110_Y28_N26
\d1|decOut_n[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[1]~20_combout\ = (\d1|decOut_n[0]~10_combout\ & (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\) # (!\d1|decOut_n[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|decOut_n[0]~10_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\,
	datac => \d1|decOut_n[0]~8_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\,
	combout => \d1|decOut_n[1]~20_combout\);

-- Location: LCCOMB_X110_Y28_N14
\d1|decOut_n[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[1]~22_combout\ = (\d1|decOut_n[1]~20_combout\) # ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\ & (\d1|decOut_n[1]~21_combout\ & !\d1|decOut_n[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\,
	datab => \d1|decOut_n[1]~21_combout\,
	datac => \d1|decOut_n[1]~20_combout\,
	datad => \d1|decOut_n[0]~10_combout\,
	combout => \d1|decOut_n[1]~22_combout\);

-- Location: LCCOMB_X110_Y28_N4
\d1|decOut_n[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[1]~23_combout\ = (\d1|decOut_n[1]~19_combout\) # ((\d1|decOut_n[1]~17_combout\) # ((\d1|decOut_n[1]~22_combout\ & \d1|decOut_n[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|decOut_n[1]~19_combout\,
	datab => \d1|decOut_n[1]~17_combout\,
	datac => \d1|decOut_n[1]~22_combout\,
	datad => \d1|decOut_n[0]~1_combout\,
	combout => \d1|decOut_n[1]~23_combout\);

-- Location: LCCOMB_X108_Y26_N24
\d1|decOut_n[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[0]~24_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~46_combout\ & (((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\) # 
-- (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\)))) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~46_combout\ & (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~61_combout\ & 
-- ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\) # (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~46_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~61_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\,
	combout => \d1|decOut_n[0]~24_combout\);

-- Location: LCCOMB_X110_Y26_N30
\d1|decOut_n[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[2]~25_combout\ = (\d1|decOut_n[0]~1_combout\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\ & (\d1|decOut_n[0]~24_combout\ & \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\)) # 
-- (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\ & ((!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|decOut_n[0]~1_combout\,
	datab => \d1|decOut_n[0]~24_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\,
	combout => \d1|decOut_n[2]~25_combout\);

-- Location: LCCOMB_X110_Y28_N6
\d1|decOut_n[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[2]~26_combout\ = (\d1|decOut_n[2]~25_combout\) # ((\d1|decOut_n[6]~16_combout\ & \d1|decOut_n[0]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|decOut_n[6]~16_combout\,
	datac => \d1|decOut_n[0]~7_combout\,
	datad => \d1|decOut_n[2]~25_combout\,
	combout => \d1|decOut_n[2]~26_combout\);

-- Location: LCCOMB_X110_Y28_N0
\d1|decOut_n[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[2]~27_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\ & 
-- ((!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~57_combout\) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~56_combout\))) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\ & 
-- (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~56_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~57_combout\,
	combout => \d1|decOut_n[2]~27_combout\);

-- Location: LCCOMB_X110_Y28_N2
\d1|decOut_n[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[2]~28_combout\ = (\d1|decOut_n[2]~26_combout\ & ((\d1|decOut_n~14_combout\) # ((\d1|decOut_n[0]~7_combout\ & \d1|decOut_n[2]~27_combout\)))) # (!\d1|decOut_n[2]~26_combout\ & (\d1|decOut_n[0]~7_combout\ & ((\d1|decOut_n[2]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|decOut_n[2]~26_combout\,
	datab => \d1|decOut_n[0]~7_combout\,
	datac => \d1|decOut_n~14_combout\,
	datad => \d1|decOut_n[2]~27_combout\,
	combout => \d1|decOut_n[2]~28_combout\);

-- Location: LCCOMB_X109_Y27_N26
\d1|decOut_n[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[3]~39_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\ & (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\ & 
-- ((!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~57_combout\)))) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\ & (((!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~49_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~57_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\,
	combout => \d1|decOut_n[3]~39_combout\);

-- Location: LCCOMB_X109_Y27_N12
\d1|decOut_n[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[3]~40_combout\ = (\d1|decOut_n[3]~39_combout\ & (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~56_combout\ & !\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|decOut_n[3]~39_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~56_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\,
	combout => \d1|decOut_n[3]~40_combout\);

-- Location: LCCOMB_X109_Y27_N28
\d1|decOut_n[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[3]~38_combout\ = (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\ & (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~49_combout\ & 
-- ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~49_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\,
	combout => \d1|decOut_n[3]~38_combout\);

-- Location: LCCOMB_X109_Y25_N28
\d1|decOut_n[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[3]~42_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~44_combout\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\) # 
-- ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~59_combout\)))) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~44_combout\ & (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~58_combout\ & 
-- ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\) # (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~44_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~59_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~58_combout\,
	combout => \d1|decOut_n[3]~42_combout\);

-- Location: LCCOMB_X109_Y27_N10
\d1|decOut_n[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[3]~41_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~56_combout\ & (((!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\)))) # 
-- (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~56_combout\ & (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~57_combout\ & ((!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\) # 
-- (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~57_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~56_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\,
	combout => \d1|decOut_n[3]~41_combout\);

-- Location: LCCOMB_X109_Y27_N8
\d1|decOut_n[3]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[3]~43_combout\ = (\d1|decOut_n[3]~40_combout\) # ((\d1|decOut_n[3]~38_combout\) # ((\d1|decOut_n[3]~42_combout\ & \d1|decOut_n[3]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|decOut_n[3]~40_combout\,
	datab => \d1|decOut_n[3]~38_combout\,
	datac => \d1|decOut_n[3]~42_combout\,
	datad => \d1|decOut_n[3]~41_combout\,
	combout => \d1|decOut_n[3]~43_combout\);

-- Location: LCCOMB_X110_Y26_N28
\d1|decOut_n[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[3]~29_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~49_combout\ & (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~57_combout\ & 
-- (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\ & \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\))) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~49_combout\ & 
-- ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~57_combout\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\))) # 
-- (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~57_combout\ & (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\ & \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~49_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~57_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\,
	combout => \d1|decOut_n[3]~29_combout\);

-- Location: LCCOMB_X110_Y26_N26
\d1|decOut_n[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[3]~30_combout\ = (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\ & (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\ $ 
-- (((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~56_combout\ & \d1|decOut_n[3]~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~56_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\,
	datad => \d1|decOut_n[3]~29_combout\,
	combout => \d1|decOut_n[3]~30_combout\);

-- Location: LCCOMB_X109_Y25_N26
\d1|decOut_n[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[3]~31_combout\ = (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~57_combout\ & (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\ & 
-- (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~59_combout\ & !\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~57_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~59_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~56_combout\,
	combout => \d1|decOut_n[3]~31_combout\);

-- Location: LCCOMB_X109_Y26_N8
\d1|decOut_n[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[3]~32_combout\ = (\d1|decOut_n[3]~30_combout\) # ((\d1|decOut_n[6]~5_combout\ & (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~49_combout\ & \d1|decOut_n[3]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|decOut_n[6]~5_combout\,
	datab => \d1|decOut_n[3]~30_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~49_combout\,
	datad => \d1|decOut_n[3]~31_combout\,
	combout => \d1|decOut_n[3]~32_combout\);

-- Location: LCCOMB_X107_Y26_N4
\d1|decOut_n[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[3]~36_combout\ = (!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \d1|decOut_n[3]~36_combout\);

-- Location: LCCOMB_X110_Y25_N10
\d1|decOut_n[6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[6]~33_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~56_combout\) # 
-- (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~57_combout\))) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\ & (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~56_combout\ & 
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~56_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~57_combout\,
	combout => \d1|decOut_n[6]~33_combout\);

-- Location: LCCOMB_X110_Y25_N0
\d1|decOut_n[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[6]~34_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\) # 
-- ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\) # (\d1|decOut_n[6]~33_combout\)))) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\ & 
-- (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\ & (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\ & \d1|decOut_n[6]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\,
	datad => \d1|decOut_n[6]~33_combout\,
	combout => \d1|decOut_n[6]~34_combout\);

-- Location: LCCOMB_X110_Y26_N4
\d1|decOut_n[6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[6]~35_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~49_combout\ & (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\ $ (((\d1|decOut_n[6]~34_combout\))))) # 
-- (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~49_combout\ & (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\ & (\d1|decOut_n[6]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\,
	datab => \d1|decOut_n[6]~16_combout\,
	datac => \d1|decOut_n[6]~34_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~49_combout\,
	combout => \d1|decOut_n[6]~35_combout\);

-- Location: LCCOMB_X108_Y26_N26
\d1|decOut_n[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[3]~37_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\ & (\d1|decOut_n[3]~32_combout\)) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\ & (((\d1|decOut_n[3]~36_combout\ & 
-- \d1|decOut_n[6]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\,
	datab => \d1|decOut_n[3]~32_combout\,
	datac => \d1|decOut_n[3]~36_combout\,
	datad => \d1|decOut_n[6]~35_combout\,
	combout => \d1|decOut_n[3]~37_combout\);

-- Location: LCCOMB_X108_Y26_N4
\d1|decOut_n[3]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[3]~44_combout\ = (\d1|decOut_n[3]~37_combout\) # ((!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\ & (\d1|decOut_n[3]~43_combout\ & !\d1|decOut_n[6]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\,
	datab => \d1|decOut_n[3]~43_combout\,
	datac => \d1|decOut_n[3]~37_combout\,
	datad => \d1|decOut_n[6]~35_combout\,
	combout => \d1|decOut_n[3]~44_combout\);

-- Location: LCCOMB_X107_Y26_N26
\d1|decOut_n[4]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[4]~45_combout\ = (\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # (!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))) # (!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (((!\Signed2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Signed2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \d1|decOut_n[4]~45_combout\);

-- Location: LCCOMB_X110_Y26_N12
\d1|decOut_n[5]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[5]~49_combout\ = (\d1|decOut_n[0]~1_combout\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\ & (\d1|decOut_n[0]~24_combout\ & \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\)) # 
-- (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\ & ((!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\))))) # (!\d1|decOut_n[0]~1_combout\ & 
-- (((!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|decOut_n[0]~1_combout\,
	datab => \d1|decOut_n[0]~24_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\,
	combout => \d1|decOut_n[5]~49_combout\);

-- Location: LCCOMB_X110_Y26_N22
\d1|decOut_n[5]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[5]~46_combout\ = (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~49_combout\ & 
-- (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\ & !\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\)) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~49_combout\ & 
-- (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\ & \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~49_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\,
	combout => \d1|decOut_n[5]~46_combout\);

-- Location: LCCOMB_X110_Y26_N24
\d1|decOut_n[5]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[5]~47_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\ & (((!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\ & !\d1|decOut_n[0]~18_combout\)))) # 
-- (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\ & (!\d1|decOut_n[6]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\,
	datab => \d1|decOut_n[6]~16_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\,
	datad => \d1|decOut_n[0]~18_combout\,
	combout => \d1|decOut_n[5]~47_combout\);

-- Location: LCCOMB_X110_Y26_N14
\d1|decOut_n[5]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[5]~48_combout\ = (\d1|decOut_n[5]~46_combout\ & (((!\d1|decOut_n[0]~1_combout\ & \d1|decOut_n[5]~47_combout\)) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\))) # (!\d1|decOut_n[5]~46_combout\ & 
-- (((!\d1|decOut_n[0]~1_combout\ & \d1|decOut_n[5]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|decOut_n[5]~46_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\,
	datac => \d1|decOut_n[0]~1_combout\,
	datad => \d1|decOut_n[5]~47_combout\,
	combout => \d1|decOut_n[5]~48_combout\);

-- Location: LCCOMB_X110_Y26_N10
\d1|decOut_n[5]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[5]~50_combout\ = (\d1|decOut_n[5]~48_combout\) # ((\d1|decOut_n[5]~49_combout\ & \d1|decOut_n~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|decOut_n[5]~49_combout\,
	datab => \d1|decOut_n[5]~48_combout\,
	datac => \d1|decOut_n~3_combout\,
	combout => \d1|decOut_n[5]~50_combout\);

-- Location: LCCOMB_X110_Y26_N20
\d1|decOut_n[6]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[6]~51_combout\ = (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~49_combout\ & (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\ & 
-- (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\ & \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~49_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\,
	combout => \d1|decOut_n[6]~51_combout\);

-- Location: LCCOMB_X110_Y26_N2
\d1|decOut_n[6]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[6]~52_combout\ = (\d1|decOut_n[6]~51_combout\) # ((!\d1|decOut_n[0]~1_combout\ & (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\ & !\d1|decOut_n[0]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|decOut_n[0]~1_combout\,
	datab => \d1|decOut_n[6]~51_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\,
	datad => \d1|decOut_n[0]~18_combout\,
	combout => \d1|decOut_n[6]~52_combout\);

-- Location: LCCOMB_X108_Y26_N18
\d1|decOut_n[6]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[6]~53_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\ & (\d1|decOut_n[6]~52_combout\)) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\ & (((!\d1|decOut_n[3]~36_combout\ & 
-- \d1|decOut_n[6]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\,
	datab => \d1|decOut_n[6]~52_combout\,
	datac => \d1|decOut_n[3]~36_combout\,
	datad => \d1|decOut_n[6]~35_combout\,
	combout => \d1|decOut_n[6]~53_combout\);

-- Location: LCCOMB_X109_Y27_N22
\d1|decOut_n[6]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[6]~56_combout\ = ((!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\ & (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~37_combout\ & 
-- !\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~38_combout\))) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~37_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~38_combout\,
	combout => \d1|decOut_n[6]~56_combout\);

-- Location: LCCOMB_X109_Y27_N2
\d1|decOut_n[6]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[6]~54_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\ & (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\ & 
-- ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\)))) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~57_combout\ & 
-- ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\))) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~57_combout\ & (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~57_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\,
	combout => \d1|decOut_n[6]~54_combout\);

-- Location: LCCOMB_X109_Y27_N16
\d1|decOut_n[6]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[6]~55_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~56_combout\ & (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\ & 
-- ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\)))) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~56_combout\ & (((\d1|decOut_n[6]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\,
	datab => \d1|decOut_n[6]~54_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~56_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\,
	combout => \d1|decOut_n[6]~55_combout\);

-- Location: LCCOMB_X109_Y27_N24
\d1|decOut_n[6]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[6]~57_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~49_combout\ & (((\d1|decOut_n[6]~55_combout\)))) # (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~49_combout\ & (\d1|decOut_n[6]~56_combout\ & 
-- ((!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|decOut_n[6]~56_combout\,
	datab => \d1|decOut_n[6]~55_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~49_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~35_combout\,
	combout => \d1|decOut_n[6]~57_combout\);

-- Location: LCCOMB_X109_Y26_N30
\d1|decOut_n[6]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|decOut_n[6]~58_combout\ = (\d1|decOut_n[6]~53_combout\) # ((!\d1|decOut_n[6]~35_combout\ & (\d1|decOut_n[6]~57_combout\ & !\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|decOut_n[6]~35_combout\,
	datab => \d1|decOut_n[6]~53_combout\,
	datac => \d1|decOut_n[6]~57_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~36_combout\,
	combout => \d1|decOut_n[6]~58_combout\);

-- Location: LCCOMB_X108_Y25_N0
\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\) # (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~59_combout\)))
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\) # (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~59_combout\,
	datad => VCC,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X108_Y25_N2
\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~45_combout\) # 
-- (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~60_combout\)))) # (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~45_combout\ & 
-- (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~60_combout\)))
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~45_combout\ & (!\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~60_combout\ & 
-- !\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~45_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~60_combout\,
	datad => VCC,
	cin => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X108_Y25_N4
\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~44_combout\) # 
-- (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~58_combout\)))) # (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~44_combout\) # 
-- (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~58_combout\)))))
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~44_combout\) # 
-- (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~44_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~58_combout\,
	datad => VCC,
	cin => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X108_Y25_N6
\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X108_Y25_N20
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~44_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~44_combout\);

-- Location: LCCOMB_X108_Y25_N16
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~70_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~58_combout\) # 
-- ((\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & !\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[63]~58_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~70_combout\);

-- Location: LCCOMB_X108_Y25_N30
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~71_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~60_combout\) # 
-- ((\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ & !\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[62]~60_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~71_combout\);

-- Location: LCCOMB_X108_Y25_N14
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~45_combout\ = (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~45_combout\);

-- Location: LCCOMB_X108_Y25_N28
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~46_combout\ = (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~46_combout\);

-- Location: LCCOMB_X108_Y25_N12
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~72_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~59_combout\) # 
-- ((\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[61]~59_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~72_combout\);

-- Location: LCCOMB_X108_Y26_N8
\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~46_combout\) # (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~46_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~61_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\);

-- Location: LCCOMB_X108_Y25_N18
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~47_combout\ = (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~47_combout\);

-- Location: LCCOMB_X108_Y25_N10
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~73_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~61_combout\) # 
-- ((!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[60]~61_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~73_combout\);

-- Location: LCCOMB_X107_Y25_N22
\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~47_combout\) # (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~73_combout\)))
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~47_combout\) # (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~47_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~73_combout\,
	datad => VCC,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X107_Y25_N24
\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~46_combout\) # 
-- (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~72_combout\)))) # (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~46_combout\ & 
-- (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~72_combout\)))
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~46_combout\ & (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~72_combout\ & 
-- !\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~46_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~72_combout\,
	datad => VCC,
	cin => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X107_Y25_N26
\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~71_combout\) # 
-- (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~45_combout\)))) # (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~71_combout\) # 
-- (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~45_combout\)))))
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~71_combout\) # 
-- (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~71_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~45_combout\,
	datad => VCC,
	cin => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X107_Y25_N28
\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~44_combout\) # 
-- (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~70_combout\)))) # (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~44_combout\ & 
-- (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~70_combout\)))
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~44_combout\ & (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~70_combout\ & 
-- !\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~44_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~70_combout\,
	datad => VCC,
	cin => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X107_Y25_N30
\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X108_Y25_N8
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~48_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~48_combout\);

-- Location: LCCOMB_X108_Y25_N24
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~74_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~70_combout\) # 
-- ((!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~70_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~74_combout\);

-- Location: LCCOMB_X107_Y26_N8
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~49_combout\ = (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~49_combout\);

-- Location: LCCOMB_X107_Y25_N2
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~75_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~71_combout\) # 
-- ((\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~71_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~75_combout\);

-- Location: LCCOMB_X107_Y25_N4
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~50_combout\ = (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~50_combout\);

-- Location: LCCOMB_X107_Y25_N0
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~76_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~72_combout\) # 
-- ((\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~72_combout\,
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~76_combout\);

-- Location: LCCOMB_X108_Y25_N26
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~51_combout\ = (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~51_combout\);

-- Location: LCCOMB_X108_Y25_N22
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~77_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~73_combout\) # 
-- ((!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~73_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~77_combout\);

-- Location: LCCOMB_X107_Y26_N30
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~78_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\) # 
-- ((\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & !\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~78_combout\);

-- Location: LCCOMB_X107_Y26_N0
\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\) # (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

-- Location: LCCOMB_X107_Y26_N6
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~52_combout\ = (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~52_combout\);

-- Location: LCCOMB_X107_Y25_N6
\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~78_combout\) # (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~52_combout\)))
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~78_combout\) # (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~78_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~52_combout\,
	datad => VCC,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X107_Y25_N8
\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~51_combout\) # 
-- (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~77_combout\)))) # (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~51_combout\ & 
-- (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~77_combout\)))
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~51_combout\ & (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~77_combout\ & 
-- !\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~51_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~77_combout\,
	datad => VCC,
	cin => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X107_Y25_N10
\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~50_combout\) # 
-- (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~76_combout\)))) # (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~50_combout\) # 
-- (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~76_combout\)))))
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~50_combout\) # 
-- (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~50_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~76_combout\,
	datad => VCC,
	cin => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X107_Y25_N12
\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~49_combout\) # 
-- (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~75_combout\)))) # (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~49_combout\ & 
-- (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~75_combout\)))
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~49_combout\ & (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~75_combout\ & 
-- !\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~49_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~75_combout\,
	datad => VCC,
	cin => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X107_Y25_N14
\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~48_combout\) # 
-- (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~74_combout\))))) # (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~48_combout\) # 
-- ((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~74_combout\) # (GND))))
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~48_combout\) # ((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~74_combout\) # 
-- (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~48_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~74_combout\,
	datad => VCC,
	cin => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X107_Y25_N16
\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X106_Y26_N8
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~53_combout\ = (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~53_combout\);

-- Location: LCCOMB_X107_Y25_N18
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~79_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~74_combout\) # 
-- ((\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~74_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~79_combout\);

-- Location: LCCOMB_X106_Y26_N30
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~54_combout\ = (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~54_combout\);

-- Location: LCCOMB_X107_Y26_N16
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~80_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~75_combout\) # 
-- ((!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~75_combout\,
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~80_combout\);

-- Location: LCCOMB_X106_Y26_N12
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~55_combout\ = (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~55_combout\);

-- Location: LCCOMB_X107_Y26_N18
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~81_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~76_combout\) # 
-- ((!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~76_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~81_combout\);

-- Location: LCCOMB_X106_Y26_N6
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~56_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~56_combout\);

-- Location: LCCOMB_X107_Y25_N20
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~82_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~77_combout\) # 
-- ((!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~77_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~82_combout\);

-- Location: LCCOMB_X107_Y26_N20
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~83_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~78_combout\) # 
-- ((!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~78_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~83_combout\);

-- Location: LCCOMB_X107_Y26_N12
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~57_combout\ = (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~57_combout\);

-- Location: LCCOMB_X109_Y27_N4
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~84_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~37_combout\) # 
-- ((!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~37_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~84_combout\);

-- Location: LCCOMB_X108_Y27_N30
\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~38_combout\) # (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~38_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~37_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\);

-- Location: LCCOMB_X107_Y26_N10
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~58_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ & !\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~58_combout\);

-- Location: LCCOMB_X106_Y26_N14
\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~84_combout\) # (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~58_combout\)))
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~84_combout\) # (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~84_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~58_combout\,
	datad => VCC,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X106_Y26_N16
\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~83_combout\) # 
-- (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~57_combout\)))) # (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~83_combout\ & 
-- (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~57_combout\)))
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~83_combout\ & (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~57_combout\ & 
-- !\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~83_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~57_combout\,
	datad => VCC,
	cin => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X106_Y26_N18
\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~56_combout\) # 
-- (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~82_combout\)))) # (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~56_combout\) # 
-- (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~82_combout\)))))
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~56_combout\) # 
-- (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~56_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~82_combout\,
	datad => VCC,
	cin => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X106_Y26_N20
\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~55_combout\) # 
-- (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~81_combout\)))) # (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~55_combout\ & 
-- (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~81_combout\)))
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~55_combout\ & (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~81_combout\ & 
-- !\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~55_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~81_combout\,
	datad => VCC,
	cin => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X106_Y26_N22
\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~54_combout\) # 
-- (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~80_combout\))))) # (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~54_combout\) # 
-- ((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~80_combout\) # (GND))))
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~54_combout\) # ((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~80_combout\) # 
-- (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~54_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~80_combout\,
	datad => VCC,
	cin => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X106_Y26_N24
\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~53_combout\) # 
-- (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~79_combout\)))) # (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~53_combout\ & 
-- (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~79_combout\)))
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~53_combout\ & (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~79_combout\ & 
-- !\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~53_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~79_combout\,
	datad => VCC,
	cin => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X106_Y26_N26
\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X106_Y30_N28
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~59_combout\ = (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~59_combout\);

-- Location: LCCOMB_X107_Y26_N22
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~85_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~83_combout\) # 
-- ((\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~83_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~85_combout\);

-- Location: LCCOMB_X107_Y27_N2
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~86_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~84_combout\) # 
-- ((\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ & !\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~84_combout\,
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~86_combout\);

-- Location: LCCOMB_X106_Y30_N2
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~60_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~60_combout\);

-- Location: LCCOMB_X107_Y27_N6
\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~42_combout\) # (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~42_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~39_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\);

-- Location: LCCOMB_X107_Y27_N14
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~61_combout\ = (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~61_combout\);

-- Location: LCCOMB_X107_Y27_N16
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~87_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~39_combout\) # 
-- ((!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~39_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~87_combout\);

-- Location: LCCOMB_X106_Y30_N8
\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~61_combout\) # (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~87_combout\)))
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~61_combout\) # (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~61_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~87_combout\,
	datad => VCC,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X106_Y30_N10
\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~86_combout\) # 
-- (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~60_combout\)))) # (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~86_combout\ & 
-- (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~60_combout\)))
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~86_combout\ & (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~60_combout\ & 
-- !\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~86_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~60_combout\,
	datad => VCC,
	cin => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X106_Y30_N12
\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~59_combout\) # 
-- (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~85_combout\)))) # (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~59_combout\) # 
-- (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~85_combout\)))))
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~59_combout\) # 
-- (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~59_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~85_combout\,
	datad => VCC,
	cin => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X106_Y26_N10
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~88_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~79_combout\) # 
-- ((!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~79_combout\,
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~88_combout\);

-- Location: LCCOMB_X106_Y30_N0
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~62_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~62_combout\);

-- Location: LCCOMB_X106_Y30_N6
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~63_combout\ = (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~63_combout\);

-- Location: LCCOMB_X106_Y26_N4
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~89_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~80_combout\) # 
-- ((!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~80_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~89_combout\);

-- Location: LCCOMB_X106_Y26_N0
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~90_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~81_combout\) # 
-- ((!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~81_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~90_combout\);

-- Location: LCCOMB_X106_Y30_N4
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~64_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~64_combout\);

-- Location: LCCOMB_X106_Y26_N28
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~65_combout\ = (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~65_combout\);

-- Location: LCCOMB_X106_Y26_N2
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~91_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~82_combout\) # 
-- ((!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~82_combout\,
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~91_combout\);

-- Location: LCCOMB_X106_Y30_N14
\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~65_combout\ & (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~91_combout\ & 
-- !\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~65_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~91_combout\,
	datad => VCC,
	cin => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X106_Y30_N16
\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~90_combout\) # ((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~64_combout\) # 
-- (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~90_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~64_combout\,
	datad => VCC,
	cin => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X106_Y30_N18
\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~63_combout\ & (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~89_combout\ & 
-- !\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~63_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~89_combout\,
	datad => VCC,
	cin => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X106_Y30_N20
\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~88_combout\) # ((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~62_combout\) # 
-- (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~88_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~62_combout\,
	datad => VCC,
	cin => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X106_Y30_N22
\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X106_Y30_N30
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~66_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~59_combout\) # 
-- (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~85_combout\)))) # (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~59_combout\,
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~85_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~66_combout\);

-- Location: LCCOMB_X106_Y30_N24
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~68_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~61_combout\) # 
-- (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~87_combout\)))) # (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~61_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~87_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~68_combout\);

-- Location: LCCOMB_X106_Y30_N26
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~69_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~60_combout\) # 
-- (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~86_combout\)))) # (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~60_combout\,
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~86_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~69_combout\);

-- Location: LCCOMB_X110_Y27_N4
\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[56]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[56]~64_combout\ = (!\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\ROM|Mux7~9_combout\ $ (((\ROM|Mux7~8_combout\) # (!\ROM|Mux7~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux7~8_combout\,
	datab => \ROM|Mux7~9_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \ROM|Mux7~0_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[56]~64_combout\);

-- Location: LCCOMB_X110_Y27_N18
\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[56]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[56]~63_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\ROM|Mux7~9_combout\ $ (((\ROM|Mux7~8_combout\) # (!\ROM|Mux7~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux7~8_combout\,
	datab => \ROM|Mux7~9_combout\,
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \ROM|Mux7~0_combout\,
	combout => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[56]~63_combout\);

-- Location: LCCOMB_X110_Y27_N30
\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\ = (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[56]~64_combout\) # (\Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[56]~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[56]~64_combout\,
	datad => \Signed2BCD|Mod0|auto_generated|divider|divider|StageOut[56]~63_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\);

-- Location: LCCOMB_X110_Y27_N2
\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[56]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[56]~67_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\ROM|Mux7~10_combout\))) # 
-- (!\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\,
	datad => \ROM|Mux7~10_combout\,
	combout => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[56]~67_combout\);

-- Location: LCCOMB_X110_Y53_N4
\d0|decOut_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d0|decOut_n[0]~0_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~66_combout\ & (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[56]~67_combout\ & (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~68_combout\ 
-- $ (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~69_combout\)))) # (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~66_combout\ & (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~68_combout\ & 
-- (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~69_combout\ $ (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[56]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~66_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~68_combout\,
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~69_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[56]~67_combout\,
	combout => \d0|decOut_n[0]~0_combout\);

-- Location: LCCOMB_X110_Y53_N2
\d0|decOut_n[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d0|decOut_n[1]~1_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~66_combout\ & ((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[56]~67_combout\ & 
-- (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~68_combout\)) # (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[56]~67_combout\ & ((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~69_combout\))))) # 
-- (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~66_combout\ & (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~69_combout\ & (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~68_combout\ $ 
-- (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[56]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~66_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~68_combout\,
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~69_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[56]~67_combout\,
	combout => \d0|decOut_n[1]~1_combout\);

-- Location: LCCOMB_X110_Y53_N0
\d0|decOut_n[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d0|decOut_n[2]~2_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~66_combout\ & (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~69_combout\ & 
-- ((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~68_combout\) # (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[56]~67_combout\)))) # (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~66_combout\ & 
-- (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~68_combout\ & (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~69_combout\ & !\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[56]~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~66_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~68_combout\,
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~69_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[56]~67_combout\,
	combout => \d0|decOut_n[2]~2_combout\);

-- Location: LCCOMB_X110_Y53_N6
\d0|decOut_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d0|decOut_n[3]~3_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~68_combout\ & ((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~69_combout\ & 
-- ((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[56]~67_combout\))) # (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~69_combout\ & (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~66_combout\ & 
-- !\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[56]~67_combout\)))) # (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~68_combout\ & (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~66_combout\ & 
-- (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~69_combout\ $ (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[56]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~66_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~68_combout\,
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~69_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[56]~67_combout\,
	combout => \d0|decOut_n[3]~3_combout\);

-- Location: LCCOMB_X110_Y53_N16
\d0|decOut_n[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d0|decOut_n[4]~4_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~68_combout\ & (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~66_combout\ & 
-- ((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[56]~67_combout\)))) # (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~68_combout\ & ((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~69_combout\ & 
-- (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~66_combout\)) # (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~69_combout\ & ((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[56]~67_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~66_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~68_combout\,
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~69_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[56]~67_combout\,
	combout => \d0|decOut_n[4]~4_combout\);

-- Location: LCCOMB_X110_Y53_N22
\d0|decOut_n[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \d0|decOut_n[5]~5_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~68_combout\ & (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~66_combout\ & 
-- ((\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[56]~67_combout\) # (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~69_combout\)))) # (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~68_combout\ & 
-- (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[56]~67_combout\ & (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~66_combout\ $ (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~66_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~68_combout\,
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~69_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[56]~67_combout\,
	combout => \d0|decOut_n[5]~5_combout\);

-- Location: LCCOMB_X110_Y53_N12
\d0|decOut_n[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d0|decOut_n[6]~6_combout\ = (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[56]~67_combout\ & (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~66_combout\ & (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~68_combout\ 
-- $ (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~69_combout\)))) # (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[56]~67_combout\ & (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~68_combout\ & 
-- (\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~66_combout\ $ (!\Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~66_combout\,
	datab => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~68_combout\,
	datac => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~69_combout\,
	datad => \Signed2BCD|Mod1|auto_generated|divider|divider|StageOut[56]~67_combout\,
	combout => \d0|decOut_n[6]~6_combout\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;
END structure;



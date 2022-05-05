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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "04/21/2022 11:51:10"

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

ENTITY 	ShiftRegister_Demo IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(0 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0)
	);
END ShiftRegister_Demo;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ShiftRegister_Demo IS
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
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \div|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \div|s_divCounter[0]~26_combout\ : std_logic;
SIGNAL \div|s_divCounter[12]~51\ : std_logic;
SIGNAL \div|s_divCounter[13]~52_combout\ : std_logic;
SIGNAL \div|s_divCounter[13]~53\ : std_logic;
SIGNAL \div|s_divCounter[14]~54_combout\ : std_logic;
SIGNAL \div|s_divCounter[14]~55\ : std_logic;
SIGNAL \div|s_divCounter[15]~56_combout\ : std_logic;
SIGNAL \div|s_divCounter[15]~57\ : std_logic;
SIGNAL \div|s_divCounter[16]~58_combout\ : std_logic;
SIGNAL \div|s_divCounter[16]~59\ : std_logic;
SIGNAL \div|s_divCounter[17]~60_combout\ : std_logic;
SIGNAL \div|s_divCounter[17]~61\ : std_logic;
SIGNAL \div|s_divCounter[18]~62_combout\ : std_logic;
SIGNAL \div|s_divCounter[18]~63\ : std_logic;
SIGNAL \div|s_divCounter[19]~64_combout\ : std_logic;
SIGNAL \div|s_divCounter[19]~65\ : std_logic;
SIGNAL \div|s_divCounter[20]~66_combout\ : std_logic;
SIGNAL \div|s_divCounter[20]~67\ : std_logic;
SIGNAL \div|s_divCounter[21]~68_combout\ : std_logic;
SIGNAL \div|s_divCounter[21]~69\ : std_logic;
SIGNAL \div|s_divCounter[22]~70_combout\ : std_logic;
SIGNAL \div|s_divCounter[22]~71\ : std_logic;
SIGNAL \div|s_divCounter[23]~72_combout\ : std_logic;
SIGNAL \div|s_divCounter[23]~73\ : std_logic;
SIGNAL \div|s_divCounter[24]~74_combout\ : std_logic;
SIGNAL \div|s_divCounter[24]~75\ : std_logic;
SIGNAL \div|s_divCounter[25]~76_combout\ : std_logic;
SIGNAL \div|LessThan0~4_combout\ : std_logic;
SIGNAL \div|clkOut~4_combout\ : std_logic;
SIGNAL \div|LessThan0~5_combout\ : std_logic;
SIGNAL \div|LessThan0~2_combout\ : std_logic;
SIGNAL \div|LessThan0~3_combout\ : std_logic;
SIGNAL \div|clkOut~3_combout\ : std_logic;
SIGNAL \div|LessThan0~0_combout\ : std_logic;
SIGNAL \div|clkOut~0_combout\ : std_logic;
SIGNAL \div|clkOut~1_combout\ : std_logic;
SIGNAL \div|LessThan0~1_combout\ : std_logic;
SIGNAL \div|LessThan0~6_combout\ : std_logic;
SIGNAL \div|s_divCounter[0]~27\ : std_logic;
SIGNAL \div|s_divCounter[1]~28_combout\ : std_logic;
SIGNAL \div|s_divCounter[1]~29\ : std_logic;
SIGNAL \div|s_divCounter[2]~30_combout\ : std_logic;
SIGNAL \div|s_divCounter[2]~31\ : std_logic;
SIGNAL \div|s_divCounter[3]~32_combout\ : std_logic;
SIGNAL \div|s_divCounter[3]~33\ : std_logic;
SIGNAL \div|s_divCounter[4]~34_combout\ : std_logic;
SIGNAL \div|s_divCounter[4]~35\ : std_logic;
SIGNAL \div|s_divCounter[5]~36_combout\ : std_logic;
SIGNAL \div|s_divCounter[5]~37\ : std_logic;
SIGNAL \div|s_divCounter[6]~38_combout\ : std_logic;
SIGNAL \div|s_divCounter[6]~39\ : std_logic;
SIGNAL \div|s_divCounter[7]~40_combout\ : std_logic;
SIGNAL \div|s_divCounter[7]~41\ : std_logic;
SIGNAL \div|s_divCounter[8]~42_combout\ : std_logic;
SIGNAL \div|s_divCounter[8]~43\ : std_logic;
SIGNAL \div|s_divCounter[9]~44_combout\ : std_logic;
SIGNAL \div|s_divCounter[9]~45\ : std_logic;
SIGNAL \div|s_divCounter[10]~46_combout\ : std_logic;
SIGNAL \div|s_divCounter[10]~47\ : std_logic;
SIGNAL \div|s_divCounter[11]~48_combout\ : std_logic;
SIGNAL \div|s_divCounter[11]~49\ : std_logic;
SIGNAL \div|s_divCounter[12]~50_combout\ : std_logic;
SIGNAL \div|clkOut~2_combout\ : std_logic;
SIGNAL \div|clkOut~5_combout\ : std_logic;
SIGNAL \div|clkOut~6_combout\ : std_logic;
SIGNAL \div|clkOut~7_combout\ : std_logic;
SIGNAL \div|clkOut~8_combout\ : std_logic;
SIGNAL \div|clkOut~9_combout\ : std_logic;
SIGNAL \div|clkOut~q\ : std_logic;
SIGNAL \div|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \reg|s_shiftReg[1]~feeder_combout\ : std_logic;
SIGNAL \reg|s_shiftReg[2]~feeder_combout\ : std_logic;
SIGNAL \reg|s_shiftReg[3]~feeder_combout\ : std_logic;
SIGNAL \reg|s_shiftReg[4]~feeder_combout\ : std_logic;
SIGNAL \reg|s_shiftReg[5]~feeder_combout\ : std_logic;
SIGNAL \reg|s_shiftReg[6]~feeder_combout\ : std_logic;
SIGNAL \reg|s_shiftReg[7]~feeder_combout\ : std_logic;
SIGNAL \div|s_divCounter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \reg|s_shiftReg\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\div|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \div|clkOut~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|s_shiftReg\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|s_shiftReg\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|s_shiftReg\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|s_shiftReg\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|s_shiftReg\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|s_shiftReg\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|s_shiftReg\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|s_shiftReg\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

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

-- Location: LCCOMB_X60_Y6_N6
\div|s_divCounter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|s_divCounter[0]~26_combout\ = \div|s_divCounter\(0) $ (VCC)
-- \div|s_divCounter[0]~27\ = CARRY(\div|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|s_divCounter\(0),
	datad => VCC,
	combout => \div|s_divCounter[0]~26_combout\,
	cout => \div|s_divCounter[0]~27\);

-- Location: LCCOMB_X60_Y6_N30
\div|s_divCounter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|s_divCounter[12]~50_combout\ = (\div|s_divCounter\(12) & (\div|s_divCounter[11]~49\ $ (GND))) # (!\div|s_divCounter\(12) & (!\div|s_divCounter[11]~49\ & VCC))
-- \div|s_divCounter[12]~51\ = CARRY((\div|s_divCounter\(12) & !\div|s_divCounter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|s_divCounter\(12),
	datad => VCC,
	cin => \div|s_divCounter[11]~49\,
	combout => \div|s_divCounter[12]~50_combout\,
	cout => \div|s_divCounter[12]~51\);

-- Location: LCCOMB_X60_Y5_N0
\div|s_divCounter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|s_divCounter[13]~52_combout\ = (\div|s_divCounter\(13) & (!\div|s_divCounter[12]~51\)) # (!\div|s_divCounter\(13) & ((\div|s_divCounter[12]~51\) # (GND)))
-- \div|s_divCounter[13]~53\ = CARRY((!\div|s_divCounter[12]~51\) # (!\div|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|s_divCounter\(13),
	datad => VCC,
	cin => \div|s_divCounter[12]~51\,
	combout => \div|s_divCounter[13]~52_combout\,
	cout => \div|s_divCounter[13]~53\);

-- Location: FF_X59_Y6_N21
\div|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \div|s_divCounter[13]~52_combout\,
	sclr => \div|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|s_divCounter\(13));

-- Location: LCCOMB_X60_Y5_N2
\div|s_divCounter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|s_divCounter[14]~54_combout\ = (\div|s_divCounter\(14) & (\div|s_divCounter[13]~53\ $ (GND))) # (!\div|s_divCounter\(14) & (!\div|s_divCounter[13]~53\ & VCC))
-- \div|s_divCounter[14]~55\ = CARRY((\div|s_divCounter\(14) & !\div|s_divCounter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|s_divCounter\(14),
	datad => VCC,
	cin => \div|s_divCounter[13]~53\,
	combout => \div|s_divCounter[14]~54_combout\,
	cout => \div|s_divCounter[14]~55\);

-- Location: FF_X60_Y5_N3
\div|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div|s_divCounter[14]~54_combout\,
	sclr => \div|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|s_divCounter\(14));

-- Location: LCCOMB_X60_Y5_N4
\div|s_divCounter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|s_divCounter[15]~56_combout\ = (\div|s_divCounter\(15) & (!\div|s_divCounter[14]~55\)) # (!\div|s_divCounter\(15) & ((\div|s_divCounter[14]~55\) # (GND)))
-- \div|s_divCounter[15]~57\ = CARRY((!\div|s_divCounter[14]~55\) # (!\div|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|s_divCounter\(15),
	datad => VCC,
	cin => \div|s_divCounter[14]~55\,
	combout => \div|s_divCounter[15]~56_combout\,
	cout => \div|s_divCounter[15]~57\);

-- Location: FF_X60_Y5_N5
\div|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div|s_divCounter[15]~56_combout\,
	sclr => \div|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|s_divCounter\(15));

-- Location: LCCOMB_X60_Y5_N6
\div|s_divCounter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|s_divCounter[16]~58_combout\ = (\div|s_divCounter\(16) & (\div|s_divCounter[15]~57\ $ (GND))) # (!\div|s_divCounter\(16) & (!\div|s_divCounter[15]~57\ & VCC))
-- \div|s_divCounter[16]~59\ = CARRY((\div|s_divCounter\(16) & !\div|s_divCounter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|s_divCounter\(16),
	datad => VCC,
	cin => \div|s_divCounter[15]~57\,
	combout => \div|s_divCounter[16]~58_combout\,
	cout => \div|s_divCounter[16]~59\);

-- Location: FF_X60_Y5_N7
\div|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div|s_divCounter[16]~58_combout\,
	sclr => \div|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|s_divCounter\(16));

-- Location: LCCOMB_X60_Y5_N8
\div|s_divCounter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|s_divCounter[17]~60_combout\ = (\div|s_divCounter\(17) & (!\div|s_divCounter[16]~59\)) # (!\div|s_divCounter\(17) & ((\div|s_divCounter[16]~59\) # (GND)))
-- \div|s_divCounter[17]~61\ = CARRY((!\div|s_divCounter[16]~59\) # (!\div|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|s_divCounter\(17),
	datad => VCC,
	cin => \div|s_divCounter[16]~59\,
	combout => \div|s_divCounter[17]~60_combout\,
	cout => \div|s_divCounter[17]~61\);

-- Location: FF_X60_Y5_N9
\div|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div|s_divCounter[17]~60_combout\,
	sclr => \div|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|s_divCounter\(17));

-- Location: LCCOMB_X60_Y5_N10
\div|s_divCounter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|s_divCounter[18]~62_combout\ = (\div|s_divCounter\(18) & (\div|s_divCounter[17]~61\ $ (GND))) # (!\div|s_divCounter\(18) & (!\div|s_divCounter[17]~61\ & VCC))
-- \div|s_divCounter[18]~63\ = CARRY((\div|s_divCounter\(18) & !\div|s_divCounter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|s_divCounter\(18),
	datad => VCC,
	cin => \div|s_divCounter[17]~61\,
	combout => \div|s_divCounter[18]~62_combout\,
	cout => \div|s_divCounter[18]~63\);

-- Location: FF_X60_Y5_N11
\div|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div|s_divCounter[18]~62_combout\,
	sclr => \div|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|s_divCounter\(18));

-- Location: LCCOMB_X60_Y5_N12
\div|s_divCounter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|s_divCounter[19]~64_combout\ = (\div|s_divCounter\(19) & (!\div|s_divCounter[18]~63\)) # (!\div|s_divCounter\(19) & ((\div|s_divCounter[18]~63\) # (GND)))
-- \div|s_divCounter[19]~65\ = CARRY((!\div|s_divCounter[18]~63\) # (!\div|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|s_divCounter\(19),
	datad => VCC,
	cin => \div|s_divCounter[18]~63\,
	combout => \div|s_divCounter[19]~64_combout\,
	cout => \div|s_divCounter[19]~65\);

-- Location: FF_X60_Y5_N13
\div|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div|s_divCounter[19]~64_combout\,
	sclr => \div|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|s_divCounter\(19));

-- Location: LCCOMB_X60_Y5_N14
\div|s_divCounter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|s_divCounter[20]~66_combout\ = (\div|s_divCounter\(20) & (\div|s_divCounter[19]~65\ $ (GND))) # (!\div|s_divCounter\(20) & (!\div|s_divCounter[19]~65\ & VCC))
-- \div|s_divCounter[20]~67\ = CARRY((\div|s_divCounter\(20) & !\div|s_divCounter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|s_divCounter\(20),
	datad => VCC,
	cin => \div|s_divCounter[19]~65\,
	combout => \div|s_divCounter[20]~66_combout\,
	cout => \div|s_divCounter[20]~67\);

-- Location: FF_X60_Y5_N15
\div|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div|s_divCounter[20]~66_combout\,
	sclr => \div|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|s_divCounter\(20));

-- Location: LCCOMB_X60_Y5_N16
\div|s_divCounter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|s_divCounter[21]~68_combout\ = (\div|s_divCounter\(21) & (!\div|s_divCounter[20]~67\)) # (!\div|s_divCounter\(21) & ((\div|s_divCounter[20]~67\) # (GND)))
-- \div|s_divCounter[21]~69\ = CARRY((!\div|s_divCounter[20]~67\) # (!\div|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|s_divCounter\(21),
	datad => VCC,
	cin => \div|s_divCounter[20]~67\,
	combout => \div|s_divCounter[21]~68_combout\,
	cout => \div|s_divCounter[21]~69\);

-- Location: FF_X60_Y5_N17
\div|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div|s_divCounter[21]~68_combout\,
	sclr => \div|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|s_divCounter\(21));

-- Location: LCCOMB_X60_Y5_N18
\div|s_divCounter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|s_divCounter[22]~70_combout\ = (\div|s_divCounter\(22) & (\div|s_divCounter[21]~69\ $ (GND))) # (!\div|s_divCounter\(22) & (!\div|s_divCounter[21]~69\ & VCC))
-- \div|s_divCounter[22]~71\ = CARRY((\div|s_divCounter\(22) & !\div|s_divCounter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|s_divCounter\(22),
	datad => VCC,
	cin => \div|s_divCounter[21]~69\,
	combout => \div|s_divCounter[22]~70_combout\,
	cout => \div|s_divCounter[22]~71\);

-- Location: FF_X60_Y5_N19
\div|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div|s_divCounter[22]~70_combout\,
	sclr => \div|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|s_divCounter\(22));

-- Location: LCCOMB_X60_Y5_N20
\div|s_divCounter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|s_divCounter[23]~72_combout\ = (\div|s_divCounter\(23) & (!\div|s_divCounter[22]~71\)) # (!\div|s_divCounter\(23) & ((\div|s_divCounter[22]~71\) # (GND)))
-- \div|s_divCounter[23]~73\ = CARRY((!\div|s_divCounter[22]~71\) # (!\div|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|s_divCounter\(23),
	datad => VCC,
	cin => \div|s_divCounter[22]~71\,
	combout => \div|s_divCounter[23]~72_combout\,
	cout => \div|s_divCounter[23]~73\);

-- Location: FF_X60_Y5_N21
\div|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div|s_divCounter[23]~72_combout\,
	sclr => \div|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|s_divCounter\(23));

-- Location: LCCOMB_X60_Y5_N22
\div|s_divCounter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|s_divCounter[24]~74_combout\ = (\div|s_divCounter\(24) & (\div|s_divCounter[23]~73\ $ (GND))) # (!\div|s_divCounter\(24) & (!\div|s_divCounter[23]~73\ & VCC))
-- \div|s_divCounter[24]~75\ = CARRY((\div|s_divCounter\(24) & !\div|s_divCounter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|s_divCounter\(24),
	datad => VCC,
	cin => \div|s_divCounter[23]~73\,
	combout => \div|s_divCounter[24]~74_combout\,
	cout => \div|s_divCounter[24]~75\);

-- Location: FF_X60_Y5_N23
\div|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div|s_divCounter[24]~74_combout\,
	sclr => \div|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|s_divCounter\(24));

-- Location: LCCOMB_X60_Y5_N24
\div|s_divCounter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|s_divCounter[25]~76_combout\ = \div|s_divCounter[24]~75\ $ (\div|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \div|s_divCounter\(25),
	cin => \div|s_divCounter[24]~75\,
	combout => \div|s_divCounter[25]~76_combout\);

-- Location: FF_X60_Y5_N25
\div|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div|s_divCounter[25]~76_combout\,
	sclr => \div|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|s_divCounter\(25));

-- Location: LCCOMB_X60_Y5_N26
\div|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|LessThan0~4_combout\ = ((!\div|s_divCounter\(18) & !\div|s_divCounter\(17))) # (!\div|s_divCounter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|s_divCounter\(18),
	datac => \div|s_divCounter\(17),
	datad => \div|s_divCounter\(23),
	combout => \div|LessThan0~4_combout\);

-- Location: LCCOMB_X60_Y5_N30
\div|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|clkOut~4_combout\ = (\div|s_divCounter\(19) & (\div|s_divCounter\(21) & (\div|s_divCounter\(20) & \div|s_divCounter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|s_divCounter\(19),
	datab => \div|s_divCounter\(21),
	datac => \div|s_divCounter\(20),
	datad => \div|s_divCounter\(22),
	combout => \div|clkOut~4_combout\);

-- Location: LCCOMB_X59_Y6_N2
\div|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|LessThan0~5_combout\ = ((!\div|s_divCounter\(24) & ((\div|LessThan0~4_combout\) # (!\div|clkOut~4_combout\)))) # (!\div|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|s_divCounter\(25),
	datab => \div|s_divCounter\(24),
	datac => \div|LessThan0~4_combout\,
	datad => \div|clkOut~4_combout\,
	combout => \div|LessThan0~5_combout\);

-- Location: LCCOMB_X59_Y6_N10
\div|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|LessThan0~2_combout\ = (((!\div|s_divCounter\(14)) # (!\div|s_divCounter\(15))) # (!\div|s_divCounter\(13))) # (!\div|s_divCounter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|s_divCounter\(12),
	datab => \div|s_divCounter\(13),
	datac => \div|s_divCounter\(15),
	datad => \div|s_divCounter\(14),
	combout => \div|LessThan0~2_combout\);

-- Location: LCCOMB_X59_Y6_N14
\div|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|LessThan0~3_combout\ = (!\div|s_divCounter\(24) & (!\div|s_divCounter\(18) & (!\div|s_divCounter\(16) & \div|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|s_divCounter\(24),
	datab => \div|s_divCounter\(18),
	datac => \div|s_divCounter\(16),
	datad => \div|LessThan0~2_combout\,
	combout => \div|LessThan0~3_combout\);

-- Location: LCCOMB_X60_Y6_N4
\div|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|clkOut~3_combout\ = (!\div|s_divCounter\(8) & (!\div|s_divCounter\(7) & (!\div|s_divCounter\(10) & !\div|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|s_divCounter\(8),
	datab => \div|s_divCounter\(7),
	datac => \div|s_divCounter\(10),
	datad => \div|s_divCounter\(9),
	combout => \div|clkOut~3_combout\);

-- Location: LCCOMB_X59_Y6_N26
\div|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|LessThan0~0_combout\ = (!\div|s_divCounter\(11) & (!\div|s_divCounter\(18) & (!\div|s_divCounter\(16) & !\div|s_divCounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|s_divCounter\(11),
	datab => \div|s_divCounter\(18),
	datac => \div|s_divCounter\(16),
	datad => \div|s_divCounter\(24),
	combout => \div|LessThan0~0_combout\);

-- Location: LCCOMB_X60_Y6_N0
\div|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|clkOut~0_combout\ = (\div|s_divCounter\(3) & (\div|s_divCounter\(1) & (\div|s_divCounter\(0) & \div|s_divCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|s_divCounter\(3),
	datab => \div|s_divCounter\(1),
	datac => \div|s_divCounter\(0),
	datad => \div|s_divCounter\(2),
	combout => \div|clkOut~0_combout\);

-- Location: LCCOMB_X60_Y6_N2
\div|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|clkOut~1_combout\ = (\div|s_divCounter\(5) & (\div|s_divCounter\(4) & \div|clkOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|s_divCounter\(5),
	datac => \div|s_divCounter\(4),
	datad => \div|clkOut~0_combout\,
	combout => \div|clkOut~1_combout\);

-- Location: LCCOMB_X59_Y6_N28
\div|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|LessThan0~1_combout\ = (\div|clkOut~3_combout\ & (\div|LessThan0~0_combout\ & ((!\div|clkOut~1_combout\) # (!\div|s_divCounter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|clkOut~3_combout\,
	datab => \div|s_divCounter\(6),
	datac => \div|LessThan0~0_combout\,
	datad => \div|clkOut~1_combout\,
	combout => \div|LessThan0~1_combout\);

-- Location: LCCOMB_X59_Y6_N30
\div|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|LessThan0~6_combout\ = (!\div|LessThan0~5_combout\ & (!\div|LessThan0~3_combout\ & !\div|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|LessThan0~5_combout\,
	datac => \div|LessThan0~3_combout\,
	datad => \div|LessThan0~1_combout\,
	combout => \div|LessThan0~6_combout\);

-- Location: FF_X60_Y6_N7
\div|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div|s_divCounter[0]~26_combout\,
	sclr => \div|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|s_divCounter\(0));

-- Location: LCCOMB_X60_Y6_N8
\div|s_divCounter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|s_divCounter[1]~28_combout\ = (\div|s_divCounter\(1) & (!\div|s_divCounter[0]~27\)) # (!\div|s_divCounter\(1) & ((\div|s_divCounter[0]~27\) # (GND)))
-- \div|s_divCounter[1]~29\ = CARRY((!\div|s_divCounter[0]~27\) # (!\div|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|s_divCounter\(1),
	datad => VCC,
	cin => \div|s_divCounter[0]~27\,
	combout => \div|s_divCounter[1]~28_combout\,
	cout => \div|s_divCounter[1]~29\);

-- Location: FF_X60_Y6_N9
\div|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div|s_divCounter[1]~28_combout\,
	sclr => \div|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|s_divCounter\(1));

-- Location: LCCOMB_X60_Y6_N10
\div|s_divCounter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|s_divCounter[2]~30_combout\ = (\div|s_divCounter\(2) & (\div|s_divCounter[1]~29\ $ (GND))) # (!\div|s_divCounter\(2) & (!\div|s_divCounter[1]~29\ & VCC))
-- \div|s_divCounter[2]~31\ = CARRY((\div|s_divCounter\(2) & !\div|s_divCounter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|s_divCounter\(2),
	datad => VCC,
	cin => \div|s_divCounter[1]~29\,
	combout => \div|s_divCounter[2]~30_combout\,
	cout => \div|s_divCounter[2]~31\);

-- Location: FF_X60_Y6_N11
\div|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div|s_divCounter[2]~30_combout\,
	sclr => \div|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|s_divCounter\(2));

-- Location: LCCOMB_X60_Y6_N12
\div|s_divCounter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|s_divCounter[3]~32_combout\ = (\div|s_divCounter\(3) & (!\div|s_divCounter[2]~31\)) # (!\div|s_divCounter\(3) & ((\div|s_divCounter[2]~31\) # (GND)))
-- \div|s_divCounter[3]~33\ = CARRY((!\div|s_divCounter[2]~31\) # (!\div|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|s_divCounter\(3),
	datad => VCC,
	cin => \div|s_divCounter[2]~31\,
	combout => \div|s_divCounter[3]~32_combout\,
	cout => \div|s_divCounter[3]~33\);

-- Location: FF_X60_Y6_N13
\div|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div|s_divCounter[3]~32_combout\,
	sclr => \div|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|s_divCounter\(3));

-- Location: LCCOMB_X60_Y6_N14
\div|s_divCounter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|s_divCounter[4]~34_combout\ = (\div|s_divCounter\(4) & (\div|s_divCounter[3]~33\ $ (GND))) # (!\div|s_divCounter\(4) & (!\div|s_divCounter[3]~33\ & VCC))
-- \div|s_divCounter[4]~35\ = CARRY((\div|s_divCounter\(4) & !\div|s_divCounter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|s_divCounter\(4),
	datad => VCC,
	cin => \div|s_divCounter[3]~33\,
	combout => \div|s_divCounter[4]~34_combout\,
	cout => \div|s_divCounter[4]~35\);

-- Location: FF_X60_Y6_N15
\div|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div|s_divCounter[4]~34_combout\,
	sclr => \div|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|s_divCounter\(4));

-- Location: LCCOMB_X60_Y6_N16
\div|s_divCounter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|s_divCounter[5]~36_combout\ = (\div|s_divCounter\(5) & (!\div|s_divCounter[4]~35\)) # (!\div|s_divCounter\(5) & ((\div|s_divCounter[4]~35\) # (GND)))
-- \div|s_divCounter[5]~37\ = CARRY((!\div|s_divCounter[4]~35\) # (!\div|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|s_divCounter\(5),
	datad => VCC,
	cin => \div|s_divCounter[4]~35\,
	combout => \div|s_divCounter[5]~36_combout\,
	cout => \div|s_divCounter[5]~37\);

-- Location: FF_X60_Y6_N17
\div|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div|s_divCounter[5]~36_combout\,
	sclr => \div|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|s_divCounter\(5));

-- Location: LCCOMB_X60_Y6_N18
\div|s_divCounter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|s_divCounter[6]~38_combout\ = (\div|s_divCounter\(6) & (\div|s_divCounter[5]~37\ $ (GND))) # (!\div|s_divCounter\(6) & (!\div|s_divCounter[5]~37\ & VCC))
-- \div|s_divCounter[6]~39\ = CARRY((\div|s_divCounter\(6) & !\div|s_divCounter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|s_divCounter\(6),
	datad => VCC,
	cin => \div|s_divCounter[5]~37\,
	combout => \div|s_divCounter[6]~38_combout\,
	cout => \div|s_divCounter[6]~39\);

-- Location: FF_X60_Y6_N19
\div|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div|s_divCounter[6]~38_combout\,
	sclr => \div|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|s_divCounter\(6));

-- Location: LCCOMB_X60_Y6_N20
\div|s_divCounter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|s_divCounter[7]~40_combout\ = (\div|s_divCounter\(7) & (!\div|s_divCounter[6]~39\)) # (!\div|s_divCounter\(7) & ((\div|s_divCounter[6]~39\) # (GND)))
-- \div|s_divCounter[7]~41\ = CARRY((!\div|s_divCounter[6]~39\) # (!\div|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|s_divCounter\(7),
	datad => VCC,
	cin => \div|s_divCounter[6]~39\,
	combout => \div|s_divCounter[7]~40_combout\,
	cout => \div|s_divCounter[7]~41\);

-- Location: FF_X60_Y6_N21
\div|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div|s_divCounter[7]~40_combout\,
	sclr => \div|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|s_divCounter\(7));

-- Location: LCCOMB_X60_Y6_N22
\div|s_divCounter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|s_divCounter[8]~42_combout\ = (\div|s_divCounter\(8) & (\div|s_divCounter[7]~41\ $ (GND))) # (!\div|s_divCounter\(8) & (!\div|s_divCounter[7]~41\ & VCC))
-- \div|s_divCounter[8]~43\ = CARRY((\div|s_divCounter\(8) & !\div|s_divCounter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|s_divCounter\(8),
	datad => VCC,
	cin => \div|s_divCounter[7]~41\,
	combout => \div|s_divCounter[8]~42_combout\,
	cout => \div|s_divCounter[8]~43\);

-- Location: FF_X60_Y6_N23
\div|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div|s_divCounter[8]~42_combout\,
	sclr => \div|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|s_divCounter\(8));

-- Location: LCCOMB_X60_Y6_N24
\div|s_divCounter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|s_divCounter[9]~44_combout\ = (\div|s_divCounter\(9) & (!\div|s_divCounter[8]~43\)) # (!\div|s_divCounter\(9) & ((\div|s_divCounter[8]~43\) # (GND)))
-- \div|s_divCounter[9]~45\ = CARRY((!\div|s_divCounter[8]~43\) # (!\div|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|s_divCounter\(9),
	datad => VCC,
	cin => \div|s_divCounter[8]~43\,
	combout => \div|s_divCounter[9]~44_combout\,
	cout => \div|s_divCounter[9]~45\);

-- Location: FF_X60_Y6_N25
\div|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div|s_divCounter[9]~44_combout\,
	sclr => \div|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|s_divCounter\(9));

-- Location: LCCOMB_X60_Y6_N26
\div|s_divCounter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|s_divCounter[10]~46_combout\ = (\div|s_divCounter\(10) & (\div|s_divCounter[9]~45\ $ (GND))) # (!\div|s_divCounter\(10) & (!\div|s_divCounter[9]~45\ & VCC))
-- \div|s_divCounter[10]~47\ = CARRY((\div|s_divCounter\(10) & !\div|s_divCounter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|s_divCounter\(10),
	datad => VCC,
	cin => \div|s_divCounter[9]~45\,
	combout => \div|s_divCounter[10]~46_combout\,
	cout => \div|s_divCounter[10]~47\);

-- Location: FF_X60_Y6_N27
\div|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div|s_divCounter[10]~46_combout\,
	sclr => \div|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|s_divCounter\(10));

-- Location: LCCOMB_X60_Y6_N28
\div|s_divCounter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|s_divCounter[11]~48_combout\ = (\div|s_divCounter\(11) & (!\div|s_divCounter[10]~47\)) # (!\div|s_divCounter\(11) & ((\div|s_divCounter[10]~47\) # (GND)))
-- \div|s_divCounter[11]~49\ = CARRY((!\div|s_divCounter[10]~47\) # (!\div|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|s_divCounter\(11),
	datad => VCC,
	cin => \div|s_divCounter[10]~47\,
	combout => \div|s_divCounter[11]~48_combout\,
	cout => \div|s_divCounter[11]~49\);

-- Location: FF_X60_Y6_N29
\div|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div|s_divCounter[11]~48_combout\,
	sclr => \div|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|s_divCounter\(11));

-- Location: FF_X60_Y6_N31
\div|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div|s_divCounter[12]~50_combout\,
	sclr => \div|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|s_divCounter\(12));

-- Location: LCCOMB_X59_Y6_N22
\div|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|clkOut~2_combout\ = (\div|s_divCounter\(12) & (\div|s_divCounter\(14) & (\div|s_divCounter\(13) & !\div|s_divCounter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|s_divCounter\(12),
	datab => \div|s_divCounter\(14),
	datac => \div|s_divCounter\(13),
	datad => \div|s_divCounter\(6),
	combout => \div|clkOut~2_combout\);

-- Location: LCCOMB_X60_Y5_N28
\div|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|clkOut~5_combout\ = (\div|s_divCounter\(18) & (!\div|s_divCounter\(23) & (\div|s_divCounter\(24) & !\div|s_divCounter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|s_divCounter\(18),
	datab => \div|s_divCounter\(23),
	datac => \div|s_divCounter\(24),
	datad => \div|s_divCounter\(25),
	combout => \div|clkOut~5_combout\);

-- Location: LCCOMB_X59_Y6_N16
\div|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|clkOut~6_combout\ = (\div|s_divCounter\(16) & (!\div|s_divCounter\(15) & (\div|clkOut~5_combout\ & !\div|s_divCounter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|s_divCounter\(16),
	datab => \div|s_divCounter\(15),
	datac => \div|clkOut~5_combout\,
	datad => \div|s_divCounter\(17),
	combout => \div|clkOut~6_combout\);

-- Location: LCCOMB_X59_Y6_N6
\div|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|clkOut~7_combout\ = (\div|clkOut~4_combout\ & (\div|s_divCounter\(11) & (\div|clkOut~3_combout\ & \div|clkOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|clkOut~4_combout\,
	datab => \div|s_divCounter\(11),
	datac => \div|clkOut~3_combout\,
	datad => \div|clkOut~6_combout\,
	combout => \div|clkOut~7_combout\);

-- Location: LCCOMB_X59_Y6_N24
\div|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|clkOut~8_combout\ = (\div|clkOut~q\) # ((\div|clkOut~2_combout\ & (\div|clkOut~1_combout\ & \div|clkOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|clkOut~2_combout\,
	datab => \div|clkOut~q\,
	datac => \div|clkOut~1_combout\,
	datad => \div|clkOut~7_combout\,
	combout => \div|clkOut~8_combout\);

-- Location: LCCOMB_X59_Y6_N18
\div|clkOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|clkOut~9_combout\ = (\div|clkOut~8_combout\ & ((\div|LessThan0~1_combout\) # ((\div|LessThan0~5_combout\) # (\div|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|clkOut~8_combout\,
	datab => \div|LessThan0~1_combout\,
	datac => \div|LessThan0~5_combout\,
	datad => \div|LessThan0~3_combout\,
	combout => \div|clkOut~9_combout\);

-- Location: FF_X59_Y6_N19
\div|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div|clkOut~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|clkOut~q\);

-- Location: CLKCTRL_G15
\div|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \div|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \div|clkOut~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X88_Y72_N29
\reg|s_shiftReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div|clkOut~clkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|s_shiftReg\(0));

-- Location: LCCOMB_X88_Y72_N18
\reg|s_shiftReg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|s_shiftReg[1]~feeder_combout\ = \reg|s_shiftReg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg|s_shiftReg\(0),
	combout => \reg|s_shiftReg[1]~feeder_combout\);

-- Location: FF_X88_Y72_N19
\reg|s_shiftReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div|clkOut~clkctrl_outclk\,
	d => \reg|s_shiftReg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|s_shiftReg\(1));

-- Location: LCCOMB_X88_Y72_N16
\reg|s_shiftReg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|s_shiftReg[2]~feeder_combout\ = \reg|s_shiftReg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg|s_shiftReg\(1),
	combout => \reg|s_shiftReg[2]~feeder_combout\);

-- Location: FF_X88_Y72_N17
\reg|s_shiftReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div|clkOut~clkctrl_outclk\,
	d => \reg|s_shiftReg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|s_shiftReg\(2));

-- Location: LCCOMB_X88_Y72_N6
\reg|s_shiftReg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|s_shiftReg[3]~feeder_combout\ = \reg|s_shiftReg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg|s_shiftReg\(2),
	combout => \reg|s_shiftReg[3]~feeder_combout\);

-- Location: FF_X88_Y72_N7
\reg|s_shiftReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div|clkOut~clkctrl_outclk\,
	d => \reg|s_shiftReg[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|s_shiftReg\(3));

-- Location: LCCOMB_X88_Y72_N0
\reg|s_shiftReg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|s_shiftReg[4]~feeder_combout\ = \reg|s_shiftReg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg|s_shiftReg\(3),
	combout => \reg|s_shiftReg[4]~feeder_combout\);

-- Location: FF_X88_Y72_N1
\reg|s_shiftReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div|clkOut~clkctrl_outclk\,
	d => \reg|s_shiftReg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|s_shiftReg\(4));

-- Location: LCCOMB_X88_Y72_N2
\reg|s_shiftReg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|s_shiftReg[5]~feeder_combout\ = \reg|s_shiftReg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg|s_shiftReg\(4),
	combout => \reg|s_shiftReg[5]~feeder_combout\);

-- Location: FF_X88_Y72_N3
\reg|s_shiftReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div|clkOut~clkctrl_outclk\,
	d => \reg|s_shiftReg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|s_shiftReg\(5));

-- Location: LCCOMB_X88_Y72_N20
\reg|s_shiftReg[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|s_shiftReg[6]~feeder_combout\ = \reg|s_shiftReg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg|s_shiftReg\(5),
	combout => \reg|s_shiftReg[6]~feeder_combout\);

-- Location: FF_X88_Y72_N21
\reg|s_shiftReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div|clkOut~clkctrl_outclk\,
	d => \reg|s_shiftReg[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|s_shiftReg\(6));

-- Location: LCCOMB_X88_Y72_N22
\reg|s_shiftReg[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|s_shiftReg[7]~feeder_combout\ = \reg|s_shiftReg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg|s_shiftReg\(6),
	combout => \reg|s_shiftReg[7]~feeder_combout\);

-- Location: FF_X88_Y72_N23
\reg|s_shiftReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div|clkOut~clkctrl_outclk\,
	d => \reg|s_shiftReg[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|s_shiftReg\(7));

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;
END structure;



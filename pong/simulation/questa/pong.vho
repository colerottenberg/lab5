-- Copyright (C) 2023  Intel Corporation. All rights reserved.
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
-- VERSION "Version 23.1std.0 Build 991 11/28/2023 SC Lite Edition"

-- DATE "04/16/2024 15:29:35"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for QuestaSim (VHDL) only
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


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_level IS
    PORT (
	clk50MHz : IN std_logic;
	switch : IN std_logic_vector(9 DOWNTO 0);
	button_n : IN std_logic_vector(1 DOWNTO 0);
	red : OUT std_logic_vector(3 DOWNTO 0);
	green : OUT std_logic_vector(3 DOWNTO 0);
	blue : OUT std_logic_vector(3 DOWNTO 0);
	h_sync : OUT std_logic;
	v_sync : OUT std_logic;
	led0 : OUT std_logic_vector(6 DOWNTO 0);
	led0_dp : OUT std_logic;
	led1 : OUT std_logic_vector(6 DOWNTO 0);
	led1_dp : OUT std_logic;
	led2 : OUT std_logic_vector(6 DOWNTO 0);
	led2_dp : OUT std_logic;
	led3 : OUT std_logic_vector(6 DOWNTO 0);
	led3_dp : OUT std_logic;
	led4 : OUT std_logic_vector(6 DOWNTO 0);
	led4_dp : OUT std_logic;
	led5 : OUT std_logic_vector(6 DOWNTO 0);
	led5_dp : OUT std_logic
	);
END top_level;

-- Design Ports Information
-- switch[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[8]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[9]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button_n[1]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[0]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[1]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[2]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[3]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[0]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[1]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[2]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[3]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[0]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[1]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[2]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[3]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_sync	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v_sync	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[0]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[1]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[3]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[4]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[5]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[6]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0_dp	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[1]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[2]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[3]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[4]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[5]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[6]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1_dp	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[0]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[1]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[2]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[3]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[4]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[5]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2_dp	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[0]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[1]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[2]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[3]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[5]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[6]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3_dp	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[0]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[1]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[2]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[3]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[4]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[5]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[6]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4_dp	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[0]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[1]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[2]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[3]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[4]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[5]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[6]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5_dp	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button_n[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk50MHz	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_level IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk50MHz : std_logic;
SIGNAL ww_switch : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_button_n : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_red : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_green : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_blue : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_h_sync : std_logic;
SIGNAL ww_v_sync : std_logic;
SIGNAL ww_led0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led0_dp : std_logic;
SIGNAL ww_led1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led1_dp : std_logic;
SIGNAL ww_led2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led2_dp : std_logic;
SIGNAL ww_led3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led3_dp : std_logic;
SIGNAL ww_led4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led4_dp : std_logic;
SIGNAL ww_led5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led5_dp : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U_CLK_DIV|temp_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_VGA|clk_div|temp_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \switch[4]~input_o\ : std_logic;
SIGNAL \switch[5]~input_o\ : std_logic;
SIGNAL \switch[6]~input_o\ : std_logic;
SIGNAL \switch[7]~input_o\ : std_logic;
SIGNAL \switch[8]~input_o\ : std_logic;
SIGNAL \switch[9]~input_o\ : std_logic;
SIGNAL \button_n[1]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \red[0]~output_o\ : std_logic;
SIGNAL \red[1]~output_o\ : std_logic;
SIGNAL \red[2]~output_o\ : std_logic;
SIGNAL \red[3]~output_o\ : std_logic;
SIGNAL \green[0]~output_o\ : std_logic;
SIGNAL \green[1]~output_o\ : std_logic;
SIGNAL \green[2]~output_o\ : std_logic;
SIGNAL \green[3]~output_o\ : std_logic;
SIGNAL \blue[0]~output_o\ : std_logic;
SIGNAL \blue[1]~output_o\ : std_logic;
SIGNAL \blue[2]~output_o\ : std_logic;
SIGNAL \blue[3]~output_o\ : std_logic;
SIGNAL \h_sync~output_o\ : std_logic;
SIGNAL \v_sync~output_o\ : std_logic;
SIGNAL \led0[0]~output_o\ : std_logic;
SIGNAL \led0[1]~output_o\ : std_logic;
SIGNAL \led0[2]~output_o\ : std_logic;
SIGNAL \led0[3]~output_o\ : std_logic;
SIGNAL \led0[4]~output_o\ : std_logic;
SIGNAL \led0[5]~output_o\ : std_logic;
SIGNAL \led0[6]~output_o\ : std_logic;
SIGNAL \led0_dp~output_o\ : std_logic;
SIGNAL \led1[0]~output_o\ : std_logic;
SIGNAL \led1[1]~output_o\ : std_logic;
SIGNAL \led1[2]~output_o\ : std_logic;
SIGNAL \led1[3]~output_o\ : std_logic;
SIGNAL \led1[4]~output_o\ : std_logic;
SIGNAL \led1[5]~output_o\ : std_logic;
SIGNAL \led1[6]~output_o\ : std_logic;
SIGNAL \led1_dp~output_o\ : std_logic;
SIGNAL \led2[0]~output_o\ : std_logic;
SIGNAL \led2[1]~output_o\ : std_logic;
SIGNAL \led2[2]~output_o\ : std_logic;
SIGNAL \led2[3]~output_o\ : std_logic;
SIGNAL \led2[4]~output_o\ : std_logic;
SIGNAL \led2[5]~output_o\ : std_logic;
SIGNAL \led2[6]~output_o\ : std_logic;
SIGNAL \led2_dp~output_o\ : std_logic;
SIGNAL \led3[0]~output_o\ : std_logic;
SIGNAL \led3[1]~output_o\ : std_logic;
SIGNAL \led3[2]~output_o\ : std_logic;
SIGNAL \led3[3]~output_o\ : std_logic;
SIGNAL \led3[4]~output_o\ : std_logic;
SIGNAL \led3[5]~output_o\ : std_logic;
SIGNAL \led3[6]~output_o\ : std_logic;
SIGNAL \led3_dp~output_o\ : std_logic;
SIGNAL \led4[0]~output_o\ : std_logic;
SIGNAL \led4[1]~output_o\ : std_logic;
SIGNAL \led4[2]~output_o\ : std_logic;
SIGNAL \led4[3]~output_o\ : std_logic;
SIGNAL \led4[4]~output_o\ : std_logic;
SIGNAL \led4[5]~output_o\ : std_logic;
SIGNAL \led4[6]~output_o\ : std_logic;
SIGNAL \led4_dp~output_o\ : std_logic;
SIGNAL \led5[0]~output_o\ : std_logic;
SIGNAL \led5[1]~output_o\ : std_logic;
SIGNAL \led5[2]~output_o\ : std_logic;
SIGNAL \led5[3]~output_o\ : std_logic;
SIGNAL \led5[4]~output_o\ : std_logic;
SIGNAL \led5[5]~output_o\ : std_logic;
SIGNAL \led5[6]~output_o\ : std_logic;
SIGNAL \led5_dp~output_o\ : std_logic;
SIGNAL \clk50MHz~input_o\ : std_logic;
SIGNAL \U_CLK_DIV|temp_clk~0_combout\ : std_logic;
SIGNAL \U_CLK_DIV|temp_clk~feeder_combout\ : std_logic;
SIGNAL \button_n[0]~input_o\ : std_logic;
SIGNAL \U_CLK_DIV|temp_clk~q\ : std_logic;
SIGNAL \U_CLK_DIV|temp_clk~clkctrl_outclk\ : std_logic;
SIGNAL \U_VGA|sync|Add0~0_combout\ : std_logic;
SIGNAL \U_VGA|sync|v_counter~1_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add1~0_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add1~1\ : std_logic;
SIGNAL \U_VGA|sync|Add1~2_combout\ : std_logic;
SIGNAL \U_VGA|sync|h_counter~0_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add1~3\ : std_logic;
SIGNAL \U_VGA|sync|Add1~4_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add1~5\ : std_logic;
SIGNAL \U_VGA|sync|Add1~6_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add1~7\ : std_logic;
SIGNAL \U_VGA|sync|Add1~8_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add1~9\ : std_logic;
SIGNAL \U_VGA|sync|Add1~10_combout\ : std_logic;
SIGNAL \U_VGA|sync|h_counter~1_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add1~11\ : std_logic;
SIGNAL \U_VGA|sync|Add1~12_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add1~13\ : std_logic;
SIGNAL \U_VGA|sync|Add1~14_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add1~15\ : std_logic;
SIGNAL \U_VGA|sync|Add1~16_combout\ : std_logic;
SIGNAL \U_VGA|sync|h_counter~2_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add1~17\ : std_logic;
SIGNAL \U_VGA|sync|Add1~18_combout\ : std_logic;
SIGNAL \U_VGA|sync|h_counter~3_combout\ : std_logic;
SIGNAL \U_VGA|sync|Equal0~0_combout\ : std_logic;
SIGNAL \U_VGA|sync|Equal0~1_combout\ : std_logic;
SIGNAL \U_VGA|sync|Equal0~2_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add0~1\ : std_logic;
SIGNAL \U_VGA|sync|Add0~2_combout\ : std_logic;
SIGNAL \U_VGA|sync|v_counter~0_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add0~3\ : std_logic;
SIGNAL \U_VGA|sync|Add0~4_combout\ : std_logic;
SIGNAL \U_VGA|sync|v_counter~2_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add0~5\ : std_logic;
SIGNAL \U_VGA|sync|Add0~6_combout\ : std_logic;
SIGNAL \U_VGA|sync|v_counter~3_combout\ : std_logic;
SIGNAL \U_VGA|sync|Equal1~0_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add0~7\ : std_logic;
SIGNAL \U_VGA|sync|Add0~8_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add0~9\ : std_logic;
SIGNAL \U_VGA|sync|Add0~10_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add0~11\ : std_logic;
SIGNAL \U_VGA|sync|Add0~12_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add0~13\ : std_logic;
SIGNAL \U_VGA|sync|Add0~14_combout\ : std_logic;
SIGNAL \U_VGA|sync|Equal1~1_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add0~15\ : std_logic;
SIGNAL \U_VGA|sync|Add0~16_combout\ : std_logic;
SIGNAL \U_VGA|sync|Equal1~2_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add0~17\ : std_logic;
SIGNAL \U_VGA|sync|Add0~18_combout\ : std_logic;
SIGNAL \U_VGA|sync|v_counter~4_combout\ : std_logic;
SIGNAL \U_VGA|sync|LessThan5~0_combout\ : std_logic;
SIGNAL \U_VGA|sync|LessThan5~1_combout\ : std_logic;
SIGNAL \U_VGA|sync|LessThan5~2_combout\ : std_logic;
SIGNAL \U_VGA|sync|LessThan4~0_combout\ : std_logic;
SIGNAL \U_VGA|sync|h_sync~3_combout\ : std_logic;
SIGNAL \U_VGA|sync|video_on~0_combout\ : std_logic;
SIGNAL \U_VGA|sync|video_on~1_combout\ : std_logic;
SIGNAL \U_VGA|red~0_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~0_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~1\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~2_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~3\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~4_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~5\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~6_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~7\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~8_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~9\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~10_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~11\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~12_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|counter~6_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~13\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~14_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|counter~5_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~15\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~16_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~17\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~18_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|counter~4_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~19\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~20_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~21\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~22_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~23\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~24_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|counter~3_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Equal0~2_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~25\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~26_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~27\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~28_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~29\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~30_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~31\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~32_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|counter~2_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Equal0~1_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Equal0~3_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~33\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~34_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|counter~1_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~35\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~36_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~37\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~38_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~39\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~40_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|counter~0_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Equal0~0_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Equal0~4_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|counter~7_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Equal0~5_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|temp_clk~0_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|temp_clk~feeder_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|temp_clk~q\ : std_logic;
SIGNAL \U_VGA|clk_div|temp_clk~clkctrl_outclk\ : std_logic;
SIGNAL \switch[2]~input_o\ : std_logic;
SIGNAL \U_VGA|Add6~15\ : std_logic;
SIGNAL \U_VGA|Add6~17\ : std_logic;
SIGNAL \U_VGA|Add6~18_combout\ : std_logic;
SIGNAL \U_VGA|Add7~17\ : std_logic;
SIGNAL \U_VGA|Add7~18_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p2~32_combout\ : std_logic;
SIGNAL \switch[3]~input_o\ : std_logic;
SIGNAL \U_VGA|y_pos_p2[9]~1_combout\ : std_logic;
SIGNAL \U_VGA|Add7~13\ : std_logic;
SIGNAL \U_VGA|Add7~14_combout\ : std_logic;
SIGNAL \U_VGA|Add6~0_combout\ : std_logic;
SIGNAL \U_VGA|Add7~0_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p2~10_combout\ : std_logic;
SIGNAL \U_VGA|Add7~1\ : std_logic;
SIGNAL \U_VGA|Add7~2_combout\ : std_logic;
SIGNAL \U_VGA|Add6~1\ : std_logic;
SIGNAL \U_VGA|Add6~2_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p2~9_combout\ : std_logic;
SIGNAL \U_VGA|Add7~3\ : std_logic;
SIGNAL \U_VGA|Add7~4_combout\ : std_logic;
SIGNAL \U_VGA|Add6~3\ : std_logic;
SIGNAL \U_VGA|Add6~4_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p2~8_combout\ : std_logic;
SIGNAL \U_VGA|Add6~5\ : std_logic;
SIGNAL \U_VGA|Add6~6_combout\ : std_logic;
SIGNAL \U_VGA|Add7~5\ : std_logic;
SIGNAL \U_VGA|Add7~6_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p2~7_combout\ : std_logic;
SIGNAL \U_VGA|Add6~7\ : std_logic;
SIGNAL \U_VGA|Add6~8_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p2~6_combout\ : std_logic;
SIGNAL \U_VGA|Add7~7\ : std_logic;
SIGNAL \U_VGA|Add7~8_combout\ : std_logic;
SIGNAL \U_VGA|Add7~9\ : std_logic;
SIGNAL \U_VGA|Add7~10_combout\ : std_logic;
SIGNAL \U_VGA|LessThan13~7_combout\ : std_logic;
SIGNAL \U_VGA|LessThan13~8_combout\ : std_logic;
SIGNAL \U_VGA|Add7~51\ : std_logic;
SIGNAL \U_VGA|Add7~53\ : std_logic;
SIGNAL \U_VGA|Add7~55\ : std_logic;
SIGNAL \U_VGA|Add7~56_combout\ : std_logic;
SIGNAL \U_VGA|LessThan13~0_combout\ : std_logic;
SIGNAL \U_VGA|Add7~43\ : std_logic;
SIGNAL \U_VGA|Add7~44_combout\ : std_logic;
SIGNAL \U_VGA|Add7~37\ : std_logic;
SIGNAL \U_VGA|Add7~39\ : std_logic;
SIGNAL \U_VGA|Add7~40_combout\ : std_logic;
SIGNAL \U_VGA|Add7~45\ : std_logic;
SIGNAL \U_VGA|Add7~46_combout\ : std_logic;
SIGNAL \U_VGA|LessThan13~3_combout\ : std_logic;
SIGNAL \U_VGA|Add7~27\ : std_logic;
SIGNAL \U_VGA|Add7~29\ : std_logic;
SIGNAL \U_VGA|Add7~31\ : std_logic;
SIGNAL \U_VGA|Add7~32_combout\ : std_logic;
SIGNAL \U_VGA|Add7~38_combout\ : std_logic;
SIGNAL \U_VGA|LessThan13~2_combout\ : std_logic;
SIGNAL \U_VGA|Add7~30_combout\ : std_logic;
SIGNAL \U_VGA|Add7~28_combout\ : std_logic;
SIGNAL \U_VGA|Add7~23\ : std_logic;
SIGNAL \U_VGA|Add7~24_combout\ : std_logic;
SIGNAL \U_VGA|LessThan13~1_combout\ : std_logic;
SIGNAL \U_VGA|LessThan13~4_combout\ : std_logic;
SIGNAL \U_VGA|Add7~54_combout\ : std_logic;
SIGNAL \U_VGA|Add7~47\ : std_logic;
SIGNAL \U_VGA|Add7~48_combout\ : std_logic;
SIGNAL \U_VGA|Add7~52_combout\ : std_logic;
SIGNAL \U_VGA|LessThan13~5_combout\ : std_logic;
SIGNAL \U_VGA|LessThan13~6_combout\ : std_logic;
SIGNAL \U_VGA|LessThan13~9_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p2[9]~2_combout\ : std_logic;
SIGNAL \U_VGA|Add7~19\ : std_logic;
SIGNAL \U_VGA|Add7~20_combout\ : std_logic;
SIGNAL \U_VGA|Add6~19\ : std_logic;
SIGNAL \U_VGA|Add6~20_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p2~31_combout\ : std_logic;
SIGNAL \U_VGA|Add7~21\ : std_logic;
SIGNAL \U_VGA|Add7~22_combout\ : std_logic;
SIGNAL \U_VGA|Add6~21\ : std_logic;
SIGNAL \U_VGA|Add6~22_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p2~30_combout\ : std_logic;
SIGNAL \U_VGA|Add6~23\ : std_logic;
SIGNAL \U_VGA|Add6~24_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p2~29_combout\ : std_logic;
SIGNAL \U_VGA|Add7~25\ : std_logic;
SIGNAL \U_VGA|Add7~26_combout\ : std_logic;
SIGNAL \U_VGA|Add6~25\ : std_logic;
SIGNAL \U_VGA|Add6~26_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p2~28_combout\ : std_logic;
SIGNAL \U_VGA|Add6~27\ : std_logic;
SIGNAL \U_VGA|Add6~28_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p2~27_combout\ : std_logic;
SIGNAL \U_VGA|Add6~29\ : std_logic;
SIGNAL \U_VGA|Add6~30_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p2~26_combout\ : std_logic;
SIGNAL \U_VGA|Add6~31\ : std_logic;
SIGNAL \U_VGA|Add6~32_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p2~25_combout\ : std_logic;
SIGNAL \U_VGA|Add7~33\ : std_logic;
SIGNAL \U_VGA|Add7~34_combout\ : std_logic;
SIGNAL \U_VGA|Add6~33\ : std_logic;
SIGNAL \U_VGA|Add6~34_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p2~24_combout\ : std_logic;
SIGNAL \U_VGA|Add7~35\ : std_logic;
SIGNAL \U_VGA|Add7~36_combout\ : std_logic;
SIGNAL \U_VGA|Add6~35\ : std_logic;
SIGNAL \U_VGA|Add6~36_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p2~23_combout\ : std_logic;
SIGNAL \U_VGA|Add6~37\ : std_logic;
SIGNAL \U_VGA|Add6~38_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p2~22_combout\ : std_logic;
SIGNAL \U_VGA|Add6~39\ : std_logic;
SIGNAL \U_VGA|Add6~40_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p2~21_combout\ : std_logic;
SIGNAL \U_VGA|Add7~41\ : std_logic;
SIGNAL \U_VGA|Add7~42_combout\ : std_logic;
SIGNAL \U_VGA|Add6~41\ : std_logic;
SIGNAL \U_VGA|Add6~42_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p2~20_combout\ : std_logic;
SIGNAL \U_VGA|Add6~43\ : std_logic;
SIGNAL \U_VGA|Add6~44_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p2~19_combout\ : std_logic;
SIGNAL \U_VGA|Add6~45\ : std_logic;
SIGNAL \U_VGA|Add6~46_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p2~18_combout\ : std_logic;
SIGNAL \U_VGA|Add6~47\ : std_logic;
SIGNAL \U_VGA|Add6~48_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p2~17_combout\ : std_logic;
SIGNAL \U_VGA|Add7~49\ : std_logic;
SIGNAL \U_VGA|Add7~50_combout\ : std_logic;
SIGNAL \U_VGA|Add6~49\ : std_logic;
SIGNAL \U_VGA|Add6~50_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p2~16_combout\ : std_logic;
SIGNAL \U_VGA|Add6~51\ : std_logic;
SIGNAL \U_VGA|Add6~52_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p2~15_combout\ : std_logic;
SIGNAL \U_VGA|Add6~53\ : std_logic;
SIGNAL \U_VGA|Add6~54_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p2~14_combout\ : std_logic;
SIGNAL \U_VGA|Add6~55\ : std_logic;
SIGNAL \U_VGA|Add6~56_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p2~13_combout\ : std_logic;
SIGNAL \U_VGA|Add7~57\ : std_logic;
SIGNAL \U_VGA|Add7~58_combout\ : std_logic;
SIGNAL \U_VGA|Add6~57\ : std_logic;
SIGNAL \U_VGA|Add6~58_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p2~12_combout\ : std_logic;
SIGNAL \U_VGA|Add7~59\ : std_logic;
SIGNAL \U_VGA|Add7~60_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p2~11_combout\ : std_logic;
SIGNAL \U_VGA|Add6~59\ : std_logic;
SIGNAL \U_VGA|Add6~60_combout\ : std_logic;
SIGNAL \U_VGA|paddle2_move~0_combout\ : std_logic;
SIGNAL \U_VGA|Add6~9\ : std_logic;
SIGNAL \U_VGA|Add6~10_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p2~5_combout\ : std_logic;
SIGNAL \U_VGA|Add7~11\ : std_logic;
SIGNAL \U_VGA|Add7~12_combout\ : std_logic;
SIGNAL \U_VGA|Add6~11\ : std_logic;
SIGNAL \U_VGA|Add6~12_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p2~4_combout\ : std_logic;
SIGNAL \U_VGA|Add6~13\ : std_logic;
SIGNAL \U_VGA|Add6~14_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p2~3_combout\ : std_logic;
SIGNAL \U_VGA|Add7~15\ : std_logic;
SIGNAL \U_VGA|Add7~16_combout\ : std_logic;
SIGNAL \U_VGA|Add6~16_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p2~0_combout\ : std_logic;
SIGNAL \U_VGA|Add13~1\ : std_logic;
SIGNAL \U_VGA|Add13~3\ : std_logic;
SIGNAL \U_VGA|Add13~5\ : std_logic;
SIGNAL \U_VGA|Add13~7\ : std_logic;
SIGNAL \U_VGA|Add13~9\ : std_logic;
SIGNAL \U_VGA|Add13~11\ : std_logic;
SIGNAL \U_VGA|Add13~13\ : std_logic;
SIGNAL \U_VGA|Add13~15\ : std_logic;
SIGNAL \U_VGA|Add13~16_combout\ : std_logic;
SIGNAL \U_VGA|Add13~14_combout\ : std_logic;
SIGNAL \U_VGA|Add13~12_combout\ : std_logic;
SIGNAL \U_VGA|Add13~10_combout\ : std_logic;
SIGNAL \U_VGA|Add13~8_combout\ : std_logic;
SIGNAL \U_VGA|Add13~6_combout\ : std_logic;
SIGNAL \U_VGA|Add13~4_combout\ : std_logic;
SIGNAL \U_VGA|Add13~2_combout\ : std_logic;
SIGNAL \U_VGA|Add13~0_combout\ : std_logic;
SIGNAL \U_VGA|LessThan25~1_cout\ : std_logic;
SIGNAL \U_VGA|LessThan25~3_cout\ : std_logic;
SIGNAL \U_VGA|LessThan25~5_cout\ : std_logic;
SIGNAL \U_VGA|LessThan25~7_cout\ : std_logic;
SIGNAL \U_VGA|LessThan25~9_cout\ : std_logic;
SIGNAL \U_VGA|LessThan25~11_cout\ : std_logic;
SIGNAL \U_VGA|LessThan25~13_cout\ : std_logic;
SIGNAL \U_VGA|LessThan25~15_cout\ : std_logic;
SIGNAL \U_VGA|LessThan25~17_cout\ : std_logic;
SIGNAL \U_VGA|LessThan25~18_combout\ : std_logic;
SIGNAL \U_VGA|LessThan24~1_cout\ : std_logic;
SIGNAL \U_VGA|LessThan24~3_cout\ : std_logic;
SIGNAL \U_VGA|LessThan24~5_cout\ : std_logic;
SIGNAL \U_VGA|LessThan24~7_cout\ : std_logic;
SIGNAL \U_VGA|LessThan24~9_cout\ : std_logic;
SIGNAL \U_VGA|LessThan24~11_cout\ : std_logic;
SIGNAL \U_VGA|LessThan24~13_cout\ : std_logic;
SIGNAL \U_VGA|LessThan24~15_cout\ : std_logic;
SIGNAL \U_VGA|LessThan24~16_combout\ : std_logic;
SIGNAL \U_VGA|red~1_combout\ : std_logic;
SIGNAL \U_VGA|red~4_combout\ : std_logic;
SIGNAL \U_VGA|red~2_combout\ : std_logic;
SIGNAL \U_VGA|red~3_combout\ : std_logic;
SIGNAL \switch[0]~input_o\ : std_logic;
SIGNAL \U_VGA|paddle1_move~0_combout\ : std_logic;
SIGNAL \U_VGA|Add4~0_combout\ : std_logic;
SIGNAL \U_VGA|Add5~0_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~10_combout\ : std_logic;
SIGNAL \switch[1]~input_o\ : std_logic;
SIGNAL \U_VGA|y_pos_p1[24]~1_combout\ : std_logic;
SIGNAL \U_VGA|Add5~9\ : std_logic;
SIGNAL \U_VGA|Add5~10_combout\ : std_logic;
SIGNAL \U_VGA|Add5~3\ : std_logic;
SIGNAL \U_VGA|Add5~4_combout\ : std_logic;
SIGNAL \U_VGA|LessThan11~7_combout\ : std_logic;
SIGNAL \U_VGA|LessThan11~8_combout\ : std_logic;
SIGNAL \U_VGA|Add5~45\ : std_logic;
SIGNAL \U_VGA|Add5~47\ : std_logic;
SIGNAL \U_VGA|Add5~49\ : std_logic;
SIGNAL \U_VGA|Add5~51\ : std_logic;
SIGNAL \U_VGA|Add5~53\ : std_logic;
SIGNAL \U_VGA|Add5~55\ : std_logic;
SIGNAL \U_VGA|Add5~57\ : std_logic;
SIGNAL \U_VGA|Add5~58_combout\ : std_logic;
SIGNAL \U_VGA|Add5~35\ : std_logic;
SIGNAL \U_VGA|Add5~36_combout\ : std_logic;
SIGNAL \U_VGA|LessThan11~2_combout\ : std_logic;
SIGNAL \U_VGA|Add5~23\ : std_logic;
SIGNAL \U_VGA|Add5~24_combout\ : std_logic;
SIGNAL \U_VGA|Add5~25\ : std_logic;
SIGNAL \U_VGA|Add5~26_combout\ : std_logic;
SIGNAL \U_VGA|Add5~29\ : std_logic;
SIGNAL \U_VGA|Add5~30_combout\ : std_logic;
SIGNAL \U_VGA|LessThan11~1_combout\ : std_logic;
SIGNAL \U_VGA|Add5~46_combout\ : std_logic;
SIGNAL \U_VGA|Add5~39\ : std_logic;
SIGNAL \U_VGA|Add5~40_combout\ : std_logic;
SIGNAL \U_VGA|LessThan11~3_combout\ : std_logic;
SIGNAL \U_VGA|Add5~16_combout\ : std_logic;
SIGNAL \U_VGA|Add5~19\ : std_logic;
SIGNAL \U_VGA|Add5~20_combout\ : std_logic;
SIGNAL \U_VGA|LessThan11~0_combout\ : std_logic;
SIGNAL \U_VGA|LessThan11~4_combout\ : std_logic;
SIGNAL \U_VGA|Add5~56_combout\ : std_logic;
SIGNAL \U_VGA|Add5~50_combout\ : std_logic;
SIGNAL \U_VGA|Add5~48_combout\ : std_logic;
SIGNAL \U_VGA|Add5~52_combout\ : std_logic;
SIGNAL \U_VGA|Add5~54_combout\ : std_logic;
SIGNAL \U_VGA|LessThan11~5_combout\ : std_logic;
SIGNAL \U_VGA|LessThan11~6_combout\ : std_logic;
SIGNAL \U_VGA|Add5~11\ : std_logic;
SIGNAL \U_VGA|Add5~12_combout\ : std_logic;
SIGNAL \U_VGA|Add5~13\ : std_logic;
SIGNAL \U_VGA|Add5~14_combout\ : std_logic;
SIGNAL \U_VGA|LessThan11~9_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1[24]~2_combout\ : std_logic;
SIGNAL \U_VGA|Add5~1\ : std_logic;
SIGNAL \U_VGA|Add5~2_combout\ : std_logic;
SIGNAL \U_VGA|Add4~1\ : std_logic;
SIGNAL \U_VGA|Add4~2_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~9_combout\ : std_logic;
SIGNAL \U_VGA|Add4~3\ : std_logic;
SIGNAL \U_VGA|Add4~4_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~8_combout\ : std_logic;
SIGNAL \U_VGA|Add5~5\ : std_logic;
SIGNAL \U_VGA|Add5~6_combout\ : std_logic;
SIGNAL \U_VGA|Add4~5\ : std_logic;
SIGNAL \U_VGA|Add4~6_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~7_combout\ : std_logic;
SIGNAL \U_VGA|Add5~7\ : std_logic;
SIGNAL \U_VGA|Add5~8_combout\ : std_logic;
SIGNAL \U_VGA|Add4~7\ : std_logic;
SIGNAL \U_VGA|Add4~8_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~6_combout\ : std_logic;
SIGNAL \U_VGA|Add4~9\ : std_logic;
SIGNAL \U_VGA|Add4~10_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~5_combout\ : std_logic;
SIGNAL \U_VGA|Add4~11\ : std_logic;
SIGNAL \U_VGA|Add4~12_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~4_combout\ : std_logic;
SIGNAL \U_VGA|Add4~13\ : std_logic;
SIGNAL \U_VGA|Add4~14_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~3_combout\ : std_logic;
SIGNAL \U_VGA|Add5~15\ : std_logic;
SIGNAL \U_VGA|Add5~17\ : std_logic;
SIGNAL \U_VGA|Add5~18_combout\ : std_logic;
SIGNAL \U_VGA|Add4~15\ : std_logic;
SIGNAL \U_VGA|Add4~17\ : std_logic;
SIGNAL \U_VGA|Add4~18_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~32_combout\ : std_logic;
SIGNAL \U_VGA|Add4~19\ : std_logic;
SIGNAL \U_VGA|Add4~20_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~31_combout\ : std_logic;
SIGNAL \U_VGA|Add5~21\ : std_logic;
SIGNAL \U_VGA|Add5~22_combout\ : std_logic;
SIGNAL \U_VGA|Add4~21\ : std_logic;
SIGNAL \U_VGA|Add4~22_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~30_combout\ : std_logic;
SIGNAL \U_VGA|Add4~23\ : std_logic;
SIGNAL \U_VGA|Add4~24_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~29_combout\ : std_logic;
SIGNAL \U_VGA|Add4~25\ : std_logic;
SIGNAL \U_VGA|Add4~26_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~28_combout\ : std_logic;
SIGNAL \U_VGA|Add5~27\ : std_logic;
SIGNAL \U_VGA|Add5~28_combout\ : std_logic;
SIGNAL \U_VGA|Add4~27\ : std_logic;
SIGNAL \U_VGA|Add4~28_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~27_combout\ : std_logic;
SIGNAL \U_VGA|Add4~29\ : std_logic;
SIGNAL \U_VGA|Add4~30_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~26_combout\ : std_logic;
SIGNAL \U_VGA|Add5~31\ : std_logic;
SIGNAL \U_VGA|Add5~32_combout\ : std_logic;
SIGNAL \U_VGA|Add4~31\ : std_logic;
SIGNAL \U_VGA|Add4~32_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~25_combout\ : std_logic;
SIGNAL \U_VGA|Add5~33\ : std_logic;
SIGNAL \U_VGA|Add5~34_combout\ : std_logic;
SIGNAL \U_VGA|Add4~33\ : std_logic;
SIGNAL \U_VGA|Add4~34_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~24_combout\ : std_logic;
SIGNAL \U_VGA|Add4~35\ : std_logic;
SIGNAL \U_VGA|Add4~36_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~23_combout\ : std_logic;
SIGNAL \U_VGA|Add5~37\ : std_logic;
SIGNAL \U_VGA|Add5~38_combout\ : std_logic;
SIGNAL \U_VGA|Add4~37\ : std_logic;
SIGNAL \U_VGA|Add4~38_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~22_combout\ : std_logic;
SIGNAL \U_VGA|Add4~39\ : std_logic;
SIGNAL \U_VGA|Add4~40_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~21_combout\ : std_logic;
SIGNAL \U_VGA|Add5~41\ : std_logic;
SIGNAL \U_VGA|Add5~42_combout\ : std_logic;
SIGNAL \U_VGA|Add4~41\ : std_logic;
SIGNAL \U_VGA|Add4~42_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~20_combout\ : std_logic;
SIGNAL \U_VGA|Add5~43\ : std_logic;
SIGNAL \U_VGA|Add5~44_combout\ : std_logic;
SIGNAL \U_VGA|Add4~43\ : std_logic;
SIGNAL \U_VGA|Add4~44_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~19_combout\ : std_logic;
SIGNAL \U_VGA|Add4~45\ : std_logic;
SIGNAL \U_VGA|Add4~46_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~18_combout\ : std_logic;
SIGNAL \U_VGA|Add4~47\ : std_logic;
SIGNAL \U_VGA|Add4~48_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~17_combout\ : std_logic;
SIGNAL \U_VGA|Add4~49\ : std_logic;
SIGNAL \U_VGA|Add4~50_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~16_combout\ : std_logic;
SIGNAL \U_VGA|Add4~51\ : std_logic;
SIGNAL \U_VGA|Add4~52_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~15_combout\ : std_logic;
SIGNAL \U_VGA|Add4~53\ : std_logic;
SIGNAL \U_VGA|Add4~54_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~14_combout\ : std_logic;
SIGNAL \U_VGA|Add4~55\ : std_logic;
SIGNAL \U_VGA|Add4~56_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~13_combout\ : std_logic;
SIGNAL \U_VGA|Add4~57\ : std_logic;
SIGNAL \U_VGA|Add4~58_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~12_combout\ : std_logic;
SIGNAL \U_VGA|Add5~59\ : std_logic;
SIGNAL \U_VGA|Add5~60_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~11_combout\ : std_logic;
SIGNAL \U_VGA|Add4~59\ : std_logic;
SIGNAL \U_VGA|Add4~60_combout\ : std_logic;
SIGNAL \U_VGA|Add4~16_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~0_combout\ : std_logic;
SIGNAL \U_VGA|LessThan20~1_cout\ : std_logic;
SIGNAL \U_VGA|LessThan20~3_cout\ : std_logic;
SIGNAL \U_VGA|LessThan20~5_cout\ : std_logic;
SIGNAL \U_VGA|LessThan20~7_cout\ : std_logic;
SIGNAL \U_VGA|LessThan20~9_cout\ : std_logic;
SIGNAL \U_VGA|LessThan20~11_cout\ : std_logic;
SIGNAL \U_VGA|LessThan20~13_cout\ : std_logic;
SIGNAL \U_VGA|LessThan20~15_cout\ : std_logic;
SIGNAL \U_VGA|LessThan20~16_combout\ : std_logic;
SIGNAL \U_VGA|Add11~1\ : std_logic;
SIGNAL \U_VGA|Add11~3\ : std_logic;
SIGNAL \U_VGA|Add11~5\ : std_logic;
SIGNAL \U_VGA|Add11~7\ : std_logic;
SIGNAL \U_VGA|Add11~9\ : std_logic;
SIGNAL \U_VGA|Add11~11\ : std_logic;
SIGNAL \U_VGA|Add11~13\ : std_logic;
SIGNAL \U_VGA|Add11~15\ : std_logic;
SIGNAL \U_VGA|Add11~16_combout\ : std_logic;
SIGNAL \U_VGA|Add11~14_combout\ : std_logic;
SIGNAL \U_VGA|Add11~12_combout\ : std_logic;
SIGNAL \U_VGA|Add11~10_combout\ : std_logic;
SIGNAL \U_VGA|Add11~8_combout\ : std_logic;
SIGNAL \U_VGA|Add11~6_combout\ : std_logic;
SIGNAL \U_VGA|Add11~4_combout\ : std_logic;
SIGNAL \U_VGA|Add11~2_combout\ : std_logic;
SIGNAL \U_VGA|Add11~0_combout\ : std_logic;
SIGNAL \U_VGA|LessThan21~1_cout\ : std_logic;
SIGNAL \U_VGA|LessThan21~3_cout\ : std_logic;
SIGNAL \U_VGA|LessThan21~5_cout\ : std_logic;
SIGNAL \U_VGA|LessThan21~7_cout\ : std_logic;
SIGNAL \U_VGA|LessThan21~9_cout\ : std_logic;
SIGNAL \U_VGA|LessThan21~11_cout\ : std_logic;
SIGNAL \U_VGA|LessThan21~13_cout\ : std_logic;
SIGNAL \U_VGA|LessThan21~15_cout\ : std_logic;
SIGNAL \U_VGA|LessThan21~17_cout\ : std_logic;
SIGNAL \U_VGA|LessThan21~18_combout\ : std_logic;
SIGNAL \U_VGA|red~5_combout\ : std_logic;
SIGNAL \U_VGA|temp_y_pos~9_combout\ : std_logic;
SIGNAL \U_VGA|Add0~1_combout\ : std_logic;
SIGNAL \U_VGA|mov_y~70_combout\ : std_logic;
SIGNAL \U_VGA|Add0~0_combout\ : std_logic;
SIGNAL \U_VGA|Add0~2\ : std_logic;
SIGNAL \U_VGA|Add0~3_combout\ : std_logic;
SIGNAL \U_VGA|mov_y~69_combout\ : std_logic;
SIGNAL \U_VGA|Add0~4\ : std_logic;
SIGNAL \U_VGA|Add0~5_combout\ : std_logic;
SIGNAL \U_VGA|mov_y~68_combout\ : std_logic;
SIGNAL \U_VGA|Add0~6\ : std_logic;
SIGNAL \U_VGA|Add0~7_combout\ : std_logic;
SIGNAL \U_VGA|mov_y~67_combout\ : std_logic;
SIGNAL \U_VGA|Add0~8\ : std_logic;
SIGNAL \U_VGA|Add0~9_combout\ : std_logic;
SIGNAL \U_VGA|mov_y~66_combout\ : std_logic;
SIGNAL \U_VGA|Add0~10\ : std_logic;
SIGNAL \U_VGA|Add0~11_combout\ : std_logic;
SIGNAL \U_VGA|mov_y~65_combout\ : std_logic;
SIGNAL \U_VGA|Add0~12\ : std_logic;
SIGNAL \U_VGA|Add0~13_combout\ : std_logic;
SIGNAL \U_VGA|mov_y~64_combout\ : std_logic;
SIGNAL \U_VGA|Add0~14\ : std_logic;
SIGNAL \U_VGA|Add0~15_combout\ : std_logic;
SIGNAL \U_VGA|mov_y~63_combout\ : std_logic;
SIGNAL \U_VGA|Add0~16\ : std_logic;
SIGNAL \U_VGA|Add0~17_combout\ : std_logic;
SIGNAL \U_VGA|mov_y~62_combout\ : std_logic;
SIGNAL \U_VGA|Add0~18\ : std_logic;
SIGNAL \U_VGA|Add0~19_combout\ : std_logic;
SIGNAL \U_VGA|mov_y~92_combout\ : std_logic;
SIGNAL \U_VGA|Add0~20\ : std_logic;
SIGNAL \U_VGA|Add0~21_combout\ : std_logic;
SIGNAL \U_VGA|mov_y~91_combout\ : std_logic;
SIGNAL \U_VGA|Add0~22\ : std_logic;
SIGNAL \U_VGA|Add0~23_combout\ : std_logic;
SIGNAL \U_VGA|mov_y~90_combout\ : std_logic;
SIGNAL \U_VGA|Add0~24\ : std_logic;
SIGNAL \U_VGA|Add0~25_combout\ : std_logic;
SIGNAL \U_VGA|mov_y~89_combout\ : std_logic;
SIGNAL \U_VGA|Add0~26\ : std_logic;
SIGNAL \U_VGA|Add0~27_combout\ : std_logic;
SIGNAL \U_VGA|mov_y~88_combout\ : std_logic;
SIGNAL \U_VGA|Add0~28\ : std_logic;
SIGNAL \U_VGA|Add0~29_combout\ : std_logic;
SIGNAL \U_VGA|mov_y~87_combout\ : std_logic;
SIGNAL \U_VGA|Add0~30\ : std_logic;
SIGNAL \U_VGA|Add0~31_combout\ : std_logic;
SIGNAL \U_VGA|mov_y~86_combout\ : std_logic;
SIGNAL \U_VGA|Add0~32\ : std_logic;
SIGNAL \U_VGA|Add0~33_combout\ : std_logic;
SIGNAL \U_VGA|mov_y~85_combout\ : std_logic;
SIGNAL \U_VGA|Add0~34\ : std_logic;
SIGNAL \U_VGA|Add0~35_combout\ : std_logic;
SIGNAL \U_VGA|mov_y~84_combout\ : std_logic;
SIGNAL \U_VGA|Add0~36\ : std_logic;
SIGNAL \U_VGA|Add0~37_combout\ : std_logic;
SIGNAL \U_VGA|mov_y~83_combout\ : std_logic;
SIGNAL \U_VGA|Add0~38\ : std_logic;
SIGNAL \U_VGA|Add0~39_combout\ : std_logic;
SIGNAL \U_VGA|mov_y~82_combout\ : std_logic;
SIGNAL \U_VGA|Add0~40\ : std_logic;
SIGNAL \U_VGA|Add0~41_combout\ : std_logic;
SIGNAL \U_VGA|mov_y~81_combout\ : std_logic;
SIGNAL \U_VGA|Add0~42\ : std_logic;
SIGNAL \U_VGA|Add0~43_combout\ : std_logic;
SIGNAL \U_VGA|mov_y~80_combout\ : std_logic;
SIGNAL \U_VGA|Add0~44\ : std_logic;
SIGNAL \U_VGA|Add0~45_combout\ : std_logic;
SIGNAL \U_VGA|mov_y~79_combout\ : std_logic;
SIGNAL \U_VGA|Add0~46\ : std_logic;
SIGNAL \U_VGA|Add0~47_combout\ : std_logic;
SIGNAL \U_VGA|mov_y~78_combout\ : std_logic;
SIGNAL \U_VGA|Add0~48\ : std_logic;
SIGNAL \U_VGA|Add0~49_combout\ : std_logic;
SIGNAL \U_VGA|mov_y~77_combout\ : std_logic;
SIGNAL \U_VGA|Add0~50\ : std_logic;
SIGNAL \U_VGA|Add0~51_combout\ : std_logic;
SIGNAL \U_VGA|mov_y~76_combout\ : std_logic;
SIGNAL \U_VGA|Add0~52\ : std_logic;
SIGNAL \U_VGA|Add0~53_combout\ : std_logic;
SIGNAL \U_VGA|mov_y~75_combout\ : std_logic;
SIGNAL \U_VGA|Add0~54\ : std_logic;
SIGNAL \U_VGA|Add0~55_combout\ : std_logic;
SIGNAL \U_VGA|mov_y~74_combout\ : std_logic;
SIGNAL \U_VGA|Add0~56\ : std_logic;
SIGNAL \U_VGA|Add0~57_combout\ : std_logic;
SIGNAL \U_VGA|mov_y~73_combout\ : std_logic;
SIGNAL \U_VGA|Add0~58\ : std_logic;
SIGNAL \U_VGA|Add0~59_combout\ : std_logic;
SIGNAL \U_VGA|mov_y~72_combout\ : std_logic;
SIGNAL \U_VGA|Add0~60\ : std_logic;
SIGNAL \U_VGA|Add0~61_combout\ : std_logic;
SIGNAL \U_VGA|mov_y~71_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_y~9_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_y~10_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_y~11_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_y~12_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_y~13_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_y~14_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_y~15_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_y~16_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_y~17_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_y~18_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_y~19_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_y~20_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_y~21_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_y~22_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_y~23_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_y~24_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_y~25_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_y~26_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_y~27_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_y~28_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_y~29_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_y~30_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_y~0_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_y~1_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_y~2_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_y~3_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_y~4_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_y~5_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_y~6_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_y~7_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_y~8_combout\ : std_logic;
SIGNAL \U_VGA|Add3~0_combout\ : std_logic;
SIGNAL \U_VGA|Add3~26_combout\ : std_logic;
SIGNAL \U_VGA|temp_y_pos~8_combout\ : std_logic;
SIGNAL \U_VGA|Add3~1\ : std_logic;
SIGNAL \U_VGA|Add3~2_combout\ : std_logic;
SIGNAL \U_VGA|Add3~25_combout\ : std_logic;
SIGNAL \U_VGA|temp_y_pos~7_combout\ : std_logic;
SIGNAL \U_VGA|Add3~3\ : std_logic;
SIGNAL \U_VGA|Add3~4_combout\ : std_logic;
SIGNAL \U_VGA|Add3~24_combout\ : std_logic;
SIGNAL \U_VGA|temp_y_pos~6_combout\ : std_logic;
SIGNAL \U_VGA|Add3~5\ : std_logic;
SIGNAL \U_VGA|Add3~6_combout\ : std_logic;
SIGNAL \U_VGA|Add3~23_combout\ : std_logic;
SIGNAL \U_VGA|temp_y_pos~5_combout\ : std_logic;
SIGNAL \U_VGA|Add3~7\ : std_logic;
SIGNAL \U_VGA|Add3~8_combout\ : std_logic;
SIGNAL \U_VGA|Add3~22_combout\ : std_logic;
SIGNAL \U_VGA|temp_y_pos~4_combout\ : std_logic;
SIGNAL \U_VGA|Add3~9\ : std_logic;
SIGNAL \U_VGA|Add3~10_combout\ : std_logic;
SIGNAL \U_VGA|Add3~21_combout\ : std_logic;
SIGNAL \U_VGA|temp_y_pos~3_combout\ : std_logic;
SIGNAL \U_VGA|Add3~11\ : std_logic;
SIGNAL \U_VGA|Add3~12_combout\ : std_logic;
SIGNAL \U_VGA|Add3~20_combout\ : std_logic;
SIGNAL \U_VGA|temp_y_pos~2_combout\ : std_logic;
SIGNAL \U_VGA|Add3~13\ : std_logic;
SIGNAL \U_VGA|Add3~14_combout\ : std_logic;
SIGNAL \U_VGA|Add3~19_combout\ : std_logic;
SIGNAL \U_VGA|temp_y_pos~1_combout\ : std_logic;
SIGNAL \U_VGA|Add3~15\ : std_logic;
SIGNAL \U_VGA|Add3~16_combout\ : std_logic;
SIGNAL \U_VGA|Add3~18_combout\ : std_logic;
SIGNAL \U_VGA|temp_y_pos~0_combout\ : std_logic;
SIGNAL \U_VGA|Add3~17\ : std_logic;
SIGNAL \U_VGA|Add3~27_combout\ : std_logic;
SIGNAL \U_VGA|Add3~92_combout\ : std_logic;
SIGNAL \U_VGA|temp_y_pos~30_combout\ : std_logic;
SIGNAL \U_VGA|Add3~28\ : std_logic;
SIGNAL \U_VGA|Add3~29_combout\ : std_logic;
SIGNAL \U_VGA|Add3~91_combout\ : std_logic;
SIGNAL \U_VGA|temp_y_pos~29_combout\ : std_logic;
SIGNAL \U_VGA|Add3~30\ : std_logic;
SIGNAL \U_VGA|Add3~31_combout\ : std_logic;
SIGNAL \U_VGA|Add3~90_combout\ : std_logic;
SIGNAL \U_VGA|temp_y_pos~28_combout\ : std_logic;
SIGNAL \U_VGA|Add3~32\ : std_logic;
SIGNAL \U_VGA|Add3~33_combout\ : std_logic;
SIGNAL \U_VGA|Add3~89_combout\ : std_logic;
SIGNAL \U_VGA|temp_y_pos~27_combout\ : std_logic;
SIGNAL \U_VGA|Add3~34\ : std_logic;
SIGNAL \U_VGA|Add3~35_combout\ : std_logic;
SIGNAL \U_VGA|Add3~88_combout\ : std_logic;
SIGNAL \U_VGA|temp_y_pos~26_combout\ : std_logic;
SIGNAL \U_VGA|Add3~36\ : std_logic;
SIGNAL \U_VGA|Add3~37_combout\ : std_logic;
SIGNAL \U_VGA|Add3~87_combout\ : std_logic;
SIGNAL \U_VGA|temp_y_pos~25_combout\ : std_logic;
SIGNAL \U_VGA|Add3~38\ : std_logic;
SIGNAL \U_VGA|Add3~39_combout\ : std_logic;
SIGNAL \U_VGA|Add3~86_combout\ : std_logic;
SIGNAL \U_VGA|temp_y_pos~24_combout\ : std_logic;
SIGNAL \U_VGA|Add3~40\ : std_logic;
SIGNAL \U_VGA|Add3~41_combout\ : std_logic;
SIGNAL \U_VGA|Add3~85_combout\ : std_logic;
SIGNAL \U_VGA|temp_y_pos~23_combout\ : std_logic;
SIGNAL \U_VGA|Add3~42\ : std_logic;
SIGNAL \U_VGA|Add3~43_combout\ : std_logic;
SIGNAL \U_VGA|Add3~84_combout\ : std_logic;
SIGNAL \U_VGA|temp_y_pos~22_combout\ : std_logic;
SIGNAL \U_VGA|Add3~44\ : std_logic;
SIGNAL \U_VGA|Add3~45_combout\ : std_logic;
SIGNAL \U_VGA|Add3~83_combout\ : std_logic;
SIGNAL \U_VGA|temp_y_pos~21_combout\ : std_logic;
SIGNAL \U_VGA|Add3~46\ : std_logic;
SIGNAL \U_VGA|Add3~47_combout\ : std_logic;
SIGNAL \U_VGA|Add3~82_combout\ : std_logic;
SIGNAL \U_VGA|temp_y_pos~20_combout\ : std_logic;
SIGNAL \U_VGA|Add3~48\ : std_logic;
SIGNAL \U_VGA|Add3~49_combout\ : std_logic;
SIGNAL \U_VGA|Add3~81_combout\ : std_logic;
SIGNAL \U_VGA|temp_y_pos~19_combout\ : std_logic;
SIGNAL \U_VGA|Add3~50\ : std_logic;
SIGNAL \U_VGA|Add3~51_combout\ : std_logic;
SIGNAL \U_VGA|Add3~80_combout\ : std_logic;
SIGNAL \U_VGA|temp_y_pos~18_combout\ : std_logic;
SIGNAL \U_VGA|Add3~52\ : std_logic;
SIGNAL \U_VGA|Add3~53_combout\ : std_logic;
SIGNAL \U_VGA|Add3~79_combout\ : std_logic;
SIGNAL \U_VGA|temp_y_pos~17_combout\ : std_logic;
SIGNAL \U_VGA|Add3~54\ : std_logic;
SIGNAL \U_VGA|Add3~55_combout\ : std_logic;
SIGNAL \U_VGA|Add3~78_combout\ : std_logic;
SIGNAL \U_VGA|temp_y_pos~16_combout\ : std_logic;
SIGNAL \U_VGA|Add3~56\ : std_logic;
SIGNAL \U_VGA|Add3~57_combout\ : std_logic;
SIGNAL \U_VGA|Add3~77_combout\ : std_logic;
SIGNAL \U_VGA|temp_y_pos~15_combout\ : std_logic;
SIGNAL \U_VGA|Add3~58\ : std_logic;
SIGNAL \U_VGA|Add3~59_combout\ : std_logic;
SIGNAL \U_VGA|Add3~76_combout\ : std_logic;
SIGNAL \U_VGA|temp_y_pos~14_combout\ : std_logic;
SIGNAL \U_VGA|Add3~60\ : std_logic;
SIGNAL \U_VGA|Add3~61_combout\ : std_logic;
SIGNAL \U_VGA|Add3~75_combout\ : std_logic;
SIGNAL \U_VGA|temp_y_pos~13_combout\ : std_logic;
SIGNAL \U_VGA|Add3~62\ : std_logic;
SIGNAL \U_VGA|Add3~63_combout\ : std_logic;
SIGNAL \U_VGA|Add3~74_combout\ : std_logic;
SIGNAL \U_VGA|temp_y_pos~12_combout\ : std_logic;
SIGNAL \U_VGA|Add3~64\ : std_logic;
SIGNAL \U_VGA|Add3~65_combout\ : std_logic;
SIGNAL \U_VGA|Add3~73_combout\ : std_logic;
SIGNAL \U_VGA|temp_y_pos~11_combout\ : std_logic;
SIGNAL \U_VGA|Add3~66\ : std_logic;
SIGNAL \U_VGA|Add3~67_combout\ : std_logic;
SIGNAL \U_VGA|Add3~72_combout\ : std_logic;
SIGNAL \U_VGA|temp_y_pos~10_combout\ : std_logic;
SIGNAL \U_VGA|Add3~68\ : std_logic;
SIGNAL \U_VGA|Add3~69_combout\ : std_logic;
SIGNAL \U_VGA|Add3~71_combout\ : std_logic;
SIGNAL \U_VGA|Add9~1\ : std_logic;
SIGNAL \U_VGA|Add9~3\ : std_logic;
SIGNAL \U_VGA|Add9~5\ : std_logic;
SIGNAL \U_VGA|Add9~7\ : std_logic;
SIGNAL \U_VGA|Add9~9\ : std_logic;
SIGNAL \U_VGA|Add9~11\ : std_logic;
SIGNAL \U_VGA|Add9~13\ : std_logic;
SIGNAL \U_VGA|Add9~15\ : std_logic;
SIGNAL \U_VGA|Add9~17\ : std_logic;
SIGNAL \U_VGA|Add9~19\ : std_logic;
SIGNAL \U_VGA|Add9~21\ : std_logic;
SIGNAL \U_VGA|Add9~23\ : std_logic;
SIGNAL \U_VGA|Add9~25\ : std_logic;
SIGNAL \U_VGA|Add9~27\ : std_logic;
SIGNAL \U_VGA|Add9~29\ : std_logic;
SIGNAL \U_VGA|Add9~31\ : std_logic;
SIGNAL \U_VGA|Add9~33\ : std_logic;
SIGNAL \U_VGA|Add9~35\ : std_logic;
SIGNAL \U_VGA|Add9~37\ : std_logic;
SIGNAL \U_VGA|Add9~39\ : std_logic;
SIGNAL \U_VGA|Add9~41\ : std_logic;
SIGNAL \U_VGA|Add9~43\ : std_logic;
SIGNAL \U_VGA|Add9~45\ : std_logic;
SIGNAL \U_VGA|Add9~47\ : std_logic;
SIGNAL \U_VGA|Add9~49\ : std_logic;
SIGNAL \U_VGA|Add9~50_combout\ : std_logic;
SIGNAL \U_VGA|LessThan3~7_combout\ : std_logic;
SIGNAL \U_VGA|LessThan3~8_combout\ : std_logic;
SIGNAL \U_VGA|LessThan3~2_combout\ : std_logic;
SIGNAL \U_VGA|LessThan3~1_combout\ : std_logic;
SIGNAL \U_VGA|LessThan3~0_combout\ : std_logic;
SIGNAL \U_VGA|LessThan3~3_combout\ : std_logic;
SIGNAL \U_VGA|LessThan3~4_combout\ : std_logic;
SIGNAL \U_VGA|LessThan3~6_combout\ : std_logic;
SIGNAL \U_VGA|LessThan3~5_combout\ : std_logic;
SIGNAL \U_VGA|LessThan3~9_combout\ : std_logic;
SIGNAL \U_VGA|Add9~46_combout\ : std_logic;
SIGNAL \U_VGA|Add9~48_combout\ : std_logic;
SIGNAL \U_VGA|LessThan2~2_combout\ : std_logic;
SIGNAL \U_VGA|Add9~2_combout\ : std_logic;
SIGNAL \U_VGA|Add9~0_combout\ : std_logic;
SIGNAL \U_VGA|Add9~4_combout\ : std_logic;
SIGNAL \U_VGA|LessThan2~1_combout\ : std_logic;
SIGNAL \U_VGA|Add9~6_combout\ : std_logic;
SIGNAL \U_VGA|Add9~12_combout\ : std_logic;
SIGNAL \U_VGA|Add9~8_combout\ : std_logic;
SIGNAL \U_VGA|Add9~10_combout\ : std_logic;
SIGNAL \U_VGA|LessThan2~0_combout\ : std_logic;
SIGNAL \U_VGA|LessThan2~3_combout\ : std_logic;
SIGNAL \U_VGA|Add9~20_combout\ : std_logic;
SIGNAL \U_VGA|Add9~14_combout\ : std_logic;
SIGNAL \U_VGA|Add9~16_combout\ : std_logic;
SIGNAL \U_VGA|Add9~18_combout\ : std_logic;
SIGNAL \U_VGA|LessThan2~4_combout\ : std_logic;
SIGNAL \U_VGA|Add9~24_combout\ : std_logic;
SIGNAL \U_VGA|Add9~26_combout\ : std_logic;
SIGNAL \U_VGA|Add9~22_combout\ : std_logic;
SIGNAL \U_VGA|Add9~28_combout\ : std_logic;
SIGNAL \U_VGA|LessThan2~5_combout\ : std_logic;
SIGNAL \U_VGA|Add9~38_combout\ : std_logic;
SIGNAL \U_VGA|Add9~44_combout\ : std_logic;
SIGNAL \U_VGA|Add9~40_combout\ : std_logic;
SIGNAL \U_VGA|Add9~42_combout\ : std_logic;
SIGNAL \U_VGA|LessThan2~7_combout\ : std_logic;
SIGNAL \U_VGA|Add9~32_combout\ : std_logic;
SIGNAL \U_VGA|Add9~34_combout\ : std_logic;
SIGNAL \U_VGA|Add9~30_combout\ : std_logic;
SIGNAL \U_VGA|Add9~36_combout\ : std_logic;
SIGNAL \U_VGA|LessThan2~6_combout\ : std_logic;
SIGNAL \U_VGA|LessThan2~8_combout\ : std_logic;
SIGNAL \U_VGA|LessThan2~9_combout\ : std_logic;
SIGNAL \U_VGA|ball_move~2_combout\ : std_logic;
SIGNAL \U_VGA|Add13~17\ : std_logic;
SIGNAL \U_VGA|Add13~19\ : std_logic;
SIGNAL \U_VGA|Add13~21\ : std_logic;
SIGNAL \U_VGA|Add13~23\ : std_logic;
SIGNAL \U_VGA|Add13~25\ : std_logic;
SIGNAL \U_VGA|Add13~27\ : std_logic;
SIGNAL \U_VGA|Add13~29\ : std_logic;
SIGNAL \U_VGA|Add13~31\ : std_logic;
SIGNAL \U_VGA|Add13~33\ : std_logic;
SIGNAL \U_VGA|Add13~35\ : std_logic;
SIGNAL \U_VGA|Add13~37\ : std_logic;
SIGNAL \U_VGA|Add13~39\ : std_logic;
SIGNAL \U_VGA|Add13~41\ : std_logic;
SIGNAL \U_VGA|Add13~43\ : std_logic;
SIGNAL \U_VGA|Add13~45\ : std_logic;
SIGNAL \U_VGA|Add13~47\ : std_logic;
SIGNAL \U_VGA|Add13~49\ : std_logic;
SIGNAL \U_VGA|Add13~51\ : std_logic;
SIGNAL \U_VGA|Add13~53\ : std_logic;
SIGNAL \U_VGA|Add13~55\ : std_logic;
SIGNAL \U_VGA|Add13~57\ : std_logic;
SIGNAL \U_VGA|Add13~59\ : std_logic;
SIGNAL \U_VGA|Add13~60_combout\ : std_logic;
SIGNAL \U_VGA|Add13~58_combout\ : std_logic;
SIGNAL \U_VGA|Add13~56_combout\ : std_logic;
SIGNAL \U_VGA|Add13~54_combout\ : std_logic;
SIGNAL \U_VGA|Add13~52_combout\ : std_logic;
SIGNAL \U_VGA|Add13~50_combout\ : std_logic;
SIGNAL \U_VGA|Add13~48_combout\ : std_logic;
SIGNAL \U_VGA|Add13~46_combout\ : std_logic;
SIGNAL \U_VGA|Add13~44_combout\ : std_logic;
SIGNAL \U_VGA|Add13~42_combout\ : std_logic;
SIGNAL \U_VGA|Add13~40_combout\ : std_logic;
SIGNAL \U_VGA|Add13~38_combout\ : std_logic;
SIGNAL \U_VGA|Add13~36_combout\ : std_logic;
SIGNAL \U_VGA|Add13~34_combout\ : std_logic;
SIGNAL \U_VGA|Add13~32_combout\ : std_logic;
SIGNAL \U_VGA|Add13~30_combout\ : std_logic;
SIGNAL \U_VGA|Add13~28_combout\ : std_logic;
SIGNAL \U_VGA|Add13~26_combout\ : std_logic;
SIGNAL \U_VGA|Add13~24_combout\ : std_logic;
SIGNAL \U_VGA|Add13~22_combout\ : std_logic;
SIGNAL \U_VGA|Add13~20_combout\ : std_logic;
SIGNAL \U_VGA|Add13~18_combout\ : std_logic;
SIGNAL \U_VGA|LessThan9~1_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~3_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~5_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~7_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~9_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~11_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~13_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~15_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~17_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~19_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~21_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~23_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~25_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~27_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~29_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~31_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~33_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~35_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~37_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~39_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~41_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~43_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~45_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~47_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~49_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~51_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~53_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~55_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~57_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~59_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~60_combout\ : std_logic;
SIGNAL \U_VGA|LessThan8~1_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~3_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~5_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~7_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~9_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~11_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~13_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~15_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~17_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~19_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~21_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~23_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~25_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~27_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~29_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~31_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~33_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~35_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~37_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~39_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~41_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~43_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~45_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~47_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~49_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~51_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~53_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~55_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~57_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~59_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~60_combout\ : std_logic;
SIGNAL \U_VGA|temp_x_pos~1_combout\ : std_logic;
SIGNAL \U_VGA|Add1~1_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~85_combout\ : std_logic;
SIGNAL \U_VGA|temp_x_pos~6_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_x~6_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_x~7_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_x~8_combout\ : std_logic;
SIGNAL \U_VGA|Add2~0_combout\ : std_logic;
SIGNAL \U_VGA|Add2~26_combout\ : std_logic;
SIGNAL \U_VGA|temp_x_pos~8_combout\ : std_logic;
SIGNAL \U_VGA|Add2~1\ : std_logic;
SIGNAL \U_VGA|Add2~2_combout\ : std_logic;
SIGNAL \U_VGA|Add2~25_combout\ : std_logic;
SIGNAL \U_VGA|temp_x_pos~7_combout\ : std_logic;
SIGNAL \U_VGA|Add2~3\ : std_logic;
SIGNAL \U_VGA|Add2~4_combout\ : std_logic;
SIGNAL \U_VGA|Add2~24_combout\ : std_logic;
SIGNAL \U_VGA|Add1~16\ : std_logic;
SIGNAL \U_VGA|Add1~17_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~77_combout\ : std_logic;
SIGNAL \U_VGA|Add1~18\ : std_logic;
SIGNAL \U_VGA|Add1~19_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~87_combout\ : std_logic;
SIGNAL \U_VGA|Add1~20\ : std_logic;
SIGNAL \U_VGA|Add1~21_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~86_combout\ : std_logic;
SIGNAL \U_VGA|Add1~22\ : std_logic;
SIGNAL \U_VGA|Add1~23_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~91_combout\ : std_logic;
SIGNAL \U_VGA|Add1~24\ : std_logic;
SIGNAL \U_VGA|Add1~25_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~90_combout\ : std_logic;
SIGNAL \U_VGA|Add1~26\ : std_logic;
SIGNAL \U_VGA|Add1~27_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~89_combout\ : std_logic;
SIGNAL \U_VGA|Add1~28\ : std_logic;
SIGNAL \U_VGA|Add1~29_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~88_combout\ : std_logic;
SIGNAL \U_VGA|Add1~30\ : std_logic;
SIGNAL \U_VGA|Add1~31_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~95_combout\ : std_logic;
SIGNAL \U_VGA|Add1~32\ : std_logic;
SIGNAL \U_VGA|Add1~33_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~94_combout\ : std_logic;
SIGNAL \U_VGA|Add1~34\ : std_logic;
SIGNAL \U_VGA|Add1~35_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~93_combout\ : std_logic;
SIGNAL \U_VGA|Add1~36\ : std_logic;
SIGNAL \U_VGA|Add1~37_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~92_combout\ : std_logic;
SIGNAL \U_VGA|Add1~38\ : std_logic;
SIGNAL \U_VGA|Add1~39_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~99_combout\ : std_logic;
SIGNAL \U_VGA|Add1~40\ : std_logic;
SIGNAL \U_VGA|Add1~41_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~98_combout\ : std_logic;
SIGNAL \U_VGA|Add1~42\ : std_logic;
SIGNAL \U_VGA|Add1~43_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~97_combout\ : std_logic;
SIGNAL \U_VGA|Add1~44\ : std_logic;
SIGNAL \U_VGA|Add1~45_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~96_combout\ : std_logic;
SIGNAL \U_VGA|Add1~46\ : std_logic;
SIGNAL \U_VGA|Add1~47_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~103_combout\ : std_logic;
SIGNAL \U_VGA|Add1~48\ : std_logic;
SIGNAL \U_VGA|Add1~49_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~102_combout\ : std_logic;
SIGNAL \U_VGA|Add1~50\ : std_logic;
SIGNAL \U_VGA|Add1~51_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~101_combout\ : std_logic;
SIGNAL \U_VGA|Add1~52\ : std_logic;
SIGNAL \U_VGA|Add1~53_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~100_combout\ : std_logic;
SIGNAL \U_VGA|Add1~54\ : std_logic;
SIGNAL \U_VGA|Add1~55_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~106_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_x~29_combout\ : std_logic;
SIGNAL \U_VGA|temp_x_pos~29_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_x~23_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_x~24_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_x~25_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_x~26_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_x~19_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_x~20_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_x~21_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_x~22_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_x~15_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_x~16_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_x~17_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_x~18_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_x~11_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_x~12_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_x~13_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_x~14_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_x~9_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_x~10_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_x~0_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_x~2_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_x~3_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_x~4_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_x~5_combout\ : std_logic;
SIGNAL \U_VGA|Add2~5\ : std_logic;
SIGNAL \U_VGA|Add2~6_combout\ : std_logic;
SIGNAL \U_VGA|Add2~23_combout\ : std_logic;
SIGNAL \U_VGA|temp_x_pos~5_combout\ : std_logic;
SIGNAL \U_VGA|Add2~7\ : std_logic;
SIGNAL \U_VGA|Add2~8_combout\ : std_logic;
SIGNAL \U_VGA|Add2~22_combout\ : std_logic;
SIGNAL \U_VGA|temp_x_pos~4_combout\ : std_logic;
SIGNAL \U_VGA|Add2~9\ : std_logic;
SIGNAL \U_VGA|Add2~10_combout\ : std_logic;
SIGNAL \U_VGA|Add2~21_combout\ : std_logic;
SIGNAL \U_VGA|temp_x_pos~3_combout\ : std_logic;
SIGNAL \U_VGA|Add2~11\ : std_logic;
SIGNAL \U_VGA|Add2~12_combout\ : std_logic;
SIGNAL \U_VGA|Add2~20_combout\ : std_logic;
SIGNAL \U_VGA|temp_x_pos~2_combout\ : std_logic;
SIGNAL \U_VGA|Add2~13\ : std_logic;
SIGNAL \U_VGA|Add2~15\ : std_logic;
SIGNAL \U_VGA|Add2~17\ : std_logic;
SIGNAL \U_VGA|Add2~27_combout\ : std_logic;
SIGNAL \U_VGA|Add2~32_combout\ : std_logic;
SIGNAL \U_VGA|temp_x_pos~10_combout\ : std_logic;
SIGNAL \U_VGA|Add2~28\ : std_logic;
SIGNAL \U_VGA|Add2~29_combout\ : std_logic;
SIGNAL \U_VGA|Add2~31_combout\ : std_logic;
SIGNAL \U_VGA|temp_x_pos~9_combout\ : std_logic;
SIGNAL \U_VGA|Add2~30\ : std_logic;
SIGNAL \U_VGA|Add2~33_combout\ : std_logic;
SIGNAL \U_VGA|Add2~44_combout\ : std_logic;
SIGNAL \U_VGA|temp_x_pos~14_combout\ : std_logic;
SIGNAL \U_VGA|Add2~34\ : std_logic;
SIGNAL \U_VGA|Add2~35_combout\ : std_logic;
SIGNAL \U_VGA|Add2~43_combout\ : std_logic;
SIGNAL \U_VGA|temp_x_pos~13_combout\ : std_logic;
SIGNAL \U_VGA|Add2~36\ : std_logic;
SIGNAL \U_VGA|Add2~37_combout\ : std_logic;
SIGNAL \U_VGA|Add2~42_combout\ : std_logic;
SIGNAL \U_VGA|temp_x_pos~12_combout\ : std_logic;
SIGNAL \U_VGA|Add2~38\ : std_logic;
SIGNAL \U_VGA|Add2~39_combout\ : std_logic;
SIGNAL \U_VGA|Add2~41_combout\ : std_logic;
SIGNAL \U_VGA|temp_x_pos~11_combout\ : std_logic;
SIGNAL \U_VGA|Add2~40\ : std_logic;
SIGNAL \U_VGA|Add2~45_combout\ : std_logic;
SIGNAL \U_VGA|Add2~56_combout\ : std_logic;
SIGNAL \U_VGA|temp_x_pos~18_combout\ : std_logic;
SIGNAL \U_VGA|Add2~46\ : std_logic;
SIGNAL \U_VGA|Add2~47_combout\ : std_logic;
SIGNAL \U_VGA|Add2~55_combout\ : std_logic;
SIGNAL \U_VGA|temp_x_pos~17_combout\ : std_logic;
SIGNAL \U_VGA|Add2~48\ : std_logic;
SIGNAL \U_VGA|Add2~49_combout\ : std_logic;
SIGNAL \U_VGA|Add2~54_combout\ : std_logic;
SIGNAL \U_VGA|temp_x_pos~16_combout\ : std_logic;
SIGNAL \U_VGA|Add2~50\ : std_logic;
SIGNAL \U_VGA|Add2~51_combout\ : std_logic;
SIGNAL \U_VGA|Add2~53_combout\ : std_logic;
SIGNAL \U_VGA|temp_x_pos~15_combout\ : std_logic;
SIGNAL \U_VGA|Add2~52\ : std_logic;
SIGNAL \U_VGA|Add2~57_combout\ : std_logic;
SIGNAL \U_VGA|Add2~68_combout\ : std_logic;
SIGNAL \U_VGA|temp_x_pos~22_combout\ : std_logic;
SIGNAL \U_VGA|Add2~58\ : std_logic;
SIGNAL \U_VGA|Add2~59_combout\ : std_logic;
SIGNAL \U_VGA|Add2~67_combout\ : std_logic;
SIGNAL \U_VGA|temp_x_pos~21_combout\ : std_logic;
SIGNAL \U_VGA|Add2~60\ : std_logic;
SIGNAL \U_VGA|Add2~61_combout\ : std_logic;
SIGNAL \U_VGA|Add2~66_combout\ : std_logic;
SIGNAL \U_VGA|temp_x_pos~20_combout\ : std_logic;
SIGNAL \U_VGA|Add2~62\ : std_logic;
SIGNAL \U_VGA|Add2~63_combout\ : std_logic;
SIGNAL \U_VGA|Add2~65_combout\ : std_logic;
SIGNAL \U_VGA|temp_x_pos~19_combout\ : std_logic;
SIGNAL \U_VGA|Add2~64\ : std_logic;
SIGNAL \U_VGA|Add2~69_combout\ : std_logic;
SIGNAL \U_VGA|Add2~80_combout\ : std_logic;
SIGNAL \U_VGA|temp_x_pos~26_combout\ : std_logic;
SIGNAL \U_VGA|Add2~70\ : std_logic;
SIGNAL \U_VGA|Add2~71_combout\ : std_logic;
SIGNAL \U_VGA|Add2~79_combout\ : std_logic;
SIGNAL \U_VGA|temp_x_pos~25_combout\ : std_logic;
SIGNAL \U_VGA|Add2~72\ : std_logic;
SIGNAL \U_VGA|Add2~73_combout\ : std_logic;
SIGNAL \U_VGA|Add2~78_combout\ : std_logic;
SIGNAL \U_VGA|temp_x_pos~24_combout\ : std_logic;
SIGNAL \U_VGA|Add2~74\ : std_logic;
SIGNAL \U_VGA|Add2~75_combout\ : std_logic;
SIGNAL \U_VGA|Add2~77_combout\ : std_logic;
SIGNAL \U_VGA|temp_x_pos~23_combout\ : std_logic;
SIGNAL \U_VGA|Add2~76\ : std_logic;
SIGNAL \U_VGA|Add2~81_combout\ : std_logic;
SIGNAL \U_VGA|Add2~89_combout\ : std_logic;
SIGNAL \U_VGA|temp_x_pos~28_combout\ : std_logic;
SIGNAL \U_VGA|Add1~56\ : std_logic;
SIGNAL \U_VGA|Add1~57_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~105_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_x~28_combout\ : std_logic;
SIGNAL \U_VGA|Add2~82\ : std_logic;
SIGNAL \U_VGA|Add2~83_combout\ : std_logic;
SIGNAL \U_VGA|Add2~88_combout\ : std_logic;
SIGNAL \U_VGA|temp_x_pos~27_combout\ : std_logic;
SIGNAL \U_VGA|Add1~58\ : std_logic;
SIGNAL \U_VGA|Add1~59_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~104_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_x~27_combout\ : std_logic;
SIGNAL \U_VGA|Add2~84\ : std_logic;
SIGNAL \U_VGA|Add2~85_combout\ : std_logic;
SIGNAL \U_VGA|Add2~87_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~69_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~67_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~68_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~64_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~65_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~62_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~63_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~66_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~70_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~74_combout\ : std_logic;
SIGNAL \U_VGA|LessThan5~1_cout\ : std_logic;
SIGNAL \U_VGA|LessThan5~3_cout\ : std_logic;
SIGNAL \U_VGA|LessThan5~5_cout\ : std_logic;
SIGNAL \U_VGA|LessThan5~7_cout\ : std_logic;
SIGNAL \U_VGA|LessThan5~9_cout\ : std_logic;
SIGNAL \U_VGA|LessThan5~11_cout\ : std_logic;
SIGNAL \U_VGA|LessThan5~13_cout\ : std_logic;
SIGNAL \U_VGA|LessThan5~15_cout\ : std_logic;
SIGNAL \U_VGA|LessThan5~17_cout\ : std_logic;
SIGNAL \U_VGA|LessThan5~19_cout\ : std_logic;
SIGNAL \U_VGA|LessThan5~21_cout\ : std_logic;
SIGNAL \U_VGA|LessThan5~23_cout\ : std_logic;
SIGNAL \U_VGA|LessThan5~25_cout\ : std_logic;
SIGNAL \U_VGA|LessThan5~27_cout\ : std_logic;
SIGNAL \U_VGA|LessThan5~29_cout\ : std_logic;
SIGNAL \U_VGA|LessThan5~31_cout\ : std_logic;
SIGNAL \U_VGA|LessThan5~33_cout\ : std_logic;
SIGNAL \U_VGA|LessThan5~35_cout\ : std_logic;
SIGNAL \U_VGA|LessThan5~37_cout\ : std_logic;
SIGNAL \U_VGA|LessThan5~39_cout\ : std_logic;
SIGNAL \U_VGA|LessThan5~41_cout\ : std_logic;
SIGNAL \U_VGA|LessThan5~43_cout\ : std_logic;
SIGNAL \U_VGA|LessThan5~45_cout\ : std_logic;
SIGNAL \U_VGA|LessThan5~47_cout\ : std_logic;
SIGNAL \U_VGA|LessThan5~49_cout\ : std_logic;
SIGNAL \U_VGA|LessThan5~51_cout\ : std_logic;
SIGNAL \U_VGA|LessThan5~53_cout\ : std_logic;
SIGNAL \U_VGA|LessThan5~55_cout\ : std_logic;
SIGNAL \U_VGA|LessThan5~57_cout\ : std_logic;
SIGNAL \U_VGA|LessThan5~59_cout\ : std_logic;
SIGNAL \U_VGA|LessThan5~60_combout\ : std_logic;
SIGNAL \U_VGA|Add11~17\ : std_logic;
SIGNAL \U_VGA|Add11~19\ : std_logic;
SIGNAL \U_VGA|Add11~21\ : std_logic;
SIGNAL \U_VGA|Add11~23\ : std_logic;
SIGNAL \U_VGA|Add11~25\ : std_logic;
SIGNAL \U_VGA|Add11~27\ : std_logic;
SIGNAL \U_VGA|Add11~29\ : std_logic;
SIGNAL \U_VGA|Add11~31\ : std_logic;
SIGNAL \U_VGA|Add11~33\ : std_logic;
SIGNAL \U_VGA|Add11~35\ : std_logic;
SIGNAL \U_VGA|Add11~37\ : std_logic;
SIGNAL \U_VGA|Add11~39\ : std_logic;
SIGNAL \U_VGA|Add11~41\ : std_logic;
SIGNAL \U_VGA|Add11~43\ : std_logic;
SIGNAL \U_VGA|Add11~45\ : std_logic;
SIGNAL \U_VGA|Add11~47\ : std_logic;
SIGNAL \U_VGA|Add11~49\ : std_logic;
SIGNAL \U_VGA|Add11~51\ : std_logic;
SIGNAL \U_VGA|Add11~53\ : std_logic;
SIGNAL \U_VGA|Add11~55\ : std_logic;
SIGNAL \U_VGA|Add11~57\ : std_logic;
SIGNAL \U_VGA|Add11~59\ : std_logic;
SIGNAL \U_VGA|Add11~60_combout\ : std_logic;
SIGNAL \U_VGA|Add11~58_combout\ : std_logic;
SIGNAL \U_VGA|Add11~56_combout\ : std_logic;
SIGNAL \U_VGA|Add11~54_combout\ : std_logic;
SIGNAL \U_VGA|Add11~52_combout\ : std_logic;
SIGNAL \U_VGA|Add11~50_combout\ : std_logic;
SIGNAL \U_VGA|Add11~48_combout\ : std_logic;
SIGNAL \U_VGA|Add11~46_combout\ : std_logic;
SIGNAL \U_VGA|Add11~44_combout\ : std_logic;
SIGNAL \U_VGA|Add11~42_combout\ : std_logic;
SIGNAL \U_VGA|Add11~40_combout\ : std_logic;
SIGNAL \U_VGA|Add11~38_combout\ : std_logic;
SIGNAL \U_VGA|Add11~36_combout\ : std_logic;
SIGNAL \U_VGA|Add11~34_combout\ : std_logic;
SIGNAL \U_VGA|Add11~32_combout\ : std_logic;
SIGNAL \U_VGA|Add11~30_combout\ : std_logic;
SIGNAL \U_VGA|Add11~28_combout\ : std_logic;
SIGNAL \U_VGA|Add11~26_combout\ : std_logic;
SIGNAL \U_VGA|Add11~24_combout\ : std_logic;
SIGNAL \U_VGA|Add11~22_combout\ : std_logic;
SIGNAL \U_VGA|Add11~20_combout\ : std_logic;
SIGNAL \U_VGA|Add11~18_combout\ : std_logic;
SIGNAL \U_VGA|LessThan6~1_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~3_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~5_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~7_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~9_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~11_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~13_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~15_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~17_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~19_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~21_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~23_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~25_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~27_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~29_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~31_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~33_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~35_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~37_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~39_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~41_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~43_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~45_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~47_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~49_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~51_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~53_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~55_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~57_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~59_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~60_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~75_combout\ : std_logic;
SIGNAL \U_VGA|Add1~0_combout\ : std_logic;
SIGNAL \U_VGA|Add1~2\ : std_logic;
SIGNAL \U_VGA|Add1~3_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~84_combout\ : std_logic;
SIGNAL \U_VGA|Add1~4\ : std_logic;
SIGNAL \U_VGA|Add1~5_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~83_combout\ : std_logic;
SIGNAL \U_VGA|Add1~6\ : std_logic;
SIGNAL \U_VGA|Add1~7_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~82_combout\ : std_logic;
SIGNAL \U_VGA|Add1~8\ : std_logic;
SIGNAL \U_VGA|Add1~9_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~81_combout\ : std_logic;
SIGNAL \U_VGA|Add1~10\ : std_logic;
SIGNAL \U_VGA|Add1~11_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~80_combout\ : std_logic;
SIGNAL \U_VGA|Add1~12\ : std_logic;
SIGNAL \U_VGA|Add1~13_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~79_combout\ : std_logic;
SIGNAL \U_VGA|Add1~14\ : std_logic;
SIGNAL \U_VGA|Add1~15_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~78_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_x~1_combout\ : std_logic;
SIGNAL \U_VGA|Add2~14_combout\ : std_logic;
SIGNAL \U_VGA|Add2~19_combout\ : std_logic;
SIGNAL \U_VGA|Add8~1\ : std_logic;
SIGNAL \U_VGA|Add8~3\ : std_logic;
SIGNAL \U_VGA|Add8~5\ : std_logic;
SIGNAL \U_VGA|Add8~6_combout\ : std_logic;
SIGNAL \U_VGA|Add8~0_combout\ : std_logic;
SIGNAL \U_VGA|LessThan0~1_combout\ : std_logic;
SIGNAL \U_VGA|Add8~2_combout\ : std_logic;
SIGNAL \U_VGA|Add8~4_combout\ : std_logic;
SIGNAL \U_VGA|LessThan0~0_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~71_combout\ : std_logic;
SIGNAL \U_VGA|Add8~7\ : std_logic;
SIGNAL \U_VGA|Add8~9\ : std_logic;
SIGNAL \U_VGA|Add8~11\ : std_logic;
SIGNAL \U_VGA|Add8~13\ : std_logic;
SIGNAL \U_VGA|Add8~15\ : std_logic;
SIGNAL \U_VGA|Add8~17\ : std_logic;
SIGNAL \U_VGA|Add8~19\ : std_logic;
SIGNAL \U_VGA|Add8~21\ : std_logic;
SIGNAL \U_VGA|Add8~23\ : std_logic;
SIGNAL \U_VGA|Add8~25\ : std_logic;
SIGNAL \U_VGA|Add8~27\ : std_logic;
SIGNAL \U_VGA|Add8~29\ : std_logic;
SIGNAL \U_VGA|Add8~31\ : std_logic;
SIGNAL \U_VGA|Add8~33\ : std_logic;
SIGNAL \U_VGA|Add8~35\ : std_logic;
SIGNAL \U_VGA|Add8~37\ : std_logic;
SIGNAL \U_VGA|Add8~39\ : std_logic;
SIGNAL \U_VGA|Add8~41\ : std_logic;
SIGNAL \U_VGA|Add8~43\ : std_logic;
SIGNAL \U_VGA|Add8~45\ : std_logic;
SIGNAL \U_VGA|Add8~46_combout\ : std_logic;
SIGNAL \U_VGA|Add8~44_combout\ : std_logic;
SIGNAL \U_VGA|Add8~40_combout\ : std_logic;
SIGNAL \U_VGA|Add8~42_combout\ : std_logic;
SIGNAL \U_VGA|LessThan7~5_combout\ : std_logic;
SIGNAL \U_VGA|Add8~47\ : std_logic;
SIGNAL \U_VGA|Add8~48_combout\ : std_logic;
SIGNAL \U_VGA|Add8~26_combout\ : std_logic;
SIGNAL \U_VGA|Add8~24_combout\ : std_logic;
SIGNAL \U_VGA|Add8~28_combout\ : std_logic;
SIGNAL \U_VGA|Add8~30_combout\ : std_logic;
SIGNAL \U_VGA|LessThan7~2_combout\ : std_logic;
SIGNAL \U_VGA|Add8~20_combout\ : std_logic;
SIGNAL \U_VGA|Add8~18_combout\ : std_logic;
SIGNAL \U_VGA|Add8~16_combout\ : std_logic;
SIGNAL \U_VGA|Add8~22_combout\ : std_logic;
SIGNAL \U_VGA|LessThan7~1_combout\ : std_logic;
SIGNAL \U_VGA|Add8~32_combout\ : std_logic;
SIGNAL \U_VGA|Add8~34_combout\ : std_logic;
SIGNAL \U_VGA|Add8~36_combout\ : std_logic;
SIGNAL \U_VGA|Add8~38_combout\ : std_logic;
SIGNAL \U_VGA|LessThan7~3_combout\ : std_logic;
SIGNAL \U_VGA|Add8~12_combout\ : std_logic;
SIGNAL \U_VGA|Add8~14_combout\ : std_logic;
SIGNAL \U_VGA|Add8~8_combout\ : std_logic;
SIGNAL \U_VGA|Add8~10_combout\ : std_logic;
SIGNAL \U_VGA|LessThan7~0_combout\ : std_logic;
SIGNAL \U_VGA|LessThan7~4_combout\ : std_logic;
SIGNAL \U_VGA|LessThan7~6_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~72_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~73_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~76_combout\ : std_logic;
SIGNAL \U_VGA|Add1~60\ : std_logic;
SIGNAL \U_VGA|Add1~61_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~107_combout\ : std_logic;
SIGNAL \U_VGA|temp_mov_x~30_combout\ : std_logic;
SIGNAL \U_VGA|Add2~86\ : std_logic;
SIGNAL \U_VGA|Add2~90_combout\ : std_logic;
SIGNAL \U_VGA|Add2~92_combout\ : std_logic;
SIGNAL \U_VGA|Add8~49\ : std_logic;
SIGNAL \U_VGA|Add8~50_combout\ : std_logic;
SIGNAL \U_VGA|LessThan0~2_combout\ : std_logic;
SIGNAL \U_VGA|ball_move~0_combout\ : std_logic;
SIGNAL \U_VGA|LessThan1~0_combout\ : std_logic;
SIGNAL \U_VGA|ball_move~1_combout\ : std_logic;
SIGNAL \U_VGA|temp_x_pos~0_combout\ : std_logic;
SIGNAL \U_VGA|Add2~16_combout\ : std_logic;
SIGNAL \U_VGA|Add2~18_combout\ : std_logic;
SIGNAL \U_VGA|LessThan14~1_cout\ : std_logic;
SIGNAL \U_VGA|LessThan14~3_cout\ : std_logic;
SIGNAL \U_VGA|LessThan14~5_cout\ : std_logic;
SIGNAL \U_VGA|LessThan14~7_cout\ : std_logic;
SIGNAL \U_VGA|LessThan14~9_cout\ : std_logic;
SIGNAL \U_VGA|LessThan14~11_cout\ : std_logic;
SIGNAL \U_VGA|LessThan14~13_cout\ : std_logic;
SIGNAL \U_VGA|LessThan14~15_cout\ : std_logic;
SIGNAL \U_VGA|LessThan14~16_combout\ : std_logic;
SIGNAL \U_VGA|LessThan15~1_cout\ : std_logic;
SIGNAL \U_VGA|LessThan15~3_cout\ : std_logic;
SIGNAL \U_VGA|LessThan15~5_cout\ : std_logic;
SIGNAL \U_VGA|LessThan15~7_cout\ : std_logic;
SIGNAL \U_VGA|LessThan15~9_cout\ : std_logic;
SIGNAL \U_VGA|LessThan15~11_cout\ : std_logic;
SIGNAL \U_VGA|LessThan15~13_cout\ : std_logic;
SIGNAL \U_VGA|LessThan15~15_cout\ : std_logic;
SIGNAL \U_VGA|LessThan15~17_cout\ : std_logic;
SIGNAL \U_VGA|LessThan15~18_combout\ : std_logic;
SIGNAL \U_VGA|LessThan16~1_cout\ : std_logic;
SIGNAL \U_VGA|LessThan16~3_cout\ : std_logic;
SIGNAL \U_VGA|LessThan16~5_cout\ : std_logic;
SIGNAL \U_VGA|LessThan16~7_cout\ : std_logic;
SIGNAL \U_VGA|LessThan16~9_cout\ : std_logic;
SIGNAL \U_VGA|LessThan16~11_cout\ : std_logic;
SIGNAL \U_VGA|LessThan16~13_cout\ : std_logic;
SIGNAL \U_VGA|LessThan16~15_cout\ : std_logic;
SIGNAL \U_VGA|LessThan16~16_combout\ : std_logic;
SIGNAL \U_VGA|LessThan17~1_cout\ : std_logic;
SIGNAL \U_VGA|LessThan17~3_cout\ : std_logic;
SIGNAL \U_VGA|LessThan17~5_cout\ : std_logic;
SIGNAL \U_VGA|LessThan17~7_cout\ : std_logic;
SIGNAL \U_VGA|LessThan17~9_cout\ : std_logic;
SIGNAL \U_VGA|LessThan17~11_cout\ : std_logic;
SIGNAL \U_VGA|LessThan17~13_cout\ : std_logic;
SIGNAL \U_VGA|LessThan17~15_cout\ : std_logic;
SIGNAL \U_VGA|LessThan17~17_cout\ : std_logic;
SIGNAL \U_VGA|LessThan17~18_combout\ : std_logic;
SIGNAL \U_VGA|draw~0_combout\ : std_logic;
SIGNAL \U_VGA|red~6_combout\ : std_logic;
SIGNAL \U_VGA|red[0]~feeder_combout\ : std_logic;
SIGNAL \U_VGA|red[1]~feeder_combout\ : std_logic;
SIGNAL \U_VGA|red[2]~feeder_combout\ : std_logic;
SIGNAL \U_VGA|red~7_combout\ : std_logic;
SIGNAL \U_VGA|red[3]~feeder_combout\ : std_logic;
SIGNAL \U_VGA|green[0]~feeder_combout\ : std_logic;
SIGNAL \U_VGA|green[1]~feeder_combout\ : std_logic;
SIGNAL \U_VGA|green[2]~feeder_combout\ : std_logic;
SIGNAL \U_VGA|green[3]~feeder_combout\ : std_logic;
SIGNAL \U_VGA|blue[0]~feeder_combout\ : std_logic;
SIGNAL \U_VGA|blue[1]~feeder_combout\ : std_logic;
SIGNAL \U_VGA|sync|h_sync~0_combout\ : std_logic;
SIGNAL \U_VGA|sync|h_sync~1_combout\ : std_logic;
SIGNAL \U_VGA|sync|h_sync~2_combout\ : std_logic;
SIGNAL \U_VGA|sync|h_sync~4_combout\ : std_logic;
SIGNAL \U_VGA|sync|v_sync~1_combout\ : std_logic;
SIGNAL \U_VGA|sync|v_sync~0_combout\ : std_logic;
SIGNAL \U_VGA|sync|v_sync~2_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|counter\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \U_VGA|blue\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_VGA|sync|v_counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_VGA|green\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_VGA|red\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_VGA|y_pos_p2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U_VGA|y_pos_p1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U_VGA|sync|h_counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_VGA|x_pos\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U_VGA|y_pos\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U_VGA|mov_x\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U_VGA|mov_y\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_button_n[0]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk50MHz <= clk50MHz;
ww_switch <= switch;
ww_button_n <= button_n;
red <= ww_red;
green <= ww_green;
blue <= ww_blue;
h_sync <= ww_h_sync;
v_sync <= ww_v_sync;
led0 <= ww_led0;
led0_dp <= ww_led0_dp;
led1 <= ww_led1;
led1_dp <= ww_led1_dp;
led2 <= ww_led2;
led2_dp <= ww_led2_dp;
led3 <= ww_led3;
led3_dp <= ww_led3_dp;
led4 <= ww_led4;
led4_dp <= ww_led4_dp;
led5 <= ww_led5;
led5_dp <= ww_led5_dp;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\U_CLK_DIV|temp_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_CLK_DIV|temp_clk~q\);

\U_VGA|clk_div|temp_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_VGA|clk_div|temp_clk~q\);
\ALT_INV_button_n[0]~input_o\ <= NOT \button_n[0]~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N16
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

-- Location: IOOBUF_X18_Y0_N30
\red[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_VGA|red\(0),
	devoe => ww_devoe,
	o => \red[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\red[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_VGA|red\(1),
	devoe => ww_devoe,
	o => \red[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\red[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_VGA|red\(2),
	devoe => ww_devoe,
	o => \red[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\red[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_VGA|red\(3),
	devoe => ww_devoe,
	o => \red[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\green[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_VGA|green\(0),
	devoe => ww_devoe,
	o => \green[0]~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\green[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_VGA|green\(1),
	devoe => ww_devoe,
	o => \green[1]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\green[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_VGA|green\(2),
	devoe => ww_devoe,
	o => \green[2]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\green[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_VGA|green\(3),
	devoe => ww_devoe,
	o => \green[3]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\blue[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_VGA|blue\(0),
	devoe => ww_devoe,
	o => \blue[0]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\blue[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_VGA|blue\(1),
	devoe => ww_devoe,
	o => \blue[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\blue[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_VGA|blue\(2),
	devoe => ww_devoe,
	o => \blue[2]~output_o\);

-- Location: IOOBUF_X0_Y18_N9
\blue[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_VGA|blue\(3),
	devoe => ww_devoe,
	o => \blue[3]~output_o\);

-- Location: IOOBUF_X0_Y18_N2
\h_sync~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_VGA|sync|h_sync~4_combout\,
	devoe => ww_devoe,
	o => \h_sync~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\v_sync~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_VGA|sync|v_sync~2_combout\,
	devoe => ww_devoe,
	o => \v_sync~output_o\);

-- Location: IOOBUF_X78_Y3_N9
\led0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led0[0]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\led0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led0[1]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\led0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led0[2]~output_o\);

-- Location: IOOBUF_X20_Y39_N9
\led0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led0[3]~output_o\);

-- Location: IOOBUF_X78_Y15_N16
\led0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led0[4]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\led0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led0[5]~output_o\);

-- Location: IOOBUF_X58_Y0_N30
\led0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led0[6]~output_o\);

-- Location: IOOBUF_X0_Y16_N9
\led0_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led0_dp~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\led1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led1[0]~output_o\);

-- Location: IOOBUF_X51_Y0_N9
\led1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led1[1]~output_o\);

-- Location: IOOBUF_X0_Y36_N9
\led1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led1[2]~output_o\);

-- Location: IOOBUF_X24_Y39_N30
\led1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led1[3]~output_o\);

-- Location: IOOBUF_X0_Y16_N2
\led1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led1[4]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\led1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led1[5]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\led1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led1[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\led1_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led1_dp~output_o\);

-- Location: IOOBUF_X78_Y44_N24
\led2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led2[0]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\led2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led2[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\led2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led2[2]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\led2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led2[3]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\led2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led2[4]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\led2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led2[5]~output_o\);

-- Location: IOOBUF_X78_Y3_N2
\led2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led2[6]~output_o\);

-- Location: IOOBUF_X22_Y0_N23
\led2_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led2_dp~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\led3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led3[0]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\led3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led3[1]~output_o\);

-- Location: IOOBUF_X60_Y0_N30
\led3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led3[2]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\led3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led3[3]~output_o\);

-- Location: IOOBUF_X78_Y15_N9
\led3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led3[4]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\led3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led3[5]~output_o\);

-- Location: IOOBUF_X0_Y37_N2
\led3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led3[6]~output_o\);

-- Location: IOOBUF_X78_Y16_N24
\led3_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led3_dp~output_o\);

-- Location: IOOBUF_X0_Y37_N23
\led4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led4[0]~output_o\);

-- Location: IOOBUF_X78_Y21_N9
\led4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led4[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\led4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led4[2]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\led4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led4[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\led4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led4[4]~output_o\);

-- Location: IOOBUF_X51_Y0_N23
\led4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led4[5]~output_o\);

-- Location: IOOBUF_X31_Y0_N23
\led4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led4[6]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\led4_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led4_dp~output_o\);

-- Location: IOOBUF_X31_Y39_N2
\led5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led5[0]~output_o\);

-- Location: IOOBUF_X78_Y18_N9
\led5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led5[1]~output_o\);

-- Location: IOOBUF_X78_Y31_N2
\led5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led5[2]~output_o\);

-- Location: IOOBUF_X58_Y0_N16
\led5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led5[3]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\led5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led5[4]~output_o\);

-- Location: IOOBUF_X78_Y17_N23
\led5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led5[5]~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\led5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led5[6]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\led5_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led5_dp~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk50MHz~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50MHz,
	o => \clk50MHz~input_o\);

-- Location: LCCOMB_X41_Y4_N26
\U_CLK_DIV|temp_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_DIV|temp_clk~0_combout\ = !\U_CLK_DIV|temp_clk~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CLK_DIV|temp_clk~q\,
	combout => \U_CLK_DIV|temp_clk~0_combout\);

-- Location: LCCOMB_X41_Y4_N8
\U_CLK_DIV|temp_clk~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_DIV|temp_clk~feeder_combout\ = \U_CLK_DIV|temp_clk~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_DIV|temp_clk~0_combout\,
	combout => \U_CLK_DIV|temp_clk~feeder_combout\);

-- Location: IOIBUF_X49_Y54_N29
\button_n[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button_n(0),
	o => \button_n[0]~input_o\);

-- Location: FF_X41_Y4_N9
\U_CLK_DIV|temp_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~input_o\,
	d => \U_CLK_DIV|temp_clk~feeder_combout\,
	clrn => \button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_DIV|temp_clk~q\);

-- Location: CLKCTRL_G18
\U_CLK_DIV|temp_clk~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_CLK_DIV|temp_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_CLK_DIV|temp_clk~clkctrl_outclk\);

-- Location: LCCOMB_X43_Y33_N12
\U_VGA|sync|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Add0~0_combout\ = \U_VGA|sync|v_counter\(0) $ (VCC)
-- \U_VGA|sync|Add0~1\ = CARRY(\U_VGA|sync|v_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|sync|v_counter\(0),
	datad => VCC,
	combout => \U_VGA|sync|Add0~0_combout\,
	cout => \U_VGA|sync|Add0~1\);

-- Location: LCCOMB_X43_Y34_N26
\U_VGA|sync|v_counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|v_counter~1_combout\ = (!\U_VGA|sync|Equal1~2_combout\ & \U_VGA|sync|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|sync|Equal1~2_combout\,
	datad => \U_VGA|sync|Add0~0_combout\,
	combout => \U_VGA|sync|v_counter~1_combout\);

-- Location: LCCOMB_X42_Y33_N0
\U_VGA|sync|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Add1~0_combout\ = \U_VGA|sync|h_counter\(0) $ (VCC)
-- \U_VGA|sync|Add1~1\ = CARRY(\U_VGA|sync|h_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|sync|h_counter\(0),
	datad => VCC,
	combout => \U_VGA|sync|Add1~0_combout\,
	cout => \U_VGA|sync|Add1~1\);

-- Location: FF_X42_Y33_N1
\U_VGA|sync|h_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|sync|Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|sync|h_counter\(0));

-- Location: LCCOMB_X42_Y33_N2
\U_VGA|sync|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Add1~2_combout\ = (\U_VGA|sync|h_counter\(1) & (!\U_VGA|sync|Add1~1\)) # (!\U_VGA|sync|h_counter\(1) & ((\U_VGA|sync|Add1~1\) # (GND)))
-- \U_VGA|sync|Add1~3\ = CARRY((!\U_VGA|sync|Add1~1\) # (!\U_VGA|sync|h_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|sync|h_counter\(1),
	datad => VCC,
	cin => \U_VGA|sync|Add1~1\,
	combout => \U_VGA|sync|Add1~2_combout\,
	cout => \U_VGA|sync|Add1~3\);

-- Location: LCCOMB_X42_Y32_N24
\U_VGA|sync|h_counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|h_counter~0_combout\ = (!\U_VGA|sync|Equal0~2_combout\ & \U_VGA|sync|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|sync|Equal0~2_combout\,
	datac => \U_VGA|sync|Add1~2_combout\,
	combout => \U_VGA|sync|h_counter~0_combout\);

-- Location: FF_X42_Y32_N25
\U_VGA|sync|h_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|sync|h_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|sync|h_counter\(1));

-- Location: LCCOMB_X42_Y33_N4
\U_VGA|sync|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Add1~4_combout\ = (\U_VGA|sync|h_counter\(2) & (\U_VGA|sync|Add1~3\ $ (GND))) # (!\U_VGA|sync|h_counter\(2) & (!\U_VGA|sync|Add1~3\ & VCC))
-- \U_VGA|sync|Add1~5\ = CARRY((\U_VGA|sync|h_counter\(2) & !\U_VGA|sync|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|sync|h_counter\(2),
	datad => VCC,
	cin => \U_VGA|sync|Add1~3\,
	combout => \U_VGA|sync|Add1~4_combout\,
	cout => \U_VGA|sync|Add1~5\);

-- Location: FF_X42_Y33_N5
\U_VGA|sync|h_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|sync|Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|sync|h_counter\(2));

-- Location: LCCOMB_X42_Y33_N6
\U_VGA|sync|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Add1~6_combout\ = (\U_VGA|sync|h_counter\(3) & (!\U_VGA|sync|Add1~5\)) # (!\U_VGA|sync|h_counter\(3) & ((\U_VGA|sync|Add1~5\) # (GND)))
-- \U_VGA|sync|Add1~7\ = CARRY((!\U_VGA|sync|Add1~5\) # (!\U_VGA|sync|h_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|sync|h_counter\(3),
	datad => VCC,
	cin => \U_VGA|sync|Add1~5\,
	combout => \U_VGA|sync|Add1~6_combout\,
	cout => \U_VGA|sync|Add1~7\);

-- Location: FF_X42_Y33_N7
\U_VGA|sync|h_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|sync|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|sync|h_counter\(3));

-- Location: LCCOMB_X42_Y33_N8
\U_VGA|sync|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Add1~8_combout\ = (\U_VGA|sync|h_counter\(4) & (\U_VGA|sync|Add1~7\ $ (GND))) # (!\U_VGA|sync|h_counter\(4) & (!\U_VGA|sync|Add1~7\ & VCC))
-- \U_VGA|sync|Add1~9\ = CARRY((\U_VGA|sync|h_counter\(4) & !\U_VGA|sync|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|sync|h_counter\(4),
	datad => VCC,
	cin => \U_VGA|sync|Add1~7\,
	combout => \U_VGA|sync|Add1~8_combout\,
	cout => \U_VGA|sync|Add1~9\);

-- Location: FF_X42_Y33_N9
\U_VGA|sync|h_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|sync|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|sync|h_counter\(4));

-- Location: LCCOMB_X42_Y33_N10
\U_VGA|sync|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Add1~10_combout\ = (\U_VGA|sync|h_counter\(5) & (!\U_VGA|sync|Add1~9\)) # (!\U_VGA|sync|h_counter\(5) & ((\U_VGA|sync|Add1~9\) # (GND)))
-- \U_VGA|sync|Add1~11\ = CARRY((!\U_VGA|sync|Add1~9\) # (!\U_VGA|sync|h_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(5),
	datad => VCC,
	cin => \U_VGA|sync|Add1~9\,
	combout => \U_VGA|sync|Add1~10_combout\,
	cout => \U_VGA|sync|Add1~11\);

-- Location: LCCOMB_X42_Y32_N26
\U_VGA|sync|h_counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|h_counter~1_combout\ = (\U_VGA|sync|Add1~10_combout\ & !\U_VGA|sync|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|sync|Add1~10_combout\,
	datad => \U_VGA|sync|Equal0~2_combout\,
	combout => \U_VGA|sync|h_counter~1_combout\);

-- Location: FF_X42_Y32_N27
\U_VGA|sync|h_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|sync|h_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|sync|h_counter\(5));

-- Location: LCCOMB_X42_Y33_N12
\U_VGA|sync|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Add1~12_combout\ = (\U_VGA|sync|h_counter\(6) & (\U_VGA|sync|Add1~11\ $ (GND))) # (!\U_VGA|sync|h_counter\(6) & (!\U_VGA|sync|Add1~11\ & VCC))
-- \U_VGA|sync|Add1~13\ = CARRY((\U_VGA|sync|h_counter\(6) & !\U_VGA|sync|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(6),
	datad => VCC,
	cin => \U_VGA|sync|Add1~11\,
	combout => \U_VGA|sync|Add1~12_combout\,
	cout => \U_VGA|sync|Add1~13\);

-- Location: FF_X42_Y33_N13
\U_VGA|sync|h_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|sync|Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|sync|h_counter\(6));

-- Location: LCCOMB_X42_Y33_N14
\U_VGA|sync|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Add1~14_combout\ = (\U_VGA|sync|h_counter\(7) & (!\U_VGA|sync|Add1~13\)) # (!\U_VGA|sync|h_counter\(7) & ((\U_VGA|sync|Add1~13\) # (GND)))
-- \U_VGA|sync|Add1~15\ = CARRY((!\U_VGA|sync|Add1~13\) # (!\U_VGA|sync|h_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|sync|h_counter\(7),
	datad => VCC,
	cin => \U_VGA|sync|Add1~13\,
	combout => \U_VGA|sync|Add1~14_combout\,
	cout => \U_VGA|sync|Add1~15\);

-- Location: FF_X42_Y33_N15
\U_VGA|sync|h_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|sync|Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|sync|h_counter\(7));

-- Location: LCCOMB_X42_Y33_N16
\U_VGA|sync|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Add1~16_combout\ = (\U_VGA|sync|h_counter\(8) & (\U_VGA|sync|Add1~15\ $ (GND))) # (!\U_VGA|sync|h_counter\(8) & (!\U_VGA|sync|Add1~15\ & VCC))
-- \U_VGA|sync|Add1~17\ = CARRY((\U_VGA|sync|h_counter\(8) & !\U_VGA|sync|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(8),
	datad => VCC,
	cin => \U_VGA|sync|Add1~15\,
	combout => \U_VGA|sync|Add1~16_combout\,
	cout => \U_VGA|sync|Add1~17\);

-- Location: LCCOMB_X42_Y33_N22
\U_VGA|sync|h_counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|h_counter~2_combout\ = (!\U_VGA|sync|Equal0~2_combout\ & \U_VGA|sync|Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|Equal0~2_combout\,
	datad => \U_VGA|sync|Add1~16_combout\,
	combout => \U_VGA|sync|h_counter~2_combout\);

-- Location: FF_X42_Y33_N23
\U_VGA|sync|h_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|sync|h_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|sync|h_counter\(8));

-- Location: LCCOMB_X42_Y33_N18
\U_VGA|sync|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Add1~18_combout\ = \U_VGA|sync|Add1~17\ $ (\U_VGA|sync|h_counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_VGA|sync|h_counter\(9),
	cin => \U_VGA|sync|Add1~17\,
	combout => \U_VGA|sync|Add1~18_combout\);

-- Location: LCCOMB_X42_Y33_N24
\U_VGA|sync|h_counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|h_counter~3_combout\ = (!\U_VGA|sync|Equal0~2_combout\ & \U_VGA|sync|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|Equal0~2_combout\,
	datad => \U_VGA|sync|Add1~18_combout\,
	combout => \U_VGA|sync|h_counter~3_combout\);

-- Location: FF_X42_Y33_N25
\U_VGA|sync|h_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|sync|h_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|sync|h_counter\(9));

-- Location: LCCOMB_X42_Y32_N30
\U_VGA|sync|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Equal0~0_combout\ = (!\U_VGA|sync|h_counter\(7) & (!\U_VGA|sync|h_counter\(4) & (\U_VGA|sync|h_counter\(0) & !\U_VGA|sync|h_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(7),
	datab => \U_VGA|sync|h_counter\(4),
	datac => \U_VGA|sync|h_counter\(0),
	datad => \U_VGA|sync|h_counter\(6),
	combout => \U_VGA|sync|Equal0~0_combout\);

-- Location: LCCOMB_X42_Y32_N0
\U_VGA|sync|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Equal0~1_combout\ = (!\U_VGA|sync|h_counter\(3) & (!\U_VGA|sync|h_counter\(1) & (!\U_VGA|sync|h_counter\(2) & \U_VGA|sync|h_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(3),
	datab => \U_VGA|sync|h_counter\(1),
	datac => \U_VGA|sync|h_counter\(2),
	datad => \U_VGA|sync|h_counter\(5),
	combout => \U_VGA|sync|Equal0~1_combout\);

-- Location: LCCOMB_X42_Y32_N2
\U_VGA|sync|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Equal0~2_combout\ = (\U_VGA|sync|h_counter\(8) & (\U_VGA|sync|h_counter\(9) & (\U_VGA|sync|Equal0~0_combout\ & \U_VGA|sync|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(8),
	datab => \U_VGA|sync|h_counter\(9),
	datac => \U_VGA|sync|Equal0~0_combout\,
	datad => \U_VGA|sync|Equal0~1_combout\,
	combout => \U_VGA|sync|Equal0~2_combout\);

-- Location: FF_X43_Y34_N27
\U_VGA|sync|v_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|sync|v_counter~1_combout\,
	ena => \U_VGA|sync|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|sync|v_counter\(0));

-- Location: LCCOMB_X43_Y33_N14
\U_VGA|sync|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Add0~2_combout\ = (\U_VGA|sync|v_counter\(1) & (!\U_VGA|sync|Add0~1\)) # (!\U_VGA|sync|v_counter\(1) & ((\U_VGA|sync|Add0~1\) # (GND)))
-- \U_VGA|sync|Add0~3\ = CARRY((!\U_VGA|sync|Add0~1\) # (!\U_VGA|sync|v_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|sync|v_counter\(1),
	datad => VCC,
	cin => \U_VGA|sync|Add0~1\,
	combout => \U_VGA|sync|Add0~2_combout\,
	cout => \U_VGA|sync|Add0~3\);

-- Location: LCCOMB_X43_Y34_N24
\U_VGA|sync|v_counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|v_counter~0_combout\ = (!\U_VGA|sync|Equal1~2_combout\ & \U_VGA|sync|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|sync|Equal1~2_combout\,
	datad => \U_VGA|sync|Add0~2_combout\,
	combout => \U_VGA|sync|v_counter~0_combout\);

-- Location: FF_X43_Y34_N25
\U_VGA|sync|v_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|sync|v_counter~0_combout\,
	ena => \U_VGA|sync|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|sync|v_counter\(1));

-- Location: LCCOMB_X43_Y33_N16
\U_VGA|sync|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Add0~4_combout\ = (\U_VGA|sync|v_counter\(2) & (\U_VGA|sync|Add0~3\ $ (GND))) # (!\U_VGA|sync|v_counter\(2) & (!\U_VGA|sync|Add0~3\ & VCC))
-- \U_VGA|sync|Add0~5\ = CARRY((\U_VGA|sync|v_counter\(2) & !\U_VGA|sync|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(2),
	datad => VCC,
	cin => \U_VGA|sync|Add0~3\,
	combout => \U_VGA|sync|Add0~4_combout\,
	cout => \U_VGA|sync|Add0~5\);

-- Location: LCCOMB_X43_Y34_N20
\U_VGA|sync|v_counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|v_counter~2_combout\ = (!\U_VGA|sync|Equal1~2_combout\ & \U_VGA|sync|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|sync|Equal1~2_combout\,
	datad => \U_VGA|sync|Add0~4_combout\,
	combout => \U_VGA|sync|v_counter~2_combout\);

-- Location: FF_X43_Y34_N21
\U_VGA|sync|v_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|sync|v_counter~2_combout\,
	ena => \U_VGA|sync|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|sync|v_counter\(2));

-- Location: LCCOMB_X43_Y33_N18
\U_VGA|sync|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Add0~6_combout\ = (\U_VGA|sync|v_counter\(3) & (!\U_VGA|sync|Add0~5\)) # (!\U_VGA|sync|v_counter\(3) & ((\U_VGA|sync|Add0~5\) # (GND)))
-- \U_VGA|sync|Add0~7\ = CARRY((!\U_VGA|sync|Add0~5\) # (!\U_VGA|sync|v_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|sync|v_counter\(3),
	datad => VCC,
	cin => \U_VGA|sync|Add0~5\,
	combout => \U_VGA|sync|Add0~6_combout\,
	cout => \U_VGA|sync|Add0~7\);

-- Location: LCCOMB_X43_Y34_N30
\U_VGA|sync|v_counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|v_counter~3_combout\ = (!\U_VGA|sync|Equal1~2_combout\ & \U_VGA|sync|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|sync|Equal1~2_combout\,
	datad => \U_VGA|sync|Add0~6_combout\,
	combout => \U_VGA|sync|v_counter~3_combout\);

-- Location: FF_X43_Y34_N31
\U_VGA|sync|v_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|sync|v_counter~3_combout\,
	ena => \U_VGA|sync|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|sync|v_counter\(3));

-- Location: LCCOMB_X43_Y33_N10
\U_VGA|sync|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Equal1~0_combout\ = (\U_VGA|sync|v_counter\(2) & (\U_VGA|sync|v_counter\(3) & (!\U_VGA|sync|v_counter\(0) & \U_VGA|sync|v_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(2),
	datab => \U_VGA|sync|v_counter\(3),
	datac => \U_VGA|sync|v_counter\(0),
	datad => \U_VGA|sync|v_counter\(1),
	combout => \U_VGA|sync|Equal1~0_combout\);

-- Location: LCCOMB_X43_Y33_N20
\U_VGA|sync|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Add0~8_combout\ = (\U_VGA|sync|v_counter\(4) & (\U_VGA|sync|Add0~7\ $ (GND))) # (!\U_VGA|sync|v_counter\(4) & (!\U_VGA|sync|Add0~7\ & VCC))
-- \U_VGA|sync|Add0~9\ = CARRY((\U_VGA|sync|v_counter\(4) & !\U_VGA|sync|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|sync|v_counter\(4),
	datad => VCC,
	cin => \U_VGA|sync|Add0~7\,
	combout => \U_VGA|sync|Add0~8_combout\,
	cout => \U_VGA|sync|Add0~9\);

-- Location: FF_X43_Y33_N21
\U_VGA|sync|v_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|sync|Add0~8_combout\,
	ena => \U_VGA|sync|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|sync|v_counter\(4));

-- Location: LCCOMB_X43_Y33_N22
\U_VGA|sync|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Add0~10_combout\ = (\U_VGA|sync|v_counter\(5) & (!\U_VGA|sync|Add0~9\)) # (!\U_VGA|sync|v_counter\(5) & ((\U_VGA|sync|Add0~9\) # (GND)))
-- \U_VGA|sync|Add0~11\ = CARRY((!\U_VGA|sync|Add0~9\) # (!\U_VGA|sync|v_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(5),
	datad => VCC,
	cin => \U_VGA|sync|Add0~9\,
	combout => \U_VGA|sync|Add0~10_combout\,
	cout => \U_VGA|sync|Add0~11\);

-- Location: FF_X43_Y33_N23
\U_VGA|sync|v_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|sync|Add0~10_combout\,
	ena => \U_VGA|sync|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|sync|v_counter\(5));

-- Location: LCCOMB_X43_Y33_N24
\U_VGA|sync|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Add0~12_combout\ = (\U_VGA|sync|v_counter\(6) & (\U_VGA|sync|Add0~11\ $ (GND))) # (!\U_VGA|sync|v_counter\(6) & (!\U_VGA|sync|Add0~11\ & VCC))
-- \U_VGA|sync|Add0~13\ = CARRY((\U_VGA|sync|v_counter\(6) & !\U_VGA|sync|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|sync|v_counter\(6),
	datad => VCC,
	cin => \U_VGA|sync|Add0~11\,
	combout => \U_VGA|sync|Add0~12_combout\,
	cout => \U_VGA|sync|Add0~13\);

-- Location: FF_X43_Y33_N25
\U_VGA|sync|v_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|sync|Add0~12_combout\,
	ena => \U_VGA|sync|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|sync|v_counter\(6));

-- Location: LCCOMB_X43_Y33_N26
\U_VGA|sync|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Add0~14_combout\ = (\U_VGA|sync|v_counter\(7) & (!\U_VGA|sync|Add0~13\)) # (!\U_VGA|sync|v_counter\(7) & ((\U_VGA|sync|Add0~13\) # (GND)))
-- \U_VGA|sync|Add0~15\ = CARRY((!\U_VGA|sync|Add0~13\) # (!\U_VGA|sync|v_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(7),
	datad => VCC,
	cin => \U_VGA|sync|Add0~13\,
	combout => \U_VGA|sync|Add0~14_combout\,
	cout => \U_VGA|sync|Add0~15\);

-- Location: FF_X43_Y33_N27
\U_VGA|sync|v_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|sync|Add0~14_combout\,
	ena => \U_VGA|sync|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|sync|v_counter\(7));

-- Location: LCCOMB_X43_Y33_N0
\U_VGA|sync|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Equal1~1_combout\ = (!\U_VGA|sync|v_counter\(5) & (!\U_VGA|sync|v_counter\(4) & (!\U_VGA|sync|v_counter\(7) & !\U_VGA|sync|v_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(5),
	datab => \U_VGA|sync|v_counter\(4),
	datac => \U_VGA|sync|v_counter\(7),
	datad => \U_VGA|sync|v_counter\(6),
	combout => \U_VGA|sync|Equal1~1_combout\);

-- Location: LCCOMB_X43_Y33_N28
\U_VGA|sync|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Add0~16_combout\ = (\U_VGA|sync|v_counter\(8) & (\U_VGA|sync|Add0~15\ $ (GND))) # (!\U_VGA|sync|v_counter\(8) & (!\U_VGA|sync|Add0~15\ & VCC))
-- \U_VGA|sync|Add0~17\ = CARRY((\U_VGA|sync|v_counter\(8) & !\U_VGA|sync|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(8),
	datad => VCC,
	cin => \U_VGA|sync|Add0~15\,
	combout => \U_VGA|sync|Add0~16_combout\,
	cout => \U_VGA|sync|Add0~17\);

-- Location: FF_X43_Y33_N29
\U_VGA|sync|v_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|sync|Add0~16_combout\,
	ena => \U_VGA|sync|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|sync|v_counter\(8));

-- Location: LCCOMB_X43_Y33_N6
\U_VGA|sync|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Equal1~2_combout\ = (\U_VGA|sync|Equal1~0_combout\ & (\U_VGA|sync|Equal1~1_combout\ & (!\U_VGA|sync|v_counter\(8) & \U_VGA|sync|v_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|Equal1~0_combout\,
	datab => \U_VGA|sync|Equal1~1_combout\,
	datac => \U_VGA|sync|v_counter\(8),
	datad => \U_VGA|sync|v_counter\(9),
	combout => \U_VGA|sync|Equal1~2_combout\);

-- Location: LCCOMB_X43_Y33_N30
\U_VGA|sync|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Add0~18_combout\ = \U_VGA|sync|Add0~17\ $ (\U_VGA|sync|v_counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_VGA|sync|v_counter\(9),
	cin => \U_VGA|sync|Add0~17\,
	combout => \U_VGA|sync|Add0~18_combout\);

-- Location: LCCOMB_X43_Y34_N28
\U_VGA|sync|v_counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|v_counter~4_combout\ = (!\U_VGA|sync|Equal1~2_combout\ & \U_VGA|sync|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|sync|Equal1~2_combout\,
	datad => \U_VGA|sync|Add0~18_combout\,
	combout => \U_VGA|sync|v_counter~4_combout\);

-- Location: FF_X43_Y34_N29
\U_VGA|sync|v_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|sync|v_counter~4_combout\,
	ena => \U_VGA|sync|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|sync|v_counter\(9));

-- Location: LCCOMB_X45_Y32_N8
\U_VGA|sync|LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|LessThan5~0_combout\ = (((!\U_VGA|sync|v_counter\(0)) # (!\U_VGA|sync|v_counter\(2))) # (!\U_VGA|sync|v_counter\(3))) # (!\U_VGA|sync|v_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(1),
	datab => \U_VGA|sync|v_counter\(3),
	datac => \U_VGA|sync|v_counter\(2),
	datad => \U_VGA|sync|v_counter\(0),
	combout => \U_VGA|sync|LessThan5~0_combout\);

-- Location: LCCOMB_X45_Y32_N10
\U_VGA|sync|LessThan5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|LessThan5~1_combout\ = (\U_VGA|sync|v_counter\(8) & (\U_VGA|sync|v_counter\(6) & \U_VGA|sync|v_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(8),
	datac => \U_VGA|sync|v_counter\(6),
	datad => \U_VGA|sync|v_counter\(7),
	combout => \U_VGA|sync|LessThan5~1_combout\);

-- Location: LCCOMB_X45_Y32_N0
\U_VGA|sync|LessThan5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|LessThan5~2_combout\ = ((!\U_VGA|sync|v_counter\(5) & ((\U_VGA|sync|LessThan5~0_combout\) # (!\U_VGA|sync|v_counter\(4))))) # (!\U_VGA|sync|LessThan5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(5),
	datab => \U_VGA|sync|v_counter\(4),
	datac => \U_VGA|sync|LessThan5~0_combout\,
	datad => \U_VGA|sync|LessThan5~1_combout\,
	combout => \U_VGA|sync|LessThan5~2_combout\);

-- Location: LCCOMB_X43_Y32_N12
\U_VGA|sync|LessThan4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|LessThan4~0_combout\ = (\U_VGA|sync|h_counter\(0) & (\U_VGA|sync|h_counter\(3) & (\U_VGA|sync|h_counter\(1) & \U_VGA|sync|h_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(0),
	datab => \U_VGA|sync|h_counter\(3),
	datac => \U_VGA|sync|h_counter\(1),
	datad => \U_VGA|sync|h_counter\(2),
	combout => \U_VGA|sync|LessThan4~0_combout\);

-- Location: LCCOMB_X42_Y33_N28
\U_VGA|sync|h_sync~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|h_sync~3_combout\ = (\U_VGA|sync|h_counter\(5) & (\U_VGA|sync|h_counter\(4) & \U_VGA|sync|h_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(5),
	datac => \U_VGA|sync|h_counter\(4),
	datad => \U_VGA|sync|h_counter\(6),
	combout => \U_VGA|sync|h_sync~3_combout\);

-- Location: LCCOMB_X43_Y32_N10
\U_VGA|sync|video_on~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|video_on~0_combout\ = (!\U_VGA|sync|h_counter\(7) & (!\U_VGA|sync|h_counter\(8) & ((!\U_VGA|sync|h_sync~3_combout\) # (!\U_VGA|sync|LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|LessThan4~0_combout\,
	datab => \U_VGA|sync|h_counter\(7),
	datac => \U_VGA|sync|h_counter\(8),
	datad => \U_VGA|sync|h_sync~3_combout\,
	combout => \U_VGA|sync|video_on~0_combout\);

-- Location: LCCOMB_X44_Y32_N12
\U_VGA|sync|video_on~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|video_on~1_combout\ = (!\U_VGA|sync|v_counter\(9) & (\U_VGA|sync|LessThan5~2_combout\ & ((\U_VGA|sync|video_on~0_combout\) # (!\U_VGA|sync|h_counter\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(9),
	datab => \U_VGA|sync|h_counter\(9),
	datac => \U_VGA|sync|LessThan5~2_combout\,
	datad => \U_VGA|sync|video_on~0_combout\,
	combout => \U_VGA|sync|video_on~1_combout\);

-- Location: LCCOMB_X43_Y32_N20
\U_VGA|red~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|red~0_combout\ = (!\U_VGA|sync|LessThan4~0_combout\ & (\U_VGA|sync|h_counter\(9) & ((\U_VGA|sync|h_counter\(2)) # (\U_VGA|sync|h_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|LessThan4~0_combout\,
	datab => \U_VGA|sync|h_counter\(2),
	datac => \U_VGA|sync|h_counter\(9),
	datad => \U_VGA|sync|h_counter\(3),
	combout => \U_VGA|red~0_combout\);

-- Location: LCCOMB_X46_Y53_N12
\U_VGA|clk_div|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|Add0~0_combout\ = \U_VGA|clk_div|counter\(0) $ (VCC)
-- \U_VGA|clk_div|Add0~1\ = CARRY(\U_VGA|clk_div|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|clk_div|counter\(0),
	datad => VCC,
	combout => \U_VGA|clk_div|Add0~0_combout\,
	cout => \U_VGA|clk_div|Add0~1\);

-- Location: FF_X46_Y53_N13
\U_VGA|clk_div|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|clk_div|Add0~0_combout\,
	clrn => \button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|clk_div|counter\(0));

-- Location: LCCOMB_X46_Y53_N14
\U_VGA|clk_div|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|Add0~2_combout\ = (\U_VGA|clk_div|counter\(1) & (!\U_VGA|clk_div|Add0~1\)) # (!\U_VGA|clk_div|counter\(1) & ((\U_VGA|clk_div|Add0~1\) # (GND)))
-- \U_VGA|clk_div|Add0~3\ = CARRY((!\U_VGA|clk_div|Add0~1\) # (!\U_VGA|clk_div|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|clk_div|counter\(1),
	datad => VCC,
	cin => \U_VGA|clk_div|Add0~1\,
	combout => \U_VGA|clk_div|Add0~2_combout\,
	cout => \U_VGA|clk_div|Add0~3\);

-- Location: FF_X46_Y53_N15
\U_VGA|clk_div|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|clk_div|Add0~2_combout\,
	clrn => \button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|clk_div|counter\(1));

-- Location: LCCOMB_X46_Y53_N16
\U_VGA|clk_div|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|Add0~4_combout\ = (\U_VGA|clk_div|counter\(2) & (\U_VGA|clk_div|Add0~3\ $ (GND))) # (!\U_VGA|clk_div|counter\(2) & (!\U_VGA|clk_div|Add0~3\ & VCC))
-- \U_VGA|clk_div|Add0~5\ = CARRY((\U_VGA|clk_div|counter\(2) & !\U_VGA|clk_div|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|clk_div|counter\(2),
	datad => VCC,
	cin => \U_VGA|clk_div|Add0~3\,
	combout => \U_VGA|clk_div|Add0~4_combout\,
	cout => \U_VGA|clk_div|Add0~5\);

-- Location: FF_X46_Y53_N17
\U_VGA|clk_div|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|clk_div|Add0~4_combout\,
	clrn => \button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|clk_div|counter\(2));

-- Location: LCCOMB_X46_Y53_N18
\U_VGA|clk_div|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|Add0~6_combout\ = (\U_VGA|clk_div|counter\(3) & (!\U_VGA|clk_div|Add0~5\)) # (!\U_VGA|clk_div|counter\(3) & ((\U_VGA|clk_div|Add0~5\) # (GND)))
-- \U_VGA|clk_div|Add0~7\ = CARRY((!\U_VGA|clk_div|Add0~5\) # (!\U_VGA|clk_div|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|clk_div|counter\(3),
	datad => VCC,
	cin => \U_VGA|clk_div|Add0~5\,
	combout => \U_VGA|clk_div|Add0~6_combout\,
	cout => \U_VGA|clk_div|Add0~7\);

-- Location: FF_X46_Y53_N19
\U_VGA|clk_div|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|clk_div|Add0~6_combout\,
	clrn => \button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|clk_div|counter\(3));

-- Location: LCCOMB_X46_Y53_N20
\U_VGA|clk_div|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|Add0~8_combout\ = (\U_VGA|clk_div|counter\(4) & (\U_VGA|clk_div|Add0~7\ $ (GND))) # (!\U_VGA|clk_div|counter\(4) & (!\U_VGA|clk_div|Add0~7\ & VCC))
-- \U_VGA|clk_div|Add0~9\ = CARRY((\U_VGA|clk_div|counter\(4) & !\U_VGA|clk_div|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|clk_div|counter\(4),
	datad => VCC,
	cin => \U_VGA|clk_div|Add0~7\,
	combout => \U_VGA|clk_div|Add0~8_combout\,
	cout => \U_VGA|clk_div|Add0~9\);

-- Location: LCCOMB_X46_Y53_N22
\U_VGA|clk_div|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|Add0~10_combout\ = (\U_VGA|clk_div|counter\(5) & (!\U_VGA|clk_div|Add0~9\)) # (!\U_VGA|clk_div|counter\(5) & ((\U_VGA|clk_div|Add0~9\) # (GND)))
-- \U_VGA|clk_div|Add0~11\ = CARRY((!\U_VGA|clk_div|Add0~9\) # (!\U_VGA|clk_div|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|clk_div|counter\(5),
	datad => VCC,
	cin => \U_VGA|clk_div|Add0~9\,
	combout => \U_VGA|clk_div|Add0~10_combout\,
	cout => \U_VGA|clk_div|Add0~11\);

-- Location: FF_X46_Y53_N23
\U_VGA|clk_div|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|clk_div|Add0~10_combout\,
	clrn => \button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|clk_div|counter\(5));

-- Location: LCCOMB_X46_Y53_N24
\U_VGA|clk_div|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|Add0~12_combout\ = (\U_VGA|clk_div|counter\(6) & (\U_VGA|clk_div|Add0~11\ $ (GND))) # (!\U_VGA|clk_div|counter\(6) & (!\U_VGA|clk_div|Add0~11\ & VCC))
-- \U_VGA|clk_div|Add0~13\ = CARRY((\U_VGA|clk_div|counter\(6) & !\U_VGA|clk_div|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|clk_div|counter\(6),
	datad => VCC,
	cin => \U_VGA|clk_div|Add0~11\,
	combout => \U_VGA|clk_div|Add0~12_combout\,
	cout => \U_VGA|clk_div|Add0~13\);

-- Location: LCCOMB_X46_Y53_N8
\U_VGA|clk_div|counter~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|counter~6_combout\ = (\U_VGA|clk_div|Add0~12_combout\ & (((!\U_VGA|clk_div|Equal0~4_combout\) # (!\U_VGA|clk_div|counter\(0))) # (!\U_VGA|clk_div|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|clk_div|Equal0~5_combout\,
	datab => \U_VGA|clk_div|Add0~12_combout\,
	datac => \U_VGA|clk_div|counter\(0),
	datad => \U_VGA|clk_div|Equal0~4_combout\,
	combout => \U_VGA|clk_div|counter~6_combout\);

-- Location: FF_X46_Y53_N9
\U_VGA|clk_div|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|clk_div|counter~6_combout\,
	clrn => \button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|clk_div|counter\(6));

-- Location: LCCOMB_X46_Y53_N26
\U_VGA|clk_div|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|Add0~14_combout\ = (\U_VGA|clk_div|counter\(7) & (!\U_VGA|clk_div|Add0~13\)) # (!\U_VGA|clk_div|counter\(7) & ((\U_VGA|clk_div|Add0~13\) # (GND)))
-- \U_VGA|clk_div|Add0~15\ = CARRY((!\U_VGA|clk_div|Add0~13\) # (!\U_VGA|clk_div|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|clk_div|counter\(7),
	datad => VCC,
	cin => \U_VGA|clk_div|Add0~13\,
	combout => \U_VGA|clk_div|Add0~14_combout\,
	cout => \U_VGA|clk_div|Add0~15\);

-- Location: LCCOMB_X46_Y53_N2
\U_VGA|clk_div|counter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|counter~5_combout\ = (\U_VGA|clk_div|Add0~14_combout\ & (((!\U_VGA|clk_div|Equal0~4_combout\) # (!\U_VGA|clk_div|counter\(0))) # (!\U_VGA|clk_div|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|clk_div|Equal0~5_combout\,
	datab => \U_VGA|clk_div|counter\(0),
	datac => \U_VGA|clk_div|Add0~14_combout\,
	datad => \U_VGA|clk_div|Equal0~4_combout\,
	combout => \U_VGA|clk_div|counter~5_combout\);

-- Location: FF_X46_Y53_N3
\U_VGA|clk_div|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|clk_div|counter~5_combout\,
	clrn => \button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|clk_div|counter\(7));

-- Location: LCCOMB_X46_Y53_N28
\U_VGA|clk_div|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|Add0~16_combout\ = (\U_VGA|clk_div|counter\(8) & (\U_VGA|clk_div|Add0~15\ $ (GND))) # (!\U_VGA|clk_div|counter\(8) & (!\U_VGA|clk_div|Add0~15\ & VCC))
-- \U_VGA|clk_div|Add0~17\ = CARRY((\U_VGA|clk_div|counter\(8) & !\U_VGA|clk_div|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|clk_div|counter\(8),
	datad => VCC,
	cin => \U_VGA|clk_div|Add0~15\,
	combout => \U_VGA|clk_div|Add0~16_combout\,
	cout => \U_VGA|clk_div|Add0~17\);

-- Location: FF_X46_Y53_N29
\U_VGA|clk_div|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|clk_div|Add0~16_combout\,
	clrn => \button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|clk_div|counter\(8));

-- Location: LCCOMB_X46_Y53_N30
\U_VGA|clk_div|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|Add0~18_combout\ = (\U_VGA|clk_div|counter\(9) & (!\U_VGA|clk_div|Add0~17\)) # (!\U_VGA|clk_div|counter\(9) & ((\U_VGA|clk_div|Add0~17\) # (GND)))
-- \U_VGA|clk_div|Add0~19\ = CARRY((!\U_VGA|clk_div|Add0~17\) # (!\U_VGA|clk_div|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|clk_div|counter\(9),
	datad => VCC,
	cin => \U_VGA|clk_div|Add0~17\,
	combout => \U_VGA|clk_div|Add0~18_combout\,
	cout => \U_VGA|clk_div|Add0~19\);

-- Location: LCCOMB_X46_Y53_N4
\U_VGA|clk_div|counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|counter~4_combout\ = (\U_VGA|clk_div|Add0~18_combout\ & (((!\U_VGA|clk_div|Equal0~4_combout\) # (!\U_VGA|clk_div|counter\(0))) # (!\U_VGA|clk_div|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|clk_div|Equal0~5_combout\,
	datab => \U_VGA|clk_div|counter\(0),
	datac => \U_VGA|clk_div|Add0~18_combout\,
	datad => \U_VGA|clk_div|Equal0~4_combout\,
	combout => \U_VGA|clk_div|counter~4_combout\);

-- Location: FF_X46_Y53_N5
\U_VGA|clk_div|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|clk_div|counter~4_combout\,
	clrn => \button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|clk_div|counter\(9));

-- Location: LCCOMB_X46_Y52_N0
\U_VGA|clk_div|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|Add0~20_combout\ = (\U_VGA|clk_div|counter\(10) & (\U_VGA|clk_div|Add0~19\ $ (GND))) # (!\U_VGA|clk_div|counter\(10) & (!\U_VGA|clk_div|Add0~19\ & VCC))
-- \U_VGA|clk_div|Add0~21\ = CARRY((\U_VGA|clk_div|counter\(10) & !\U_VGA|clk_div|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|clk_div|counter\(10),
	datad => VCC,
	cin => \U_VGA|clk_div|Add0~19\,
	combout => \U_VGA|clk_div|Add0~20_combout\,
	cout => \U_VGA|clk_div|Add0~21\);

-- Location: FF_X46_Y52_N1
\U_VGA|clk_div|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|clk_div|Add0~20_combout\,
	clrn => \button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|clk_div|counter\(10));

-- Location: LCCOMB_X46_Y52_N2
\U_VGA|clk_div|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|Add0~22_combout\ = (\U_VGA|clk_div|counter\(11) & (!\U_VGA|clk_div|Add0~21\)) # (!\U_VGA|clk_div|counter\(11) & ((\U_VGA|clk_div|Add0~21\) # (GND)))
-- \U_VGA|clk_div|Add0~23\ = CARRY((!\U_VGA|clk_div|Add0~21\) # (!\U_VGA|clk_div|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|clk_div|counter\(11),
	datad => VCC,
	cin => \U_VGA|clk_div|Add0~21\,
	combout => \U_VGA|clk_div|Add0~22_combout\,
	cout => \U_VGA|clk_div|Add0~23\);

-- Location: FF_X46_Y52_N3
\U_VGA|clk_div|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|clk_div|Add0~22_combout\,
	clrn => \button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|clk_div|counter\(11));

-- Location: LCCOMB_X46_Y52_N4
\U_VGA|clk_div|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|Add0~24_combout\ = (\U_VGA|clk_div|counter\(12) & (\U_VGA|clk_div|Add0~23\ $ (GND))) # (!\U_VGA|clk_div|counter\(12) & (!\U_VGA|clk_div|Add0~23\ & VCC))
-- \U_VGA|clk_div|Add0~25\ = CARRY((\U_VGA|clk_div|counter\(12) & !\U_VGA|clk_div|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|clk_div|counter\(12),
	datad => VCC,
	cin => \U_VGA|clk_div|Add0~23\,
	combout => \U_VGA|clk_div|Add0~24_combout\,
	cout => \U_VGA|clk_div|Add0~25\);

-- Location: LCCOMB_X46_Y52_N26
\U_VGA|clk_div|counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|counter~3_combout\ = (\U_VGA|clk_div|Add0~24_combout\ & (((!\U_VGA|clk_div|Equal0~4_combout\) # (!\U_VGA|clk_div|counter\(0))) # (!\U_VGA|clk_div|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|clk_div|Equal0~5_combout\,
	datab => \U_VGA|clk_div|counter\(0),
	datac => \U_VGA|clk_div|Add0~24_combout\,
	datad => \U_VGA|clk_div|Equal0~4_combout\,
	combout => \U_VGA|clk_div|counter~3_combout\);

-- Location: FF_X46_Y52_N27
\U_VGA|clk_div|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|clk_div|counter~3_combout\,
	clrn => \button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|clk_div|counter\(12));

-- Location: LCCOMB_X45_Y52_N12
\U_VGA|clk_div|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|Equal0~2_combout\ = (\U_VGA|clk_div|counter\(9) & (!\U_VGA|clk_div|counter\(11) & (!\U_VGA|clk_div|counter\(10) & \U_VGA|clk_div|counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|clk_div|counter\(9),
	datab => \U_VGA|clk_div|counter\(11),
	datac => \U_VGA|clk_div|counter\(10),
	datad => \U_VGA|clk_div|counter\(12),
	combout => \U_VGA|clk_div|Equal0~2_combout\);

-- Location: LCCOMB_X46_Y52_N6
\U_VGA|clk_div|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|Add0~26_combout\ = (\U_VGA|clk_div|counter\(13) & (!\U_VGA|clk_div|Add0~25\)) # (!\U_VGA|clk_div|counter\(13) & ((\U_VGA|clk_div|Add0~25\) # (GND)))
-- \U_VGA|clk_div|Add0~27\ = CARRY((!\U_VGA|clk_div|Add0~25\) # (!\U_VGA|clk_div|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|clk_div|counter\(13),
	datad => VCC,
	cin => \U_VGA|clk_div|Add0~25\,
	combout => \U_VGA|clk_div|Add0~26_combout\,
	cout => \U_VGA|clk_div|Add0~27\);

-- Location: FF_X46_Y52_N7
\U_VGA|clk_div|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|clk_div|Add0~26_combout\,
	clrn => \button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|clk_div|counter\(13));

-- Location: LCCOMB_X46_Y52_N8
\U_VGA|clk_div|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|Add0~28_combout\ = (\U_VGA|clk_div|counter\(14) & (\U_VGA|clk_div|Add0~27\ $ (GND))) # (!\U_VGA|clk_div|counter\(14) & (!\U_VGA|clk_div|Add0~27\ & VCC))
-- \U_VGA|clk_div|Add0~29\ = CARRY((\U_VGA|clk_div|counter\(14) & !\U_VGA|clk_div|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|clk_div|counter\(14),
	datad => VCC,
	cin => \U_VGA|clk_div|Add0~27\,
	combout => \U_VGA|clk_div|Add0~28_combout\,
	cout => \U_VGA|clk_div|Add0~29\);

-- Location: FF_X46_Y52_N9
\U_VGA|clk_div|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|clk_div|Add0~28_combout\,
	clrn => \button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|clk_div|counter\(14));

-- Location: LCCOMB_X46_Y52_N10
\U_VGA|clk_div|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|Add0~30_combout\ = (\U_VGA|clk_div|counter\(15) & (!\U_VGA|clk_div|Add0~29\)) # (!\U_VGA|clk_div|counter\(15) & ((\U_VGA|clk_div|Add0~29\) # (GND)))
-- \U_VGA|clk_div|Add0~31\ = CARRY((!\U_VGA|clk_div|Add0~29\) # (!\U_VGA|clk_div|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|clk_div|counter\(15),
	datad => VCC,
	cin => \U_VGA|clk_div|Add0~29\,
	combout => \U_VGA|clk_div|Add0~30_combout\,
	cout => \U_VGA|clk_div|Add0~31\);

-- Location: FF_X46_Y52_N11
\U_VGA|clk_div|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|clk_div|Add0~30_combout\,
	clrn => \button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|clk_div|counter\(15));

-- Location: LCCOMB_X46_Y52_N12
\U_VGA|clk_div|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|Add0~32_combout\ = (\U_VGA|clk_div|counter\(16) & (\U_VGA|clk_div|Add0~31\ $ (GND))) # (!\U_VGA|clk_div|counter\(16) & (!\U_VGA|clk_div|Add0~31\ & VCC))
-- \U_VGA|clk_div|Add0~33\ = CARRY((\U_VGA|clk_div|counter\(16) & !\U_VGA|clk_div|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|clk_div|counter\(16),
	datad => VCC,
	cin => \U_VGA|clk_div|Add0~31\,
	combout => \U_VGA|clk_div|Add0~32_combout\,
	cout => \U_VGA|clk_div|Add0~33\);

-- Location: LCCOMB_X46_Y52_N28
\U_VGA|clk_div|counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|counter~2_combout\ = (\U_VGA|clk_div|Add0~32_combout\ & (((!\U_VGA|clk_div|Equal0~5_combout\) # (!\U_VGA|clk_div|Equal0~4_combout\)) # (!\U_VGA|clk_div|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|clk_div|counter\(0),
	datab => \U_VGA|clk_div|Equal0~4_combout\,
	datac => \U_VGA|clk_div|Equal0~5_combout\,
	datad => \U_VGA|clk_div|Add0~32_combout\,
	combout => \U_VGA|clk_div|counter~2_combout\);

-- Location: FF_X46_Y52_N29
\U_VGA|clk_div|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|clk_div|counter~2_combout\,
	clrn => \button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|clk_div|counter\(16));

-- Location: LCCOMB_X45_Y52_N22
\U_VGA|clk_div|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|Equal0~1_combout\ = (\U_VGA|clk_div|counter\(16) & (!\U_VGA|clk_div|counter\(14) & (!\U_VGA|clk_div|counter\(15) & !\U_VGA|clk_div|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|clk_div|counter\(16),
	datab => \U_VGA|clk_div|counter\(14),
	datac => \U_VGA|clk_div|counter\(15),
	datad => \U_VGA|clk_div|counter\(13),
	combout => \U_VGA|clk_div|Equal0~1_combout\);

-- Location: LCCOMB_X46_Y53_N10
\U_VGA|clk_div|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|Equal0~3_combout\ = (!\U_VGA|clk_div|counter\(8) & (\U_VGA|clk_div|counter\(6) & (!\U_VGA|clk_div|counter\(5) & \U_VGA|clk_div|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|clk_div|counter\(8),
	datab => \U_VGA|clk_div|counter\(6),
	datac => \U_VGA|clk_div|counter\(5),
	datad => \U_VGA|clk_div|counter\(7),
	combout => \U_VGA|clk_div|Equal0~3_combout\);

-- Location: LCCOMB_X46_Y52_N14
\U_VGA|clk_div|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|Add0~34_combout\ = (\U_VGA|clk_div|counter\(17) & (!\U_VGA|clk_div|Add0~33\)) # (!\U_VGA|clk_div|counter\(17) & ((\U_VGA|clk_div|Add0~33\) # (GND)))
-- \U_VGA|clk_div|Add0~35\ = CARRY((!\U_VGA|clk_div|Add0~33\) # (!\U_VGA|clk_div|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|clk_div|counter\(17),
	datad => VCC,
	cin => \U_VGA|clk_div|Add0~33\,
	combout => \U_VGA|clk_div|Add0~34_combout\,
	cout => \U_VGA|clk_div|Add0~35\);

-- Location: LCCOMB_X46_Y52_N24
\U_VGA|clk_div|counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|counter~1_combout\ = (\U_VGA|clk_div|Add0~34_combout\ & (((!\U_VGA|clk_div|Equal0~4_combout\) # (!\U_VGA|clk_div|counter\(0))) # (!\U_VGA|clk_div|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|clk_div|Equal0~5_combout\,
	datab => \U_VGA|clk_div|counter\(0),
	datac => \U_VGA|clk_div|Add0~34_combout\,
	datad => \U_VGA|clk_div|Equal0~4_combout\,
	combout => \U_VGA|clk_div|counter~1_combout\);

-- Location: FF_X46_Y52_N25
\U_VGA|clk_div|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|clk_div|counter~1_combout\,
	clrn => \button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|clk_div|counter\(17));

-- Location: LCCOMB_X46_Y52_N16
\U_VGA|clk_div|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|Add0~36_combout\ = (\U_VGA|clk_div|counter\(18) & (\U_VGA|clk_div|Add0~35\ $ (GND))) # (!\U_VGA|clk_div|counter\(18) & (!\U_VGA|clk_div|Add0~35\ & VCC))
-- \U_VGA|clk_div|Add0~37\ = CARRY((\U_VGA|clk_div|counter\(18) & !\U_VGA|clk_div|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|clk_div|counter\(18),
	datad => VCC,
	cin => \U_VGA|clk_div|Add0~35\,
	combout => \U_VGA|clk_div|Add0~36_combout\,
	cout => \U_VGA|clk_div|Add0~37\);

-- Location: FF_X46_Y52_N17
\U_VGA|clk_div|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|clk_div|Add0~36_combout\,
	clrn => \button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|clk_div|counter\(18));

-- Location: LCCOMB_X46_Y52_N18
\U_VGA|clk_div|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|Add0~38_combout\ = (\U_VGA|clk_div|counter\(19) & (!\U_VGA|clk_div|Add0~37\)) # (!\U_VGA|clk_div|counter\(19) & ((\U_VGA|clk_div|Add0~37\) # (GND)))
-- \U_VGA|clk_div|Add0~39\ = CARRY((!\U_VGA|clk_div|Add0~37\) # (!\U_VGA|clk_div|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|clk_div|counter\(19),
	datad => VCC,
	cin => \U_VGA|clk_div|Add0~37\,
	combout => \U_VGA|clk_div|Add0~38_combout\,
	cout => \U_VGA|clk_div|Add0~39\);

-- Location: FF_X46_Y52_N19
\U_VGA|clk_div|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|clk_div|Add0~38_combout\,
	clrn => \button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|clk_div|counter\(19));

-- Location: LCCOMB_X46_Y52_N20
\U_VGA|clk_div|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|Add0~40_combout\ = \U_VGA|clk_div|Add0~39\ $ (!\U_VGA|clk_div|counter\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_VGA|clk_div|counter\(20),
	cin => \U_VGA|clk_div|Add0~39\,
	combout => \U_VGA|clk_div|Add0~40_combout\);

-- Location: LCCOMB_X46_Y52_N30
\U_VGA|clk_div|counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|counter~0_combout\ = (\U_VGA|clk_div|Add0~40_combout\ & (((!\U_VGA|clk_div|Equal0~5_combout\) # (!\U_VGA|clk_div|Equal0~4_combout\)) # (!\U_VGA|clk_div|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|clk_div|counter\(0),
	datab => \U_VGA|clk_div|Equal0~4_combout\,
	datac => \U_VGA|clk_div|Equal0~5_combout\,
	datad => \U_VGA|clk_div|Add0~40_combout\,
	combout => \U_VGA|clk_div|counter~0_combout\);

-- Location: FF_X46_Y52_N31
\U_VGA|clk_div|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|clk_div|counter~0_combout\,
	clrn => \button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|clk_div|counter\(20));

-- Location: LCCOMB_X46_Y52_N22
\U_VGA|clk_div|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|Equal0~0_combout\ = (!\U_VGA|clk_div|counter\(19) & (!\U_VGA|clk_div|counter\(18) & (\U_VGA|clk_div|counter\(20) & \U_VGA|clk_div|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|clk_div|counter\(19),
	datab => \U_VGA|clk_div|counter\(18),
	datac => \U_VGA|clk_div|counter\(20),
	datad => \U_VGA|clk_div|counter\(17),
	combout => \U_VGA|clk_div|Equal0~0_combout\);

-- Location: LCCOMB_X45_Y52_N28
\U_VGA|clk_div|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|Equal0~4_combout\ = (\U_VGA|clk_div|Equal0~2_combout\ & (\U_VGA|clk_div|Equal0~1_combout\ & (\U_VGA|clk_div|Equal0~3_combout\ & \U_VGA|clk_div|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|clk_div|Equal0~2_combout\,
	datab => \U_VGA|clk_div|Equal0~1_combout\,
	datac => \U_VGA|clk_div|Equal0~3_combout\,
	datad => \U_VGA|clk_div|Equal0~0_combout\,
	combout => \U_VGA|clk_div|Equal0~4_combout\);

-- Location: LCCOMB_X46_Y53_N0
\U_VGA|clk_div|counter~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|counter~7_combout\ = (\U_VGA|clk_div|Add0~8_combout\ & (((!\U_VGA|clk_div|Equal0~4_combout\) # (!\U_VGA|clk_div|counter\(0))) # (!\U_VGA|clk_div|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|clk_div|Equal0~5_combout\,
	datab => \U_VGA|clk_div|Add0~8_combout\,
	datac => \U_VGA|clk_div|counter\(0),
	datad => \U_VGA|clk_div|Equal0~4_combout\,
	combout => \U_VGA|clk_div|counter~7_combout\);

-- Location: FF_X46_Y53_N1
\U_VGA|clk_div|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|clk_div|counter~7_combout\,
	clrn => \button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|clk_div|counter\(4));

-- Location: LCCOMB_X46_Y53_N6
\U_VGA|clk_div|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|Equal0~5_combout\ = (\U_VGA|clk_div|counter\(3) & (\U_VGA|clk_div|counter\(2) & (\U_VGA|clk_div|counter\(1) & !\U_VGA|clk_div|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|clk_div|counter\(3),
	datab => \U_VGA|clk_div|counter\(2),
	datac => \U_VGA|clk_div|counter\(1),
	datad => \U_VGA|clk_div|counter\(4),
	combout => \U_VGA|clk_div|Equal0~5_combout\);

-- Location: LCCOMB_X45_Y52_N14
\U_VGA|clk_div|temp_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|temp_clk~0_combout\ = \U_VGA|clk_div|temp_clk~q\ $ (((\U_VGA|clk_div|counter\(0) & (\U_VGA|clk_div|Equal0~5_combout\ & \U_VGA|clk_div|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|clk_div|counter\(0),
	datab => \U_VGA|clk_div|Equal0~5_combout\,
	datac => \U_VGA|clk_div|temp_clk~q\,
	datad => \U_VGA|clk_div|Equal0~4_combout\,
	combout => \U_VGA|clk_div|temp_clk~0_combout\);

-- Location: LCCOMB_X45_Y52_N10
\U_VGA|clk_div|temp_clk~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|temp_clk~feeder_combout\ = \U_VGA|clk_div|temp_clk~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|clk_div|temp_clk~0_combout\,
	combout => \U_VGA|clk_div|temp_clk~feeder_combout\);

-- Location: FF_X45_Y52_N11
\U_VGA|clk_div|temp_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|clk_div|temp_clk~feeder_combout\,
	clrn => \button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|clk_div|temp_clk~q\);

-- Location: CLKCTRL_G14
\U_VGA|clk_div|temp_clk~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_VGA|clk_div|temp_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N1
\switch[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(2),
	o => \switch[2]~input_o\);

-- Location: LCCOMB_X44_Y39_N16
\U_VGA|Add6~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~14_combout\ = (\U_VGA|y_pos_p2\(8) & (\U_VGA|Add6~13\ & VCC)) # (!\U_VGA|y_pos_p2\(8) & (!\U_VGA|Add6~13\))
-- \U_VGA|Add6~15\ = CARRY((!\U_VGA|y_pos_p2\(8) & !\U_VGA|Add6~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(8),
	datad => VCC,
	cin => \U_VGA|Add6~13\,
	combout => \U_VGA|Add6~14_combout\,
	cout => \U_VGA|Add6~15\);

-- Location: LCCOMB_X44_Y39_N18
\U_VGA|Add6~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~16_combout\ = (\U_VGA|y_pos_p2\(9) & ((GND) # (!\U_VGA|Add6~15\))) # (!\U_VGA|y_pos_p2\(9) & (\U_VGA|Add6~15\ $ (GND)))
-- \U_VGA|Add6~17\ = CARRY((\U_VGA|y_pos_p2\(9)) # (!\U_VGA|Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(9),
	datad => VCC,
	cin => \U_VGA|Add6~15\,
	combout => \U_VGA|Add6~16_combout\,
	cout => \U_VGA|Add6~17\);

-- Location: LCCOMB_X44_Y39_N20
\U_VGA|Add6~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~18_combout\ = (\U_VGA|y_pos_p2\(10) & (\U_VGA|Add6~17\ & VCC)) # (!\U_VGA|y_pos_p2\(10) & (!\U_VGA|Add6~17\))
-- \U_VGA|Add6~19\ = CARRY((!\U_VGA|y_pos_p2\(10) & !\U_VGA|Add6~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(10),
	datad => VCC,
	cin => \U_VGA|Add6~17\,
	combout => \U_VGA|Add6~18_combout\,
	cout => \U_VGA|Add6~19\);

-- Location: LCCOMB_X46_Y39_N18
\U_VGA|Add7~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~16_combout\ = (\U_VGA|y_pos_p2\(9) & (\U_VGA|Add7~15\ $ (GND))) # (!\U_VGA|y_pos_p2\(9) & (!\U_VGA|Add7~15\ & VCC))
-- \U_VGA|Add7~17\ = CARRY((\U_VGA|y_pos_p2\(9) & !\U_VGA|Add7~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(9),
	datad => VCC,
	cin => \U_VGA|Add7~15\,
	combout => \U_VGA|Add7~16_combout\,
	cout => \U_VGA|Add7~17\);

-- Location: LCCOMB_X46_Y39_N20
\U_VGA|Add7~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~18_combout\ = (\U_VGA|y_pos_p2\(10) & (!\U_VGA|Add7~17\)) # (!\U_VGA|y_pos_p2\(10) & ((\U_VGA|Add7~17\) # (GND)))
-- \U_VGA|Add7~19\ = CARRY((!\U_VGA|Add7~17\) # (!\U_VGA|y_pos_p2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(10),
	datad => VCC,
	cin => \U_VGA|Add7~17\,
	combout => \U_VGA|Add7~18_combout\,
	cout => \U_VGA|Add7~19\);

-- Location: LCCOMB_X47_Y38_N0
\U_VGA|y_pos_p2~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p2~32_combout\ = (\U_VGA|Add6~60_combout\ & (((\U_VGA|Add7~18_combout\)))) # (!\U_VGA|Add6~60_combout\ & ((\switch[2]~input_o\ & (\U_VGA|Add6~18_combout\)) # (!\switch[2]~input_o\ & ((\U_VGA|Add7~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add6~18_combout\,
	datab => \U_VGA|Add6~60_combout\,
	datac => \U_VGA|Add7~18_combout\,
	datad => \switch[2]~input_o\,
	combout => \U_VGA|y_pos_p2~32_combout\);

-- Location: IOIBUF_X54_Y54_N29
\switch[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(3),
	o => \switch[3]~input_o\);

-- Location: LCCOMB_X49_Y38_N8
\U_VGA|y_pos_p2[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p2[9]~1_combout\ = (\button_n[0]~input_o\ & ((\U_VGA|Add6~60_combout\) # (!\switch[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datab => \U_VGA|Add6~60_combout\,
	datac => \switch[2]~input_o\,
	combout => \U_VGA|y_pos_p2[9]~1_combout\);

-- Location: LCCOMB_X46_Y39_N14
\U_VGA|Add7~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~12_combout\ = (\U_VGA|y_pos_p2\(7) & (!\U_VGA|Add7~11\ & VCC)) # (!\U_VGA|y_pos_p2\(7) & (\U_VGA|Add7~11\ $ (GND)))
-- \U_VGA|Add7~13\ = CARRY((!\U_VGA|y_pos_p2\(7) & !\U_VGA|Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(7),
	datad => VCC,
	cin => \U_VGA|Add7~11\,
	combout => \U_VGA|Add7~12_combout\,
	cout => \U_VGA|Add7~13\);

-- Location: LCCOMB_X46_Y39_N16
\U_VGA|Add7~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~14_combout\ = (\U_VGA|y_pos_p2\(8) & (!\U_VGA|Add7~13\)) # (!\U_VGA|y_pos_p2\(8) & ((\U_VGA|Add7~13\) # (GND)))
-- \U_VGA|Add7~15\ = CARRY((!\U_VGA|Add7~13\) # (!\U_VGA|y_pos_p2\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(8),
	datad => VCC,
	cin => \U_VGA|Add7~13\,
	combout => \U_VGA|Add7~14_combout\,
	cout => \U_VGA|Add7~15\);

-- Location: LCCOMB_X44_Y39_N2
\U_VGA|Add6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~0_combout\ = \U_VGA|y_pos_p2\(1) $ (VCC)
-- \U_VGA|Add6~1\ = CARRY(\U_VGA|y_pos_p2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(1),
	datad => VCC,
	combout => \U_VGA|Add6~0_combout\,
	cout => \U_VGA|Add6~1\);

-- Location: LCCOMB_X46_Y39_N2
\U_VGA|Add7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~0_combout\ = \U_VGA|y_pos_p2\(1) $ (VCC)
-- \U_VGA|Add7~1\ = CARRY(\U_VGA|y_pos_p2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(1),
	datad => VCC,
	combout => \U_VGA|Add7~0_combout\,
	cout => \U_VGA|Add7~1\);

-- Location: LCCOMB_X45_Y39_N16
\U_VGA|y_pos_p2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p2~10_combout\ = (\switch[2]~input_o\ & ((\U_VGA|Add6~60_combout\ & ((\U_VGA|Add7~0_combout\))) # (!\U_VGA|Add6~60_combout\ & (\U_VGA|Add6~0_combout\)))) # (!\switch[2]~input_o\ & (((\U_VGA|Add7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add6~0_combout\,
	datab => \switch[2]~input_o\,
	datac => \U_VGA|Add6~60_combout\,
	datad => \U_VGA|Add7~0_combout\,
	combout => \U_VGA|y_pos_p2~10_combout\);

-- Location: FF_X46_Y36_N3
\U_VGA|y_pos_p2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p2~10_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p2[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p2\(1));

-- Location: LCCOMB_X46_Y39_N4
\U_VGA|Add7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~2_combout\ = (\U_VGA|y_pos_p2\(2) & (!\U_VGA|Add7~1\)) # (!\U_VGA|y_pos_p2\(2) & ((\U_VGA|Add7~1\) # (GND)))
-- \U_VGA|Add7~3\ = CARRY((!\U_VGA|Add7~1\) # (!\U_VGA|y_pos_p2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(2),
	datad => VCC,
	cin => \U_VGA|Add7~1\,
	combout => \U_VGA|Add7~2_combout\,
	cout => \U_VGA|Add7~3\);

-- Location: LCCOMB_X44_Y39_N4
\U_VGA|Add6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~2_combout\ = (\U_VGA|y_pos_p2\(2) & (\U_VGA|Add6~1\ & VCC)) # (!\U_VGA|y_pos_p2\(2) & (!\U_VGA|Add6~1\))
-- \U_VGA|Add6~3\ = CARRY((!\U_VGA|y_pos_p2\(2) & !\U_VGA|Add6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(2),
	datad => VCC,
	cin => \U_VGA|Add6~1\,
	combout => \U_VGA|Add6~2_combout\,
	cout => \U_VGA|Add6~3\);

-- Location: LCCOMB_X47_Y39_N0
\U_VGA|y_pos_p2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p2~9_combout\ = (\U_VGA|Add6~60_combout\ & (\U_VGA|Add7~2_combout\)) # (!\U_VGA|Add6~60_combout\ & ((\switch[2]~input_o\ & ((\U_VGA|Add6~2_combout\))) # (!\switch[2]~input_o\ & (\U_VGA|Add7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add7~2_combout\,
	datab => \U_VGA|Add6~60_combout\,
	datac => \switch[2]~input_o\,
	datad => \U_VGA|Add6~2_combout\,
	combout => \U_VGA|y_pos_p2~9_combout\);

-- Location: FF_X46_Y36_N5
\U_VGA|y_pos_p2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p2~9_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p2[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p2\(2));

-- Location: LCCOMB_X46_Y39_N6
\U_VGA|Add7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~4_combout\ = (\U_VGA|y_pos_p2\(3) & (!\U_VGA|Add7~3\ & VCC)) # (!\U_VGA|y_pos_p2\(3) & (\U_VGA|Add7~3\ $ (GND)))
-- \U_VGA|Add7~5\ = CARRY((!\U_VGA|y_pos_p2\(3) & !\U_VGA|Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(3),
	datad => VCC,
	cin => \U_VGA|Add7~3\,
	combout => \U_VGA|Add7~4_combout\,
	cout => \U_VGA|Add7~5\);

-- Location: LCCOMB_X44_Y39_N6
\U_VGA|Add6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~4_combout\ = (\U_VGA|y_pos_p2\(3) & (\U_VGA|Add6~3\ $ (GND))) # (!\U_VGA|y_pos_p2\(3) & ((GND) # (!\U_VGA|Add6~3\)))
-- \U_VGA|Add6~5\ = CARRY((!\U_VGA|Add6~3\) # (!\U_VGA|y_pos_p2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(3),
	datad => VCC,
	cin => \U_VGA|Add6~3\,
	combout => \U_VGA|Add6~4_combout\,
	cout => \U_VGA|Add6~5\);

-- Location: LCCOMB_X46_Y36_N0
\U_VGA|y_pos_p2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p2~8_combout\ = (\button_n[0]~input_o\ & ((\U_VGA|paddle2_move~0_combout\ & ((!\U_VGA|Add6~4_combout\))) # (!\U_VGA|paddle2_move~0_combout\ & (!\U_VGA|Add7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add7~4_combout\,
	datab => \U_VGA|Add6~4_combout\,
	datac => \U_VGA|paddle2_move~0_combout\,
	datad => \button_n[0]~input_o\,
	combout => \U_VGA|y_pos_p2~8_combout\);

-- Location: FF_X46_Y36_N1
\U_VGA|y_pos_p2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|y_pos_p2~8_combout\,
	ena => \U_VGA|y_pos_p2[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p2\(3));

-- Location: LCCOMB_X44_Y39_N8
\U_VGA|Add6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~6_combout\ = (\U_VGA|y_pos_p2\(4) & (\U_VGA|Add6~5\ & VCC)) # (!\U_VGA|y_pos_p2\(4) & (!\U_VGA|Add6~5\))
-- \U_VGA|Add6~7\ = CARRY((!\U_VGA|y_pos_p2\(4) & !\U_VGA|Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(4),
	datad => VCC,
	cin => \U_VGA|Add6~5\,
	combout => \U_VGA|Add6~6_combout\,
	cout => \U_VGA|Add6~7\);

-- Location: LCCOMB_X46_Y39_N8
\U_VGA|Add7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~6_combout\ = (\U_VGA|y_pos_p2\(4) & (!\U_VGA|Add7~5\)) # (!\U_VGA|y_pos_p2\(4) & ((\U_VGA|Add7~5\) # (GND)))
-- \U_VGA|Add7~7\ = CARRY((!\U_VGA|Add7~5\) # (!\U_VGA|y_pos_p2\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(4),
	datad => VCC,
	cin => \U_VGA|Add7~5\,
	combout => \U_VGA|Add7~6_combout\,
	cout => \U_VGA|Add7~7\);

-- Location: LCCOMB_X47_Y39_N10
\U_VGA|y_pos_p2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p2~7_combout\ = (\U_VGA|Add6~60_combout\ & (((\U_VGA|Add7~6_combout\)))) # (!\U_VGA|Add6~60_combout\ & ((\switch[2]~input_o\ & (\U_VGA|Add6~6_combout\)) # (!\switch[2]~input_o\ & ((\U_VGA|Add7~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add6~6_combout\,
	datab => \U_VGA|Add6~60_combout\,
	datac => \switch[2]~input_o\,
	datad => \U_VGA|Add7~6_combout\,
	combout => \U_VGA|y_pos_p2~7_combout\);

-- Location: FF_X46_Y36_N13
\U_VGA|y_pos_p2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p2~7_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p2[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p2\(4));

-- Location: LCCOMB_X44_Y39_N10
\U_VGA|Add6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~8_combout\ = (\U_VGA|y_pos_p2\(5) & ((GND) # (!\U_VGA|Add6~7\))) # (!\U_VGA|y_pos_p2\(5) & (\U_VGA|Add6~7\ $ (GND)))
-- \U_VGA|Add6~9\ = CARRY((\U_VGA|y_pos_p2\(5)) # (!\U_VGA|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(5),
	datad => VCC,
	cin => \U_VGA|Add6~7\,
	combout => \U_VGA|Add6~8_combout\,
	cout => \U_VGA|Add6~9\);

-- Location: LCCOMB_X45_Y38_N8
\U_VGA|y_pos_p2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p2~6_combout\ = (\U_VGA|Add6~60_combout\ & (\U_VGA|Add7~8_combout\)) # (!\U_VGA|Add6~60_combout\ & ((\switch[2]~input_o\ & ((\U_VGA|Add6~8_combout\))) # (!\switch[2]~input_o\ & (\U_VGA|Add7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add7~8_combout\,
	datab => \U_VGA|Add6~60_combout\,
	datac => \U_VGA|Add6~8_combout\,
	datad => \switch[2]~input_o\,
	combout => \U_VGA|y_pos_p2~6_combout\);

-- Location: FF_X45_Y38_N9
\U_VGA|y_pos_p2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|y_pos_p2~6_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	ena => \U_VGA|y_pos_p2[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p2\(5));

-- Location: LCCOMB_X46_Y39_N10
\U_VGA|Add7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~8_combout\ = (\U_VGA|y_pos_p2\(5) & (\U_VGA|Add7~7\ $ (GND))) # (!\U_VGA|y_pos_p2\(5) & (!\U_VGA|Add7~7\ & VCC))
-- \U_VGA|Add7~9\ = CARRY((\U_VGA|y_pos_p2\(5) & !\U_VGA|Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(5),
	datad => VCC,
	cin => \U_VGA|Add7~7\,
	combout => \U_VGA|Add7~8_combout\,
	cout => \U_VGA|Add7~9\);

-- Location: LCCOMB_X46_Y39_N12
\U_VGA|Add7~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~10_combout\ = (\U_VGA|y_pos_p2\(6) & ((\U_VGA|Add7~9\) # (GND))) # (!\U_VGA|y_pos_p2\(6) & (!\U_VGA|Add7~9\))
-- \U_VGA|Add7~11\ = CARRY((\U_VGA|y_pos_p2\(6)) # (!\U_VGA|Add7~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(6),
	datad => VCC,
	cin => \U_VGA|Add7~9\,
	combout => \U_VGA|Add7~10_combout\,
	cout => \U_VGA|Add7~11\);

-- Location: LCCOMB_X46_Y39_N0
\U_VGA|LessThan13~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan13~7_combout\ = (\U_VGA|Add7~4_combout\ & (\U_VGA|Add7~2_combout\ & \U_VGA|Add7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add7~4_combout\,
	datac => \U_VGA|Add7~2_combout\,
	datad => \U_VGA|Add7~0_combout\,
	combout => \U_VGA|LessThan13~7_combout\);

-- Location: LCCOMB_X47_Y39_N4
\U_VGA|LessThan13~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan13~8_combout\ = (\U_VGA|Add7~10_combout\) # ((\U_VGA|Add7~8_combout\ & ((\U_VGA|LessThan13~7_combout\) # (\U_VGA|Add7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add7~8_combout\,
	datab => \U_VGA|Add7~10_combout\,
	datac => \U_VGA|LessThan13~7_combout\,
	datad => \U_VGA|Add7~6_combout\,
	combout => \U_VGA|LessThan13~8_combout\);

-- Location: LCCOMB_X46_Y38_N20
\U_VGA|Add7~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~50_combout\ = (\U_VGA|y_pos_p2\(26) & (!\U_VGA|Add7~49\)) # (!\U_VGA|y_pos_p2\(26) & ((\U_VGA|Add7~49\) # (GND)))
-- \U_VGA|Add7~51\ = CARRY((!\U_VGA|Add7~49\) # (!\U_VGA|y_pos_p2\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(26),
	datad => VCC,
	cin => \U_VGA|Add7~49\,
	combout => \U_VGA|Add7~50_combout\,
	cout => \U_VGA|Add7~51\);

-- Location: LCCOMB_X46_Y38_N22
\U_VGA|Add7~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~52_combout\ = (\U_VGA|y_pos_p2\(27) & (\U_VGA|Add7~51\ $ (GND))) # (!\U_VGA|y_pos_p2\(27) & (!\U_VGA|Add7~51\ & VCC))
-- \U_VGA|Add7~53\ = CARRY((\U_VGA|y_pos_p2\(27) & !\U_VGA|Add7~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(27),
	datad => VCC,
	cin => \U_VGA|Add7~51\,
	combout => \U_VGA|Add7~52_combout\,
	cout => \U_VGA|Add7~53\);

-- Location: LCCOMB_X46_Y38_N24
\U_VGA|Add7~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~54_combout\ = (\U_VGA|y_pos_p2\(28) & (!\U_VGA|Add7~53\)) # (!\U_VGA|y_pos_p2\(28) & ((\U_VGA|Add7~53\) # (GND)))
-- \U_VGA|Add7~55\ = CARRY((!\U_VGA|Add7~53\) # (!\U_VGA|y_pos_p2\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(28),
	datad => VCC,
	cin => \U_VGA|Add7~53\,
	combout => \U_VGA|Add7~54_combout\,
	cout => \U_VGA|Add7~55\);

-- Location: LCCOMB_X46_Y38_N26
\U_VGA|Add7~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~56_combout\ = (\U_VGA|y_pos_p2\(29) & (\U_VGA|Add7~55\ $ (GND))) # (!\U_VGA|y_pos_p2\(29) & (!\U_VGA|Add7~55\ & VCC))
-- \U_VGA|Add7~57\ = CARRY((\U_VGA|y_pos_p2\(29) & !\U_VGA|Add7~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(29),
	datad => VCC,
	cin => \U_VGA|Add7~55\,
	combout => \U_VGA|Add7~56_combout\,
	cout => \U_VGA|Add7~57\);

-- Location: LCCOMB_X47_Y38_N10
\U_VGA|LessThan13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan13~0_combout\ = (\U_VGA|Add7~16_combout\) # ((\U_VGA|Add7~20_combout\) # ((\U_VGA|Add7~18_combout\) # (\U_VGA|Add7~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add7~16_combout\,
	datab => \U_VGA|Add7~20_combout\,
	datac => \U_VGA|Add7~18_combout\,
	datad => \U_VGA|Add7~22_combout\,
	combout => \U_VGA|LessThan13~0_combout\);

-- Location: LCCOMB_X46_Y38_N12
\U_VGA|Add7~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~42_combout\ = (\U_VGA|y_pos_p2\(22) & (!\U_VGA|Add7~41\)) # (!\U_VGA|y_pos_p2\(22) & ((\U_VGA|Add7~41\) # (GND)))
-- \U_VGA|Add7~43\ = CARRY((!\U_VGA|Add7~41\) # (!\U_VGA|y_pos_p2\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(22),
	datad => VCC,
	cin => \U_VGA|Add7~41\,
	combout => \U_VGA|Add7~42_combout\,
	cout => \U_VGA|Add7~43\);

-- Location: LCCOMB_X46_Y38_N14
\U_VGA|Add7~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~44_combout\ = (\U_VGA|y_pos_p2\(23) & (\U_VGA|Add7~43\ $ (GND))) # (!\U_VGA|y_pos_p2\(23) & (!\U_VGA|Add7~43\ & VCC))
-- \U_VGA|Add7~45\ = CARRY((\U_VGA|y_pos_p2\(23) & !\U_VGA|Add7~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(23),
	datad => VCC,
	cin => \U_VGA|Add7~43\,
	combout => \U_VGA|Add7~44_combout\,
	cout => \U_VGA|Add7~45\);

-- Location: LCCOMB_X46_Y38_N6
\U_VGA|Add7~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~36_combout\ = (\U_VGA|y_pos_p2\(19) & (\U_VGA|Add7~35\ $ (GND))) # (!\U_VGA|y_pos_p2\(19) & (!\U_VGA|Add7~35\ & VCC))
-- \U_VGA|Add7~37\ = CARRY((\U_VGA|y_pos_p2\(19) & !\U_VGA|Add7~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(19),
	datad => VCC,
	cin => \U_VGA|Add7~35\,
	combout => \U_VGA|Add7~36_combout\,
	cout => \U_VGA|Add7~37\);

-- Location: LCCOMB_X46_Y38_N8
\U_VGA|Add7~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~38_combout\ = (\U_VGA|y_pos_p2\(20) & (!\U_VGA|Add7~37\)) # (!\U_VGA|y_pos_p2\(20) & ((\U_VGA|Add7~37\) # (GND)))
-- \U_VGA|Add7~39\ = CARRY((!\U_VGA|Add7~37\) # (!\U_VGA|y_pos_p2\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(20),
	datad => VCC,
	cin => \U_VGA|Add7~37\,
	combout => \U_VGA|Add7~38_combout\,
	cout => \U_VGA|Add7~39\);

-- Location: LCCOMB_X46_Y38_N10
\U_VGA|Add7~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~40_combout\ = (\U_VGA|y_pos_p2\(21) & (\U_VGA|Add7~39\ $ (GND))) # (!\U_VGA|y_pos_p2\(21) & (!\U_VGA|Add7~39\ & VCC))
-- \U_VGA|Add7~41\ = CARRY((\U_VGA|y_pos_p2\(21) & !\U_VGA|Add7~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(21),
	datad => VCC,
	cin => \U_VGA|Add7~39\,
	combout => \U_VGA|Add7~40_combout\,
	cout => \U_VGA|Add7~41\);

-- Location: LCCOMB_X46_Y38_N16
\U_VGA|Add7~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~46_combout\ = (\U_VGA|y_pos_p2\(24) & (!\U_VGA|Add7~45\)) # (!\U_VGA|y_pos_p2\(24) & ((\U_VGA|Add7~45\) # (GND)))
-- \U_VGA|Add7~47\ = CARRY((!\U_VGA|Add7~45\) # (!\U_VGA|y_pos_p2\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(24),
	datad => VCC,
	cin => \U_VGA|Add7~45\,
	combout => \U_VGA|Add7~46_combout\,
	cout => \U_VGA|Add7~47\);

-- Location: LCCOMB_X45_Y38_N28
\U_VGA|LessThan13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan13~3_combout\ = (\U_VGA|Add7~42_combout\) # ((\U_VGA|Add7~44_combout\) # ((\U_VGA|Add7~40_combout\) # (\U_VGA|Add7~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add7~42_combout\,
	datab => \U_VGA|Add7~44_combout\,
	datac => \U_VGA|Add7~40_combout\,
	datad => \U_VGA|Add7~46_combout\,
	combout => \U_VGA|LessThan13~3_combout\);

-- Location: LCCOMB_X46_Y39_N28
\U_VGA|Add7~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~26_combout\ = (\U_VGA|y_pos_p2\(14) & (!\U_VGA|Add7~25\)) # (!\U_VGA|y_pos_p2\(14) & ((\U_VGA|Add7~25\) # (GND)))
-- \U_VGA|Add7~27\ = CARRY((!\U_VGA|Add7~25\) # (!\U_VGA|y_pos_p2\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(14),
	datad => VCC,
	cin => \U_VGA|Add7~25\,
	combout => \U_VGA|Add7~26_combout\,
	cout => \U_VGA|Add7~27\);

-- Location: LCCOMB_X46_Y39_N30
\U_VGA|Add7~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~28_combout\ = (\U_VGA|y_pos_p2\(15) & (\U_VGA|Add7~27\ $ (GND))) # (!\U_VGA|y_pos_p2\(15) & (!\U_VGA|Add7~27\ & VCC))
-- \U_VGA|Add7~29\ = CARRY((\U_VGA|y_pos_p2\(15) & !\U_VGA|Add7~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(15),
	datad => VCC,
	cin => \U_VGA|Add7~27\,
	combout => \U_VGA|Add7~28_combout\,
	cout => \U_VGA|Add7~29\);

-- Location: LCCOMB_X46_Y38_N0
\U_VGA|Add7~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~30_combout\ = (\U_VGA|y_pos_p2\(16) & (!\U_VGA|Add7~29\)) # (!\U_VGA|y_pos_p2\(16) & ((\U_VGA|Add7~29\) # (GND)))
-- \U_VGA|Add7~31\ = CARRY((!\U_VGA|Add7~29\) # (!\U_VGA|y_pos_p2\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(16),
	datad => VCC,
	cin => \U_VGA|Add7~29\,
	combout => \U_VGA|Add7~30_combout\,
	cout => \U_VGA|Add7~31\);

-- Location: LCCOMB_X46_Y38_N2
\U_VGA|Add7~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~32_combout\ = (\U_VGA|y_pos_p2\(17) & (\U_VGA|Add7~31\ $ (GND))) # (!\U_VGA|y_pos_p2\(17) & (!\U_VGA|Add7~31\ & VCC))
-- \U_VGA|Add7~33\ = CARRY((\U_VGA|y_pos_p2\(17) & !\U_VGA|Add7~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(17),
	datad => VCC,
	cin => \U_VGA|Add7~31\,
	combout => \U_VGA|Add7~32_combout\,
	cout => \U_VGA|Add7~33\);

-- Location: LCCOMB_X45_Y38_N22
\U_VGA|LessThan13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan13~2_combout\ = (\U_VGA|Add7~34_combout\) # ((\U_VGA|Add7~32_combout\) # ((\U_VGA|Add7~38_combout\) # (\U_VGA|Add7~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add7~34_combout\,
	datab => \U_VGA|Add7~32_combout\,
	datac => \U_VGA|Add7~38_combout\,
	datad => \U_VGA|Add7~36_combout\,
	combout => \U_VGA|LessThan13~2_combout\);

-- Location: LCCOMB_X46_Y39_N24
\U_VGA|Add7~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~22_combout\ = (\U_VGA|y_pos_p2\(12) & (!\U_VGA|Add7~21\)) # (!\U_VGA|y_pos_p2\(12) & ((\U_VGA|Add7~21\) # (GND)))
-- \U_VGA|Add7~23\ = CARRY((!\U_VGA|Add7~21\) # (!\U_VGA|y_pos_p2\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(12),
	datad => VCC,
	cin => \U_VGA|Add7~21\,
	combout => \U_VGA|Add7~22_combout\,
	cout => \U_VGA|Add7~23\);

-- Location: LCCOMB_X46_Y39_N26
\U_VGA|Add7~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~24_combout\ = (\U_VGA|y_pos_p2\(13) & (\U_VGA|Add7~23\ $ (GND))) # (!\U_VGA|y_pos_p2\(13) & (!\U_VGA|Add7~23\ & VCC))
-- \U_VGA|Add7~25\ = CARRY((\U_VGA|y_pos_p2\(13) & !\U_VGA|Add7~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(13),
	datad => VCC,
	cin => \U_VGA|Add7~23\,
	combout => \U_VGA|Add7~24_combout\,
	cout => \U_VGA|Add7~25\);

-- Location: LCCOMB_X45_Y38_N16
\U_VGA|LessThan13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan13~1_combout\ = (\U_VGA|Add7~26_combout\) # ((\U_VGA|Add7~30_combout\) # ((\U_VGA|Add7~28_combout\) # (\U_VGA|Add7~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add7~26_combout\,
	datab => \U_VGA|Add7~30_combout\,
	datac => \U_VGA|Add7~28_combout\,
	datad => \U_VGA|Add7~24_combout\,
	combout => \U_VGA|LessThan13~1_combout\);

-- Location: LCCOMB_X45_Y38_N10
\U_VGA|LessThan13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan13~4_combout\ = (\U_VGA|LessThan13~0_combout\) # ((\U_VGA|LessThan13~3_combout\) # ((\U_VGA|LessThan13~2_combout\) # (\U_VGA|LessThan13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|LessThan13~0_combout\,
	datab => \U_VGA|LessThan13~3_combout\,
	datac => \U_VGA|LessThan13~2_combout\,
	datad => \U_VGA|LessThan13~1_combout\,
	combout => \U_VGA|LessThan13~4_combout\);

-- Location: LCCOMB_X46_Y38_N18
\U_VGA|Add7~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~48_combout\ = (\U_VGA|y_pos_p2\(25) & (\U_VGA|Add7~47\ $ (GND))) # (!\U_VGA|y_pos_p2\(25) & (!\U_VGA|Add7~47\ & VCC))
-- \U_VGA|Add7~49\ = CARRY((\U_VGA|y_pos_p2\(25) & !\U_VGA|Add7~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(25),
	datad => VCC,
	cin => \U_VGA|Add7~47\,
	combout => \U_VGA|Add7~48_combout\,
	cout => \U_VGA|Add7~49\);

-- Location: LCCOMB_X47_Y38_N4
\U_VGA|LessThan13~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan13~5_combout\ = (\U_VGA|Add7~54_combout\) # ((\U_VGA|Add7~50_combout\) # ((\U_VGA|Add7~48_combout\) # (\U_VGA|Add7~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add7~54_combout\,
	datab => \U_VGA|Add7~50_combout\,
	datac => \U_VGA|Add7~48_combout\,
	datad => \U_VGA|Add7~52_combout\,
	combout => \U_VGA|LessThan13~5_combout\);

-- Location: LCCOMB_X49_Y38_N10
\U_VGA|LessThan13~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan13~6_combout\ = (\U_VGA|Add7~56_combout\) # ((\U_VGA|Add7~58_combout\) # ((\U_VGA|LessThan13~4_combout\) # (\U_VGA|LessThan13~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add7~56_combout\,
	datab => \U_VGA|Add7~58_combout\,
	datac => \U_VGA|LessThan13~4_combout\,
	datad => \U_VGA|LessThan13~5_combout\,
	combout => \U_VGA|LessThan13~6_combout\);

-- Location: LCCOMB_X49_Y38_N12
\U_VGA|LessThan13~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan13~9_combout\ = (\U_VGA|LessThan13~6_combout\) # ((\U_VGA|Add7~14_combout\ & (\U_VGA|LessThan13~8_combout\ & \U_VGA|Add7~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add7~14_combout\,
	datab => \U_VGA|LessThan13~8_combout\,
	datac => \U_VGA|Add7~12_combout\,
	datad => \U_VGA|LessThan13~6_combout\,
	combout => \U_VGA|LessThan13~9_combout\);

-- Location: LCCOMB_X49_Y38_N18
\U_VGA|y_pos_p2[9]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p2[9]~2_combout\ = ((\switch[3]~input_o\ & ((\U_VGA|Add7~60_combout\) # (!\U_VGA|LessThan13~9_combout\)))) # (!\U_VGA|y_pos_p2[9]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \U_VGA|Add7~60_combout\,
	datac => \U_VGA|y_pos_p2[9]~1_combout\,
	datad => \U_VGA|LessThan13~9_combout\,
	combout => \U_VGA|y_pos_p2[9]~2_combout\);

-- Location: FF_X46_Y38_N1
\U_VGA|y_pos_p2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p2~32_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p2[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p2\(10));

-- Location: LCCOMB_X46_Y39_N22
\U_VGA|Add7~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~20_combout\ = (\U_VGA|y_pos_p2\(11) & (\U_VGA|Add7~19\ $ (GND))) # (!\U_VGA|y_pos_p2\(11) & (!\U_VGA|Add7~19\ & VCC))
-- \U_VGA|Add7~21\ = CARRY((\U_VGA|y_pos_p2\(11) & !\U_VGA|Add7~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(11),
	datad => VCC,
	cin => \U_VGA|Add7~19\,
	combout => \U_VGA|Add7~20_combout\,
	cout => \U_VGA|Add7~21\);

-- Location: LCCOMB_X44_Y39_N22
\U_VGA|Add6~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~20_combout\ = (\U_VGA|y_pos_p2\(11) & ((GND) # (!\U_VGA|Add6~19\))) # (!\U_VGA|y_pos_p2\(11) & (\U_VGA|Add6~19\ $ (GND)))
-- \U_VGA|Add6~21\ = CARRY((\U_VGA|y_pos_p2\(11)) # (!\U_VGA|Add6~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(11),
	datad => VCC,
	cin => \U_VGA|Add6~19\,
	combout => \U_VGA|Add6~20_combout\,
	cout => \U_VGA|Add6~21\);

-- Location: LCCOMB_X47_Y38_N6
\U_VGA|y_pos_p2~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p2~31_combout\ = (\switch[2]~input_o\ & ((\U_VGA|Add6~60_combout\ & (\U_VGA|Add7~20_combout\)) # (!\U_VGA|Add6~60_combout\ & ((\U_VGA|Add6~20_combout\))))) # (!\switch[2]~input_o\ & (\U_VGA|Add7~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[2]~input_o\,
	datab => \U_VGA|Add7~20_combout\,
	datac => \U_VGA|Add6~20_combout\,
	datad => \U_VGA|Add6~60_combout\,
	combout => \U_VGA|y_pos_p2~31_combout\);

-- Location: FF_X46_Y36_N9
\U_VGA|y_pos_p2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p2~31_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p2[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p2\(11));

-- Location: LCCOMB_X44_Y39_N24
\U_VGA|Add6~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~22_combout\ = (\U_VGA|y_pos_p2\(12) & (\U_VGA|Add6~21\ & VCC)) # (!\U_VGA|y_pos_p2\(12) & (!\U_VGA|Add6~21\))
-- \U_VGA|Add6~23\ = CARRY((!\U_VGA|y_pos_p2\(12) & !\U_VGA|Add6~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(12),
	datad => VCC,
	cin => \U_VGA|Add6~21\,
	combout => \U_VGA|Add6~22_combout\,
	cout => \U_VGA|Add6~23\);

-- Location: LCCOMB_X47_Y38_N22
\U_VGA|y_pos_p2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p2~30_combout\ = (\switch[2]~input_o\ & ((\U_VGA|Add6~60_combout\ & (\U_VGA|Add7~22_combout\)) # (!\U_VGA|Add6~60_combout\ & ((\U_VGA|Add6~22_combout\))))) # (!\switch[2]~input_o\ & (\U_VGA|Add7~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[2]~input_o\,
	datab => \U_VGA|Add7~22_combout\,
	datac => \U_VGA|Add6~22_combout\,
	datad => \U_VGA|Add6~60_combout\,
	combout => \U_VGA|y_pos_p2~30_combout\);

-- Location: FF_X47_Y38_N23
\U_VGA|y_pos_p2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|y_pos_p2~30_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	ena => \U_VGA|y_pos_p2[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p2\(12));

-- Location: LCCOMB_X44_Y39_N26
\U_VGA|Add6~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~24_combout\ = (\U_VGA|y_pos_p2\(13) & ((GND) # (!\U_VGA|Add6~23\))) # (!\U_VGA|y_pos_p2\(13) & (\U_VGA|Add6~23\ $ (GND)))
-- \U_VGA|Add6~25\ = CARRY((\U_VGA|y_pos_p2\(13)) # (!\U_VGA|Add6~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(13),
	datad => VCC,
	cin => \U_VGA|Add6~23\,
	combout => \U_VGA|Add6~24_combout\,
	cout => \U_VGA|Add6~25\);

-- Location: LCCOMB_X45_Y38_N24
\U_VGA|y_pos_p2~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p2~29_combout\ = (\switch[2]~input_o\ & ((\U_VGA|Add6~60_combout\ & ((\U_VGA|Add7~24_combout\))) # (!\U_VGA|Add6~60_combout\ & (\U_VGA|Add6~24_combout\)))) # (!\switch[2]~input_o\ & (((\U_VGA|Add7~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add6~24_combout\,
	datab => \switch[2]~input_o\,
	datac => \U_VGA|Add6~60_combout\,
	datad => \U_VGA|Add7~24_combout\,
	combout => \U_VGA|y_pos_p2~29_combout\);

-- Location: FF_X46_Y36_N27
\U_VGA|y_pos_p2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p2~29_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p2[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p2\(13));

-- Location: LCCOMB_X44_Y39_N28
\U_VGA|Add6~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~26_combout\ = (\U_VGA|y_pos_p2\(14) & (\U_VGA|Add6~25\ & VCC)) # (!\U_VGA|y_pos_p2\(14) & (!\U_VGA|Add6~25\))
-- \U_VGA|Add6~27\ = CARRY((!\U_VGA|y_pos_p2\(14) & !\U_VGA|Add6~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(14),
	datad => VCC,
	cin => \U_VGA|Add6~25\,
	combout => \U_VGA|Add6~26_combout\,
	cout => \U_VGA|Add6~27\);

-- Location: LCCOMB_X45_Y38_N30
\U_VGA|y_pos_p2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p2~28_combout\ = (\switch[2]~input_o\ & ((\U_VGA|Add6~60_combout\ & (\U_VGA|Add7~26_combout\)) # (!\U_VGA|Add6~60_combout\ & ((\U_VGA|Add6~26_combout\))))) # (!\switch[2]~input_o\ & (\U_VGA|Add7~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add7~26_combout\,
	datab => \switch[2]~input_o\,
	datac => \U_VGA|Add6~26_combout\,
	datad => \U_VGA|Add6~60_combout\,
	combout => \U_VGA|y_pos_p2~28_combout\);

-- Location: FF_X46_Y36_N7
\U_VGA|y_pos_p2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p2~28_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p2[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p2\(14));

-- Location: LCCOMB_X44_Y39_N30
\U_VGA|Add6~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~28_combout\ = (\U_VGA|y_pos_p2\(15) & ((GND) # (!\U_VGA|Add6~27\))) # (!\U_VGA|y_pos_p2\(15) & (\U_VGA|Add6~27\ $ (GND)))
-- \U_VGA|Add6~29\ = CARRY((\U_VGA|y_pos_p2\(15)) # (!\U_VGA|Add6~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(15),
	datad => VCC,
	cin => \U_VGA|Add6~27\,
	combout => \U_VGA|Add6~28_combout\,
	cout => \U_VGA|Add6~29\);

-- Location: LCCOMB_X45_Y38_N26
\U_VGA|y_pos_p2~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p2~27_combout\ = (\switch[2]~input_o\ & ((\U_VGA|Add6~60_combout\ & ((\U_VGA|Add7~28_combout\))) # (!\U_VGA|Add6~60_combout\ & (\U_VGA|Add6~28_combout\)))) # (!\switch[2]~input_o\ & (((\U_VGA|Add7~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add6~28_combout\,
	datab => \switch[2]~input_o\,
	datac => \U_VGA|Add7~28_combout\,
	datad => \U_VGA|Add6~60_combout\,
	combout => \U_VGA|y_pos_p2~27_combout\);

-- Location: FF_X45_Y38_N27
\U_VGA|y_pos_p2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|y_pos_p2~27_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	ena => \U_VGA|y_pos_p2[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p2\(15));

-- Location: LCCOMB_X44_Y38_N0
\U_VGA|Add6~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~30_combout\ = (\U_VGA|y_pos_p2\(16) & (\U_VGA|Add6~29\ & VCC)) # (!\U_VGA|y_pos_p2\(16) & (!\U_VGA|Add6~29\))
-- \U_VGA|Add6~31\ = CARRY((!\U_VGA|y_pos_p2\(16) & !\U_VGA|Add6~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(16),
	datad => VCC,
	cin => \U_VGA|Add6~29\,
	combout => \U_VGA|Add6~30_combout\,
	cout => \U_VGA|Add6~31\);

-- Location: LCCOMB_X45_Y38_N0
\U_VGA|y_pos_p2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p2~26_combout\ = (\U_VGA|Add6~60_combout\ & (((\U_VGA|Add7~30_combout\)))) # (!\U_VGA|Add6~60_combout\ & ((\switch[2]~input_o\ & (\U_VGA|Add6~30_combout\)) # (!\switch[2]~input_o\ & ((\U_VGA|Add7~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add6~30_combout\,
	datab => \U_VGA|Add6~60_combout\,
	datac => \U_VGA|Add7~30_combout\,
	datad => \switch[2]~input_o\,
	combout => \U_VGA|y_pos_p2~26_combout\);

-- Location: FF_X46_Y35_N31
\U_VGA|y_pos_p2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p2~26_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p2[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p2\(16));

-- Location: LCCOMB_X44_Y38_N2
\U_VGA|Add6~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~32_combout\ = (\U_VGA|y_pos_p2\(17) & ((GND) # (!\U_VGA|Add6~31\))) # (!\U_VGA|y_pos_p2\(17) & (\U_VGA|Add6~31\ $ (GND)))
-- \U_VGA|Add6~33\ = CARRY((\U_VGA|y_pos_p2\(17)) # (!\U_VGA|Add6~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(17),
	datad => VCC,
	cin => \U_VGA|Add6~31\,
	combout => \U_VGA|Add6~32_combout\,
	cout => \U_VGA|Add6~33\);

-- Location: LCCOMB_X45_Y38_N14
\U_VGA|y_pos_p2~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p2~25_combout\ = (\switch[2]~input_o\ & ((\U_VGA|Add6~60_combout\ & ((\U_VGA|Add7~32_combout\))) # (!\U_VGA|Add6~60_combout\ & (\U_VGA|Add6~32_combout\)))) # (!\switch[2]~input_o\ & (((\U_VGA|Add7~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add6~32_combout\,
	datab => \switch[2]~input_o\,
	datac => \U_VGA|Add7~32_combout\,
	datad => \U_VGA|Add6~60_combout\,
	combout => \U_VGA|y_pos_p2~25_combout\);

-- Location: FF_X46_Y35_N23
\U_VGA|y_pos_p2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p2~25_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p2[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p2\(17));

-- Location: LCCOMB_X46_Y38_N4
\U_VGA|Add7~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~34_combout\ = (\U_VGA|y_pos_p2\(18) & (!\U_VGA|Add7~33\)) # (!\U_VGA|y_pos_p2\(18) & ((\U_VGA|Add7~33\) # (GND)))
-- \U_VGA|Add7~35\ = CARRY((!\U_VGA|Add7~33\) # (!\U_VGA|y_pos_p2\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(18),
	datad => VCC,
	cin => \U_VGA|Add7~33\,
	combout => \U_VGA|Add7~34_combout\,
	cout => \U_VGA|Add7~35\);

-- Location: LCCOMB_X44_Y38_N4
\U_VGA|Add6~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~34_combout\ = (\U_VGA|y_pos_p2\(18) & (\U_VGA|Add6~33\ & VCC)) # (!\U_VGA|y_pos_p2\(18) & (!\U_VGA|Add6~33\))
-- \U_VGA|Add6~35\ = CARRY((!\U_VGA|y_pos_p2\(18) & !\U_VGA|Add6~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(18),
	datad => VCC,
	cin => \U_VGA|Add6~33\,
	combout => \U_VGA|Add6~34_combout\,
	cout => \U_VGA|Add6~35\);

-- Location: LCCOMB_X45_Y38_N4
\U_VGA|y_pos_p2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p2~24_combout\ = (\U_VGA|Add6~60_combout\ & (\U_VGA|Add7~34_combout\)) # (!\U_VGA|Add6~60_combout\ & ((\switch[2]~input_o\ & ((\U_VGA|Add6~34_combout\))) # (!\switch[2]~input_o\ & (\U_VGA|Add7~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add7~34_combout\,
	datab => \U_VGA|Add6~60_combout\,
	datac => \U_VGA|Add6~34_combout\,
	datad => \switch[2]~input_o\,
	combout => \U_VGA|y_pos_p2~24_combout\);

-- Location: FF_X46_Y35_N25
\U_VGA|y_pos_p2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p2~24_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p2[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p2\(18));

-- Location: LCCOMB_X44_Y38_N6
\U_VGA|Add6~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~36_combout\ = (\U_VGA|y_pos_p2\(19) & ((GND) # (!\U_VGA|Add6~35\))) # (!\U_VGA|y_pos_p2\(19) & (\U_VGA|Add6~35\ $ (GND)))
-- \U_VGA|Add6~37\ = CARRY((\U_VGA|y_pos_p2\(19)) # (!\U_VGA|Add6~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(19),
	datad => VCC,
	cin => \U_VGA|Add6~35\,
	combout => \U_VGA|Add6~36_combout\,
	cout => \U_VGA|Add6~37\);

-- Location: LCCOMB_X47_Y35_N26
\U_VGA|y_pos_p2~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p2~23_combout\ = (\switch[2]~input_o\ & ((\U_VGA|Add6~60_combout\ & (\U_VGA|Add7~36_combout\)) # (!\U_VGA|Add6~60_combout\ & ((\U_VGA|Add6~36_combout\))))) # (!\switch[2]~input_o\ & (\U_VGA|Add7~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add7~36_combout\,
	datab => \U_VGA|Add6~36_combout\,
	datac => \switch[2]~input_o\,
	datad => \U_VGA|Add6~60_combout\,
	combout => \U_VGA|y_pos_p2~23_combout\);

-- Location: FF_X47_Y35_N27
\U_VGA|y_pos_p2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|y_pos_p2~23_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	ena => \U_VGA|y_pos_p2[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p2\(19));

-- Location: LCCOMB_X44_Y38_N8
\U_VGA|Add6~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~38_combout\ = (\U_VGA|y_pos_p2\(20) & (\U_VGA|Add6~37\ & VCC)) # (!\U_VGA|y_pos_p2\(20) & (!\U_VGA|Add6~37\))
-- \U_VGA|Add6~39\ = CARRY((!\U_VGA|y_pos_p2\(20) & !\U_VGA|Add6~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(20),
	datad => VCC,
	cin => \U_VGA|Add6~37\,
	combout => \U_VGA|Add6~38_combout\,
	cout => \U_VGA|Add6~39\);

-- Location: LCCOMB_X47_Y35_N30
\U_VGA|y_pos_p2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p2~22_combout\ = (\switch[2]~input_o\ & ((\U_VGA|Add6~60_combout\ & ((\U_VGA|Add7~38_combout\))) # (!\U_VGA|Add6~60_combout\ & (\U_VGA|Add6~38_combout\)))) # (!\switch[2]~input_o\ & (((\U_VGA|Add7~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add6~38_combout\,
	datab => \U_VGA|Add7~38_combout\,
	datac => \switch[2]~input_o\,
	datad => \U_VGA|Add6~60_combout\,
	combout => \U_VGA|y_pos_p2~22_combout\);

-- Location: FF_X46_Y35_N5
\U_VGA|y_pos_p2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p2~22_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p2[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p2\(20));

-- Location: LCCOMB_X44_Y38_N10
\U_VGA|Add6~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~40_combout\ = (\U_VGA|y_pos_p2\(21) & ((GND) # (!\U_VGA|Add6~39\))) # (!\U_VGA|y_pos_p2\(21) & (\U_VGA|Add6~39\ $ (GND)))
-- \U_VGA|Add6~41\ = CARRY((\U_VGA|y_pos_p2\(21)) # (!\U_VGA|Add6~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(21),
	datad => VCC,
	cin => \U_VGA|Add6~39\,
	combout => \U_VGA|Add6~40_combout\,
	cout => \U_VGA|Add6~41\);

-- Location: LCCOMB_X45_Y38_N18
\U_VGA|y_pos_p2~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p2~21_combout\ = (\U_VGA|Add6~60_combout\ & (((\U_VGA|Add7~40_combout\)))) # (!\U_VGA|Add6~60_combout\ & ((\switch[2]~input_o\ & (\U_VGA|Add6~40_combout\)) # (!\switch[2]~input_o\ & ((\U_VGA|Add7~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add6~40_combout\,
	datab => \U_VGA|Add6~60_combout\,
	datac => \U_VGA|Add7~40_combout\,
	datad => \switch[2]~input_o\,
	combout => \U_VGA|y_pos_p2~21_combout\);

-- Location: FF_X46_Y35_N9
\U_VGA|y_pos_p2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p2~21_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p2[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p2\(21));

-- Location: LCCOMB_X44_Y38_N12
\U_VGA|Add6~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~42_combout\ = (\U_VGA|y_pos_p2\(22) & (\U_VGA|Add6~41\ & VCC)) # (!\U_VGA|y_pos_p2\(22) & (!\U_VGA|Add6~41\))
-- \U_VGA|Add6~43\ = CARRY((!\U_VGA|y_pos_p2\(22) & !\U_VGA|Add6~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(22),
	datad => VCC,
	cin => \U_VGA|Add6~41\,
	combout => \U_VGA|Add6~42_combout\,
	cout => \U_VGA|Add6~43\);

-- Location: LCCOMB_X47_Y35_N4
\U_VGA|y_pos_p2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p2~20_combout\ = (\switch[2]~input_o\ & ((\U_VGA|Add6~60_combout\ & (\U_VGA|Add7~42_combout\)) # (!\U_VGA|Add6~60_combout\ & ((\U_VGA|Add6~42_combout\))))) # (!\switch[2]~input_o\ & (\U_VGA|Add7~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add7~42_combout\,
	datab => \U_VGA|Add6~42_combout\,
	datac => \switch[2]~input_o\,
	datad => \U_VGA|Add6~60_combout\,
	combout => \U_VGA|y_pos_p2~20_combout\);

-- Location: FF_X47_Y35_N5
\U_VGA|y_pos_p2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|y_pos_p2~20_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	ena => \U_VGA|y_pos_p2[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p2\(22));

-- Location: LCCOMB_X44_Y38_N14
\U_VGA|Add6~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~44_combout\ = (\U_VGA|y_pos_p2\(23) & ((GND) # (!\U_VGA|Add6~43\))) # (!\U_VGA|y_pos_p2\(23) & (\U_VGA|Add6~43\ $ (GND)))
-- \U_VGA|Add6~45\ = CARRY((\U_VGA|y_pos_p2\(23)) # (!\U_VGA|Add6~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(23),
	datad => VCC,
	cin => \U_VGA|Add6~43\,
	combout => \U_VGA|Add6~44_combout\,
	cout => \U_VGA|Add6~45\);

-- Location: LCCOMB_X45_Y38_N20
\U_VGA|y_pos_p2~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p2~19_combout\ = (\switch[2]~input_o\ & ((\U_VGA|Add6~60_combout\ & ((\U_VGA|Add7~44_combout\))) # (!\U_VGA|Add6~60_combout\ & (\U_VGA|Add6~44_combout\)))) # (!\switch[2]~input_o\ & (((\U_VGA|Add7~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add6~44_combout\,
	datab => \switch[2]~input_o\,
	datac => \U_VGA|Add7~44_combout\,
	datad => \U_VGA|Add6~60_combout\,
	combout => \U_VGA|y_pos_p2~19_combout\);

-- Location: FF_X46_Y35_N21
\U_VGA|y_pos_p2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p2~19_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p2[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p2\(23));

-- Location: LCCOMB_X44_Y38_N16
\U_VGA|Add6~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~46_combout\ = (\U_VGA|y_pos_p2\(24) & (\U_VGA|Add6~45\ & VCC)) # (!\U_VGA|y_pos_p2\(24) & (!\U_VGA|Add6~45\))
-- \U_VGA|Add6~47\ = CARRY((!\U_VGA|y_pos_p2\(24) & !\U_VGA|Add6~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(24),
	datad => VCC,
	cin => \U_VGA|Add6~45\,
	combout => \U_VGA|Add6~46_combout\,
	cout => \U_VGA|Add6~47\);

-- Location: LCCOMB_X45_Y38_N2
\U_VGA|y_pos_p2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p2~18_combout\ = (\U_VGA|Add6~60_combout\ & (((\U_VGA|Add7~46_combout\)))) # (!\U_VGA|Add6~60_combout\ & ((\switch[2]~input_o\ & (\U_VGA|Add6~46_combout\)) # (!\switch[2]~input_o\ & ((\U_VGA|Add7~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add6~46_combout\,
	datab => \U_VGA|Add7~46_combout\,
	datac => \U_VGA|Add6~60_combout\,
	datad => \switch[2]~input_o\,
	combout => \U_VGA|y_pos_p2~18_combout\);

-- Location: FF_X46_Y35_N15
\U_VGA|y_pos_p2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p2~18_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p2[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p2\(24));

-- Location: LCCOMB_X44_Y38_N18
\U_VGA|Add6~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~48_combout\ = (\U_VGA|y_pos_p2\(25) & ((GND) # (!\U_VGA|Add6~47\))) # (!\U_VGA|y_pos_p2\(25) & (\U_VGA|Add6~47\ $ (GND)))
-- \U_VGA|Add6~49\ = CARRY((\U_VGA|y_pos_p2\(25)) # (!\U_VGA|Add6~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(25),
	datad => VCC,
	cin => \U_VGA|Add6~47\,
	combout => \U_VGA|Add6~48_combout\,
	cout => \U_VGA|Add6~49\);

-- Location: LCCOMB_X47_Y38_N8
\U_VGA|y_pos_p2~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p2~17_combout\ = (\switch[2]~input_o\ & ((\U_VGA|Add6~60_combout\ & ((\U_VGA|Add7~48_combout\))) # (!\U_VGA|Add6~60_combout\ & (\U_VGA|Add6~48_combout\)))) # (!\switch[2]~input_o\ & (((\U_VGA|Add7~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add6~48_combout\,
	datab => \switch[2]~input_o\,
	datac => \U_VGA|Add7~48_combout\,
	datad => \U_VGA|Add6~60_combout\,
	combout => \U_VGA|y_pos_p2~17_combout\);

-- Location: FF_X46_Y35_N1
\U_VGA|y_pos_p2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p2~17_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p2[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p2\(25));

-- Location: LCCOMB_X44_Y38_N20
\U_VGA|Add6~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~50_combout\ = (\U_VGA|y_pos_p2\(26) & (\U_VGA|Add6~49\ & VCC)) # (!\U_VGA|y_pos_p2\(26) & (!\U_VGA|Add6~49\))
-- \U_VGA|Add6~51\ = CARRY((!\U_VGA|y_pos_p2\(26) & !\U_VGA|Add6~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(26),
	datad => VCC,
	cin => \U_VGA|Add6~49\,
	combout => \U_VGA|Add6~50_combout\,
	cout => \U_VGA|Add6~51\);

-- Location: LCCOMB_X47_Y38_N14
\U_VGA|y_pos_p2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p2~16_combout\ = (\switch[2]~input_o\ & ((\U_VGA|Add6~60_combout\ & (\U_VGA|Add7~50_combout\)) # (!\U_VGA|Add6~60_combout\ & ((\U_VGA|Add6~50_combout\))))) # (!\switch[2]~input_o\ & (\U_VGA|Add7~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[2]~input_o\,
	datab => \U_VGA|Add7~50_combout\,
	datac => \U_VGA|Add6~50_combout\,
	datad => \U_VGA|Add6~60_combout\,
	combout => \U_VGA|y_pos_p2~16_combout\);

-- Location: FF_X46_Y35_N17
\U_VGA|y_pos_p2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p2~16_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p2[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p2\(26));

-- Location: LCCOMB_X44_Y38_N22
\U_VGA|Add6~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~52_combout\ = (\U_VGA|y_pos_p2\(27) & ((GND) # (!\U_VGA|Add6~51\))) # (!\U_VGA|y_pos_p2\(27) & (\U_VGA|Add6~51\ $ (GND)))
-- \U_VGA|Add6~53\ = CARRY((\U_VGA|y_pos_p2\(27)) # (!\U_VGA|Add6~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(27),
	datad => VCC,
	cin => \U_VGA|Add6~51\,
	combout => \U_VGA|Add6~52_combout\,
	cout => \U_VGA|Add6~53\);

-- Location: LCCOMB_X47_Y38_N12
\U_VGA|y_pos_p2~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p2~15_combout\ = (\switch[2]~input_o\ & ((\U_VGA|Add6~60_combout\ & ((\U_VGA|Add7~52_combout\))) # (!\U_VGA|Add6~60_combout\ & (\U_VGA|Add6~52_combout\)))) # (!\switch[2]~input_o\ & (((\U_VGA|Add7~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[2]~input_o\,
	datab => \U_VGA|Add6~60_combout\,
	datac => \U_VGA|Add6~52_combout\,
	datad => \U_VGA|Add7~52_combout\,
	combout => \U_VGA|y_pos_p2~15_combout\);

-- Location: FF_X46_Y35_N27
\U_VGA|y_pos_p2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p2~15_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p2[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p2\(27));

-- Location: LCCOMB_X44_Y38_N24
\U_VGA|Add6~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~54_combout\ = (\U_VGA|y_pos_p2\(28) & (\U_VGA|Add6~53\ & VCC)) # (!\U_VGA|y_pos_p2\(28) & (!\U_VGA|Add6~53\))
-- \U_VGA|Add6~55\ = CARRY((!\U_VGA|y_pos_p2\(28) & !\U_VGA|Add6~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(28),
	datad => VCC,
	cin => \U_VGA|Add6~53\,
	combout => \U_VGA|Add6~54_combout\,
	cout => \U_VGA|Add6~55\);

-- Location: LCCOMB_X47_Y38_N18
\U_VGA|y_pos_p2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p2~14_combout\ = (\switch[2]~input_o\ & ((\U_VGA|Add6~60_combout\ & ((\U_VGA|Add7~54_combout\))) # (!\U_VGA|Add6~60_combout\ & (\U_VGA|Add6~54_combout\)))) # (!\switch[2]~input_o\ & (((\U_VGA|Add7~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add6~54_combout\,
	datab => \switch[2]~input_o\,
	datac => \U_VGA|Add7~54_combout\,
	datad => \U_VGA|Add6~60_combout\,
	combout => \U_VGA|y_pos_p2~14_combout\);

-- Location: FF_X46_Y35_N19
\U_VGA|y_pos_p2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p2~14_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p2[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p2\(28));

-- Location: LCCOMB_X44_Y38_N26
\U_VGA|Add6~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~56_combout\ = (\U_VGA|y_pos_p2\(29) & ((GND) # (!\U_VGA|Add6~55\))) # (!\U_VGA|y_pos_p2\(29) & (\U_VGA|Add6~55\ $ (GND)))
-- \U_VGA|Add6~57\ = CARRY((\U_VGA|y_pos_p2\(29)) # (!\U_VGA|Add6~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(29),
	datad => VCC,
	cin => \U_VGA|Add6~55\,
	combout => \U_VGA|Add6~56_combout\,
	cout => \U_VGA|Add6~57\);

-- Location: LCCOMB_X45_Y38_N12
\U_VGA|y_pos_p2~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p2~13_combout\ = (\switch[2]~input_o\ & ((\U_VGA|Add6~60_combout\ & ((\U_VGA|Add7~56_combout\))) # (!\U_VGA|Add6~60_combout\ & (\U_VGA|Add6~56_combout\)))) # (!\switch[2]~input_o\ & (((\U_VGA|Add7~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add6~56_combout\,
	datab => \switch[2]~input_o\,
	datac => \U_VGA|Add6~60_combout\,
	datad => \U_VGA|Add7~56_combout\,
	combout => \U_VGA|y_pos_p2~13_combout\);

-- Location: FF_X46_Y35_N13
\U_VGA|y_pos_p2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p2~13_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p2[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p2\(29));

-- Location: LCCOMB_X46_Y38_N28
\U_VGA|Add7~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~58_combout\ = (\U_VGA|y_pos_p2\(30) & (!\U_VGA|Add7~57\)) # (!\U_VGA|y_pos_p2\(30) & ((\U_VGA|Add7~57\) # (GND)))
-- \U_VGA|Add7~59\ = CARRY((!\U_VGA|Add7~57\) # (!\U_VGA|y_pos_p2\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(30),
	datad => VCC,
	cin => \U_VGA|Add7~57\,
	combout => \U_VGA|Add7~58_combout\,
	cout => \U_VGA|Add7~59\);

-- Location: LCCOMB_X44_Y38_N28
\U_VGA|Add6~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~58_combout\ = (\U_VGA|y_pos_p2\(30) & (\U_VGA|Add6~57\ & VCC)) # (!\U_VGA|y_pos_p2\(30) & (!\U_VGA|Add6~57\))
-- \U_VGA|Add6~59\ = CARRY((!\U_VGA|y_pos_p2\(30) & !\U_VGA|Add6~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(30),
	datad => VCC,
	cin => \U_VGA|Add6~57\,
	combout => \U_VGA|Add6~58_combout\,
	cout => \U_VGA|Add6~59\);

-- Location: LCCOMB_X49_Y38_N28
\U_VGA|y_pos_p2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p2~12_combout\ = (\switch[2]~input_o\ & ((\U_VGA|Add6~60_combout\ & (\U_VGA|Add7~58_combout\)) # (!\U_VGA|Add6~60_combout\ & ((\U_VGA|Add6~58_combout\))))) # (!\switch[2]~input_o\ & (\U_VGA|Add7~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[2]~input_o\,
	datab => \U_VGA|Add7~58_combout\,
	datac => \U_VGA|Add6~58_combout\,
	datad => \U_VGA|Add6~60_combout\,
	combout => \U_VGA|y_pos_p2~12_combout\);

-- Location: FF_X46_Y35_N29
\U_VGA|y_pos_p2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p2~12_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p2[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p2\(30));

-- Location: LCCOMB_X46_Y38_N30
\U_VGA|Add7~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~60_combout\ = \U_VGA|y_pos_p2\(31) $ (!\U_VGA|Add7~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(31),
	cin => \U_VGA|Add7~59\,
	combout => \U_VGA|Add7~60_combout\);

-- Location: LCCOMB_X47_Y38_N20
\U_VGA|y_pos_p2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p2~11_combout\ = (\U_VGA|Add7~60_combout\ & ((\U_VGA|Add6~60_combout\) # (!\switch[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[2]~input_o\,
	datab => \U_VGA|Add6~60_combout\,
	datad => \U_VGA|Add7~60_combout\,
	combout => \U_VGA|y_pos_p2~11_combout\);

-- Location: FF_X46_Y38_N5
\U_VGA|y_pos_p2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p2~11_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p2[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p2\(31));

-- Location: LCCOMB_X44_Y38_N30
\U_VGA|Add6~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~60_combout\ = \U_VGA|Add6~59\ $ (\U_VGA|y_pos_p2\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_VGA|y_pos_p2\(31),
	cin => \U_VGA|Add6~59\,
	combout => \U_VGA|Add6~60_combout\);

-- Location: LCCOMB_X47_Y38_N26
\U_VGA|paddle2_move~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|paddle2_move~0_combout\ = (!\U_VGA|Add6~60_combout\ & \switch[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|Add6~60_combout\,
	datad => \switch[2]~input_o\,
	combout => \U_VGA|paddle2_move~0_combout\);

-- Location: LCCOMB_X44_Y39_N12
\U_VGA|Add6~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~10_combout\ = (\U_VGA|y_pos_p2\(6) & (!\U_VGA|Add6~9\)) # (!\U_VGA|y_pos_p2\(6) & (\U_VGA|Add6~9\ & VCC))
-- \U_VGA|Add6~11\ = CARRY((\U_VGA|y_pos_p2\(6) & !\U_VGA|Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(6),
	datad => VCC,
	cin => \U_VGA|Add6~9\,
	combout => \U_VGA|Add6~10_combout\,
	cout => \U_VGA|Add6~11\);

-- Location: LCCOMB_X47_Y38_N30
\U_VGA|y_pos_p2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p2~5_combout\ = (\button_n[0]~input_o\ & ((\U_VGA|paddle2_move~0_combout\ & ((!\U_VGA|Add6~10_combout\))) # (!\U_VGA|paddle2_move~0_combout\ & (!\U_VGA|Add7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|paddle2_move~0_combout\,
	datab => \U_VGA|Add7~10_combout\,
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add6~10_combout\,
	combout => \U_VGA|y_pos_p2~5_combout\);

-- Location: FF_X47_Y38_N31
\U_VGA|y_pos_p2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|y_pos_p2~5_combout\,
	ena => \U_VGA|y_pos_p2[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p2\(6));

-- Location: LCCOMB_X44_Y39_N14
\U_VGA|Add6~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~12_combout\ = (\U_VGA|y_pos_p2\(7) & (\U_VGA|Add6~11\ $ (GND))) # (!\U_VGA|y_pos_p2\(7) & ((GND) # (!\U_VGA|Add6~11\)))
-- \U_VGA|Add6~13\ = CARRY((!\U_VGA|Add6~11\) # (!\U_VGA|y_pos_p2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(7),
	datad => VCC,
	cin => \U_VGA|Add6~11\,
	combout => \U_VGA|Add6~12_combout\,
	cout => \U_VGA|Add6~13\);

-- Location: LCCOMB_X47_Y38_N16
\U_VGA|y_pos_p2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p2~4_combout\ = (\button_n[0]~input_o\ & ((\U_VGA|paddle2_move~0_combout\ & ((!\U_VGA|Add6~12_combout\))) # (!\U_VGA|paddle2_move~0_combout\ & (!\U_VGA|Add7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add7~12_combout\,
	datab => \button_n[0]~input_o\,
	datac => \U_VGA|paddle2_move~0_combout\,
	datad => \U_VGA|Add6~12_combout\,
	combout => \U_VGA|y_pos_p2~4_combout\);

-- Location: FF_X47_Y38_N17
\U_VGA|y_pos_p2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|y_pos_p2~4_combout\,
	ena => \U_VGA|y_pos_p2[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p2\(7));

-- Location: LCCOMB_X47_Y38_N28
\U_VGA|y_pos_p2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p2~3_combout\ = (\U_VGA|Add6~60_combout\ & (((\U_VGA|Add7~14_combout\)))) # (!\U_VGA|Add6~60_combout\ & ((\switch[2]~input_o\ & (\U_VGA|Add6~14_combout\)) # (!\switch[2]~input_o\ & ((\U_VGA|Add7~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add6~14_combout\,
	datab => \U_VGA|Add6~60_combout\,
	datac => \U_VGA|Add7~14_combout\,
	datad => \switch[2]~input_o\,
	combout => \U_VGA|y_pos_p2~3_combout\);

-- Location: FF_X47_Y38_N29
\U_VGA|y_pos_p2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|y_pos_p2~3_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	ena => \U_VGA|y_pos_p2[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p2\(8));

-- Location: LCCOMB_X47_Y38_N24
\U_VGA|y_pos_p2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p2~0_combout\ = (\switch[2]~input_o\ & ((\U_VGA|Add6~60_combout\ & (\U_VGA|Add7~16_combout\)) # (!\U_VGA|Add6~60_combout\ & ((\U_VGA|Add6~16_combout\))))) # (!\switch[2]~input_o\ & (\U_VGA|Add7~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add7~16_combout\,
	datab => \switch[2]~input_o\,
	datac => \U_VGA|Add6~16_combout\,
	datad => \U_VGA|Add6~60_combout\,
	combout => \U_VGA|y_pos_p2~0_combout\);

-- Location: FF_X46_Y36_N29
\U_VGA|y_pos_p2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p2~0_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p2[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p2\(9));

-- Location: LCCOMB_X46_Y36_N2
\U_VGA|Add13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add13~0_combout\ = \U_VGA|y_pos_p2\(1) $ (VCC)
-- \U_VGA|Add13~1\ = CARRY(\U_VGA|y_pos_p2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(1),
	datad => VCC,
	combout => \U_VGA|Add13~0_combout\,
	cout => \U_VGA|Add13~1\);

-- Location: LCCOMB_X46_Y36_N4
\U_VGA|Add13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add13~2_combout\ = (\U_VGA|y_pos_p2\(2) & (!\U_VGA|Add13~1\)) # (!\U_VGA|y_pos_p2\(2) & ((\U_VGA|Add13~1\) # (GND)))
-- \U_VGA|Add13~3\ = CARRY((!\U_VGA|Add13~1\) # (!\U_VGA|y_pos_p2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(2),
	datad => VCC,
	cin => \U_VGA|Add13~1\,
	combout => \U_VGA|Add13~2_combout\,
	cout => \U_VGA|Add13~3\);

-- Location: LCCOMB_X46_Y36_N6
\U_VGA|Add13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add13~4_combout\ = (\U_VGA|y_pos_p2\(3) & (!\U_VGA|Add13~3\ & VCC)) # (!\U_VGA|y_pos_p2\(3) & (\U_VGA|Add13~3\ $ (GND)))
-- \U_VGA|Add13~5\ = CARRY((!\U_VGA|y_pos_p2\(3) & !\U_VGA|Add13~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(3),
	datad => VCC,
	cin => \U_VGA|Add13~3\,
	combout => \U_VGA|Add13~4_combout\,
	cout => \U_VGA|Add13~5\);

-- Location: LCCOMB_X46_Y36_N8
\U_VGA|Add13~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add13~6_combout\ = (\U_VGA|y_pos_p2\(4) & (\U_VGA|Add13~5\ & VCC)) # (!\U_VGA|y_pos_p2\(4) & (!\U_VGA|Add13~5\))
-- \U_VGA|Add13~7\ = CARRY((!\U_VGA|y_pos_p2\(4) & !\U_VGA|Add13~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(4),
	datad => VCC,
	cin => \U_VGA|Add13~5\,
	combout => \U_VGA|Add13~6_combout\,
	cout => \U_VGA|Add13~7\);

-- Location: LCCOMB_X46_Y36_N10
\U_VGA|Add13~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add13~8_combout\ = (\U_VGA|y_pos_p2\(5) & ((GND) # (!\U_VGA|Add13~7\))) # (!\U_VGA|y_pos_p2\(5) & (\U_VGA|Add13~7\ $ (GND)))
-- \U_VGA|Add13~9\ = CARRY((\U_VGA|y_pos_p2\(5)) # (!\U_VGA|Add13~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(5),
	datad => VCC,
	cin => \U_VGA|Add13~7\,
	combout => \U_VGA|Add13~8_combout\,
	cout => \U_VGA|Add13~9\);

-- Location: LCCOMB_X46_Y36_N12
\U_VGA|Add13~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add13~10_combout\ = (\U_VGA|y_pos_p2\(6) & ((\U_VGA|Add13~9\) # (GND))) # (!\U_VGA|y_pos_p2\(6) & (!\U_VGA|Add13~9\))
-- \U_VGA|Add13~11\ = CARRY((\U_VGA|y_pos_p2\(6)) # (!\U_VGA|Add13~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(6),
	datad => VCC,
	cin => \U_VGA|Add13~9\,
	combout => \U_VGA|Add13~10_combout\,
	cout => \U_VGA|Add13~11\);

-- Location: LCCOMB_X46_Y36_N14
\U_VGA|Add13~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add13~12_combout\ = (\U_VGA|y_pos_p2\(7) & (!\U_VGA|Add13~11\ & VCC)) # (!\U_VGA|y_pos_p2\(7) & (\U_VGA|Add13~11\ $ (GND)))
-- \U_VGA|Add13~13\ = CARRY((!\U_VGA|y_pos_p2\(7) & !\U_VGA|Add13~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(7),
	datad => VCC,
	cin => \U_VGA|Add13~11\,
	combout => \U_VGA|Add13~12_combout\,
	cout => \U_VGA|Add13~13\);

-- Location: LCCOMB_X46_Y36_N16
\U_VGA|Add13~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add13~14_combout\ = (\U_VGA|y_pos_p2\(8) & (!\U_VGA|Add13~13\)) # (!\U_VGA|y_pos_p2\(8) & ((\U_VGA|Add13~13\) # (GND)))
-- \U_VGA|Add13~15\ = CARRY((!\U_VGA|Add13~13\) # (!\U_VGA|y_pos_p2\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(8),
	datad => VCC,
	cin => \U_VGA|Add13~13\,
	combout => \U_VGA|Add13~14_combout\,
	cout => \U_VGA|Add13~15\);

-- Location: LCCOMB_X46_Y36_N18
\U_VGA|Add13~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add13~16_combout\ = (\U_VGA|y_pos_p2\(9) & (\U_VGA|Add13~15\ $ (GND))) # (!\U_VGA|y_pos_p2\(9) & (!\U_VGA|Add13~15\ & VCC))
-- \U_VGA|Add13~17\ = CARRY((\U_VGA|y_pos_p2\(9) & !\U_VGA|Add13~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(9),
	datad => VCC,
	cin => \U_VGA|Add13~15\,
	combout => \U_VGA|Add13~16_combout\,
	cout => \U_VGA|Add13~17\);

-- Location: LCCOMB_X45_Y32_N12
\U_VGA|LessThan25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan25~1_cout\ = CARRY(\U_VGA|sync|v_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(0),
	datad => VCC,
	cout => \U_VGA|LessThan25~1_cout\);

-- Location: LCCOMB_X45_Y32_N14
\U_VGA|LessThan25~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan25~3_cout\ = CARRY((\U_VGA|sync|v_counter\(1) & (\U_VGA|Add13~0_combout\ & !\U_VGA|LessThan25~1_cout\)) # (!\U_VGA|sync|v_counter\(1) & ((\U_VGA|Add13~0_combout\) # (!\U_VGA|LessThan25~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(1),
	datab => \U_VGA|Add13~0_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan25~1_cout\,
	cout => \U_VGA|LessThan25~3_cout\);

-- Location: LCCOMB_X45_Y32_N16
\U_VGA|LessThan25~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan25~5_cout\ = CARRY((\U_VGA|Add13~2_combout\ & (\U_VGA|sync|v_counter\(2) & !\U_VGA|LessThan25~3_cout\)) # (!\U_VGA|Add13~2_combout\ & ((\U_VGA|sync|v_counter\(2)) # (!\U_VGA|LessThan25~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add13~2_combout\,
	datab => \U_VGA|sync|v_counter\(2),
	datad => VCC,
	cin => \U_VGA|LessThan25~3_cout\,
	cout => \U_VGA|LessThan25~5_cout\);

-- Location: LCCOMB_X45_Y32_N18
\U_VGA|LessThan25~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan25~7_cout\ = CARRY((\U_VGA|Add13~4_combout\ & ((!\U_VGA|LessThan25~5_cout\) # (!\U_VGA|sync|v_counter\(3)))) # (!\U_VGA|Add13~4_combout\ & (!\U_VGA|sync|v_counter\(3) & !\U_VGA|LessThan25~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add13~4_combout\,
	datab => \U_VGA|sync|v_counter\(3),
	datad => VCC,
	cin => \U_VGA|LessThan25~5_cout\,
	cout => \U_VGA|LessThan25~7_cout\);

-- Location: LCCOMB_X45_Y32_N20
\U_VGA|LessThan25~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan25~9_cout\ = CARRY((\U_VGA|sync|v_counter\(4) & ((!\U_VGA|LessThan25~7_cout\) # (!\U_VGA|Add13~6_combout\))) # (!\U_VGA|sync|v_counter\(4) & (!\U_VGA|Add13~6_combout\ & !\U_VGA|LessThan25~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(4),
	datab => \U_VGA|Add13~6_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan25~7_cout\,
	cout => \U_VGA|LessThan25~9_cout\);

-- Location: LCCOMB_X45_Y32_N22
\U_VGA|LessThan25~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan25~11_cout\ = CARRY((\U_VGA|sync|v_counter\(5) & (\U_VGA|Add13~8_combout\ & !\U_VGA|LessThan25~9_cout\)) # (!\U_VGA|sync|v_counter\(5) & ((\U_VGA|Add13~8_combout\) # (!\U_VGA|LessThan25~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(5),
	datab => \U_VGA|Add13~8_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan25~9_cout\,
	cout => \U_VGA|LessThan25~11_cout\);

-- Location: LCCOMB_X45_Y32_N24
\U_VGA|LessThan25~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan25~13_cout\ = CARRY((\U_VGA|Add13~10_combout\ & (\U_VGA|sync|v_counter\(6) & !\U_VGA|LessThan25~11_cout\)) # (!\U_VGA|Add13~10_combout\ & ((\U_VGA|sync|v_counter\(6)) # (!\U_VGA|LessThan25~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add13~10_combout\,
	datab => \U_VGA|sync|v_counter\(6),
	datad => VCC,
	cin => \U_VGA|LessThan25~11_cout\,
	cout => \U_VGA|LessThan25~13_cout\);

-- Location: LCCOMB_X45_Y32_N26
\U_VGA|LessThan25~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan25~15_cout\ = CARRY((\U_VGA|sync|v_counter\(7) & (\U_VGA|Add13~12_combout\ & !\U_VGA|LessThan25~13_cout\)) # (!\U_VGA|sync|v_counter\(7) & ((\U_VGA|Add13~12_combout\) # (!\U_VGA|LessThan25~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(7),
	datab => \U_VGA|Add13~12_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan25~13_cout\,
	cout => \U_VGA|LessThan25~15_cout\);

-- Location: LCCOMB_X45_Y32_N28
\U_VGA|LessThan25~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan25~17_cout\ = CARRY((\U_VGA|sync|v_counter\(8) & ((!\U_VGA|LessThan25~15_cout\) # (!\U_VGA|Add13~14_combout\))) # (!\U_VGA|sync|v_counter\(8) & (!\U_VGA|Add13~14_combout\ & !\U_VGA|LessThan25~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(8),
	datab => \U_VGA|Add13~14_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan25~15_cout\,
	cout => \U_VGA|LessThan25~17_cout\);

-- Location: LCCOMB_X45_Y32_N30
\U_VGA|LessThan25~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan25~18_combout\ = (\U_VGA|Add13~16_combout\ & (\U_VGA|LessThan25~17_cout\ & \U_VGA|sync|v_counter\(9))) # (!\U_VGA|Add13~16_combout\ & ((\U_VGA|LessThan25~17_cout\) # (\U_VGA|sync|v_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add13~16_combout\,
	datad => \U_VGA|sync|v_counter\(9),
	cin => \U_VGA|LessThan25~17_cout\,
	combout => \U_VGA|LessThan25~18_combout\);

-- Location: LCCOMB_X47_Y35_N8
\U_VGA|LessThan24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan24~1_cout\ = CARRY((\U_VGA|y_pos_p2\(1) & !\U_VGA|sync|v_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(1),
	datab => \U_VGA|sync|v_counter\(1),
	datad => VCC,
	cout => \U_VGA|LessThan24~1_cout\);

-- Location: LCCOMB_X47_Y35_N10
\U_VGA|LessThan24~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan24~3_cout\ = CARRY((\U_VGA|sync|v_counter\(2) & ((!\U_VGA|LessThan24~1_cout\) # (!\U_VGA|y_pos_p2\(2)))) # (!\U_VGA|sync|v_counter\(2) & (!\U_VGA|y_pos_p2\(2) & !\U_VGA|LessThan24~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(2),
	datab => \U_VGA|y_pos_p2\(2),
	datad => VCC,
	cin => \U_VGA|LessThan24~1_cout\,
	cout => \U_VGA|LessThan24~3_cout\);

-- Location: LCCOMB_X47_Y35_N12
\U_VGA|LessThan24~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan24~5_cout\ = CARRY((\U_VGA|sync|v_counter\(3) & (!\U_VGA|y_pos_p2\(3) & !\U_VGA|LessThan24~3_cout\)) # (!\U_VGA|sync|v_counter\(3) & ((!\U_VGA|LessThan24~3_cout\) # (!\U_VGA|y_pos_p2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(3),
	datab => \U_VGA|y_pos_p2\(3),
	datad => VCC,
	cin => \U_VGA|LessThan24~3_cout\,
	cout => \U_VGA|LessThan24~5_cout\);

-- Location: LCCOMB_X47_Y35_N14
\U_VGA|LessThan24~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan24~7_cout\ = CARRY((\U_VGA|y_pos_p2\(4) & (\U_VGA|sync|v_counter\(4) & !\U_VGA|LessThan24~5_cout\)) # (!\U_VGA|y_pos_p2\(4) & ((\U_VGA|sync|v_counter\(4)) # (!\U_VGA|LessThan24~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(4),
	datab => \U_VGA|sync|v_counter\(4),
	datad => VCC,
	cin => \U_VGA|LessThan24~5_cout\,
	cout => \U_VGA|LessThan24~7_cout\);

-- Location: LCCOMB_X47_Y35_N16
\U_VGA|LessThan24~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan24~9_cout\ = CARRY((\U_VGA|sync|v_counter\(5) & (\U_VGA|y_pos_p2\(5) & !\U_VGA|LessThan24~7_cout\)) # (!\U_VGA|sync|v_counter\(5) & ((\U_VGA|y_pos_p2\(5)) # (!\U_VGA|LessThan24~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(5),
	datab => \U_VGA|y_pos_p2\(5),
	datad => VCC,
	cin => \U_VGA|LessThan24~7_cout\,
	cout => \U_VGA|LessThan24~9_cout\);

-- Location: LCCOMB_X47_Y35_N18
\U_VGA|LessThan24~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan24~11_cout\ = CARRY((\U_VGA|y_pos_p2\(6) & ((\U_VGA|sync|v_counter\(6)) # (!\U_VGA|LessThan24~9_cout\))) # (!\U_VGA|y_pos_p2\(6) & (\U_VGA|sync|v_counter\(6) & !\U_VGA|LessThan24~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(6),
	datab => \U_VGA|sync|v_counter\(6),
	datad => VCC,
	cin => \U_VGA|LessThan24~9_cout\,
	cout => \U_VGA|LessThan24~11_cout\);

-- Location: LCCOMB_X47_Y35_N20
\U_VGA|LessThan24~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan24~13_cout\ = CARRY((\U_VGA|sync|v_counter\(7) & (!\U_VGA|y_pos_p2\(7) & !\U_VGA|LessThan24~11_cout\)) # (!\U_VGA|sync|v_counter\(7) & ((!\U_VGA|LessThan24~11_cout\) # (!\U_VGA|y_pos_p2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(7),
	datab => \U_VGA|y_pos_p2\(7),
	datad => VCC,
	cin => \U_VGA|LessThan24~11_cout\,
	cout => \U_VGA|LessThan24~13_cout\);

-- Location: LCCOMB_X47_Y35_N22
\U_VGA|LessThan24~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan24~15_cout\ = CARRY((\U_VGA|sync|v_counter\(8) & ((!\U_VGA|LessThan24~13_cout\) # (!\U_VGA|y_pos_p2\(8)))) # (!\U_VGA|sync|v_counter\(8) & (!\U_VGA|y_pos_p2\(8) & !\U_VGA|LessThan24~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(8),
	datab => \U_VGA|y_pos_p2\(8),
	datad => VCC,
	cin => \U_VGA|LessThan24~13_cout\,
	cout => \U_VGA|LessThan24~15_cout\);

-- Location: LCCOMB_X47_Y35_N24
\U_VGA|LessThan24~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan24~16_combout\ = (\U_VGA|sync|v_counter\(9) & (!\U_VGA|LessThan24~15_cout\ & \U_VGA|y_pos_p2\(9))) # (!\U_VGA|sync|v_counter\(9) & ((\U_VGA|y_pos_p2\(9)) # (!\U_VGA|LessThan24~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(9),
	datad => \U_VGA|y_pos_p2\(9),
	cin => \U_VGA|LessThan24~15_cout\,
	combout => \U_VGA|LessThan24~16_combout\);

-- Location: LCCOMB_X44_Y32_N14
\U_VGA|red~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|red~1_combout\ = (\U_VGA|sync|h_sync~3_combout\ & (\U_VGA|red~0_combout\ & (!\U_VGA|LessThan25~18_combout\ & !\U_VGA|LessThan24~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_sync~3_combout\,
	datab => \U_VGA|red~0_combout\,
	datac => \U_VGA|LessThan25~18_combout\,
	datad => \U_VGA|LessThan24~16_combout\,
	combout => \U_VGA|red~1_combout\);

-- Location: LCCOMB_X43_Y32_N14
\U_VGA|red~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|red~4_combout\ = (!\U_VGA|sync|h_counter\(9) & (!\U_VGA|sync|h_counter\(8) & !\U_VGA|sync|h_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(9),
	datab => \U_VGA|sync|h_counter\(8),
	datac => \U_VGA|sync|h_counter\(4),
	combout => \U_VGA|red~4_combout\);

-- Location: LCCOMB_X42_Y32_N28
\U_VGA|red~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|red~2_combout\ = ((!\U_VGA|sync|h_counter\(2) & ((!\U_VGA|sync|h_counter\(0)) # (!\U_VGA|sync|h_counter\(1))))) # (!\U_VGA|sync|h_counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(2),
	datab => \U_VGA|sync|h_counter\(1),
	datac => \U_VGA|sync|h_counter\(3),
	datad => \U_VGA|sync|h_counter\(0),
	combout => \U_VGA|red~2_combout\);

-- Location: LCCOMB_X42_Y32_N4
\U_VGA|red~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|red~3_combout\ = (!\U_VGA|sync|h_counter\(7) & (!\U_VGA|sync|h_counter\(6) & (!\U_VGA|sync|h_counter\(5) & \U_VGA|red~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(7),
	datab => \U_VGA|sync|h_counter\(6),
	datac => \U_VGA|sync|h_counter\(5),
	datad => \U_VGA|red~2_combout\,
	combout => \U_VGA|red~3_combout\);

-- Location: IOIBUF_X51_Y54_N29
\switch[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(0),
	o => \switch[0]~input_o\);

-- Location: LCCOMB_X46_Y34_N6
\U_VGA|paddle1_move~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|paddle1_move~0_combout\ = (\switch[0]~input_o\ & !\U_VGA|Add4~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \switch[0]~input_o\,
	datad => \U_VGA|Add4~60_combout\,
	combout => \U_VGA|paddle1_move~0_combout\);

-- Location: LCCOMB_X47_Y34_N2
\U_VGA|Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~0_combout\ = \U_VGA|y_pos_p1\(1) $ (VCC)
-- \U_VGA|Add4~1\ = CARRY(\U_VGA|y_pos_p1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(1),
	datad => VCC,
	combout => \U_VGA|Add4~0_combout\,
	cout => \U_VGA|Add4~1\);

-- Location: LCCOMB_X47_Y37_N2
\U_VGA|Add5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~0_combout\ = \U_VGA|y_pos_p1\(1) $ (VCC)
-- \U_VGA|Add5~1\ = CARRY(\U_VGA|y_pos_p1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(1),
	datad => VCC,
	combout => \U_VGA|Add5~0_combout\,
	cout => \U_VGA|Add5~1\);

-- Location: LCCOMB_X46_Y34_N4
\U_VGA|y_pos_p1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~10_combout\ = (\switch[0]~input_o\ & ((\U_VGA|Add4~60_combout\ & ((\U_VGA|Add5~0_combout\))) # (!\U_VGA|Add4~60_combout\ & (\U_VGA|Add4~0_combout\)))) # (!\switch[0]~input_o\ & (((\U_VGA|Add5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add4~0_combout\,
	datab => \U_VGA|Add5~0_combout\,
	datac => \switch[0]~input_o\,
	datad => \U_VGA|Add4~60_combout\,
	combout => \U_VGA|y_pos_p1~10_combout\);

-- Location: IOIBUF_X51_Y54_N22
\switch[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(1),
	o => \switch[1]~input_o\);

-- Location: LCCOMB_X43_Y38_N24
\U_VGA|y_pos_p1[24]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1[24]~1_combout\ = (\button_n[0]~input_o\ & ((\U_VGA|Add4~60_combout\) # (!\switch[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datac => \switch[0]~input_o\,
	datad => \U_VGA|Add4~60_combout\,
	combout => \U_VGA|y_pos_p1[24]~1_combout\);

-- Location: LCCOMB_X47_Y37_N10
\U_VGA|Add5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~8_combout\ = (\U_VGA|y_pos_p1\(5) & (\U_VGA|Add5~7\ $ (GND))) # (!\U_VGA|y_pos_p1\(5) & (!\U_VGA|Add5~7\ & VCC))
-- \U_VGA|Add5~9\ = CARRY((\U_VGA|y_pos_p1\(5) & !\U_VGA|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(5),
	datad => VCC,
	cin => \U_VGA|Add5~7\,
	combout => \U_VGA|Add5~8_combout\,
	cout => \U_VGA|Add5~9\);

-- Location: LCCOMB_X47_Y37_N12
\U_VGA|Add5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~10_combout\ = (\U_VGA|y_pos_p1\(6) & ((\U_VGA|Add5~9\) # (GND))) # (!\U_VGA|y_pos_p1\(6) & (!\U_VGA|Add5~9\))
-- \U_VGA|Add5~11\ = CARRY((\U_VGA|y_pos_p1\(6)) # (!\U_VGA|Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(6),
	datad => VCC,
	cin => \U_VGA|Add5~9\,
	combout => \U_VGA|Add5~10_combout\,
	cout => \U_VGA|Add5~11\);

-- Location: LCCOMB_X47_Y37_N4
\U_VGA|Add5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~2_combout\ = (\U_VGA|y_pos_p1\(2) & (!\U_VGA|Add5~1\)) # (!\U_VGA|y_pos_p1\(2) & ((\U_VGA|Add5~1\) # (GND)))
-- \U_VGA|Add5~3\ = CARRY((!\U_VGA|Add5~1\) # (!\U_VGA|y_pos_p1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(2),
	datad => VCC,
	cin => \U_VGA|Add5~1\,
	combout => \U_VGA|Add5~2_combout\,
	cout => \U_VGA|Add5~3\);

-- Location: LCCOMB_X47_Y37_N6
\U_VGA|Add5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~4_combout\ = (\U_VGA|y_pos_p1\(3) & (!\U_VGA|Add5~3\ & VCC)) # (!\U_VGA|y_pos_p1\(3) & (\U_VGA|Add5~3\ $ (GND)))
-- \U_VGA|Add5~5\ = CARRY((!\U_VGA|y_pos_p1\(3) & !\U_VGA|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(3),
	datad => VCC,
	cin => \U_VGA|Add5~3\,
	combout => \U_VGA|Add5~4_combout\,
	cout => \U_VGA|Add5~5\);

-- Location: LCCOMB_X47_Y37_N0
\U_VGA|LessThan11~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan11~7_combout\ = (\U_VGA|Add5~0_combout\ & (\U_VGA|Add5~2_combout\ & \U_VGA|Add5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|Add5~0_combout\,
	datac => \U_VGA|Add5~2_combout\,
	datad => \U_VGA|Add5~4_combout\,
	combout => \U_VGA|LessThan11~7_combout\);

-- Location: LCCOMB_X46_Y37_N10
\U_VGA|LessThan11~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan11~8_combout\ = (\U_VGA|Add5~10_combout\) # ((\U_VGA|Add5~8_combout\ & ((\U_VGA|LessThan11~7_combout\) # (\U_VGA|Add5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add5~10_combout\,
	datab => \U_VGA|Add5~8_combout\,
	datac => \U_VGA|LessThan11~7_combout\,
	datad => \U_VGA|Add5~6_combout\,
	combout => \U_VGA|LessThan11~8_combout\);

-- Location: LCCOMB_X47_Y36_N14
\U_VGA|Add5~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~44_combout\ = (\U_VGA|y_pos_p1\(23) & (\U_VGA|Add5~43\ $ (GND))) # (!\U_VGA|y_pos_p1\(23) & (!\U_VGA|Add5~43\ & VCC))
-- \U_VGA|Add5~45\ = CARRY((\U_VGA|y_pos_p1\(23) & !\U_VGA|Add5~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(23),
	datad => VCC,
	cin => \U_VGA|Add5~43\,
	combout => \U_VGA|Add5~44_combout\,
	cout => \U_VGA|Add5~45\);

-- Location: LCCOMB_X47_Y36_N16
\U_VGA|Add5~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~46_combout\ = (\U_VGA|y_pos_p1\(24) & (!\U_VGA|Add5~45\)) # (!\U_VGA|y_pos_p1\(24) & ((\U_VGA|Add5~45\) # (GND)))
-- \U_VGA|Add5~47\ = CARRY((!\U_VGA|Add5~45\) # (!\U_VGA|y_pos_p1\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(24),
	datad => VCC,
	cin => \U_VGA|Add5~45\,
	combout => \U_VGA|Add5~46_combout\,
	cout => \U_VGA|Add5~47\);

-- Location: LCCOMB_X47_Y36_N18
\U_VGA|Add5~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~48_combout\ = (\U_VGA|y_pos_p1\(25) & (\U_VGA|Add5~47\ $ (GND))) # (!\U_VGA|y_pos_p1\(25) & (!\U_VGA|Add5~47\ & VCC))
-- \U_VGA|Add5~49\ = CARRY((\U_VGA|y_pos_p1\(25) & !\U_VGA|Add5~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(25),
	datad => VCC,
	cin => \U_VGA|Add5~47\,
	combout => \U_VGA|Add5~48_combout\,
	cout => \U_VGA|Add5~49\);

-- Location: LCCOMB_X47_Y36_N20
\U_VGA|Add5~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~50_combout\ = (\U_VGA|y_pos_p1\(26) & (!\U_VGA|Add5~49\)) # (!\U_VGA|y_pos_p1\(26) & ((\U_VGA|Add5~49\) # (GND)))
-- \U_VGA|Add5~51\ = CARRY((!\U_VGA|Add5~49\) # (!\U_VGA|y_pos_p1\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(26),
	datad => VCC,
	cin => \U_VGA|Add5~49\,
	combout => \U_VGA|Add5~50_combout\,
	cout => \U_VGA|Add5~51\);

-- Location: LCCOMB_X47_Y36_N22
\U_VGA|Add5~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~52_combout\ = (\U_VGA|y_pos_p1\(27) & (\U_VGA|Add5~51\ $ (GND))) # (!\U_VGA|y_pos_p1\(27) & (!\U_VGA|Add5~51\ & VCC))
-- \U_VGA|Add5~53\ = CARRY((\U_VGA|y_pos_p1\(27) & !\U_VGA|Add5~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(27),
	datad => VCC,
	cin => \U_VGA|Add5~51\,
	combout => \U_VGA|Add5~52_combout\,
	cout => \U_VGA|Add5~53\);

-- Location: LCCOMB_X47_Y36_N24
\U_VGA|Add5~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~54_combout\ = (\U_VGA|y_pos_p1\(28) & (!\U_VGA|Add5~53\)) # (!\U_VGA|y_pos_p1\(28) & ((\U_VGA|Add5~53\) # (GND)))
-- \U_VGA|Add5~55\ = CARRY((!\U_VGA|Add5~53\) # (!\U_VGA|y_pos_p1\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(28),
	datad => VCC,
	cin => \U_VGA|Add5~53\,
	combout => \U_VGA|Add5~54_combout\,
	cout => \U_VGA|Add5~55\);

-- Location: LCCOMB_X47_Y36_N26
\U_VGA|Add5~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~56_combout\ = (\U_VGA|y_pos_p1\(29) & (\U_VGA|Add5~55\ $ (GND))) # (!\U_VGA|y_pos_p1\(29) & (!\U_VGA|Add5~55\ & VCC))
-- \U_VGA|Add5~57\ = CARRY((\U_VGA|y_pos_p1\(29) & !\U_VGA|Add5~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(29),
	datad => VCC,
	cin => \U_VGA|Add5~55\,
	combout => \U_VGA|Add5~56_combout\,
	cout => \U_VGA|Add5~57\);

-- Location: LCCOMB_X47_Y36_N28
\U_VGA|Add5~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~58_combout\ = (\U_VGA|y_pos_p1\(30) & (!\U_VGA|Add5~57\)) # (!\U_VGA|y_pos_p1\(30) & ((\U_VGA|Add5~57\) # (GND)))
-- \U_VGA|Add5~59\ = CARRY((!\U_VGA|Add5~57\) # (!\U_VGA|y_pos_p1\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(30),
	datad => VCC,
	cin => \U_VGA|Add5~57\,
	combout => \U_VGA|Add5~58_combout\,
	cout => \U_VGA|Add5~59\);

-- Location: LCCOMB_X47_Y36_N4
\U_VGA|Add5~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~34_combout\ = (\U_VGA|y_pos_p1\(18) & (!\U_VGA|Add5~33\)) # (!\U_VGA|y_pos_p1\(18) & ((\U_VGA|Add5~33\) # (GND)))
-- \U_VGA|Add5~35\ = CARRY((!\U_VGA|Add5~33\) # (!\U_VGA|y_pos_p1\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(18),
	datad => VCC,
	cin => \U_VGA|Add5~33\,
	combout => \U_VGA|Add5~34_combout\,
	cout => \U_VGA|Add5~35\);

-- Location: LCCOMB_X47_Y36_N6
\U_VGA|Add5~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~36_combout\ = (\U_VGA|y_pos_p1\(19) & (\U_VGA|Add5~35\ $ (GND))) # (!\U_VGA|y_pos_p1\(19) & (!\U_VGA|Add5~35\ & VCC))
-- \U_VGA|Add5~37\ = CARRY((\U_VGA|y_pos_p1\(19) & !\U_VGA|Add5~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(19),
	datad => VCC,
	cin => \U_VGA|Add5~35\,
	combout => \U_VGA|Add5~36_combout\,
	cout => \U_VGA|Add5~37\);

-- Location: LCCOMB_X46_Y33_N16
\U_VGA|LessThan11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan11~2_combout\ = (\U_VGA|Add5~34_combout\) # ((\U_VGA|Add5~32_combout\) # ((\U_VGA|Add5~38_combout\) # (\U_VGA|Add5~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add5~34_combout\,
	datab => \U_VGA|Add5~32_combout\,
	datac => \U_VGA|Add5~38_combout\,
	datad => \U_VGA|Add5~36_combout\,
	combout => \U_VGA|LessThan11~2_combout\);

-- Location: LCCOMB_X47_Y37_N24
\U_VGA|Add5~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~22_combout\ = (\U_VGA|y_pos_p1\(12) & (!\U_VGA|Add5~21\)) # (!\U_VGA|y_pos_p1\(12) & ((\U_VGA|Add5~21\) # (GND)))
-- \U_VGA|Add5~23\ = CARRY((!\U_VGA|Add5~21\) # (!\U_VGA|y_pos_p1\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(12),
	datad => VCC,
	cin => \U_VGA|Add5~21\,
	combout => \U_VGA|Add5~22_combout\,
	cout => \U_VGA|Add5~23\);

-- Location: LCCOMB_X47_Y37_N26
\U_VGA|Add5~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~24_combout\ = (\U_VGA|y_pos_p1\(13) & (\U_VGA|Add5~23\ $ (GND))) # (!\U_VGA|y_pos_p1\(13) & (!\U_VGA|Add5~23\ & VCC))
-- \U_VGA|Add5~25\ = CARRY((\U_VGA|y_pos_p1\(13) & !\U_VGA|Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(13),
	datad => VCC,
	cin => \U_VGA|Add5~23\,
	combout => \U_VGA|Add5~24_combout\,
	cout => \U_VGA|Add5~25\);

-- Location: LCCOMB_X47_Y37_N28
\U_VGA|Add5~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~26_combout\ = (\U_VGA|y_pos_p1\(14) & (!\U_VGA|Add5~25\)) # (!\U_VGA|y_pos_p1\(14) & ((\U_VGA|Add5~25\) # (GND)))
-- \U_VGA|Add5~27\ = CARRY((!\U_VGA|Add5~25\) # (!\U_VGA|y_pos_p1\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(14),
	datad => VCC,
	cin => \U_VGA|Add5~25\,
	combout => \U_VGA|Add5~26_combout\,
	cout => \U_VGA|Add5~27\);

-- Location: LCCOMB_X47_Y37_N30
\U_VGA|Add5~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~28_combout\ = (\U_VGA|y_pos_p1\(15) & (\U_VGA|Add5~27\ $ (GND))) # (!\U_VGA|y_pos_p1\(15) & (!\U_VGA|Add5~27\ & VCC))
-- \U_VGA|Add5~29\ = CARRY((\U_VGA|y_pos_p1\(15) & !\U_VGA|Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(15),
	datad => VCC,
	cin => \U_VGA|Add5~27\,
	combout => \U_VGA|Add5~28_combout\,
	cout => \U_VGA|Add5~29\);

-- Location: LCCOMB_X47_Y36_N0
\U_VGA|Add5~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~30_combout\ = (\U_VGA|y_pos_p1\(16) & (!\U_VGA|Add5~29\)) # (!\U_VGA|y_pos_p1\(16) & ((\U_VGA|Add5~29\) # (GND)))
-- \U_VGA|Add5~31\ = CARRY((!\U_VGA|Add5~29\) # (!\U_VGA|y_pos_p1\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(16),
	datad => VCC,
	cin => \U_VGA|Add5~29\,
	combout => \U_VGA|Add5~30_combout\,
	cout => \U_VGA|Add5~31\);

-- Location: LCCOMB_X46_Y37_N20
\U_VGA|LessThan11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan11~1_combout\ = (\U_VGA|Add5~24_combout\) # ((\U_VGA|Add5~26_combout\) # ((\U_VGA|Add5~28_combout\) # (\U_VGA|Add5~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add5~24_combout\,
	datab => \U_VGA|Add5~26_combout\,
	datac => \U_VGA|Add5~28_combout\,
	datad => \U_VGA|Add5~30_combout\,
	combout => \U_VGA|LessThan11~1_combout\);

-- Location: LCCOMB_X47_Y36_N8
\U_VGA|Add5~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~38_combout\ = (\U_VGA|y_pos_p1\(20) & (!\U_VGA|Add5~37\)) # (!\U_VGA|y_pos_p1\(20) & ((\U_VGA|Add5~37\) # (GND)))
-- \U_VGA|Add5~39\ = CARRY((!\U_VGA|Add5~37\) # (!\U_VGA|y_pos_p1\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(20),
	datad => VCC,
	cin => \U_VGA|Add5~37\,
	combout => \U_VGA|Add5~38_combout\,
	cout => \U_VGA|Add5~39\);

-- Location: LCCOMB_X47_Y36_N10
\U_VGA|Add5~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~40_combout\ = (\U_VGA|y_pos_p1\(21) & (\U_VGA|Add5~39\ $ (GND))) # (!\U_VGA|y_pos_p1\(21) & (!\U_VGA|Add5~39\ & VCC))
-- \U_VGA|Add5~41\ = CARRY((\U_VGA|y_pos_p1\(21) & !\U_VGA|Add5~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(21),
	datad => VCC,
	cin => \U_VGA|Add5~39\,
	combout => \U_VGA|Add5~40_combout\,
	cout => \U_VGA|Add5~41\);

-- Location: LCCOMB_X46_Y37_N26
\U_VGA|LessThan11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan11~3_combout\ = (\U_VGA|Add5~46_combout\) # ((\U_VGA|Add5~42_combout\) # ((\U_VGA|Add5~44_combout\) # (\U_VGA|Add5~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add5~46_combout\,
	datab => \U_VGA|Add5~42_combout\,
	datac => \U_VGA|Add5~44_combout\,
	datad => \U_VGA|Add5~40_combout\,
	combout => \U_VGA|LessThan11~3_combout\);

-- Location: LCCOMB_X47_Y37_N18
\U_VGA|Add5~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~16_combout\ = (\U_VGA|y_pos_p1\(9) & (\U_VGA|Add5~15\ $ (GND))) # (!\U_VGA|y_pos_p1\(9) & (!\U_VGA|Add5~15\ & VCC))
-- \U_VGA|Add5~17\ = CARRY((\U_VGA|y_pos_p1\(9) & !\U_VGA|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(9),
	datad => VCC,
	cin => \U_VGA|Add5~15\,
	combout => \U_VGA|Add5~16_combout\,
	cout => \U_VGA|Add5~17\);

-- Location: LCCOMB_X47_Y37_N20
\U_VGA|Add5~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~18_combout\ = (\U_VGA|y_pos_p1\(10) & (!\U_VGA|Add5~17\)) # (!\U_VGA|y_pos_p1\(10) & ((\U_VGA|Add5~17\) # (GND)))
-- \U_VGA|Add5~19\ = CARRY((!\U_VGA|Add5~17\) # (!\U_VGA|y_pos_p1\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(10),
	datad => VCC,
	cin => \U_VGA|Add5~17\,
	combout => \U_VGA|Add5~18_combout\,
	cout => \U_VGA|Add5~19\);

-- Location: LCCOMB_X47_Y37_N22
\U_VGA|Add5~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~20_combout\ = (\U_VGA|y_pos_p1\(11) & (\U_VGA|Add5~19\ $ (GND))) # (!\U_VGA|y_pos_p1\(11) & (!\U_VGA|Add5~19\ & VCC))
-- \U_VGA|Add5~21\ = CARRY((\U_VGA|y_pos_p1\(11) & !\U_VGA|Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(11),
	datad => VCC,
	cin => \U_VGA|Add5~19\,
	combout => \U_VGA|Add5~20_combout\,
	cout => \U_VGA|Add5~21\);

-- Location: LCCOMB_X46_Y37_N2
\U_VGA|LessThan11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan11~0_combout\ = (\U_VGA|Add5~16_combout\) # ((\U_VGA|Add5~22_combout\) # ((\U_VGA|Add5~18_combout\) # (\U_VGA|Add5~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add5~16_combout\,
	datab => \U_VGA|Add5~22_combout\,
	datac => \U_VGA|Add5~18_combout\,
	datad => \U_VGA|Add5~20_combout\,
	combout => \U_VGA|LessThan11~0_combout\);

-- Location: LCCOMB_X46_Y37_N4
\U_VGA|LessThan11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan11~4_combout\ = (\U_VGA|LessThan11~2_combout\) # ((\U_VGA|LessThan11~1_combout\) # ((\U_VGA|LessThan11~3_combout\) # (\U_VGA|LessThan11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|LessThan11~2_combout\,
	datab => \U_VGA|LessThan11~1_combout\,
	datac => \U_VGA|LessThan11~3_combout\,
	datad => \U_VGA|LessThan11~0_combout\,
	combout => \U_VGA|LessThan11~4_combout\);

-- Location: LCCOMB_X46_Y37_N6
\U_VGA|LessThan11~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan11~5_combout\ = (\U_VGA|Add5~50_combout\) # ((\U_VGA|Add5~48_combout\) # ((\U_VGA|Add5~52_combout\) # (\U_VGA|Add5~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add5~50_combout\,
	datab => \U_VGA|Add5~48_combout\,
	datac => \U_VGA|Add5~52_combout\,
	datad => \U_VGA|Add5~54_combout\,
	combout => \U_VGA|LessThan11~5_combout\);

-- Location: LCCOMB_X46_Y37_N0
\U_VGA|LessThan11~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan11~6_combout\ = (\U_VGA|Add5~58_combout\) # ((\U_VGA|LessThan11~4_combout\) # ((\U_VGA|Add5~56_combout\) # (\U_VGA|LessThan11~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add5~58_combout\,
	datab => \U_VGA|LessThan11~4_combout\,
	datac => \U_VGA|Add5~56_combout\,
	datad => \U_VGA|LessThan11~5_combout\,
	combout => \U_VGA|LessThan11~6_combout\);

-- Location: LCCOMB_X47_Y37_N14
\U_VGA|Add5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~12_combout\ = (\U_VGA|y_pos_p1\(7) & (!\U_VGA|Add5~11\ & VCC)) # (!\U_VGA|y_pos_p1\(7) & (\U_VGA|Add5~11\ $ (GND)))
-- \U_VGA|Add5~13\ = CARRY((!\U_VGA|y_pos_p1\(7) & !\U_VGA|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(7),
	datad => VCC,
	cin => \U_VGA|Add5~11\,
	combout => \U_VGA|Add5~12_combout\,
	cout => \U_VGA|Add5~13\);

-- Location: LCCOMB_X47_Y37_N16
\U_VGA|Add5~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~14_combout\ = (\U_VGA|y_pos_p1\(8) & (!\U_VGA|Add5~13\)) # (!\U_VGA|y_pos_p1\(8) & ((\U_VGA|Add5~13\) # (GND)))
-- \U_VGA|Add5~15\ = CARRY((!\U_VGA|Add5~13\) # (!\U_VGA|y_pos_p1\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(8),
	datad => VCC,
	cin => \U_VGA|Add5~13\,
	combout => \U_VGA|Add5~14_combout\,
	cout => \U_VGA|Add5~15\);

-- Location: LCCOMB_X46_Y37_N24
\U_VGA|LessThan11~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan11~9_combout\ = (\U_VGA|LessThan11~6_combout\) # ((\U_VGA|LessThan11~8_combout\ & (\U_VGA|Add5~12_combout\ & \U_VGA|Add5~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|LessThan11~8_combout\,
	datab => \U_VGA|LessThan11~6_combout\,
	datac => \U_VGA|Add5~12_combout\,
	datad => \U_VGA|Add5~14_combout\,
	combout => \U_VGA|LessThan11~9_combout\);

-- Location: LCCOMB_X45_Y37_N8
\U_VGA|y_pos_p1[24]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1[24]~2_combout\ = ((\switch[1]~input_o\ & ((\U_VGA|Add5~60_combout\) # (!\U_VGA|LessThan11~9_combout\)))) # (!\U_VGA|y_pos_p1[24]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[1]~input_o\,
	datab => \U_VGA|Add5~60_combout\,
	datac => \U_VGA|y_pos_p1[24]~1_combout\,
	datad => \U_VGA|LessThan11~9_combout\,
	combout => \U_VGA|y_pos_p1[24]~2_combout\);

-- Location: FF_X46_Y34_N5
\U_VGA|y_pos_p1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|y_pos_p1~10_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	ena => \U_VGA|y_pos_p1[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(1));

-- Location: LCCOMB_X47_Y34_N4
\U_VGA|Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~2_combout\ = (\U_VGA|y_pos_p1\(2) & (\U_VGA|Add4~1\ & VCC)) # (!\U_VGA|y_pos_p1\(2) & (!\U_VGA|Add4~1\))
-- \U_VGA|Add4~3\ = CARRY((!\U_VGA|y_pos_p1\(2) & !\U_VGA|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(2),
	datad => VCC,
	cin => \U_VGA|Add4~1\,
	combout => \U_VGA|Add4~2_combout\,
	cout => \U_VGA|Add4~3\);

-- Location: LCCOMB_X45_Y34_N0
\U_VGA|y_pos_p1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~9_combout\ = (\U_VGA|Add4~60_combout\ & (\U_VGA|Add5~2_combout\)) # (!\U_VGA|Add4~60_combout\ & ((\switch[0]~input_o\ & ((\U_VGA|Add4~2_combout\))) # (!\switch[0]~input_o\ & (\U_VGA|Add5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add4~60_combout\,
	datab => \U_VGA|Add5~2_combout\,
	datac => \U_VGA|Add4~2_combout\,
	datad => \switch[0]~input_o\,
	combout => \U_VGA|y_pos_p1~9_combout\);

-- Location: FF_X45_Y34_N1
\U_VGA|y_pos_p1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|y_pos_p1~9_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	ena => \U_VGA|y_pos_p1[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(2));

-- Location: LCCOMB_X47_Y34_N6
\U_VGA|Add4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~4_combout\ = (\U_VGA|y_pos_p1\(3) & (\U_VGA|Add4~3\ $ (GND))) # (!\U_VGA|y_pos_p1\(3) & ((GND) # (!\U_VGA|Add4~3\)))
-- \U_VGA|Add4~5\ = CARRY((!\U_VGA|Add4~3\) # (!\U_VGA|y_pos_p1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(3),
	datad => VCC,
	cin => \U_VGA|Add4~3\,
	combout => \U_VGA|Add4~4_combout\,
	cout => \U_VGA|Add4~5\);

-- Location: LCCOMB_X46_Y34_N28
\U_VGA|y_pos_p1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~8_combout\ = (\button_n[0]~input_o\ & ((\U_VGA|paddle1_move~0_combout\ & (!\U_VGA|Add4~4_combout\)) # (!\U_VGA|paddle1_move~0_combout\ & ((!\U_VGA|Add5~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|paddle1_move~0_combout\,
	datab => \button_n[0]~input_o\,
	datac => \U_VGA|Add4~4_combout\,
	datad => \U_VGA|Add5~4_combout\,
	combout => \U_VGA|y_pos_p1~8_combout\);

-- Location: FF_X46_Y34_N29
\U_VGA|y_pos_p1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|y_pos_p1~8_combout\,
	ena => \U_VGA|y_pos_p1[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(3));

-- Location: LCCOMB_X47_Y37_N8
\U_VGA|Add5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~6_combout\ = (\U_VGA|y_pos_p1\(4) & (!\U_VGA|Add5~5\)) # (!\U_VGA|y_pos_p1\(4) & ((\U_VGA|Add5~5\) # (GND)))
-- \U_VGA|Add5~7\ = CARRY((!\U_VGA|Add5~5\) # (!\U_VGA|y_pos_p1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(4),
	datad => VCC,
	cin => \U_VGA|Add5~5\,
	combout => \U_VGA|Add5~6_combout\,
	cout => \U_VGA|Add5~7\);

-- Location: LCCOMB_X47_Y34_N8
\U_VGA|Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~6_combout\ = (\U_VGA|y_pos_p1\(4) & (\U_VGA|Add4~5\ & VCC)) # (!\U_VGA|y_pos_p1\(4) & (!\U_VGA|Add4~5\))
-- \U_VGA|Add4~7\ = CARRY((!\U_VGA|y_pos_p1\(4) & !\U_VGA|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(4),
	datad => VCC,
	cin => \U_VGA|Add4~5\,
	combout => \U_VGA|Add4~6_combout\,
	cout => \U_VGA|Add4~7\);

-- Location: LCCOMB_X46_Y34_N30
\U_VGA|y_pos_p1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~7_combout\ = (\switch[0]~input_o\ & ((\U_VGA|Add4~60_combout\ & (\U_VGA|Add5~6_combout\)) # (!\U_VGA|Add4~60_combout\ & ((\U_VGA|Add4~6_combout\))))) # (!\switch[0]~input_o\ & (\U_VGA|Add5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add5~6_combout\,
	datab => \U_VGA|Add4~6_combout\,
	datac => \switch[0]~input_o\,
	datad => \U_VGA|Add4~60_combout\,
	combout => \U_VGA|y_pos_p1~7_combout\);

-- Location: FF_X46_Y34_N31
\U_VGA|y_pos_p1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|y_pos_p1~7_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	ena => \U_VGA|y_pos_p1[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(4));

-- Location: LCCOMB_X47_Y34_N10
\U_VGA|Add4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~8_combout\ = (\U_VGA|y_pos_p1\(5) & ((GND) # (!\U_VGA|Add4~7\))) # (!\U_VGA|y_pos_p1\(5) & (\U_VGA|Add4~7\ $ (GND)))
-- \U_VGA|Add4~9\ = CARRY((\U_VGA|y_pos_p1\(5)) # (!\U_VGA|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(5),
	datad => VCC,
	cin => \U_VGA|Add4~7\,
	combout => \U_VGA|Add4~8_combout\,
	cout => \U_VGA|Add4~9\);

-- Location: LCCOMB_X46_Y34_N8
\U_VGA|y_pos_p1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~6_combout\ = (\switch[0]~input_o\ & ((\U_VGA|Add4~60_combout\ & (\U_VGA|Add5~8_combout\)) # (!\U_VGA|Add4~60_combout\ & ((\U_VGA|Add4~8_combout\))))) # (!\switch[0]~input_o\ & (((\U_VGA|Add5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \U_VGA|Add4~60_combout\,
	datac => \U_VGA|Add5~8_combout\,
	datad => \U_VGA|Add4~8_combout\,
	combout => \U_VGA|y_pos_p1~6_combout\);

-- Location: FF_X46_Y34_N9
\U_VGA|y_pos_p1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|y_pos_p1~6_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	ena => \U_VGA|y_pos_p1[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(5));

-- Location: LCCOMB_X47_Y34_N12
\U_VGA|Add4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~10_combout\ = (\U_VGA|y_pos_p1\(6) & (!\U_VGA|Add4~9\)) # (!\U_VGA|y_pos_p1\(6) & (\U_VGA|Add4~9\ & VCC))
-- \U_VGA|Add4~11\ = CARRY((\U_VGA|y_pos_p1\(6) & !\U_VGA|Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(6),
	datad => VCC,
	cin => \U_VGA|Add4~9\,
	combout => \U_VGA|Add4~10_combout\,
	cout => \U_VGA|Add4~11\);

-- Location: LCCOMB_X46_Y34_N0
\U_VGA|y_pos_p1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~5_combout\ = (\button_n[0]~input_o\ & ((\U_VGA|paddle1_move~0_combout\ & (!\U_VGA|Add4~10_combout\)) # (!\U_VGA|paddle1_move~0_combout\ & ((!\U_VGA|Add5~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add4~10_combout\,
	datab => \button_n[0]~input_o\,
	datac => \U_VGA|Add5~10_combout\,
	datad => \U_VGA|paddle1_move~0_combout\,
	combout => \U_VGA|y_pos_p1~5_combout\);

-- Location: FF_X46_Y34_N1
\U_VGA|y_pos_p1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|y_pos_p1~5_combout\,
	ena => \U_VGA|y_pos_p1[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(6));

-- Location: LCCOMB_X47_Y34_N14
\U_VGA|Add4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~12_combout\ = (\U_VGA|y_pos_p1\(7) & (\U_VGA|Add4~11\ $ (GND))) # (!\U_VGA|y_pos_p1\(7) & ((GND) # (!\U_VGA|Add4~11\)))
-- \U_VGA|Add4~13\ = CARRY((!\U_VGA|Add4~11\) # (!\U_VGA|y_pos_p1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(7),
	datad => VCC,
	cin => \U_VGA|Add4~11\,
	combout => \U_VGA|Add4~12_combout\,
	cout => \U_VGA|Add4~13\);

-- Location: LCCOMB_X46_Y34_N2
\U_VGA|y_pos_p1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~4_combout\ = (\button_n[0]~input_o\ & ((\U_VGA|paddle1_move~0_combout\ & (!\U_VGA|Add4~12_combout\)) # (!\U_VGA|paddle1_move~0_combout\ & ((!\U_VGA|Add5~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add4~12_combout\,
	datab => \button_n[0]~input_o\,
	datac => \U_VGA|Add5~12_combout\,
	datad => \U_VGA|paddle1_move~0_combout\,
	combout => \U_VGA|y_pos_p1~4_combout\);

-- Location: FF_X46_Y34_N3
\U_VGA|y_pos_p1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|y_pos_p1~4_combout\,
	ena => \U_VGA|y_pos_p1[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(7));

-- Location: LCCOMB_X47_Y34_N16
\U_VGA|Add4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~14_combout\ = (\U_VGA|y_pos_p1\(8) & (\U_VGA|Add4~13\ & VCC)) # (!\U_VGA|y_pos_p1\(8) & (!\U_VGA|Add4~13\))
-- \U_VGA|Add4~15\ = CARRY((!\U_VGA|y_pos_p1\(8) & !\U_VGA|Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(8),
	datad => VCC,
	cin => \U_VGA|Add4~13\,
	combout => \U_VGA|Add4~14_combout\,
	cout => \U_VGA|Add4~15\);

-- Location: LCCOMB_X46_Y33_N26
\U_VGA|y_pos_p1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~3_combout\ = (\U_VGA|Add4~60_combout\ & (((\U_VGA|Add5~14_combout\)))) # (!\U_VGA|Add4~60_combout\ & ((\switch[0]~input_o\ & (\U_VGA|Add4~14_combout\)) # (!\switch[0]~input_o\ & ((\U_VGA|Add5~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add4~60_combout\,
	datab => \U_VGA|Add4~14_combout\,
	datac => \switch[0]~input_o\,
	datad => \U_VGA|Add5~14_combout\,
	combout => \U_VGA|y_pos_p1~3_combout\);

-- Location: FF_X44_Y36_N7
\U_VGA|y_pos_p1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p1~3_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p1[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(8));

-- Location: LCCOMB_X47_Y34_N18
\U_VGA|Add4~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~16_combout\ = (\U_VGA|y_pos_p1\(9) & ((GND) # (!\U_VGA|Add4~15\))) # (!\U_VGA|y_pos_p1\(9) & (\U_VGA|Add4~15\ $ (GND)))
-- \U_VGA|Add4~17\ = CARRY((\U_VGA|y_pos_p1\(9)) # (!\U_VGA|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(9),
	datad => VCC,
	cin => \U_VGA|Add4~15\,
	combout => \U_VGA|Add4~16_combout\,
	cout => \U_VGA|Add4~17\);

-- Location: LCCOMB_X47_Y34_N20
\U_VGA|Add4~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~18_combout\ = (\U_VGA|y_pos_p1\(10) & (\U_VGA|Add4~17\ & VCC)) # (!\U_VGA|y_pos_p1\(10) & (!\U_VGA|Add4~17\))
-- \U_VGA|Add4~19\ = CARRY((!\U_VGA|y_pos_p1\(10) & !\U_VGA|Add4~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(10),
	datad => VCC,
	cin => \U_VGA|Add4~17\,
	combout => \U_VGA|Add4~18_combout\,
	cout => \U_VGA|Add4~19\);

-- Location: LCCOMB_X46_Y37_N18
\U_VGA|y_pos_p1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~32_combout\ = (\U_VGA|Add4~60_combout\ & (\U_VGA|Add5~18_combout\)) # (!\U_VGA|Add4~60_combout\ & ((\switch[0]~input_o\ & ((\U_VGA|Add4~18_combout\))) # (!\switch[0]~input_o\ & (\U_VGA|Add5~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add5~18_combout\,
	datab => \U_VGA|Add4~18_combout\,
	datac => \U_VGA|Add4~60_combout\,
	datad => \switch[0]~input_o\,
	combout => \U_VGA|y_pos_p1~32_combout\);

-- Location: FF_X45_Y36_N29
\U_VGA|y_pos_p1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p1~32_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p1[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(10));

-- Location: LCCOMB_X47_Y34_N22
\U_VGA|Add4~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~20_combout\ = (\U_VGA|y_pos_p1\(11) & ((GND) # (!\U_VGA|Add4~19\))) # (!\U_VGA|y_pos_p1\(11) & (\U_VGA|Add4~19\ $ (GND)))
-- \U_VGA|Add4~21\ = CARRY((\U_VGA|y_pos_p1\(11)) # (!\U_VGA|Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(11),
	datad => VCC,
	cin => \U_VGA|Add4~19\,
	combout => \U_VGA|Add4~20_combout\,
	cout => \U_VGA|Add4~21\);

-- Location: LCCOMB_X46_Y33_N10
\U_VGA|y_pos_p1~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~31_combout\ = (\switch[0]~input_o\ & ((\U_VGA|Add4~60_combout\ & ((\U_VGA|Add5~20_combout\))) # (!\U_VGA|Add4~60_combout\ & (\U_VGA|Add4~20_combout\)))) # (!\switch[0]~input_o\ & (((\U_VGA|Add5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add4~20_combout\,
	datab => \switch[0]~input_o\,
	datac => \U_VGA|Add4~60_combout\,
	datad => \U_VGA|Add5~20_combout\,
	combout => \U_VGA|y_pos_p1~31_combout\);

-- Location: FF_X45_Y36_N13
\U_VGA|y_pos_p1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p1~31_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p1[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(11));

-- Location: LCCOMB_X47_Y34_N24
\U_VGA|Add4~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~22_combout\ = (\U_VGA|y_pos_p1\(12) & (\U_VGA|Add4~21\ & VCC)) # (!\U_VGA|y_pos_p1\(12) & (!\U_VGA|Add4~21\))
-- \U_VGA|Add4~23\ = CARRY((!\U_VGA|y_pos_p1\(12) & !\U_VGA|Add4~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(12),
	datad => VCC,
	cin => \U_VGA|Add4~21\,
	combout => \U_VGA|Add4~22_combout\,
	cout => \U_VGA|Add4~23\);

-- Location: LCCOMB_X46_Y37_N16
\U_VGA|y_pos_p1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~30_combout\ = (\U_VGA|Add4~60_combout\ & (\U_VGA|Add5~22_combout\)) # (!\U_VGA|Add4~60_combout\ & ((\switch[0]~input_o\ & ((\U_VGA|Add4~22_combout\))) # (!\switch[0]~input_o\ & (\U_VGA|Add5~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add4~60_combout\,
	datab => \U_VGA|Add5~22_combout\,
	datac => \U_VGA|Add4~22_combout\,
	datad => \switch[0]~input_o\,
	combout => \U_VGA|y_pos_p1~30_combout\);

-- Location: FF_X44_Y36_N25
\U_VGA|y_pos_p1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p1~30_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p1[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(12));

-- Location: LCCOMB_X47_Y34_N26
\U_VGA|Add4~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~24_combout\ = (\U_VGA|y_pos_p1\(13) & ((GND) # (!\U_VGA|Add4~23\))) # (!\U_VGA|y_pos_p1\(13) & (\U_VGA|Add4~23\ $ (GND)))
-- \U_VGA|Add4~25\ = CARRY((\U_VGA|y_pos_p1\(13)) # (!\U_VGA|Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(13),
	datad => VCC,
	cin => \U_VGA|Add4~23\,
	combout => \U_VGA|Add4~24_combout\,
	cout => \U_VGA|Add4~25\);

-- Location: LCCOMB_X46_Y37_N30
\U_VGA|y_pos_p1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~29_combout\ = (\U_VGA|Add4~60_combout\ & (((\U_VGA|Add5~24_combout\)))) # (!\U_VGA|Add4~60_combout\ & ((\switch[0]~input_o\ & (\U_VGA|Add4~24_combout\)) # (!\switch[0]~input_o\ & ((\U_VGA|Add5~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add4~60_combout\,
	datab => \U_VGA|Add4~24_combout\,
	datac => \U_VGA|Add5~24_combout\,
	datad => \switch[0]~input_o\,
	combout => \U_VGA|y_pos_p1~29_combout\);

-- Location: FF_X44_Y36_N19
\U_VGA|y_pos_p1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p1~29_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p1[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(13));

-- Location: LCCOMB_X47_Y34_N28
\U_VGA|Add4~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~26_combout\ = (\U_VGA|y_pos_p1\(14) & (\U_VGA|Add4~25\ & VCC)) # (!\U_VGA|y_pos_p1\(14) & (!\U_VGA|Add4~25\))
-- \U_VGA|Add4~27\ = CARRY((!\U_VGA|y_pos_p1\(14) & !\U_VGA|Add4~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(14),
	datad => VCC,
	cin => \U_VGA|Add4~25\,
	combout => \U_VGA|Add4~26_combout\,
	cout => \U_VGA|Add4~27\);

-- Location: LCCOMB_X46_Y37_N8
\U_VGA|y_pos_p1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~28_combout\ = (\switch[0]~input_o\ & ((\U_VGA|Add4~60_combout\ & ((\U_VGA|Add5~26_combout\))) # (!\U_VGA|Add4~60_combout\ & (\U_VGA|Add4~26_combout\)))) # (!\switch[0]~input_o\ & (((\U_VGA|Add5~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add4~26_combout\,
	datab => \switch[0]~input_o\,
	datac => \U_VGA|Add4~60_combout\,
	datad => \U_VGA|Add5~26_combout\,
	combout => \U_VGA|y_pos_p1~28_combout\);

-- Location: FF_X44_Y34_N23
\U_VGA|y_pos_p1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p1~28_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p1[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(14));

-- Location: LCCOMB_X47_Y34_N30
\U_VGA|Add4~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~28_combout\ = (\U_VGA|y_pos_p1\(15) & ((GND) # (!\U_VGA|Add4~27\))) # (!\U_VGA|y_pos_p1\(15) & (\U_VGA|Add4~27\ $ (GND)))
-- \U_VGA|Add4~29\ = CARRY((\U_VGA|y_pos_p1\(15)) # (!\U_VGA|Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(15),
	datad => VCC,
	cin => \U_VGA|Add4~27\,
	combout => \U_VGA|Add4~28_combout\,
	cout => \U_VGA|Add4~29\);

-- Location: LCCOMB_X46_Y37_N14
\U_VGA|y_pos_p1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~27_combout\ = (\U_VGA|Add4~60_combout\ & (\U_VGA|Add5~28_combout\)) # (!\U_VGA|Add4~60_combout\ & ((\switch[0]~input_o\ & ((\U_VGA|Add4~28_combout\))) # (!\switch[0]~input_o\ & (\U_VGA|Add5~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add5~28_combout\,
	datab => \U_VGA|Add4~28_combout\,
	datac => \U_VGA|Add4~60_combout\,
	datad => \switch[0]~input_o\,
	combout => \U_VGA|y_pos_p1~27_combout\);

-- Location: FF_X45_Y36_N1
\U_VGA|y_pos_p1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p1~27_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p1[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(15));

-- Location: LCCOMB_X47_Y33_N0
\U_VGA|Add4~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~30_combout\ = (\U_VGA|y_pos_p1\(16) & (\U_VGA|Add4~29\ & VCC)) # (!\U_VGA|y_pos_p1\(16) & (!\U_VGA|Add4~29\))
-- \U_VGA|Add4~31\ = CARRY((!\U_VGA|y_pos_p1\(16) & !\U_VGA|Add4~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(16),
	datad => VCC,
	cin => \U_VGA|Add4~29\,
	combout => \U_VGA|Add4~30_combout\,
	cout => \U_VGA|Add4~31\);

-- Location: LCCOMB_X46_Y33_N28
\U_VGA|y_pos_p1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~26_combout\ = (\U_VGA|Add4~60_combout\ & (((\U_VGA|Add5~30_combout\)))) # (!\U_VGA|Add4~60_combout\ & ((\switch[0]~input_o\ & (\U_VGA|Add4~30_combout\)) # (!\switch[0]~input_o\ & ((\U_VGA|Add5~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add4~60_combout\,
	datab => \U_VGA|Add4~30_combout\,
	datac => \switch[0]~input_o\,
	datad => \U_VGA|Add5~30_combout\,
	combout => \U_VGA|y_pos_p1~26_combout\);

-- Location: FF_X45_Y33_N5
\U_VGA|y_pos_p1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p1~26_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p1[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(16));

-- Location: LCCOMB_X47_Y36_N2
\U_VGA|Add5~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~32_combout\ = (\U_VGA|y_pos_p1\(17) & (\U_VGA|Add5~31\ $ (GND))) # (!\U_VGA|y_pos_p1\(17) & (!\U_VGA|Add5~31\ & VCC))
-- \U_VGA|Add5~33\ = CARRY((\U_VGA|y_pos_p1\(17) & !\U_VGA|Add5~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(17),
	datad => VCC,
	cin => \U_VGA|Add5~31\,
	combout => \U_VGA|Add5~32_combout\,
	cout => \U_VGA|Add5~33\);

-- Location: LCCOMB_X47_Y33_N2
\U_VGA|Add4~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~32_combout\ = (\U_VGA|y_pos_p1\(17) & ((GND) # (!\U_VGA|Add4~31\))) # (!\U_VGA|y_pos_p1\(17) & (\U_VGA|Add4~31\ $ (GND)))
-- \U_VGA|Add4~33\ = CARRY((\U_VGA|y_pos_p1\(17)) # (!\U_VGA|Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(17),
	datad => VCC,
	cin => \U_VGA|Add4~31\,
	combout => \U_VGA|Add4~32_combout\,
	cout => \U_VGA|Add4~33\);

-- Location: LCCOMB_X46_Y33_N14
\U_VGA|y_pos_p1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~25_combout\ = (\U_VGA|Add4~60_combout\ & (\U_VGA|Add5~32_combout\)) # (!\U_VGA|Add4~60_combout\ & ((\switch[0]~input_o\ & ((\U_VGA|Add4~32_combout\))) # (!\switch[0]~input_o\ & (\U_VGA|Add5~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add4~60_combout\,
	datab => \U_VGA|Add5~32_combout\,
	datac => \switch[0]~input_o\,
	datad => \U_VGA|Add4~32_combout\,
	combout => \U_VGA|y_pos_p1~25_combout\);

-- Location: FF_X45_Y33_N21
\U_VGA|y_pos_p1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p1~25_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p1[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(17));

-- Location: LCCOMB_X47_Y33_N4
\U_VGA|Add4~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~34_combout\ = (\U_VGA|y_pos_p1\(18) & (\U_VGA|Add4~33\ & VCC)) # (!\U_VGA|y_pos_p1\(18) & (!\U_VGA|Add4~33\))
-- \U_VGA|Add4~35\ = CARRY((!\U_VGA|y_pos_p1\(18) & !\U_VGA|Add4~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(18),
	datad => VCC,
	cin => \U_VGA|Add4~33\,
	combout => \U_VGA|Add4~34_combout\,
	cout => \U_VGA|Add4~35\);

-- Location: LCCOMB_X46_Y33_N0
\U_VGA|y_pos_p1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~24_combout\ = (\U_VGA|Add4~60_combout\ & (\U_VGA|Add5~34_combout\)) # (!\U_VGA|Add4~60_combout\ & ((\switch[0]~input_o\ & ((\U_VGA|Add4~34_combout\))) # (!\switch[0]~input_o\ & (\U_VGA|Add5~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add4~60_combout\,
	datab => \U_VGA|Add5~34_combout\,
	datac => \switch[0]~input_o\,
	datad => \U_VGA|Add4~34_combout\,
	combout => \U_VGA|y_pos_p1~24_combout\);

-- Location: FF_X45_Y33_N29
\U_VGA|y_pos_p1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p1~24_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p1[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(18));

-- Location: LCCOMB_X47_Y33_N6
\U_VGA|Add4~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~36_combout\ = (\U_VGA|y_pos_p1\(19) & ((GND) # (!\U_VGA|Add4~35\))) # (!\U_VGA|y_pos_p1\(19) & (\U_VGA|Add4~35\ $ (GND)))
-- \U_VGA|Add4~37\ = CARRY((\U_VGA|y_pos_p1\(19)) # (!\U_VGA|Add4~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(19),
	datad => VCC,
	cin => \U_VGA|Add4~35\,
	combout => \U_VGA|Add4~36_combout\,
	cout => \U_VGA|Add4~37\);

-- Location: LCCOMB_X46_Y33_N18
\U_VGA|y_pos_p1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~23_combout\ = (\switch[0]~input_o\ & ((\U_VGA|Add4~60_combout\ & ((\U_VGA|Add5~36_combout\))) # (!\U_VGA|Add4~60_combout\ & (\U_VGA|Add4~36_combout\)))) # (!\switch[0]~input_o\ & (((\U_VGA|Add5~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add4~36_combout\,
	datab => \switch[0]~input_o\,
	datac => \U_VGA|Add4~60_combout\,
	datad => \U_VGA|Add5~36_combout\,
	combout => \U_VGA|y_pos_p1~23_combout\);

-- Location: FF_X46_Y33_N19
\U_VGA|y_pos_p1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|y_pos_p1~23_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	ena => \U_VGA|y_pos_p1[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(19));

-- Location: LCCOMB_X47_Y33_N8
\U_VGA|Add4~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~38_combout\ = (\U_VGA|y_pos_p1\(20) & (\U_VGA|Add4~37\ & VCC)) # (!\U_VGA|y_pos_p1\(20) & (!\U_VGA|Add4~37\))
-- \U_VGA|Add4~39\ = CARRY((!\U_VGA|y_pos_p1\(20) & !\U_VGA|Add4~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(20),
	datad => VCC,
	cin => \U_VGA|Add4~37\,
	combout => \U_VGA|Add4~38_combout\,
	cout => \U_VGA|Add4~39\);

-- Location: LCCOMB_X46_Y33_N24
\U_VGA|y_pos_p1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~22_combout\ = (\U_VGA|Add4~60_combout\ & (\U_VGA|Add5~38_combout\)) # (!\U_VGA|Add4~60_combout\ & ((\switch[0]~input_o\ & ((\U_VGA|Add4~38_combout\))) # (!\switch[0]~input_o\ & (\U_VGA|Add5~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add4~60_combout\,
	datab => \U_VGA|Add5~38_combout\,
	datac => \switch[0]~input_o\,
	datad => \U_VGA|Add4~38_combout\,
	combout => \U_VGA|y_pos_p1~22_combout\);

-- Location: FF_X46_Y33_N25
\U_VGA|y_pos_p1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|y_pos_p1~22_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	ena => \U_VGA|y_pos_p1[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(20));

-- Location: LCCOMB_X47_Y33_N10
\U_VGA|Add4~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~40_combout\ = (\U_VGA|y_pos_p1\(21) & ((GND) # (!\U_VGA|Add4~39\))) # (!\U_VGA|y_pos_p1\(21) & (\U_VGA|Add4~39\ $ (GND)))
-- \U_VGA|Add4~41\ = CARRY((\U_VGA|y_pos_p1\(21)) # (!\U_VGA|Add4~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(21),
	datad => VCC,
	cin => \U_VGA|Add4~39\,
	combout => \U_VGA|Add4~40_combout\,
	cout => \U_VGA|Add4~41\);

-- Location: LCCOMB_X46_Y37_N12
\U_VGA|y_pos_p1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~21_combout\ = (\switch[0]~input_o\ & ((\U_VGA|Add4~60_combout\ & ((\U_VGA|Add5~40_combout\))) # (!\U_VGA|Add4~60_combout\ & (\U_VGA|Add4~40_combout\)))) # (!\switch[0]~input_o\ & (((\U_VGA|Add5~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add4~40_combout\,
	datab => \switch[0]~input_o\,
	datac => \U_VGA|Add4~60_combout\,
	datad => \U_VGA|Add5~40_combout\,
	combout => \U_VGA|y_pos_p1~21_combout\);

-- Location: FF_X45_Y33_N17
\U_VGA|y_pos_p1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p1~21_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p1[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(21));

-- Location: LCCOMB_X47_Y36_N12
\U_VGA|Add5~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~42_combout\ = (\U_VGA|y_pos_p1\(22) & (!\U_VGA|Add5~41\)) # (!\U_VGA|y_pos_p1\(22) & ((\U_VGA|Add5~41\) # (GND)))
-- \U_VGA|Add5~43\ = CARRY((!\U_VGA|Add5~41\) # (!\U_VGA|y_pos_p1\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(22),
	datad => VCC,
	cin => \U_VGA|Add5~41\,
	combout => \U_VGA|Add5~42_combout\,
	cout => \U_VGA|Add5~43\);

-- Location: LCCOMB_X47_Y33_N12
\U_VGA|Add4~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~42_combout\ = (\U_VGA|y_pos_p1\(22) & (\U_VGA|Add4~41\ & VCC)) # (!\U_VGA|y_pos_p1\(22) & (!\U_VGA|Add4~41\))
-- \U_VGA|Add4~43\ = CARRY((!\U_VGA|y_pos_p1\(22) & !\U_VGA|Add4~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(22),
	datad => VCC,
	cin => \U_VGA|Add4~41\,
	combout => \U_VGA|Add4~42_combout\,
	cout => \U_VGA|Add4~43\);

-- Location: LCCOMB_X46_Y33_N22
\U_VGA|y_pos_p1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~20_combout\ = (\U_VGA|Add4~60_combout\ & (\U_VGA|Add5~42_combout\)) # (!\U_VGA|Add4~60_combout\ & ((\switch[0]~input_o\ & ((\U_VGA|Add4~42_combout\))) # (!\switch[0]~input_o\ & (\U_VGA|Add5~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add4~60_combout\,
	datab => \U_VGA|Add5~42_combout\,
	datac => \switch[0]~input_o\,
	datad => \U_VGA|Add4~42_combout\,
	combout => \U_VGA|y_pos_p1~20_combout\);

-- Location: FF_X45_Y33_N7
\U_VGA|y_pos_p1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p1~20_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p1[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(22));

-- Location: LCCOMB_X47_Y33_N14
\U_VGA|Add4~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~44_combout\ = (\U_VGA|y_pos_p1\(23) & ((GND) # (!\U_VGA|Add4~43\))) # (!\U_VGA|y_pos_p1\(23) & (\U_VGA|Add4~43\ $ (GND)))
-- \U_VGA|Add4~45\ = CARRY((\U_VGA|y_pos_p1\(23)) # (!\U_VGA|Add4~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(23),
	datad => VCC,
	cin => \U_VGA|Add4~43\,
	combout => \U_VGA|Add4~44_combout\,
	cout => \U_VGA|Add4~45\);

-- Location: LCCOMB_X46_Y37_N22
\U_VGA|y_pos_p1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~19_combout\ = (\U_VGA|Add4~60_combout\ & (((\U_VGA|Add5~44_combout\)))) # (!\U_VGA|Add4~60_combout\ & ((\switch[0]~input_o\ & ((\U_VGA|Add4~44_combout\))) # (!\switch[0]~input_o\ & (\U_VGA|Add5~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add4~60_combout\,
	datab => \switch[0]~input_o\,
	datac => \U_VGA|Add5~44_combout\,
	datad => \U_VGA|Add4~44_combout\,
	combout => \U_VGA|y_pos_p1~19_combout\);

-- Location: FF_X45_Y33_N31
\U_VGA|y_pos_p1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p1~19_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p1[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(23));

-- Location: LCCOMB_X47_Y33_N16
\U_VGA|Add4~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~46_combout\ = (\U_VGA|y_pos_p1\(24) & (\U_VGA|Add4~45\ & VCC)) # (!\U_VGA|y_pos_p1\(24) & (!\U_VGA|Add4~45\))
-- \U_VGA|Add4~47\ = CARRY((!\U_VGA|y_pos_p1\(24) & !\U_VGA|Add4~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(24),
	datad => VCC,
	cin => \U_VGA|Add4~45\,
	combout => \U_VGA|Add4~46_combout\,
	cout => \U_VGA|Add4~47\);

-- Location: LCCOMB_X46_Y33_N20
\U_VGA|y_pos_p1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~18_combout\ = (\U_VGA|Add4~60_combout\ & (((\U_VGA|Add5~46_combout\)))) # (!\U_VGA|Add4~60_combout\ & ((\switch[0]~input_o\ & (\U_VGA|Add4~46_combout\)) # (!\switch[0]~input_o\ & ((\U_VGA|Add5~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add4~60_combout\,
	datab => \U_VGA|Add4~46_combout\,
	datac => \switch[0]~input_o\,
	datad => \U_VGA|Add5~46_combout\,
	combout => \U_VGA|y_pos_p1~18_combout\);

-- Location: FF_X45_Y33_N25
\U_VGA|y_pos_p1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p1~18_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p1[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(24));

-- Location: LCCOMB_X47_Y33_N18
\U_VGA|Add4~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~48_combout\ = (\U_VGA|y_pos_p1\(25) & ((GND) # (!\U_VGA|Add4~47\))) # (!\U_VGA|y_pos_p1\(25) & (\U_VGA|Add4~47\ $ (GND)))
-- \U_VGA|Add4~49\ = CARRY((\U_VGA|y_pos_p1\(25)) # (!\U_VGA|Add4~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(25),
	datad => VCC,
	cin => \U_VGA|Add4~47\,
	combout => \U_VGA|Add4~48_combout\,
	cout => \U_VGA|Add4~49\);

-- Location: LCCOMB_X46_Y33_N2
\U_VGA|y_pos_p1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~17_combout\ = (\U_VGA|Add4~60_combout\ & (((\U_VGA|Add5~48_combout\)))) # (!\U_VGA|Add4~60_combout\ & ((\switch[0]~input_o\ & (\U_VGA|Add4~48_combout\)) # (!\switch[0]~input_o\ & ((\U_VGA|Add5~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add4~60_combout\,
	datab => \U_VGA|Add4~48_combout\,
	datac => \switch[0]~input_o\,
	datad => \U_VGA|Add5~48_combout\,
	combout => \U_VGA|y_pos_p1~17_combout\);

-- Location: FF_X45_Y33_N9
\U_VGA|y_pos_p1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p1~17_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p1[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(25));

-- Location: LCCOMB_X47_Y33_N20
\U_VGA|Add4~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~50_combout\ = (\U_VGA|y_pos_p1\(26) & (\U_VGA|Add4~49\ & VCC)) # (!\U_VGA|y_pos_p1\(26) & (!\U_VGA|Add4~49\))
-- \U_VGA|Add4~51\ = CARRY((!\U_VGA|y_pos_p1\(26) & !\U_VGA|Add4~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(26),
	datad => VCC,
	cin => \U_VGA|Add4~49\,
	combout => \U_VGA|Add4~50_combout\,
	cout => \U_VGA|Add4~51\);

-- Location: LCCOMB_X46_Y33_N12
\U_VGA|y_pos_p1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~16_combout\ = (\switch[0]~input_o\ & ((\U_VGA|Add4~60_combout\ & ((\U_VGA|Add5~50_combout\))) # (!\U_VGA|Add4~60_combout\ & (\U_VGA|Add4~50_combout\)))) # (!\switch[0]~input_o\ & (((\U_VGA|Add5~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add4~50_combout\,
	datab => \switch[0]~input_o\,
	datac => \U_VGA|Add4~60_combout\,
	datad => \U_VGA|Add5~50_combout\,
	combout => \U_VGA|y_pos_p1~16_combout\);

-- Location: FF_X45_Y33_N13
\U_VGA|y_pos_p1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p1~16_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p1[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(26));

-- Location: LCCOMB_X47_Y33_N22
\U_VGA|Add4~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~52_combout\ = (\U_VGA|y_pos_p1\(27) & ((GND) # (!\U_VGA|Add4~51\))) # (!\U_VGA|y_pos_p1\(27) & (\U_VGA|Add4~51\ $ (GND)))
-- \U_VGA|Add4~53\ = CARRY((\U_VGA|y_pos_p1\(27)) # (!\U_VGA|Add4~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(27),
	datad => VCC,
	cin => \U_VGA|Add4~51\,
	combout => \U_VGA|Add4~52_combout\,
	cout => \U_VGA|Add4~53\);

-- Location: LCCOMB_X46_Y33_N6
\U_VGA|y_pos_p1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~15_combout\ = (\switch[0]~input_o\ & ((\U_VGA|Add4~60_combout\ & ((\U_VGA|Add5~52_combout\))) # (!\U_VGA|Add4~60_combout\ & (\U_VGA|Add4~52_combout\)))) # (!\switch[0]~input_o\ & (((\U_VGA|Add5~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add4~52_combout\,
	datab => \switch[0]~input_o\,
	datac => \U_VGA|Add4~60_combout\,
	datad => \U_VGA|Add5~52_combout\,
	combout => \U_VGA|y_pos_p1~15_combout\);

-- Location: FF_X46_Y33_N7
\U_VGA|y_pos_p1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|y_pos_p1~15_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	ena => \U_VGA|y_pos_p1[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(27));

-- Location: LCCOMB_X47_Y33_N24
\U_VGA|Add4~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~54_combout\ = (\U_VGA|y_pos_p1\(28) & (\U_VGA|Add4~53\ & VCC)) # (!\U_VGA|y_pos_p1\(28) & (!\U_VGA|Add4~53\))
-- \U_VGA|Add4~55\ = CARRY((!\U_VGA|y_pos_p1\(28) & !\U_VGA|Add4~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(28),
	datad => VCC,
	cin => \U_VGA|Add4~53\,
	combout => \U_VGA|Add4~54_combout\,
	cout => \U_VGA|Add4~55\);

-- Location: LCCOMB_X46_Y33_N30
\U_VGA|y_pos_p1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~14_combout\ = (\U_VGA|Add4~60_combout\ & (((\U_VGA|Add5~54_combout\)))) # (!\U_VGA|Add4~60_combout\ & ((\switch[0]~input_o\ & (\U_VGA|Add4~54_combout\)) # (!\switch[0]~input_o\ & ((\U_VGA|Add5~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add4~60_combout\,
	datab => \U_VGA|Add4~54_combout\,
	datac => \switch[0]~input_o\,
	datad => \U_VGA|Add5~54_combout\,
	combout => \U_VGA|y_pos_p1~14_combout\);

-- Location: FF_X45_Y33_N1
\U_VGA|y_pos_p1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p1~14_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p1[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(28));

-- Location: LCCOMB_X47_Y33_N26
\U_VGA|Add4~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~56_combout\ = (\U_VGA|y_pos_p1\(29) & ((GND) # (!\U_VGA|Add4~55\))) # (!\U_VGA|y_pos_p1\(29) & (\U_VGA|Add4~55\ $ (GND)))
-- \U_VGA|Add4~57\ = CARRY((\U_VGA|y_pos_p1\(29)) # (!\U_VGA|Add4~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(29),
	datad => VCC,
	cin => \U_VGA|Add4~55\,
	combout => \U_VGA|Add4~56_combout\,
	cout => \U_VGA|Add4~57\);

-- Location: LCCOMB_X46_Y33_N8
\U_VGA|y_pos_p1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~13_combout\ = (\U_VGA|Add4~60_combout\ & (((\U_VGA|Add5~56_combout\)))) # (!\U_VGA|Add4~60_combout\ & ((\switch[0]~input_o\ & (\U_VGA|Add4~56_combout\)) # (!\switch[0]~input_o\ & ((\U_VGA|Add5~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add4~60_combout\,
	datab => \U_VGA|Add4~56_combout\,
	datac => \switch[0]~input_o\,
	datad => \U_VGA|Add5~56_combout\,
	combout => \U_VGA|y_pos_p1~13_combout\);

-- Location: FF_X45_Y33_N19
\U_VGA|y_pos_p1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p1~13_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p1[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(29));

-- Location: LCCOMB_X47_Y33_N28
\U_VGA|Add4~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~58_combout\ = (\U_VGA|y_pos_p1\(30) & (\U_VGA|Add4~57\ & VCC)) # (!\U_VGA|y_pos_p1\(30) & (!\U_VGA|Add4~57\))
-- \U_VGA|Add4~59\ = CARRY((!\U_VGA|y_pos_p1\(30) & !\U_VGA|Add4~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(30),
	datad => VCC,
	cin => \U_VGA|Add4~57\,
	combout => \U_VGA|Add4~58_combout\,
	cout => \U_VGA|Add4~59\);

-- Location: LCCOMB_X46_Y33_N4
\U_VGA|y_pos_p1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~12_combout\ = (\switch[0]~input_o\ & ((\U_VGA|Add4~60_combout\ & ((\U_VGA|Add5~58_combout\))) # (!\U_VGA|Add4~60_combout\ & (\U_VGA|Add4~58_combout\)))) # (!\switch[0]~input_o\ & (((\U_VGA|Add5~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add4~58_combout\,
	datab => \switch[0]~input_o\,
	datac => \U_VGA|Add4~60_combout\,
	datad => \U_VGA|Add5~58_combout\,
	combout => \U_VGA|y_pos_p1~12_combout\);

-- Location: FF_X46_Y33_N5
\U_VGA|y_pos_p1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|y_pos_p1~12_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	ena => \U_VGA|y_pos_p1[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(30));

-- Location: LCCOMB_X47_Y36_N30
\U_VGA|Add5~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~60_combout\ = \U_VGA|y_pos_p1\(31) $ (!\U_VGA|Add5~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(31),
	cin => \U_VGA|Add5~59\,
	combout => \U_VGA|Add5~60_combout\);

-- Location: LCCOMB_X43_Y38_N8
\U_VGA|y_pos_p1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~11_combout\ = (\U_VGA|Add5~60_combout\ & ((\U_VGA|Add4~60_combout\) # (!\switch[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \U_VGA|Add4~60_combout\,
	datac => \U_VGA|Add5~60_combout\,
	combout => \U_VGA|y_pos_p1~11_combout\);

-- Location: FF_X44_Y36_N5
\U_VGA|y_pos_p1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p1~11_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p1[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(31));

-- Location: LCCOMB_X47_Y33_N30
\U_VGA|Add4~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~60_combout\ = \U_VGA|Add4~59\ $ (\U_VGA|y_pos_p1\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_VGA|y_pos_p1\(31),
	cin => \U_VGA|Add4~59\,
	combout => \U_VGA|Add4~60_combout\);

-- Location: LCCOMB_X46_Y37_N28
\U_VGA|y_pos_p1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~0_combout\ = (\U_VGA|Add4~60_combout\ & (((\U_VGA|Add5~16_combout\)))) # (!\U_VGA|Add4~60_combout\ & ((\switch[0]~input_o\ & ((\U_VGA|Add4~16_combout\))) # (!\switch[0]~input_o\ & (\U_VGA|Add5~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add4~60_combout\,
	datab => \switch[0]~input_o\,
	datac => \U_VGA|Add5~16_combout\,
	datad => \U_VGA|Add4~16_combout\,
	combout => \U_VGA|y_pos_p1~0_combout\);

-- Location: FF_X45_Y36_N17
\U_VGA|y_pos_p1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p1~0_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p1[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(9));

-- Location: LCCOMB_X46_Y34_N10
\U_VGA|LessThan20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan20~1_cout\ = CARRY((!\U_VGA|sync|v_counter\(1) & \U_VGA|y_pos_p1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(1),
	datab => \U_VGA|y_pos_p1\(1),
	datad => VCC,
	cout => \U_VGA|LessThan20~1_cout\);

-- Location: LCCOMB_X46_Y34_N12
\U_VGA|LessThan20~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan20~3_cout\ = CARRY((\U_VGA|y_pos_p1\(2) & (\U_VGA|sync|v_counter\(2) & !\U_VGA|LessThan20~1_cout\)) # (!\U_VGA|y_pos_p1\(2) & ((\U_VGA|sync|v_counter\(2)) # (!\U_VGA|LessThan20~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(2),
	datab => \U_VGA|sync|v_counter\(2),
	datad => VCC,
	cin => \U_VGA|LessThan20~1_cout\,
	cout => \U_VGA|LessThan20~3_cout\);

-- Location: LCCOMB_X46_Y34_N14
\U_VGA|LessThan20~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan20~5_cout\ = CARRY((\U_VGA|y_pos_p1\(3) & (!\U_VGA|sync|v_counter\(3) & !\U_VGA|LessThan20~3_cout\)) # (!\U_VGA|y_pos_p1\(3) & ((!\U_VGA|LessThan20~3_cout\) # (!\U_VGA|sync|v_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(3),
	datab => \U_VGA|sync|v_counter\(3),
	datad => VCC,
	cin => \U_VGA|LessThan20~3_cout\,
	cout => \U_VGA|LessThan20~5_cout\);

-- Location: LCCOMB_X46_Y34_N16
\U_VGA|LessThan20~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan20~7_cout\ = CARRY((\U_VGA|sync|v_counter\(4) & ((!\U_VGA|LessThan20~5_cout\) # (!\U_VGA|y_pos_p1\(4)))) # (!\U_VGA|sync|v_counter\(4) & (!\U_VGA|y_pos_p1\(4) & !\U_VGA|LessThan20~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(4),
	datab => \U_VGA|y_pos_p1\(4),
	datad => VCC,
	cin => \U_VGA|LessThan20~5_cout\,
	cout => \U_VGA|LessThan20~7_cout\);

-- Location: LCCOMB_X46_Y34_N18
\U_VGA|LessThan20~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan20~9_cout\ = CARRY((\U_VGA|sync|v_counter\(5) & (\U_VGA|y_pos_p1\(5) & !\U_VGA|LessThan20~7_cout\)) # (!\U_VGA|sync|v_counter\(5) & ((\U_VGA|y_pos_p1\(5)) # (!\U_VGA|LessThan20~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(5),
	datab => \U_VGA|y_pos_p1\(5),
	datad => VCC,
	cin => \U_VGA|LessThan20~7_cout\,
	cout => \U_VGA|LessThan20~9_cout\);

-- Location: LCCOMB_X46_Y34_N20
\U_VGA|LessThan20~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan20~11_cout\ = CARRY((\U_VGA|sync|v_counter\(6) & ((\U_VGA|y_pos_p1\(6)) # (!\U_VGA|LessThan20~9_cout\))) # (!\U_VGA|sync|v_counter\(6) & (\U_VGA|y_pos_p1\(6) & !\U_VGA|LessThan20~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(6),
	datab => \U_VGA|y_pos_p1\(6),
	datad => VCC,
	cin => \U_VGA|LessThan20~9_cout\,
	cout => \U_VGA|LessThan20~11_cout\);

-- Location: LCCOMB_X46_Y34_N22
\U_VGA|LessThan20~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan20~13_cout\ = CARRY((\U_VGA|sync|v_counter\(7) & (!\U_VGA|y_pos_p1\(7) & !\U_VGA|LessThan20~11_cout\)) # (!\U_VGA|sync|v_counter\(7) & ((!\U_VGA|LessThan20~11_cout\) # (!\U_VGA|y_pos_p1\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(7),
	datab => \U_VGA|y_pos_p1\(7),
	datad => VCC,
	cin => \U_VGA|LessThan20~11_cout\,
	cout => \U_VGA|LessThan20~13_cout\);

-- Location: LCCOMB_X46_Y34_N24
\U_VGA|LessThan20~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan20~15_cout\ = CARRY((\U_VGA|y_pos_p1\(8) & (\U_VGA|sync|v_counter\(8) & !\U_VGA|LessThan20~13_cout\)) # (!\U_VGA|y_pos_p1\(8) & ((\U_VGA|sync|v_counter\(8)) # (!\U_VGA|LessThan20~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(8),
	datab => \U_VGA|sync|v_counter\(8),
	datad => VCC,
	cin => \U_VGA|LessThan20~13_cout\,
	cout => \U_VGA|LessThan20~15_cout\);

-- Location: LCCOMB_X46_Y34_N26
\U_VGA|LessThan20~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan20~16_combout\ = (\U_VGA|y_pos_p1\(9) & ((!\U_VGA|sync|v_counter\(9)) # (!\U_VGA|LessThan20~15_cout\))) # (!\U_VGA|y_pos_p1\(9) & (!\U_VGA|LessThan20~15_cout\ & !\U_VGA|sync|v_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(9),
	datad => \U_VGA|sync|v_counter\(9),
	cin => \U_VGA|LessThan20~15_cout\,
	combout => \U_VGA|LessThan20~16_combout\);

-- Location: LCCOMB_X45_Y34_N2
\U_VGA|Add11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add11~0_combout\ = \U_VGA|y_pos_p1\(1) $ (VCC)
-- \U_VGA|Add11~1\ = CARRY(\U_VGA|y_pos_p1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(1),
	datad => VCC,
	combout => \U_VGA|Add11~0_combout\,
	cout => \U_VGA|Add11~1\);

-- Location: LCCOMB_X45_Y34_N4
\U_VGA|Add11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add11~2_combout\ = (\U_VGA|y_pos_p1\(2) & (!\U_VGA|Add11~1\)) # (!\U_VGA|y_pos_p1\(2) & ((\U_VGA|Add11~1\) # (GND)))
-- \U_VGA|Add11~3\ = CARRY((!\U_VGA|Add11~1\) # (!\U_VGA|y_pos_p1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(2),
	datad => VCC,
	cin => \U_VGA|Add11~1\,
	combout => \U_VGA|Add11~2_combout\,
	cout => \U_VGA|Add11~3\);

-- Location: LCCOMB_X45_Y34_N6
\U_VGA|Add11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add11~4_combout\ = (\U_VGA|y_pos_p1\(3) & (!\U_VGA|Add11~3\ & VCC)) # (!\U_VGA|y_pos_p1\(3) & (\U_VGA|Add11~3\ $ (GND)))
-- \U_VGA|Add11~5\ = CARRY((!\U_VGA|y_pos_p1\(3) & !\U_VGA|Add11~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(3),
	datad => VCC,
	cin => \U_VGA|Add11~3\,
	combout => \U_VGA|Add11~4_combout\,
	cout => \U_VGA|Add11~5\);

-- Location: LCCOMB_X45_Y34_N8
\U_VGA|Add11~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add11~6_combout\ = (\U_VGA|y_pos_p1\(4) & (\U_VGA|Add11~5\ & VCC)) # (!\U_VGA|y_pos_p1\(4) & (!\U_VGA|Add11~5\))
-- \U_VGA|Add11~7\ = CARRY((!\U_VGA|y_pos_p1\(4) & !\U_VGA|Add11~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(4),
	datad => VCC,
	cin => \U_VGA|Add11~5\,
	combout => \U_VGA|Add11~6_combout\,
	cout => \U_VGA|Add11~7\);

-- Location: LCCOMB_X45_Y34_N10
\U_VGA|Add11~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add11~8_combout\ = (\U_VGA|y_pos_p1\(5) & ((GND) # (!\U_VGA|Add11~7\))) # (!\U_VGA|y_pos_p1\(5) & (\U_VGA|Add11~7\ $ (GND)))
-- \U_VGA|Add11~9\ = CARRY((\U_VGA|y_pos_p1\(5)) # (!\U_VGA|Add11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(5),
	datad => VCC,
	cin => \U_VGA|Add11~7\,
	combout => \U_VGA|Add11~8_combout\,
	cout => \U_VGA|Add11~9\);

-- Location: LCCOMB_X45_Y34_N12
\U_VGA|Add11~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add11~10_combout\ = (\U_VGA|y_pos_p1\(6) & ((\U_VGA|Add11~9\) # (GND))) # (!\U_VGA|y_pos_p1\(6) & (!\U_VGA|Add11~9\))
-- \U_VGA|Add11~11\ = CARRY((\U_VGA|y_pos_p1\(6)) # (!\U_VGA|Add11~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(6),
	datad => VCC,
	cin => \U_VGA|Add11~9\,
	combout => \U_VGA|Add11~10_combout\,
	cout => \U_VGA|Add11~11\);

-- Location: LCCOMB_X45_Y34_N14
\U_VGA|Add11~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add11~12_combout\ = (\U_VGA|y_pos_p1\(7) & (!\U_VGA|Add11~11\ & VCC)) # (!\U_VGA|y_pos_p1\(7) & (\U_VGA|Add11~11\ $ (GND)))
-- \U_VGA|Add11~13\ = CARRY((!\U_VGA|y_pos_p1\(7) & !\U_VGA|Add11~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(7),
	datad => VCC,
	cin => \U_VGA|Add11~11\,
	combout => \U_VGA|Add11~12_combout\,
	cout => \U_VGA|Add11~13\);

-- Location: LCCOMB_X45_Y34_N16
\U_VGA|Add11~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add11~14_combout\ = (\U_VGA|y_pos_p1\(8) & (!\U_VGA|Add11~13\)) # (!\U_VGA|y_pos_p1\(8) & ((\U_VGA|Add11~13\) # (GND)))
-- \U_VGA|Add11~15\ = CARRY((!\U_VGA|Add11~13\) # (!\U_VGA|y_pos_p1\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(8),
	datad => VCC,
	cin => \U_VGA|Add11~13\,
	combout => \U_VGA|Add11~14_combout\,
	cout => \U_VGA|Add11~15\);

-- Location: LCCOMB_X45_Y34_N18
\U_VGA|Add11~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add11~16_combout\ = (\U_VGA|y_pos_p1\(9) & (\U_VGA|Add11~15\ $ (GND))) # (!\U_VGA|y_pos_p1\(9) & (!\U_VGA|Add11~15\ & VCC))
-- \U_VGA|Add11~17\ = CARRY((\U_VGA|y_pos_p1\(9) & !\U_VGA|Add11~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(9),
	datad => VCC,
	cin => \U_VGA|Add11~15\,
	combout => \U_VGA|Add11~16_combout\,
	cout => \U_VGA|Add11~17\);

-- Location: LCCOMB_X43_Y34_N0
\U_VGA|LessThan21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan21~1_cout\ = CARRY(\U_VGA|sync|v_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(0),
	datad => VCC,
	cout => \U_VGA|LessThan21~1_cout\);

-- Location: LCCOMB_X43_Y34_N2
\U_VGA|LessThan21~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan21~3_cout\ = CARRY((\U_VGA|Add11~0_combout\ & ((!\U_VGA|LessThan21~1_cout\) # (!\U_VGA|sync|v_counter\(1)))) # (!\U_VGA|Add11~0_combout\ & (!\U_VGA|sync|v_counter\(1) & !\U_VGA|LessThan21~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add11~0_combout\,
	datab => \U_VGA|sync|v_counter\(1),
	datad => VCC,
	cin => \U_VGA|LessThan21~1_cout\,
	cout => \U_VGA|LessThan21~3_cout\);

-- Location: LCCOMB_X43_Y34_N4
\U_VGA|LessThan21~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan21~5_cout\ = CARRY((\U_VGA|sync|v_counter\(2) & ((!\U_VGA|LessThan21~3_cout\) # (!\U_VGA|Add11~2_combout\))) # (!\U_VGA|sync|v_counter\(2) & (!\U_VGA|Add11~2_combout\ & !\U_VGA|LessThan21~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(2),
	datab => \U_VGA|Add11~2_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan21~3_cout\,
	cout => \U_VGA|LessThan21~5_cout\);

-- Location: LCCOMB_X43_Y34_N6
\U_VGA|LessThan21~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan21~7_cout\ = CARRY((\U_VGA|sync|v_counter\(3) & (\U_VGA|Add11~4_combout\ & !\U_VGA|LessThan21~5_cout\)) # (!\U_VGA|sync|v_counter\(3) & ((\U_VGA|Add11~4_combout\) # (!\U_VGA|LessThan21~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(3),
	datab => \U_VGA|Add11~4_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan21~5_cout\,
	cout => \U_VGA|LessThan21~7_cout\);

-- Location: LCCOMB_X43_Y34_N8
\U_VGA|LessThan21~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan21~9_cout\ = CARRY((\U_VGA|Add11~6_combout\ & (\U_VGA|sync|v_counter\(4) & !\U_VGA|LessThan21~7_cout\)) # (!\U_VGA|Add11~6_combout\ & ((\U_VGA|sync|v_counter\(4)) # (!\U_VGA|LessThan21~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add11~6_combout\,
	datab => \U_VGA|sync|v_counter\(4),
	datad => VCC,
	cin => \U_VGA|LessThan21~7_cout\,
	cout => \U_VGA|LessThan21~9_cout\);

-- Location: LCCOMB_X43_Y34_N10
\U_VGA|LessThan21~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan21~11_cout\ = CARRY((\U_VGA|Add11~8_combout\ & ((!\U_VGA|LessThan21~9_cout\) # (!\U_VGA|sync|v_counter\(5)))) # (!\U_VGA|Add11~8_combout\ & (!\U_VGA|sync|v_counter\(5) & !\U_VGA|LessThan21~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add11~8_combout\,
	datab => \U_VGA|sync|v_counter\(5),
	datad => VCC,
	cin => \U_VGA|LessThan21~9_cout\,
	cout => \U_VGA|LessThan21~11_cout\);

-- Location: LCCOMB_X43_Y34_N12
\U_VGA|LessThan21~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan21~13_cout\ = CARRY((\U_VGA|sync|v_counter\(6) & ((!\U_VGA|LessThan21~11_cout\) # (!\U_VGA|Add11~10_combout\))) # (!\U_VGA|sync|v_counter\(6) & (!\U_VGA|Add11~10_combout\ & !\U_VGA|LessThan21~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(6),
	datab => \U_VGA|Add11~10_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan21~11_cout\,
	cout => \U_VGA|LessThan21~13_cout\);

-- Location: LCCOMB_X43_Y34_N14
\U_VGA|LessThan21~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan21~15_cout\ = CARRY((\U_VGA|Add11~12_combout\ & ((!\U_VGA|LessThan21~13_cout\) # (!\U_VGA|sync|v_counter\(7)))) # (!\U_VGA|Add11~12_combout\ & (!\U_VGA|sync|v_counter\(7) & !\U_VGA|LessThan21~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add11~12_combout\,
	datab => \U_VGA|sync|v_counter\(7),
	datad => VCC,
	cin => \U_VGA|LessThan21~13_cout\,
	cout => \U_VGA|LessThan21~15_cout\);

-- Location: LCCOMB_X43_Y34_N16
\U_VGA|LessThan21~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan21~17_cout\ = CARRY((\U_VGA|Add11~14_combout\ & (\U_VGA|sync|v_counter\(8) & !\U_VGA|LessThan21~15_cout\)) # (!\U_VGA|Add11~14_combout\ & ((\U_VGA|sync|v_counter\(8)) # (!\U_VGA|LessThan21~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add11~14_combout\,
	datab => \U_VGA|sync|v_counter\(8),
	datad => VCC,
	cin => \U_VGA|LessThan21~15_cout\,
	cout => \U_VGA|LessThan21~17_cout\);

-- Location: LCCOMB_X43_Y34_N18
\U_VGA|LessThan21~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan21~18_combout\ = (\U_VGA|sync|v_counter\(9) & ((\U_VGA|LessThan21~17_cout\) # (!\U_VGA|Add11~16_combout\))) # (!\U_VGA|sync|v_counter\(9) & (\U_VGA|LessThan21~17_cout\ & !\U_VGA|Add11~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|sync|v_counter\(9),
	datad => \U_VGA|Add11~16_combout\,
	cin => \U_VGA|LessThan21~17_cout\,
	combout => \U_VGA|LessThan21~18_combout\);

-- Location: LCCOMB_X44_Y32_N4
\U_VGA|red~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|red~5_combout\ = (\U_VGA|red~4_combout\ & (\U_VGA|red~3_combout\ & (!\U_VGA|LessThan20~16_combout\ & !\U_VGA|LessThan21~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|red~4_combout\,
	datab => \U_VGA|red~3_combout\,
	datac => \U_VGA|LessThan20~16_combout\,
	datad => \U_VGA|LessThan21~18_combout\,
	combout => \U_VGA|red~5_combout\);

-- Location: LCCOMB_X38_Y36_N14
\U_VGA|temp_y_pos~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_y_pos~9_combout\ = (\U_VGA|y_pos\(31) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos\(31),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_y_pos~9_combout\);

-- Location: LCCOMB_X41_Y38_N2
\U_VGA|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add0~1_combout\ = (\U_VGA|ball_move~2_combout\ & (\U_VGA|Add0~0_combout\ $ (VCC))) # (!\U_VGA|ball_move~2_combout\ & (\U_VGA|Add0~0_combout\ & VCC))
-- \U_VGA|Add0~2\ = CARRY((\U_VGA|ball_move~2_combout\ & \U_VGA|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~2_combout\,
	datab => \U_VGA|Add0~0_combout\,
	datad => VCC,
	combout => \U_VGA|Add0~1_combout\,
	cout => \U_VGA|Add0~2\);

-- Location: LCCOMB_X42_Y35_N0
\U_VGA|mov_y~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_y~70_combout\ = ((\U_VGA|ball_move~1_combout\ & !\U_VGA|Add0~1_combout\)) # (!\button_n[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~1_combout\,
	datab => \button_n[0]~input_o\,
	datac => \U_VGA|Add0~1_combout\,
	combout => \U_VGA|mov_y~70_combout\);

-- Location: FF_X42_Y35_N1
\U_VGA|mov_y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_y~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_y\(0));

-- Location: LCCOMB_X42_Y35_N6
\U_VGA|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add0~0_combout\ = \U_VGA|mov_y\(0) $ (!\U_VGA|ball_move~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|mov_y\(0),
	datad => \U_VGA|ball_move~2_combout\,
	combout => \U_VGA|Add0~0_combout\);

-- Location: LCCOMB_X41_Y38_N4
\U_VGA|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add0~3_combout\ = (\U_VGA|Add0~2\ & (\U_VGA|mov_y\(1) $ ((!\U_VGA|ball_move~2_combout\)))) # (!\U_VGA|Add0~2\ & ((\U_VGA|mov_y\(1) $ (\U_VGA|ball_move~2_combout\)) # (GND)))
-- \U_VGA|Add0~4\ = CARRY((\U_VGA|mov_y\(1) $ (!\U_VGA|ball_move~2_combout\)) # (!\U_VGA|Add0~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y\(1),
	datab => \U_VGA|ball_move~2_combout\,
	datad => VCC,
	cin => \U_VGA|Add0~2\,
	combout => \U_VGA|Add0~3_combout\,
	cout => \U_VGA|Add0~4\);

-- Location: LCCOMB_X40_Y37_N22
\U_VGA|mov_y~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_y~69_combout\ = (\button_n[0]~input_o\ & (\U_VGA|ball_move~1_combout\ & \U_VGA|Add0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|Add0~3_combout\,
	combout => \U_VGA|mov_y~69_combout\);

-- Location: FF_X40_Y37_N23
\U_VGA|mov_y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_y~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_y\(1));

-- Location: LCCOMB_X41_Y38_N6
\U_VGA|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add0~5_combout\ = (\U_VGA|Add0~4\ & ((\U_VGA|mov_y\(2) $ (\U_VGA|ball_move~2_combout\)))) # (!\U_VGA|Add0~4\ & (\U_VGA|mov_y\(2) $ (\U_VGA|ball_move~2_combout\ $ (VCC))))
-- \U_VGA|Add0~6\ = CARRY((!\U_VGA|Add0~4\ & (\U_VGA|mov_y\(2) $ (\U_VGA|ball_move~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y\(2),
	datab => \U_VGA|ball_move~2_combout\,
	datad => VCC,
	cin => \U_VGA|Add0~4\,
	combout => \U_VGA|Add0~5_combout\,
	cout => \U_VGA|Add0~6\);

-- Location: LCCOMB_X40_Y37_N0
\U_VGA|mov_y~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_y~68_combout\ = (\button_n[0]~input_o\ & (\U_VGA|ball_move~1_combout\ & \U_VGA|Add0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|Add0~5_combout\,
	combout => \U_VGA|mov_y~68_combout\);

-- Location: FF_X40_Y37_N1
\U_VGA|mov_y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_y~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_y\(2));

-- Location: LCCOMB_X41_Y38_N8
\U_VGA|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add0~7_combout\ = (\U_VGA|Add0~6\ & (\U_VGA|mov_y\(3) $ ((!\U_VGA|ball_move~2_combout\)))) # (!\U_VGA|Add0~6\ & ((\U_VGA|mov_y\(3) $ (\U_VGA|ball_move~2_combout\)) # (GND)))
-- \U_VGA|Add0~8\ = CARRY((\U_VGA|mov_y\(3) $ (!\U_VGA|ball_move~2_combout\)) # (!\U_VGA|Add0~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y\(3),
	datab => \U_VGA|ball_move~2_combout\,
	datad => VCC,
	cin => \U_VGA|Add0~6\,
	combout => \U_VGA|Add0~7_combout\,
	cout => \U_VGA|Add0~8\);

-- Location: LCCOMB_X40_Y38_N2
\U_VGA|mov_y~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_y~67_combout\ = (\button_n[0]~input_o\ & (\U_VGA|Add0~7_combout\ & \U_VGA|ball_move~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datab => \U_VGA|Add0~7_combout\,
	datac => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|mov_y~67_combout\);

-- Location: FF_X40_Y38_N3
\U_VGA|mov_y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_y~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_y\(3));

-- Location: LCCOMB_X41_Y38_N10
\U_VGA|Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add0~9_combout\ = (\U_VGA|Add0~8\ & ((\U_VGA|mov_y\(4) $ (\U_VGA|ball_move~2_combout\)))) # (!\U_VGA|Add0~8\ & (\U_VGA|mov_y\(4) $ (\U_VGA|ball_move~2_combout\ $ (VCC))))
-- \U_VGA|Add0~10\ = CARRY((!\U_VGA|Add0~8\ & (\U_VGA|mov_y\(4) $ (\U_VGA|ball_move~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y\(4),
	datab => \U_VGA|ball_move~2_combout\,
	datad => VCC,
	cin => \U_VGA|Add0~8\,
	combout => \U_VGA|Add0~9_combout\,
	cout => \U_VGA|Add0~10\);

-- Location: LCCOMB_X43_Y38_N26
\U_VGA|mov_y~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_y~66_combout\ = (\button_n[0]~input_o\ & (\U_VGA|Add0~9_combout\ & \U_VGA|ball_move~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datac => \U_VGA|Add0~9_combout\,
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|mov_y~66_combout\);

-- Location: FF_X43_Y38_N27
\U_VGA|mov_y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_y~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_y\(4));

-- Location: LCCOMB_X41_Y38_N12
\U_VGA|Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add0~11_combout\ = (\U_VGA|Add0~10\ & (\U_VGA|mov_y\(5) $ ((!\U_VGA|ball_move~2_combout\)))) # (!\U_VGA|Add0~10\ & ((\U_VGA|mov_y\(5) $ (\U_VGA|ball_move~2_combout\)) # (GND)))
-- \U_VGA|Add0~12\ = CARRY((\U_VGA|mov_y\(5) $ (!\U_VGA|ball_move~2_combout\)) # (!\U_VGA|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y\(5),
	datab => \U_VGA|ball_move~2_combout\,
	datad => VCC,
	cin => \U_VGA|Add0~10\,
	combout => \U_VGA|Add0~11_combout\,
	cout => \U_VGA|Add0~12\);

-- Location: LCCOMB_X40_Y38_N16
\U_VGA|mov_y~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_y~65_combout\ = (\button_n[0]~input_o\ & (\U_VGA|Add0~11_combout\ & \U_VGA|ball_move~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datab => \U_VGA|Add0~11_combout\,
	datac => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|mov_y~65_combout\);

-- Location: FF_X40_Y38_N17
\U_VGA|mov_y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_y~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_y\(5));

-- Location: LCCOMB_X41_Y38_N14
\U_VGA|Add0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add0~13_combout\ = (\U_VGA|Add0~12\ & ((\U_VGA|mov_y\(6) $ (\U_VGA|ball_move~2_combout\)))) # (!\U_VGA|Add0~12\ & (\U_VGA|mov_y\(6) $ (\U_VGA|ball_move~2_combout\ $ (VCC))))
-- \U_VGA|Add0~14\ = CARRY((!\U_VGA|Add0~12\ & (\U_VGA|mov_y\(6) $ (\U_VGA|ball_move~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y\(6),
	datab => \U_VGA|ball_move~2_combout\,
	datad => VCC,
	cin => \U_VGA|Add0~12\,
	combout => \U_VGA|Add0~13_combout\,
	cout => \U_VGA|Add0~14\);

-- Location: LCCOMB_X40_Y38_N10
\U_VGA|mov_y~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_y~64_combout\ = (\button_n[0]~input_o\ & (\U_VGA|Add0~13_combout\ & \U_VGA|ball_move~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datab => \U_VGA|Add0~13_combout\,
	datac => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|mov_y~64_combout\);

-- Location: FF_X40_Y38_N11
\U_VGA|mov_y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_y~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_y\(6));

-- Location: LCCOMB_X41_Y38_N16
\U_VGA|Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add0~15_combout\ = (\U_VGA|Add0~14\ & (\U_VGA|mov_y\(7) $ ((!\U_VGA|ball_move~2_combout\)))) # (!\U_VGA|Add0~14\ & ((\U_VGA|mov_y\(7) $ (\U_VGA|ball_move~2_combout\)) # (GND)))
-- \U_VGA|Add0~16\ = CARRY((\U_VGA|mov_y\(7) $ (!\U_VGA|ball_move~2_combout\)) # (!\U_VGA|Add0~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y\(7),
	datab => \U_VGA|ball_move~2_combout\,
	datad => VCC,
	cin => \U_VGA|Add0~14\,
	combout => \U_VGA|Add0~15_combout\,
	cout => \U_VGA|Add0~16\);

-- Location: LCCOMB_X40_Y38_N24
\U_VGA|mov_y~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_y~63_combout\ = (\button_n[0]~input_o\ & (\U_VGA|ball_move~1_combout\ & \U_VGA|Add0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|Add0~15_combout\,
	combout => \U_VGA|mov_y~63_combout\);

-- Location: FF_X40_Y38_N25
\U_VGA|mov_y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_y~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_y\(7));

-- Location: LCCOMB_X41_Y38_N18
\U_VGA|Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add0~17_combout\ = (\U_VGA|Add0~16\ & ((\U_VGA|ball_move~2_combout\ $ (\U_VGA|mov_y\(8))))) # (!\U_VGA|Add0~16\ & (\U_VGA|ball_move~2_combout\ $ (\U_VGA|mov_y\(8) $ (VCC))))
-- \U_VGA|Add0~18\ = CARRY((!\U_VGA|Add0~16\ & (\U_VGA|ball_move~2_combout\ $ (\U_VGA|mov_y\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~2_combout\,
	datab => \U_VGA|mov_y\(8),
	datad => VCC,
	cin => \U_VGA|Add0~16\,
	combout => \U_VGA|Add0~17_combout\,
	cout => \U_VGA|Add0~18\);

-- Location: LCCOMB_X42_Y38_N0
\U_VGA|mov_y~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_y~62_combout\ = (\button_n[0]~input_o\ & (\U_VGA|ball_move~1_combout\ & \U_VGA|Add0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|Add0~17_combout\,
	combout => \U_VGA|mov_y~62_combout\);

-- Location: FF_X42_Y38_N1
\U_VGA|mov_y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_y~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_y\(8));

-- Location: LCCOMB_X41_Y38_N20
\U_VGA|Add0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add0~19_combout\ = (\U_VGA|Add0~18\ & (\U_VGA|mov_y\(9) $ ((!\U_VGA|ball_move~2_combout\)))) # (!\U_VGA|Add0~18\ & ((\U_VGA|mov_y\(9) $ (\U_VGA|ball_move~2_combout\)) # (GND)))
-- \U_VGA|Add0~20\ = CARRY((\U_VGA|mov_y\(9) $ (!\U_VGA|ball_move~2_combout\)) # (!\U_VGA|Add0~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y\(9),
	datab => \U_VGA|ball_move~2_combout\,
	datad => VCC,
	cin => \U_VGA|Add0~18\,
	combout => \U_VGA|Add0~19_combout\,
	cout => \U_VGA|Add0~20\);

-- Location: LCCOMB_X39_Y38_N26
\U_VGA|mov_y~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_y~92_combout\ = (\button_n[0]~input_o\ & (\U_VGA|Add0~19_combout\ & \U_VGA|ball_move~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datac => \U_VGA|Add0~19_combout\,
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|mov_y~92_combout\);

-- Location: FF_X39_Y38_N27
\U_VGA|mov_y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_y~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_y\(9));

-- Location: LCCOMB_X41_Y38_N22
\U_VGA|Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add0~21_combout\ = (\U_VGA|Add0~20\ & ((\U_VGA|ball_move~2_combout\ $ (\U_VGA|mov_y\(10))))) # (!\U_VGA|Add0~20\ & (\U_VGA|ball_move~2_combout\ $ (\U_VGA|mov_y\(10) $ (VCC))))
-- \U_VGA|Add0~22\ = CARRY((!\U_VGA|Add0~20\ & (\U_VGA|ball_move~2_combout\ $ (\U_VGA|mov_y\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~2_combout\,
	datab => \U_VGA|mov_y\(10),
	datad => VCC,
	cin => \U_VGA|Add0~20\,
	combout => \U_VGA|Add0~21_combout\,
	cout => \U_VGA|Add0~22\);

-- Location: LCCOMB_X40_Y38_N28
\U_VGA|mov_y~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_y~91_combout\ = (\button_n[0]~input_o\ & (\U_VGA|ball_move~1_combout\ & \U_VGA|Add0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|Add0~21_combout\,
	combout => \U_VGA|mov_y~91_combout\);

-- Location: FF_X40_Y38_N29
\U_VGA|mov_y[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_y~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_y\(10));

-- Location: LCCOMB_X41_Y38_N24
\U_VGA|Add0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add0~23_combout\ = (\U_VGA|Add0~22\ & (\U_VGA|ball_move~2_combout\ $ ((!\U_VGA|mov_y\(11))))) # (!\U_VGA|Add0~22\ & ((\U_VGA|ball_move~2_combout\ $ (\U_VGA|mov_y\(11))) # (GND)))
-- \U_VGA|Add0~24\ = CARRY((\U_VGA|ball_move~2_combout\ $ (!\U_VGA|mov_y\(11))) # (!\U_VGA|Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~2_combout\,
	datab => \U_VGA|mov_y\(11),
	datad => VCC,
	cin => \U_VGA|Add0~22\,
	combout => \U_VGA|Add0~23_combout\,
	cout => \U_VGA|Add0~24\);

-- Location: LCCOMB_X39_Y38_N12
\U_VGA|mov_y~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_y~90_combout\ = (\button_n[0]~input_o\ & (\U_VGA|Add0~23_combout\ & \U_VGA|ball_move~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datac => \U_VGA|Add0~23_combout\,
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|mov_y~90_combout\);

-- Location: FF_X39_Y38_N13
\U_VGA|mov_y[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_y~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_y\(11));

-- Location: LCCOMB_X41_Y38_N26
\U_VGA|Add0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add0~25_combout\ = (\U_VGA|Add0~24\ & ((\U_VGA|ball_move~2_combout\ $ (\U_VGA|mov_y\(12))))) # (!\U_VGA|Add0~24\ & (\U_VGA|ball_move~2_combout\ $ (\U_VGA|mov_y\(12) $ (VCC))))
-- \U_VGA|Add0~26\ = CARRY((!\U_VGA|Add0~24\ & (\U_VGA|ball_move~2_combout\ $ (\U_VGA|mov_y\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~2_combout\,
	datab => \U_VGA|mov_y\(12),
	datad => VCC,
	cin => \U_VGA|Add0~24\,
	combout => \U_VGA|Add0~25_combout\,
	cout => \U_VGA|Add0~26\);

-- Location: LCCOMB_X40_Y38_N6
\U_VGA|mov_y~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_y~89_combout\ = (\button_n[0]~input_o\ & (\U_VGA|ball_move~1_combout\ & \U_VGA|Add0~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|Add0~25_combout\,
	combout => \U_VGA|mov_y~89_combout\);

-- Location: FF_X40_Y38_N7
\U_VGA|mov_y[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_y~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_y\(12));

-- Location: LCCOMB_X41_Y38_N28
\U_VGA|Add0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add0~27_combout\ = (\U_VGA|Add0~26\ & (\U_VGA|ball_move~2_combout\ $ ((!\U_VGA|mov_y\(13))))) # (!\U_VGA|Add0~26\ & ((\U_VGA|ball_move~2_combout\ $ (\U_VGA|mov_y\(13))) # (GND)))
-- \U_VGA|Add0~28\ = CARRY((\U_VGA|ball_move~2_combout\ $ (!\U_VGA|mov_y\(13))) # (!\U_VGA|Add0~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~2_combout\,
	datab => \U_VGA|mov_y\(13),
	datad => VCC,
	cin => \U_VGA|Add0~26\,
	combout => \U_VGA|Add0~27_combout\,
	cout => \U_VGA|Add0~28\);

-- Location: LCCOMB_X39_Y38_N10
\U_VGA|mov_y~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_y~88_combout\ = (\button_n[0]~input_o\ & (\U_VGA|ball_move~1_combout\ & \U_VGA|Add0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datab => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|Add0~27_combout\,
	combout => \U_VGA|mov_y~88_combout\);

-- Location: FF_X39_Y38_N11
\U_VGA|mov_y[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_y~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_y\(13));

-- Location: LCCOMB_X41_Y38_N30
\U_VGA|Add0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add0~29_combout\ = (\U_VGA|Add0~28\ & ((\U_VGA|ball_move~2_combout\ $ (\U_VGA|mov_y\(14))))) # (!\U_VGA|Add0~28\ & (\U_VGA|ball_move~2_combout\ $ (\U_VGA|mov_y\(14) $ (VCC))))
-- \U_VGA|Add0~30\ = CARRY((!\U_VGA|Add0~28\ & (\U_VGA|ball_move~2_combout\ $ (\U_VGA|mov_y\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~2_combout\,
	datab => \U_VGA|mov_y\(14),
	datad => VCC,
	cin => \U_VGA|Add0~28\,
	combout => \U_VGA|Add0~29_combout\,
	cout => \U_VGA|Add0~30\);

-- Location: LCCOMB_X40_Y38_N0
\U_VGA|mov_y~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_y~87_combout\ = (\U_VGA|Add0~29_combout\ & (\U_VGA|ball_move~1_combout\ & \button_n[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add0~29_combout\,
	datac => \U_VGA|ball_move~1_combout\,
	datad => \button_n[0]~input_o\,
	combout => \U_VGA|mov_y~87_combout\);

-- Location: FF_X40_Y38_N1
\U_VGA|mov_y[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_y~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_y\(14));

-- Location: LCCOMB_X41_Y37_N0
\U_VGA|Add0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add0~31_combout\ = (\U_VGA|Add0~30\ & (\U_VGA|mov_y\(15) $ ((!\U_VGA|ball_move~2_combout\)))) # (!\U_VGA|Add0~30\ & ((\U_VGA|mov_y\(15) $ (\U_VGA|ball_move~2_combout\)) # (GND)))
-- \U_VGA|Add0~32\ = CARRY((\U_VGA|mov_y\(15) $ (!\U_VGA|ball_move~2_combout\)) # (!\U_VGA|Add0~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y\(15),
	datab => \U_VGA|ball_move~2_combout\,
	datad => VCC,
	cin => \U_VGA|Add0~30\,
	combout => \U_VGA|Add0~31_combout\,
	cout => \U_VGA|Add0~32\);

-- Location: LCCOMB_X40_Y37_N26
\U_VGA|mov_y~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_y~86_combout\ = (\button_n[0]~input_o\ & (\U_VGA|Add0~31_combout\ & \U_VGA|ball_move~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datab => \U_VGA|Add0~31_combout\,
	datac => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|mov_y~86_combout\);

-- Location: FF_X40_Y37_N27
\U_VGA|mov_y[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_y~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_y\(15));

-- Location: LCCOMB_X41_Y37_N2
\U_VGA|Add0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add0~33_combout\ = (\U_VGA|Add0~32\ & ((\U_VGA|mov_y\(16) $ (\U_VGA|ball_move~2_combout\)))) # (!\U_VGA|Add0~32\ & (\U_VGA|mov_y\(16) $ (\U_VGA|ball_move~2_combout\ $ (VCC))))
-- \U_VGA|Add0~34\ = CARRY((!\U_VGA|Add0~32\ & (\U_VGA|mov_y\(16) $ (\U_VGA|ball_move~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y\(16),
	datab => \U_VGA|ball_move~2_combout\,
	datad => VCC,
	cin => \U_VGA|Add0~32\,
	combout => \U_VGA|Add0~33_combout\,
	cout => \U_VGA|Add0~34\);

-- Location: LCCOMB_X40_Y36_N26
\U_VGA|mov_y~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_y~85_combout\ = (\button_n[0]~input_o\ & (\U_VGA|Add0~33_combout\ & \U_VGA|ball_move~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datac => \U_VGA|Add0~33_combout\,
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|mov_y~85_combout\);

-- Location: FF_X40_Y36_N27
\U_VGA|mov_y[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_y~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_y\(16));

-- Location: LCCOMB_X41_Y37_N4
\U_VGA|Add0~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add0~35_combout\ = (\U_VGA|Add0~34\ & (\U_VGA|mov_y\(17) $ ((!\U_VGA|ball_move~2_combout\)))) # (!\U_VGA|Add0~34\ & ((\U_VGA|mov_y\(17) $ (\U_VGA|ball_move~2_combout\)) # (GND)))
-- \U_VGA|Add0~36\ = CARRY((\U_VGA|mov_y\(17) $ (!\U_VGA|ball_move~2_combout\)) # (!\U_VGA|Add0~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y\(17),
	datab => \U_VGA|ball_move~2_combout\,
	datad => VCC,
	cin => \U_VGA|Add0~34\,
	combout => \U_VGA|Add0~35_combout\,
	cout => \U_VGA|Add0~36\);

-- Location: LCCOMB_X40_Y37_N28
\U_VGA|mov_y~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_y~84_combout\ = (\button_n[0]~input_o\ & (\U_VGA|ball_move~1_combout\ & \U_VGA|Add0~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|Add0~35_combout\,
	combout => \U_VGA|mov_y~84_combout\);

-- Location: FF_X40_Y37_N29
\U_VGA|mov_y[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_y~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_y\(17));

-- Location: LCCOMB_X41_Y37_N6
\U_VGA|Add0~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add0~37_combout\ = (\U_VGA|Add0~36\ & ((\U_VGA|mov_y\(18) $ (\U_VGA|ball_move~2_combout\)))) # (!\U_VGA|Add0~36\ & (\U_VGA|mov_y\(18) $ (\U_VGA|ball_move~2_combout\ $ (VCC))))
-- \U_VGA|Add0~38\ = CARRY((!\U_VGA|Add0~36\ & (\U_VGA|mov_y\(18) $ (\U_VGA|ball_move~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y\(18),
	datab => \U_VGA|ball_move~2_combout\,
	datad => VCC,
	cin => \U_VGA|Add0~36\,
	combout => \U_VGA|Add0~37_combout\,
	cout => \U_VGA|Add0~38\);

-- Location: LCCOMB_X41_Y36_N16
\U_VGA|mov_y~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_y~83_combout\ = (\button_n[0]~input_o\ & (\U_VGA|Add0~37_combout\ & \U_VGA|ball_move~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datac => \U_VGA|Add0~37_combout\,
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|mov_y~83_combout\);

-- Location: FF_X41_Y36_N17
\U_VGA|mov_y[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_y~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_y\(18));

-- Location: LCCOMB_X41_Y37_N8
\U_VGA|Add0~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add0~39_combout\ = (\U_VGA|Add0~38\ & (\U_VGA|mov_y\(19) $ ((!\U_VGA|ball_move~2_combout\)))) # (!\U_VGA|Add0~38\ & ((\U_VGA|mov_y\(19) $ (\U_VGA|ball_move~2_combout\)) # (GND)))
-- \U_VGA|Add0~40\ = CARRY((\U_VGA|mov_y\(19) $ (!\U_VGA|ball_move~2_combout\)) # (!\U_VGA|Add0~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y\(19),
	datab => \U_VGA|ball_move~2_combout\,
	datad => VCC,
	cin => \U_VGA|Add0~38\,
	combout => \U_VGA|Add0~39_combout\,
	cout => \U_VGA|Add0~40\);

-- Location: LCCOMB_X40_Y37_N6
\U_VGA|mov_y~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_y~82_combout\ = (\button_n[0]~input_o\ & (\U_VGA|Add0~39_combout\ & \U_VGA|ball_move~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datab => \U_VGA|Add0~39_combout\,
	datac => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|mov_y~82_combout\);

-- Location: FF_X40_Y37_N7
\U_VGA|mov_y[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_y~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_y\(19));

-- Location: LCCOMB_X41_Y37_N10
\U_VGA|Add0~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add0~41_combout\ = (\U_VGA|Add0~40\ & ((\U_VGA|mov_y\(20) $ (\U_VGA|ball_move~2_combout\)))) # (!\U_VGA|Add0~40\ & (\U_VGA|mov_y\(20) $ (\U_VGA|ball_move~2_combout\ $ (VCC))))
-- \U_VGA|Add0~42\ = CARRY((!\U_VGA|Add0~40\ & (\U_VGA|mov_y\(20) $ (\U_VGA|ball_move~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y\(20),
	datab => \U_VGA|ball_move~2_combout\,
	datad => VCC,
	cin => \U_VGA|Add0~40\,
	combout => \U_VGA|Add0~41_combout\,
	cout => \U_VGA|Add0~42\);

-- Location: LCCOMB_X40_Y36_N16
\U_VGA|mov_y~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_y~81_combout\ = (\button_n[0]~input_o\ & (\U_VGA|Add0~41_combout\ & \U_VGA|ball_move~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datac => \U_VGA|Add0~41_combout\,
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|mov_y~81_combout\);

-- Location: FF_X40_Y36_N17
\U_VGA|mov_y[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_y~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_y\(20));

-- Location: LCCOMB_X41_Y37_N12
\U_VGA|Add0~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add0~43_combout\ = (\U_VGA|Add0~42\ & (\U_VGA|mov_y\(21) $ ((!\U_VGA|ball_move~2_combout\)))) # (!\U_VGA|Add0~42\ & ((\U_VGA|mov_y\(21) $ (\U_VGA|ball_move~2_combout\)) # (GND)))
-- \U_VGA|Add0~44\ = CARRY((\U_VGA|mov_y\(21) $ (!\U_VGA|ball_move~2_combout\)) # (!\U_VGA|Add0~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y\(21),
	datab => \U_VGA|ball_move~2_combout\,
	datad => VCC,
	cin => \U_VGA|Add0~42\,
	combout => \U_VGA|Add0~43_combout\,
	cout => \U_VGA|Add0~44\);

-- Location: LCCOMB_X40_Y36_N2
\U_VGA|mov_y~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_y~80_combout\ = (\U_VGA|ball_move~1_combout\ & (\button_n[0]~input_o\ & \U_VGA|Add0~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|ball_move~1_combout\,
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add0~43_combout\,
	combout => \U_VGA|mov_y~80_combout\);

-- Location: FF_X40_Y36_N3
\U_VGA|mov_y[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_y~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_y\(21));

-- Location: LCCOMB_X41_Y37_N14
\U_VGA|Add0~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add0~45_combout\ = (\U_VGA|Add0~44\ & ((\U_VGA|mov_y\(22) $ (\U_VGA|ball_move~2_combout\)))) # (!\U_VGA|Add0~44\ & (\U_VGA|mov_y\(22) $ (\U_VGA|ball_move~2_combout\ $ (VCC))))
-- \U_VGA|Add0~46\ = CARRY((!\U_VGA|Add0~44\ & (\U_VGA|mov_y\(22) $ (\U_VGA|ball_move~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y\(22),
	datab => \U_VGA|ball_move~2_combout\,
	datad => VCC,
	cin => \U_VGA|Add0~44\,
	combout => \U_VGA|Add0~45_combout\,
	cout => \U_VGA|Add0~46\);

-- Location: LCCOMB_X41_Y36_N26
\U_VGA|mov_y~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_y~79_combout\ = (\U_VGA|ball_move~1_combout\ & (\button_n[0]~input_o\ & \U_VGA|Add0~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~1_combout\,
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add0~45_combout\,
	combout => \U_VGA|mov_y~79_combout\);

-- Location: FF_X41_Y36_N27
\U_VGA|mov_y[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_y~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_y\(22));

-- Location: LCCOMB_X41_Y37_N16
\U_VGA|Add0~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add0~47_combout\ = (\U_VGA|Add0~46\ & (\U_VGA|ball_move~2_combout\ $ ((!\U_VGA|mov_y\(23))))) # (!\U_VGA|Add0~46\ & ((\U_VGA|ball_move~2_combout\ $ (\U_VGA|mov_y\(23))) # (GND)))
-- \U_VGA|Add0~48\ = CARRY((\U_VGA|ball_move~2_combout\ $ (!\U_VGA|mov_y\(23))) # (!\U_VGA|Add0~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~2_combout\,
	datab => \U_VGA|mov_y\(23),
	datad => VCC,
	cin => \U_VGA|Add0~46\,
	combout => \U_VGA|Add0~47_combout\,
	cout => \U_VGA|Add0~48\);

-- Location: LCCOMB_X41_Y36_N0
\U_VGA|mov_y~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_y~78_combout\ = (\U_VGA|ball_move~1_combout\ & (\button_n[0]~input_o\ & \U_VGA|Add0~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~1_combout\,
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add0~47_combout\,
	combout => \U_VGA|mov_y~78_combout\);

-- Location: FF_X41_Y36_N1
\U_VGA|mov_y[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_y~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_y\(23));

-- Location: LCCOMB_X41_Y37_N18
\U_VGA|Add0~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add0~49_combout\ = (\U_VGA|Add0~48\ & ((\U_VGA|ball_move~2_combout\ $ (\U_VGA|mov_y\(24))))) # (!\U_VGA|Add0~48\ & (\U_VGA|ball_move~2_combout\ $ (\U_VGA|mov_y\(24) $ (VCC))))
-- \U_VGA|Add0~50\ = CARRY((!\U_VGA|Add0~48\ & (\U_VGA|ball_move~2_combout\ $ (\U_VGA|mov_y\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~2_combout\,
	datab => \U_VGA|mov_y\(24),
	datad => VCC,
	cin => \U_VGA|Add0~48\,
	combout => \U_VGA|Add0~49_combout\,
	cout => \U_VGA|Add0~50\);

-- Location: LCCOMB_X41_Y36_N6
\U_VGA|mov_y~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_y~77_combout\ = (\button_n[0]~input_o\ & (\U_VGA|Add0~49_combout\ & \U_VGA|ball_move~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datac => \U_VGA|Add0~49_combout\,
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|mov_y~77_combout\);

-- Location: FF_X41_Y36_N7
\U_VGA|mov_y[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_y~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_y\(24));

-- Location: LCCOMB_X41_Y37_N20
\U_VGA|Add0~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add0~51_combout\ = (\U_VGA|Add0~50\ & (\U_VGA|ball_move~2_combout\ $ ((!\U_VGA|mov_y\(25))))) # (!\U_VGA|Add0~50\ & ((\U_VGA|ball_move~2_combout\ $ (\U_VGA|mov_y\(25))) # (GND)))
-- \U_VGA|Add0~52\ = CARRY((\U_VGA|ball_move~2_combout\ $ (!\U_VGA|mov_y\(25))) # (!\U_VGA|Add0~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~2_combout\,
	datab => \U_VGA|mov_y\(25),
	datad => VCC,
	cin => \U_VGA|Add0~50\,
	combout => \U_VGA|Add0~51_combout\,
	cout => \U_VGA|Add0~52\);

-- Location: LCCOMB_X41_Y36_N24
\U_VGA|mov_y~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_y~76_combout\ = (\button_n[0]~input_o\ & (\U_VGA|ball_move~1_combout\ & \U_VGA|Add0~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|Add0~51_combout\,
	combout => \U_VGA|mov_y~76_combout\);

-- Location: FF_X41_Y36_N25
\U_VGA|mov_y[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_y~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_y\(25));

-- Location: LCCOMB_X41_Y37_N22
\U_VGA|Add0~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add0~53_combout\ = (\U_VGA|Add0~52\ & ((\U_VGA|ball_move~2_combout\ $ (\U_VGA|mov_y\(26))))) # (!\U_VGA|Add0~52\ & (\U_VGA|ball_move~2_combout\ $ (\U_VGA|mov_y\(26) $ (VCC))))
-- \U_VGA|Add0~54\ = CARRY((!\U_VGA|Add0~52\ & (\U_VGA|ball_move~2_combout\ $ (\U_VGA|mov_y\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~2_combout\,
	datab => \U_VGA|mov_y\(26),
	datad => VCC,
	cin => \U_VGA|Add0~52\,
	combout => \U_VGA|Add0~53_combout\,
	cout => \U_VGA|Add0~54\);

-- Location: LCCOMB_X40_Y37_N16
\U_VGA|mov_y~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_y~75_combout\ = (\button_n[0]~input_o\ & (\U_VGA|Add0~53_combout\ & \U_VGA|ball_move~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datab => \U_VGA|Add0~53_combout\,
	datac => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|mov_y~75_combout\);

-- Location: FF_X40_Y37_N17
\U_VGA|mov_y[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_y~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_y\(26));

-- Location: LCCOMB_X41_Y37_N24
\U_VGA|Add0~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add0~55_combout\ = (\U_VGA|Add0~54\ & (\U_VGA|ball_move~2_combout\ $ ((!\U_VGA|mov_y\(27))))) # (!\U_VGA|Add0~54\ & ((\U_VGA|ball_move~2_combout\ $ (\U_VGA|mov_y\(27))) # (GND)))
-- \U_VGA|Add0~56\ = CARRY((\U_VGA|ball_move~2_combout\ $ (!\U_VGA|mov_y\(27))) # (!\U_VGA|Add0~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~2_combout\,
	datab => \U_VGA|mov_y\(27),
	datad => VCC,
	cin => \U_VGA|Add0~54\,
	combout => \U_VGA|Add0~55_combout\,
	cout => \U_VGA|Add0~56\);

-- Location: LCCOMB_X40_Y36_N20
\U_VGA|mov_y~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_y~74_combout\ = (\U_VGA|ball_move~1_combout\ & (\button_n[0]~input_o\ & \U_VGA|Add0~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|ball_move~1_combout\,
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add0~55_combout\,
	combout => \U_VGA|mov_y~74_combout\);

-- Location: FF_X40_Y36_N21
\U_VGA|mov_y[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_y~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_y\(27));

-- Location: LCCOMB_X41_Y37_N26
\U_VGA|Add0~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add0~57_combout\ = (\U_VGA|Add0~56\ & ((\U_VGA|ball_move~2_combout\ $ (\U_VGA|mov_y\(28))))) # (!\U_VGA|Add0~56\ & (\U_VGA|ball_move~2_combout\ $ (\U_VGA|mov_y\(28) $ (VCC))))
-- \U_VGA|Add0~58\ = CARRY((!\U_VGA|Add0~56\ & (\U_VGA|ball_move~2_combout\ $ (\U_VGA|mov_y\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~2_combout\,
	datab => \U_VGA|mov_y\(28),
	datad => VCC,
	cin => \U_VGA|Add0~56\,
	combout => \U_VGA|Add0~57_combout\,
	cout => \U_VGA|Add0~58\);

-- Location: LCCOMB_X40_Y37_N18
\U_VGA|mov_y~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_y~73_combout\ = (\button_n[0]~input_o\ & (\U_VGA|Add0~57_combout\ & \U_VGA|ball_move~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datab => \U_VGA|Add0~57_combout\,
	datac => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|mov_y~73_combout\);

-- Location: FF_X40_Y37_N19
\U_VGA|mov_y[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_y~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_y\(28));

-- Location: LCCOMB_X41_Y37_N28
\U_VGA|Add0~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add0~59_combout\ = (\U_VGA|Add0~58\ & (\U_VGA|ball_move~2_combout\ $ ((!\U_VGA|mov_y\(29))))) # (!\U_VGA|Add0~58\ & ((\U_VGA|ball_move~2_combout\ $ (\U_VGA|mov_y\(29))) # (GND)))
-- \U_VGA|Add0~60\ = CARRY((\U_VGA|ball_move~2_combout\ $ (!\U_VGA|mov_y\(29))) # (!\U_VGA|Add0~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~2_combout\,
	datab => \U_VGA|mov_y\(29),
	datad => VCC,
	cin => \U_VGA|Add0~58\,
	combout => \U_VGA|Add0~59_combout\,
	cout => \U_VGA|Add0~60\);

-- Location: LCCOMB_X41_Y36_N18
\U_VGA|mov_y~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_y~72_combout\ = (\U_VGA|ball_move~1_combout\ & (\button_n[0]~input_o\ & \U_VGA|Add0~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~1_combout\,
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add0~59_combout\,
	combout => \U_VGA|mov_y~72_combout\);

-- Location: FF_X41_Y36_N19
\U_VGA|mov_y[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_y~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_y\(29));

-- Location: LCCOMB_X41_Y37_N30
\U_VGA|Add0~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add0~61_combout\ = \U_VGA|mov_y\(30) $ (\U_VGA|Add0~60\ $ (!\U_VGA|ball_move~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|mov_y\(30),
	datad => \U_VGA|ball_move~2_combout\,
	cin => \U_VGA|Add0~60\,
	combout => \U_VGA|Add0~61_combout\);

-- Location: LCCOMB_X38_Y36_N28
\U_VGA|mov_y~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_y~71_combout\ = (\U_VGA|Add0~61_combout\ & (\button_n[0]~input_o\ & \U_VGA|ball_move~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add0~61_combout\,
	datab => \button_n[0]~input_o\,
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|mov_y~71_combout\);

-- Location: FF_X38_Y36_N29
\U_VGA|mov_y[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_y~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_y\(30));

-- Location: LCCOMB_X38_Y36_N2
\U_VGA|temp_mov_y~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_y~9_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add0~61_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_y\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|mov_y\(30),
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|Add0~61_combout\,
	combout => \U_VGA|temp_mov_y~9_combout\);

-- Location: LCCOMB_X41_Y36_N28
\U_VGA|temp_mov_y~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_y~10_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add0~59_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_y\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|mov_y\(29),
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|Add0~59_combout\,
	combout => \U_VGA|temp_mov_y~10_combout\);

-- Location: LCCOMB_X40_Y37_N20
\U_VGA|temp_mov_y~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_y~11_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add0~57_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_y\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|mov_y\(28),
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|Add0~57_combout\,
	combout => \U_VGA|temp_mov_y~11_combout\);

-- Location: LCCOMB_X40_Y36_N12
\U_VGA|temp_mov_y~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_y~12_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add0~55_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_y\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|mov_y\(27),
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|Add0~55_combout\,
	combout => \U_VGA|temp_mov_y~12_combout\);

-- Location: LCCOMB_X40_Y37_N14
\U_VGA|temp_mov_y~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_y~13_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add0~53_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_y\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|mov_y\(26),
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|Add0~53_combout\,
	combout => \U_VGA|temp_mov_y~13_combout\);

-- Location: LCCOMB_X40_Y36_N22
\U_VGA|temp_mov_y~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_y~14_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add0~51_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_y\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|ball_move~1_combout\,
	datac => \U_VGA|mov_y\(25),
	datad => \U_VGA|Add0~51_combout\,
	combout => \U_VGA|temp_mov_y~14_combout\);

-- Location: LCCOMB_X40_Y36_N0
\U_VGA|temp_mov_y~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_y~15_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add0~49_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_y\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|mov_y\(24),
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|Add0~49_combout\,
	combout => \U_VGA|temp_mov_y~15_combout\);

-- Location: LCCOMB_X40_Y36_N10
\U_VGA|temp_mov_y~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_y~16_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add0~47_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_y\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|mov_y\(23),
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|Add0~47_combout\,
	combout => \U_VGA|temp_mov_y~16_combout\);

-- Location: LCCOMB_X40_Y36_N14
\U_VGA|temp_mov_y~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_y~17_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add0~45_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_y\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|ball_move~1_combout\,
	datac => \U_VGA|mov_y\(22),
	datad => \U_VGA|Add0~45_combout\,
	combout => \U_VGA|temp_mov_y~17_combout\);

-- Location: LCCOMB_X40_Y36_N28
\U_VGA|temp_mov_y~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_y~18_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add0~43_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_y\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|mov_y\(21),
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|Add0~43_combout\,
	combout => \U_VGA|temp_mov_y~18_combout\);

-- Location: LCCOMB_X40_Y36_N30
\U_VGA|temp_mov_y~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_y~19_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add0~41_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_y\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|mov_y\(20),
	datac => \U_VGA|Add0~41_combout\,
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_mov_y~19_combout\);

-- Location: LCCOMB_X40_Y37_N8
\U_VGA|temp_mov_y~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_y~20_combout\ = (\U_VGA|ball_move~1_combout\ & (\U_VGA|Add0~39_combout\)) # (!\U_VGA|ball_move~1_combout\ & ((\U_VGA|mov_y\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~1_combout\,
	datac => \U_VGA|Add0~39_combout\,
	datad => \U_VGA|mov_y\(19),
	combout => \U_VGA|temp_mov_y~20_combout\);

-- Location: LCCOMB_X40_Y36_N24
\U_VGA|temp_mov_y~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_y~21_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add0~37_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_y\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~1_combout\,
	datac => \U_VGA|mov_y\(18),
	datad => \U_VGA|Add0~37_combout\,
	combout => \U_VGA|temp_mov_y~21_combout\);

-- Location: LCCOMB_X40_Y37_N30
\U_VGA|temp_mov_y~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_y~22_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add0~35_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_y\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|mov_y\(17),
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|Add0~35_combout\,
	combout => \U_VGA|temp_mov_y~22_combout\);

-- Location: LCCOMB_X40_Y36_N18
\U_VGA|temp_mov_y~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_y~23_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add0~33_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_y\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y\(16),
	datac => \U_VGA|Add0~33_combout\,
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_mov_y~23_combout\);

-- Location: LCCOMB_X40_Y37_N4
\U_VGA|temp_mov_y~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_y~24_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add0~31_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_y\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y\(15),
	datab => \U_VGA|Add0~31_combout\,
	datac => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_mov_y~24_combout\);

-- Location: LCCOMB_X40_Y38_N22
\U_VGA|temp_mov_y~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_y~25_combout\ = (\U_VGA|ball_move~1_combout\ & (\U_VGA|Add0~29_combout\)) # (!\U_VGA|ball_move~1_combout\ & ((\U_VGA|mov_y\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~1_combout\,
	datac => \U_VGA|Add0~29_combout\,
	datad => \U_VGA|mov_y\(14),
	combout => \U_VGA|temp_mov_y~25_combout\);

-- Location: LCCOMB_X39_Y38_N28
\U_VGA|temp_mov_y~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_y~26_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add0~27_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_y\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y\(13),
	datab => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|Add0~27_combout\,
	combout => \U_VGA|temp_mov_y~26_combout\);

-- Location: LCCOMB_X40_Y38_N8
\U_VGA|temp_mov_y~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_y~27_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add0~25_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_y\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y\(12),
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|Add0~25_combout\,
	combout => \U_VGA|temp_mov_y~27_combout\);

-- Location: LCCOMB_X39_Y38_N30
\U_VGA|temp_mov_y~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_y~28_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add0~23_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_y\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y\(11),
	datac => \U_VGA|Add0~23_combout\,
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_mov_y~28_combout\);

-- Location: LCCOMB_X40_Y38_N14
\U_VGA|temp_mov_y~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_y~29_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add0~21_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_y\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|mov_y\(10),
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|Add0~21_combout\,
	combout => \U_VGA|temp_mov_y~29_combout\);

-- Location: LCCOMB_X39_Y38_N20
\U_VGA|temp_mov_y~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_y~30_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add0~19_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_y\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y\(9),
	datac => \U_VGA|Add0~19_combout\,
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_mov_y~30_combout\);

-- Location: LCCOMB_X41_Y38_N0
\U_VGA|temp_mov_y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_y~0_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add0~17_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_y\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|mov_y\(8),
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|Add0~17_combout\,
	combout => \U_VGA|temp_mov_y~0_combout\);

-- Location: LCCOMB_X40_Y38_N20
\U_VGA|temp_mov_y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_y~1_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add0~15_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_y\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|mov_y\(7),
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|Add0~15_combout\,
	combout => \U_VGA|temp_mov_y~1_combout\);

-- Location: LCCOMB_X40_Y38_N26
\U_VGA|temp_mov_y~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_y~2_combout\ = (\U_VGA|ball_move~1_combout\ & (\U_VGA|Add0~13_combout\)) # (!\U_VGA|ball_move~1_combout\ & ((\U_VGA|mov_y\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~1_combout\,
	datac => \U_VGA|Add0~13_combout\,
	datad => \U_VGA|mov_y\(6),
	combout => \U_VGA|temp_mov_y~2_combout\);

-- Location: LCCOMB_X40_Y38_N12
\U_VGA|temp_mov_y~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_y~3_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add0~11_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_y\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~1_combout\,
	datab => \U_VGA|mov_y\(5),
	datac => \U_VGA|Add0~11_combout\,
	combout => \U_VGA|temp_mov_y~3_combout\);

-- Location: LCCOMB_X40_Y38_N30
\U_VGA|temp_mov_y~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_y~4_combout\ = (\U_VGA|ball_move~1_combout\ & (\U_VGA|Add0~9_combout\)) # (!\U_VGA|ball_move~1_combout\ & ((\U_VGA|mov_y\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~1_combout\,
	datac => \U_VGA|Add0~9_combout\,
	datad => \U_VGA|mov_y\(4),
	combout => \U_VGA|temp_mov_y~4_combout\);

-- Location: LCCOMB_X40_Y38_N4
\U_VGA|temp_mov_y~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_y~5_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add0~7_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_y\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~1_combout\,
	datab => \U_VGA|mov_y\(3),
	datac => \U_VGA|Add0~7_combout\,
	combout => \U_VGA|temp_mov_y~5_combout\);

-- Location: LCCOMB_X40_Y37_N12
\U_VGA|temp_mov_y~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_y~6_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add0~5_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_y\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|mov_y\(2),
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|Add0~5_combout\,
	combout => \U_VGA|temp_mov_y~6_combout\);

-- Location: LCCOMB_X40_Y37_N10
\U_VGA|temp_mov_y~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_y~7_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add0~3_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y\(1),
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|Add0~3_combout\,
	combout => \U_VGA|temp_mov_y~7_combout\);

-- Location: LCCOMB_X40_Y37_N24
\U_VGA|temp_mov_y~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_y~8_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add0~1_combout\))) # (!\U_VGA|ball_move~1_combout\ & (!\U_VGA|mov_y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y\(0),
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|Add0~1_combout\,
	combout => \U_VGA|temp_mov_y~8_combout\);

-- Location: LCCOMB_X39_Y37_N2
\U_VGA|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~0_combout\ = (\U_VGA|temp_y_pos~8_combout\ & (\U_VGA|temp_mov_y~8_combout\ $ (VCC))) # (!\U_VGA|temp_y_pos~8_combout\ & (\U_VGA|temp_mov_y~8_combout\ & VCC))
-- \U_VGA|Add3~1\ = CARRY((\U_VGA|temp_y_pos~8_combout\ & \U_VGA|temp_mov_y~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_y_pos~8_combout\,
	datab => \U_VGA|temp_mov_y~8_combout\,
	datad => VCC,
	combout => \U_VGA|Add3~0_combout\,
	cout => \U_VGA|Add3~1\);

-- Location: LCCOMB_X45_Y37_N30
\U_VGA|Add3~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~26_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~0_combout\,
	combout => \U_VGA|Add3~26_combout\);

-- Location: FF_X45_Y37_N31
\U_VGA|y_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add3~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos\(1));

-- Location: LCCOMB_X38_Y37_N10
\U_VGA|temp_y_pos~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_y_pos~8_combout\ = (\U_VGA|ball_move~1_combout\ & \U_VGA|y_pos\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|y_pos\(1),
	combout => \U_VGA|temp_y_pos~8_combout\);

-- Location: LCCOMB_X39_Y37_N4
\U_VGA|Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~2_combout\ = (\U_VGA|temp_y_pos~7_combout\ & ((\U_VGA|temp_mov_y~7_combout\ & (\U_VGA|Add3~1\ & VCC)) # (!\U_VGA|temp_mov_y~7_combout\ & (!\U_VGA|Add3~1\)))) # (!\U_VGA|temp_y_pos~7_combout\ & ((\U_VGA|temp_mov_y~7_combout\ & 
-- (!\U_VGA|Add3~1\)) # (!\U_VGA|temp_mov_y~7_combout\ & ((\U_VGA|Add3~1\) # (GND)))))
-- \U_VGA|Add3~3\ = CARRY((\U_VGA|temp_y_pos~7_combout\ & (!\U_VGA|temp_mov_y~7_combout\ & !\U_VGA|Add3~1\)) # (!\U_VGA|temp_y_pos~7_combout\ & ((!\U_VGA|Add3~1\) # (!\U_VGA|temp_mov_y~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_y_pos~7_combout\,
	datab => \U_VGA|temp_mov_y~7_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~1\,
	combout => \U_VGA|Add3~2_combout\,
	cout => \U_VGA|Add3~3\);

-- Location: LCCOMB_X45_Y37_N4
\U_VGA|Add3~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~25_combout\ = (\U_VGA|Add3~2_combout\ & \button_n[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|Add3~2_combout\,
	datad => \button_n[0]~input_o\,
	combout => \U_VGA|Add3~25_combout\);

-- Location: FF_X45_Y37_N5
\U_VGA|y_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add3~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos\(2));

-- Location: LCCOMB_X37_Y37_N22
\U_VGA|temp_y_pos~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_y_pos~7_combout\ = (\U_VGA|y_pos\(2) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|y_pos\(2),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_y_pos~7_combout\);

-- Location: LCCOMB_X39_Y37_N6
\U_VGA|Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~4_combout\ = ((\U_VGA|temp_y_pos~6_combout\ $ (\U_VGA|temp_mov_y~6_combout\ $ (!\U_VGA|Add3~3\)))) # (GND)
-- \U_VGA|Add3~5\ = CARRY((\U_VGA|temp_y_pos~6_combout\ & ((\U_VGA|temp_mov_y~6_combout\) # (!\U_VGA|Add3~3\))) # (!\U_VGA|temp_y_pos~6_combout\ & (\U_VGA|temp_mov_y~6_combout\ & !\U_VGA|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_y_pos~6_combout\,
	datab => \U_VGA|temp_mov_y~6_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~3\,
	combout => \U_VGA|Add3~4_combout\,
	cout => \U_VGA|Add3~5\);

-- Location: LCCOMB_X45_Y37_N2
\U_VGA|Add3~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~24_combout\ = (\button_n[0]~input_o\ & !\U_VGA|Add3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~4_combout\,
	combout => \U_VGA|Add3~24_combout\);

-- Location: FF_X45_Y37_N3
\U_VGA|y_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add3~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos\(3));

-- Location: LCCOMB_X37_Y37_N4
\U_VGA|temp_y_pos~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_y_pos~6_combout\ = (!\U_VGA|ball_move~1_combout\) # (!\U_VGA|y_pos\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos\(3),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_y_pos~6_combout\);

-- Location: LCCOMB_X39_Y37_N8
\U_VGA|Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~6_combout\ = (\U_VGA|temp_y_pos~5_combout\ & ((\U_VGA|temp_mov_y~5_combout\ & (\U_VGA|Add3~5\ & VCC)) # (!\U_VGA|temp_mov_y~5_combout\ & (!\U_VGA|Add3~5\)))) # (!\U_VGA|temp_y_pos~5_combout\ & ((\U_VGA|temp_mov_y~5_combout\ & 
-- (!\U_VGA|Add3~5\)) # (!\U_VGA|temp_mov_y~5_combout\ & ((\U_VGA|Add3~5\) # (GND)))))
-- \U_VGA|Add3~7\ = CARRY((\U_VGA|temp_y_pos~5_combout\ & (!\U_VGA|temp_mov_y~5_combout\ & !\U_VGA|Add3~5\)) # (!\U_VGA|temp_y_pos~5_combout\ & ((!\U_VGA|Add3~5\) # (!\U_VGA|temp_mov_y~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_y_pos~5_combout\,
	datab => \U_VGA|temp_mov_y~5_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~5\,
	combout => \U_VGA|Add3~6_combout\,
	cout => \U_VGA|Add3~7\);

-- Location: LCCOMB_X45_Y37_N0
\U_VGA|Add3~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~23_combout\ = (\U_VGA|Add3~6_combout\ & \button_n[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|Add3~6_combout\,
	datad => \button_n[0]~input_o\,
	combout => \U_VGA|Add3~23_combout\);

-- Location: FF_X45_Y37_N1
\U_VGA|y_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add3~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos\(4));

-- Location: LCCOMB_X44_Y37_N22
\U_VGA|temp_y_pos~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_y_pos~5_combout\ = (\U_VGA|y_pos\(4) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|y_pos\(4),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_y_pos~5_combout\);

-- Location: LCCOMB_X39_Y37_N10
\U_VGA|Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~8_combout\ = ((\U_VGA|temp_y_pos~4_combout\ $ (\U_VGA|temp_mov_y~4_combout\ $ (!\U_VGA|Add3~7\)))) # (GND)
-- \U_VGA|Add3~9\ = CARRY((\U_VGA|temp_y_pos~4_combout\ & ((\U_VGA|temp_mov_y~4_combout\) # (!\U_VGA|Add3~7\))) # (!\U_VGA|temp_y_pos~4_combout\ & (\U_VGA|temp_mov_y~4_combout\ & !\U_VGA|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_y_pos~4_combout\,
	datab => \U_VGA|temp_mov_y~4_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~7\,
	combout => \U_VGA|Add3~8_combout\,
	cout => \U_VGA|Add3~9\);

-- Location: LCCOMB_X44_Y37_N30
\U_VGA|Add3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~22_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datac => \U_VGA|Add3~8_combout\,
	combout => \U_VGA|Add3~22_combout\);

-- Location: FF_X44_Y37_N31
\U_VGA|y_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add3~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos\(5));

-- Location: LCCOMB_X38_Y37_N8
\U_VGA|temp_y_pos~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_y_pos~4_combout\ = (\U_VGA|ball_move~1_combout\ & \U_VGA|y_pos\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|y_pos\(5),
	combout => \U_VGA|temp_y_pos~4_combout\);

-- Location: LCCOMB_X39_Y37_N12
\U_VGA|Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~10_combout\ = (\U_VGA|temp_mov_y~3_combout\ & ((\U_VGA|temp_y_pos~3_combout\ & (\U_VGA|Add3~9\ & VCC)) # (!\U_VGA|temp_y_pos~3_combout\ & (!\U_VGA|Add3~9\)))) # (!\U_VGA|temp_mov_y~3_combout\ & ((\U_VGA|temp_y_pos~3_combout\ & 
-- (!\U_VGA|Add3~9\)) # (!\U_VGA|temp_y_pos~3_combout\ & ((\U_VGA|Add3~9\) # (GND)))))
-- \U_VGA|Add3~11\ = CARRY((\U_VGA|temp_mov_y~3_combout\ & (!\U_VGA|temp_y_pos~3_combout\ & !\U_VGA|Add3~9\)) # (!\U_VGA|temp_mov_y~3_combout\ & ((!\U_VGA|Add3~9\) # (!\U_VGA|temp_y_pos~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_mov_y~3_combout\,
	datab => \U_VGA|temp_y_pos~3_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~9\,
	combout => \U_VGA|Add3~10_combout\,
	cout => \U_VGA|Add3~11\);

-- Location: LCCOMB_X44_Y37_N0
\U_VGA|Add3~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~21_combout\ = (\button_n[0]~input_o\ & !\U_VGA|Add3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~10_combout\,
	combout => \U_VGA|Add3~21_combout\);

-- Location: FF_X44_Y37_N1
\U_VGA|y_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add3~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos\(6));

-- Location: LCCOMB_X38_Y37_N6
\U_VGA|temp_y_pos~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_y_pos~3_combout\ = (!\U_VGA|ball_move~1_combout\) # (!\U_VGA|y_pos\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(6),
	datac => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_y_pos~3_combout\);

-- Location: LCCOMB_X39_Y37_N14
\U_VGA|Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~12_combout\ = ((\U_VGA|temp_mov_y~2_combout\ $ (\U_VGA|temp_y_pos~2_combout\ $ (!\U_VGA|Add3~11\)))) # (GND)
-- \U_VGA|Add3~13\ = CARRY((\U_VGA|temp_mov_y~2_combout\ & ((\U_VGA|temp_y_pos~2_combout\) # (!\U_VGA|Add3~11\))) # (!\U_VGA|temp_mov_y~2_combout\ & (\U_VGA|temp_y_pos~2_combout\ & !\U_VGA|Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_mov_y~2_combout\,
	datab => \U_VGA|temp_y_pos~2_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~11\,
	combout => \U_VGA|Add3~12_combout\,
	cout => \U_VGA|Add3~13\);

-- Location: LCCOMB_X44_Y34_N0
\U_VGA|Add3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~20_combout\ = (\button_n[0]~input_o\ & !\U_VGA|Add3~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~12_combout\,
	combout => \U_VGA|Add3~20_combout\);

-- Location: FF_X44_Y34_N1
\U_VGA|y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add3~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos\(7));

-- Location: LCCOMB_X38_Y37_N0
\U_VGA|temp_y_pos~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_y_pos~2_combout\ = (!\U_VGA|y_pos\(7)) # (!\U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|y_pos\(7),
	combout => \U_VGA|temp_y_pos~2_combout\);

-- Location: LCCOMB_X39_Y37_N16
\U_VGA|Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~14_combout\ = (\U_VGA|temp_y_pos~1_combout\ & ((\U_VGA|temp_mov_y~1_combout\ & (\U_VGA|Add3~13\ & VCC)) # (!\U_VGA|temp_mov_y~1_combout\ & (!\U_VGA|Add3~13\)))) # (!\U_VGA|temp_y_pos~1_combout\ & ((\U_VGA|temp_mov_y~1_combout\ & 
-- (!\U_VGA|Add3~13\)) # (!\U_VGA|temp_mov_y~1_combout\ & ((\U_VGA|Add3~13\) # (GND)))))
-- \U_VGA|Add3~15\ = CARRY((\U_VGA|temp_y_pos~1_combout\ & (!\U_VGA|temp_mov_y~1_combout\ & !\U_VGA|Add3~13\)) # (!\U_VGA|temp_y_pos~1_combout\ & ((!\U_VGA|Add3~13\) # (!\U_VGA|temp_mov_y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_y_pos~1_combout\,
	datab => \U_VGA|temp_mov_y~1_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~13\,
	combout => \U_VGA|Add3~14_combout\,
	cout => \U_VGA|Add3~15\);

-- Location: LCCOMB_X43_Y37_N4
\U_VGA|Add3~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~19_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~14_combout\,
	combout => \U_VGA|Add3~19_combout\);

-- Location: FF_X43_Y37_N5
\U_VGA|y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add3~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos\(8));

-- Location: LCCOMB_X38_Y37_N2
\U_VGA|temp_y_pos~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_y_pos~1_combout\ = (\U_VGA|ball_move~1_combout\ & \U_VGA|y_pos\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|y_pos\(8),
	combout => \U_VGA|temp_y_pos~1_combout\);

-- Location: LCCOMB_X39_Y37_N18
\U_VGA|Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~16_combout\ = ((\U_VGA|temp_y_pos~0_combout\ $ (\U_VGA|temp_mov_y~0_combout\ $ (!\U_VGA|Add3~15\)))) # (GND)
-- \U_VGA|Add3~17\ = CARRY((\U_VGA|temp_y_pos~0_combout\ & ((\U_VGA|temp_mov_y~0_combout\) # (!\U_VGA|Add3~15\))) # (!\U_VGA|temp_y_pos~0_combout\ & (\U_VGA|temp_mov_y~0_combout\ & !\U_VGA|Add3~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_y_pos~0_combout\,
	datab => \U_VGA|temp_mov_y~0_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~15\,
	combout => \U_VGA|Add3~16_combout\,
	cout => \U_VGA|Add3~17\);

-- Location: LCCOMB_X38_Y37_N16
\U_VGA|Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~18_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~16_combout\,
	combout => \U_VGA|Add3~18_combout\);

-- Location: FF_X38_Y37_N17
\U_VGA|y_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add3~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos\(9));

-- Location: LCCOMB_X38_Y37_N12
\U_VGA|temp_y_pos~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_y_pos~0_combout\ = (\U_VGA|ball_move~1_combout\ & \U_VGA|y_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|y_pos\(9),
	combout => \U_VGA|temp_y_pos~0_combout\);

-- Location: LCCOMB_X39_Y37_N20
\U_VGA|Add3~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~27_combout\ = (\U_VGA|temp_mov_y~30_combout\ & ((\U_VGA|temp_y_pos~30_combout\ & (\U_VGA|Add3~17\ & VCC)) # (!\U_VGA|temp_y_pos~30_combout\ & (!\U_VGA|Add3~17\)))) # (!\U_VGA|temp_mov_y~30_combout\ & ((\U_VGA|temp_y_pos~30_combout\ & 
-- (!\U_VGA|Add3~17\)) # (!\U_VGA|temp_y_pos~30_combout\ & ((\U_VGA|Add3~17\) # (GND)))))
-- \U_VGA|Add3~28\ = CARRY((\U_VGA|temp_mov_y~30_combout\ & (!\U_VGA|temp_y_pos~30_combout\ & !\U_VGA|Add3~17\)) # (!\U_VGA|temp_mov_y~30_combout\ & ((!\U_VGA|Add3~17\) # (!\U_VGA|temp_y_pos~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_mov_y~30_combout\,
	datab => \U_VGA|temp_y_pos~30_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~17\,
	combout => \U_VGA|Add3~27_combout\,
	cout => \U_VGA|Add3~28\);

-- Location: LCCOMB_X38_Y37_N22
\U_VGA|Add3~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~92_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datac => \U_VGA|Add3~27_combout\,
	combout => \U_VGA|Add3~92_combout\);

-- Location: FF_X38_Y37_N23
\U_VGA|y_pos[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add3~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos\(10));

-- Location: LCCOMB_X38_Y36_N6
\U_VGA|temp_y_pos~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_y_pos~30_combout\ = (\U_VGA|y_pos\(10) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|y_pos\(10),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_y_pos~30_combout\);

-- Location: LCCOMB_X39_Y37_N22
\U_VGA|Add3~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~29_combout\ = ((\U_VGA|temp_y_pos~29_combout\ $ (\U_VGA|temp_mov_y~29_combout\ $ (!\U_VGA|Add3~28\)))) # (GND)
-- \U_VGA|Add3~30\ = CARRY((\U_VGA|temp_y_pos~29_combout\ & ((\U_VGA|temp_mov_y~29_combout\) # (!\U_VGA|Add3~28\))) # (!\U_VGA|temp_y_pos~29_combout\ & (\U_VGA|temp_mov_y~29_combout\ & !\U_VGA|Add3~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_y_pos~29_combout\,
	datab => \U_VGA|temp_mov_y~29_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~28\,
	combout => \U_VGA|Add3~29_combout\,
	cout => \U_VGA|Add3~30\);

-- Location: LCCOMB_X38_Y37_N20
\U_VGA|Add3~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~91_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~29_combout\,
	combout => \U_VGA|Add3~91_combout\);

-- Location: FF_X38_Y37_N21
\U_VGA|y_pos[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add3~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos\(11));

-- Location: LCCOMB_X38_Y37_N14
\U_VGA|temp_y_pos~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_y_pos~29_combout\ = (\U_VGA|ball_move~1_combout\ & \U_VGA|y_pos\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|y_pos\(11),
	combout => \U_VGA|temp_y_pos~29_combout\);

-- Location: LCCOMB_X39_Y37_N24
\U_VGA|Add3~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~31_combout\ = (\U_VGA|temp_mov_y~28_combout\ & ((\U_VGA|temp_y_pos~28_combout\ & (\U_VGA|Add3~30\ & VCC)) # (!\U_VGA|temp_y_pos~28_combout\ & (!\U_VGA|Add3~30\)))) # (!\U_VGA|temp_mov_y~28_combout\ & ((\U_VGA|temp_y_pos~28_combout\ & 
-- (!\U_VGA|Add3~30\)) # (!\U_VGA|temp_y_pos~28_combout\ & ((\U_VGA|Add3~30\) # (GND)))))
-- \U_VGA|Add3~32\ = CARRY((\U_VGA|temp_mov_y~28_combout\ & (!\U_VGA|temp_y_pos~28_combout\ & !\U_VGA|Add3~30\)) # (!\U_VGA|temp_mov_y~28_combout\ & ((!\U_VGA|Add3~30\) # (!\U_VGA|temp_y_pos~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_mov_y~28_combout\,
	datab => \U_VGA|temp_y_pos~28_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~30\,
	combout => \U_VGA|Add3~31_combout\,
	cout => \U_VGA|Add3~32\);

-- Location: LCCOMB_X38_Y37_N30
\U_VGA|Add3~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~90_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~31_combout\,
	combout => \U_VGA|Add3~90_combout\);

-- Location: FF_X38_Y37_N31
\U_VGA|y_pos[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add3~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos\(12));

-- Location: LCCOMB_X38_Y37_N28
\U_VGA|temp_y_pos~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_y_pos~28_combout\ = (\U_VGA|y_pos\(12) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(12),
	datac => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_y_pos~28_combout\);

-- Location: LCCOMB_X39_Y37_N26
\U_VGA|Add3~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~33_combout\ = ((\U_VGA|temp_y_pos~27_combout\ $ (\U_VGA|temp_mov_y~27_combout\ $ (!\U_VGA|Add3~32\)))) # (GND)
-- \U_VGA|Add3~34\ = CARRY((\U_VGA|temp_y_pos~27_combout\ & ((\U_VGA|temp_mov_y~27_combout\) # (!\U_VGA|Add3~32\))) # (!\U_VGA|temp_y_pos~27_combout\ & (\U_VGA|temp_mov_y~27_combout\ & !\U_VGA|Add3~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_y_pos~27_combout\,
	datab => \U_VGA|temp_mov_y~27_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~32\,
	combout => \U_VGA|Add3~33_combout\,
	cout => \U_VGA|Add3~34\);

-- Location: LCCOMB_X39_Y37_N0
\U_VGA|Add3~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~89_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datac => \U_VGA|Add3~33_combout\,
	combout => \U_VGA|Add3~89_combout\);

-- Location: FF_X39_Y37_N1
\U_VGA|y_pos[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add3~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos\(13));

-- Location: LCCOMB_X38_Y37_N26
\U_VGA|temp_y_pos~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_y_pos~27_combout\ = (\U_VGA|y_pos\(13) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos\(13),
	datac => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_y_pos~27_combout\);

-- Location: LCCOMB_X39_Y37_N28
\U_VGA|Add3~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~35_combout\ = (\U_VGA|temp_y_pos~26_combout\ & ((\U_VGA|temp_mov_y~26_combout\ & (\U_VGA|Add3~34\ & VCC)) # (!\U_VGA|temp_mov_y~26_combout\ & (!\U_VGA|Add3~34\)))) # (!\U_VGA|temp_y_pos~26_combout\ & ((\U_VGA|temp_mov_y~26_combout\ & 
-- (!\U_VGA|Add3~34\)) # (!\U_VGA|temp_mov_y~26_combout\ & ((\U_VGA|Add3~34\) # (GND)))))
-- \U_VGA|Add3~36\ = CARRY((\U_VGA|temp_y_pos~26_combout\ & (!\U_VGA|temp_mov_y~26_combout\ & !\U_VGA|Add3~34\)) # (!\U_VGA|temp_y_pos~26_combout\ & ((!\U_VGA|Add3~34\) # (!\U_VGA|temp_mov_y~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_y_pos~26_combout\,
	datab => \U_VGA|temp_mov_y~26_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~34\,
	combout => \U_VGA|Add3~35_combout\,
	cout => \U_VGA|Add3~36\);

-- Location: LCCOMB_X42_Y36_N26
\U_VGA|Add3~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~88_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~35_combout\,
	combout => \U_VGA|Add3~88_combout\);

-- Location: FF_X42_Y36_N27
\U_VGA|y_pos[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add3~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos\(14));

-- Location: LCCOMB_X40_Y37_N2
\U_VGA|temp_y_pos~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_y_pos~26_combout\ = (\U_VGA|ball_move~1_combout\ & \U_VGA|y_pos\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|y_pos\(14),
	combout => \U_VGA|temp_y_pos~26_combout\);

-- Location: LCCOMB_X39_Y37_N30
\U_VGA|Add3~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~37_combout\ = ((\U_VGA|temp_mov_y~25_combout\ $ (\U_VGA|temp_y_pos~25_combout\ $ (!\U_VGA|Add3~36\)))) # (GND)
-- \U_VGA|Add3~38\ = CARRY((\U_VGA|temp_mov_y~25_combout\ & ((\U_VGA|temp_y_pos~25_combout\) # (!\U_VGA|Add3~36\))) # (!\U_VGA|temp_mov_y~25_combout\ & (\U_VGA|temp_y_pos~25_combout\ & !\U_VGA|Add3~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_mov_y~25_combout\,
	datab => \U_VGA|temp_y_pos~25_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~36\,
	combout => \U_VGA|Add3~37_combout\,
	cout => \U_VGA|Add3~38\);

-- Location: LCCOMB_X44_Y37_N28
\U_VGA|Add3~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~87_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~37_combout\,
	combout => \U_VGA|Add3~87_combout\);

-- Location: FF_X44_Y37_N29
\U_VGA|y_pos[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add3~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos\(15));

-- Location: LCCOMB_X38_Y37_N24
\U_VGA|temp_y_pos~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_y_pos~25_combout\ = (\U_VGA|ball_move~1_combout\ & \U_VGA|y_pos\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|y_pos\(15),
	combout => \U_VGA|temp_y_pos~25_combout\);

-- Location: LCCOMB_X39_Y36_N0
\U_VGA|Add3~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~39_combout\ = (\U_VGA|temp_mov_y~24_combout\ & ((\U_VGA|temp_y_pos~24_combout\ & (\U_VGA|Add3~38\ & VCC)) # (!\U_VGA|temp_y_pos~24_combout\ & (!\U_VGA|Add3~38\)))) # (!\U_VGA|temp_mov_y~24_combout\ & ((\U_VGA|temp_y_pos~24_combout\ & 
-- (!\U_VGA|Add3~38\)) # (!\U_VGA|temp_y_pos~24_combout\ & ((\U_VGA|Add3~38\) # (GND)))))
-- \U_VGA|Add3~40\ = CARRY((\U_VGA|temp_mov_y~24_combout\ & (!\U_VGA|temp_y_pos~24_combout\ & !\U_VGA|Add3~38\)) # (!\U_VGA|temp_mov_y~24_combout\ & ((!\U_VGA|Add3~38\) # (!\U_VGA|temp_y_pos~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_mov_y~24_combout\,
	datab => \U_VGA|temp_y_pos~24_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~38\,
	combout => \U_VGA|Add3~39_combout\,
	cout => \U_VGA|Add3~40\);

-- Location: LCCOMB_X42_Y36_N0
\U_VGA|Add3~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~86_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~39_combout\,
	combout => \U_VGA|Add3~86_combout\);

-- Location: FF_X42_Y36_N1
\U_VGA|y_pos[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add3~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos\(16));

-- Location: LCCOMB_X38_Y36_N20
\U_VGA|temp_y_pos~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_y_pos~24_combout\ = (\U_VGA|y_pos\(16) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(16),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_y_pos~24_combout\);

-- Location: LCCOMB_X39_Y36_N2
\U_VGA|Add3~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~41_combout\ = ((\U_VGA|temp_y_pos~23_combout\ $ (\U_VGA|temp_mov_y~23_combout\ $ (!\U_VGA|Add3~40\)))) # (GND)
-- \U_VGA|Add3~42\ = CARRY((\U_VGA|temp_y_pos~23_combout\ & ((\U_VGA|temp_mov_y~23_combout\) # (!\U_VGA|Add3~40\))) # (!\U_VGA|temp_y_pos~23_combout\ & (\U_VGA|temp_mov_y~23_combout\ & !\U_VGA|Add3~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_y_pos~23_combout\,
	datab => \U_VGA|temp_mov_y~23_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~40\,
	combout => \U_VGA|Add3~41_combout\,
	cout => \U_VGA|Add3~42\);

-- Location: LCCOMB_X43_Y38_N30
\U_VGA|Add3~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~85_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~41_combout\,
	combout => \U_VGA|Add3~85_combout\);

-- Location: FF_X43_Y38_N31
\U_VGA|y_pos[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add3~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos\(17));

-- Location: LCCOMB_X38_Y36_N26
\U_VGA|temp_y_pos~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_y_pos~23_combout\ = (\U_VGA|y_pos\(17) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|y_pos\(17),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_y_pos~23_combout\);

-- Location: LCCOMB_X39_Y36_N4
\U_VGA|Add3~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~43_combout\ = (\U_VGA|temp_y_pos~22_combout\ & ((\U_VGA|temp_mov_y~22_combout\ & (\U_VGA|Add3~42\ & VCC)) # (!\U_VGA|temp_mov_y~22_combout\ & (!\U_VGA|Add3~42\)))) # (!\U_VGA|temp_y_pos~22_combout\ & ((\U_VGA|temp_mov_y~22_combout\ & 
-- (!\U_VGA|Add3~42\)) # (!\U_VGA|temp_mov_y~22_combout\ & ((\U_VGA|Add3~42\) # (GND)))))
-- \U_VGA|Add3~44\ = CARRY((\U_VGA|temp_y_pos~22_combout\ & (!\U_VGA|temp_mov_y~22_combout\ & !\U_VGA|Add3~42\)) # (!\U_VGA|temp_y_pos~22_combout\ & ((!\U_VGA|Add3~42\) # (!\U_VGA|temp_mov_y~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_y_pos~22_combout\,
	datab => \U_VGA|temp_mov_y~22_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~42\,
	combout => \U_VGA|Add3~43_combout\,
	cout => \U_VGA|Add3~44\);

-- Location: LCCOMB_X43_Y38_N20
\U_VGA|Add3~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~84_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~43_combout\,
	combout => \U_VGA|Add3~84_combout\);

-- Location: FF_X43_Y38_N21
\U_VGA|y_pos[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add3~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos\(18));

-- Location: LCCOMB_X38_Y36_N0
\U_VGA|temp_y_pos~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_y_pos~22_combout\ = (\U_VGA|y_pos\(18) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos\(18),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_y_pos~22_combout\);

-- Location: LCCOMB_X39_Y36_N6
\U_VGA|Add3~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~45_combout\ = ((\U_VGA|temp_mov_y~21_combout\ $ (\U_VGA|temp_y_pos~21_combout\ $ (!\U_VGA|Add3~44\)))) # (GND)
-- \U_VGA|Add3~46\ = CARRY((\U_VGA|temp_mov_y~21_combout\ & ((\U_VGA|temp_y_pos~21_combout\) # (!\U_VGA|Add3~44\))) # (!\U_VGA|temp_mov_y~21_combout\ & (\U_VGA|temp_y_pos~21_combout\ & !\U_VGA|Add3~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_mov_y~21_combout\,
	datab => \U_VGA|temp_y_pos~21_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~44\,
	combout => \U_VGA|Add3~45_combout\,
	cout => \U_VGA|Add3~46\);

-- Location: LCCOMB_X44_Y36_N0
\U_VGA|Add3~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~83_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~45_combout\,
	combout => \U_VGA|Add3~83_combout\);

-- Location: FF_X44_Y36_N1
\U_VGA|y_pos[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add3~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos\(19));

-- Location: LCCOMB_X38_Y36_N18
\U_VGA|temp_y_pos~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_y_pos~21_combout\ = (\U_VGA|y_pos\(19) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|y_pos\(19),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_y_pos~21_combout\);

-- Location: LCCOMB_X39_Y36_N8
\U_VGA|Add3~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~47_combout\ = (\U_VGA|temp_y_pos~20_combout\ & ((\U_VGA|temp_mov_y~20_combout\ & (\U_VGA|Add3~46\ & VCC)) # (!\U_VGA|temp_mov_y~20_combout\ & (!\U_VGA|Add3~46\)))) # (!\U_VGA|temp_y_pos~20_combout\ & ((\U_VGA|temp_mov_y~20_combout\ & 
-- (!\U_VGA|Add3~46\)) # (!\U_VGA|temp_mov_y~20_combout\ & ((\U_VGA|Add3~46\) # (GND)))))
-- \U_VGA|Add3~48\ = CARRY((\U_VGA|temp_y_pos~20_combout\ & (!\U_VGA|temp_mov_y~20_combout\ & !\U_VGA|Add3~46\)) # (!\U_VGA|temp_y_pos~20_combout\ & ((!\U_VGA|Add3~46\) # (!\U_VGA|temp_mov_y~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_y_pos~20_combout\,
	datab => \U_VGA|temp_mov_y~20_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~46\,
	combout => \U_VGA|Add3~47_combout\,
	cout => \U_VGA|Add3~48\);

-- Location: LCCOMB_X43_Y38_N14
\U_VGA|Add3~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~82_combout\ = (\U_VGA|Add3~47_combout\ & \button_n[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|Add3~47_combout\,
	datad => \button_n[0]~input_o\,
	combout => \U_VGA|Add3~82_combout\);

-- Location: FF_X43_Y38_N15
\U_VGA|y_pos[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add3~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos\(20));

-- Location: LCCOMB_X40_Y33_N4
\U_VGA|temp_y_pos~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_y_pos~20_combout\ = (\U_VGA|y_pos\(20) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|y_pos\(20),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_y_pos~20_combout\);

-- Location: LCCOMB_X39_Y36_N10
\U_VGA|Add3~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~49_combout\ = ((\U_VGA|temp_mov_y~19_combout\ $ (\U_VGA|temp_y_pos~19_combout\ $ (!\U_VGA|Add3~48\)))) # (GND)
-- \U_VGA|Add3~50\ = CARRY((\U_VGA|temp_mov_y~19_combout\ & ((\U_VGA|temp_y_pos~19_combout\) # (!\U_VGA|Add3~48\))) # (!\U_VGA|temp_mov_y~19_combout\ & (\U_VGA|temp_y_pos~19_combout\ & !\U_VGA|Add3~48\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_mov_y~19_combout\,
	datab => \U_VGA|temp_y_pos~19_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~48\,
	combout => \U_VGA|Add3~49_combout\,
	cout => \U_VGA|Add3~50\);

-- Location: LCCOMB_X42_Y36_N14
\U_VGA|Add3~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~81_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~49_combout\,
	combout => \U_VGA|Add3~81_combout\);

-- Location: FF_X42_Y36_N15
\U_VGA|y_pos[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add3~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos\(21));

-- Location: LCCOMB_X41_Y36_N10
\U_VGA|temp_y_pos~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_y_pos~19_combout\ = (\U_VGA|y_pos\(21) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos\(21),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_y_pos~19_combout\);

-- Location: LCCOMB_X39_Y36_N12
\U_VGA|Add3~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~51_combout\ = (\U_VGA|temp_y_pos~18_combout\ & ((\U_VGA|temp_mov_y~18_combout\ & (\U_VGA|Add3~50\ & VCC)) # (!\U_VGA|temp_mov_y~18_combout\ & (!\U_VGA|Add3~50\)))) # (!\U_VGA|temp_y_pos~18_combout\ & ((\U_VGA|temp_mov_y~18_combout\ & 
-- (!\U_VGA|Add3~50\)) # (!\U_VGA|temp_mov_y~18_combout\ & ((\U_VGA|Add3~50\) # (GND)))))
-- \U_VGA|Add3~52\ = CARRY((\U_VGA|temp_y_pos~18_combout\ & (!\U_VGA|temp_mov_y~18_combout\ & !\U_VGA|Add3~50\)) # (!\U_VGA|temp_y_pos~18_combout\ & ((!\U_VGA|Add3~50\) # (!\U_VGA|temp_mov_y~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_y_pos~18_combout\,
	datab => \U_VGA|temp_mov_y~18_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~50\,
	combout => \U_VGA|Add3~51_combout\,
	cout => \U_VGA|Add3~52\);

-- Location: LCCOMB_X42_Y36_N12
\U_VGA|Add3~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~80_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~51_combout\,
	combout => \U_VGA|Add3~80_combout\);

-- Location: FF_X42_Y36_N13
\U_VGA|y_pos[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add3~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos\(22));

-- Location: LCCOMB_X41_Y36_N12
\U_VGA|temp_y_pos~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_y_pos~18_combout\ = (\U_VGA|y_pos\(22) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos\(22),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_y_pos~18_combout\);

-- Location: LCCOMB_X39_Y36_N14
\U_VGA|Add3~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~53_combout\ = ((\U_VGA|temp_y_pos~17_combout\ $ (\U_VGA|temp_mov_y~17_combout\ $ (!\U_VGA|Add3~52\)))) # (GND)
-- \U_VGA|Add3~54\ = CARRY((\U_VGA|temp_y_pos~17_combout\ & ((\U_VGA|temp_mov_y~17_combout\) # (!\U_VGA|Add3~52\))) # (!\U_VGA|temp_y_pos~17_combout\ & (\U_VGA|temp_mov_y~17_combout\ & !\U_VGA|Add3~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_y_pos~17_combout\,
	datab => \U_VGA|temp_mov_y~17_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~52\,
	combout => \U_VGA|Add3~53_combout\,
	cout => \U_VGA|Add3~54\);

-- Location: LCCOMB_X40_Y36_N8
\U_VGA|Add3~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~79_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~53_combout\,
	combout => \U_VGA|Add3~79_combout\);

-- Location: FF_X40_Y36_N9
\U_VGA|y_pos[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add3~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos\(23));

-- Location: LCCOMB_X40_Y36_N4
\U_VGA|temp_y_pos~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_y_pos~17_combout\ = (\U_VGA|y_pos\(23) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|y_pos\(23),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_y_pos~17_combout\);

-- Location: LCCOMB_X39_Y36_N16
\U_VGA|Add3~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~55_combout\ = (\U_VGA|temp_y_pos~16_combout\ & ((\U_VGA|temp_mov_y~16_combout\ & (\U_VGA|Add3~54\ & VCC)) # (!\U_VGA|temp_mov_y~16_combout\ & (!\U_VGA|Add3~54\)))) # (!\U_VGA|temp_y_pos~16_combout\ & ((\U_VGA|temp_mov_y~16_combout\ & 
-- (!\U_VGA|Add3~54\)) # (!\U_VGA|temp_mov_y~16_combout\ & ((\U_VGA|Add3~54\) # (GND)))))
-- \U_VGA|Add3~56\ = CARRY((\U_VGA|temp_y_pos~16_combout\ & (!\U_VGA|temp_mov_y~16_combout\ & !\U_VGA|Add3~54\)) # (!\U_VGA|temp_y_pos~16_combout\ & ((!\U_VGA|Add3~54\) # (!\U_VGA|temp_mov_y~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_y_pos~16_combout\,
	datab => \U_VGA|temp_mov_y~16_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~54\,
	combout => \U_VGA|Add3~55_combout\,
	cout => \U_VGA|Add3~56\);

-- Location: LCCOMB_X43_Y36_N26
\U_VGA|Add3~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~78_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~55_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~55_combout\,
	combout => \U_VGA|Add3~78_combout\);

-- Location: FF_X43_Y36_N27
\U_VGA|y_pos[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add3~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos\(24));

-- Location: LCCOMB_X41_Y36_N22
\U_VGA|temp_y_pos~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_y_pos~16_combout\ = (\U_VGA|y_pos\(24) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos\(24),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_y_pos~16_combout\);

-- Location: LCCOMB_X39_Y36_N18
\U_VGA|Add3~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~57_combout\ = ((\U_VGA|temp_y_pos~15_combout\ $ (\U_VGA|temp_mov_y~15_combout\ $ (!\U_VGA|Add3~56\)))) # (GND)
-- \U_VGA|Add3~58\ = CARRY((\U_VGA|temp_y_pos~15_combout\ & ((\U_VGA|temp_mov_y~15_combout\) # (!\U_VGA|Add3~56\))) # (!\U_VGA|temp_y_pos~15_combout\ & (\U_VGA|temp_mov_y~15_combout\ & !\U_VGA|Add3~56\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_y_pos~15_combout\,
	datab => \U_VGA|temp_mov_y~15_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~56\,
	combout => \U_VGA|Add3~57_combout\,
	cout => \U_VGA|Add3~58\);

-- Location: LCCOMB_X42_Y36_N10
\U_VGA|Add3~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~77_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~57_combout\,
	combout => \U_VGA|Add3~77_combout\);

-- Location: FF_X42_Y36_N11
\U_VGA|y_pos[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add3~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos\(25));

-- Location: LCCOMB_X38_Y36_N12
\U_VGA|temp_y_pos~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_y_pos~15_combout\ = (\U_VGA|y_pos\(25) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|y_pos\(25),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_y_pos~15_combout\);

-- Location: LCCOMB_X39_Y36_N20
\U_VGA|Add3~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~59_combout\ = (\U_VGA|temp_y_pos~14_combout\ & ((\U_VGA|temp_mov_y~14_combout\ & (\U_VGA|Add3~58\ & VCC)) # (!\U_VGA|temp_mov_y~14_combout\ & (!\U_VGA|Add3~58\)))) # (!\U_VGA|temp_y_pos~14_combout\ & ((\U_VGA|temp_mov_y~14_combout\ & 
-- (!\U_VGA|Add3~58\)) # (!\U_VGA|temp_mov_y~14_combout\ & ((\U_VGA|Add3~58\) # (GND)))))
-- \U_VGA|Add3~60\ = CARRY((\U_VGA|temp_y_pos~14_combout\ & (!\U_VGA|temp_mov_y~14_combout\ & !\U_VGA|Add3~58\)) # (!\U_VGA|temp_y_pos~14_combout\ & ((!\U_VGA|Add3~58\) # (!\U_VGA|temp_mov_y~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_y_pos~14_combout\,
	datab => \U_VGA|temp_mov_y~14_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~58\,
	combout => \U_VGA|Add3~59_combout\,
	cout => \U_VGA|Add3~60\);

-- Location: LCCOMB_X42_Y36_N20
\U_VGA|Add3~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~76_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~59_combout\,
	combout => \U_VGA|Add3~76_combout\);

-- Location: FF_X42_Y36_N21
\U_VGA|y_pos[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add3~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos\(26));

-- Location: LCCOMB_X41_Y36_N20
\U_VGA|temp_y_pos~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_y_pos~14_combout\ = (\U_VGA|y_pos\(26) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|y_pos\(26),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_y_pos~14_combout\);

-- Location: LCCOMB_X39_Y36_N22
\U_VGA|Add3~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~61_combout\ = ((\U_VGA|temp_mov_y~13_combout\ $ (\U_VGA|temp_y_pos~13_combout\ $ (!\U_VGA|Add3~60\)))) # (GND)
-- \U_VGA|Add3~62\ = CARRY((\U_VGA|temp_mov_y~13_combout\ & ((\U_VGA|temp_y_pos~13_combout\) # (!\U_VGA|Add3~60\))) # (!\U_VGA|temp_mov_y~13_combout\ & (\U_VGA|temp_y_pos~13_combout\ & !\U_VGA|Add3~60\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_mov_y~13_combout\,
	datab => \U_VGA|temp_y_pos~13_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~60\,
	combout => \U_VGA|Add3~61_combout\,
	cout => \U_VGA|Add3~62\);

-- Location: LCCOMB_X42_Y36_N6
\U_VGA|Add3~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~75_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~61_combout\,
	combout => \U_VGA|Add3~75_combout\);

-- Location: FF_X42_Y36_N7
\U_VGA|y_pos[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add3~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos\(27));

-- Location: LCCOMB_X42_Y35_N18
\U_VGA|temp_y_pos~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_y_pos~13_combout\ = (\U_VGA|ball_move~1_combout\ & \U_VGA|y_pos\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~1_combout\,
	datac => \U_VGA|y_pos\(27),
	combout => \U_VGA|temp_y_pos~13_combout\);

-- Location: LCCOMB_X39_Y36_N24
\U_VGA|Add3~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~63_combout\ = (\U_VGA|temp_y_pos~12_combout\ & ((\U_VGA|temp_mov_y~12_combout\ & (\U_VGA|Add3~62\ & VCC)) # (!\U_VGA|temp_mov_y~12_combout\ & (!\U_VGA|Add3~62\)))) # (!\U_VGA|temp_y_pos~12_combout\ & ((\U_VGA|temp_mov_y~12_combout\ & 
-- (!\U_VGA|Add3~62\)) # (!\U_VGA|temp_mov_y~12_combout\ & ((\U_VGA|Add3~62\) # (GND)))))
-- \U_VGA|Add3~64\ = CARRY((\U_VGA|temp_y_pos~12_combout\ & (!\U_VGA|temp_mov_y~12_combout\ & !\U_VGA|Add3~62\)) # (!\U_VGA|temp_y_pos~12_combout\ & ((!\U_VGA|Add3~62\) # (!\U_VGA|temp_mov_y~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_y_pos~12_combout\,
	datab => \U_VGA|temp_mov_y~12_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~62\,
	combout => \U_VGA|Add3~63_combout\,
	cout => \U_VGA|Add3~64\);

-- Location: LCCOMB_X42_Y36_N16
\U_VGA|Add3~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~74_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~63_combout\,
	combout => \U_VGA|Add3~74_combout\);

-- Location: FF_X42_Y36_N17
\U_VGA|y_pos[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add3~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos\(28));

-- Location: LCCOMB_X37_Y36_N12
\U_VGA|temp_y_pos~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_y_pos~12_combout\ = (\U_VGA|y_pos\(28) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|y_pos\(28),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_y_pos~12_combout\);

-- Location: LCCOMB_X39_Y36_N26
\U_VGA|Add3~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~65_combout\ = ((\U_VGA|temp_y_pos~11_combout\ $ (\U_VGA|temp_mov_y~11_combout\ $ (!\U_VGA|Add3~64\)))) # (GND)
-- \U_VGA|Add3~66\ = CARRY((\U_VGA|temp_y_pos~11_combout\ & ((\U_VGA|temp_mov_y~11_combout\) # (!\U_VGA|Add3~64\))) # (!\U_VGA|temp_y_pos~11_combout\ & (\U_VGA|temp_mov_y~11_combout\ & !\U_VGA|Add3~64\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_y_pos~11_combout\,
	datab => \U_VGA|temp_mov_y~11_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~64\,
	combout => \U_VGA|Add3~65_combout\,
	cout => \U_VGA|Add3~66\);

-- Location: LCCOMB_X42_Y36_N2
\U_VGA|Add3~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~73_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~65_combout\,
	combout => \U_VGA|Add3~73_combout\);

-- Location: FF_X42_Y36_N3
\U_VGA|y_pos[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add3~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos\(29));

-- Location: LCCOMB_X41_Y36_N2
\U_VGA|temp_y_pos~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_y_pos~11_combout\ = (\U_VGA|y_pos\(29) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(29),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_y_pos~11_combout\);

-- Location: LCCOMB_X39_Y36_N28
\U_VGA|Add3~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~67_combout\ = (\U_VGA|temp_mov_y~10_combout\ & ((\U_VGA|temp_y_pos~10_combout\ & (\U_VGA|Add3~66\ & VCC)) # (!\U_VGA|temp_y_pos~10_combout\ & (!\U_VGA|Add3~66\)))) # (!\U_VGA|temp_mov_y~10_combout\ & ((\U_VGA|temp_y_pos~10_combout\ & 
-- (!\U_VGA|Add3~66\)) # (!\U_VGA|temp_y_pos~10_combout\ & ((\U_VGA|Add3~66\) # (GND)))))
-- \U_VGA|Add3~68\ = CARRY((\U_VGA|temp_mov_y~10_combout\ & (!\U_VGA|temp_y_pos~10_combout\ & !\U_VGA|Add3~66\)) # (!\U_VGA|temp_mov_y~10_combout\ & ((!\U_VGA|Add3~66\) # (!\U_VGA|temp_y_pos~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_mov_y~10_combout\,
	datab => \U_VGA|temp_y_pos~10_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~66\,
	combout => \U_VGA|Add3~67_combout\,
	cout => \U_VGA|Add3~68\);

-- Location: LCCOMB_X42_Y36_N8
\U_VGA|Add3~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~72_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~67_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datac => \U_VGA|Add3~67_combout\,
	combout => \U_VGA|Add3~72_combout\);

-- Location: FF_X42_Y36_N9
\U_VGA|y_pos[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add3~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos\(30));

-- Location: LCCOMB_X41_Y36_N14
\U_VGA|temp_y_pos~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_y_pos~10_combout\ = (\U_VGA|y_pos\(30) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|y_pos\(30),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_y_pos~10_combout\);

-- Location: LCCOMB_X39_Y36_N30
\U_VGA|Add3~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~69_combout\ = \U_VGA|temp_y_pos~9_combout\ $ (\U_VGA|Add3~68\ $ (!\U_VGA|temp_mov_y~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_y_pos~9_combout\,
	datad => \U_VGA|temp_mov_y~9_combout\,
	cin => \U_VGA|Add3~68\,
	combout => \U_VGA|Add3~69_combout\);

-- Location: LCCOMB_X38_Y36_N24
\U_VGA|Add3~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~71_combout\ = (\U_VGA|Add3~69_combout\ & \button_n[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|Add3~69_combout\,
	datad => \button_n[0]~input_o\,
	combout => \U_VGA|Add3~71_combout\);

-- Location: FF_X38_Y36_N25
\U_VGA|y_pos[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add3~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos\(31));

-- Location: LCCOMB_X43_Y37_N6
\U_VGA|Add9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add9~0_combout\ = \U_VGA|y_pos\(6) $ (GND)
-- \U_VGA|Add9~1\ = CARRY(!\U_VGA|y_pos\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos\(6),
	datad => VCC,
	combout => \U_VGA|Add9~0_combout\,
	cout => \U_VGA|Add9~1\);

-- Location: LCCOMB_X43_Y37_N8
\U_VGA|Add9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add9~2_combout\ = (\U_VGA|y_pos\(7) & ((\U_VGA|Add9~1\) # (GND))) # (!\U_VGA|y_pos\(7) & (!\U_VGA|Add9~1\))
-- \U_VGA|Add9~3\ = CARRY((\U_VGA|y_pos\(7)) # (!\U_VGA|Add9~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(7),
	datad => VCC,
	cin => \U_VGA|Add9~1\,
	combout => \U_VGA|Add9~2_combout\,
	cout => \U_VGA|Add9~3\);

-- Location: LCCOMB_X43_Y37_N10
\U_VGA|Add9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add9~4_combout\ = (\U_VGA|y_pos\(8) & (\U_VGA|Add9~3\ $ (GND))) # (!\U_VGA|y_pos\(8) & (!\U_VGA|Add9~3\ & VCC))
-- \U_VGA|Add9~5\ = CARRY((\U_VGA|y_pos\(8) & !\U_VGA|Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos\(8),
	datad => VCC,
	cin => \U_VGA|Add9~3\,
	combout => \U_VGA|Add9~4_combout\,
	cout => \U_VGA|Add9~5\);

-- Location: LCCOMB_X43_Y37_N12
\U_VGA|Add9~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add9~6_combout\ = (\U_VGA|y_pos\(9) & (!\U_VGA|Add9~5\)) # (!\U_VGA|y_pos\(9) & ((\U_VGA|Add9~5\) # (GND)))
-- \U_VGA|Add9~7\ = CARRY((!\U_VGA|Add9~5\) # (!\U_VGA|y_pos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(9),
	datad => VCC,
	cin => \U_VGA|Add9~5\,
	combout => \U_VGA|Add9~6_combout\,
	cout => \U_VGA|Add9~7\);

-- Location: LCCOMB_X43_Y37_N14
\U_VGA|Add9~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add9~8_combout\ = (\U_VGA|y_pos\(10) & (\U_VGA|Add9~7\ $ (GND))) # (!\U_VGA|y_pos\(10) & (!\U_VGA|Add9~7\ & VCC))
-- \U_VGA|Add9~9\ = CARRY((\U_VGA|y_pos\(10) & !\U_VGA|Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos\(10),
	datad => VCC,
	cin => \U_VGA|Add9~7\,
	combout => \U_VGA|Add9~8_combout\,
	cout => \U_VGA|Add9~9\);

-- Location: LCCOMB_X43_Y37_N16
\U_VGA|Add9~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add9~10_combout\ = (\U_VGA|y_pos\(11) & (!\U_VGA|Add9~9\)) # (!\U_VGA|y_pos\(11) & ((\U_VGA|Add9~9\) # (GND)))
-- \U_VGA|Add9~11\ = CARRY((!\U_VGA|Add9~9\) # (!\U_VGA|y_pos\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos\(11),
	datad => VCC,
	cin => \U_VGA|Add9~9\,
	combout => \U_VGA|Add9~10_combout\,
	cout => \U_VGA|Add9~11\);

-- Location: LCCOMB_X43_Y37_N18
\U_VGA|Add9~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add9~12_combout\ = (\U_VGA|y_pos\(12) & (\U_VGA|Add9~11\ $ (GND))) # (!\U_VGA|y_pos\(12) & (!\U_VGA|Add9~11\ & VCC))
-- \U_VGA|Add9~13\ = CARRY((\U_VGA|y_pos\(12) & !\U_VGA|Add9~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(12),
	datad => VCC,
	cin => \U_VGA|Add9~11\,
	combout => \U_VGA|Add9~12_combout\,
	cout => \U_VGA|Add9~13\);

-- Location: LCCOMB_X43_Y37_N20
\U_VGA|Add9~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add9~14_combout\ = (\U_VGA|y_pos\(13) & (!\U_VGA|Add9~13\)) # (!\U_VGA|y_pos\(13) & ((\U_VGA|Add9~13\) # (GND)))
-- \U_VGA|Add9~15\ = CARRY((!\U_VGA|Add9~13\) # (!\U_VGA|y_pos\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos\(13),
	datad => VCC,
	cin => \U_VGA|Add9~13\,
	combout => \U_VGA|Add9~14_combout\,
	cout => \U_VGA|Add9~15\);

-- Location: LCCOMB_X43_Y37_N22
\U_VGA|Add9~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add9~16_combout\ = (\U_VGA|y_pos\(14) & (\U_VGA|Add9~15\ $ (GND))) # (!\U_VGA|y_pos\(14) & (!\U_VGA|Add9~15\ & VCC))
-- \U_VGA|Add9~17\ = CARRY((\U_VGA|y_pos\(14) & !\U_VGA|Add9~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos\(14),
	datad => VCC,
	cin => \U_VGA|Add9~15\,
	combout => \U_VGA|Add9~16_combout\,
	cout => \U_VGA|Add9~17\);

-- Location: LCCOMB_X43_Y37_N24
\U_VGA|Add9~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add9~18_combout\ = (\U_VGA|y_pos\(15) & (!\U_VGA|Add9~17\)) # (!\U_VGA|y_pos\(15) & ((\U_VGA|Add9~17\) # (GND)))
-- \U_VGA|Add9~19\ = CARRY((!\U_VGA|Add9~17\) # (!\U_VGA|y_pos\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos\(15),
	datad => VCC,
	cin => \U_VGA|Add9~17\,
	combout => \U_VGA|Add9~18_combout\,
	cout => \U_VGA|Add9~19\);

-- Location: LCCOMB_X43_Y37_N26
\U_VGA|Add9~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add9~20_combout\ = (\U_VGA|y_pos\(16) & (\U_VGA|Add9~19\ $ (GND))) # (!\U_VGA|y_pos\(16) & (!\U_VGA|Add9~19\ & VCC))
-- \U_VGA|Add9~21\ = CARRY((\U_VGA|y_pos\(16) & !\U_VGA|Add9~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(16),
	datad => VCC,
	cin => \U_VGA|Add9~19\,
	combout => \U_VGA|Add9~20_combout\,
	cout => \U_VGA|Add9~21\);

-- Location: LCCOMB_X43_Y37_N28
\U_VGA|Add9~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add9~22_combout\ = (\U_VGA|y_pos\(17) & (!\U_VGA|Add9~21\)) # (!\U_VGA|y_pos\(17) & ((\U_VGA|Add9~21\) # (GND)))
-- \U_VGA|Add9~23\ = CARRY((!\U_VGA|Add9~21\) # (!\U_VGA|y_pos\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(17),
	datad => VCC,
	cin => \U_VGA|Add9~21\,
	combout => \U_VGA|Add9~22_combout\,
	cout => \U_VGA|Add9~23\);

-- Location: LCCOMB_X43_Y37_N30
\U_VGA|Add9~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add9~24_combout\ = (\U_VGA|y_pos\(18) & (\U_VGA|Add9~23\ $ (GND))) # (!\U_VGA|y_pos\(18) & (!\U_VGA|Add9~23\ & VCC))
-- \U_VGA|Add9~25\ = CARRY((\U_VGA|y_pos\(18) & !\U_VGA|Add9~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(18),
	datad => VCC,
	cin => \U_VGA|Add9~23\,
	combout => \U_VGA|Add9~24_combout\,
	cout => \U_VGA|Add9~25\);

-- Location: LCCOMB_X43_Y36_N0
\U_VGA|Add9~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add9~26_combout\ = (\U_VGA|y_pos\(19) & (!\U_VGA|Add9~25\)) # (!\U_VGA|y_pos\(19) & ((\U_VGA|Add9~25\) # (GND)))
-- \U_VGA|Add9~27\ = CARRY((!\U_VGA|Add9~25\) # (!\U_VGA|y_pos\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos\(19),
	datad => VCC,
	cin => \U_VGA|Add9~25\,
	combout => \U_VGA|Add9~26_combout\,
	cout => \U_VGA|Add9~27\);

-- Location: LCCOMB_X43_Y36_N2
\U_VGA|Add9~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add9~28_combout\ = (\U_VGA|y_pos\(20) & (\U_VGA|Add9~27\ $ (GND))) # (!\U_VGA|y_pos\(20) & (!\U_VGA|Add9~27\ & VCC))
-- \U_VGA|Add9~29\ = CARRY((\U_VGA|y_pos\(20) & !\U_VGA|Add9~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos\(20),
	datad => VCC,
	cin => \U_VGA|Add9~27\,
	combout => \U_VGA|Add9~28_combout\,
	cout => \U_VGA|Add9~29\);

-- Location: LCCOMB_X43_Y36_N4
\U_VGA|Add9~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add9~30_combout\ = (\U_VGA|y_pos\(21) & (!\U_VGA|Add9~29\)) # (!\U_VGA|y_pos\(21) & ((\U_VGA|Add9~29\) # (GND)))
-- \U_VGA|Add9~31\ = CARRY((!\U_VGA|Add9~29\) # (!\U_VGA|y_pos\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(21),
	datad => VCC,
	cin => \U_VGA|Add9~29\,
	combout => \U_VGA|Add9~30_combout\,
	cout => \U_VGA|Add9~31\);

-- Location: LCCOMB_X43_Y36_N6
\U_VGA|Add9~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add9~32_combout\ = (\U_VGA|y_pos\(22) & (\U_VGA|Add9~31\ $ (GND))) # (!\U_VGA|y_pos\(22) & (!\U_VGA|Add9~31\ & VCC))
-- \U_VGA|Add9~33\ = CARRY((\U_VGA|y_pos\(22) & !\U_VGA|Add9~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(22),
	datad => VCC,
	cin => \U_VGA|Add9~31\,
	combout => \U_VGA|Add9~32_combout\,
	cout => \U_VGA|Add9~33\);

-- Location: LCCOMB_X43_Y36_N8
\U_VGA|Add9~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add9~34_combout\ = (\U_VGA|y_pos\(23) & (!\U_VGA|Add9~33\)) # (!\U_VGA|y_pos\(23) & ((\U_VGA|Add9~33\) # (GND)))
-- \U_VGA|Add9~35\ = CARRY((!\U_VGA|Add9~33\) # (!\U_VGA|y_pos\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos\(23),
	datad => VCC,
	cin => \U_VGA|Add9~33\,
	combout => \U_VGA|Add9~34_combout\,
	cout => \U_VGA|Add9~35\);

-- Location: LCCOMB_X43_Y36_N10
\U_VGA|Add9~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add9~36_combout\ = (\U_VGA|y_pos\(24) & (\U_VGA|Add9~35\ $ (GND))) # (!\U_VGA|y_pos\(24) & (!\U_VGA|Add9~35\ & VCC))
-- \U_VGA|Add9~37\ = CARRY((\U_VGA|y_pos\(24) & !\U_VGA|Add9~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(24),
	datad => VCC,
	cin => \U_VGA|Add9~35\,
	combout => \U_VGA|Add9~36_combout\,
	cout => \U_VGA|Add9~37\);

-- Location: LCCOMB_X43_Y36_N12
\U_VGA|Add9~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add9~38_combout\ = (\U_VGA|y_pos\(25) & (!\U_VGA|Add9~37\)) # (!\U_VGA|y_pos\(25) & ((\U_VGA|Add9~37\) # (GND)))
-- \U_VGA|Add9~39\ = CARRY((!\U_VGA|Add9~37\) # (!\U_VGA|y_pos\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(25),
	datad => VCC,
	cin => \U_VGA|Add9~37\,
	combout => \U_VGA|Add9~38_combout\,
	cout => \U_VGA|Add9~39\);

-- Location: LCCOMB_X43_Y36_N14
\U_VGA|Add9~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add9~40_combout\ = (\U_VGA|y_pos\(26) & (\U_VGA|Add9~39\ $ (GND))) # (!\U_VGA|y_pos\(26) & (!\U_VGA|Add9~39\ & VCC))
-- \U_VGA|Add9~41\ = CARRY((\U_VGA|y_pos\(26) & !\U_VGA|Add9~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos\(26),
	datad => VCC,
	cin => \U_VGA|Add9~39\,
	combout => \U_VGA|Add9~40_combout\,
	cout => \U_VGA|Add9~41\);

-- Location: LCCOMB_X43_Y36_N16
\U_VGA|Add9~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add9~42_combout\ = (\U_VGA|y_pos\(27) & (!\U_VGA|Add9~41\)) # (!\U_VGA|y_pos\(27) & ((\U_VGA|Add9~41\) # (GND)))
-- \U_VGA|Add9~43\ = CARRY((!\U_VGA|Add9~41\) # (!\U_VGA|y_pos\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos\(27),
	datad => VCC,
	cin => \U_VGA|Add9~41\,
	combout => \U_VGA|Add9~42_combout\,
	cout => \U_VGA|Add9~43\);

-- Location: LCCOMB_X43_Y36_N18
\U_VGA|Add9~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add9~44_combout\ = (\U_VGA|y_pos\(28) & (\U_VGA|Add9~43\ $ (GND))) # (!\U_VGA|y_pos\(28) & (!\U_VGA|Add9~43\ & VCC))
-- \U_VGA|Add9~45\ = CARRY((\U_VGA|y_pos\(28) & !\U_VGA|Add9~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(28),
	datad => VCC,
	cin => \U_VGA|Add9~43\,
	combout => \U_VGA|Add9~44_combout\,
	cout => \U_VGA|Add9~45\);

-- Location: LCCOMB_X43_Y36_N20
\U_VGA|Add9~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add9~46_combout\ = (\U_VGA|y_pos\(29) & (!\U_VGA|Add9~45\)) # (!\U_VGA|y_pos\(29) & ((\U_VGA|Add9~45\) # (GND)))
-- \U_VGA|Add9~47\ = CARRY((!\U_VGA|Add9~45\) # (!\U_VGA|y_pos\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(29),
	datad => VCC,
	cin => \U_VGA|Add9~45\,
	combout => \U_VGA|Add9~46_combout\,
	cout => \U_VGA|Add9~47\);

-- Location: LCCOMB_X43_Y36_N22
\U_VGA|Add9~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add9~48_combout\ = (\U_VGA|y_pos\(30) & (\U_VGA|Add9~47\ $ (GND))) # (!\U_VGA|y_pos\(30) & (!\U_VGA|Add9~47\ & VCC))
-- \U_VGA|Add9~49\ = CARRY((\U_VGA|y_pos\(30) & !\U_VGA|Add9~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(30),
	datad => VCC,
	cin => \U_VGA|Add9~47\,
	combout => \U_VGA|Add9~48_combout\,
	cout => \U_VGA|Add9~49\);

-- Location: LCCOMB_X43_Y36_N24
\U_VGA|Add9~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add9~50_combout\ = \U_VGA|Add9~49\ $ (\U_VGA|y_pos\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_VGA|y_pos\(31),
	cin => \U_VGA|Add9~49\,
	combout => \U_VGA|Add9~50_combout\);

-- Location: LCCOMB_X42_Y36_N4
\U_VGA|LessThan3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan3~7_combout\ = (!\U_VGA|y_pos\(27) & (!\U_VGA|y_pos\(26) & (!\U_VGA|y_pos\(25) & !\U_VGA|y_pos\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(27),
	datab => \U_VGA|y_pos\(26),
	datac => \U_VGA|y_pos\(25),
	datad => \U_VGA|y_pos\(28),
	combout => \U_VGA|LessThan3~7_combout\);

-- Location: LCCOMB_X41_Y36_N8
\U_VGA|LessThan3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan3~8_combout\ = (!\U_VGA|y_pos\(29) & (!\U_VGA|y_pos\(30) & \U_VGA|LessThan3~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(29),
	datac => \U_VGA|y_pos\(30),
	datad => \U_VGA|LessThan3~7_combout\,
	combout => \U_VGA|LessThan3~8_combout\);

-- Location: LCCOMB_X38_Y37_N4
\U_VGA|LessThan3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan3~2_combout\ = (!\U_VGA|y_pos\(10) & (!\U_VGA|y_pos\(11) & (!\U_VGA|y_pos\(12) & !\U_VGA|y_pos\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(10),
	datab => \U_VGA|y_pos\(11),
	datac => \U_VGA|y_pos\(12),
	datad => \U_VGA|y_pos\(9),
	combout => \U_VGA|LessThan3~2_combout\);

-- Location: LCCOMB_X42_Y36_N28
\U_VGA|LessThan3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan3~1_combout\ = (!\U_VGA|y_pos\(8) & (\U_VGA|y_pos\(7) & (!\U_VGA|y_pos\(5) & \U_VGA|y_pos\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(8),
	datab => \U_VGA|y_pos\(7),
	datac => \U_VGA|y_pos\(5),
	datad => \U_VGA|y_pos\(6),
	combout => \U_VGA|LessThan3~1_combout\);

-- Location: LCCOMB_X45_Y37_N6
\U_VGA|LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan3~0_combout\ = (!\U_VGA|y_pos\(1) & (\U_VGA|y_pos\(3) & (!\U_VGA|y_pos\(2) & !\U_VGA|y_pos\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(1),
	datab => \U_VGA|y_pos\(3),
	datac => \U_VGA|y_pos\(2),
	datad => \U_VGA|y_pos\(4),
	combout => \U_VGA|LessThan3~0_combout\);

-- Location: LCCOMB_X42_Y36_N18
\U_VGA|LessThan3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan3~3_combout\ = (!\U_VGA|y_pos\(14) & (!\U_VGA|y_pos\(13) & (!\U_VGA|y_pos\(15) & !\U_VGA|y_pos\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(14),
	datab => \U_VGA|y_pos\(13),
	datac => \U_VGA|y_pos\(15),
	datad => \U_VGA|y_pos\(16),
	combout => \U_VGA|LessThan3~3_combout\);

-- Location: LCCOMB_X42_Y36_N24
\U_VGA|LessThan3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan3~4_combout\ = (\U_VGA|LessThan3~2_combout\ & (\U_VGA|LessThan3~1_combout\ & (\U_VGA|LessThan3~0_combout\ & \U_VGA|LessThan3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|LessThan3~2_combout\,
	datab => \U_VGA|LessThan3~1_combout\,
	datac => \U_VGA|LessThan3~0_combout\,
	datad => \U_VGA|LessThan3~3_combout\,
	combout => \U_VGA|LessThan3~4_combout\);

-- Location: LCCOMB_X42_Y36_N22
\U_VGA|LessThan3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan3~6_combout\ = (!\U_VGA|y_pos\(22) & (!\U_VGA|y_pos\(21) & (!\U_VGA|y_pos\(23) & !\U_VGA|y_pos\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(22),
	datab => \U_VGA|y_pos\(21),
	datac => \U_VGA|y_pos\(23),
	datad => \U_VGA|y_pos\(24),
	combout => \U_VGA|LessThan3~6_combout\);

-- Location: LCCOMB_X43_Y38_N28
\U_VGA|LessThan3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan3~5_combout\ = (!\U_VGA|y_pos\(17) & (!\U_VGA|y_pos\(18) & (!\U_VGA|y_pos\(20) & !\U_VGA|y_pos\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(17),
	datab => \U_VGA|y_pos\(18),
	datac => \U_VGA|y_pos\(20),
	datad => \U_VGA|y_pos\(19),
	combout => \U_VGA|LessThan3~5_combout\);

-- Location: LCCOMB_X42_Y36_N30
\U_VGA|LessThan3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan3~9_combout\ = (\U_VGA|LessThan3~8_combout\ & (\U_VGA|LessThan3~4_combout\ & (\U_VGA|LessThan3~6_combout\ & \U_VGA|LessThan3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|LessThan3~8_combout\,
	datab => \U_VGA|LessThan3~4_combout\,
	datac => \U_VGA|LessThan3~6_combout\,
	datad => \U_VGA|LessThan3~5_combout\,
	combout => \U_VGA|LessThan3~9_combout\);

-- Location: LCCOMB_X45_Y37_N10
\U_VGA|LessThan2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan2~2_combout\ = ((\U_VGA|y_pos\(3)) # ((!\U_VGA|y_pos\(4)) # (!\U_VGA|y_pos\(2)))) # (!\U_VGA|y_pos\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(1),
	datab => \U_VGA|y_pos\(3),
	datac => \U_VGA|y_pos\(2),
	datad => \U_VGA|y_pos\(4),
	combout => \U_VGA|LessThan2~2_combout\);

-- Location: LCCOMB_X44_Y37_N26
\U_VGA|LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan2~1_combout\ = ((!\U_VGA|Add9~4_combout\) # (!\U_VGA|Add9~0_combout\)) # (!\U_VGA|Add9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add9~2_combout\,
	datac => \U_VGA|Add9~0_combout\,
	datad => \U_VGA|Add9~4_combout\,
	combout => \U_VGA|LessThan2~1_combout\);

-- Location: LCCOMB_X43_Y37_N2
\U_VGA|LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan2~0_combout\ = (!\U_VGA|Add9~6_combout\ & (!\U_VGA|Add9~12_combout\ & (!\U_VGA|Add9~8_combout\ & !\U_VGA|Add9~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add9~6_combout\,
	datab => \U_VGA|Add9~12_combout\,
	datac => \U_VGA|Add9~8_combout\,
	datad => \U_VGA|Add9~10_combout\,
	combout => \U_VGA|LessThan2~0_combout\);

-- Location: LCCOMB_X44_Y37_N24
\U_VGA|LessThan2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan2~3_combout\ = (\U_VGA|LessThan2~0_combout\ & ((\U_VGA|LessThan2~1_combout\) # ((!\U_VGA|y_pos\(5) & \U_VGA|LessThan2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(5),
	datab => \U_VGA|LessThan2~2_combout\,
	datac => \U_VGA|LessThan2~1_combout\,
	datad => \U_VGA|LessThan2~0_combout\,
	combout => \U_VGA|LessThan2~3_combout\);

-- Location: LCCOMB_X43_Y37_N0
\U_VGA|LessThan2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan2~4_combout\ = (!\U_VGA|Add9~20_combout\ & (!\U_VGA|Add9~14_combout\ & (!\U_VGA|Add9~16_combout\ & !\U_VGA|Add9~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add9~20_combout\,
	datab => \U_VGA|Add9~14_combout\,
	datac => \U_VGA|Add9~16_combout\,
	datad => \U_VGA|Add9~18_combout\,
	combout => \U_VGA|LessThan2~4_combout\);

-- Location: LCCOMB_X42_Y35_N8
\U_VGA|LessThan2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan2~5_combout\ = (!\U_VGA|Add9~24_combout\ & (!\U_VGA|Add9~26_combout\ & (!\U_VGA|Add9~22_combout\ & !\U_VGA|Add9~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add9~24_combout\,
	datab => \U_VGA|Add9~26_combout\,
	datac => \U_VGA|Add9~22_combout\,
	datad => \U_VGA|Add9~28_combout\,
	combout => \U_VGA|LessThan2~5_combout\);

-- Location: LCCOMB_X43_Y36_N30
\U_VGA|LessThan2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan2~7_combout\ = (!\U_VGA|Add9~38_combout\ & (!\U_VGA|Add9~44_combout\ & (!\U_VGA|Add9~40_combout\ & !\U_VGA|Add9~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add9~38_combout\,
	datab => \U_VGA|Add9~44_combout\,
	datac => \U_VGA|Add9~40_combout\,
	datad => \U_VGA|Add9~42_combout\,
	combout => \U_VGA|LessThan2~7_combout\);

-- Location: LCCOMB_X43_Y36_N28
\U_VGA|LessThan2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan2~6_combout\ = (!\U_VGA|Add9~32_combout\ & (!\U_VGA|Add9~34_combout\ & (!\U_VGA|Add9~30_combout\ & !\U_VGA|Add9~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add9~32_combout\,
	datab => \U_VGA|Add9~34_combout\,
	datac => \U_VGA|Add9~30_combout\,
	datad => \U_VGA|Add9~36_combout\,
	combout => \U_VGA|LessThan2~6_combout\);

-- Location: LCCOMB_X42_Y35_N2
\U_VGA|LessThan2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan2~8_combout\ = (\U_VGA|LessThan2~4_combout\ & (\U_VGA|LessThan2~5_combout\ & (\U_VGA|LessThan2~7_combout\ & \U_VGA|LessThan2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|LessThan2~4_combout\,
	datab => \U_VGA|LessThan2~5_combout\,
	datac => \U_VGA|LessThan2~7_combout\,
	datad => \U_VGA|LessThan2~6_combout\,
	combout => \U_VGA|LessThan2~8_combout\);

-- Location: LCCOMB_X42_Y35_N12
\U_VGA|LessThan2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan2~9_combout\ = (!\U_VGA|Add9~46_combout\ & (!\U_VGA|Add9~48_combout\ & (\U_VGA|LessThan2~3_combout\ & \U_VGA|LessThan2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add9~46_combout\,
	datab => \U_VGA|Add9~48_combout\,
	datac => \U_VGA|LessThan2~3_combout\,
	datad => \U_VGA|LessThan2~8_combout\,
	combout => \U_VGA|LessThan2~9_combout\);

-- Location: LCCOMB_X42_Y35_N10
\U_VGA|ball_move~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|ball_move~2_combout\ = (\U_VGA|y_pos\(31)) # ((\U_VGA|LessThan3~9_combout\) # ((!\U_VGA|Add9~50_combout\ & !\U_VGA|LessThan2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add9~50_combout\,
	datab => \U_VGA|y_pos\(31),
	datac => \U_VGA|LessThan3~9_combout\,
	datad => \U_VGA|LessThan2~9_combout\,
	combout => \U_VGA|ball_move~2_combout\);

-- Location: LCCOMB_X46_Y36_N20
\U_VGA|Add13~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add13~18_combout\ = (\U_VGA|y_pos_p2\(10) & (!\U_VGA|Add13~17\)) # (!\U_VGA|y_pos_p2\(10) & ((\U_VGA|Add13~17\) # (GND)))
-- \U_VGA|Add13~19\ = CARRY((!\U_VGA|Add13~17\) # (!\U_VGA|y_pos_p2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(10),
	datad => VCC,
	cin => \U_VGA|Add13~17\,
	combout => \U_VGA|Add13~18_combout\,
	cout => \U_VGA|Add13~19\);

-- Location: LCCOMB_X46_Y36_N22
\U_VGA|Add13~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add13~20_combout\ = (\U_VGA|y_pos_p2\(11) & (\U_VGA|Add13~19\ $ (GND))) # (!\U_VGA|y_pos_p2\(11) & (!\U_VGA|Add13~19\ & VCC))
-- \U_VGA|Add13~21\ = CARRY((\U_VGA|y_pos_p2\(11) & !\U_VGA|Add13~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(11),
	datad => VCC,
	cin => \U_VGA|Add13~19\,
	combout => \U_VGA|Add13~20_combout\,
	cout => \U_VGA|Add13~21\);

-- Location: LCCOMB_X46_Y36_N24
\U_VGA|Add13~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add13~22_combout\ = (\U_VGA|y_pos_p2\(12) & (!\U_VGA|Add13~21\)) # (!\U_VGA|y_pos_p2\(12) & ((\U_VGA|Add13~21\) # (GND)))
-- \U_VGA|Add13~23\ = CARRY((!\U_VGA|Add13~21\) # (!\U_VGA|y_pos_p2\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(12),
	datad => VCC,
	cin => \U_VGA|Add13~21\,
	combout => \U_VGA|Add13~22_combout\,
	cout => \U_VGA|Add13~23\);

-- Location: LCCOMB_X46_Y36_N26
\U_VGA|Add13~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add13~24_combout\ = (\U_VGA|y_pos_p2\(13) & (\U_VGA|Add13~23\ $ (GND))) # (!\U_VGA|y_pos_p2\(13) & (!\U_VGA|Add13~23\ & VCC))
-- \U_VGA|Add13~25\ = CARRY((\U_VGA|y_pos_p2\(13) & !\U_VGA|Add13~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(13),
	datad => VCC,
	cin => \U_VGA|Add13~23\,
	combout => \U_VGA|Add13~24_combout\,
	cout => \U_VGA|Add13~25\);

-- Location: LCCOMB_X46_Y36_N28
\U_VGA|Add13~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add13~26_combout\ = (\U_VGA|y_pos_p2\(14) & (!\U_VGA|Add13~25\)) # (!\U_VGA|y_pos_p2\(14) & ((\U_VGA|Add13~25\) # (GND)))
-- \U_VGA|Add13~27\ = CARRY((!\U_VGA|Add13~25\) # (!\U_VGA|y_pos_p2\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(14),
	datad => VCC,
	cin => \U_VGA|Add13~25\,
	combout => \U_VGA|Add13~26_combout\,
	cout => \U_VGA|Add13~27\);

-- Location: LCCOMB_X46_Y36_N30
\U_VGA|Add13~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add13~28_combout\ = (\U_VGA|y_pos_p2\(15) & (\U_VGA|Add13~27\ $ (GND))) # (!\U_VGA|y_pos_p2\(15) & (!\U_VGA|Add13~27\ & VCC))
-- \U_VGA|Add13~29\ = CARRY((\U_VGA|y_pos_p2\(15) & !\U_VGA|Add13~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(15),
	datad => VCC,
	cin => \U_VGA|Add13~27\,
	combout => \U_VGA|Add13~28_combout\,
	cout => \U_VGA|Add13~29\);

-- Location: LCCOMB_X46_Y35_N0
\U_VGA|Add13~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add13~30_combout\ = (\U_VGA|y_pos_p2\(16) & (!\U_VGA|Add13~29\)) # (!\U_VGA|y_pos_p2\(16) & ((\U_VGA|Add13~29\) # (GND)))
-- \U_VGA|Add13~31\ = CARRY((!\U_VGA|Add13~29\) # (!\U_VGA|y_pos_p2\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(16),
	datad => VCC,
	cin => \U_VGA|Add13~29\,
	combout => \U_VGA|Add13~30_combout\,
	cout => \U_VGA|Add13~31\);

-- Location: LCCOMB_X46_Y35_N2
\U_VGA|Add13~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add13~32_combout\ = (\U_VGA|y_pos_p2\(17) & (\U_VGA|Add13~31\ $ (GND))) # (!\U_VGA|y_pos_p2\(17) & (!\U_VGA|Add13~31\ & VCC))
-- \U_VGA|Add13~33\ = CARRY((\U_VGA|y_pos_p2\(17) & !\U_VGA|Add13~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(17),
	datad => VCC,
	cin => \U_VGA|Add13~31\,
	combout => \U_VGA|Add13~32_combout\,
	cout => \U_VGA|Add13~33\);

-- Location: LCCOMB_X46_Y35_N4
\U_VGA|Add13~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add13~34_combout\ = (\U_VGA|y_pos_p2\(18) & (!\U_VGA|Add13~33\)) # (!\U_VGA|y_pos_p2\(18) & ((\U_VGA|Add13~33\) # (GND)))
-- \U_VGA|Add13~35\ = CARRY((!\U_VGA|Add13~33\) # (!\U_VGA|y_pos_p2\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(18),
	datad => VCC,
	cin => \U_VGA|Add13~33\,
	combout => \U_VGA|Add13~34_combout\,
	cout => \U_VGA|Add13~35\);

-- Location: LCCOMB_X46_Y35_N6
\U_VGA|Add13~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add13~36_combout\ = (\U_VGA|y_pos_p2\(19) & (\U_VGA|Add13~35\ $ (GND))) # (!\U_VGA|y_pos_p2\(19) & (!\U_VGA|Add13~35\ & VCC))
-- \U_VGA|Add13~37\ = CARRY((\U_VGA|y_pos_p2\(19) & !\U_VGA|Add13~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(19),
	datad => VCC,
	cin => \U_VGA|Add13~35\,
	combout => \U_VGA|Add13~36_combout\,
	cout => \U_VGA|Add13~37\);

-- Location: LCCOMB_X46_Y35_N8
\U_VGA|Add13~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add13~38_combout\ = (\U_VGA|y_pos_p2\(20) & (!\U_VGA|Add13~37\)) # (!\U_VGA|y_pos_p2\(20) & ((\U_VGA|Add13~37\) # (GND)))
-- \U_VGA|Add13~39\ = CARRY((!\U_VGA|Add13~37\) # (!\U_VGA|y_pos_p2\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(20),
	datad => VCC,
	cin => \U_VGA|Add13~37\,
	combout => \U_VGA|Add13~38_combout\,
	cout => \U_VGA|Add13~39\);

-- Location: LCCOMB_X46_Y35_N10
\U_VGA|Add13~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add13~40_combout\ = (\U_VGA|y_pos_p2\(21) & (\U_VGA|Add13~39\ $ (GND))) # (!\U_VGA|y_pos_p2\(21) & (!\U_VGA|Add13~39\ & VCC))
-- \U_VGA|Add13~41\ = CARRY((\U_VGA|y_pos_p2\(21) & !\U_VGA|Add13~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(21),
	datad => VCC,
	cin => \U_VGA|Add13~39\,
	combout => \U_VGA|Add13~40_combout\,
	cout => \U_VGA|Add13~41\);

-- Location: LCCOMB_X46_Y35_N12
\U_VGA|Add13~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add13~42_combout\ = (\U_VGA|y_pos_p2\(22) & (!\U_VGA|Add13~41\)) # (!\U_VGA|y_pos_p2\(22) & ((\U_VGA|Add13~41\) # (GND)))
-- \U_VGA|Add13~43\ = CARRY((!\U_VGA|Add13~41\) # (!\U_VGA|y_pos_p2\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(22),
	datad => VCC,
	cin => \U_VGA|Add13~41\,
	combout => \U_VGA|Add13~42_combout\,
	cout => \U_VGA|Add13~43\);

-- Location: LCCOMB_X46_Y35_N14
\U_VGA|Add13~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add13~44_combout\ = (\U_VGA|y_pos_p2\(23) & (\U_VGA|Add13~43\ $ (GND))) # (!\U_VGA|y_pos_p2\(23) & (!\U_VGA|Add13~43\ & VCC))
-- \U_VGA|Add13~45\ = CARRY((\U_VGA|y_pos_p2\(23) & !\U_VGA|Add13~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(23),
	datad => VCC,
	cin => \U_VGA|Add13~43\,
	combout => \U_VGA|Add13~44_combout\,
	cout => \U_VGA|Add13~45\);

-- Location: LCCOMB_X46_Y35_N16
\U_VGA|Add13~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add13~46_combout\ = (\U_VGA|y_pos_p2\(24) & (!\U_VGA|Add13~45\)) # (!\U_VGA|y_pos_p2\(24) & ((\U_VGA|Add13~45\) # (GND)))
-- \U_VGA|Add13~47\ = CARRY((!\U_VGA|Add13~45\) # (!\U_VGA|y_pos_p2\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(24),
	datad => VCC,
	cin => \U_VGA|Add13~45\,
	combout => \U_VGA|Add13~46_combout\,
	cout => \U_VGA|Add13~47\);

-- Location: LCCOMB_X46_Y35_N18
\U_VGA|Add13~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add13~48_combout\ = (\U_VGA|y_pos_p2\(25) & (\U_VGA|Add13~47\ $ (GND))) # (!\U_VGA|y_pos_p2\(25) & (!\U_VGA|Add13~47\ & VCC))
-- \U_VGA|Add13~49\ = CARRY((\U_VGA|y_pos_p2\(25) & !\U_VGA|Add13~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(25),
	datad => VCC,
	cin => \U_VGA|Add13~47\,
	combout => \U_VGA|Add13~48_combout\,
	cout => \U_VGA|Add13~49\);

-- Location: LCCOMB_X46_Y35_N20
\U_VGA|Add13~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add13~50_combout\ = (\U_VGA|y_pos_p2\(26) & (!\U_VGA|Add13~49\)) # (!\U_VGA|y_pos_p2\(26) & ((\U_VGA|Add13~49\) # (GND)))
-- \U_VGA|Add13~51\ = CARRY((!\U_VGA|Add13~49\) # (!\U_VGA|y_pos_p2\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(26),
	datad => VCC,
	cin => \U_VGA|Add13~49\,
	combout => \U_VGA|Add13~50_combout\,
	cout => \U_VGA|Add13~51\);

-- Location: LCCOMB_X46_Y35_N22
\U_VGA|Add13~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add13~52_combout\ = (\U_VGA|y_pos_p2\(27) & (\U_VGA|Add13~51\ $ (GND))) # (!\U_VGA|y_pos_p2\(27) & (!\U_VGA|Add13~51\ & VCC))
-- \U_VGA|Add13~53\ = CARRY((\U_VGA|y_pos_p2\(27) & !\U_VGA|Add13~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(27),
	datad => VCC,
	cin => \U_VGA|Add13~51\,
	combout => \U_VGA|Add13~52_combout\,
	cout => \U_VGA|Add13~53\);

-- Location: LCCOMB_X46_Y35_N24
\U_VGA|Add13~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add13~54_combout\ = (\U_VGA|y_pos_p2\(28) & (!\U_VGA|Add13~53\)) # (!\U_VGA|y_pos_p2\(28) & ((\U_VGA|Add13~53\) # (GND)))
-- \U_VGA|Add13~55\ = CARRY((!\U_VGA|Add13~53\) # (!\U_VGA|y_pos_p2\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(28),
	datad => VCC,
	cin => \U_VGA|Add13~53\,
	combout => \U_VGA|Add13~54_combout\,
	cout => \U_VGA|Add13~55\);

-- Location: LCCOMB_X46_Y35_N26
\U_VGA|Add13~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add13~56_combout\ = (\U_VGA|y_pos_p2\(29) & (\U_VGA|Add13~55\ $ (GND))) # (!\U_VGA|y_pos_p2\(29) & (!\U_VGA|Add13~55\ & VCC))
-- \U_VGA|Add13~57\ = CARRY((\U_VGA|y_pos_p2\(29) & !\U_VGA|Add13~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(29),
	datad => VCC,
	cin => \U_VGA|Add13~55\,
	combout => \U_VGA|Add13~56_combout\,
	cout => \U_VGA|Add13~57\);

-- Location: LCCOMB_X46_Y35_N28
\U_VGA|Add13~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add13~58_combout\ = (\U_VGA|y_pos_p2\(30) & (!\U_VGA|Add13~57\)) # (!\U_VGA|y_pos_p2\(30) & ((\U_VGA|Add13~57\) # (GND)))
-- \U_VGA|Add13~59\ = CARRY((!\U_VGA|Add13~57\) # (!\U_VGA|y_pos_p2\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p2\(30),
	datad => VCC,
	cin => \U_VGA|Add13~57\,
	combout => \U_VGA|Add13~58_combout\,
	cout => \U_VGA|Add13~59\);

-- Location: LCCOMB_X46_Y35_N30
\U_VGA|Add13~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add13~60_combout\ = \U_VGA|Add13~59\ $ (!\U_VGA|y_pos_p2\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_VGA|y_pos_p2\(31),
	cin => \U_VGA|Add13~59\,
	combout => \U_VGA|Add13~60_combout\);

-- Location: LCCOMB_X45_Y36_N2
\U_VGA|LessThan9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~1_cout\ = CARRY((!\U_VGA|Add13~0_combout\ & \U_VGA|y_pos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add13~0_combout\,
	datab => \U_VGA|y_pos\(1),
	datad => VCC,
	cout => \U_VGA|LessThan9~1_cout\);

-- Location: LCCOMB_X45_Y36_N4
\U_VGA|LessThan9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~3_cout\ = CARRY((\U_VGA|y_pos\(2) & (\U_VGA|Add13~2_combout\ & !\U_VGA|LessThan9~1_cout\)) # (!\U_VGA|y_pos\(2) & ((\U_VGA|Add13~2_combout\) # (!\U_VGA|LessThan9~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(2),
	datab => \U_VGA|Add13~2_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan9~1_cout\,
	cout => \U_VGA|LessThan9~3_cout\);

-- Location: LCCOMB_X45_Y36_N6
\U_VGA|LessThan9~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~5_cout\ = CARRY((\U_VGA|Add13~4_combout\ & (!\U_VGA|y_pos\(3) & !\U_VGA|LessThan9~3_cout\)) # (!\U_VGA|Add13~4_combout\ & ((!\U_VGA|LessThan9~3_cout\) # (!\U_VGA|y_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add13~4_combout\,
	datab => \U_VGA|y_pos\(3),
	datad => VCC,
	cin => \U_VGA|LessThan9~3_cout\,
	cout => \U_VGA|LessThan9~5_cout\);

-- Location: LCCOMB_X45_Y36_N8
\U_VGA|LessThan9~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~7_cout\ = CARRY((\U_VGA|y_pos\(4) & (\U_VGA|Add13~6_combout\ & !\U_VGA|LessThan9~5_cout\)) # (!\U_VGA|y_pos\(4) & ((\U_VGA|Add13~6_combout\) # (!\U_VGA|LessThan9~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(4),
	datab => \U_VGA|Add13~6_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan9~5_cout\,
	cout => \U_VGA|LessThan9~7_cout\);

-- Location: LCCOMB_X45_Y36_N10
\U_VGA|LessThan9~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~9_cout\ = CARRY((\U_VGA|y_pos\(5) & ((!\U_VGA|LessThan9~7_cout\) # (!\U_VGA|Add13~8_combout\))) # (!\U_VGA|y_pos\(5) & (!\U_VGA|Add13~8_combout\ & !\U_VGA|LessThan9~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(5),
	datab => \U_VGA|Add13~8_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan9~7_cout\,
	cout => \U_VGA|LessThan9~9_cout\);

-- Location: LCCOMB_X45_Y36_N12
\U_VGA|LessThan9~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~11_cout\ = CARRY((\U_VGA|Add13~10_combout\ & ((\U_VGA|y_pos\(6)) # (!\U_VGA|LessThan9~9_cout\))) # (!\U_VGA|Add13~10_combout\ & (\U_VGA|y_pos\(6) & !\U_VGA|LessThan9~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add13~10_combout\,
	datab => \U_VGA|y_pos\(6),
	datad => VCC,
	cin => \U_VGA|LessThan9~9_cout\,
	cout => \U_VGA|LessThan9~11_cout\);

-- Location: LCCOMB_X45_Y36_N14
\U_VGA|LessThan9~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~13_cout\ = CARRY((\U_VGA|y_pos\(7) & (!\U_VGA|Add13~12_combout\ & !\U_VGA|LessThan9~11_cout\)) # (!\U_VGA|y_pos\(7) & ((!\U_VGA|LessThan9~11_cout\) # (!\U_VGA|Add13~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(7),
	datab => \U_VGA|Add13~12_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan9~11_cout\,
	cout => \U_VGA|LessThan9~13_cout\);

-- Location: LCCOMB_X45_Y36_N16
\U_VGA|LessThan9~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~15_cout\ = CARRY((\U_VGA|y_pos\(8) & (\U_VGA|Add13~14_combout\ & !\U_VGA|LessThan9~13_cout\)) # (!\U_VGA|y_pos\(8) & ((\U_VGA|Add13~14_combout\) # (!\U_VGA|LessThan9~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(8),
	datab => \U_VGA|Add13~14_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan9~13_cout\,
	cout => \U_VGA|LessThan9~15_cout\);

-- Location: LCCOMB_X45_Y36_N18
\U_VGA|LessThan9~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~17_cout\ = CARRY((\U_VGA|y_pos\(9) & ((!\U_VGA|LessThan9~15_cout\) # (!\U_VGA|Add13~16_combout\))) # (!\U_VGA|y_pos\(9) & (!\U_VGA|Add13~16_combout\ & !\U_VGA|LessThan9~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(9),
	datab => \U_VGA|Add13~16_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan9~15_cout\,
	cout => \U_VGA|LessThan9~17_cout\);

-- Location: LCCOMB_X45_Y36_N20
\U_VGA|LessThan9~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~19_cout\ = CARRY((\U_VGA|Add13~18_combout\ & ((!\U_VGA|LessThan9~17_cout\) # (!\U_VGA|y_pos\(10)))) # (!\U_VGA|Add13~18_combout\ & (!\U_VGA|y_pos\(10) & !\U_VGA|LessThan9~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add13~18_combout\,
	datab => \U_VGA|y_pos\(10),
	datad => VCC,
	cin => \U_VGA|LessThan9~17_cout\,
	cout => \U_VGA|LessThan9~19_cout\);

-- Location: LCCOMB_X45_Y36_N22
\U_VGA|LessThan9~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~21_cout\ = CARRY((\U_VGA|y_pos\(11) & ((!\U_VGA|LessThan9~19_cout\) # (!\U_VGA|Add13~20_combout\))) # (!\U_VGA|y_pos\(11) & (!\U_VGA|Add13~20_combout\ & !\U_VGA|LessThan9~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(11),
	datab => \U_VGA|Add13~20_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan9~19_cout\,
	cout => \U_VGA|LessThan9~21_cout\);

-- Location: LCCOMB_X45_Y36_N24
\U_VGA|LessThan9~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~23_cout\ = CARRY((\U_VGA|y_pos\(12) & (\U_VGA|Add13~22_combout\ & !\U_VGA|LessThan9~21_cout\)) # (!\U_VGA|y_pos\(12) & ((\U_VGA|Add13~22_combout\) # (!\U_VGA|LessThan9~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(12),
	datab => \U_VGA|Add13~22_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan9~21_cout\,
	cout => \U_VGA|LessThan9~23_cout\);

-- Location: LCCOMB_X45_Y36_N26
\U_VGA|LessThan9~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~25_cout\ = CARRY((\U_VGA|y_pos\(13) & ((!\U_VGA|LessThan9~23_cout\) # (!\U_VGA|Add13~24_combout\))) # (!\U_VGA|y_pos\(13) & (!\U_VGA|Add13~24_combout\ & !\U_VGA|LessThan9~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(13),
	datab => \U_VGA|Add13~24_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan9~23_cout\,
	cout => \U_VGA|LessThan9~25_cout\);

-- Location: LCCOMB_X45_Y36_N28
\U_VGA|LessThan9~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~27_cout\ = CARRY((\U_VGA|y_pos\(14) & (\U_VGA|Add13~26_combout\ & !\U_VGA|LessThan9~25_cout\)) # (!\U_VGA|y_pos\(14) & ((\U_VGA|Add13~26_combout\) # (!\U_VGA|LessThan9~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(14),
	datab => \U_VGA|Add13~26_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan9~25_cout\,
	cout => \U_VGA|LessThan9~27_cout\);

-- Location: LCCOMB_X45_Y36_N30
\U_VGA|LessThan9~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~29_cout\ = CARRY((\U_VGA|Add13~28_combout\ & (\U_VGA|y_pos\(15) & !\U_VGA|LessThan9~27_cout\)) # (!\U_VGA|Add13~28_combout\ & ((\U_VGA|y_pos\(15)) # (!\U_VGA|LessThan9~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add13~28_combout\,
	datab => \U_VGA|y_pos\(15),
	datad => VCC,
	cin => \U_VGA|LessThan9~27_cout\,
	cout => \U_VGA|LessThan9~29_cout\);

-- Location: LCCOMB_X45_Y35_N0
\U_VGA|LessThan9~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~31_cout\ = CARRY((\U_VGA|y_pos\(16) & (\U_VGA|Add13~30_combout\ & !\U_VGA|LessThan9~29_cout\)) # (!\U_VGA|y_pos\(16) & ((\U_VGA|Add13~30_combout\) # (!\U_VGA|LessThan9~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(16),
	datab => \U_VGA|Add13~30_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan9~29_cout\,
	cout => \U_VGA|LessThan9~31_cout\);

-- Location: LCCOMB_X45_Y35_N2
\U_VGA|LessThan9~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~33_cout\ = CARRY((\U_VGA|Add13~32_combout\ & (\U_VGA|y_pos\(17) & !\U_VGA|LessThan9~31_cout\)) # (!\U_VGA|Add13~32_combout\ & ((\U_VGA|y_pos\(17)) # (!\U_VGA|LessThan9~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add13~32_combout\,
	datab => \U_VGA|y_pos\(17),
	datad => VCC,
	cin => \U_VGA|LessThan9~31_cout\,
	cout => \U_VGA|LessThan9~33_cout\);

-- Location: LCCOMB_X45_Y35_N4
\U_VGA|LessThan9~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~35_cout\ = CARRY((\U_VGA|Add13~34_combout\ & ((!\U_VGA|LessThan9~33_cout\) # (!\U_VGA|y_pos\(18)))) # (!\U_VGA|Add13~34_combout\ & (!\U_VGA|y_pos\(18) & !\U_VGA|LessThan9~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add13~34_combout\,
	datab => \U_VGA|y_pos\(18),
	datad => VCC,
	cin => \U_VGA|LessThan9~33_cout\,
	cout => \U_VGA|LessThan9~35_cout\);

-- Location: LCCOMB_X45_Y35_N6
\U_VGA|LessThan9~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~37_cout\ = CARRY((\U_VGA|Add13~36_combout\ & (\U_VGA|y_pos\(19) & !\U_VGA|LessThan9~35_cout\)) # (!\U_VGA|Add13~36_combout\ & ((\U_VGA|y_pos\(19)) # (!\U_VGA|LessThan9~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add13~36_combout\,
	datab => \U_VGA|y_pos\(19),
	datad => VCC,
	cin => \U_VGA|LessThan9~35_cout\,
	cout => \U_VGA|LessThan9~37_cout\);

-- Location: LCCOMB_X45_Y35_N8
\U_VGA|LessThan9~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~39_cout\ = CARRY((\U_VGA|y_pos\(20) & (\U_VGA|Add13~38_combout\ & !\U_VGA|LessThan9~37_cout\)) # (!\U_VGA|y_pos\(20) & ((\U_VGA|Add13~38_combout\) # (!\U_VGA|LessThan9~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(20),
	datab => \U_VGA|Add13~38_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan9~37_cout\,
	cout => \U_VGA|LessThan9~39_cout\);

-- Location: LCCOMB_X45_Y35_N10
\U_VGA|LessThan9~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~41_cout\ = CARRY((\U_VGA|y_pos\(21) & ((!\U_VGA|LessThan9~39_cout\) # (!\U_VGA|Add13~40_combout\))) # (!\U_VGA|y_pos\(21) & (!\U_VGA|Add13~40_combout\ & !\U_VGA|LessThan9~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(21),
	datab => \U_VGA|Add13~40_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan9~39_cout\,
	cout => \U_VGA|LessThan9~41_cout\);

-- Location: LCCOMB_X45_Y35_N12
\U_VGA|LessThan9~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~43_cout\ = CARRY((\U_VGA|y_pos\(22) & (\U_VGA|Add13~42_combout\ & !\U_VGA|LessThan9~41_cout\)) # (!\U_VGA|y_pos\(22) & ((\U_VGA|Add13~42_combout\) # (!\U_VGA|LessThan9~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(22),
	datab => \U_VGA|Add13~42_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan9~41_cout\,
	cout => \U_VGA|LessThan9~43_cout\);

-- Location: LCCOMB_X45_Y35_N14
\U_VGA|LessThan9~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~45_cout\ = CARRY((\U_VGA|y_pos\(23) & ((!\U_VGA|LessThan9~43_cout\) # (!\U_VGA|Add13~44_combout\))) # (!\U_VGA|y_pos\(23) & (!\U_VGA|Add13~44_combout\ & !\U_VGA|LessThan9~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(23),
	datab => \U_VGA|Add13~44_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan9~43_cout\,
	cout => \U_VGA|LessThan9~45_cout\);

-- Location: LCCOMB_X45_Y35_N16
\U_VGA|LessThan9~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~47_cout\ = CARRY((\U_VGA|y_pos\(24) & (\U_VGA|Add13~46_combout\ & !\U_VGA|LessThan9~45_cout\)) # (!\U_VGA|y_pos\(24) & ((\U_VGA|Add13~46_combout\) # (!\U_VGA|LessThan9~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(24),
	datab => \U_VGA|Add13~46_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan9~45_cout\,
	cout => \U_VGA|LessThan9~47_cout\);

-- Location: LCCOMB_X45_Y35_N18
\U_VGA|LessThan9~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~49_cout\ = CARRY((\U_VGA|y_pos\(25) & ((!\U_VGA|LessThan9~47_cout\) # (!\U_VGA|Add13~48_combout\))) # (!\U_VGA|y_pos\(25) & (!\U_VGA|Add13~48_combout\ & !\U_VGA|LessThan9~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(25),
	datab => \U_VGA|Add13~48_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan9~47_cout\,
	cout => \U_VGA|LessThan9~49_cout\);

-- Location: LCCOMB_X45_Y35_N20
\U_VGA|LessThan9~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~51_cout\ = CARRY((\U_VGA|Add13~50_combout\ & ((!\U_VGA|LessThan9~49_cout\) # (!\U_VGA|y_pos\(26)))) # (!\U_VGA|Add13~50_combout\ & (!\U_VGA|y_pos\(26) & !\U_VGA|LessThan9~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add13~50_combout\,
	datab => \U_VGA|y_pos\(26),
	datad => VCC,
	cin => \U_VGA|LessThan9~49_cout\,
	cout => \U_VGA|LessThan9~51_cout\);

-- Location: LCCOMB_X45_Y35_N22
\U_VGA|LessThan9~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~53_cout\ = CARRY((\U_VGA|y_pos\(27) & ((!\U_VGA|LessThan9~51_cout\) # (!\U_VGA|Add13~52_combout\))) # (!\U_VGA|y_pos\(27) & (!\U_VGA|Add13~52_combout\ & !\U_VGA|LessThan9~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(27),
	datab => \U_VGA|Add13~52_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan9~51_cout\,
	cout => \U_VGA|LessThan9~53_cout\);

-- Location: LCCOMB_X45_Y35_N24
\U_VGA|LessThan9~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~55_cout\ = CARRY((\U_VGA|Add13~54_combout\ & ((!\U_VGA|LessThan9~53_cout\) # (!\U_VGA|y_pos\(28)))) # (!\U_VGA|Add13~54_combout\ & (!\U_VGA|y_pos\(28) & !\U_VGA|LessThan9~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add13~54_combout\,
	datab => \U_VGA|y_pos\(28),
	datad => VCC,
	cin => \U_VGA|LessThan9~53_cout\,
	cout => \U_VGA|LessThan9~55_cout\);

-- Location: LCCOMB_X45_Y35_N26
\U_VGA|LessThan9~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~57_cout\ = CARRY((\U_VGA|y_pos\(29) & ((!\U_VGA|LessThan9~55_cout\) # (!\U_VGA|Add13~56_combout\))) # (!\U_VGA|y_pos\(29) & (!\U_VGA|Add13~56_combout\ & !\U_VGA|LessThan9~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(29),
	datab => \U_VGA|Add13~56_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan9~55_cout\,
	cout => \U_VGA|LessThan9~57_cout\);

-- Location: LCCOMB_X45_Y35_N28
\U_VGA|LessThan9~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~59_cout\ = CARRY((\U_VGA|y_pos\(30) & (\U_VGA|Add13~58_combout\ & !\U_VGA|LessThan9~57_cout\)) # (!\U_VGA|y_pos\(30) & ((\U_VGA|Add13~58_combout\) # (!\U_VGA|LessThan9~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(30),
	datab => \U_VGA|Add13~58_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan9~57_cout\,
	cout => \U_VGA|LessThan9~59_cout\);

-- Location: LCCOMB_X45_Y35_N30
\U_VGA|LessThan9~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~60_combout\ = (\U_VGA|Add13~60_combout\ & ((!\U_VGA|y_pos\(31)) # (!\U_VGA|LessThan9~59_cout\))) # (!\U_VGA|Add13~60_combout\ & (!\U_VGA|LessThan9~59_cout\ & !\U_VGA|y_pos\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add13~60_combout\,
	datad => \U_VGA|y_pos\(31),
	cin => \U_VGA|LessThan9~59_cout\,
	combout => \U_VGA|LessThan9~60_combout\);

-- Location: LCCOMB_X42_Y38_N2
\U_VGA|LessThan8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~1_cout\ = CARRY((\U_VGA|y_pos_p2\(1) & !\U_VGA|y_pos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(1),
	datab => \U_VGA|y_pos\(1),
	datad => VCC,
	cout => \U_VGA|LessThan8~1_cout\);

-- Location: LCCOMB_X42_Y38_N4
\U_VGA|LessThan8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~3_cout\ = CARRY((\U_VGA|y_pos\(2) & ((!\U_VGA|LessThan8~1_cout\) # (!\U_VGA|y_pos_p2\(2)))) # (!\U_VGA|y_pos\(2) & (!\U_VGA|y_pos_p2\(2) & !\U_VGA|LessThan8~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(2),
	datab => \U_VGA|y_pos_p2\(2),
	datad => VCC,
	cin => \U_VGA|LessThan8~1_cout\,
	cout => \U_VGA|LessThan8~3_cout\);

-- Location: LCCOMB_X42_Y38_N6
\U_VGA|LessThan8~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~5_cout\ = CARRY((\U_VGA|y_pos_p2\(3) & (\U_VGA|y_pos\(3) & !\U_VGA|LessThan8~3_cout\)) # (!\U_VGA|y_pos_p2\(3) & ((\U_VGA|y_pos\(3)) # (!\U_VGA|LessThan8~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(3),
	datab => \U_VGA|y_pos\(3),
	datad => VCC,
	cin => \U_VGA|LessThan8~3_cout\,
	cout => \U_VGA|LessThan8~5_cout\);

-- Location: LCCOMB_X42_Y38_N8
\U_VGA|LessThan8~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~7_cout\ = CARRY((\U_VGA|y_pos_p2\(4) & (\U_VGA|y_pos\(4) & !\U_VGA|LessThan8~5_cout\)) # (!\U_VGA|y_pos_p2\(4) & ((\U_VGA|y_pos\(4)) # (!\U_VGA|LessThan8~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(4),
	datab => \U_VGA|y_pos\(4),
	datad => VCC,
	cin => \U_VGA|LessThan8~5_cout\,
	cout => \U_VGA|LessThan8~7_cout\);

-- Location: LCCOMB_X42_Y38_N10
\U_VGA|LessThan8~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~9_cout\ = CARRY((\U_VGA|y_pos\(5) & (\U_VGA|y_pos_p2\(5) & !\U_VGA|LessThan8~7_cout\)) # (!\U_VGA|y_pos\(5) & ((\U_VGA|y_pos_p2\(5)) # (!\U_VGA|LessThan8~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(5),
	datab => \U_VGA|y_pos_p2\(5),
	datad => VCC,
	cin => \U_VGA|LessThan8~7_cout\,
	cout => \U_VGA|LessThan8~9_cout\);

-- Location: LCCOMB_X42_Y38_N12
\U_VGA|LessThan8~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~11_cout\ = CARRY((\U_VGA|y_pos_p2\(6) & ((\U_VGA|Add9~0_combout\) # (!\U_VGA|LessThan8~9_cout\))) # (!\U_VGA|y_pos_p2\(6) & (\U_VGA|Add9~0_combout\ & !\U_VGA|LessThan8~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(6),
	datab => \U_VGA|Add9~0_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan8~9_cout\,
	cout => \U_VGA|LessThan8~11_cout\);

-- Location: LCCOMB_X42_Y38_N14
\U_VGA|LessThan8~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~13_cout\ = CARRY((\U_VGA|y_pos_p2\(7) & (!\U_VGA|Add9~2_combout\ & !\U_VGA|LessThan8~11_cout\)) # (!\U_VGA|y_pos_p2\(7) & ((!\U_VGA|LessThan8~11_cout\) # (!\U_VGA|Add9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(7),
	datab => \U_VGA|Add9~2_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan8~11_cout\,
	cout => \U_VGA|LessThan8~13_cout\);

-- Location: LCCOMB_X42_Y38_N16
\U_VGA|LessThan8~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~15_cout\ = CARRY((\U_VGA|Add9~4_combout\ & ((!\U_VGA|LessThan8~13_cout\) # (!\U_VGA|y_pos_p2\(8)))) # (!\U_VGA|Add9~4_combout\ & (!\U_VGA|y_pos_p2\(8) & !\U_VGA|LessThan8~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add9~4_combout\,
	datab => \U_VGA|y_pos_p2\(8),
	datad => VCC,
	cin => \U_VGA|LessThan8~13_cout\,
	cout => \U_VGA|LessThan8~15_cout\);

-- Location: LCCOMB_X42_Y38_N18
\U_VGA|LessThan8~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~17_cout\ = CARRY((\U_VGA|y_pos_p2\(9) & ((!\U_VGA|LessThan8~15_cout\) # (!\U_VGA|Add9~6_combout\))) # (!\U_VGA|y_pos_p2\(9) & (!\U_VGA|Add9~6_combout\ & !\U_VGA|LessThan8~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(9),
	datab => \U_VGA|Add9~6_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan8~15_cout\,
	cout => \U_VGA|LessThan8~17_cout\);

-- Location: LCCOMB_X42_Y38_N20
\U_VGA|LessThan8~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~19_cout\ = CARRY((\U_VGA|Add9~8_combout\ & ((!\U_VGA|LessThan8~17_cout\) # (!\U_VGA|y_pos_p2\(10)))) # (!\U_VGA|Add9~8_combout\ & (!\U_VGA|y_pos_p2\(10) & !\U_VGA|LessThan8~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add9~8_combout\,
	datab => \U_VGA|y_pos_p2\(10),
	datad => VCC,
	cin => \U_VGA|LessThan8~17_cout\,
	cout => \U_VGA|LessThan8~19_cout\);

-- Location: LCCOMB_X42_Y38_N22
\U_VGA|LessThan8~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~21_cout\ = CARRY((\U_VGA|y_pos_p2\(11) & ((!\U_VGA|LessThan8~19_cout\) # (!\U_VGA|Add9~10_combout\))) # (!\U_VGA|y_pos_p2\(11) & (!\U_VGA|Add9~10_combout\ & !\U_VGA|LessThan8~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(11),
	datab => \U_VGA|Add9~10_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan8~19_cout\,
	cout => \U_VGA|LessThan8~21_cout\);

-- Location: LCCOMB_X42_Y38_N24
\U_VGA|LessThan8~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~23_cout\ = CARRY((\U_VGA|Add9~12_combout\ & ((!\U_VGA|LessThan8~21_cout\) # (!\U_VGA|y_pos_p2\(12)))) # (!\U_VGA|Add9~12_combout\ & (!\U_VGA|y_pos_p2\(12) & !\U_VGA|LessThan8~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add9~12_combout\,
	datab => \U_VGA|y_pos_p2\(12),
	datad => VCC,
	cin => \U_VGA|LessThan8~21_cout\,
	cout => \U_VGA|LessThan8~23_cout\);

-- Location: LCCOMB_X42_Y38_N26
\U_VGA|LessThan8~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~25_cout\ = CARRY((\U_VGA|Add9~14_combout\ & (\U_VGA|y_pos_p2\(13) & !\U_VGA|LessThan8~23_cout\)) # (!\U_VGA|Add9~14_combout\ & ((\U_VGA|y_pos_p2\(13)) # (!\U_VGA|LessThan8~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add9~14_combout\,
	datab => \U_VGA|y_pos_p2\(13),
	datad => VCC,
	cin => \U_VGA|LessThan8~23_cout\,
	cout => \U_VGA|LessThan8~25_cout\);

-- Location: LCCOMB_X42_Y38_N28
\U_VGA|LessThan8~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~27_cout\ = CARRY((\U_VGA|Add9~16_combout\ & ((!\U_VGA|LessThan8~25_cout\) # (!\U_VGA|y_pos_p2\(14)))) # (!\U_VGA|Add9~16_combout\ & (!\U_VGA|y_pos_p2\(14) & !\U_VGA|LessThan8~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add9~16_combout\,
	datab => \U_VGA|y_pos_p2\(14),
	datad => VCC,
	cin => \U_VGA|LessThan8~25_cout\,
	cout => \U_VGA|LessThan8~27_cout\);

-- Location: LCCOMB_X42_Y38_N30
\U_VGA|LessThan8~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~29_cout\ = CARRY((\U_VGA|y_pos_p2\(15) & ((!\U_VGA|LessThan8~27_cout\) # (!\U_VGA|Add9~18_combout\))) # (!\U_VGA|y_pos_p2\(15) & (!\U_VGA|Add9~18_combout\ & !\U_VGA|LessThan8~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(15),
	datab => \U_VGA|Add9~18_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan8~27_cout\,
	cout => \U_VGA|LessThan8~29_cout\);

-- Location: LCCOMB_X42_Y37_N0
\U_VGA|LessThan8~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~31_cout\ = CARRY((\U_VGA|y_pos_p2\(16) & (\U_VGA|Add9~20_combout\ & !\U_VGA|LessThan8~29_cout\)) # (!\U_VGA|y_pos_p2\(16) & ((\U_VGA|Add9~20_combout\) # (!\U_VGA|LessThan8~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(16),
	datab => \U_VGA|Add9~20_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan8~29_cout\,
	cout => \U_VGA|LessThan8~31_cout\);

-- Location: LCCOMB_X42_Y37_N2
\U_VGA|LessThan8~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~33_cout\ = CARRY((\U_VGA|y_pos_p2\(17) & ((!\U_VGA|LessThan8~31_cout\) # (!\U_VGA|Add9~22_combout\))) # (!\U_VGA|y_pos_p2\(17) & (!\U_VGA|Add9~22_combout\ & !\U_VGA|LessThan8~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(17),
	datab => \U_VGA|Add9~22_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan8~31_cout\,
	cout => \U_VGA|LessThan8~33_cout\);

-- Location: LCCOMB_X42_Y37_N4
\U_VGA|LessThan8~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~35_cout\ = CARRY((\U_VGA|Add9~24_combout\ & ((!\U_VGA|LessThan8~33_cout\) # (!\U_VGA|y_pos_p2\(18)))) # (!\U_VGA|Add9~24_combout\ & (!\U_VGA|y_pos_p2\(18) & !\U_VGA|LessThan8~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add9~24_combout\,
	datab => \U_VGA|y_pos_p2\(18),
	datad => VCC,
	cin => \U_VGA|LessThan8~33_cout\,
	cout => \U_VGA|LessThan8~35_cout\);

-- Location: LCCOMB_X42_Y37_N6
\U_VGA|LessThan8~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~37_cout\ = CARRY((\U_VGA|y_pos_p2\(19) & ((!\U_VGA|LessThan8~35_cout\) # (!\U_VGA|Add9~26_combout\))) # (!\U_VGA|y_pos_p2\(19) & (!\U_VGA|Add9~26_combout\ & !\U_VGA|LessThan8~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(19),
	datab => \U_VGA|Add9~26_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan8~35_cout\,
	cout => \U_VGA|LessThan8~37_cout\);

-- Location: LCCOMB_X42_Y37_N8
\U_VGA|LessThan8~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~39_cout\ = CARRY((\U_VGA|Add9~28_combout\ & ((!\U_VGA|LessThan8~37_cout\) # (!\U_VGA|y_pos_p2\(20)))) # (!\U_VGA|Add9~28_combout\ & (!\U_VGA|y_pos_p2\(20) & !\U_VGA|LessThan8~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add9~28_combout\,
	datab => \U_VGA|y_pos_p2\(20),
	datad => VCC,
	cin => \U_VGA|LessThan8~37_cout\,
	cout => \U_VGA|LessThan8~39_cout\);

-- Location: LCCOMB_X42_Y37_N10
\U_VGA|LessThan8~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~41_cout\ = CARRY((\U_VGA|Add9~30_combout\ & (\U_VGA|y_pos_p2\(21) & !\U_VGA|LessThan8~39_cout\)) # (!\U_VGA|Add9~30_combout\ & ((\U_VGA|y_pos_p2\(21)) # (!\U_VGA|LessThan8~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add9~30_combout\,
	datab => \U_VGA|y_pos_p2\(21),
	datad => VCC,
	cin => \U_VGA|LessThan8~39_cout\,
	cout => \U_VGA|LessThan8~41_cout\);

-- Location: LCCOMB_X42_Y37_N12
\U_VGA|LessThan8~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~43_cout\ = CARRY((\U_VGA|y_pos_p2\(22) & (\U_VGA|Add9~32_combout\ & !\U_VGA|LessThan8~41_cout\)) # (!\U_VGA|y_pos_p2\(22) & ((\U_VGA|Add9~32_combout\) # (!\U_VGA|LessThan8~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(22),
	datab => \U_VGA|Add9~32_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan8~41_cout\,
	cout => \U_VGA|LessThan8~43_cout\);

-- Location: LCCOMB_X42_Y37_N14
\U_VGA|LessThan8~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~45_cout\ = CARRY((\U_VGA|y_pos_p2\(23) & ((!\U_VGA|LessThan8~43_cout\) # (!\U_VGA|Add9~34_combout\))) # (!\U_VGA|y_pos_p2\(23) & (!\U_VGA|Add9~34_combout\ & !\U_VGA|LessThan8~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(23),
	datab => \U_VGA|Add9~34_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan8~43_cout\,
	cout => \U_VGA|LessThan8~45_cout\);

-- Location: LCCOMB_X42_Y37_N16
\U_VGA|LessThan8~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~47_cout\ = CARRY((\U_VGA|y_pos_p2\(24) & (\U_VGA|Add9~36_combout\ & !\U_VGA|LessThan8~45_cout\)) # (!\U_VGA|y_pos_p2\(24) & ((\U_VGA|Add9~36_combout\) # (!\U_VGA|LessThan8~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(24),
	datab => \U_VGA|Add9~36_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan8~45_cout\,
	cout => \U_VGA|LessThan8~47_cout\);

-- Location: LCCOMB_X42_Y37_N18
\U_VGA|LessThan8~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~49_cout\ = CARRY((\U_VGA|y_pos_p2\(25) & ((!\U_VGA|LessThan8~47_cout\) # (!\U_VGA|Add9~38_combout\))) # (!\U_VGA|y_pos_p2\(25) & (!\U_VGA|Add9~38_combout\ & !\U_VGA|LessThan8~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(25),
	datab => \U_VGA|Add9~38_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan8~47_cout\,
	cout => \U_VGA|LessThan8~49_cout\);

-- Location: LCCOMB_X42_Y37_N20
\U_VGA|LessThan8~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~51_cout\ = CARRY((\U_VGA|Add9~40_combout\ & ((!\U_VGA|LessThan8~49_cout\) # (!\U_VGA|y_pos_p2\(26)))) # (!\U_VGA|Add9~40_combout\ & (!\U_VGA|y_pos_p2\(26) & !\U_VGA|LessThan8~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add9~40_combout\,
	datab => \U_VGA|y_pos_p2\(26),
	datad => VCC,
	cin => \U_VGA|LessThan8~49_cout\,
	cout => \U_VGA|LessThan8~51_cout\);

-- Location: LCCOMB_X42_Y37_N22
\U_VGA|LessThan8~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~53_cout\ = CARRY((\U_VGA|y_pos_p2\(27) & ((!\U_VGA|LessThan8~51_cout\) # (!\U_VGA|Add9~42_combout\))) # (!\U_VGA|y_pos_p2\(27) & (!\U_VGA|Add9~42_combout\ & !\U_VGA|LessThan8~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(27),
	datab => \U_VGA|Add9~42_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan8~51_cout\,
	cout => \U_VGA|LessThan8~53_cout\);

-- Location: LCCOMB_X42_Y37_N24
\U_VGA|LessThan8~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~55_cout\ = CARRY((\U_VGA|y_pos_p2\(28) & (\U_VGA|Add9~44_combout\ & !\U_VGA|LessThan8~53_cout\)) # (!\U_VGA|y_pos_p2\(28) & ((\U_VGA|Add9~44_combout\) # (!\U_VGA|LessThan8~53_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(28),
	datab => \U_VGA|Add9~44_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan8~53_cout\,
	cout => \U_VGA|LessThan8~55_cout\);

-- Location: LCCOMB_X42_Y37_N26
\U_VGA|LessThan8~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~57_cout\ = CARRY((\U_VGA|Add9~46_combout\ & (\U_VGA|y_pos_p2\(29) & !\U_VGA|LessThan8~55_cout\)) # (!\U_VGA|Add9~46_combout\ & ((\U_VGA|y_pos_p2\(29)) # (!\U_VGA|LessThan8~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add9~46_combout\,
	datab => \U_VGA|y_pos_p2\(29),
	datad => VCC,
	cin => \U_VGA|LessThan8~55_cout\,
	cout => \U_VGA|LessThan8~57_cout\);

-- Location: LCCOMB_X42_Y37_N28
\U_VGA|LessThan8~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~59_cout\ = CARRY((\U_VGA|y_pos_p2\(30) & (\U_VGA|Add9~48_combout\ & !\U_VGA|LessThan8~57_cout\)) # (!\U_VGA|y_pos_p2\(30) & ((\U_VGA|Add9~48_combout\) # (!\U_VGA|LessThan8~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(30),
	datab => \U_VGA|Add9~48_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan8~57_cout\,
	cout => \U_VGA|LessThan8~59_cout\);

-- Location: LCCOMB_X42_Y37_N30
\U_VGA|LessThan8~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~60_combout\ = (\U_VGA|y_pos_p2\(31) & (!\U_VGA|LessThan8~59_cout\ & \U_VGA|Add9~50_combout\)) # (!\U_VGA|y_pos_p2\(31) & ((\U_VGA|Add9~50_combout\) # (!\U_VGA|LessThan8~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p2\(31),
	datad => \U_VGA|Add9~50_combout\,
	cin => \U_VGA|LessThan8~59_cout\,
	combout => \U_VGA|LessThan8~60_combout\);

-- Location: LCCOMB_X38_Y37_N18
\U_VGA|temp_x_pos~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_x_pos~1_combout\ = (\U_VGA|ball_move~1_combout\ & \U_VGA|x_pos\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|x_pos\(8),
	combout => \U_VGA|temp_x_pos~1_combout\);

-- Location: LCCOMB_X41_Y35_N2
\U_VGA|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add1~1_combout\ = (\U_VGA|mov_x~76_combout\ & (\U_VGA|Add1~0_combout\ $ (VCC))) # (!\U_VGA|mov_x~76_combout\ & (\U_VGA|Add1~0_combout\ & VCC))
-- \U_VGA|Add1~2\ = CARRY((\U_VGA|mov_x~76_combout\ & \U_VGA|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x~76_combout\,
	datab => \U_VGA|Add1~0_combout\,
	datad => VCC,
	combout => \U_VGA|Add1~1_combout\,
	cout => \U_VGA|Add1~2\);

-- Location: LCCOMB_X42_Y35_N30
\U_VGA|mov_x~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~85_combout\ = ((!\U_VGA|Add1~1_combout\ & \U_VGA|ball_move~1_combout\)) # (!\button_n[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add1~1_combout\,
	datab => \button_n[0]~input_o\,
	datac => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|mov_x~85_combout\);

-- Location: FF_X42_Y35_N31
\U_VGA|mov_x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_x~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_x\(0));

-- Location: LCCOMB_X38_Y35_N8
\U_VGA|temp_x_pos~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_x_pos~6_combout\ = (!\U_VGA|ball_move~1_combout\) # (!\U_VGA|x_pos\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|x_pos\(3),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_x_pos~6_combout\);

-- Location: LCCOMB_X40_Y35_N22
\U_VGA|temp_mov_x~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_x~6_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add1~5_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_x\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x\(2),
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|Add1~5_combout\,
	combout => \U_VGA|temp_mov_x~6_combout\);

-- Location: LCCOMB_X40_Y35_N4
\U_VGA|temp_mov_x~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_x~7_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add1~3_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_x\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|ball_move~1_combout\,
	datac => \U_VGA|mov_x\(1),
	datad => \U_VGA|Add1~3_combout\,
	combout => \U_VGA|temp_mov_x~7_combout\);

-- Location: LCCOMB_X40_Y35_N18
\U_VGA|temp_mov_x~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_x~8_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add1~1_combout\))) # (!\U_VGA|ball_move~1_combout\ & (!\U_VGA|mov_x\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|mov_x\(0),
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|Add1~1_combout\,
	combout => \U_VGA|temp_mov_x~8_combout\);

-- Location: LCCOMB_X39_Y35_N2
\U_VGA|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~0_combout\ = (\U_VGA|temp_x_pos~8_combout\ & (\U_VGA|temp_mov_x~8_combout\ $ (VCC))) # (!\U_VGA|temp_x_pos~8_combout\ & (\U_VGA|temp_mov_x~8_combout\ & VCC))
-- \U_VGA|Add2~1\ = CARRY((\U_VGA|temp_x_pos~8_combout\ & \U_VGA|temp_mov_x~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_x_pos~8_combout\,
	datab => \U_VGA|temp_mov_x~8_combout\,
	datad => VCC,
	combout => \U_VGA|Add2~0_combout\,
	cout => \U_VGA|Add2~1\);

-- Location: LCCOMB_X43_Y35_N4
\U_VGA|Add2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~26_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datac => \U_VGA|Add2~0_combout\,
	combout => \U_VGA|Add2~26_combout\);

-- Location: FF_X43_Y35_N5
\U_VGA|x_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(1));

-- Location: LCCOMB_X37_Y35_N18
\U_VGA|temp_x_pos~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_x_pos~8_combout\ = (\U_VGA|x_pos\(1) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|x_pos\(1),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_x_pos~8_combout\);

-- Location: LCCOMB_X39_Y35_N4
\U_VGA|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~2_combout\ = (\U_VGA|temp_mov_x~7_combout\ & ((\U_VGA|temp_x_pos~7_combout\ & (\U_VGA|Add2~1\ & VCC)) # (!\U_VGA|temp_x_pos~7_combout\ & (!\U_VGA|Add2~1\)))) # (!\U_VGA|temp_mov_x~7_combout\ & ((\U_VGA|temp_x_pos~7_combout\ & 
-- (!\U_VGA|Add2~1\)) # (!\U_VGA|temp_x_pos~7_combout\ & ((\U_VGA|Add2~1\) # (GND)))))
-- \U_VGA|Add2~3\ = CARRY((\U_VGA|temp_mov_x~7_combout\ & (!\U_VGA|temp_x_pos~7_combout\ & !\U_VGA|Add2~1\)) # (!\U_VGA|temp_mov_x~7_combout\ & ((!\U_VGA|Add2~1\) # (!\U_VGA|temp_x_pos~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_mov_x~7_combout\,
	datab => \U_VGA|temp_x_pos~7_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~1\,
	combout => \U_VGA|Add2~2_combout\,
	cout => \U_VGA|Add2~3\);

-- Location: LCCOMB_X38_Y35_N10
\U_VGA|Add2~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~25_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~2_combout\,
	combout => \U_VGA|Add2~25_combout\);

-- Location: FF_X38_Y35_N11
\U_VGA|x_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(2));

-- Location: LCCOMB_X37_Y35_N12
\U_VGA|temp_x_pos~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_x_pos~7_combout\ = (\U_VGA|x_pos\(2) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|x_pos\(2),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_x_pos~7_combout\);

-- Location: LCCOMB_X39_Y35_N6
\U_VGA|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~4_combout\ = ((\U_VGA|temp_x_pos~6_combout\ $ (\U_VGA|temp_mov_x~6_combout\ $ (!\U_VGA|Add2~3\)))) # (GND)
-- \U_VGA|Add2~5\ = CARRY((\U_VGA|temp_x_pos~6_combout\ & ((\U_VGA|temp_mov_x~6_combout\) # (!\U_VGA|Add2~3\))) # (!\U_VGA|temp_x_pos~6_combout\ & (\U_VGA|temp_mov_x~6_combout\ & !\U_VGA|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_x_pos~6_combout\,
	datab => \U_VGA|temp_mov_x~6_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~3\,
	combout => \U_VGA|Add2~4_combout\,
	cout => \U_VGA|Add2~5\);

-- Location: LCCOMB_X38_Y35_N28
\U_VGA|Add2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~24_combout\ = (\button_n[0]~input_o\ & !\U_VGA|Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~4_combout\,
	combout => \U_VGA|Add2~24_combout\);

-- Location: FF_X38_Y35_N29
\U_VGA|x_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(3));

-- Location: LCCOMB_X41_Y35_N16
\U_VGA|Add1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add1~15_combout\ = (\U_VGA|Add1~14\ & (\U_VGA|mov_x\(7) $ ((!\U_VGA|mov_x~76_combout\)))) # (!\U_VGA|Add1~14\ & ((\U_VGA|mov_x\(7) $ (\U_VGA|mov_x~76_combout\)) # (GND)))
-- \U_VGA|Add1~16\ = CARRY((\U_VGA|mov_x\(7) $ (!\U_VGA|mov_x~76_combout\)) # (!\U_VGA|Add1~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x\(7),
	datab => \U_VGA|mov_x~76_combout\,
	datad => VCC,
	cin => \U_VGA|Add1~14\,
	combout => \U_VGA|Add1~15_combout\,
	cout => \U_VGA|Add1~16\);

-- Location: LCCOMB_X41_Y35_N18
\U_VGA|Add1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add1~17_combout\ = (\U_VGA|Add1~16\ & ((\U_VGA|mov_x~76_combout\ $ (\U_VGA|mov_x\(8))))) # (!\U_VGA|Add1~16\ & (\U_VGA|mov_x~76_combout\ $ (\U_VGA|mov_x\(8) $ (VCC))))
-- \U_VGA|Add1~18\ = CARRY((!\U_VGA|Add1~16\ & (\U_VGA|mov_x~76_combout\ $ (\U_VGA|mov_x\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x~76_combout\,
	datab => \U_VGA|mov_x\(8),
	datad => VCC,
	cin => \U_VGA|Add1~16\,
	combout => \U_VGA|Add1~17_combout\,
	cout => \U_VGA|Add1~18\);

-- Location: LCCOMB_X42_Y35_N20
\U_VGA|mov_x~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~77_combout\ = (\button_n[0]~input_o\ & (\U_VGA|ball_move~1_combout\ & \U_VGA|Add1~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|Add1~17_combout\,
	combout => \U_VGA|mov_x~77_combout\);

-- Location: FF_X42_Y35_N21
\U_VGA|mov_x[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_x~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_x\(8));

-- Location: LCCOMB_X41_Y35_N20
\U_VGA|Add1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add1~19_combout\ = (\U_VGA|Add1~18\ & (\U_VGA|mov_x\(9) $ ((!\U_VGA|mov_x~76_combout\)))) # (!\U_VGA|Add1~18\ & ((\U_VGA|mov_x\(9) $ (\U_VGA|mov_x~76_combout\)) # (GND)))
-- \U_VGA|Add1~20\ = CARRY((\U_VGA|mov_x\(9) $ (!\U_VGA|mov_x~76_combout\)) # (!\U_VGA|Add1~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x\(9),
	datab => \U_VGA|mov_x~76_combout\,
	datad => VCC,
	cin => \U_VGA|Add1~18\,
	combout => \U_VGA|Add1~19_combout\,
	cout => \U_VGA|Add1~20\);

-- Location: LCCOMB_X40_Y35_N26
\U_VGA|mov_x~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~87_combout\ = (\button_n[0]~input_o\ & (\U_VGA|Add1~19_combout\ & \U_VGA|ball_move~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datac => \U_VGA|Add1~19_combout\,
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|mov_x~87_combout\);

-- Location: FF_X40_Y35_N27
\U_VGA|mov_x[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_x~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_x\(9));

-- Location: LCCOMB_X41_Y35_N22
\U_VGA|Add1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add1~21_combout\ = (\U_VGA|Add1~20\ & ((\U_VGA|mov_x\(10) $ (\U_VGA|mov_x~76_combout\)))) # (!\U_VGA|Add1~20\ & (\U_VGA|mov_x\(10) $ (\U_VGA|mov_x~76_combout\ $ (VCC))))
-- \U_VGA|Add1~22\ = CARRY((!\U_VGA|Add1~20\ & (\U_VGA|mov_x\(10) $ (\U_VGA|mov_x~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x\(10),
	datab => \U_VGA|mov_x~76_combout\,
	datad => VCC,
	cin => \U_VGA|Add1~20\,
	combout => \U_VGA|Add1~21_combout\,
	cout => \U_VGA|Add1~22\);

-- Location: LCCOMB_X40_Y35_N16
\U_VGA|mov_x~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~86_combout\ = (\U_VGA|ball_move~1_combout\ & (\button_n[0]~input_o\ & \U_VGA|Add1~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~1_combout\,
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add1~21_combout\,
	combout => \U_VGA|mov_x~86_combout\);

-- Location: FF_X40_Y35_N17
\U_VGA|mov_x[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_x~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_x\(10));

-- Location: LCCOMB_X41_Y35_N24
\U_VGA|Add1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add1~23_combout\ = (\U_VGA|Add1~22\ & (\U_VGA|mov_x\(11) $ ((!\U_VGA|mov_x~76_combout\)))) # (!\U_VGA|Add1~22\ & ((\U_VGA|mov_x\(11) $ (\U_VGA|mov_x~76_combout\)) # (GND)))
-- \U_VGA|Add1~24\ = CARRY((\U_VGA|mov_x\(11) $ (!\U_VGA|mov_x~76_combout\)) # (!\U_VGA|Add1~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x\(11),
	datab => \U_VGA|mov_x~76_combout\,
	datad => VCC,
	cin => \U_VGA|Add1~22\,
	combout => \U_VGA|Add1~23_combout\,
	cout => \U_VGA|Add1~24\);

-- Location: LCCOMB_X42_Y34_N14
\U_VGA|mov_x~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~91_combout\ = (\U_VGA|ball_move~1_combout\ & (\button_n[0]~input_o\ & \U_VGA|Add1~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~1_combout\,
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add1~23_combout\,
	combout => \U_VGA|mov_x~91_combout\);

-- Location: FF_X42_Y34_N15
\U_VGA|mov_x[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_x~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_x\(11));

-- Location: LCCOMB_X41_Y35_N26
\U_VGA|Add1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add1~25_combout\ = (\U_VGA|Add1~24\ & ((\U_VGA|mov_x\(12) $ (\U_VGA|mov_x~76_combout\)))) # (!\U_VGA|Add1~24\ & (\U_VGA|mov_x\(12) $ (\U_VGA|mov_x~76_combout\ $ (VCC))))
-- \U_VGA|Add1~26\ = CARRY((!\U_VGA|Add1~24\ & (\U_VGA|mov_x\(12) $ (\U_VGA|mov_x~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x\(12),
	datab => \U_VGA|mov_x~76_combout\,
	datad => VCC,
	cin => \U_VGA|Add1~24\,
	combout => \U_VGA|Add1~25_combout\,
	cout => \U_VGA|Add1~26\);

-- Location: LCCOMB_X41_Y36_N30
\U_VGA|mov_x~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~90_combout\ = (\button_n[0]~input_o\ & (\U_VGA|ball_move~1_combout\ & \U_VGA|Add1~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|Add1~25_combout\,
	combout => \U_VGA|mov_x~90_combout\);

-- Location: FF_X41_Y36_N31
\U_VGA|mov_x[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_x~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_x\(12));

-- Location: LCCOMB_X41_Y35_N28
\U_VGA|Add1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add1~27_combout\ = (\U_VGA|Add1~26\ & (\U_VGA|mov_x\(13) $ ((!\U_VGA|mov_x~76_combout\)))) # (!\U_VGA|Add1~26\ & ((\U_VGA|mov_x\(13) $ (\U_VGA|mov_x~76_combout\)) # (GND)))
-- \U_VGA|Add1~28\ = CARRY((\U_VGA|mov_x\(13) $ (!\U_VGA|mov_x~76_combout\)) # (!\U_VGA|Add1~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x\(13),
	datab => \U_VGA|mov_x~76_combout\,
	datad => VCC,
	cin => \U_VGA|Add1~26\,
	combout => \U_VGA|Add1~27_combout\,
	cout => \U_VGA|Add1~28\);

-- Location: LCCOMB_X40_Y35_N14
\U_VGA|mov_x~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~89_combout\ = (\U_VGA|ball_move~1_combout\ & (\button_n[0]~input_o\ & \U_VGA|Add1~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~1_combout\,
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add1~27_combout\,
	combout => \U_VGA|mov_x~89_combout\);

-- Location: FF_X40_Y35_N15
\U_VGA|mov_x[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_x~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_x\(13));

-- Location: LCCOMB_X41_Y35_N30
\U_VGA|Add1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add1~29_combout\ = (\U_VGA|Add1~28\ & ((\U_VGA|mov_x\(14) $ (\U_VGA|mov_x~76_combout\)))) # (!\U_VGA|Add1~28\ & (\U_VGA|mov_x\(14) $ (\U_VGA|mov_x~76_combout\ $ (VCC))))
-- \U_VGA|Add1~30\ = CARRY((!\U_VGA|Add1~28\ & (\U_VGA|mov_x\(14) $ (\U_VGA|mov_x~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x\(14),
	datab => \U_VGA|mov_x~76_combout\,
	datad => VCC,
	cin => \U_VGA|Add1~28\,
	combout => \U_VGA|Add1~29_combout\,
	cout => \U_VGA|Add1~30\);

-- Location: LCCOMB_X40_Y35_N8
\U_VGA|mov_x~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~88_combout\ = (\button_n[0]~input_o\ & (\U_VGA|Add1~29_combout\ & \U_VGA|ball_move~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datac => \U_VGA|Add1~29_combout\,
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|mov_x~88_combout\);

-- Location: FF_X40_Y35_N9
\U_VGA|mov_x[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_x~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_x\(14));

-- Location: LCCOMB_X41_Y34_N0
\U_VGA|Add1~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add1~31_combout\ = (\U_VGA|Add1~30\ & (\U_VGA|mov_x\(15) $ ((!\U_VGA|mov_x~76_combout\)))) # (!\U_VGA|Add1~30\ & ((\U_VGA|mov_x\(15) $ (\U_VGA|mov_x~76_combout\)) # (GND)))
-- \U_VGA|Add1~32\ = CARRY((\U_VGA|mov_x\(15) $ (!\U_VGA|mov_x~76_combout\)) # (!\U_VGA|Add1~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x\(15),
	datab => \U_VGA|mov_x~76_combout\,
	datad => VCC,
	cin => \U_VGA|Add1~30\,
	combout => \U_VGA|Add1~31_combout\,
	cout => \U_VGA|Add1~32\);

-- Location: LCCOMB_X42_Y34_N12
\U_VGA|mov_x~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~95_combout\ = (\U_VGA|Add1~31_combout\ & (\button_n[0]~input_o\ & \U_VGA|ball_move~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add1~31_combout\,
	datab => \button_n[0]~input_o\,
	datac => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|mov_x~95_combout\);

-- Location: FF_X42_Y34_N13
\U_VGA|mov_x[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_x~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_x\(15));

-- Location: LCCOMB_X41_Y34_N2
\U_VGA|Add1~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add1~33_combout\ = (\U_VGA|Add1~32\ & ((\U_VGA|mov_x\(16) $ (\U_VGA|mov_x~76_combout\)))) # (!\U_VGA|Add1~32\ & (\U_VGA|mov_x\(16) $ (\U_VGA|mov_x~76_combout\ $ (VCC))))
-- \U_VGA|Add1~34\ = CARRY((!\U_VGA|Add1~32\ & (\U_VGA|mov_x\(16) $ (\U_VGA|mov_x~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x\(16),
	datab => \U_VGA|mov_x~76_combout\,
	datad => VCC,
	cin => \U_VGA|Add1~32\,
	combout => \U_VGA|Add1~33_combout\,
	cout => \U_VGA|Add1~34\);

-- Location: LCCOMB_X42_Y34_N30
\U_VGA|mov_x~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~94_combout\ = (\U_VGA|ball_move~1_combout\ & (\button_n[0]~input_o\ & \U_VGA|Add1~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~1_combout\,
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add1~33_combout\,
	combout => \U_VGA|mov_x~94_combout\);

-- Location: FF_X42_Y34_N31
\U_VGA|mov_x[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_x~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_x\(16));

-- Location: LCCOMB_X41_Y34_N4
\U_VGA|Add1~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add1~35_combout\ = (\U_VGA|Add1~34\ & (\U_VGA|mov_x\(17) $ ((!\U_VGA|mov_x~76_combout\)))) # (!\U_VGA|Add1~34\ & ((\U_VGA|mov_x\(17) $ (\U_VGA|mov_x~76_combout\)) # (GND)))
-- \U_VGA|Add1~36\ = CARRY((\U_VGA|mov_x\(17) $ (!\U_VGA|mov_x~76_combout\)) # (!\U_VGA|Add1~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x\(17),
	datab => \U_VGA|mov_x~76_combout\,
	datad => VCC,
	cin => \U_VGA|Add1~34\,
	combout => \U_VGA|Add1~35_combout\,
	cout => \U_VGA|Add1~36\);

-- Location: LCCOMB_X42_Y34_N4
\U_VGA|mov_x~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~93_combout\ = (\U_VGA|ball_move~1_combout\ & (\button_n[0]~input_o\ & \U_VGA|Add1~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~1_combout\,
	datab => \button_n[0]~input_o\,
	datac => \U_VGA|Add1~35_combout\,
	combout => \U_VGA|mov_x~93_combout\);

-- Location: FF_X42_Y34_N5
\U_VGA|mov_x[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_x~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_x\(17));

-- Location: LCCOMB_X41_Y34_N6
\U_VGA|Add1~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add1~37_combout\ = (\U_VGA|Add1~36\ & ((\U_VGA|mov_x\(18) $ (\U_VGA|mov_x~76_combout\)))) # (!\U_VGA|Add1~36\ & (\U_VGA|mov_x\(18) $ (\U_VGA|mov_x~76_combout\ $ (VCC))))
-- \U_VGA|Add1~38\ = CARRY((!\U_VGA|Add1~36\ & (\U_VGA|mov_x\(18) $ (\U_VGA|mov_x~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x\(18),
	datab => \U_VGA|mov_x~76_combout\,
	datad => VCC,
	cin => \U_VGA|Add1~36\,
	combout => \U_VGA|Add1~37_combout\,
	cout => \U_VGA|Add1~38\);

-- Location: LCCOMB_X41_Y36_N4
\U_VGA|mov_x~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~92_combout\ = (\U_VGA|ball_move~1_combout\ & (\button_n[0]~input_o\ & \U_VGA|Add1~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~1_combout\,
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add1~37_combout\,
	combout => \U_VGA|mov_x~92_combout\);

-- Location: FF_X41_Y36_N5
\U_VGA|mov_x[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_x~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_x\(18));

-- Location: LCCOMB_X41_Y34_N8
\U_VGA|Add1~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add1~39_combout\ = (\U_VGA|Add1~38\ & (\U_VGA|mov_x\(19) $ ((!\U_VGA|mov_x~76_combout\)))) # (!\U_VGA|Add1~38\ & ((\U_VGA|mov_x\(19) $ (\U_VGA|mov_x~76_combout\)) # (GND)))
-- \U_VGA|Add1~40\ = CARRY((\U_VGA|mov_x\(19) $ (!\U_VGA|mov_x~76_combout\)) # (!\U_VGA|Add1~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x\(19),
	datab => \U_VGA|mov_x~76_combout\,
	datad => VCC,
	cin => \U_VGA|Add1~38\,
	combout => \U_VGA|Add1~39_combout\,
	cout => \U_VGA|Add1~40\);

-- Location: LCCOMB_X42_Y34_N20
\U_VGA|mov_x~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~99_combout\ = (\U_VGA|ball_move~1_combout\ & (\button_n[0]~input_o\ & \U_VGA|Add1~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~1_combout\,
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add1~39_combout\,
	combout => \U_VGA|mov_x~99_combout\);

-- Location: FF_X42_Y34_N21
\U_VGA|mov_x[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_x~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_x\(19));

-- Location: LCCOMB_X41_Y34_N10
\U_VGA|Add1~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add1~41_combout\ = (\U_VGA|Add1~40\ & ((\U_VGA|mov_x\(20) $ (\U_VGA|mov_x~76_combout\)))) # (!\U_VGA|Add1~40\ & (\U_VGA|mov_x\(20) $ (\U_VGA|mov_x~76_combout\ $ (VCC))))
-- \U_VGA|Add1~42\ = CARRY((!\U_VGA|Add1~40\ & (\U_VGA|mov_x\(20) $ (\U_VGA|mov_x~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x\(20),
	datab => \U_VGA|mov_x~76_combout\,
	datad => VCC,
	cin => \U_VGA|Add1~40\,
	combout => \U_VGA|Add1~41_combout\,
	cout => \U_VGA|Add1~42\);

-- Location: LCCOMB_X43_Y34_N22
\U_VGA|mov_x~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~98_combout\ = (\button_n[0]~input_o\ & (\U_VGA|Add1~41_combout\ & \U_VGA|ball_move~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datac => \U_VGA|Add1~41_combout\,
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|mov_x~98_combout\);

-- Location: FF_X43_Y34_N23
\U_VGA|mov_x[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_x~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_x\(20));

-- Location: LCCOMB_X41_Y34_N12
\U_VGA|Add1~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add1~43_combout\ = (\U_VGA|Add1~42\ & (\U_VGA|mov_x\(21) $ ((!\U_VGA|mov_x~76_combout\)))) # (!\U_VGA|Add1~42\ & ((\U_VGA|mov_x\(21) $ (\U_VGA|mov_x~76_combout\)) # (GND)))
-- \U_VGA|Add1~44\ = CARRY((\U_VGA|mov_x\(21) $ (!\U_VGA|mov_x~76_combout\)) # (!\U_VGA|Add1~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x\(21),
	datab => \U_VGA|mov_x~76_combout\,
	datad => VCC,
	cin => \U_VGA|Add1~42\,
	combout => \U_VGA|Add1~43_combout\,
	cout => \U_VGA|Add1~44\);

-- Location: LCCOMB_X40_Y34_N16
\U_VGA|mov_x~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~97_combout\ = (\button_n[0]~input_o\ & (\U_VGA|Add1~43_combout\ & \U_VGA|ball_move~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datac => \U_VGA|Add1~43_combout\,
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|mov_x~97_combout\);

-- Location: FF_X40_Y34_N17
\U_VGA|mov_x[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_x~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_x\(21));

-- Location: LCCOMB_X41_Y34_N14
\U_VGA|Add1~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add1~45_combout\ = (\U_VGA|Add1~44\ & ((\U_VGA|mov_x\(22) $ (\U_VGA|mov_x~76_combout\)))) # (!\U_VGA|Add1~44\ & (\U_VGA|mov_x\(22) $ (\U_VGA|mov_x~76_combout\ $ (VCC))))
-- \U_VGA|Add1~46\ = CARRY((!\U_VGA|Add1~44\ & (\U_VGA|mov_x\(22) $ (\U_VGA|mov_x~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x\(22),
	datab => \U_VGA|mov_x~76_combout\,
	datad => VCC,
	cin => \U_VGA|Add1~44\,
	combout => \U_VGA|Add1~45_combout\,
	cout => \U_VGA|Add1~46\);

-- Location: LCCOMB_X42_Y34_N6
\U_VGA|mov_x~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~96_combout\ = (\U_VGA|ball_move~1_combout\ & (\button_n[0]~input_o\ & \U_VGA|Add1~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~1_combout\,
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add1~45_combout\,
	combout => \U_VGA|mov_x~96_combout\);

-- Location: FF_X42_Y34_N7
\U_VGA|mov_x[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_x~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_x\(22));

-- Location: LCCOMB_X41_Y34_N16
\U_VGA|Add1~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add1~47_combout\ = (\U_VGA|Add1~46\ & (\U_VGA|mov_x~76_combout\ $ ((!\U_VGA|mov_x\(23))))) # (!\U_VGA|Add1~46\ & ((\U_VGA|mov_x~76_combout\ $ (\U_VGA|mov_x\(23))) # (GND)))
-- \U_VGA|Add1~48\ = CARRY((\U_VGA|mov_x~76_combout\ $ (!\U_VGA|mov_x\(23))) # (!\U_VGA|Add1~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x~76_combout\,
	datab => \U_VGA|mov_x\(23),
	datad => VCC,
	cin => \U_VGA|Add1~46\,
	combout => \U_VGA|Add1~47_combout\,
	cout => \U_VGA|Add1~48\);

-- Location: LCCOMB_X40_Y38_N18
\U_VGA|mov_x~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~103_combout\ = (\button_n[0]~input_o\ & (\U_VGA|ball_move~1_combout\ & \U_VGA|Add1~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|Add1~47_combout\,
	combout => \U_VGA|mov_x~103_combout\);

-- Location: FF_X40_Y38_N19
\U_VGA|mov_x[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_x~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_x\(23));

-- Location: LCCOMB_X41_Y34_N18
\U_VGA|Add1~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add1~49_combout\ = (\U_VGA|Add1~48\ & ((\U_VGA|mov_x~76_combout\ $ (\U_VGA|mov_x\(24))))) # (!\U_VGA|Add1~48\ & (\U_VGA|mov_x~76_combout\ $ (\U_VGA|mov_x\(24) $ (VCC))))
-- \U_VGA|Add1~50\ = CARRY((!\U_VGA|Add1~48\ & (\U_VGA|mov_x~76_combout\ $ (\U_VGA|mov_x\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x~76_combout\,
	datab => \U_VGA|mov_x\(24),
	datad => VCC,
	cin => \U_VGA|Add1~48\,
	combout => \U_VGA|Add1~49_combout\,
	cout => \U_VGA|Add1~50\);

-- Location: LCCOMB_X42_Y34_N0
\U_VGA|mov_x~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~102_combout\ = (\U_VGA|ball_move~1_combout\ & (\button_n[0]~input_o\ & \U_VGA|Add1~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~1_combout\,
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add1~49_combout\,
	combout => \U_VGA|mov_x~102_combout\);

-- Location: FF_X42_Y34_N1
\U_VGA|mov_x[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_x~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_x\(24));

-- Location: LCCOMB_X41_Y34_N20
\U_VGA|Add1~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add1~51_combout\ = (\U_VGA|Add1~50\ & (\U_VGA|mov_x~76_combout\ $ ((!\U_VGA|mov_x\(25))))) # (!\U_VGA|Add1~50\ & ((\U_VGA|mov_x~76_combout\ $ (\U_VGA|mov_x\(25))) # (GND)))
-- \U_VGA|Add1~52\ = CARRY((\U_VGA|mov_x~76_combout\ $ (!\U_VGA|mov_x\(25))) # (!\U_VGA|Add1~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x~76_combout\,
	datab => \U_VGA|mov_x\(25),
	datad => VCC,
	cin => \U_VGA|Add1~50\,
	combout => \U_VGA|Add1~51_combout\,
	cout => \U_VGA|Add1~52\);

-- Location: LCCOMB_X42_Y34_N2
\U_VGA|mov_x~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~101_combout\ = (\U_VGA|ball_move~1_combout\ & (\button_n[0]~input_o\ & \U_VGA|Add1~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~1_combout\,
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add1~51_combout\,
	combout => \U_VGA|mov_x~101_combout\);

-- Location: FF_X42_Y34_N3
\U_VGA|mov_x[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_x~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_x\(25));

-- Location: LCCOMB_X41_Y34_N22
\U_VGA|Add1~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add1~53_combout\ = (\U_VGA|Add1~52\ & ((\U_VGA|mov_x~76_combout\ $ (\U_VGA|mov_x\(26))))) # (!\U_VGA|Add1~52\ & (\U_VGA|mov_x~76_combout\ $ (\U_VGA|mov_x\(26) $ (VCC))))
-- \U_VGA|Add1~54\ = CARRY((!\U_VGA|Add1~52\ & (\U_VGA|mov_x~76_combout\ $ (\U_VGA|mov_x\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x~76_combout\,
	datab => \U_VGA|mov_x\(26),
	datad => VCC,
	cin => \U_VGA|Add1~52\,
	combout => \U_VGA|Add1~53_combout\,
	cout => \U_VGA|Add1~54\);

-- Location: LCCOMB_X37_Y34_N8
\U_VGA|mov_x~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~100_combout\ = (\U_VGA|ball_move~1_combout\ & (\button_n[0]~input_o\ & \U_VGA|Add1~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~1_combout\,
	datab => \button_n[0]~input_o\,
	datad => \U_VGA|Add1~53_combout\,
	combout => \U_VGA|mov_x~100_combout\);

-- Location: FF_X37_Y34_N9
\U_VGA|mov_x[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_x~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_x\(26));

-- Location: LCCOMB_X41_Y34_N24
\U_VGA|Add1~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add1~55_combout\ = (\U_VGA|Add1~54\ & (\U_VGA|mov_x~76_combout\ $ ((!\U_VGA|mov_x\(27))))) # (!\U_VGA|Add1~54\ & ((\U_VGA|mov_x~76_combout\ $ (\U_VGA|mov_x\(27))) # (GND)))
-- \U_VGA|Add1~56\ = CARRY((\U_VGA|mov_x~76_combout\ $ (!\U_VGA|mov_x\(27))) # (!\U_VGA|Add1~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x~76_combout\,
	datab => \U_VGA|mov_x\(27),
	datad => VCC,
	cin => \U_VGA|Add1~54\,
	combout => \U_VGA|Add1~55_combout\,
	cout => \U_VGA|Add1~56\);

-- Location: LCCOMB_X41_Y33_N0
\U_VGA|mov_x~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~106_combout\ = (\button_n[0]~input_o\ & (\U_VGA|Add1~55_combout\ & \U_VGA|ball_move~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datac => \U_VGA|Add1~55_combout\,
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|mov_x~106_combout\);

-- Location: FF_X41_Y33_N1
\U_VGA|mov_x[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_x~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_x\(27));

-- Location: LCCOMB_X42_Y34_N18
\U_VGA|temp_mov_x~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_x~29_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add1~55_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_x\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x\(27),
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|Add1~55_combout\,
	combout => \U_VGA|temp_mov_x~29_combout\);

-- Location: LCCOMB_X37_Y34_N22
\U_VGA|temp_x_pos~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_x_pos~29_combout\ = (\U_VGA|x_pos\(28) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|x_pos\(28),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_x_pos~29_combout\);

-- Location: LCCOMB_X40_Y36_N6
\U_VGA|temp_mov_x~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_x~23_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add1~53_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_x\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|mov_x\(26),
	datac => \U_VGA|Add1~53_combout\,
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_mov_x~23_combout\);

-- Location: LCCOMB_X42_Y34_N22
\U_VGA|temp_mov_x~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_x~24_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add1~51_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_x\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|mov_x\(25),
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|Add1~51_combout\,
	combout => \U_VGA|temp_mov_x~24_combout\);

-- Location: LCCOMB_X40_Y34_N14
\U_VGA|temp_mov_x~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_x~25_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add1~49_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_x\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~1_combout\,
	datac => \U_VGA|mov_x\(24),
	datad => \U_VGA|Add1~49_combout\,
	combout => \U_VGA|temp_mov_x~25_combout\);

-- Location: LCCOMB_X40_Y34_N4
\U_VGA|temp_mov_x~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_x~26_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add1~47_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_x\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~1_combout\,
	datac => \U_VGA|mov_x\(23),
	datad => \U_VGA|Add1~47_combout\,
	combout => \U_VGA|temp_mov_x~26_combout\);

-- Location: LCCOMB_X40_Y34_N30
\U_VGA|temp_mov_x~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_x~19_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add1~45_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_x\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|mov_x\(22),
	datac => \U_VGA|Add1~45_combout\,
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_mov_x~19_combout\);

-- Location: LCCOMB_X40_Y34_N12
\U_VGA|temp_mov_x~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_x~20_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add1~43_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_x\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|mov_x\(21),
	datac => \U_VGA|Add1~43_combout\,
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_mov_x~20_combout\);

-- Location: LCCOMB_X40_Y34_N18
\U_VGA|temp_mov_x~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_x~21_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add1~41_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_x\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|mov_x\(20),
	datac => \U_VGA|Add1~41_combout\,
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_mov_x~21_combout\);

-- Location: LCCOMB_X40_Y34_N24
\U_VGA|temp_mov_x~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_x~22_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add1~39_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_x\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|mov_x\(19),
	datac => \U_VGA|Add1~39_combout\,
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_mov_x~22_combout\);

-- Location: LCCOMB_X40_Y34_N8
\U_VGA|temp_mov_x~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_x~15_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add1~37_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_x\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~1_combout\,
	datac => \U_VGA|mov_x\(18),
	datad => \U_VGA|Add1~37_combout\,
	combout => \U_VGA|temp_mov_x~15_combout\);

-- Location: LCCOMB_X40_Y34_N22
\U_VGA|temp_mov_x~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_x~16_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add1~35_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_x\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~1_combout\,
	datac => \U_VGA|mov_x\(17),
	datad => \U_VGA|Add1~35_combout\,
	combout => \U_VGA|temp_mov_x~16_combout\);

-- Location: LCCOMB_X40_Y34_N20
\U_VGA|temp_mov_x~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_x~17_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add1~33_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_x\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~1_combout\,
	datab => \U_VGA|mov_x\(16),
	datad => \U_VGA|Add1~33_combout\,
	combout => \U_VGA|temp_mov_x~17_combout\);

-- Location: LCCOMB_X40_Y34_N6
\U_VGA|temp_mov_x~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_x~18_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add1~31_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_x\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|mov_x\(15),
	datac => \U_VGA|Add1~31_combout\,
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_mov_x~18_combout\);

-- Location: LCCOMB_X40_Y35_N24
\U_VGA|temp_mov_x~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_x~11_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add1~29_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_x\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|mov_x\(14),
	datac => \U_VGA|Add1~29_combout\,
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_mov_x~11_combout\);

-- Location: LCCOMB_X40_Y35_N2
\U_VGA|temp_mov_x~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_x~12_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add1~27_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_x\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~1_combout\,
	datac => \U_VGA|mov_x\(13),
	datad => \U_VGA|Add1~27_combout\,
	combout => \U_VGA|temp_mov_x~12_combout\);

-- Location: LCCOMB_X38_Y35_N16
\U_VGA|temp_mov_x~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_x~13_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add1~25_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_x\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|ball_move~1_combout\,
	datac => \U_VGA|mov_x\(12),
	datad => \U_VGA|Add1~25_combout\,
	combout => \U_VGA|temp_mov_x~13_combout\);

-- Location: LCCOMB_X38_Y35_N6
\U_VGA|temp_mov_x~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_x~14_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add1~23_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_x\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|mov_x\(11),
	datac => \U_VGA|Add1~23_combout\,
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_mov_x~14_combout\);

-- Location: LCCOMB_X40_Y35_N28
\U_VGA|temp_mov_x~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_x~9_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add1~21_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_x\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~1_combout\,
	datac => \U_VGA|mov_x\(10),
	datad => \U_VGA|Add1~21_combout\,
	combout => \U_VGA|temp_mov_x~9_combout\);

-- Location: LCCOMB_X40_Y35_N30
\U_VGA|temp_mov_x~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_x~10_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add1~19_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_x\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x\(9),
	datac => \U_VGA|Add1~19_combout\,
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_mov_x~10_combout\);

-- Location: LCCOMB_X40_Y35_N0
\U_VGA|temp_mov_x~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_x~0_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add1~17_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_x\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~1_combout\,
	datac => \U_VGA|mov_x\(8),
	datad => \U_VGA|Add1~17_combout\,
	combout => \U_VGA|temp_mov_x~0_combout\);

-- Location: LCCOMB_X40_Y33_N22
\U_VGA|temp_mov_x~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_x~2_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add1~13_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_x\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x\(6),
	datab => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|Add1~13_combout\,
	combout => \U_VGA|temp_mov_x~2_combout\);

-- Location: LCCOMB_X40_Y35_N20
\U_VGA|temp_mov_x~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_x~3_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add1~11_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_x\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|mov_x\(5),
	datac => \U_VGA|Add1~11_combout\,
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_mov_x~3_combout\);

-- Location: LCCOMB_X40_Y35_N6
\U_VGA|temp_mov_x~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_x~4_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add1~9_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_x\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x\(4),
	datac => \U_VGA|Add1~9_combout\,
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_mov_x~4_combout\);

-- Location: LCCOMB_X40_Y35_N12
\U_VGA|temp_mov_x~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_x~5_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add1~7_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_x\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|mov_x\(3),
	datac => \U_VGA|Add1~7_combout\,
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_mov_x~5_combout\);

-- Location: LCCOMB_X39_Y35_N8
\U_VGA|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~6_combout\ = (\U_VGA|temp_x_pos~5_combout\ & ((\U_VGA|temp_mov_x~5_combout\ & (\U_VGA|Add2~5\ & VCC)) # (!\U_VGA|temp_mov_x~5_combout\ & (!\U_VGA|Add2~5\)))) # (!\U_VGA|temp_x_pos~5_combout\ & ((\U_VGA|temp_mov_x~5_combout\ & 
-- (!\U_VGA|Add2~5\)) # (!\U_VGA|temp_mov_x~5_combout\ & ((\U_VGA|Add2~5\) # (GND)))))
-- \U_VGA|Add2~7\ = CARRY((\U_VGA|temp_x_pos~5_combout\ & (!\U_VGA|temp_mov_x~5_combout\ & !\U_VGA|Add2~5\)) # (!\U_VGA|temp_x_pos~5_combout\ & ((!\U_VGA|Add2~5\) # (!\U_VGA|temp_mov_x~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_x_pos~5_combout\,
	datab => \U_VGA|temp_mov_x~5_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~5\,
	combout => \U_VGA|Add2~6_combout\,
	cout => \U_VGA|Add2~7\);

-- Location: LCCOMB_X38_Y35_N30
\U_VGA|Add2~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~23_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datac => \U_VGA|Add2~6_combout\,
	combout => \U_VGA|Add2~23_combout\);

-- Location: FF_X38_Y35_N31
\U_VGA|x_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(4));

-- Location: LCCOMB_X37_Y35_N14
\U_VGA|temp_x_pos~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_x_pos~5_combout\ = (\U_VGA|x_pos\(4) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|x_pos\(4),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_x_pos~5_combout\);

-- Location: LCCOMB_X39_Y35_N10
\U_VGA|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~8_combout\ = ((\U_VGA|temp_mov_x~4_combout\ $ (\U_VGA|temp_x_pos~4_combout\ $ (!\U_VGA|Add2~7\)))) # (GND)
-- \U_VGA|Add2~9\ = CARRY((\U_VGA|temp_mov_x~4_combout\ & ((\U_VGA|temp_x_pos~4_combout\) # (!\U_VGA|Add2~7\))) # (!\U_VGA|temp_mov_x~4_combout\ & (\U_VGA|temp_x_pos~4_combout\ & !\U_VGA|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_mov_x~4_combout\,
	datab => \U_VGA|temp_x_pos~4_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~7\,
	combout => \U_VGA|Add2~8_combout\,
	cout => \U_VGA|Add2~9\);

-- Location: LCCOMB_X38_Y35_N0
\U_VGA|Add2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~22_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datac => \U_VGA|Add2~8_combout\,
	combout => \U_VGA|Add2~22_combout\);

-- Location: FF_X38_Y35_N1
\U_VGA|x_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(5));

-- Location: LCCOMB_X37_Y35_N16
\U_VGA|temp_x_pos~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_x_pos~4_combout\ = (\U_VGA|x_pos\(5) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|x_pos\(5),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_x_pos~4_combout\);

-- Location: LCCOMB_X39_Y35_N12
\U_VGA|Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~10_combout\ = (\U_VGA|temp_mov_x~3_combout\ & ((\U_VGA|temp_x_pos~3_combout\ & (\U_VGA|Add2~9\ & VCC)) # (!\U_VGA|temp_x_pos~3_combout\ & (!\U_VGA|Add2~9\)))) # (!\U_VGA|temp_mov_x~3_combout\ & ((\U_VGA|temp_x_pos~3_combout\ & 
-- (!\U_VGA|Add2~9\)) # (!\U_VGA|temp_x_pos~3_combout\ & ((\U_VGA|Add2~9\) # (GND)))))
-- \U_VGA|Add2~11\ = CARRY((\U_VGA|temp_mov_x~3_combout\ & (!\U_VGA|temp_x_pos~3_combout\ & !\U_VGA|Add2~9\)) # (!\U_VGA|temp_mov_x~3_combout\ & ((!\U_VGA|Add2~9\) # (!\U_VGA|temp_x_pos~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_mov_x~3_combout\,
	datab => \U_VGA|temp_x_pos~3_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~9\,
	combout => \U_VGA|Add2~10_combout\,
	cout => \U_VGA|Add2~11\);

-- Location: LCCOMB_X36_Y35_N0
\U_VGA|Add2~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~21_combout\ = (\button_n[0]~input_o\ & !\U_VGA|Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~10_combout\,
	combout => \U_VGA|Add2~21_combout\);

-- Location: FF_X36_Y35_N1
\U_VGA|x_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(6));

-- Location: LCCOMB_X35_Y35_N2
\U_VGA|temp_x_pos~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_x_pos~3_combout\ = (!\U_VGA|ball_move~1_combout\) # (!\U_VGA|x_pos\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|x_pos\(6),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_x_pos~3_combout\);

-- Location: LCCOMB_X39_Y35_N14
\U_VGA|Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~12_combout\ = ((\U_VGA|temp_x_pos~2_combout\ $ (\U_VGA|temp_mov_x~2_combout\ $ (!\U_VGA|Add2~11\)))) # (GND)
-- \U_VGA|Add2~13\ = CARRY((\U_VGA|temp_x_pos~2_combout\ & ((\U_VGA|temp_mov_x~2_combout\) # (!\U_VGA|Add2~11\))) # (!\U_VGA|temp_x_pos~2_combout\ & (\U_VGA|temp_mov_x~2_combout\ & !\U_VGA|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_x_pos~2_combout\,
	datab => \U_VGA|temp_mov_x~2_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~11\,
	combout => \U_VGA|Add2~12_combout\,
	cout => \U_VGA|Add2~13\);

-- Location: LCCOMB_X38_Y35_N14
\U_VGA|Add2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~20_combout\ = (\button_n[0]~input_o\ & !\U_VGA|Add2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datac => \U_VGA|Add2~12_combout\,
	combout => \U_VGA|Add2~20_combout\);

-- Location: FF_X38_Y35_N15
\U_VGA|x_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(7));

-- Location: LCCOMB_X38_Y33_N20
\U_VGA|temp_x_pos~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_x_pos~2_combout\ = (!\U_VGA|ball_move~1_combout\) # (!\U_VGA|x_pos\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|x_pos\(7),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_x_pos~2_combout\);

-- Location: LCCOMB_X39_Y35_N16
\U_VGA|Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~14_combout\ = (\U_VGA|temp_x_pos~1_combout\ & ((\U_VGA|temp_mov_x~1_combout\ & (\U_VGA|Add2~13\ & VCC)) # (!\U_VGA|temp_mov_x~1_combout\ & (!\U_VGA|Add2~13\)))) # (!\U_VGA|temp_x_pos~1_combout\ & ((\U_VGA|temp_mov_x~1_combout\ & 
-- (!\U_VGA|Add2~13\)) # (!\U_VGA|temp_mov_x~1_combout\ & ((\U_VGA|Add2~13\) # (GND)))))
-- \U_VGA|Add2~15\ = CARRY((\U_VGA|temp_x_pos~1_combout\ & (!\U_VGA|temp_mov_x~1_combout\ & !\U_VGA|Add2~13\)) # (!\U_VGA|temp_x_pos~1_combout\ & ((!\U_VGA|Add2~13\) # (!\U_VGA|temp_mov_x~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_x_pos~1_combout\,
	datab => \U_VGA|temp_mov_x~1_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~13\,
	combout => \U_VGA|Add2~14_combout\,
	cout => \U_VGA|Add2~15\);

-- Location: LCCOMB_X39_Y35_N18
\U_VGA|Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~16_combout\ = ((\U_VGA|temp_x_pos~0_combout\ $ (\U_VGA|temp_mov_x~0_combout\ $ (!\U_VGA|Add2~15\)))) # (GND)
-- \U_VGA|Add2~17\ = CARRY((\U_VGA|temp_x_pos~0_combout\ & ((\U_VGA|temp_mov_x~0_combout\) # (!\U_VGA|Add2~15\))) # (!\U_VGA|temp_x_pos~0_combout\ & (\U_VGA|temp_mov_x~0_combout\ & !\U_VGA|Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_x_pos~0_combout\,
	datab => \U_VGA|temp_mov_x~0_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~15\,
	combout => \U_VGA|Add2~16_combout\,
	cout => \U_VGA|Add2~17\);

-- Location: LCCOMB_X39_Y35_N20
\U_VGA|Add2~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~27_combout\ = (\U_VGA|temp_mov_x~10_combout\ & ((\U_VGA|temp_x_pos~10_combout\ & (\U_VGA|Add2~17\ & VCC)) # (!\U_VGA|temp_x_pos~10_combout\ & (!\U_VGA|Add2~17\)))) # (!\U_VGA|temp_mov_x~10_combout\ & ((\U_VGA|temp_x_pos~10_combout\ & 
-- (!\U_VGA|Add2~17\)) # (!\U_VGA|temp_x_pos~10_combout\ & ((\U_VGA|Add2~17\) # (GND)))))
-- \U_VGA|Add2~28\ = CARRY((\U_VGA|temp_mov_x~10_combout\ & (!\U_VGA|temp_x_pos~10_combout\ & !\U_VGA|Add2~17\)) # (!\U_VGA|temp_mov_x~10_combout\ & ((!\U_VGA|Add2~17\) # (!\U_VGA|temp_x_pos~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_mov_x~10_combout\,
	datab => \U_VGA|temp_x_pos~10_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~17\,
	combout => \U_VGA|Add2~27_combout\,
	cout => \U_VGA|Add2~28\);

-- Location: LCCOMB_X38_Y35_N26
\U_VGA|Add2~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~32_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datac => \U_VGA|Add2~27_combout\,
	combout => \U_VGA|Add2~32_combout\);

-- Location: FF_X38_Y35_N27
\U_VGA|x_pos[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(10));

-- Location: LCCOMB_X38_Y35_N18
\U_VGA|temp_x_pos~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_x_pos~10_combout\ = (\U_VGA|x_pos\(10) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|x_pos\(10),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_x_pos~10_combout\);

-- Location: LCCOMB_X39_Y35_N22
\U_VGA|Add2~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~29_combout\ = ((\U_VGA|temp_x_pos~9_combout\ $ (\U_VGA|temp_mov_x~9_combout\ $ (!\U_VGA|Add2~28\)))) # (GND)
-- \U_VGA|Add2~30\ = CARRY((\U_VGA|temp_x_pos~9_combout\ & ((\U_VGA|temp_mov_x~9_combout\) # (!\U_VGA|Add2~28\))) # (!\U_VGA|temp_x_pos~9_combout\ & (\U_VGA|temp_mov_x~9_combout\ & !\U_VGA|Add2~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_x_pos~9_combout\,
	datab => \U_VGA|temp_mov_x~9_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~28\,
	combout => \U_VGA|Add2~29_combout\,
	cout => \U_VGA|Add2~30\);

-- Location: LCCOMB_X38_Y35_N4
\U_VGA|Add2~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~31_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~29_combout\,
	combout => \U_VGA|Add2~31_combout\);

-- Location: FF_X38_Y35_N5
\U_VGA|x_pos[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(11));

-- Location: LCCOMB_X38_Y34_N12
\U_VGA|temp_x_pos~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_x_pos~9_combout\ = (\U_VGA|x_pos\(11) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(11),
	datac => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_x_pos~9_combout\);

-- Location: LCCOMB_X39_Y35_N24
\U_VGA|Add2~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~33_combout\ = (\U_VGA|temp_x_pos~14_combout\ & ((\U_VGA|temp_mov_x~14_combout\ & (\U_VGA|Add2~30\ & VCC)) # (!\U_VGA|temp_mov_x~14_combout\ & (!\U_VGA|Add2~30\)))) # (!\U_VGA|temp_x_pos~14_combout\ & ((\U_VGA|temp_mov_x~14_combout\ & 
-- (!\U_VGA|Add2~30\)) # (!\U_VGA|temp_mov_x~14_combout\ & ((\U_VGA|Add2~30\) # (GND)))))
-- \U_VGA|Add2~34\ = CARRY((\U_VGA|temp_x_pos~14_combout\ & (!\U_VGA|temp_mov_x~14_combout\ & !\U_VGA|Add2~30\)) # (!\U_VGA|temp_x_pos~14_combout\ & ((!\U_VGA|Add2~30\) # (!\U_VGA|temp_mov_x~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_x_pos~14_combout\,
	datab => \U_VGA|temp_mov_x~14_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~30\,
	combout => \U_VGA|Add2~33_combout\,
	cout => \U_VGA|Add2~34\);

-- Location: LCCOMB_X38_Y35_N20
\U_VGA|Add2~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~44_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~33_combout\,
	combout => \U_VGA|Add2~44_combout\);

-- Location: FF_X38_Y35_N21
\U_VGA|x_pos[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(12));

-- Location: LCCOMB_X38_Y36_N22
\U_VGA|temp_x_pos~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_x_pos~14_combout\ = (\U_VGA|x_pos\(12) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(12),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_x_pos~14_combout\);

-- Location: LCCOMB_X39_Y35_N26
\U_VGA|Add2~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~35_combout\ = ((\U_VGA|temp_mov_x~13_combout\ $ (\U_VGA|temp_x_pos~13_combout\ $ (!\U_VGA|Add2~34\)))) # (GND)
-- \U_VGA|Add2~36\ = CARRY((\U_VGA|temp_mov_x~13_combout\ & ((\U_VGA|temp_x_pos~13_combout\) # (!\U_VGA|Add2~34\))) # (!\U_VGA|temp_mov_x~13_combout\ & (\U_VGA|temp_x_pos~13_combout\ & !\U_VGA|Add2~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_mov_x~13_combout\,
	datab => \U_VGA|temp_x_pos~13_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~34\,
	combout => \U_VGA|Add2~35_combout\,
	cout => \U_VGA|Add2~36\);

-- Location: LCCOMB_X39_Y35_N0
\U_VGA|Add2~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~43_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datac => \U_VGA|Add2~35_combout\,
	combout => \U_VGA|Add2~43_combout\);

-- Location: FF_X39_Y35_N1
\U_VGA|x_pos[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(13));

-- Location: LCCOMB_X38_Y36_N4
\U_VGA|temp_x_pos~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_x_pos~13_combout\ = (\U_VGA|x_pos\(13) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|x_pos\(13),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_x_pos~13_combout\);

-- Location: LCCOMB_X39_Y35_N28
\U_VGA|Add2~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~37_combout\ = (\U_VGA|temp_mov_x~12_combout\ & ((\U_VGA|temp_x_pos~12_combout\ & (\U_VGA|Add2~36\ & VCC)) # (!\U_VGA|temp_x_pos~12_combout\ & (!\U_VGA|Add2~36\)))) # (!\U_VGA|temp_mov_x~12_combout\ & ((\U_VGA|temp_x_pos~12_combout\ & 
-- (!\U_VGA|Add2~36\)) # (!\U_VGA|temp_x_pos~12_combout\ & ((\U_VGA|Add2~36\) # (GND)))))
-- \U_VGA|Add2~38\ = CARRY((\U_VGA|temp_mov_x~12_combout\ & (!\U_VGA|temp_x_pos~12_combout\ & !\U_VGA|Add2~36\)) # (!\U_VGA|temp_mov_x~12_combout\ & ((!\U_VGA|Add2~36\) # (!\U_VGA|temp_x_pos~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_mov_x~12_combout\,
	datab => \U_VGA|temp_x_pos~12_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~36\,
	combout => \U_VGA|Add2~37_combout\,
	cout => \U_VGA|Add2~38\);

-- Location: LCCOMB_X38_Y35_N22
\U_VGA|Add2~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~42_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~37_combout\,
	combout => \U_VGA|Add2~42_combout\);

-- Location: FF_X38_Y35_N23
\U_VGA|x_pos[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(14));

-- Location: LCCOMB_X38_Y36_N10
\U_VGA|temp_x_pos~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_x_pos~12_combout\ = (\U_VGA|x_pos\(14) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(14),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_x_pos~12_combout\);

-- Location: LCCOMB_X39_Y35_N30
\U_VGA|Add2~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~39_combout\ = ((\U_VGA|temp_x_pos~11_combout\ $ (\U_VGA|temp_mov_x~11_combout\ $ (!\U_VGA|Add2~38\)))) # (GND)
-- \U_VGA|Add2~40\ = CARRY((\U_VGA|temp_x_pos~11_combout\ & ((\U_VGA|temp_mov_x~11_combout\) # (!\U_VGA|Add2~38\))) # (!\U_VGA|temp_x_pos~11_combout\ & (\U_VGA|temp_mov_x~11_combout\ & !\U_VGA|Add2~38\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_x_pos~11_combout\,
	datab => \U_VGA|temp_mov_x~11_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~38\,
	combout => \U_VGA|Add2~39_combout\,
	cout => \U_VGA|Add2~40\);

-- Location: LCCOMB_X38_Y35_N24
\U_VGA|Add2~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~41_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datac => \U_VGA|Add2~39_combout\,
	combout => \U_VGA|Add2~41_combout\);

-- Location: FF_X38_Y35_N25
\U_VGA|x_pos[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(15));

-- Location: LCCOMB_X38_Y36_N16
\U_VGA|temp_x_pos~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_x_pos~11_combout\ = (\U_VGA|x_pos\(15) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|x_pos\(15),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_x_pos~11_combout\);

-- Location: LCCOMB_X39_Y34_N0
\U_VGA|Add2~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~45_combout\ = (\U_VGA|temp_mov_x~18_combout\ & ((\U_VGA|temp_x_pos~18_combout\ & (\U_VGA|Add2~40\ & VCC)) # (!\U_VGA|temp_x_pos~18_combout\ & (!\U_VGA|Add2~40\)))) # (!\U_VGA|temp_mov_x~18_combout\ & ((\U_VGA|temp_x_pos~18_combout\ & 
-- (!\U_VGA|Add2~40\)) # (!\U_VGA|temp_x_pos~18_combout\ & ((\U_VGA|Add2~40\) # (GND)))))
-- \U_VGA|Add2~46\ = CARRY((\U_VGA|temp_mov_x~18_combout\ & (!\U_VGA|temp_x_pos~18_combout\ & !\U_VGA|Add2~40\)) # (!\U_VGA|temp_mov_x~18_combout\ & ((!\U_VGA|Add2~40\) # (!\U_VGA|temp_x_pos~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_mov_x~18_combout\,
	datab => \U_VGA|temp_x_pos~18_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~40\,
	combout => \U_VGA|Add2~45_combout\,
	cout => \U_VGA|Add2~46\);

-- Location: LCCOMB_X38_Y34_N10
\U_VGA|Add2~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~56_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datac => \U_VGA|Add2~45_combout\,
	combout => \U_VGA|Add2~56_combout\);

-- Location: FF_X38_Y34_N11
\U_VGA|x_pos[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(16));

-- Location: LCCOMB_X38_Y34_N4
\U_VGA|temp_x_pos~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_x_pos~18_combout\ = (\U_VGA|x_pos\(16) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(16),
	datac => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_x_pos~18_combout\);

-- Location: LCCOMB_X39_Y34_N2
\U_VGA|Add2~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~47_combout\ = ((\U_VGA|temp_mov_x~17_combout\ $ (\U_VGA|temp_x_pos~17_combout\ $ (!\U_VGA|Add2~46\)))) # (GND)
-- \U_VGA|Add2~48\ = CARRY((\U_VGA|temp_mov_x~17_combout\ & ((\U_VGA|temp_x_pos~17_combout\) # (!\U_VGA|Add2~46\))) # (!\U_VGA|temp_mov_x~17_combout\ & (\U_VGA|temp_x_pos~17_combout\ & !\U_VGA|Add2~46\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_mov_x~17_combout\,
	datab => \U_VGA|temp_x_pos~17_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~46\,
	combout => \U_VGA|Add2~47_combout\,
	cout => \U_VGA|Add2~48\);

-- Location: LCCOMB_X38_Y34_N24
\U_VGA|Add2~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~55_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~47_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~47_combout\,
	combout => \U_VGA|Add2~55_combout\);

-- Location: FF_X38_Y34_N25
\U_VGA|x_pos[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(17));

-- Location: LCCOMB_X38_Y33_N2
\U_VGA|temp_x_pos~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_x_pos~17_combout\ = (\U_VGA|x_pos\(17) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(17),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_x_pos~17_combout\);

-- Location: LCCOMB_X39_Y34_N4
\U_VGA|Add2~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~49_combout\ = (\U_VGA|temp_x_pos~16_combout\ & ((\U_VGA|temp_mov_x~16_combout\ & (\U_VGA|Add2~48\ & VCC)) # (!\U_VGA|temp_mov_x~16_combout\ & (!\U_VGA|Add2~48\)))) # (!\U_VGA|temp_x_pos~16_combout\ & ((\U_VGA|temp_mov_x~16_combout\ & 
-- (!\U_VGA|Add2~48\)) # (!\U_VGA|temp_mov_x~16_combout\ & ((\U_VGA|Add2~48\) # (GND)))))
-- \U_VGA|Add2~50\ = CARRY((\U_VGA|temp_x_pos~16_combout\ & (!\U_VGA|temp_mov_x~16_combout\ & !\U_VGA|Add2~48\)) # (!\U_VGA|temp_x_pos~16_combout\ & ((!\U_VGA|Add2~48\) # (!\U_VGA|temp_mov_x~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_x_pos~16_combout\,
	datab => \U_VGA|temp_mov_x~16_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~48\,
	combout => \U_VGA|Add2~49_combout\,
	cout => \U_VGA|Add2~50\);

-- Location: LCCOMB_X38_Y34_N30
\U_VGA|Add2~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~54_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~49_combout\,
	combout => \U_VGA|Add2~54_combout\);

-- Location: FF_X38_Y34_N31
\U_VGA|x_pos[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(18));

-- Location: LCCOMB_X38_Y34_N26
\U_VGA|temp_x_pos~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_x_pos~16_combout\ = (\U_VGA|x_pos\(18) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(18),
	datac => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_x_pos~16_combout\);

-- Location: LCCOMB_X39_Y34_N6
\U_VGA|Add2~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~51_combout\ = ((\U_VGA|temp_x_pos~15_combout\ $ (\U_VGA|temp_mov_x~15_combout\ $ (!\U_VGA|Add2~50\)))) # (GND)
-- \U_VGA|Add2~52\ = CARRY((\U_VGA|temp_x_pos~15_combout\ & ((\U_VGA|temp_mov_x~15_combout\) # (!\U_VGA|Add2~50\))) # (!\U_VGA|temp_x_pos~15_combout\ & (\U_VGA|temp_mov_x~15_combout\ & !\U_VGA|Add2~50\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_x_pos~15_combout\,
	datab => \U_VGA|temp_mov_x~15_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~50\,
	combout => \U_VGA|Add2~51_combout\,
	cout => \U_VGA|Add2~52\);

-- Location: LCCOMB_X38_Y34_N20
\U_VGA|Add2~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~53_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~51_combout\,
	combout => \U_VGA|Add2~53_combout\);

-- Location: FF_X38_Y34_N21
\U_VGA|x_pos[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(19));

-- Location: LCCOMB_X37_Y34_N0
\U_VGA|temp_x_pos~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_x_pos~15_combout\ = (\U_VGA|x_pos\(19) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(19),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_x_pos~15_combout\);

-- Location: LCCOMB_X39_Y34_N8
\U_VGA|Add2~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~57_combout\ = (\U_VGA|temp_x_pos~22_combout\ & ((\U_VGA|temp_mov_x~22_combout\ & (\U_VGA|Add2~52\ & VCC)) # (!\U_VGA|temp_mov_x~22_combout\ & (!\U_VGA|Add2~52\)))) # (!\U_VGA|temp_x_pos~22_combout\ & ((\U_VGA|temp_mov_x~22_combout\ & 
-- (!\U_VGA|Add2~52\)) # (!\U_VGA|temp_mov_x~22_combout\ & ((\U_VGA|Add2~52\) # (GND)))))
-- \U_VGA|Add2~58\ = CARRY((\U_VGA|temp_x_pos~22_combout\ & (!\U_VGA|temp_mov_x~22_combout\ & !\U_VGA|Add2~52\)) # (!\U_VGA|temp_x_pos~22_combout\ & ((!\U_VGA|Add2~52\) # (!\U_VGA|temp_mov_x~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_x_pos~22_combout\,
	datab => \U_VGA|temp_mov_x~22_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~52\,
	combout => \U_VGA|Add2~57_combout\,
	cout => \U_VGA|Add2~58\);

-- Location: LCCOMB_X40_Y34_N28
\U_VGA|Add2~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~68_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~57_combout\,
	combout => \U_VGA|Add2~68_combout\);

-- Location: FF_X40_Y34_N29
\U_VGA|x_pos[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(20));

-- Location: LCCOMB_X38_Y34_N14
\U_VGA|temp_x_pos~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_x_pos~22_combout\ = (\U_VGA|x_pos\(20) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(20),
	datac => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_x_pos~22_combout\);

-- Location: LCCOMB_X39_Y34_N10
\U_VGA|Add2~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~59_combout\ = ((\U_VGA|temp_x_pos~21_combout\ $ (\U_VGA|temp_mov_x~21_combout\ $ (!\U_VGA|Add2~58\)))) # (GND)
-- \U_VGA|Add2~60\ = CARRY((\U_VGA|temp_x_pos~21_combout\ & ((\U_VGA|temp_mov_x~21_combout\) # (!\U_VGA|Add2~58\))) # (!\U_VGA|temp_x_pos~21_combout\ & (\U_VGA|temp_mov_x~21_combout\ & !\U_VGA|Add2~58\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_x_pos~21_combout\,
	datab => \U_VGA|temp_mov_x~21_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~58\,
	combout => \U_VGA|Add2~59_combout\,
	cout => \U_VGA|Add2~60\);

-- Location: LCCOMB_X40_Y34_N26
\U_VGA|Add2~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~67_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~59_combout\,
	combout => \U_VGA|Add2~67_combout\);

-- Location: FF_X40_Y34_N27
\U_VGA|x_pos[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(21));

-- Location: LCCOMB_X37_Y34_N12
\U_VGA|temp_x_pos~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_x_pos~21_combout\ = (\U_VGA|x_pos\(21) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|x_pos\(21),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_x_pos~21_combout\);

-- Location: LCCOMB_X39_Y34_N12
\U_VGA|Add2~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~61_combout\ = (\U_VGA|temp_x_pos~20_combout\ & ((\U_VGA|temp_mov_x~20_combout\ & (\U_VGA|Add2~60\ & VCC)) # (!\U_VGA|temp_mov_x~20_combout\ & (!\U_VGA|Add2~60\)))) # (!\U_VGA|temp_x_pos~20_combout\ & ((\U_VGA|temp_mov_x~20_combout\ & 
-- (!\U_VGA|Add2~60\)) # (!\U_VGA|temp_mov_x~20_combout\ & ((\U_VGA|Add2~60\) # (GND)))))
-- \U_VGA|Add2~62\ = CARRY((\U_VGA|temp_x_pos~20_combout\ & (!\U_VGA|temp_mov_x~20_combout\ & !\U_VGA|Add2~60\)) # (!\U_VGA|temp_x_pos~20_combout\ & ((!\U_VGA|Add2~60\) # (!\U_VGA|temp_mov_x~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_x_pos~20_combout\,
	datab => \U_VGA|temp_mov_x~20_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~60\,
	combout => \U_VGA|Add2~61_combout\,
	cout => \U_VGA|Add2~62\);

-- Location: LCCOMB_X40_Y34_N0
\U_VGA|Add2~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~66_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~61_combout\,
	combout => \U_VGA|Add2~66_combout\);

-- Location: FF_X40_Y34_N1
\U_VGA|x_pos[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(22));

-- Location: LCCOMB_X39_Y38_N16
\U_VGA|temp_x_pos~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_x_pos~20_combout\ = (\U_VGA|x_pos\(22) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(22),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_x_pos~20_combout\);

-- Location: LCCOMB_X39_Y34_N14
\U_VGA|Add2~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~63_combout\ = ((\U_VGA|temp_mov_x~19_combout\ $ (\U_VGA|temp_x_pos~19_combout\ $ (!\U_VGA|Add2~62\)))) # (GND)
-- \U_VGA|Add2~64\ = CARRY((\U_VGA|temp_mov_x~19_combout\ & ((\U_VGA|temp_x_pos~19_combout\) # (!\U_VGA|Add2~62\))) # (!\U_VGA|temp_mov_x~19_combout\ & (\U_VGA|temp_x_pos~19_combout\ & !\U_VGA|Add2~62\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_mov_x~19_combout\,
	datab => \U_VGA|temp_x_pos~19_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~62\,
	combout => \U_VGA|Add2~63_combout\,
	cout => \U_VGA|Add2~64\);

-- Location: LCCOMB_X38_Y34_N18
\U_VGA|Add2~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~65_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datac => \U_VGA|Add2~63_combout\,
	combout => \U_VGA|Add2~65_combout\);

-- Location: FF_X38_Y34_N19
\U_VGA|x_pos[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(23));

-- Location: LCCOMB_X37_Y34_N6
\U_VGA|temp_x_pos~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_x_pos~19_combout\ = (\U_VGA|x_pos\(23) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|x_pos\(23),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_x_pos~19_combout\);

-- Location: LCCOMB_X39_Y34_N16
\U_VGA|Add2~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~69_combout\ = (\U_VGA|temp_mov_x~26_combout\ & ((\U_VGA|temp_x_pos~26_combout\ & (\U_VGA|Add2~64\ & VCC)) # (!\U_VGA|temp_x_pos~26_combout\ & (!\U_VGA|Add2~64\)))) # (!\U_VGA|temp_mov_x~26_combout\ & ((\U_VGA|temp_x_pos~26_combout\ & 
-- (!\U_VGA|Add2~64\)) # (!\U_VGA|temp_x_pos~26_combout\ & ((\U_VGA|Add2~64\) # (GND)))))
-- \U_VGA|Add2~70\ = CARRY((\U_VGA|temp_mov_x~26_combout\ & (!\U_VGA|temp_x_pos~26_combout\ & !\U_VGA|Add2~64\)) # (!\U_VGA|temp_mov_x~26_combout\ & ((!\U_VGA|Add2~64\) # (!\U_VGA|temp_x_pos~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_mov_x~26_combout\,
	datab => \U_VGA|temp_x_pos~26_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~64\,
	combout => \U_VGA|Add2~69_combout\,
	cout => \U_VGA|Add2~70\);

-- Location: LCCOMB_X42_Y34_N26
\U_VGA|Add2~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~80_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~69_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~69_combout\,
	combout => \U_VGA|Add2~80_combout\);

-- Location: FF_X42_Y34_N27
\U_VGA|x_pos[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(24));

-- Location: LCCOMB_X38_Y38_N20
\U_VGA|temp_x_pos~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_x_pos~26_combout\ = (\U_VGA|ball_move~1_combout\ & \U_VGA|x_pos\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|x_pos\(24),
	combout => \U_VGA|temp_x_pos~26_combout\);

-- Location: LCCOMB_X39_Y34_N18
\U_VGA|Add2~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~71_combout\ = ((\U_VGA|temp_x_pos~25_combout\ $ (\U_VGA|temp_mov_x~25_combout\ $ (!\U_VGA|Add2~70\)))) # (GND)
-- \U_VGA|Add2~72\ = CARRY((\U_VGA|temp_x_pos~25_combout\ & ((\U_VGA|temp_mov_x~25_combout\) # (!\U_VGA|Add2~70\))) # (!\U_VGA|temp_x_pos~25_combout\ & (\U_VGA|temp_mov_x~25_combout\ & !\U_VGA|Add2~70\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_x_pos~25_combout\,
	datab => \U_VGA|temp_mov_x~25_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~70\,
	combout => \U_VGA|Add2~71_combout\,
	cout => \U_VGA|Add2~72\);

-- Location: LCCOMB_X38_Y34_N8
\U_VGA|Add2~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~79_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~71_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~71_combout\,
	combout => \U_VGA|Add2~79_combout\);

-- Location: FF_X38_Y34_N9
\U_VGA|x_pos[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(25));

-- Location: LCCOMB_X37_Y34_N30
\U_VGA|temp_x_pos~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_x_pos~25_combout\ = (\U_VGA|x_pos\(25) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|x_pos\(25),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_x_pos~25_combout\);

-- Location: LCCOMB_X39_Y34_N20
\U_VGA|Add2~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~73_combout\ = (\U_VGA|temp_mov_x~24_combout\ & ((\U_VGA|temp_x_pos~24_combout\ & (\U_VGA|Add2~72\ & VCC)) # (!\U_VGA|temp_x_pos~24_combout\ & (!\U_VGA|Add2~72\)))) # (!\U_VGA|temp_mov_x~24_combout\ & ((\U_VGA|temp_x_pos~24_combout\ & 
-- (!\U_VGA|Add2~72\)) # (!\U_VGA|temp_x_pos~24_combout\ & ((\U_VGA|Add2~72\) # (GND)))))
-- \U_VGA|Add2~74\ = CARRY((\U_VGA|temp_mov_x~24_combout\ & (!\U_VGA|temp_x_pos~24_combout\ & !\U_VGA|Add2~72\)) # (!\U_VGA|temp_mov_x~24_combout\ & ((!\U_VGA|Add2~72\) # (!\U_VGA|temp_x_pos~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_mov_x~24_combout\,
	datab => \U_VGA|temp_x_pos~24_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~72\,
	combout => \U_VGA|Add2~73_combout\,
	cout => \U_VGA|Add2~74\);

-- Location: LCCOMB_X42_Y34_N8
\U_VGA|Add2~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~78_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~73_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~73_combout\,
	combout => \U_VGA|Add2~78_combout\);

-- Location: FF_X42_Y34_N9
\U_VGA|x_pos[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(26));

-- Location: LCCOMB_X38_Y36_N8
\U_VGA|temp_x_pos~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_x_pos~24_combout\ = (\U_VGA|x_pos\(26) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|x_pos\(26),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_x_pos~24_combout\);

-- Location: LCCOMB_X39_Y34_N22
\U_VGA|Add2~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~75_combout\ = ((\U_VGA|temp_x_pos~23_combout\ $ (\U_VGA|temp_mov_x~23_combout\ $ (!\U_VGA|Add2~74\)))) # (GND)
-- \U_VGA|Add2~76\ = CARRY((\U_VGA|temp_x_pos~23_combout\ & ((\U_VGA|temp_mov_x~23_combout\) # (!\U_VGA|Add2~74\))) # (!\U_VGA|temp_x_pos~23_combout\ & (\U_VGA|temp_mov_x~23_combout\ & !\U_VGA|Add2~74\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_x_pos~23_combout\,
	datab => \U_VGA|temp_mov_x~23_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~74\,
	combout => \U_VGA|Add2~75_combout\,
	cout => \U_VGA|Add2~76\);

-- Location: LCCOMB_X36_Y34_N30
\U_VGA|Add2~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~77_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~75_combout\,
	combout => \U_VGA|Add2~77_combout\);

-- Location: FF_X36_Y34_N31
\U_VGA|x_pos[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(27));

-- Location: LCCOMB_X37_Y34_N14
\U_VGA|temp_x_pos~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_x_pos~23_combout\ = (\U_VGA|x_pos\(27) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|x_pos\(27),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_x_pos~23_combout\);

-- Location: LCCOMB_X39_Y34_N24
\U_VGA|Add2~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~81_combout\ = (\U_VGA|temp_mov_x~29_combout\ & ((\U_VGA|temp_x_pos~29_combout\ & (\U_VGA|Add2~76\ & VCC)) # (!\U_VGA|temp_x_pos~29_combout\ & (!\U_VGA|Add2~76\)))) # (!\U_VGA|temp_mov_x~29_combout\ & ((\U_VGA|temp_x_pos~29_combout\ & 
-- (!\U_VGA|Add2~76\)) # (!\U_VGA|temp_x_pos~29_combout\ & ((\U_VGA|Add2~76\) # (GND)))))
-- \U_VGA|Add2~82\ = CARRY((\U_VGA|temp_mov_x~29_combout\ & (!\U_VGA|temp_x_pos~29_combout\ & !\U_VGA|Add2~76\)) # (!\U_VGA|temp_mov_x~29_combout\ & ((!\U_VGA|Add2~76\) # (!\U_VGA|temp_x_pos~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_mov_x~29_combout\,
	datab => \U_VGA|temp_x_pos~29_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~76\,
	combout => \U_VGA|Add2~81_combout\,
	cout => \U_VGA|Add2~82\);

-- Location: LCCOMB_X40_Y33_N0
\U_VGA|Add2~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~89_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~81_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datac => \U_VGA|Add2~81_combout\,
	combout => \U_VGA|Add2~89_combout\);

-- Location: FF_X40_Y33_N1
\U_VGA|x_pos[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(28));

-- Location: LCCOMB_X38_Y34_N16
\U_VGA|temp_x_pos~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_x_pos~28_combout\ = (\U_VGA|ball_move~1_combout\ & \U_VGA|x_pos\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|x_pos\(29),
	combout => \U_VGA|temp_x_pos~28_combout\);

-- Location: LCCOMB_X41_Y34_N26
\U_VGA|Add1~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add1~57_combout\ = (\U_VGA|Add1~56\ & ((\U_VGA|mov_x~76_combout\ $ (\U_VGA|mov_x\(28))))) # (!\U_VGA|Add1~56\ & (\U_VGA|mov_x~76_combout\ $ (\U_VGA|mov_x\(28) $ (VCC))))
-- \U_VGA|Add1~58\ = CARRY((!\U_VGA|Add1~56\ & (\U_VGA|mov_x~76_combout\ $ (\U_VGA|mov_x\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x~76_combout\,
	datab => \U_VGA|mov_x\(28),
	datad => VCC,
	cin => \U_VGA|Add1~56\,
	combout => \U_VGA|Add1~57_combout\,
	cout => \U_VGA|Add1~58\);

-- Location: LCCOMB_X42_Y35_N28
\U_VGA|mov_x~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~105_combout\ = (\button_n[0]~input_o\ & (\U_VGA|ball_move~1_combout\ & \U_VGA|Add1~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|Add1~57_combout\,
	combout => \U_VGA|mov_x~105_combout\);

-- Location: FF_X42_Y35_N29
\U_VGA|mov_x[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_x~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_x\(28));

-- Location: LCCOMB_X38_Y34_N6
\U_VGA|temp_mov_x~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_x~28_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add1~57_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_x\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|mov_x\(28),
	datac => \U_VGA|ball_move~1_combout\,
	datad => \U_VGA|Add1~57_combout\,
	combout => \U_VGA|temp_mov_x~28_combout\);

-- Location: LCCOMB_X39_Y34_N26
\U_VGA|Add2~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~83_combout\ = ((\U_VGA|temp_x_pos~28_combout\ $ (\U_VGA|temp_mov_x~28_combout\ $ (!\U_VGA|Add2~82\)))) # (GND)
-- \U_VGA|Add2~84\ = CARRY((\U_VGA|temp_x_pos~28_combout\ & ((\U_VGA|temp_mov_x~28_combout\) # (!\U_VGA|Add2~82\))) # (!\U_VGA|temp_x_pos~28_combout\ & (\U_VGA|temp_mov_x~28_combout\ & !\U_VGA|Add2~82\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_x_pos~28_combout\,
	datab => \U_VGA|temp_mov_x~28_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~82\,
	combout => \U_VGA|Add2~83_combout\,
	cout => \U_VGA|Add2~84\);

-- Location: LCCOMB_X40_Y33_N30
\U_VGA|Add2~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~88_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~83_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~83_combout\,
	combout => \U_VGA|Add2~88_combout\);

-- Location: FF_X40_Y33_N31
\U_VGA|x_pos[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(29));

-- Location: LCCOMB_X37_Y34_N20
\U_VGA|temp_x_pos~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_x_pos~27_combout\ = (\U_VGA|x_pos\(30) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|x_pos\(30),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_x_pos~27_combout\);

-- Location: LCCOMB_X41_Y34_N28
\U_VGA|Add1~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add1~59_combout\ = (\U_VGA|Add1~58\ & (\U_VGA|mov_x~76_combout\ $ ((!\U_VGA|mov_x\(29))))) # (!\U_VGA|Add1~58\ & ((\U_VGA|mov_x~76_combout\ $ (\U_VGA|mov_x\(29))) # (GND)))
-- \U_VGA|Add1~60\ = CARRY((\U_VGA|mov_x~76_combout\ $ (!\U_VGA|mov_x\(29))) # (!\U_VGA|Add1~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x~76_combout\,
	datab => \U_VGA|mov_x\(29),
	datad => VCC,
	cin => \U_VGA|Add1~58\,
	combout => \U_VGA|Add1~59_combout\,
	cout => \U_VGA|Add1~60\);

-- Location: LCCOMB_X42_Y34_N28
\U_VGA|mov_x~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~104_combout\ = (\U_VGA|ball_move~1_combout\ & (\button_n[0]~input_o\ & \U_VGA|Add1~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~1_combout\,
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add1~59_combout\,
	combout => \U_VGA|mov_x~104_combout\);

-- Location: FF_X42_Y34_N29
\U_VGA|mov_x[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_x~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_x\(29));

-- Location: LCCOMB_X40_Y34_N10
\U_VGA|temp_mov_x~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_x~27_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add1~59_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_x\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~1_combout\,
	datab => \U_VGA|mov_x\(29),
	datad => \U_VGA|Add1~59_combout\,
	combout => \U_VGA|temp_mov_x~27_combout\);

-- Location: LCCOMB_X39_Y34_N28
\U_VGA|Add2~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~85_combout\ = (\U_VGA|temp_x_pos~27_combout\ & ((\U_VGA|temp_mov_x~27_combout\ & (\U_VGA|Add2~84\ & VCC)) # (!\U_VGA|temp_mov_x~27_combout\ & (!\U_VGA|Add2~84\)))) # (!\U_VGA|temp_x_pos~27_combout\ & ((\U_VGA|temp_mov_x~27_combout\ & 
-- (!\U_VGA|Add2~84\)) # (!\U_VGA|temp_mov_x~27_combout\ & ((\U_VGA|Add2~84\) # (GND)))))
-- \U_VGA|Add2~86\ = CARRY((\U_VGA|temp_x_pos~27_combout\ & (!\U_VGA|temp_mov_x~27_combout\ & !\U_VGA|Add2~84\)) # (!\U_VGA|temp_x_pos~27_combout\ & ((!\U_VGA|Add2~84\) # (!\U_VGA|temp_mov_x~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|temp_x_pos~27_combout\,
	datab => \U_VGA|temp_mov_x~27_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~84\,
	combout => \U_VGA|Add2~85_combout\,
	cout => \U_VGA|Add2~86\);

-- Location: LCCOMB_X40_Y33_N24
\U_VGA|Add2~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~87_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~85_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~85_combout\,
	combout => \U_VGA|Add2~87_combout\);

-- Location: FF_X40_Y33_N25
\U_VGA|x_pos[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(30));

-- Location: LCCOMB_X40_Y33_N6
\U_VGA|mov_x~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~69_combout\ = (!\U_VGA|x_pos\(28) & (!\U_VGA|x_pos\(29) & !\U_VGA|x_pos\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|x_pos\(28),
	datac => \U_VGA|x_pos\(29),
	datad => \U_VGA|x_pos\(30),
	combout => \U_VGA|mov_x~69_combout\);

-- Location: LCCOMB_X40_Y34_N2
\U_VGA|mov_x~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~67_combout\ = (!\U_VGA|x_pos\(23) & (!\U_VGA|x_pos\(22) & (!\U_VGA|x_pos\(21) & !\U_VGA|x_pos\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(23),
	datab => \U_VGA|x_pos\(22),
	datac => \U_VGA|x_pos\(21),
	datad => \U_VGA|x_pos\(20),
	combout => \U_VGA|mov_x~67_combout\);

-- Location: LCCOMB_X42_Y34_N16
\U_VGA|mov_x~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~68_combout\ = (!\U_VGA|x_pos\(24) & (!\U_VGA|x_pos\(26) & (!\U_VGA|x_pos\(25) & !\U_VGA|x_pos\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(24),
	datab => \U_VGA|x_pos\(26),
	datac => \U_VGA|x_pos\(25),
	datad => \U_VGA|x_pos\(27),
	combout => \U_VGA|mov_x~68_combout\);

-- Location: LCCOMB_X38_Y35_N2
\U_VGA|mov_x~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~64_combout\ = (!\U_VGA|x_pos\(14) & (!\U_VGA|x_pos\(12) & (!\U_VGA|x_pos\(13) & !\U_VGA|x_pos\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(14),
	datab => \U_VGA|x_pos\(12),
	datac => \U_VGA|x_pos\(13),
	datad => \U_VGA|x_pos\(15),
	combout => \U_VGA|mov_x~64_combout\);

-- Location: LCCOMB_X38_Y34_N28
\U_VGA|mov_x~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~65_combout\ = (!\U_VGA|x_pos\(16) & (!\U_VGA|x_pos\(17) & (!\U_VGA|x_pos\(18) & !\U_VGA|x_pos\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(16),
	datab => \U_VGA|x_pos\(17),
	datac => \U_VGA|x_pos\(18),
	datad => \U_VGA|x_pos\(19),
	combout => \U_VGA|mov_x~65_combout\);

-- Location: LCCOMB_X43_Y35_N30
\U_VGA|mov_x~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~62_combout\ = (!\U_VGA|x_pos\(4) & (!\U_VGA|x_pos\(5) & (\U_VGA|x_pos\(7) & \U_VGA|x_pos\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(4),
	datab => \U_VGA|x_pos\(5),
	datac => \U_VGA|x_pos\(7),
	datad => \U_VGA|x_pos\(6),
	combout => \U_VGA|mov_x~62_combout\);

-- Location: LCCOMB_X38_Y34_N2
\U_VGA|mov_x~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~63_combout\ = (!\U_VGA|x_pos\(9) & (!\U_VGA|x_pos\(8) & (!\U_VGA|x_pos\(11) & !\U_VGA|x_pos\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(9),
	datab => \U_VGA|x_pos\(8),
	datac => \U_VGA|x_pos\(11),
	datad => \U_VGA|x_pos\(10),
	combout => \U_VGA|mov_x~63_combout\);

-- Location: LCCOMB_X43_Y35_N28
\U_VGA|mov_x~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~66_combout\ = (\U_VGA|mov_x~64_combout\ & (\U_VGA|mov_x~65_combout\ & (\U_VGA|mov_x~62_combout\ & \U_VGA|mov_x~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x~64_combout\,
	datab => \U_VGA|mov_x~65_combout\,
	datac => \U_VGA|mov_x~62_combout\,
	datad => \U_VGA|mov_x~63_combout\,
	combout => \U_VGA|mov_x~66_combout\);

-- Location: LCCOMB_X43_Y35_N6
\U_VGA|mov_x~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~70_combout\ = (\U_VGA|mov_x~69_combout\ & (\U_VGA|mov_x~67_combout\ & (\U_VGA|mov_x~68_combout\ & \U_VGA|mov_x~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x~69_combout\,
	datab => \U_VGA|mov_x~67_combout\,
	datac => \U_VGA|mov_x~68_combout\,
	datad => \U_VGA|mov_x~66_combout\,
	combout => \U_VGA|mov_x~70_combout\);

-- Location: LCCOMB_X43_Y35_N0
\U_VGA|mov_x~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~74_combout\ = (\U_VGA|x_pos\(31)) # ((\U_VGA|mov_x~70_combout\ & ((\U_VGA|x_pos\(3)) # (!\U_VGA|x_pos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(31),
	datab => \U_VGA|x_pos\(3),
	datac => \U_VGA|x_pos\(2),
	datad => \U_VGA|mov_x~70_combout\,
	combout => \U_VGA|mov_x~74_combout\);

-- Location: LCCOMB_X44_Y36_N2
\U_VGA|LessThan5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~1_cout\ = CARRY((!\U_VGA|y_pos\(1) & \U_VGA|y_pos_p1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(1),
	datab => \U_VGA|y_pos_p1\(1),
	datad => VCC,
	cout => \U_VGA|LessThan5~1_cout\);

-- Location: LCCOMB_X44_Y36_N4
\U_VGA|LessThan5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~3_cout\ = CARRY((\U_VGA|y_pos_p1\(2) & (\U_VGA|y_pos\(2) & !\U_VGA|LessThan5~1_cout\)) # (!\U_VGA|y_pos_p1\(2) & ((\U_VGA|y_pos\(2)) # (!\U_VGA|LessThan5~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(2),
	datab => \U_VGA|y_pos\(2),
	datad => VCC,
	cin => \U_VGA|LessThan5~1_cout\,
	cout => \U_VGA|LessThan5~3_cout\);

-- Location: LCCOMB_X44_Y36_N6
\U_VGA|LessThan5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~5_cout\ = CARRY((\U_VGA|y_pos\(3) & ((!\U_VGA|LessThan5~3_cout\) # (!\U_VGA|y_pos_p1\(3)))) # (!\U_VGA|y_pos\(3) & (!\U_VGA|y_pos_p1\(3) & !\U_VGA|LessThan5~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(3),
	datab => \U_VGA|y_pos_p1\(3),
	datad => VCC,
	cin => \U_VGA|LessThan5~3_cout\,
	cout => \U_VGA|LessThan5~5_cout\);

-- Location: LCCOMB_X44_Y36_N8
\U_VGA|LessThan5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~7_cout\ = CARRY((\U_VGA|y_pos_p1\(4) & (\U_VGA|y_pos\(4) & !\U_VGA|LessThan5~5_cout\)) # (!\U_VGA|y_pos_p1\(4) & ((\U_VGA|y_pos\(4)) # (!\U_VGA|LessThan5~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(4),
	datab => \U_VGA|y_pos\(4),
	datad => VCC,
	cin => \U_VGA|LessThan5~5_cout\,
	cout => \U_VGA|LessThan5~7_cout\);

-- Location: LCCOMB_X44_Y36_N10
\U_VGA|LessThan5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~9_cout\ = CARRY((\U_VGA|y_pos_p1\(5) & ((!\U_VGA|LessThan5~7_cout\) # (!\U_VGA|y_pos\(5)))) # (!\U_VGA|y_pos_p1\(5) & (!\U_VGA|y_pos\(5) & !\U_VGA|LessThan5~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(5),
	datab => \U_VGA|y_pos\(5),
	datad => VCC,
	cin => \U_VGA|LessThan5~7_cout\,
	cout => \U_VGA|LessThan5~9_cout\);

-- Location: LCCOMB_X44_Y36_N12
\U_VGA|LessThan5~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~11_cout\ = CARRY((\U_VGA|y_pos_p1\(6) & ((\U_VGA|Add9~0_combout\) # (!\U_VGA|LessThan5~9_cout\))) # (!\U_VGA|y_pos_p1\(6) & (\U_VGA|Add9~0_combout\ & !\U_VGA|LessThan5~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(6),
	datab => \U_VGA|Add9~0_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan5~9_cout\,
	cout => \U_VGA|LessThan5~11_cout\);

-- Location: LCCOMB_X44_Y36_N14
\U_VGA|LessThan5~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~13_cout\ = CARRY((\U_VGA|Add9~2_combout\ & (!\U_VGA|y_pos_p1\(7) & !\U_VGA|LessThan5~11_cout\)) # (!\U_VGA|Add9~2_combout\ & ((!\U_VGA|LessThan5~11_cout\) # (!\U_VGA|y_pos_p1\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add9~2_combout\,
	datab => \U_VGA|y_pos_p1\(7),
	datad => VCC,
	cin => \U_VGA|LessThan5~11_cout\,
	cout => \U_VGA|LessThan5~13_cout\);

-- Location: LCCOMB_X44_Y36_N16
\U_VGA|LessThan5~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~15_cout\ = CARRY((\U_VGA|y_pos_p1\(8) & (\U_VGA|Add9~4_combout\ & !\U_VGA|LessThan5~13_cout\)) # (!\U_VGA|y_pos_p1\(8) & ((\U_VGA|Add9~4_combout\) # (!\U_VGA|LessThan5~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(8),
	datab => \U_VGA|Add9~4_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan5~13_cout\,
	cout => \U_VGA|LessThan5~15_cout\);

-- Location: LCCOMB_X44_Y36_N18
\U_VGA|LessThan5~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~17_cout\ = CARRY((\U_VGA|y_pos_p1\(9) & ((!\U_VGA|LessThan5~15_cout\) # (!\U_VGA|Add9~6_combout\))) # (!\U_VGA|y_pos_p1\(9) & (!\U_VGA|Add9~6_combout\ & !\U_VGA|LessThan5~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(9),
	datab => \U_VGA|Add9~6_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan5~15_cout\,
	cout => \U_VGA|LessThan5~17_cout\);

-- Location: LCCOMB_X44_Y36_N20
\U_VGA|LessThan5~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~19_cout\ = CARRY((\U_VGA|y_pos_p1\(10) & (\U_VGA|Add9~8_combout\ & !\U_VGA|LessThan5~17_cout\)) # (!\U_VGA|y_pos_p1\(10) & ((\U_VGA|Add9~8_combout\) # (!\U_VGA|LessThan5~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(10),
	datab => \U_VGA|Add9~8_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan5~17_cout\,
	cout => \U_VGA|LessThan5~19_cout\);

-- Location: LCCOMB_X44_Y36_N22
\U_VGA|LessThan5~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~21_cout\ = CARRY((\U_VGA|y_pos_p1\(11) & ((!\U_VGA|LessThan5~19_cout\) # (!\U_VGA|Add9~10_combout\))) # (!\U_VGA|y_pos_p1\(11) & (!\U_VGA|Add9~10_combout\ & !\U_VGA|LessThan5~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(11),
	datab => \U_VGA|Add9~10_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan5~19_cout\,
	cout => \U_VGA|LessThan5~21_cout\);

-- Location: LCCOMB_X44_Y36_N24
\U_VGA|LessThan5~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~23_cout\ = CARRY((\U_VGA|Add9~12_combout\ & ((!\U_VGA|LessThan5~21_cout\) # (!\U_VGA|y_pos_p1\(12)))) # (!\U_VGA|Add9~12_combout\ & (!\U_VGA|y_pos_p1\(12) & !\U_VGA|LessThan5~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add9~12_combout\,
	datab => \U_VGA|y_pos_p1\(12),
	datad => VCC,
	cin => \U_VGA|LessThan5~21_cout\,
	cout => \U_VGA|LessThan5~23_cout\);

-- Location: LCCOMB_X44_Y36_N26
\U_VGA|LessThan5~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~25_cout\ = CARRY((\U_VGA|Add9~14_combout\ & (\U_VGA|y_pos_p1\(13) & !\U_VGA|LessThan5~23_cout\)) # (!\U_VGA|Add9~14_combout\ & ((\U_VGA|y_pos_p1\(13)) # (!\U_VGA|LessThan5~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add9~14_combout\,
	datab => \U_VGA|y_pos_p1\(13),
	datad => VCC,
	cin => \U_VGA|LessThan5~23_cout\,
	cout => \U_VGA|LessThan5~25_cout\);

-- Location: LCCOMB_X44_Y36_N28
\U_VGA|LessThan5~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~27_cout\ = CARRY((\U_VGA|y_pos_p1\(14) & (\U_VGA|Add9~16_combout\ & !\U_VGA|LessThan5~25_cout\)) # (!\U_VGA|y_pos_p1\(14) & ((\U_VGA|Add9~16_combout\) # (!\U_VGA|LessThan5~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(14),
	datab => \U_VGA|Add9~16_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan5~25_cout\,
	cout => \U_VGA|LessThan5~27_cout\);

-- Location: LCCOMB_X44_Y36_N30
\U_VGA|LessThan5~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~29_cout\ = CARRY((\U_VGA|Add9~18_combout\ & (\U_VGA|y_pos_p1\(15) & !\U_VGA|LessThan5~27_cout\)) # (!\U_VGA|Add9~18_combout\ & ((\U_VGA|y_pos_p1\(15)) # (!\U_VGA|LessThan5~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add9~18_combout\,
	datab => \U_VGA|y_pos_p1\(15),
	datad => VCC,
	cin => \U_VGA|LessThan5~27_cout\,
	cout => \U_VGA|LessThan5~29_cout\);

-- Location: LCCOMB_X44_Y35_N0
\U_VGA|LessThan5~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~31_cout\ = CARRY((\U_VGA|y_pos_p1\(16) & (\U_VGA|Add9~20_combout\ & !\U_VGA|LessThan5~29_cout\)) # (!\U_VGA|y_pos_p1\(16) & ((\U_VGA|Add9~20_combout\) # (!\U_VGA|LessThan5~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(16),
	datab => \U_VGA|Add9~20_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan5~29_cout\,
	cout => \U_VGA|LessThan5~31_cout\);

-- Location: LCCOMB_X44_Y35_N2
\U_VGA|LessThan5~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~33_cout\ = CARRY((\U_VGA|Add9~22_combout\ & (\U_VGA|y_pos_p1\(17) & !\U_VGA|LessThan5~31_cout\)) # (!\U_VGA|Add9~22_combout\ & ((\U_VGA|y_pos_p1\(17)) # (!\U_VGA|LessThan5~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add9~22_combout\,
	datab => \U_VGA|y_pos_p1\(17),
	datad => VCC,
	cin => \U_VGA|LessThan5~31_cout\,
	cout => \U_VGA|LessThan5~33_cout\);

-- Location: LCCOMB_X44_Y35_N4
\U_VGA|LessThan5~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~35_cout\ = CARRY((\U_VGA|y_pos_p1\(18) & (\U_VGA|Add9~24_combout\ & !\U_VGA|LessThan5~33_cout\)) # (!\U_VGA|y_pos_p1\(18) & ((\U_VGA|Add9~24_combout\) # (!\U_VGA|LessThan5~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(18),
	datab => \U_VGA|Add9~24_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan5~33_cout\,
	cout => \U_VGA|LessThan5~35_cout\);

-- Location: LCCOMB_X44_Y35_N6
\U_VGA|LessThan5~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~37_cout\ = CARRY((\U_VGA|Add9~26_combout\ & (\U_VGA|y_pos_p1\(19) & !\U_VGA|LessThan5~35_cout\)) # (!\U_VGA|Add9~26_combout\ & ((\U_VGA|y_pos_p1\(19)) # (!\U_VGA|LessThan5~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add9~26_combout\,
	datab => \U_VGA|y_pos_p1\(19),
	datad => VCC,
	cin => \U_VGA|LessThan5~35_cout\,
	cout => \U_VGA|LessThan5~37_cout\);

-- Location: LCCOMB_X44_Y35_N8
\U_VGA|LessThan5~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~39_cout\ = CARRY((\U_VGA|y_pos_p1\(20) & (\U_VGA|Add9~28_combout\ & !\U_VGA|LessThan5~37_cout\)) # (!\U_VGA|y_pos_p1\(20) & ((\U_VGA|Add9~28_combout\) # (!\U_VGA|LessThan5~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(20),
	datab => \U_VGA|Add9~28_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan5~37_cout\,
	cout => \U_VGA|LessThan5~39_cout\);

-- Location: LCCOMB_X44_Y35_N10
\U_VGA|LessThan5~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~41_cout\ = CARRY((\U_VGA|Add9~30_combout\ & (\U_VGA|y_pos_p1\(21) & !\U_VGA|LessThan5~39_cout\)) # (!\U_VGA|Add9~30_combout\ & ((\U_VGA|y_pos_p1\(21)) # (!\U_VGA|LessThan5~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add9~30_combout\,
	datab => \U_VGA|y_pos_p1\(21),
	datad => VCC,
	cin => \U_VGA|LessThan5~39_cout\,
	cout => \U_VGA|LessThan5~41_cout\);

-- Location: LCCOMB_X44_Y35_N12
\U_VGA|LessThan5~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~43_cout\ = CARRY((\U_VGA|Add9~32_combout\ & ((!\U_VGA|LessThan5~41_cout\) # (!\U_VGA|y_pos_p1\(22)))) # (!\U_VGA|Add9~32_combout\ & (!\U_VGA|y_pos_p1\(22) & !\U_VGA|LessThan5~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add9~32_combout\,
	datab => \U_VGA|y_pos_p1\(22),
	datad => VCC,
	cin => \U_VGA|LessThan5~41_cout\,
	cout => \U_VGA|LessThan5~43_cout\);

-- Location: LCCOMB_X44_Y35_N14
\U_VGA|LessThan5~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~45_cout\ = CARRY((\U_VGA|y_pos_p1\(23) & ((!\U_VGA|LessThan5~43_cout\) # (!\U_VGA|Add9~34_combout\))) # (!\U_VGA|y_pos_p1\(23) & (!\U_VGA|Add9~34_combout\ & !\U_VGA|LessThan5~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(23),
	datab => \U_VGA|Add9~34_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan5~43_cout\,
	cout => \U_VGA|LessThan5~45_cout\);

-- Location: LCCOMB_X44_Y35_N16
\U_VGA|LessThan5~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~47_cout\ = CARRY((\U_VGA|y_pos_p1\(24) & (\U_VGA|Add9~36_combout\ & !\U_VGA|LessThan5~45_cout\)) # (!\U_VGA|y_pos_p1\(24) & ((\U_VGA|Add9~36_combout\) # (!\U_VGA|LessThan5~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(24),
	datab => \U_VGA|Add9~36_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan5~45_cout\,
	cout => \U_VGA|LessThan5~47_cout\);

-- Location: LCCOMB_X44_Y35_N18
\U_VGA|LessThan5~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~49_cout\ = CARRY((\U_VGA|Add9~38_combout\ & (\U_VGA|y_pos_p1\(25) & !\U_VGA|LessThan5~47_cout\)) # (!\U_VGA|Add9~38_combout\ & ((\U_VGA|y_pos_p1\(25)) # (!\U_VGA|LessThan5~47_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add9~38_combout\,
	datab => \U_VGA|y_pos_p1\(25),
	datad => VCC,
	cin => \U_VGA|LessThan5~47_cout\,
	cout => \U_VGA|LessThan5~49_cout\);

-- Location: LCCOMB_X44_Y35_N20
\U_VGA|LessThan5~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~51_cout\ = CARRY((\U_VGA|y_pos_p1\(26) & (\U_VGA|Add9~40_combout\ & !\U_VGA|LessThan5~49_cout\)) # (!\U_VGA|y_pos_p1\(26) & ((\U_VGA|Add9~40_combout\) # (!\U_VGA|LessThan5~49_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(26),
	datab => \U_VGA|Add9~40_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan5~49_cout\,
	cout => \U_VGA|LessThan5~51_cout\);

-- Location: LCCOMB_X44_Y35_N22
\U_VGA|LessThan5~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~53_cout\ = CARRY((\U_VGA|Add9~42_combout\ & (\U_VGA|y_pos_p1\(27) & !\U_VGA|LessThan5~51_cout\)) # (!\U_VGA|Add9~42_combout\ & ((\U_VGA|y_pos_p1\(27)) # (!\U_VGA|LessThan5~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add9~42_combout\,
	datab => \U_VGA|y_pos_p1\(27),
	datad => VCC,
	cin => \U_VGA|LessThan5~51_cout\,
	cout => \U_VGA|LessThan5~53_cout\);

-- Location: LCCOMB_X44_Y35_N24
\U_VGA|LessThan5~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~55_cout\ = CARRY((\U_VGA|Add9~44_combout\ & ((!\U_VGA|LessThan5~53_cout\) # (!\U_VGA|y_pos_p1\(28)))) # (!\U_VGA|Add9~44_combout\ & (!\U_VGA|y_pos_p1\(28) & !\U_VGA|LessThan5~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add9~44_combout\,
	datab => \U_VGA|y_pos_p1\(28),
	datad => VCC,
	cin => \U_VGA|LessThan5~53_cout\,
	cout => \U_VGA|LessThan5~55_cout\);

-- Location: LCCOMB_X44_Y35_N26
\U_VGA|LessThan5~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~57_cout\ = CARRY((\U_VGA|y_pos_p1\(29) & ((!\U_VGA|LessThan5~55_cout\) # (!\U_VGA|Add9~46_combout\))) # (!\U_VGA|y_pos_p1\(29) & (!\U_VGA|Add9~46_combout\ & !\U_VGA|LessThan5~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(29),
	datab => \U_VGA|Add9~46_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan5~55_cout\,
	cout => \U_VGA|LessThan5~57_cout\);

-- Location: LCCOMB_X44_Y35_N28
\U_VGA|LessThan5~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~59_cout\ = CARRY((\U_VGA|y_pos_p1\(30) & (\U_VGA|Add9~48_combout\ & !\U_VGA|LessThan5~57_cout\)) # (!\U_VGA|y_pos_p1\(30) & ((\U_VGA|Add9~48_combout\) # (!\U_VGA|LessThan5~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(30),
	datab => \U_VGA|Add9~48_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan5~57_cout\,
	cout => \U_VGA|LessThan5~59_cout\);

-- Location: LCCOMB_X44_Y35_N30
\U_VGA|LessThan5~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~60_combout\ = (\U_VGA|y_pos_p1\(31) & (!\U_VGA|LessThan5~59_cout\ & \U_VGA|Add9~50_combout\)) # (!\U_VGA|y_pos_p1\(31) & ((\U_VGA|Add9~50_combout\) # (!\U_VGA|LessThan5~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(31),
	datad => \U_VGA|Add9~50_combout\,
	cin => \U_VGA|LessThan5~59_cout\,
	combout => \U_VGA|LessThan5~60_combout\);

-- Location: LCCOMB_X45_Y34_N20
\U_VGA|Add11~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add11~18_combout\ = (\U_VGA|y_pos_p1\(10) & (!\U_VGA|Add11~17\)) # (!\U_VGA|y_pos_p1\(10) & ((\U_VGA|Add11~17\) # (GND)))
-- \U_VGA|Add11~19\ = CARRY((!\U_VGA|Add11~17\) # (!\U_VGA|y_pos_p1\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(10),
	datad => VCC,
	cin => \U_VGA|Add11~17\,
	combout => \U_VGA|Add11~18_combout\,
	cout => \U_VGA|Add11~19\);

-- Location: LCCOMB_X45_Y34_N22
\U_VGA|Add11~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add11~20_combout\ = (\U_VGA|y_pos_p1\(11) & (\U_VGA|Add11~19\ $ (GND))) # (!\U_VGA|y_pos_p1\(11) & (!\U_VGA|Add11~19\ & VCC))
-- \U_VGA|Add11~21\ = CARRY((\U_VGA|y_pos_p1\(11) & !\U_VGA|Add11~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(11),
	datad => VCC,
	cin => \U_VGA|Add11~19\,
	combout => \U_VGA|Add11~20_combout\,
	cout => \U_VGA|Add11~21\);

-- Location: LCCOMB_X45_Y34_N24
\U_VGA|Add11~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add11~22_combout\ = (\U_VGA|y_pos_p1\(12) & (!\U_VGA|Add11~21\)) # (!\U_VGA|y_pos_p1\(12) & ((\U_VGA|Add11~21\) # (GND)))
-- \U_VGA|Add11~23\ = CARRY((!\U_VGA|Add11~21\) # (!\U_VGA|y_pos_p1\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(12),
	datad => VCC,
	cin => \U_VGA|Add11~21\,
	combout => \U_VGA|Add11~22_combout\,
	cout => \U_VGA|Add11~23\);

-- Location: LCCOMB_X45_Y34_N26
\U_VGA|Add11~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add11~24_combout\ = (\U_VGA|y_pos_p1\(13) & (\U_VGA|Add11~23\ $ (GND))) # (!\U_VGA|y_pos_p1\(13) & (!\U_VGA|Add11~23\ & VCC))
-- \U_VGA|Add11~25\ = CARRY((\U_VGA|y_pos_p1\(13) & !\U_VGA|Add11~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(13),
	datad => VCC,
	cin => \U_VGA|Add11~23\,
	combout => \U_VGA|Add11~24_combout\,
	cout => \U_VGA|Add11~25\);

-- Location: LCCOMB_X45_Y34_N28
\U_VGA|Add11~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add11~26_combout\ = (\U_VGA|y_pos_p1\(14) & (!\U_VGA|Add11~25\)) # (!\U_VGA|y_pos_p1\(14) & ((\U_VGA|Add11~25\) # (GND)))
-- \U_VGA|Add11~27\ = CARRY((!\U_VGA|Add11~25\) # (!\U_VGA|y_pos_p1\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(14),
	datad => VCC,
	cin => \U_VGA|Add11~25\,
	combout => \U_VGA|Add11~26_combout\,
	cout => \U_VGA|Add11~27\);

-- Location: LCCOMB_X45_Y34_N30
\U_VGA|Add11~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add11~28_combout\ = (\U_VGA|y_pos_p1\(15) & (\U_VGA|Add11~27\ $ (GND))) # (!\U_VGA|y_pos_p1\(15) & (!\U_VGA|Add11~27\ & VCC))
-- \U_VGA|Add11~29\ = CARRY((\U_VGA|y_pos_p1\(15) & !\U_VGA|Add11~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(15),
	datad => VCC,
	cin => \U_VGA|Add11~27\,
	combout => \U_VGA|Add11~28_combout\,
	cout => \U_VGA|Add11~29\);

-- Location: LCCOMB_X45_Y33_N0
\U_VGA|Add11~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add11~30_combout\ = (\U_VGA|y_pos_p1\(16) & (!\U_VGA|Add11~29\)) # (!\U_VGA|y_pos_p1\(16) & ((\U_VGA|Add11~29\) # (GND)))
-- \U_VGA|Add11~31\ = CARRY((!\U_VGA|Add11~29\) # (!\U_VGA|y_pos_p1\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(16),
	datad => VCC,
	cin => \U_VGA|Add11~29\,
	combout => \U_VGA|Add11~30_combout\,
	cout => \U_VGA|Add11~31\);

-- Location: LCCOMB_X45_Y33_N2
\U_VGA|Add11~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add11~32_combout\ = (\U_VGA|y_pos_p1\(17) & (\U_VGA|Add11~31\ $ (GND))) # (!\U_VGA|y_pos_p1\(17) & (!\U_VGA|Add11~31\ & VCC))
-- \U_VGA|Add11~33\ = CARRY((\U_VGA|y_pos_p1\(17) & !\U_VGA|Add11~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(17),
	datad => VCC,
	cin => \U_VGA|Add11~31\,
	combout => \U_VGA|Add11~32_combout\,
	cout => \U_VGA|Add11~33\);

-- Location: LCCOMB_X45_Y33_N4
\U_VGA|Add11~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add11~34_combout\ = (\U_VGA|y_pos_p1\(18) & (!\U_VGA|Add11~33\)) # (!\U_VGA|y_pos_p1\(18) & ((\U_VGA|Add11~33\) # (GND)))
-- \U_VGA|Add11~35\ = CARRY((!\U_VGA|Add11~33\) # (!\U_VGA|y_pos_p1\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(18),
	datad => VCC,
	cin => \U_VGA|Add11~33\,
	combout => \U_VGA|Add11~34_combout\,
	cout => \U_VGA|Add11~35\);

-- Location: LCCOMB_X45_Y33_N6
\U_VGA|Add11~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add11~36_combout\ = (\U_VGA|y_pos_p1\(19) & (\U_VGA|Add11~35\ $ (GND))) # (!\U_VGA|y_pos_p1\(19) & (!\U_VGA|Add11~35\ & VCC))
-- \U_VGA|Add11~37\ = CARRY((\U_VGA|y_pos_p1\(19) & !\U_VGA|Add11~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(19),
	datad => VCC,
	cin => \U_VGA|Add11~35\,
	combout => \U_VGA|Add11~36_combout\,
	cout => \U_VGA|Add11~37\);

-- Location: LCCOMB_X45_Y33_N8
\U_VGA|Add11~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add11~38_combout\ = (\U_VGA|y_pos_p1\(20) & (!\U_VGA|Add11~37\)) # (!\U_VGA|y_pos_p1\(20) & ((\U_VGA|Add11~37\) # (GND)))
-- \U_VGA|Add11~39\ = CARRY((!\U_VGA|Add11~37\) # (!\U_VGA|y_pos_p1\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(20),
	datad => VCC,
	cin => \U_VGA|Add11~37\,
	combout => \U_VGA|Add11~38_combout\,
	cout => \U_VGA|Add11~39\);

-- Location: LCCOMB_X45_Y33_N10
\U_VGA|Add11~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add11~40_combout\ = (\U_VGA|y_pos_p1\(21) & (\U_VGA|Add11~39\ $ (GND))) # (!\U_VGA|y_pos_p1\(21) & (!\U_VGA|Add11~39\ & VCC))
-- \U_VGA|Add11~41\ = CARRY((\U_VGA|y_pos_p1\(21) & !\U_VGA|Add11~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(21),
	datad => VCC,
	cin => \U_VGA|Add11~39\,
	combout => \U_VGA|Add11~40_combout\,
	cout => \U_VGA|Add11~41\);

-- Location: LCCOMB_X45_Y33_N12
\U_VGA|Add11~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add11~42_combout\ = (\U_VGA|y_pos_p1\(22) & (!\U_VGA|Add11~41\)) # (!\U_VGA|y_pos_p1\(22) & ((\U_VGA|Add11~41\) # (GND)))
-- \U_VGA|Add11~43\ = CARRY((!\U_VGA|Add11~41\) # (!\U_VGA|y_pos_p1\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(22),
	datad => VCC,
	cin => \U_VGA|Add11~41\,
	combout => \U_VGA|Add11~42_combout\,
	cout => \U_VGA|Add11~43\);

-- Location: LCCOMB_X45_Y33_N14
\U_VGA|Add11~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add11~44_combout\ = (\U_VGA|y_pos_p1\(23) & (\U_VGA|Add11~43\ $ (GND))) # (!\U_VGA|y_pos_p1\(23) & (!\U_VGA|Add11~43\ & VCC))
-- \U_VGA|Add11~45\ = CARRY((\U_VGA|y_pos_p1\(23) & !\U_VGA|Add11~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(23),
	datad => VCC,
	cin => \U_VGA|Add11~43\,
	combout => \U_VGA|Add11~44_combout\,
	cout => \U_VGA|Add11~45\);

-- Location: LCCOMB_X45_Y33_N16
\U_VGA|Add11~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add11~46_combout\ = (\U_VGA|y_pos_p1\(24) & (!\U_VGA|Add11~45\)) # (!\U_VGA|y_pos_p1\(24) & ((\U_VGA|Add11~45\) # (GND)))
-- \U_VGA|Add11~47\ = CARRY((!\U_VGA|Add11~45\) # (!\U_VGA|y_pos_p1\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(24),
	datad => VCC,
	cin => \U_VGA|Add11~45\,
	combout => \U_VGA|Add11~46_combout\,
	cout => \U_VGA|Add11~47\);

-- Location: LCCOMB_X45_Y33_N18
\U_VGA|Add11~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add11~48_combout\ = (\U_VGA|y_pos_p1\(25) & (\U_VGA|Add11~47\ $ (GND))) # (!\U_VGA|y_pos_p1\(25) & (!\U_VGA|Add11~47\ & VCC))
-- \U_VGA|Add11~49\ = CARRY((\U_VGA|y_pos_p1\(25) & !\U_VGA|Add11~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(25),
	datad => VCC,
	cin => \U_VGA|Add11~47\,
	combout => \U_VGA|Add11~48_combout\,
	cout => \U_VGA|Add11~49\);

-- Location: LCCOMB_X45_Y33_N20
\U_VGA|Add11~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add11~50_combout\ = (\U_VGA|y_pos_p1\(26) & (!\U_VGA|Add11~49\)) # (!\U_VGA|y_pos_p1\(26) & ((\U_VGA|Add11~49\) # (GND)))
-- \U_VGA|Add11~51\ = CARRY((!\U_VGA|Add11~49\) # (!\U_VGA|y_pos_p1\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(26),
	datad => VCC,
	cin => \U_VGA|Add11~49\,
	combout => \U_VGA|Add11~50_combout\,
	cout => \U_VGA|Add11~51\);

-- Location: LCCOMB_X45_Y33_N22
\U_VGA|Add11~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add11~52_combout\ = (\U_VGA|y_pos_p1\(27) & (\U_VGA|Add11~51\ $ (GND))) # (!\U_VGA|y_pos_p1\(27) & (!\U_VGA|Add11~51\ & VCC))
-- \U_VGA|Add11~53\ = CARRY((\U_VGA|y_pos_p1\(27) & !\U_VGA|Add11~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(27),
	datad => VCC,
	cin => \U_VGA|Add11~51\,
	combout => \U_VGA|Add11~52_combout\,
	cout => \U_VGA|Add11~53\);

-- Location: LCCOMB_X45_Y33_N24
\U_VGA|Add11~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add11~54_combout\ = (\U_VGA|y_pos_p1\(28) & (!\U_VGA|Add11~53\)) # (!\U_VGA|y_pos_p1\(28) & ((\U_VGA|Add11~53\) # (GND)))
-- \U_VGA|Add11~55\ = CARRY((!\U_VGA|Add11~53\) # (!\U_VGA|y_pos_p1\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(28),
	datad => VCC,
	cin => \U_VGA|Add11~53\,
	combout => \U_VGA|Add11~54_combout\,
	cout => \U_VGA|Add11~55\);

-- Location: LCCOMB_X45_Y33_N26
\U_VGA|Add11~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add11~56_combout\ = (\U_VGA|y_pos_p1\(29) & (\U_VGA|Add11~55\ $ (GND))) # (!\U_VGA|y_pos_p1\(29) & (!\U_VGA|Add11~55\ & VCC))
-- \U_VGA|Add11~57\ = CARRY((\U_VGA|y_pos_p1\(29) & !\U_VGA|Add11~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(29),
	datad => VCC,
	cin => \U_VGA|Add11~55\,
	combout => \U_VGA|Add11~56_combout\,
	cout => \U_VGA|Add11~57\);

-- Location: LCCOMB_X45_Y33_N28
\U_VGA|Add11~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add11~58_combout\ = (\U_VGA|y_pos_p1\(30) & (!\U_VGA|Add11~57\)) # (!\U_VGA|y_pos_p1\(30) & ((\U_VGA|Add11~57\) # (GND)))
-- \U_VGA|Add11~59\ = CARRY((!\U_VGA|Add11~57\) # (!\U_VGA|y_pos_p1\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(30),
	datad => VCC,
	cin => \U_VGA|Add11~57\,
	combout => \U_VGA|Add11~58_combout\,
	cout => \U_VGA|Add11~59\);

-- Location: LCCOMB_X45_Y33_N30
\U_VGA|Add11~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add11~60_combout\ = \U_VGA|Add11~59\ $ (!\U_VGA|y_pos_p1\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_VGA|y_pos_p1\(31),
	cin => \U_VGA|Add11~59\,
	combout => \U_VGA|Add11~60_combout\);

-- Location: LCCOMB_X44_Y34_N2
\U_VGA|LessThan6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~1_cout\ = CARRY((!\U_VGA|Add11~0_combout\ & \U_VGA|y_pos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add11~0_combout\,
	datab => \U_VGA|y_pos\(1),
	datad => VCC,
	cout => \U_VGA|LessThan6~1_cout\);

-- Location: LCCOMB_X44_Y34_N4
\U_VGA|LessThan6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~3_cout\ = CARRY((\U_VGA|Add11~2_combout\ & ((!\U_VGA|LessThan6~1_cout\) # (!\U_VGA|y_pos\(2)))) # (!\U_VGA|Add11~2_combout\ & (!\U_VGA|y_pos\(2) & !\U_VGA|LessThan6~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add11~2_combout\,
	datab => \U_VGA|y_pos\(2),
	datad => VCC,
	cin => \U_VGA|LessThan6~1_cout\,
	cout => \U_VGA|LessThan6~3_cout\);

-- Location: LCCOMB_X44_Y34_N6
\U_VGA|LessThan6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~5_cout\ = CARRY((\U_VGA|Add11~4_combout\ & (!\U_VGA|y_pos\(3) & !\U_VGA|LessThan6~3_cout\)) # (!\U_VGA|Add11~4_combout\ & ((!\U_VGA|LessThan6~3_cout\) # (!\U_VGA|y_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add11~4_combout\,
	datab => \U_VGA|y_pos\(3),
	datad => VCC,
	cin => \U_VGA|LessThan6~3_cout\,
	cout => \U_VGA|LessThan6~5_cout\);

-- Location: LCCOMB_X44_Y34_N8
\U_VGA|LessThan6~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~7_cout\ = CARRY((\U_VGA|Add11~6_combout\ & ((!\U_VGA|LessThan6~5_cout\) # (!\U_VGA|y_pos\(4)))) # (!\U_VGA|Add11~6_combout\ & (!\U_VGA|y_pos\(4) & !\U_VGA|LessThan6~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add11~6_combout\,
	datab => \U_VGA|y_pos\(4),
	datad => VCC,
	cin => \U_VGA|LessThan6~5_cout\,
	cout => \U_VGA|LessThan6~7_cout\);

-- Location: LCCOMB_X44_Y34_N10
\U_VGA|LessThan6~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~9_cout\ = CARRY((\U_VGA|y_pos\(5) & ((!\U_VGA|LessThan6~7_cout\) # (!\U_VGA|Add11~8_combout\))) # (!\U_VGA|y_pos\(5) & (!\U_VGA|Add11~8_combout\ & !\U_VGA|LessThan6~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(5),
	datab => \U_VGA|Add11~8_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan6~7_cout\,
	cout => \U_VGA|LessThan6~9_cout\);

-- Location: LCCOMB_X44_Y34_N12
\U_VGA|LessThan6~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~11_cout\ = CARRY((\U_VGA|y_pos\(6) & ((\U_VGA|Add11~10_combout\) # (!\U_VGA|LessThan6~9_cout\))) # (!\U_VGA|y_pos\(6) & (\U_VGA|Add11~10_combout\ & !\U_VGA|LessThan6~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(6),
	datab => \U_VGA|Add11~10_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan6~9_cout\,
	cout => \U_VGA|LessThan6~11_cout\);

-- Location: LCCOMB_X44_Y34_N14
\U_VGA|LessThan6~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~13_cout\ = CARRY((\U_VGA|y_pos\(7) & (!\U_VGA|Add11~12_combout\ & !\U_VGA|LessThan6~11_cout\)) # (!\U_VGA|y_pos\(7) & ((!\U_VGA|LessThan6~11_cout\) # (!\U_VGA|Add11~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(7),
	datab => \U_VGA|Add11~12_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan6~11_cout\,
	cout => \U_VGA|LessThan6~13_cout\);

-- Location: LCCOMB_X44_Y34_N16
\U_VGA|LessThan6~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~15_cout\ = CARRY((\U_VGA|y_pos\(8) & (\U_VGA|Add11~14_combout\ & !\U_VGA|LessThan6~13_cout\)) # (!\U_VGA|y_pos\(8) & ((\U_VGA|Add11~14_combout\) # (!\U_VGA|LessThan6~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(8),
	datab => \U_VGA|Add11~14_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan6~13_cout\,
	cout => \U_VGA|LessThan6~15_cout\);

-- Location: LCCOMB_X44_Y34_N18
\U_VGA|LessThan6~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~17_cout\ = CARRY((\U_VGA|y_pos\(9) & ((!\U_VGA|LessThan6~15_cout\) # (!\U_VGA|Add11~16_combout\))) # (!\U_VGA|y_pos\(9) & (!\U_VGA|Add11~16_combout\ & !\U_VGA|LessThan6~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(9),
	datab => \U_VGA|Add11~16_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan6~15_cout\,
	cout => \U_VGA|LessThan6~17_cout\);

-- Location: LCCOMB_X44_Y34_N20
\U_VGA|LessThan6~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~19_cout\ = CARRY((\U_VGA|Add11~18_combout\ & ((!\U_VGA|LessThan6~17_cout\) # (!\U_VGA|y_pos\(10)))) # (!\U_VGA|Add11~18_combout\ & (!\U_VGA|y_pos\(10) & !\U_VGA|LessThan6~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add11~18_combout\,
	datab => \U_VGA|y_pos\(10),
	datad => VCC,
	cin => \U_VGA|LessThan6~17_cout\,
	cout => \U_VGA|LessThan6~19_cout\);

-- Location: LCCOMB_X44_Y34_N22
\U_VGA|LessThan6~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~21_cout\ = CARRY((\U_VGA|y_pos\(11) & ((!\U_VGA|LessThan6~19_cout\) # (!\U_VGA|Add11~20_combout\))) # (!\U_VGA|y_pos\(11) & (!\U_VGA|Add11~20_combout\ & !\U_VGA|LessThan6~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(11),
	datab => \U_VGA|Add11~20_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan6~19_cout\,
	cout => \U_VGA|LessThan6~21_cout\);

-- Location: LCCOMB_X44_Y34_N24
\U_VGA|LessThan6~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~23_cout\ = CARRY((\U_VGA|Add11~22_combout\ & ((!\U_VGA|LessThan6~21_cout\) # (!\U_VGA|y_pos\(12)))) # (!\U_VGA|Add11~22_combout\ & (!\U_VGA|y_pos\(12) & !\U_VGA|LessThan6~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add11~22_combout\,
	datab => \U_VGA|y_pos\(12),
	datad => VCC,
	cin => \U_VGA|LessThan6~21_cout\,
	cout => \U_VGA|LessThan6~23_cout\);

-- Location: LCCOMB_X44_Y34_N26
\U_VGA|LessThan6~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~25_cout\ = CARRY((\U_VGA|y_pos\(13) & ((!\U_VGA|LessThan6~23_cout\) # (!\U_VGA|Add11~24_combout\))) # (!\U_VGA|y_pos\(13) & (!\U_VGA|Add11~24_combout\ & !\U_VGA|LessThan6~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(13),
	datab => \U_VGA|Add11~24_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan6~23_cout\,
	cout => \U_VGA|LessThan6~25_cout\);

-- Location: LCCOMB_X44_Y34_N28
\U_VGA|LessThan6~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~27_cout\ = CARRY((\U_VGA|y_pos\(14) & (\U_VGA|Add11~26_combout\ & !\U_VGA|LessThan6~25_cout\)) # (!\U_VGA|y_pos\(14) & ((\U_VGA|Add11~26_combout\) # (!\U_VGA|LessThan6~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(14),
	datab => \U_VGA|Add11~26_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan6~25_cout\,
	cout => \U_VGA|LessThan6~27_cout\);

-- Location: LCCOMB_X44_Y34_N30
\U_VGA|LessThan6~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~29_cout\ = CARRY((\U_VGA|Add11~28_combout\ & (\U_VGA|y_pos\(15) & !\U_VGA|LessThan6~27_cout\)) # (!\U_VGA|Add11~28_combout\ & ((\U_VGA|y_pos\(15)) # (!\U_VGA|LessThan6~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add11~28_combout\,
	datab => \U_VGA|y_pos\(15),
	datad => VCC,
	cin => \U_VGA|LessThan6~27_cout\,
	cout => \U_VGA|LessThan6~29_cout\);

-- Location: LCCOMB_X44_Y33_N0
\U_VGA|LessThan6~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~31_cout\ = CARRY((\U_VGA|y_pos\(16) & (\U_VGA|Add11~30_combout\ & !\U_VGA|LessThan6~29_cout\)) # (!\U_VGA|y_pos\(16) & ((\U_VGA|Add11~30_combout\) # (!\U_VGA|LessThan6~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(16),
	datab => \U_VGA|Add11~30_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan6~29_cout\,
	cout => \U_VGA|LessThan6~31_cout\);

-- Location: LCCOMB_X44_Y33_N2
\U_VGA|LessThan6~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~33_cout\ = CARRY((\U_VGA|Add11~32_combout\ & (\U_VGA|y_pos\(17) & !\U_VGA|LessThan6~31_cout\)) # (!\U_VGA|Add11~32_combout\ & ((\U_VGA|y_pos\(17)) # (!\U_VGA|LessThan6~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add11~32_combout\,
	datab => \U_VGA|y_pos\(17),
	datad => VCC,
	cin => \U_VGA|LessThan6~31_cout\,
	cout => \U_VGA|LessThan6~33_cout\);

-- Location: LCCOMB_X44_Y33_N4
\U_VGA|LessThan6~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~35_cout\ = CARRY((\U_VGA|Add11~34_combout\ & ((!\U_VGA|LessThan6~33_cout\) # (!\U_VGA|y_pos\(18)))) # (!\U_VGA|Add11~34_combout\ & (!\U_VGA|y_pos\(18) & !\U_VGA|LessThan6~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add11~34_combout\,
	datab => \U_VGA|y_pos\(18),
	datad => VCC,
	cin => \U_VGA|LessThan6~33_cout\,
	cout => \U_VGA|LessThan6~35_cout\);

-- Location: LCCOMB_X44_Y33_N6
\U_VGA|LessThan6~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~37_cout\ = CARRY((\U_VGA|Add11~36_combout\ & (\U_VGA|y_pos\(19) & !\U_VGA|LessThan6~35_cout\)) # (!\U_VGA|Add11~36_combout\ & ((\U_VGA|y_pos\(19)) # (!\U_VGA|LessThan6~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add11~36_combout\,
	datab => \U_VGA|y_pos\(19),
	datad => VCC,
	cin => \U_VGA|LessThan6~35_cout\,
	cout => \U_VGA|LessThan6~37_cout\);

-- Location: LCCOMB_X44_Y33_N8
\U_VGA|LessThan6~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~39_cout\ = CARRY((\U_VGA|y_pos\(20) & (\U_VGA|Add11~38_combout\ & !\U_VGA|LessThan6~37_cout\)) # (!\U_VGA|y_pos\(20) & ((\U_VGA|Add11~38_combout\) # (!\U_VGA|LessThan6~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(20),
	datab => \U_VGA|Add11~38_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan6~37_cout\,
	cout => \U_VGA|LessThan6~39_cout\);

-- Location: LCCOMB_X44_Y33_N10
\U_VGA|LessThan6~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~41_cout\ = CARRY((\U_VGA|y_pos\(21) & ((!\U_VGA|LessThan6~39_cout\) # (!\U_VGA|Add11~40_combout\))) # (!\U_VGA|y_pos\(21) & (!\U_VGA|Add11~40_combout\ & !\U_VGA|LessThan6~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(21),
	datab => \U_VGA|Add11~40_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan6~39_cout\,
	cout => \U_VGA|LessThan6~41_cout\);

-- Location: LCCOMB_X44_Y33_N12
\U_VGA|LessThan6~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~43_cout\ = CARRY((\U_VGA|y_pos\(22) & (\U_VGA|Add11~42_combout\ & !\U_VGA|LessThan6~41_cout\)) # (!\U_VGA|y_pos\(22) & ((\U_VGA|Add11~42_combout\) # (!\U_VGA|LessThan6~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(22),
	datab => \U_VGA|Add11~42_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan6~41_cout\,
	cout => \U_VGA|LessThan6~43_cout\);

-- Location: LCCOMB_X44_Y33_N14
\U_VGA|LessThan6~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~45_cout\ = CARRY((\U_VGA|y_pos\(23) & ((!\U_VGA|LessThan6~43_cout\) # (!\U_VGA|Add11~44_combout\))) # (!\U_VGA|y_pos\(23) & (!\U_VGA|Add11~44_combout\ & !\U_VGA|LessThan6~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(23),
	datab => \U_VGA|Add11~44_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan6~43_cout\,
	cout => \U_VGA|LessThan6~45_cout\);

-- Location: LCCOMB_X44_Y33_N16
\U_VGA|LessThan6~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~47_cout\ = CARRY((\U_VGA|y_pos\(24) & (\U_VGA|Add11~46_combout\ & !\U_VGA|LessThan6~45_cout\)) # (!\U_VGA|y_pos\(24) & ((\U_VGA|Add11~46_combout\) # (!\U_VGA|LessThan6~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(24),
	datab => \U_VGA|Add11~46_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan6~45_cout\,
	cout => \U_VGA|LessThan6~47_cout\);

-- Location: LCCOMB_X44_Y33_N18
\U_VGA|LessThan6~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~49_cout\ = CARRY((\U_VGA|y_pos\(25) & ((!\U_VGA|LessThan6~47_cout\) # (!\U_VGA|Add11~48_combout\))) # (!\U_VGA|y_pos\(25) & (!\U_VGA|Add11~48_combout\ & !\U_VGA|LessThan6~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(25),
	datab => \U_VGA|Add11~48_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan6~47_cout\,
	cout => \U_VGA|LessThan6~49_cout\);

-- Location: LCCOMB_X44_Y33_N20
\U_VGA|LessThan6~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~51_cout\ = CARRY((\U_VGA|Add11~50_combout\ & ((!\U_VGA|LessThan6~49_cout\) # (!\U_VGA|y_pos\(26)))) # (!\U_VGA|Add11~50_combout\ & (!\U_VGA|y_pos\(26) & !\U_VGA|LessThan6~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add11~50_combout\,
	datab => \U_VGA|y_pos\(26),
	datad => VCC,
	cin => \U_VGA|LessThan6~49_cout\,
	cout => \U_VGA|LessThan6~51_cout\);

-- Location: LCCOMB_X44_Y33_N22
\U_VGA|LessThan6~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~53_cout\ = CARRY((\U_VGA|y_pos\(27) & ((!\U_VGA|LessThan6~51_cout\) # (!\U_VGA|Add11~52_combout\))) # (!\U_VGA|y_pos\(27) & (!\U_VGA|Add11~52_combout\ & !\U_VGA|LessThan6~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(27),
	datab => \U_VGA|Add11~52_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan6~51_cout\,
	cout => \U_VGA|LessThan6~53_cout\);

-- Location: LCCOMB_X44_Y33_N24
\U_VGA|LessThan6~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~55_cout\ = CARRY((\U_VGA|Add11~54_combout\ & ((!\U_VGA|LessThan6~53_cout\) # (!\U_VGA|y_pos\(28)))) # (!\U_VGA|Add11~54_combout\ & (!\U_VGA|y_pos\(28) & !\U_VGA|LessThan6~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add11~54_combout\,
	datab => \U_VGA|y_pos\(28),
	datad => VCC,
	cin => \U_VGA|LessThan6~53_cout\,
	cout => \U_VGA|LessThan6~55_cout\);

-- Location: LCCOMB_X44_Y33_N26
\U_VGA|LessThan6~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~57_cout\ = CARRY((\U_VGA|y_pos\(29) & ((!\U_VGA|LessThan6~55_cout\) # (!\U_VGA|Add11~56_combout\))) # (!\U_VGA|y_pos\(29) & (!\U_VGA|Add11~56_combout\ & !\U_VGA|LessThan6~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(29),
	datab => \U_VGA|Add11~56_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan6~55_cout\,
	cout => \U_VGA|LessThan6~57_cout\);

-- Location: LCCOMB_X44_Y33_N28
\U_VGA|LessThan6~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~59_cout\ = CARRY((\U_VGA|y_pos\(30) & (\U_VGA|Add11~58_combout\ & !\U_VGA|LessThan6~57_cout\)) # (!\U_VGA|y_pos\(30) & ((\U_VGA|Add11~58_combout\) # (!\U_VGA|LessThan6~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(30),
	datab => \U_VGA|Add11~58_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan6~57_cout\,
	cout => \U_VGA|LessThan6~59_cout\);

-- Location: LCCOMB_X44_Y33_N30
\U_VGA|LessThan6~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~60_combout\ = (\U_VGA|Add11~60_combout\ & ((!\U_VGA|y_pos\(31)) # (!\U_VGA|LessThan6~59_cout\))) # (!\U_VGA|Add11~60_combout\ & (!\U_VGA|LessThan6~59_cout\ & !\U_VGA|y_pos\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add11~60_combout\,
	datad => \U_VGA|y_pos\(31),
	cin => \U_VGA|LessThan6~59_cout\,
	combout => \U_VGA|LessThan6~60_combout\);

-- Location: LCCOMB_X43_Y35_N2
\U_VGA|mov_x~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~75_combout\ = (\U_VGA|mov_x~74_combout\ & (!\U_VGA|LessThan5~60_combout\ & !\U_VGA|LessThan6~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|mov_x~74_combout\,
	datac => \U_VGA|LessThan5~60_combout\,
	datad => \U_VGA|LessThan6~60_combout\,
	combout => \U_VGA|mov_x~75_combout\);

-- Location: LCCOMB_X41_Y35_N0
\U_VGA|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add1~0_combout\ = \U_VGA|mov_x\(0) $ (((\U_VGA|ball_move~2_combout\) # ((!\U_VGA|mov_x~75_combout\ & !\U_VGA|mov_x~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x\(0),
	datab => \U_VGA|ball_move~2_combout\,
	datac => \U_VGA|mov_x~75_combout\,
	datad => \U_VGA|mov_x~73_combout\,
	combout => \U_VGA|Add1~0_combout\);

-- Location: LCCOMB_X41_Y35_N4
\U_VGA|Add1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add1~3_combout\ = (\U_VGA|Add1~2\ & (\U_VGA|mov_x~76_combout\ $ ((!\U_VGA|mov_x\(1))))) # (!\U_VGA|Add1~2\ & ((\U_VGA|mov_x~76_combout\ $ (\U_VGA|mov_x\(1))) # (GND)))
-- \U_VGA|Add1~4\ = CARRY((\U_VGA|mov_x~76_combout\ $ (!\U_VGA|mov_x\(1))) # (!\U_VGA|Add1~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x~76_combout\,
	datab => \U_VGA|mov_x\(1),
	datad => VCC,
	cin => \U_VGA|Add1~2\,
	combout => \U_VGA|Add1~3_combout\,
	cout => \U_VGA|Add1~4\);

-- Location: LCCOMB_X38_Y36_N30
\U_VGA|mov_x~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~84_combout\ = (\U_VGA|Add1~3_combout\ & (\button_n[0]~input_o\ & \U_VGA|ball_move~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add1~3_combout\,
	datab => \button_n[0]~input_o\,
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|mov_x~84_combout\);

-- Location: FF_X38_Y36_N31
\U_VGA|mov_x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_x~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_x\(1));

-- Location: LCCOMB_X41_Y35_N6
\U_VGA|Add1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add1~5_combout\ = (\U_VGA|Add1~4\ & ((\U_VGA|mov_x~76_combout\ $ (\U_VGA|mov_x\(2))))) # (!\U_VGA|Add1~4\ & (\U_VGA|mov_x~76_combout\ $ (\U_VGA|mov_x\(2) $ (VCC))))
-- \U_VGA|Add1~6\ = CARRY((!\U_VGA|Add1~4\ & (\U_VGA|mov_x~76_combout\ $ (\U_VGA|mov_x\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x~76_combout\,
	datab => \U_VGA|mov_x\(2),
	datad => VCC,
	cin => \U_VGA|Add1~4\,
	combout => \U_VGA|Add1~5_combout\,
	cout => \U_VGA|Add1~6\);

-- Location: LCCOMB_X42_Y35_N16
\U_VGA|mov_x~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~83_combout\ = (\U_VGA|ball_move~1_combout\ & (\button_n[0]~input_o\ & \U_VGA|Add1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~1_combout\,
	datab => \button_n[0]~input_o\,
	datad => \U_VGA|Add1~5_combout\,
	combout => \U_VGA|mov_x~83_combout\);

-- Location: FF_X42_Y35_N17
\U_VGA|mov_x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_x~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_x\(2));

-- Location: LCCOMB_X41_Y35_N8
\U_VGA|Add1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add1~7_combout\ = (\U_VGA|Add1~6\ & (\U_VGA|mov_x~76_combout\ $ ((!\U_VGA|mov_x\(3))))) # (!\U_VGA|Add1~6\ & ((\U_VGA|mov_x~76_combout\ $ (\U_VGA|mov_x\(3))) # (GND)))
-- \U_VGA|Add1~8\ = CARRY((\U_VGA|mov_x~76_combout\ $ (!\U_VGA|mov_x\(3))) # (!\U_VGA|Add1~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x~76_combout\,
	datab => \U_VGA|mov_x\(3),
	datad => VCC,
	cin => \U_VGA|Add1~6\,
	combout => \U_VGA|Add1~7_combout\,
	cout => \U_VGA|Add1~8\);

-- Location: LCCOMB_X42_Y35_N14
\U_VGA|mov_x~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~82_combout\ = (\U_VGA|Add1~7_combout\ & (\button_n[0]~input_o\ & \U_VGA|ball_move~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add1~7_combout\,
	datab => \button_n[0]~input_o\,
	datac => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|mov_x~82_combout\);

-- Location: FF_X42_Y35_N15
\U_VGA|mov_x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_x~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_x\(3));

-- Location: LCCOMB_X41_Y35_N10
\U_VGA|Add1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add1~9_combout\ = (\U_VGA|Add1~8\ & ((\U_VGA|mov_x~76_combout\ $ (\U_VGA|mov_x\(4))))) # (!\U_VGA|Add1~8\ & (\U_VGA|mov_x~76_combout\ $ (\U_VGA|mov_x\(4) $ (VCC))))
-- \U_VGA|Add1~10\ = CARRY((!\U_VGA|Add1~8\ & (\U_VGA|mov_x~76_combout\ $ (\U_VGA|mov_x\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x~76_combout\,
	datab => \U_VGA|mov_x\(4),
	datad => VCC,
	cin => \U_VGA|Add1~8\,
	combout => \U_VGA|Add1~9_combout\,
	cout => \U_VGA|Add1~10\);

-- Location: LCCOMB_X42_Y35_N24
\U_VGA|mov_x~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~81_combout\ = (\U_VGA|Add1~9_combout\ & (\button_n[0]~input_o\ & \U_VGA|ball_move~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add1~9_combout\,
	datab => \button_n[0]~input_o\,
	datac => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|mov_x~81_combout\);

-- Location: FF_X42_Y35_N25
\U_VGA|mov_x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_x~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_x\(4));

-- Location: LCCOMB_X41_Y35_N12
\U_VGA|Add1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add1~11_combout\ = (\U_VGA|Add1~10\ & (\U_VGA|mov_x~76_combout\ $ ((!\U_VGA|mov_x\(5))))) # (!\U_VGA|Add1~10\ & ((\U_VGA|mov_x~76_combout\ $ (\U_VGA|mov_x\(5))) # (GND)))
-- \U_VGA|Add1~12\ = CARRY((\U_VGA|mov_x~76_combout\ $ (!\U_VGA|mov_x\(5))) # (!\U_VGA|Add1~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x~76_combout\,
	datab => \U_VGA|mov_x\(5),
	datad => VCC,
	cin => \U_VGA|Add1~10\,
	combout => \U_VGA|Add1~11_combout\,
	cout => \U_VGA|Add1~12\);

-- Location: LCCOMB_X42_Y35_N22
\U_VGA|mov_x~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~80_combout\ = (\U_VGA|Add1~11_combout\ & (\button_n[0]~input_o\ & \U_VGA|ball_move~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add1~11_combout\,
	datab => \button_n[0]~input_o\,
	datac => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|mov_x~80_combout\);

-- Location: FF_X42_Y35_N23
\U_VGA|mov_x[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_x~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_x\(5));

-- Location: LCCOMB_X41_Y35_N14
\U_VGA|Add1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add1~13_combout\ = (\U_VGA|Add1~12\ & ((\U_VGA|mov_x~76_combout\ $ (\U_VGA|mov_x\(6))))) # (!\U_VGA|Add1~12\ & (\U_VGA|mov_x~76_combout\ $ (\U_VGA|mov_x\(6) $ (VCC))))
-- \U_VGA|Add1~14\ = CARRY((!\U_VGA|Add1~12\ & (\U_VGA|mov_x~76_combout\ $ (\U_VGA|mov_x\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x~76_combout\,
	datab => \U_VGA|mov_x\(6),
	datad => VCC,
	cin => \U_VGA|Add1~12\,
	combout => \U_VGA|Add1~13_combout\,
	cout => \U_VGA|Add1~14\);

-- Location: LCCOMB_X40_Y33_N12
\U_VGA|mov_x~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~79_combout\ = (\U_VGA|ball_move~1_combout\ & (\button_n[0]~input_o\ & \U_VGA|Add1~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|ball_move~1_combout\,
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add1~13_combout\,
	combout => \U_VGA|mov_x~79_combout\);

-- Location: FF_X40_Y33_N13
\U_VGA|mov_x[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_x~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_x\(6));

-- Location: LCCOMB_X35_Y35_N24
\U_VGA|mov_x~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~78_combout\ = (\button_n[0]~input_o\ & (\U_VGA|Add1~15_combout\ & \U_VGA|ball_move~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datac => \U_VGA|Add1~15_combout\,
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|mov_x~78_combout\);

-- Location: FF_X35_Y35_N25
\U_VGA|mov_x[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_x~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_x\(7));

-- Location: LCCOMB_X40_Y35_N10
\U_VGA|temp_mov_x~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_x~1_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add1~15_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_x\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~1_combout\,
	datac => \U_VGA|mov_x\(7),
	datad => \U_VGA|Add1~15_combout\,
	combout => \U_VGA|temp_mov_x~1_combout\);

-- Location: LCCOMB_X38_Y34_N0
\U_VGA|Add2~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~19_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datac => \U_VGA|Add2~14_combout\,
	combout => \U_VGA|Add2~19_combout\);

-- Location: FF_X38_Y34_N1
\U_VGA|x_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(8));

-- Location: LCCOMB_X36_Y35_N6
\U_VGA|Add8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add8~0_combout\ = \U_VGA|x_pos\(6) $ (GND)
-- \U_VGA|Add8~1\ = CARRY(!\U_VGA|x_pos\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|x_pos\(6),
	datad => VCC,
	combout => \U_VGA|Add8~0_combout\,
	cout => \U_VGA|Add8~1\);

-- Location: LCCOMB_X36_Y35_N8
\U_VGA|Add8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add8~2_combout\ = (\U_VGA|x_pos\(7) & ((\U_VGA|Add8~1\) # (GND))) # (!\U_VGA|x_pos\(7) & (!\U_VGA|Add8~1\))
-- \U_VGA|Add8~3\ = CARRY((\U_VGA|x_pos\(7)) # (!\U_VGA|Add8~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|x_pos\(7),
	datad => VCC,
	cin => \U_VGA|Add8~1\,
	combout => \U_VGA|Add8~2_combout\,
	cout => \U_VGA|Add8~3\);

-- Location: LCCOMB_X36_Y35_N10
\U_VGA|Add8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add8~4_combout\ = (\U_VGA|x_pos\(8) & (\U_VGA|Add8~3\ $ (GND))) # (!\U_VGA|x_pos\(8) & (!\U_VGA|Add8~3\ & VCC))
-- \U_VGA|Add8~5\ = CARRY((\U_VGA|x_pos\(8) & !\U_VGA|Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(8),
	datad => VCC,
	cin => \U_VGA|Add8~3\,
	combout => \U_VGA|Add8~4_combout\,
	cout => \U_VGA|Add8~5\);

-- Location: LCCOMB_X36_Y35_N12
\U_VGA|Add8~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add8~6_combout\ = (\U_VGA|x_pos\(9) & (!\U_VGA|Add8~5\)) # (!\U_VGA|x_pos\(9) & ((\U_VGA|Add8~5\) # (GND)))
-- \U_VGA|Add8~7\ = CARRY((!\U_VGA|Add8~5\) # (!\U_VGA|x_pos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(9),
	datad => VCC,
	cin => \U_VGA|Add8~5\,
	combout => \U_VGA|Add8~6_combout\,
	cout => \U_VGA|Add8~7\);

-- Location: LCCOMB_X37_Y35_N2
\U_VGA|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan0~1_combout\ = (\U_VGA|x_pos\(4) & (\U_VGA|x_pos\(5) & \U_VGA|Add8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(4),
	datab => \U_VGA|x_pos\(5),
	datad => \U_VGA|Add8~0_combout\,
	combout => \U_VGA|LessThan0~1_combout\);

-- Location: LCCOMB_X37_Y35_N20
\U_VGA|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan0~0_combout\ = (!\U_VGA|Add8~2_combout\ & !\U_VGA|Add8~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|Add8~2_combout\,
	datad => \U_VGA|Add8~4_combout\,
	combout => \U_VGA|LessThan0~0_combout\);

-- Location: LCCOMB_X37_Y35_N4
\U_VGA|mov_x~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~71_combout\ = ((\U_VGA|LessThan0~1_combout\ & ((\U_VGA|x_pos\(2)) # (!\U_VGA|x_pos\(3))))) # (!\U_VGA|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(3),
	datab => \U_VGA|LessThan0~1_combout\,
	datac => \U_VGA|x_pos\(2),
	datad => \U_VGA|LessThan0~0_combout\,
	combout => \U_VGA|mov_x~71_combout\);

-- Location: LCCOMB_X36_Y35_N14
\U_VGA|Add8~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add8~8_combout\ = (\U_VGA|x_pos\(10) & (\U_VGA|Add8~7\ $ (GND))) # (!\U_VGA|x_pos\(10) & (!\U_VGA|Add8~7\ & VCC))
-- \U_VGA|Add8~9\ = CARRY((\U_VGA|x_pos\(10) & !\U_VGA|Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(10),
	datad => VCC,
	cin => \U_VGA|Add8~7\,
	combout => \U_VGA|Add8~8_combout\,
	cout => \U_VGA|Add8~9\);

-- Location: LCCOMB_X36_Y35_N16
\U_VGA|Add8~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add8~10_combout\ = (\U_VGA|x_pos\(11) & (!\U_VGA|Add8~9\)) # (!\U_VGA|x_pos\(11) & ((\U_VGA|Add8~9\) # (GND)))
-- \U_VGA|Add8~11\ = CARRY((!\U_VGA|Add8~9\) # (!\U_VGA|x_pos\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|x_pos\(11),
	datad => VCC,
	cin => \U_VGA|Add8~9\,
	combout => \U_VGA|Add8~10_combout\,
	cout => \U_VGA|Add8~11\);

-- Location: LCCOMB_X36_Y35_N18
\U_VGA|Add8~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add8~12_combout\ = (\U_VGA|x_pos\(12) & (\U_VGA|Add8~11\ $ (GND))) # (!\U_VGA|x_pos\(12) & (!\U_VGA|Add8~11\ & VCC))
-- \U_VGA|Add8~13\ = CARRY((\U_VGA|x_pos\(12) & !\U_VGA|Add8~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|x_pos\(12),
	datad => VCC,
	cin => \U_VGA|Add8~11\,
	combout => \U_VGA|Add8~12_combout\,
	cout => \U_VGA|Add8~13\);

-- Location: LCCOMB_X36_Y35_N20
\U_VGA|Add8~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add8~14_combout\ = (\U_VGA|x_pos\(13) & (!\U_VGA|Add8~13\)) # (!\U_VGA|x_pos\(13) & ((\U_VGA|Add8~13\) # (GND)))
-- \U_VGA|Add8~15\ = CARRY((!\U_VGA|Add8~13\) # (!\U_VGA|x_pos\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|x_pos\(13),
	datad => VCC,
	cin => \U_VGA|Add8~13\,
	combout => \U_VGA|Add8~14_combout\,
	cout => \U_VGA|Add8~15\);

-- Location: LCCOMB_X36_Y35_N22
\U_VGA|Add8~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add8~16_combout\ = (\U_VGA|x_pos\(14) & (\U_VGA|Add8~15\ $ (GND))) # (!\U_VGA|x_pos\(14) & (!\U_VGA|Add8~15\ & VCC))
-- \U_VGA|Add8~17\ = CARRY((\U_VGA|x_pos\(14) & !\U_VGA|Add8~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(14),
	datad => VCC,
	cin => \U_VGA|Add8~15\,
	combout => \U_VGA|Add8~16_combout\,
	cout => \U_VGA|Add8~17\);

-- Location: LCCOMB_X36_Y35_N24
\U_VGA|Add8~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add8~18_combout\ = (\U_VGA|x_pos\(15) & (!\U_VGA|Add8~17\)) # (!\U_VGA|x_pos\(15) & ((\U_VGA|Add8~17\) # (GND)))
-- \U_VGA|Add8~19\ = CARRY((!\U_VGA|Add8~17\) # (!\U_VGA|x_pos\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(15),
	datad => VCC,
	cin => \U_VGA|Add8~17\,
	combout => \U_VGA|Add8~18_combout\,
	cout => \U_VGA|Add8~19\);

-- Location: LCCOMB_X36_Y35_N26
\U_VGA|Add8~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add8~20_combout\ = (\U_VGA|x_pos\(16) & (\U_VGA|Add8~19\ $ (GND))) # (!\U_VGA|x_pos\(16) & (!\U_VGA|Add8~19\ & VCC))
-- \U_VGA|Add8~21\ = CARRY((\U_VGA|x_pos\(16) & !\U_VGA|Add8~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(16),
	datad => VCC,
	cin => \U_VGA|Add8~19\,
	combout => \U_VGA|Add8~20_combout\,
	cout => \U_VGA|Add8~21\);

-- Location: LCCOMB_X36_Y35_N28
\U_VGA|Add8~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add8~22_combout\ = (\U_VGA|x_pos\(17) & (!\U_VGA|Add8~21\)) # (!\U_VGA|x_pos\(17) & ((\U_VGA|Add8~21\) # (GND)))
-- \U_VGA|Add8~23\ = CARRY((!\U_VGA|Add8~21\) # (!\U_VGA|x_pos\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(17),
	datad => VCC,
	cin => \U_VGA|Add8~21\,
	combout => \U_VGA|Add8~22_combout\,
	cout => \U_VGA|Add8~23\);

-- Location: LCCOMB_X36_Y35_N30
\U_VGA|Add8~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add8~24_combout\ = (\U_VGA|x_pos\(18) & (\U_VGA|Add8~23\ $ (GND))) # (!\U_VGA|x_pos\(18) & (!\U_VGA|Add8~23\ & VCC))
-- \U_VGA|Add8~25\ = CARRY((\U_VGA|x_pos\(18) & !\U_VGA|Add8~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(18),
	datad => VCC,
	cin => \U_VGA|Add8~23\,
	combout => \U_VGA|Add8~24_combout\,
	cout => \U_VGA|Add8~25\);

-- Location: LCCOMB_X36_Y34_N0
\U_VGA|Add8~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add8~26_combout\ = (\U_VGA|x_pos\(19) & (!\U_VGA|Add8~25\)) # (!\U_VGA|x_pos\(19) & ((\U_VGA|Add8~25\) # (GND)))
-- \U_VGA|Add8~27\ = CARRY((!\U_VGA|Add8~25\) # (!\U_VGA|x_pos\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|x_pos\(19),
	datad => VCC,
	cin => \U_VGA|Add8~25\,
	combout => \U_VGA|Add8~26_combout\,
	cout => \U_VGA|Add8~27\);

-- Location: LCCOMB_X36_Y34_N2
\U_VGA|Add8~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add8~28_combout\ = (\U_VGA|x_pos\(20) & (\U_VGA|Add8~27\ $ (GND))) # (!\U_VGA|x_pos\(20) & (!\U_VGA|Add8~27\ & VCC))
-- \U_VGA|Add8~29\ = CARRY((\U_VGA|x_pos\(20) & !\U_VGA|Add8~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|x_pos\(20),
	datad => VCC,
	cin => \U_VGA|Add8~27\,
	combout => \U_VGA|Add8~28_combout\,
	cout => \U_VGA|Add8~29\);

-- Location: LCCOMB_X36_Y34_N4
\U_VGA|Add8~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add8~30_combout\ = (\U_VGA|x_pos\(21) & (!\U_VGA|Add8~29\)) # (!\U_VGA|x_pos\(21) & ((\U_VGA|Add8~29\) # (GND)))
-- \U_VGA|Add8~31\ = CARRY((!\U_VGA|Add8~29\) # (!\U_VGA|x_pos\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(21),
	datad => VCC,
	cin => \U_VGA|Add8~29\,
	combout => \U_VGA|Add8~30_combout\,
	cout => \U_VGA|Add8~31\);

-- Location: LCCOMB_X36_Y34_N6
\U_VGA|Add8~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add8~32_combout\ = (\U_VGA|x_pos\(22) & (\U_VGA|Add8~31\ $ (GND))) # (!\U_VGA|x_pos\(22) & (!\U_VGA|Add8~31\ & VCC))
-- \U_VGA|Add8~33\ = CARRY((\U_VGA|x_pos\(22) & !\U_VGA|Add8~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(22),
	datad => VCC,
	cin => \U_VGA|Add8~31\,
	combout => \U_VGA|Add8~32_combout\,
	cout => \U_VGA|Add8~33\);

-- Location: LCCOMB_X36_Y34_N8
\U_VGA|Add8~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add8~34_combout\ = (\U_VGA|x_pos\(23) & (!\U_VGA|Add8~33\)) # (!\U_VGA|x_pos\(23) & ((\U_VGA|Add8~33\) # (GND)))
-- \U_VGA|Add8~35\ = CARRY((!\U_VGA|Add8~33\) # (!\U_VGA|x_pos\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(23),
	datad => VCC,
	cin => \U_VGA|Add8~33\,
	combout => \U_VGA|Add8~34_combout\,
	cout => \U_VGA|Add8~35\);

-- Location: LCCOMB_X36_Y34_N10
\U_VGA|Add8~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add8~36_combout\ = (\U_VGA|x_pos\(24) & (\U_VGA|Add8~35\ $ (GND))) # (!\U_VGA|x_pos\(24) & (!\U_VGA|Add8~35\ & VCC))
-- \U_VGA|Add8~37\ = CARRY((\U_VGA|x_pos\(24) & !\U_VGA|Add8~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(24),
	datad => VCC,
	cin => \U_VGA|Add8~35\,
	combout => \U_VGA|Add8~36_combout\,
	cout => \U_VGA|Add8~37\);

-- Location: LCCOMB_X36_Y34_N12
\U_VGA|Add8~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add8~38_combout\ = (\U_VGA|x_pos\(25) & (!\U_VGA|Add8~37\)) # (!\U_VGA|x_pos\(25) & ((\U_VGA|Add8~37\) # (GND)))
-- \U_VGA|Add8~39\ = CARRY((!\U_VGA|Add8~37\) # (!\U_VGA|x_pos\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(25),
	datad => VCC,
	cin => \U_VGA|Add8~37\,
	combout => \U_VGA|Add8~38_combout\,
	cout => \U_VGA|Add8~39\);

-- Location: LCCOMB_X36_Y34_N14
\U_VGA|Add8~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add8~40_combout\ = (\U_VGA|x_pos\(26) & (\U_VGA|Add8~39\ $ (GND))) # (!\U_VGA|x_pos\(26) & (!\U_VGA|Add8~39\ & VCC))
-- \U_VGA|Add8~41\ = CARRY((\U_VGA|x_pos\(26) & !\U_VGA|Add8~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|x_pos\(26),
	datad => VCC,
	cin => \U_VGA|Add8~39\,
	combout => \U_VGA|Add8~40_combout\,
	cout => \U_VGA|Add8~41\);

-- Location: LCCOMB_X36_Y34_N16
\U_VGA|Add8~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add8~42_combout\ = (\U_VGA|x_pos\(27) & (!\U_VGA|Add8~41\)) # (!\U_VGA|x_pos\(27) & ((\U_VGA|Add8~41\) # (GND)))
-- \U_VGA|Add8~43\ = CARRY((!\U_VGA|Add8~41\) # (!\U_VGA|x_pos\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(27),
	datad => VCC,
	cin => \U_VGA|Add8~41\,
	combout => \U_VGA|Add8~42_combout\,
	cout => \U_VGA|Add8~43\);

-- Location: LCCOMB_X36_Y34_N18
\U_VGA|Add8~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add8~44_combout\ = (\U_VGA|x_pos\(28) & (\U_VGA|Add8~43\ $ (GND))) # (!\U_VGA|x_pos\(28) & (!\U_VGA|Add8~43\ & VCC))
-- \U_VGA|Add8~45\ = CARRY((\U_VGA|x_pos\(28) & !\U_VGA|Add8~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(28),
	datad => VCC,
	cin => \U_VGA|Add8~43\,
	combout => \U_VGA|Add8~44_combout\,
	cout => \U_VGA|Add8~45\);

-- Location: LCCOMB_X36_Y34_N20
\U_VGA|Add8~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add8~46_combout\ = (\U_VGA|x_pos\(29) & (!\U_VGA|Add8~45\)) # (!\U_VGA|x_pos\(29) & ((\U_VGA|Add8~45\) # (GND)))
-- \U_VGA|Add8~47\ = CARRY((!\U_VGA|Add8~45\) # (!\U_VGA|x_pos\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|x_pos\(29),
	datad => VCC,
	cin => \U_VGA|Add8~45\,
	combout => \U_VGA|Add8~46_combout\,
	cout => \U_VGA|Add8~47\);

-- Location: LCCOMB_X36_Y34_N26
\U_VGA|LessThan7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan7~5_combout\ = (!\U_VGA|Add8~46_combout\ & (!\U_VGA|Add8~44_combout\ & (!\U_VGA|Add8~40_combout\ & !\U_VGA|Add8~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add8~46_combout\,
	datab => \U_VGA|Add8~44_combout\,
	datac => \U_VGA|Add8~40_combout\,
	datad => \U_VGA|Add8~42_combout\,
	combout => \U_VGA|LessThan7~5_combout\);

-- Location: LCCOMB_X36_Y34_N22
\U_VGA|Add8~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add8~48_combout\ = (\U_VGA|x_pos\(30) & (\U_VGA|Add8~47\ $ (GND))) # (!\U_VGA|x_pos\(30) & (!\U_VGA|Add8~47\ & VCC))
-- \U_VGA|Add8~49\ = CARRY((\U_VGA|x_pos\(30) & !\U_VGA|Add8~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|x_pos\(30),
	datad => VCC,
	cin => \U_VGA|Add8~47\,
	combout => \U_VGA|Add8~48_combout\,
	cout => \U_VGA|Add8~49\);

-- Location: LCCOMB_X37_Y35_N10
\U_VGA|LessThan7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan7~2_combout\ = (!\U_VGA|Add8~26_combout\ & (!\U_VGA|Add8~24_combout\ & (!\U_VGA|Add8~28_combout\ & !\U_VGA|Add8~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add8~26_combout\,
	datab => \U_VGA|Add8~24_combout\,
	datac => \U_VGA|Add8~28_combout\,
	datad => \U_VGA|Add8~30_combout\,
	combout => \U_VGA|LessThan7~2_combout\);

-- Location: LCCOMB_X36_Y35_N4
\U_VGA|LessThan7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan7~1_combout\ = (!\U_VGA|Add8~20_combout\ & (!\U_VGA|Add8~18_combout\ & (!\U_VGA|Add8~16_combout\ & !\U_VGA|Add8~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add8~20_combout\,
	datab => \U_VGA|Add8~18_combout\,
	datac => \U_VGA|Add8~16_combout\,
	datad => \U_VGA|Add8~22_combout\,
	combout => \U_VGA|LessThan7~1_combout\);

-- Location: LCCOMB_X36_Y34_N28
\U_VGA|LessThan7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan7~3_combout\ = (!\U_VGA|Add8~32_combout\ & (!\U_VGA|Add8~34_combout\ & (!\U_VGA|Add8~36_combout\ & !\U_VGA|Add8~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add8~32_combout\,
	datab => \U_VGA|Add8~34_combout\,
	datac => \U_VGA|Add8~36_combout\,
	datad => \U_VGA|Add8~38_combout\,
	combout => \U_VGA|LessThan7~3_combout\);

-- Location: LCCOMB_X36_Y35_N2
\U_VGA|LessThan7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan7~0_combout\ = (!\U_VGA|Add8~12_combout\ & (!\U_VGA|Add8~14_combout\ & (!\U_VGA|Add8~8_combout\ & !\U_VGA|Add8~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add8~12_combout\,
	datab => \U_VGA|Add8~14_combout\,
	datac => \U_VGA|Add8~8_combout\,
	datad => \U_VGA|Add8~10_combout\,
	combout => \U_VGA|LessThan7~0_combout\);

-- Location: LCCOMB_X37_Y35_N0
\U_VGA|LessThan7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan7~4_combout\ = (\U_VGA|LessThan7~2_combout\ & (\U_VGA|LessThan7~1_combout\ & (\U_VGA|LessThan7~3_combout\ & \U_VGA|LessThan7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|LessThan7~2_combout\,
	datab => \U_VGA|LessThan7~1_combout\,
	datac => \U_VGA|LessThan7~3_combout\,
	datad => \U_VGA|LessThan7~0_combout\,
	combout => \U_VGA|LessThan7~4_combout\);

-- Location: LCCOMB_X37_Y35_N6
\U_VGA|LessThan7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan7~6_combout\ = (\U_VGA|LessThan7~5_combout\ & (!\U_VGA|Add8~48_combout\ & \U_VGA|LessThan7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|LessThan7~5_combout\,
	datab => \U_VGA|Add8~48_combout\,
	datad => \U_VGA|LessThan7~4_combout\,
	combout => \U_VGA|LessThan7~6_combout\);

-- Location: LCCOMB_X37_Y35_N26
\U_VGA|mov_x~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~72_combout\ = ((\U_VGA|Add8~6_combout\ & \U_VGA|mov_x~71_combout\)) # (!\U_VGA|LessThan7~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add8~6_combout\,
	datac => \U_VGA|mov_x~71_combout\,
	datad => \U_VGA|LessThan7~6_combout\,
	combout => \U_VGA|mov_x~72_combout\);

-- Location: LCCOMB_X42_Y35_N26
\U_VGA|mov_x~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~73_combout\ = (!\U_VGA|Add8~50_combout\ & (!\U_VGA|LessThan9~60_combout\ & (!\U_VGA|LessThan8~60_combout\ & \U_VGA|mov_x~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add8~50_combout\,
	datab => \U_VGA|LessThan9~60_combout\,
	datac => \U_VGA|LessThan8~60_combout\,
	datad => \U_VGA|mov_x~72_combout\,
	combout => \U_VGA|mov_x~73_combout\);

-- Location: LCCOMB_X42_Y35_N4
\U_VGA|mov_x~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~76_combout\ = (!\U_VGA|ball_move~2_combout\ & ((\U_VGA|mov_x~73_combout\) # (\U_VGA|mov_x~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~2_combout\,
	datac => \U_VGA|mov_x~73_combout\,
	datad => \U_VGA|mov_x~75_combout\,
	combout => \U_VGA|mov_x~76_combout\);

-- Location: LCCOMB_X41_Y34_N30
\U_VGA|Add1~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add1~61_combout\ = \U_VGA|mov_x\(30) $ (\U_VGA|Add1~60\ $ (!\U_VGA|mov_x~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|mov_x\(30),
	datad => \U_VGA|mov_x~76_combout\,
	cin => \U_VGA|Add1~60\,
	combout => \U_VGA|Add1~61_combout\);

-- Location: LCCOMB_X42_Y34_N24
\U_VGA|mov_x~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~107_combout\ = (\U_VGA|ball_move~1_combout\ & (\button_n[0]~input_o\ & \U_VGA|Add1~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~1_combout\,
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add1~61_combout\,
	combout => \U_VGA|mov_x~107_combout\);

-- Location: FF_X42_Y34_N25
\U_VGA|mov_x[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_x~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_x\(30));

-- Location: LCCOMB_X42_Y34_N10
\U_VGA|temp_mov_x~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_mov_x~30_combout\ = (\U_VGA|ball_move~1_combout\ & ((\U_VGA|Add1~61_combout\))) # (!\U_VGA|ball_move~1_combout\ & (\U_VGA|mov_x\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|ball_move~1_combout\,
	datac => \U_VGA|mov_x\(30),
	datad => \U_VGA|Add1~61_combout\,
	combout => \U_VGA|temp_mov_x~30_combout\);

-- Location: LCCOMB_X39_Y34_N30
\U_VGA|Add2~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~90_combout\ = \U_VGA|Add2~86\ $ (!\U_VGA|temp_mov_x~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_VGA|temp_mov_x~30_combout\,
	cin => \U_VGA|Add2~86\,
	combout => \U_VGA|Add2~90_combout\);

-- Location: LCCOMB_X38_Y34_N22
\U_VGA|Add2~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~92_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~90_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datac => \U_VGA|Add2~90_combout\,
	combout => \U_VGA|Add2~92_combout\);

-- Location: FF_X38_Y34_N23
\U_VGA|x_pos[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(31));

-- Location: LCCOMB_X36_Y34_N24
\U_VGA|Add8~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add8~50_combout\ = \U_VGA|Add8~49\ $ (\U_VGA|x_pos\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_VGA|x_pos\(31),
	cin => \U_VGA|Add8~49\,
	combout => \U_VGA|Add8~50_combout\);

-- Location: LCCOMB_X37_Y35_N8
\U_VGA|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan0~2_combout\ = (\U_VGA|x_pos\(3)) # (((!\U_VGA|LessThan0~1_combout\) # (!\U_VGA|x_pos\(2))) # (!\U_VGA|x_pos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(3),
	datab => \U_VGA|x_pos\(1),
	datac => \U_VGA|x_pos\(2),
	datad => \U_VGA|LessThan0~1_combout\,
	combout => \U_VGA|LessThan0~2_combout\);

-- Location: LCCOMB_X37_Y35_N30
\U_VGA|ball_move~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|ball_move~0_combout\ = (\U_VGA|LessThan7~6_combout\ & (((\U_VGA|LessThan0~0_combout\ & \U_VGA|LessThan0~2_combout\)) # (!\U_VGA|Add8~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add8~6_combout\,
	datab => \U_VGA|LessThan0~0_combout\,
	datac => \U_VGA|LessThan0~2_combout\,
	datad => \U_VGA|LessThan7~6_combout\,
	combout => \U_VGA|ball_move~0_combout\);

-- Location: LCCOMB_X37_Y35_N24
\U_VGA|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan1~0_combout\ = ((\U_VGA|x_pos\(2)) # ((\U_VGA|x_pos\(1)) # (!\U_VGA|mov_x~70_combout\))) # (!\U_VGA|x_pos\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(3),
	datab => \U_VGA|x_pos\(2),
	datac => \U_VGA|x_pos\(1),
	datad => \U_VGA|mov_x~70_combout\,
	combout => \U_VGA|LessThan1~0_combout\);

-- Location: LCCOMB_X37_Y35_N28
\U_VGA|ball_move~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|ball_move~1_combout\ = (!\U_VGA|x_pos\(31) & (\U_VGA|LessThan1~0_combout\ & ((\U_VGA|Add8~50_combout\) # (\U_VGA|ball_move~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add8~50_combout\,
	datab => \U_VGA|x_pos\(31),
	datac => \U_VGA|ball_move~0_combout\,
	datad => \U_VGA|LessThan1~0_combout\,
	combout => \U_VGA|ball_move~1_combout\);

-- Location: LCCOMB_X37_Y35_N22
\U_VGA|temp_x_pos~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|temp_x_pos~0_combout\ = (\U_VGA|x_pos\(9) & \U_VGA|ball_move~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|x_pos\(9),
	datad => \U_VGA|ball_move~1_combout\,
	combout => \U_VGA|temp_x_pos~0_combout\);

-- Location: LCCOMB_X38_Y35_N12
\U_VGA|Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~18_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~16_combout\,
	combout => \U_VGA|Add2~18_combout\);

-- Location: FF_X38_Y35_N13
\U_VGA|x_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(9));

-- Location: LCCOMB_X42_Y32_N6
\U_VGA|LessThan14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan14~1_cout\ = CARRY((\U_VGA|x_pos\(1) & !\U_VGA|sync|h_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(1),
	datab => \U_VGA|sync|h_counter\(1),
	datad => VCC,
	cout => \U_VGA|LessThan14~1_cout\);

-- Location: LCCOMB_X42_Y32_N8
\U_VGA|LessThan14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan14~3_cout\ = CARRY((\U_VGA|sync|h_counter\(2) & ((!\U_VGA|LessThan14~1_cout\) # (!\U_VGA|x_pos\(2)))) # (!\U_VGA|sync|h_counter\(2) & (!\U_VGA|x_pos\(2) & !\U_VGA|LessThan14~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(2),
	datab => \U_VGA|x_pos\(2),
	datad => VCC,
	cin => \U_VGA|LessThan14~1_cout\,
	cout => \U_VGA|LessThan14~3_cout\);

-- Location: LCCOMB_X42_Y32_N10
\U_VGA|LessThan14~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan14~5_cout\ = CARRY((\U_VGA|sync|h_counter\(3) & (!\U_VGA|x_pos\(3) & !\U_VGA|LessThan14~3_cout\)) # (!\U_VGA|sync|h_counter\(3) & ((!\U_VGA|LessThan14~3_cout\) # (!\U_VGA|x_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(3),
	datab => \U_VGA|x_pos\(3),
	datad => VCC,
	cin => \U_VGA|LessThan14~3_cout\,
	cout => \U_VGA|LessThan14~5_cout\);

-- Location: LCCOMB_X42_Y32_N12
\U_VGA|LessThan14~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan14~7_cout\ = CARRY((\U_VGA|x_pos\(4) & (\U_VGA|sync|h_counter\(4) & !\U_VGA|LessThan14~5_cout\)) # (!\U_VGA|x_pos\(4) & ((\U_VGA|sync|h_counter\(4)) # (!\U_VGA|LessThan14~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(4),
	datab => \U_VGA|sync|h_counter\(4),
	datad => VCC,
	cin => \U_VGA|LessThan14~5_cout\,
	cout => \U_VGA|LessThan14~7_cout\);

-- Location: LCCOMB_X42_Y32_N14
\U_VGA|LessThan14~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan14~9_cout\ = CARRY((\U_VGA|sync|h_counter\(5) & (\U_VGA|x_pos\(5) & !\U_VGA|LessThan14~7_cout\)) # (!\U_VGA|sync|h_counter\(5) & ((\U_VGA|x_pos\(5)) # (!\U_VGA|LessThan14~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(5),
	datab => \U_VGA|x_pos\(5),
	datad => VCC,
	cin => \U_VGA|LessThan14~7_cout\,
	cout => \U_VGA|LessThan14~9_cout\);

-- Location: LCCOMB_X42_Y32_N16
\U_VGA|LessThan14~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan14~11_cout\ = CARRY((\U_VGA|x_pos\(6) & ((\U_VGA|sync|h_counter\(6)) # (!\U_VGA|LessThan14~9_cout\))) # (!\U_VGA|x_pos\(6) & (\U_VGA|sync|h_counter\(6) & !\U_VGA|LessThan14~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(6),
	datab => \U_VGA|sync|h_counter\(6),
	datad => VCC,
	cin => \U_VGA|LessThan14~9_cout\,
	cout => \U_VGA|LessThan14~11_cout\);

-- Location: LCCOMB_X42_Y32_N18
\U_VGA|LessThan14~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan14~13_cout\ = CARRY((\U_VGA|sync|h_counter\(7) & (!\U_VGA|x_pos\(7) & !\U_VGA|LessThan14~11_cout\)) # (!\U_VGA|sync|h_counter\(7) & ((!\U_VGA|LessThan14~11_cout\) # (!\U_VGA|x_pos\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(7),
	datab => \U_VGA|x_pos\(7),
	datad => VCC,
	cin => \U_VGA|LessThan14~11_cout\,
	cout => \U_VGA|LessThan14~13_cout\);

-- Location: LCCOMB_X42_Y32_N20
\U_VGA|LessThan14~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan14~15_cout\ = CARRY((\U_VGA|sync|h_counter\(8) & ((!\U_VGA|LessThan14~13_cout\) # (!\U_VGA|x_pos\(8)))) # (!\U_VGA|sync|h_counter\(8) & (!\U_VGA|x_pos\(8) & !\U_VGA|LessThan14~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(8),
	datab => \U_VGA|x_pos\(8),
	datad => VCC,
	cin => \U_VGA|LessThan14~13_cout\,
	cout => \U_VGA|LessThan14~15_cout\);

-- Location: LCCOMB_X42_Y32_N22
\U_VGA|LessThan14~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan14~16_combout\ = (\U_VGA|sync|h_counter\(9) & (!\U_VGA|LessThan14~15_cout\ & \U_VGA|x_pos\(9))) # (!\U_VGA|sync|h_counter\(9) & ((\U_VGA|x_pos\(9)) # (!\U_VGA|LessThan14~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|sync|h_counter\(9),
	datad => \U_VGA|x_pos\(9),
	cin => \U_VGA|LessThan14~15_cout\,
	combout => \U_VGA|LessThan14~16_combout\);

-- Location: LCCOMB_X43_Y35_N8
\U_VGA|LessThan15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan15~1_cout\ = CARRY(\U_VGA|sync|h_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(0),
	datad => VCC,
	cout => \U_VGA|LessThan15~1_cout\);

-- Location: LCCOMB_X43_Y35_N10
\U_VGA|LessThan15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan15~3_cout\ = CARRY((\U_VGA|sync|h_counter\(1) & (\U_VGA|x_pos\(1) & !\U_VGA|LessThan15~1_cout\)) # (!\U_VGA|sync|h_counter\(1) & ((\U_VGA|x_pos\(1)) # (!\U_VGA|LessThan15~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(1),
	datab => \U_VGA|x_pos\(1),
	datad => VCC,
	cin => \U_VGA|LessThan15~1_cout\,
	cout => \U_VGA|LessThan15~3_cout\);

-- Location: LCCOMB_X43_Y35_N12
\U_VGA|LessThan15~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan15~5_cout\ = CARRY((\U_VGA|sync|h_counter\(2) & ((!\U_VGA|LessThan15~3_cout\) # (!\U_VGA|x_pos\(2)))) # (!\U_VGA|sync|h_counter\(2) & (!\U_VGA|x_pos\(2) & !\U_VGA|LessThan15~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(2),
	datab => \U_VGA|x_pos\(2),
	datad => VCC,
	cin => \U_VGA|LessThan15~3_cout\,
	cout => \U_VGA|LessThan15~5_cout\);

-- Location: LCCOMB_X43_Y35_N14
\U_VGA|LessThan15~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan15~7_cout\ = CARRY((\U_VGA|x_pos\(3) & (!\U_VGA|sync|h_counter\(3) & !\U_VGA|LessThan15~5_cout\)) # (!\U_VGA|x_pos\(3) & ((!\U_VGA|LessThan15~5_cout\) # (!\U_VGA|sync|h_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(3),
	datab => \U_VGA|sync|h_counter\(3),
	datad => VCC,
	cin => \U_VGA|LessThan15~5_cout\,
	cout => \U_VGA|LessThan15~7_cout\);

-- Location: LCCOMB_X43_Y35_N16
\U_VGA|LessThan15~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan15~9_cout\ = CARRY((\U_VGA|sync|h_counter\(4) & ((!\U_VGA|LessThan15~7_cout\) # (!\U_VGA|x_pos\(4)))) # (!\U_VGA|sync|h_counter\(4) & (!\U_VGA|x_pos\(4) & !\U_VGA|LessThan15~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(4),
	datab => \U_VGA|x_pos\(4),
	datad => VCC,
	cin => \U_VGA|LessThan15~7_cout\,
	cout => \U_VGA|LessThan15~9_cout\);

-- Location: LCCOMB_X43_Y35_N18
\U_VGA|LessThan15~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan15~11_cout\ = CARRY((\U_VGA|x_pos\(5) & ((!\U_VGA|LessThan15~9_cout\) # (!\U_VGA|sync|h_counter\(5)))) # (!\U_VGA|x_pos\(5) & (!\U_VGA|sync|h_counter\(5) & !\U_VGA|LessThan15~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(5),
	datab => \U_VGA|sync|h_counter\(5),
	datad => VCC,
	cin => \U_VGA|LessThan15~9_cout\,
	cout => \U_VGA|LessThan15~11_cout\);

-- Location: LCCOMB_X43_Y35_N20
\U_VGA|LessThan15~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan15~13_cout\ = CARRY((\U_VGA|Add8~0_combout\ & (\U_VGA|sync|h_counter\(6) & !\U_VGA|LessThan15~11_cout\)) # (!\U_VGA|Add8~0_combout\ & ((\U_VGA|sync|h_counter\(6)) # (!\U_VGA|LessThan15~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add8~0_combout\,
	datab => \U_VGA|sync|h_counter\(6),
	datad => VCC,
	cin => \U_VGA|LessThan15~11_cout\,
	cout => \U_VGA|LessThan15~13_cout\);

-- Location: LCCOMB_X43_Y35_N22
\U_VGA|LessThan15~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan15~15_cout\ = CARRY((\U_VGA|Add8~2_combout\ & ((!\U_VGA|LessThan15~13_cout\) # (!\U_VGA|sync|h_counter\(7)))) # (!\U_VGA|Add8~2_combout\ & (!\U_VGA|sync|h_counter\(7) & !\U_VGA|LessThan15~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add8~2_combout\,
	datab => \U_VGA|sync|h_counter\(7),
	datad => VCC,
	cin => \U_VGA|LessThan15~13_cout\,
	cout => \U_VGA|LessThan15~15_cout\);

-- Location: LCCOMB_X43_Y35_N24
\U_VGA|LessThan15~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan15~17_cout\ = CARRY((\U_VGA|sync|h_counter\(8) & ((!\U_VGA|LessThan15~15_cout\) # (!\U_VGA|Add8~4_combout\))) # (!\U_VGA|sync|h_counter\(8) & (!\U_VGA|Add8~4_combout\ & !\U_VGA|LessThan15~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(8),
	datab => \U_VGA|Add8~4_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan15~15_cout\,
	cout => \U_VGA|LessThan15~17_cout\);

-- Location: LCCOMB_X43_Y35_N26
\U_VGA|LessThan15~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan15~18_combout\ = (\U_VGA|sync|h_counter\(9) & ((\U_VGA|LessThan15~17_cout\) # (!\U_VGA|Add8~6_combout\))) # (!\U_VGA|sync|h_counter\(9) & (\U_VGA|LessThan15~17_cout\ & !\U_VGA|Add8~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|sync|h_counter\(9),
	datad => \U_VGA|Add8~6_combout\,
	cin => \U_VGA|LessThan15~17_cout\,
	combout => \U_VGA|LessThan15~18_combout\);

-- Location: LCCOMB_X45_Y37_N12
\U_VGA|LessThan16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan16~1_cout\ = CARRY((!\U_VGA|sync|v_counter\(1) & \U_VGA|y_pos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(1),
	datab => \U_VGA|y_pos\(1),
	datad => VCC,
	cout => \U_VGA|LessThan16~1_cout\);

-- Location: LCCOMB_X45_Y37_N14
\U_VGA|LessThan16~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan16~3_cout\ = CARRY((\U_VGA|sync|v_counter\(2) & ((!\U_VGA|LessThan16~1_cout\) # (!\U_VGA|y_pos\(2)))) # (!\U_VGA|sync|v_counter\(2) & (!\U_VGA|y_pos\(2) & !\U_VGA|LessThan16~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(2),
	datab => \U_VGA|y_pos\(2),
	datad => VCC,
	cin => \U_VGA|LessThan16~1_cout\,
	cout => \U_VGA|LessThan16~3_cout\);

-- Location: LCCOMB_X45_Y37_N16
\U_VGA|LessThan16~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan16~5_cout\ = CARRY((\U_VGA|y_pos\(3) & (!\U_VGA|sync|v_counter\(3) & !\U_VGA|LessThan16~3_cout\)) # (!\U_VGA|y_pos\(3) & ((!\U_VGA|LessThan16~3_cout\) # (!\U_VGA|sync|v_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(3),
	datab => \U_VGA|sync|v_counter\(3),
	datad => VCC,
	cin => \U_VGA|LessThan16~3_cout\,
	cout => \U_VGA|LessThan16~5_cout\);

-- Location: LCCOMB_X45_Y37_N18
\U_VGA|LessThan16~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan16~7_cout\ = CARRY((\U_VGA|sync|v_counter\(4) & ((!\U_VGA|LessThan16~5_cout\) # (!\U_VGA|y_pos\(4)))) # (!\U_VGA|sync|v_counter\(4) & (!\U_VGA|y_pos\(4) & !\U_VGA|LessThan16~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(4),
	datab => \U_VGA|y_pos\(4),
	datad => VCC,
	cin => \U_VGA|LessThan16~5_cout\,
	cout => \U_VGA|LessThan16~7_cout\);

-- Location: LCCOMB_X45_Y37_N20
\U_VGA|LessThan16~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan16~9_cout\ = CARRY((\U_VGA|sync|v_counter\(5) & (\U_VGA|y_pos\(5) & !\U_VGA|LessThan16~7_cout\)) # (!\U_VGA|sync|v_counter\(5) & ((\U_VGA|y_pos\(5)) # (!\U_VGA|LessThan16~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(5),
	datab => \U_VGA|y_pos\(5),
	datad => VCC,
	cin => \U_VGA|LessThan16~7_cout\,
	cout => \U_VGA|LessThan16~9_cout\);

-- Location: LCCOMB_X45_Y37_N22
\U_VGA|LessThan16~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan16~11_cout\ = CARRY((\U_VGA|y_pos\(6) & ((\U_VGA|sync|v_counter\(6)) # (!\U_VGA|LessThan16~9_cout\))) # (!\U_VGA|y_pos\(6) & (\U_VGA|sync|v_counter\(6) & !\U_VGA|LessThan16~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(6),
	datab => \U_VGA|sync|v_counter\(6),
	datad => VCC,
	cin => \U_VGA|LessThan16~9_cout\,
	cout => \U_VGA|LessThan16~11_cout\);

-- Location: LCCOMB_X45_Y37_N24
\U_VGA|LessThan16~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan16~13_cout\ = CARRY((\U_VGA|sync|v_counter\(7) & (!\U_VGA|y_pos\(7) & !\U_VGA|LessThan16~11_cout\)) # (!\U_VGA|sync|v_counter\(7) & ((!\U_VGA|LessThan16~11_cout\) # (!\U_VGA|y_pos\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(7),
	datab => \U_VGA|y_pos\(7),
	datad => VCC,
	cin => \U_VGA|LessThan16~11_cout\,
	cout => \U_VGA|LessThan16~13_cout\);

-- Location: LCCOMB_X45_Y37_N26
\U_VGA|LessThan16~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan16~15_cout\ = CARRY((\U_VGA|sync|v_counter\(8) & ((!\U_VGA|LessThan16~13_cout\) # (!\U_VGA|y_pos\(8)))) # (!\U_VGA|sync|v_counter\(8) & (!\U_VGA|y_pos\(8) & !\U_VGA|LessThan16~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(8),
	datab => \U_VGA|y_pos\(8),
	datad => VCC,
	cin => \U_VGA|LessThan16~13_cout\,
	cout => \U_VGA|LessThan16~15_cout\);

-- Location: LCCOMB_X45_Y37_N28
\U_VGA|LessThan16~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan16~16_combout\ = (\U_VGA|y_pos\(9) & ((!\U_VGA|sync|v_counter\(9)) # (!\U_VGA|LessThan16~15_cout\))) # (!\U_VGA|y_pos\(9) & (!\U_VGA|LessThan16~15_cout\ & !\U_VGA|sync|v_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos\(9),
	datad => \U_VGA|sync|v_counter\(9),
	cin => \U_VGA|LessThan16~15_cout\,
	combout => \U_VGA|LessThan16~16_combout\);

-- Location: LCCOMB_X44_Y37_N2
\U_VGA|LessThan17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan17~1_cout\ = CARRY(\U_VGA|sync|v_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(0),
	datad => VCC,
	cout => \U_VGA|LessThan17~1_cout\);

-- Location: LCCOMB_X44_Y37_N4
\U_VGA|LessThan17~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan17~3_cout\ = CARRY((\U_VGA|y_pos\(1) & ((!\U_VGA|LessThan17~1_cout\) # (!\U_VGA|sync|v_counter\(1)))) # (!\U_VGA|y_pos\(1) & (!\U_VGA|sync|v_counter\(1) & !\U_VGA|LessThan17~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(1),
	datab => \U_VGA|sync|v_counter\(1),
	datad => VCC,
	cin => \U_VGA|LessThan17~1_cout\,
	cout => \U_VGA|LessThan17~3_cout\);

-- Location: LCCOMB_X44_Y37_N6
\U_VGA|LessThan17~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan17~5_cout\ = CARRY((\U_VGA|y_pos\(2) & (\U_VGA|sync|v_counter\(2) & !\U_VGA|LessThan17~3_cout\)) # (!\U_VGA|y_pos\(2) & ((\U_VGA|sync|v_counter\(2)) # (!\U_VGA|LessThan17~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(2),
	datab => \U_VGA|sync|v_counter\(2),
	datad => VCC,
	cin => \U_VGA|LessThan17~3_cout\,
	cout => \U_VGA|LessThan17~5_cout\);

-- Location: LCCOMB_X44_Y37_N8
\U_VGA|LessThan17~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan17~7_cout\ = CARRY((\U_VGA|y_pos\(3) & (!\U_VGA|sync|v_counter\(3) & !\U_VGA|LessThan17~5_cout\)) # (!\U_VGA|y_pos\(3) & ((!\U_VGA|LessThan17~5_cout\) # (!\U_VGA|sync|v_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(3),
	datab => \U_VGA|sync|v_counter\(3),
	datad => VCC,
	cin => \U_VGA|LessThan17~5_cout\,
	cout => \U_VGA|LessThan17~7_cout\);

-- Location: LCCOMB_X44_Y37_N10
\U_VGA|LessThan17~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan17~9_cout\ = CARRY((\U_VGA|sync|v_counter\(4) & ((!\U_VGA|LessThan17~7_cout\) # (!\U_VGA|y_pos\(4)))) # (!\U_VGA|sync|v_counter\(4) & (!\U_VGA|y_pos\(4) & !\U_VGA|LessThan17~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(4),
	datab => \U_VGA|y_pos\(4),
	datad => VCC,
	cin => \U_VGA|LessThan17~7_cout\,
	cout => \U_VGA|LessThan17~9_cout\);

-- Location: LCCOMB_X44_Y37_N12
\U_VGA|LessThan17~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan17~11_cout\ = CARRY((\U_VGA|sync|v_counter\(5) & (\U_VGA|y_pos\(5) & !\U_VGA|LessThan17~9_cout\)) # (!\U_VGA|sync|v_counter\(5) & ((\U_VGA|y_pos\(5)) # (!\U_VGA|LessThan17~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(5),
	datab => \U_VGA|y_pos\(5),
	datad => VCC,
	cin => \U_VGA|LessThan17~9_cout\,
	cout => \U_VGA|LessThan17~11_cout\);

-- Location: LCCOMB_X44_Y37_N14
\U_VGA|LessThan17~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan17~13_cout\ = CARRY((\U_VGA|sync|v_counter\(6) & ((!\U_VGA|LessThan17~11_cout\) # (!\U_VGA|Add9~0_combout\))) # (!\U_VGA|sync|v_counter\(6) & (!\U_VGA|Add9~0_combout\ & !\U_VGA|LessThan17~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(6),
	datab => \U_VGA|Add9~0_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan17~11_cout\,
	cout => \U_VGA|LessThan17~13_cout\);

-- Location: LCCOMB_X44_Y37_N16
\U_VGA|LessThan17~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan17~15_cout\ = CARRY((\U_VGA|Add9~2_combout\ & ((!\U_VGA|LessThan17~13_cout\) # (!\U_VGA|sync|v_counter\(7)))) # (!\U_VGA|Add9~2_combout\ & (!\U_VGA|sync|v_counter\(7) & !\U_VGA|LessThan17~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add9~2_combout\,
	datab => \U_VGA|sync|v_counter\(7),
	datad => VCC,
	cin => \U_VGA|LessThan17~13_cout\,
	cout => \U_VGA|LessThan17~15_cout\);

-- Location: LCCOMB_X44_Y37_N18
\U_VGA|LessThan17~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan17~17_cout\ = CARRY((\U_VGA|Add9~4_combout\ & (\U_VGA|sync|v_counter\(8) & !\U_VGA|LessThan17~15_cout\)) # (!\U_VGA|Add9~4_combout\ & ((\U_VGA|sync|v_counter\(8)) # (!\U_VGA|LessThan17~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add9~4_combout\,
	datab => \U_VGA|sync|v_counter\(8),
	datad => VCC,
	cin => \U_VGA|LessThan17~15_cout\,
	cout => \U_VGA|LessThan17~17_cout\);

-- Location: LCCOMB_X44_Y37_N20
\U_VGA|LessThan17~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan17~18_combout\ = (\U_VGA|sync|v_counter\(9) & ((\U_VGA|LessThan17~17_cout\) # (!\U_VGA|Add9~6_combout\))) # (!\U_VGA|sync|v_counter\(9) & (\U_VGA|LessThan17~17_cout\ & !\U_VGA|Add9~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(9),
	datad => \U_VGA|Add9~6_combout\,
	cin => \U_VGA|LessThan17~17_cout\,
	combout => \U_VGA|LessThan17~18_combout\);

-- Location: LCCOMB_X44_Y32_N6
\U_VGA|draw~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|draw~0_combout\ = (!\U_VGA|LessThan14~16_combout\ & (!\U_VGA|LessThan15~18_combout\ & (!\U_VGA|LessThan16~16_combout\ & !\U_VGA|LessThan17~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|LessThan14~16_combout\,
	datab => \U_VGA|LessThan15~18_combout\,
	datac => \U_VGA|LessThan16~16_combout\,
	datad => \U_VGA|LessThan17~18_combout\,
	combout => \U_VGA|draw~0_combout\);

-- Location: LCCOMB_X44_Y32_N18
\U_VGA|red~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|red~6_combout\ = (\U_VGA|sync|video_on~1_combout\ & ((\U_VGA|red~1_combout\) # ((\U_VGA|red~5_combout\) # (\U_VGA|draw~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|video_on~1_combout\,
	datab => \U_VGA|red~1_combout\,
	datac => \U_VGA|red~5_combout\,
	datad => \U_VGA|draw~0_combout\,
	combout => \U_VGA|red~6_combout\);

-- Location: LCCOMB_X44_Y32_N0
\U_VGA|red[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|red[0]~feeder_combout\ = \U_VGA|red~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_VGA|red~6_combout\,
	combout => \U_VGA|red[0]~feeder_combout\);

-- Location: FF_X44_Y32_N1
\U_VGA|red[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|red[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|red\(0));

-- Location: LCCOMB_X44_Y32_N10
\U_VGA|red[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|red[1]~feeder_combout\ = \U_VGA|red~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_VGA|red~6_combout\,
	combout => \U_VGA|red[1]~feeder_combout\);

-- Location: FF_X44_Y32_N11
\U_VGA|red[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|red[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|red\(1));

-- Location: LCCOMB_X44_Y32_N28
\U_VGA|red[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|red[2]~feeder_combout\ = \U_VGA|red~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_VGA|red~6_combout\,
	combout => \U_VGA|red[2]~feeder_combout\);

-- Location: FF_X44_Y32_N29
\U_VGA|red[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|red[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|red\(2));

-- Location: LCCOMB_X44_Y32_N16
\U_VGA|red~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|red~7_combout\ = (\U_VGA|sync|video_on~1_combout\ & (!\U_VGA|draw~0_combout\ & ((\U_VGA|red~1_combout\) # (\U_VGA|red~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|video_on~1_combout\,
	datab => \U_VGA|red~1_combout\,
	datac => \U_VGA|red~5_combout\,
	datad => \U_VGA|draw~0_combout\,
	combout => \U_VGA|red~7_combout\);

-- Location: LCCOMB_X44_Y32_N26
\U_VGA|red[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|red[3]~feeder_combout\ = \U_VGA|red~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_VGA|red~7_combout\,
	combout => \U_VGA|red[3]~feeder_combout\);

-- Location: FF_X44_Y32_N27
\U_VGA|red[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|red[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|red\(3));

-- Location: LCCOMB_X44_Y32_N24
\U_VGA|green[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|green[0]~feeder_combout\ = \U_VGA|red~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_VGA|red~6_combout\,
	combout => \U_VGA|green[0]~feeder_combout\);

-- Location: FF_X44_Y32_N25
\U_VGA|green[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|green[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|green\(0));

-- Location: LCCOMB_X44_Y32_N2
\U_VGA|green[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|green[1]~feeder_combout\ = \U_VGA|red~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_VGA|red~6_combout\,
	combout => \U_VGA|green[1]~feeder_combout\);

-- Location: FF_X44_Y32_N3
\U_VGA|green[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|green[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|green\(1));

-- Location: LCCOMB_X44_Y32_N8
\U_VGA|green[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|green[2]~feeder_combout\ = \U_VGA|red~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_VGA|red~7_combout\,
	combout => \U_VGA|green[2]~feeder_combout\);

-- Location: FF_X44_Y32_N9
\U_VGA|green[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|green[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|green\(2));

-- Location: LCCOMB_X44_Y32_N22
\U_VGA|green[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|green[3]~feeder_combout\ = \U_VGA|red~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_VGA|red~7_combout\,
	combout => \U_VGA|green[3]~feeder_combout\);

-- Location: FF_X44_Y32_N23
\U_VGA|green[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|green[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|green\(3));

-- Location: LCCOMB_X44_Y32_N20
\U_VGA|blue[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|blue[0]~feeder_combout\ = \U_VGA|red~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_VGA|red~6_combout\,
	combout => \U_VGA|blue[0]~feeder_combout\);

-- Location: FF_X44_Y32_N21
\U_VGA|blue[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|blue[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|blue\(0));

-- Location: LCCOMB_X44_Y32_N30
\U_VGA|blue[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|blue[1]~feeder_combout\ = \U_VGA|red~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_VGA|red~6_combout\,
	combout => \U_VGA|blue[1]~feeder_combout\);

-- Location: FF_X44_Y32_N31
\U_VGA|blue[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|blue[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|blue\(1));

-- Location: FF_X44_Y32_N17
\U_VGA|blue[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|red~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|blue\(2));

-- Location: FF_X44_Y32_N19
\U_VGA|blue[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|red~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|blue\(3));

-- Location: LCCOMB_X47_Y35_N28
\U_VGA|sync|h_sync~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|h_sync~0_combout\ = (!\U_VGA|sync|h_counter\(2) & (!\U_VGA|sync|h_counter\(3) & ((!\U_VGA|sync|h_counter\(0)) # (!\U_VGA|sync|h_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(1),
	datab => \U_VGA|sync|h_counter\(0),
	datac => \U_VGA|sync|h_counter\(2),
	datad => \U_VGA|sync|h_counter\(3),
	combout => \U_VGA|sync|h_sync~0_combout\);

-- Location: LCCOMB_X42_Y33_N20
\U_VGA|sync|h_sync~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|h_sync~1_combout\ = (!\U_VGA|sync|h_counter\(5) & (!\U_VGA|sync|h_counter\(6) & ((\U_VGA|sync|h_sync~0_combout\) # (!\U_VGA|sync|h_counter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(5),
	datab => \U_VGA|sync|h_sync~0_combout\,
	datac => \U_VGA|sync|h_counter\(4),
	datad => \U_VGA|sync|h_counter\(6),
	combout => \U_VGA|sync|h_sync~1_combout\);

-- Location: LCCOMB_X42_Y33_N30
\U_VGA|sync|h_sync~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|h_sync~2_combout\ = (\U_VGA|sync|h_counter\(8)) # ((\U_VGA|sync|h_sync~1_combout\) # ((!\U_VGA|sync|h_counter\(9)) # (!\U_VGA|sync|h_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(8),
	datab => \U_VGA|sync|h_sync~1_combout\,
	datac => \U_VGA|sync|h_counter\(7),
	datad => \U_VGA|sync|h_counter\(9),
	combout => \U_VGA|sync|h_sync~2_combout\);

-- Location: LCCOMB_X42_Y33_N26
\U_VGA|sync|h_sync~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|h_sync~4_combout\ = (\U_VGA|sync|h_sync~2_combout\) # ((\U_VGA|sync|h_sync~3_combout\ & ((\U_VGA|sync|h_counter\(3)) # (\U_VGA|sync|h_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_sync~2_combout\,
	datab => \U_VGA|sync|h_counter\(3),
	datac => \U_VGA|sync|h_counter\(2),
	datad => \U_VGA|sync|h_sync~3_combout\,
	combout => \U_VGA|sync|h_sync~4_combout\);

-- Location: LCCOMB_X43_Y33_N2
\U_VGA|sync|v_sync~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|v_sync~1_combout\ = ((\U_VGA|sync|v_counter\(4)) # ((!\U_VGA|sync|v_counter\(6)) # (!\U_VGA|sync|v_counter\(7)))) # (!\U_VGA|sync|v_counter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(8),
	datab => \U_VGA|sync|v_counter\(4),
	datac => \U_VGA|sync|v_counter\(7),
	datad => \U_VGA|sync|v_counter\(6),
	combout => \U_VGA|sync|v_sync~1_combout\);

-- Location: LCCOMB_X43_Y33_N8
\U_VGA|sync|v_sync~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|v_sync~0_combout\ = ((\U_VGA|sync|v_counter\(1) $ (!\U_VGA|sync|v_counter\(0))) # (!\U_VGA|sync|v_counter\(3))) # (!\U_VGA|sync|v_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(2),
	datab => \U_VGA|sync|v_counter\(3),
	datac => \U_VGA|sync|v_counter\(1),
	datad => \U_VGA|sync|v_counter\(0),
	combout => \U_VGA|sync|v_sync~0_combout\);

-- Location: LCCOMB_X43_Y33_N4
\U_VGA|sync|v_sync~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|v_sync~2_combout\ = ((\U_VGA|sync|v_sync~1_combout\) # ((\U_VGA|sync|v_sync~0_combout\) # (\U_VGA|sync|v_counter\(9)))) # (!\U_VGA|sync|v_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(5),
	datab => \U_VGA|sync|v_sync~1_combout\,
	datac => \U_VGA|sync|v_sync~0_combout\,
	datad => \U_VGA|sync|v_counter\(9),
	combout => \U_VGA|sync|v_sync~2_combout\);

-- Location: IOIBUF_X54_Y54_N22
\switch[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(4),
	o => \switch[4]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\switch[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(5),
	o => \switch[5]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\switch[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(6),
	o => \switch[6]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\switch[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(7),
	o => \switch[7]~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\switch[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(8),
	o => \switch[8]~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\switch[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(9),
	o => \switch[9]~input_o\);

-- Location: IOIBUF_X46_Y54_N29
\button_n[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button_n(1),
	o => \button_n[1]~input_o\);

-- Location: UNVM_X0_Y40_N40
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
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_red(0) <= \red[0]~output_o\;

ww_red(1) <= \red[1]~output_o\;

ww_red(2) <= \red[2]~output_o\;

ww_red(3) <= \red[3]~output_o\;

ww_green(0) <= \green[0]~output_o\;

ww_green(1) <= \green[1]~output_o\;

ww_green(2) <= \green[2]~output_o\;

ww_green(3) <= \green[3]~output_o\;

ww_blue(0) <= \blue[0]~output_o\;

ww_blue(1) <= \blue[1]~output_o\;

ww_blue(2) <= \blue[2]~output_o\;

ww_blue(3) <= \blue[3]~output_o\;

ww_h_sync <= \h_sync~output_o\;

ww_v_sync <= \v_sync~output_o\;

ww_led0(0) <= \led0[0]~output_o\;

ww_led0(1) <= \led0[1]~output_o\;

ww_led0(2) <= \led0[2]~output_o\;

ww_led0(3) <= \led0[3]~output_o\;

ww_led0(4) <= \led0[4]~output_o\;

ww_led0(5) <= \led0[5]~output_o\;

ww_led0(6) <= \led0[6]~output_o\;

ww_led0_dp <= \led0_dp~output_o\;

ww_led1(0) <= \led1[0]~output_o\;

ww_led1(1) <= \led1[1]~output_o\;

ww_led1(2) <= \led1[2]~output_o\;

ww_led1(3) <= \led1[3]~output_o\;

ww_led1(4) <= \led1[4]~output_o\;

ww_led1(5) <= \led1[5]~output_o\;

ww_led1(6) <= \led1[6]~output_o\;

ww_led1_dp <= \led1_dp~output_o\;

ww_led2(0) <= \led2[0]~output_o\;

ww_led2(1) <= \led2[1]~output_o\;

ww_led2(2) <= \led2[2]~output_o\;

ww_led2(3) <= \led2[3]~output_o\;

ww_led2(4) <= \led2[4]~output_o\;

ww_led2(5) <= \led2[5]~output_o\;

ww_led2(6) <= \led2[6]~output_o\;

ww_led2_dp <= \led2_dp~output_o\;

ww_led3(0) <= \led3[0]~output_o\;

ww_led3(1) <= \led3[1]~output_o\;

ww_led3(2) <= \led3[2]~output_o\;

ww_led3(3) <= \led3[3]~output_o\;

ww_led3(4) <= \led3[4]~output_o\;

ww_led3(5) <= \led3[5]~output_o\;

ww_led3(6) <= \led3[6]~output_o\;

ww_led3_dp <= \led3_dp~output_o\;

ww_led4(0) <= \led4[0]~output_o\;

ww_led4(1) <= \led4[1]~output_o\;

ww_led4(2) <= \led4[2]~output_o\;

ww_led4(3) <= \led4[3]~output_o\;

ww_led4(4) <= \led4[4]~output_o\;

ww_led4(5) <= \led4[5]~output_o\;

ww_led4(6) <= \led4[6]~output_o\;

ww_led4_dp <= \led4_dp~output_o\;

ww_led5(0) <= \led5[0]~output_o\;

ww_led5(1) <= \led5[1]~output_o\;

ww_led5(2) <= \led5[2]~output_o\;

ww_led5(3) <= \led5[3]~output_o\;

ww_led5(4) <= \led5[4]~output_o\;

ww_led5(5) <= \led5[5]~output_o\;

ww_led5(6) <= \led5[6]~output_o\;

ww_led5_dp <= \led5_dp~output_o\;
END structure;



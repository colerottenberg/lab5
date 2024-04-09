-- Copyright (C) 2022  Intel Corporation. All rights reserved.
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
-- VERSION "Version 22.1std.0 Build 915 10/25/2022 SC Lite Edition"

-- DATE "04/09/2024 16:54:55"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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
-- switch[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[8]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[9]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button_n[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- led0[0]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[1]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[2]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[3]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[4]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[5]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[6]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0_dp	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[0]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[1]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[2]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[3]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[4]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[6]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1_dp	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[0]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[1]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[2]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[3]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[4]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[5]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[6]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2_dp	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[0]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[1]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[2]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[3]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[5]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3_dp	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[1]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[3]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[4]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[5]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[6]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4_dp	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[0]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[3]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[4]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[5]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[6]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5_dp	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button_n[0]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \button_n[0]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_CLK_DIV|temp_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_VGA|clk_div|temp_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \switch[2]~input_o\ : std_logic;
SIGNAL \switch[3]~input_o\ : std_logic;
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
SIGNAL \button_n[0]~inputclkctrl_outclk\ : std_logic;
SIGNAL \U_CLK_DIV|temp_clk~q\ : std_logic;
SIGNAL \U_CLK_DIV|temp_clk~clkctrl_outclk\ : std_logic;
SIGNAL \U_VGA|sync|Add1~0_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add1~5\ : std_logic;
SIGNAL \U_VGA|sync|Add1~6_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add1~7\ : std_logic;
SIGNAL \U_VGA|sync|Add1~8_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add1~9\ : std_logic;
SIGNAL \U_VGA|sync|Add1~10_combout\ : std_logic;
SIGNAL \U_VGA|sync|h_counter~0_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add1~11\ : std_logic;
SIGNAL \U_VGA|sync|Add1~12_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add1~13\ : std_logic;
SIGNAL \U_VGA|sync|Add1~14_combout\ : std_logic;
SIGNAL \U_VGA|sync|Equal0~0_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add1~15\ : std_logic;
SIGNAL \U_VGA|sync|Add1~16_combout\ : std_logic;
SIGNAL \U_VGA|sync|h_counter~2_combout\ : std_logic;
SIGNAL \U_VGA|sync|Equal0~1_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add1~17\ : std_logic;
SIGNAL \U_VGA|sync|Add1~18_combout\ : std_logic;
SIGNAL \U_VGA|sync|h_counter~3_combout\ : std_logic;
SIGNAL \U_VGA|sync|Equal0~2_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add1~1\ : std_logic;
SIGNAL \U_VGA|sync|Add1~2_combout\ : std_logic;
SIGNAL \U_VGA|sync|h_counter~1_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add1~3\ : std_logic;
SIGNAL \U_VGA|sync|Add1~4_combout\ : std_logic;
SIGNAL \U_VGA|sync|h_sync~0_combout\ : std_logic;
SIGNAL \U_VGA|sync|h_sync~1_combout\ : std_logic;
SIGNAL \U_VGA|sync|LessThan4~0_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add0~9\ : std_logic;
SIGNAL \U_VGA|sync|Add0~10_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add0~11\ : std_logic;
SIGNAL \U_VGA|sync|Add0~12_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add0~13\ : std_logic;
SIGNAL \U_VGA|sync|Add0~14_combout\ : std_logic;
SIGNAL \U_VGA|sync|Equal1~1_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add0~15\ : std_logic;
SIGNAL \U_VGA|sync|Add0~16_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add0~0_combout\ : std_logic;
SIGNAL \U_VGA|sync|v_counter~1_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add0~1\ : std_logic;
SIGNAL \U_VGA|sync|Add0~2_combout\ : std_logic;
SIGNAL \U_VGA|sync|v_counter~0_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add0~3\ : std_logic;
SIGNAL \U_VGA|sync|Add0~4_combout\ : std_logic;
SIGNAL \U_VGA|sync|v_counter~2_combout\ : std_logic;
SIGNAL \U_VGA|sync|Equal1~0_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add0~17\ : std_logic;
SIGNAL \U_VGA|sync|Add0~18_combout\ : std_logic;
SIGNAL \U_VGA|sync|v_counter~4_combout\ : std_logic;
SIGNAL \U_VGA|sync|Equal1~2_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add0~5\ : std_logic;
SIGNAL \U_VGA|sync|Add0~6_combout\ : std_logic;
SIGNAL \U_VGA|sync|v_counter~3_combout\ : std_logic;
SIGNAL \U_VGA|sync|Add0~7\ : std_logic;
SIGNAL \U_VGA|sync|Add0~8_combout\ : std_logic;
SIGNAL \U_VGA|draw~2_combout\ : std_logic;
SIGNAL \U_VGA|draw~3_combout\ : std_logic;
SIGNAL \U_VGA|red~0_combout\ : std_logic;
SIGNAL \U_VGA|red~1_combout\ : std_logic;
SIGNAL \U_VGA|sync|LessThan4~1_combout\ : std_logic;
SIGNAL \U_VGA|draw~1_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~0_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~1\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~2_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~3\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~4_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~5\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~6_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~7\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~8_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|counter~7_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Equal0~5_combout\ : std_logic;
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
SIGNAL \U_VGA|clk_div|Add0~25\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~26_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~27\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~28_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~29\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~30_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~31\ : std_logic;
SIGNAL \U_VGA|clk_div|Add0~32_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|counter~2_combout\ : std_logic;
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
SIGNAL \U_VGA|clk_div|Equal0~1_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Equal0~2_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Equal0~3_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|Equal0~4_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|temp_clk~0_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|temp_clk~feeder_combout\ : std_logic;
SIGNAL \U_VGA|clk_div|temp_clk~q\ : std_logic;
SIGNAL \U_VGA|clk_div|temp_clk~clkctrl_outclk\ : std_logic;
SIGNAL \U_VGA|mov_x~1_combout\ : std_logic;
SIGNAL \U_VGA|Add2~0_combout\ : std_logic;
SIGNAL \U_VGA|Add2~26_combout\ : std_logic;
SIGNAL \U_VGA|Add2~1\ : std_logic;
SIGNAL \U_VGA|Add2~2_combout\ : std_logic;
SIGNAL \U_VGA|Add2~25_combout\ : std_logic;
SIGNAL \U_VGA|Add2~3\ : std_logic;
SIGNAL \U_VGA|Add2~4_combout\ : std_logic;
SIGNAL \U_VGA|Add2~24_combout\ : std_logic;
SIGNAL \U_VGA|Add2~5\ : std_logic;
SIGNAL \U_VGA|Add2~6_combout\ : std_logic;
SIGNAL \U_VGA|Add2~23_combout\ : std_logic;
SIGNAL \U_VGA|Add2~7\ : std_logic;
SIGNAL \U_VGA|Add2~8_combout\ : std_logic;
SIGNAL \U_VGA|Add2~22_combout\ : std_logic;
SIGNAL \U_VGA|Add2~9\ : std_logic;
SIGNAL \U_VGA|Add2~10_combout\ : std_logic;
SIGNAL \U_VGA|Add2~21_combout\ : std_logic;
SIGNAL \U_VGA|Add2~11\ : std_logic;
SIGNAL \U_VGA|Add2~12_combout\ : std_logic;
SIGNAL \U_VGA|Add2~20_combout\ : std_logic;
SIGNAL \U_VGA|Add2~13\ : std_logic;
SIGNAL \U_VGA|Add2~14_combout\ : std_logic;
SIGNAL \U_VGA|Add2~19_combout\ : std_logic;
SIGNAL \U_VGA|Add2~15\ : std_logic;
SIGNAL \U_VGA|Add2~17\ : std_logic;
SIGNAL \U_VGA|Add2~27_combout\ : std_logic;
SIGNAL \U_VGA|Add2~92_combout\ : std_logic;
SIGNAL \U_VGA|Add2~28\ : std_logic;
SIGNAL \U_VGA|Add2~29_combout\ : std_logic;
SIGNAL \U_VGA|Add2~91_combout\ : std_logic;
SIGNAL \U_VGA|Add2~30\ : std_logic;
SIGNAL \U_VGA|Add2~31_combout\ : std_logic;
SIGNAL \U_VGA|Add2~90_combout\ : std_logic;
SIGNAL \U_VGA|Add2~32\ : std_logic;
SIGNAL \U_VGA|Add2~33_combout\ : std_logic;
SIGNAL \U_VGA|Add2~89_combout\ : std_logic;
SIGNAL \U_VGA|Add2~34\ : std_logic;
SIGNAL \U_VGA|Add2~35_combout\ : std_logic;
SIGNAL \U_VGA|Add2~88_combout\ : std_logic;
SIGNAL \U_VGA|Add2~36\ : std_logic;
SIGNAL \U_VGA|Add2~37_combout\ : std_logic;
SIGNAL \U_VGA|Add2~87_combout\ : std_logic;
SIGNAL \U_VGA|Add2~38\ : std_logic;
SIGNAL \U_VGA|Add2~39_combout\ : std_logic;
SIGNAL \U_VGA|Add2~86_combout\ : std_logic;
SIGNAL \U_VGA|Add2~40\ : std_logic;
SIGNAL \U_VGA|Add2~41_combout\ : std_logic;
SIGNAL \U_VGA|Add2~85_combout\ : std_logic;
SIGNAL \U_VGA|Add2~42\ : std_logic;
SIGNAL \U_VGA|Add2~43_combout\ : std_logic;
SIGNAL \U_VGA|Add2~84_combout\ : std_logic;
SIGNAL \U_VGA|Add2~44\ : std_logic;
SIGNAL \U_VGA|Add2~45_combout\ : std_logic;
SIGNAL \U_VGA|Add2~83_combout\ : std_logic;
SIGNAL \U_VGA|Add2~46\ : std_logic;
SIGNAL \U_VGA|Add2~47_combout\ : std_logic;
SIGNAL \U_VGA|Add2~82_combout\ : std_logic;
SIGNAL \U_VGA|Add2~48\ : std_logic;
SIGNAL \U_VGA|Add2~49_combout\ : std_logic;
SIGNAL \U_VGA|Add2~81_combout\ : std_logic;
SIGNAL \U_VGA|Add2~50\ : std_logic;
SIGNAL \U_VGA|Add2~51_combout\ : std_logic;
SIGNAL \U_VGA|Add2~80_combout\ : std_logic;
SIGNAL \U_VGA|Add2~52\ : std_logic;
SIGNAL \U_VGA|Add2~53_combout\ : std_logic;
SIGNAL \U_VGA|Add2~79_combout\ : std_logic;
SIGNAL \U_VGA|Add2~54\ : std_logic;
SIGNAL \U_VGA|Add2~55_combout\ : std_logic;
SIGNAL \U_VGA|Add2~78_combout\ : std_logic;
SIGNAL \U_VGA|Add2~56\ : std_logic;
SIGNAL \U_VGA|Add2~57_combout\ : std_logic;
SIGNAL \U_VGA|Add2~77_combout\ : std_logic;
SIGNAL \U_VGA|Add2~58\ : std_logic;
SIGNAL \U_VGA|Add2~59_combout\ : std_logic;
SIGNAL \U_VGA|Add2~76_combout\ : std_logic;
SIGNAL \U_VGA|Add2~60\ : std_logic;
SIGNAL \U_VGA|Add2~61_combout\ : std_logic;
SIGNAL \U_VGA|Add2~75_combout\ : std_logic;
SIGNAL \U_VGA|Add2~62\ : std_logic;
SIGNAL \U_VGA|Add2~63_combout\ : std_logic;
SIGNAL \U_VGA|Add2~74_combout\ : std_logic;
SIGNAL \U_VGA|Add2~64\ : std_logic;
SIGNAL \U_VGA|Add2~65_combout\ : std_logic;
SIGNAL \U_VGA|Add2~73_combout\ : std_logic;
SIGNAL \U_VGA|Add2~66\ : std_logic;
SIGNAL \U_VGA|Add2~67_combout\ : std_logic;
SIGNAL \U_VGA|Add2~72_combout\ : std_logic;
SIGNAL \U_VGA|Add2~68\ : std_logic;
SIGNAL \U_VGA|Add2~69_combout\ : std_logic;
SIGNAL \U_VGA|Add2~71_combout\ : std_logic;
SIGNAL \U_VGA|LessThan1~8_combout\ : std_logic;
SIGNAL \U_VGA|LessThan1~9_combout\ : std_logic;
SIGNAL \U_VGA|LessThan1~2_combout\ : std_logic;
SIGNAL \U_VGA|LessThan1~0_combout\ : std_logic;
SIGNAL \U_VGA|LessThan1~3_combout\ : std_logic;
SIGNAL \U_VGA|LessThan1~1_combout\ : std_logic;
SIGNAL \U_VGA|LessThan1~4_combout\ : std_logic;
SIGNAL \U_VGA|LessThan1~6_combout\ : std_logic;
SIGNAL \U_VGA|LessThan1~5_combout\ : std_logic;
SIGNAL \U_VGA|LessThan1~7_combout\ : std_logic;
SIGNAL \U_VGA|ball_move~0_combout\ : std_logic;
SIGNAL \U_VGA|Add6~1\ : std_logic;
SIGNAL \U_VGA|Add6~3\ : std_logic;
SIGNAL \U_VGA|Add6~5\ : std_logic;
SIGNAL \U_VGA|Add6~7\ : std_logic;
SIGNAL \U_VGA|Add6~9\ : std_logic;
SIGNAL \U_VGA|Add6~11\ : std_logic;
SIGNAL \U_VGA|Add6~13\ : std_logic;
SIGNAL \U_VGA|Add6~15\ : std_logic;
SIGNAL \U_VGA|Add6~17\ : std_logic;
SIGNAL \U_VGA|Add6~19\ : std_logic;
SIGNAL \U_VGA|Add6~21\ : std_logic;
SIGNAL \U_VGA|Add6~23\ : std_logic;
SIGNAL \U_VGA|Add6~25\ : std_logic;
SIGNAL \U_VGA|Add6~27\ : std_logic;
SIGNAL \U_VGA|Add6~29\ : std_logic;
SIGNAL \U_VGA|Add6~31\ : std_logic;
SIGNAL \U_VGA|Add6~33\ : std_logic;
SIGNAL \U_VGA|Add6~35\ : std_logic;
SIGNAL \U_VGA|Add6~37\ : std_logic;
SIGNAL \U_VGA|Add6~39\ : std_logic;
SIGNAL \U_VGA|Add6~41\ : std_logic;
SIGNAL \U_VGA|Add6~43\ : std_logic;
SIGNAL \U_VGA|Add6~45\ : std_logic;
SIGNAL \U_VGA|Add6~47\ : std_logic;
SIGNAL \U_VGA|Add6~49\ : std_logic;
SIGNAL \U_VGA|Add6~50_combout\ : std_logic;
SIGNAL \U_VGA|Add6~46_combout\ : std_logic;
SIGNAL \U_VGA|Add6~44_combout\ : std_logic;
SIGNAL \U_VGA|Add6~48_combout\ : std_logic;
SIGNAL \U_VGA|Add6~38_combout\ : std_logic;
SIGNAL \U_VGA|Add6~42_combout\ : std_logic;
SIGNAL \U_VGA|Add6~36_combout\ : std_logic;
SIGNAL \U_VGA|Add6~34_combout\ : std_logic;
SIGNAL \U_VGA|Add6~26_combout\ : std_logic;
SIGNAL \U_VGA|Add6~24_combout\ : std_logic;
SIGNAL \U_VGA|Add6~30_combout\ : std_logic;
SIGNAL \U_VGA|Add6~28_combout\ : std_logic;
SIGNAL \U_VGA|LessThan0~0_combout\ : std_logic;
SIGNAL \U_VGA|Add6~4_combout\ : std_logic;
SIGNAL \U_VGA|Add6~0_combout\ : std_logic;
SIGNAL \U_VGA|LessThan0~1_combout\ : std_logic;
SIGNAL \U_VGA|LessThan0~2_combout\ : std_logic;
SIGNAL \U_VGA|Add6~2_combout\ : std_logic;
SIGNAL \U_VGA|LessThan0~3_combout\ : std_logic;
SIGNAL \U_VGA|Add6~12_combout\ : std_logic;
SIGNAL \U_VGA|Add6~14_combout\ : std_logic;
SIGNAL \U_VGA|Add6~8_combout\ : std_logic;
SIGNAL \U_VGA|Add6~10_combout\ : std_logic;
SIGNAL \U_VGA|LessThan0~4_combout\ : std_logic;
SIGNAL \U_VGA|Add6~32_combout\ : std_logic;
SIGNAL \U_VGA|Add6~16_combout\ : std_logic;
SIGNAL \U_VGA|Add6~22_combout\ : std_logic;
SIGNAL \U_VGA|Add6~20_combout\ : std_logic;
SIGNAL \U_VGA|Add6~18_combout\ : std_logic;
SIGNAL \U_VGA|LessThan0~5_combout\ : std_logic;
SIGNAL \U_VGA|LessThan0~6_combout\ : std_logic;
SIGNAL \U_VGA|LessThan0~7_combout\ : std_logic;
SIGNAL \U_VGA|Add6~40_combout\ : std_logic;
SIGNAL \U_VGA|LessThan0~8_combout\ : std_logic;
SIGNAL \U_VGA|LessThan0~9_combout\ : std_logic;
SIGNAL \U_VGA|mov_x~0_combout\ : std_logic;
SIGNAL \U_VGA|Add2~16_combout\ : std_logic;
SIGNAL \U_VGA|Add2~18_combout\ : std_logic;
SIGNAL \U_VGA|Add6~6_combout\ : std_logic;
SIGNAL \U_VGA|LessThan7~1_cout\ : std_logic;
SIGNAL \U_VGA|LessThan7~3_cout\ : std_logic;
SIGNAL \U_VGA|LessThan7~5_cout\ : std_logic;
SIGNAL \U_VGA|LessThan7~7_cout\ : std_logic;
SIGNAL \U_VGA|LessThan7~9_cout\ : std_logic;
SIGNAL \U_VGA|LessThan7~11_cout\ : std_logic;
SIGNAL \U_VGA|LessThan7~13_cout\ : std_logic;
SIGNAL \U_VGA|LessThan7~15_cout\ : std_logic;
SIGNAL \U_VGA|LessThan7~17_cout\ : std_logic;
SIGNAL \U_VGA|LessThan7~18_combout\ : std_logic;
SIGNAL \U_VGA|Add3~0_combout\ : std_logic;
SIGNAL \U_VGA|Add3~26_combout\ : std_logic;
SIGNAL \U_VGA|Add3~1\ : std_logic;
SIGNAL \U_VGA|Add3~2_combout\ : std_logic;
SIGNAL \U_VGA|Add3~25_combout\ : std_logic;
SIGNAL \U_VGA|Add3~3\ : std_logic;
SIGNAL \U_VGA|Add3~4_combout\ : std_logic;
SIGNAL \U_VGA|Add3~24_combout\ : std_logic;
SIGNAL \U_VGA|Add3~5\ : std_logic;
SIGNAL \U_VGA|Add3~6_combout\ : std_logic;
SIGNAL \U_VGA|Add3~23_combout\ : std_logic;
SIGNAL \U_VGA|Add3~7\ : std_logic;
SIGNAL \U_VGA|Add3~8_combout\ : std_logic;
SIGNAL \U_VGA|Add3~22_combout\ : std_logic;
SIGNAL \U_VGA|Add3~9\ : std_logic;
SIGNAL \U_VGA|Add3~10_combout\ : std_logic;
SIGNAL \U_VGA|Add3~21_combout\ : std_logic;
SIGNAL \U_VGA|Add3~11\ : std_logic;
SIGNAL \U_VGA|Add3~12_combout\ : std_logic;
SIGNAL \U_VGA|Add3~20_combout\ : std_logic;
SIGNAL \U_VGA|Add3~13\ : std_logic;
SIGNAL \U_VGA|Add3~14_combout\ : std_logic;
SIGNAL \U_VGA|Add3~19_combout\ : std_logic;
SIGNAL \U_VGA|Add3~15\ : std_logic;
SIGNAL \U_VGA|Add3~17\ : std_logic;
SIGNAL \U_VGA|Add3~27_combout\ : std_logic;
SIGNAL \U_VGA|Add3~92_combout\ : std_logic;
SIGNAL \U_VGA|Add3~28\ : std_logic;
SIGNAL \U_VGA|Add3~29_combout\ : std_logic;
SIGNAL \U_VGA|Add3~91_combout\ : std_logic;
SIGNAL \U_VGA|Add3~30\ : std_logic;
SIGNAL \U_VGA|Add3~31_combout\ : std_logic;
SIGNAL \U_VGA|Add3~90_combout\ : std_logic;
SIGNAL \U_VGA|Add3~32\ : std_logic;
SIGNAL \U_VGA|Add3~33_combout\ : std_logic;
SIGNAL \U_VGA|Add3~89_combout\ : std_logic;
SIGNAL \U_VGA|Add3~34\ : std_logic;
SIGNAL \U_VGA|Add3~35_combout\ : std_logic;
SIGNAL \U_VGA|Add3~88_combout\ : std_logic;
SIGNAL \U_VGA|Add3~36\ : std_logic;
SIGNAL \U_VGA|Add3~37_combout\ : std_logic;
SIGNAL \U_VGA|Add3~87_combout\ : std_logic;
SIGNAL \U_VGA|Add3~38\ : std_logic;
SIGNAL \U_VGA|Add3~39_combout\ : std_logic;
SIGNAL \U_VGA|Add3~86_combout\ : std_logic;
SIGNAL \U_VGA|Add3~40\ : std_logic;
SIGNAL \U_VGA|Add3~41_combout\ : std_logic;
SIGNAL \U_VGA|Add3~85_combout\ : std_logic;
SIGNAL \U_VGA|Add3~42\ : std_logic;
SIGNAL \U_VGA|Add3~43_combout\ : std_logic;
SIGNAL \U_VGA|Add3~84_combout\ : std_logic;
SIGNAL \U_VGA|Add3~44\ : std_logic;
SIGNAL \U_VGA|Add3~45_combout\ : std_logic;
SIGNAL \U_VGA|Add3~83_combout\ : std_logic;
SIGNAL \U_VGA|Add3~46\ : std_logic;
SIGNAL \U_VGA|Add3~47_combout\ : std_logic;
SIGNAL \U_VGA|Add3~82_combout\ : std_logic;
SIGNAL \U_VGA|Add3~48\ : std_logic;
SIGNAL \U_VGA|Add3~49_combout\ : std_logic;
SIGNAL \U_VGA|Add3~81_combout\ : std_logic;
SIGNAL \U_VGA|Add3~50\ : std_logic;
SIGNAL \U_VGA|Add3~51_combout\ : std_logic;
SIGNAL \U_VGA|Add3~80_combout\ : std_logic;
SIGNAL \U_VGA|Add3~52\ : std_logic;
SIGNAL \U_VGA|Add3~53_combout\ : std_logic;
SIGNAL \U_VGA|Add3~79_combout\ : std_logic;
SIGNAL \U_VGA|Add3~54\ : std_logic;
SIGNAL \U_VGA|Add3~55_combout\ : std_logic;
SIGNAL \U_VGA|Add3~78_combout\ : std_logic;
SIGNAL \U_VGA|Add3~56\ : std_logic;
SIGNAL \U_VGA|Add3~57_combout\ : std_logic;
SIGNAL \U_VGA|Add3~77_combout\ : std_logic;
SIGNAL \U_VGA|Add3~58\ : std_logic;
SIGNAL \U_VGA|Add3~59_combout\ : std_logic;
SIGNAL \U_VGA|Add3~76_combout\ : std_logic;
SIGNAL \U_VGA|Add3~60\ : std_logic;
SIGNAL \U_VGA|Add3~61_combout\ : std_logic;
SIGNAL \U_VGA|Add3~75_combout\ : std_logic;
SIGNAL \U_VGA|Add3~62\ : std_logic;
SIGNAL \U_VGA|Add3~63_combout\ : std_logic;
SIGNAL \U_VGA|Add3~74_combout\ : std_logic;
SIGNAL \U_VGA|Add3~64\ : std_logic;
SIGNAL \U_VGA|Add3~65_combout\ : std_logic;
SIGNAL \U_VGA|Add3~73_combout\ : std_logic;
SIGNAL \U_VGA|Add3~66\ : std_logic;
SIGNAL \U_VGA|Add3~67_combout\ : std_logic;
SIGNAL \U_VGA|Add3~72_combout\ : std_logic;
SIGNAL \U_VGA|Add3~68\ : std_logic;
SIGNAL \U_VGA|Add3~69_combout\ : std_logic;
SIGNAL \U_VGA|Add3~71_combout\ : std_logic;
SIGNAL \U_VGA|LessThan3~6_combout\ : std_logic;
SIGNAL \U_VGA|LessThan3~7_combout\ : std_logic;
SIGNAL \U_VGA|LessThan3~8_combout\ : std_logic;
SIGNAL \U_VGA|LessThan3~3_combout\ : std_logic;
SIGNAL \U_VGA|LessThan3~0_combout\ : std_logic;
SIGNAL \U_VGA|LessThan3~2_combout\ : std_logic;
SIGNAL \U_VGA|LessThan3~1_combout\ : std_logic;
SIGNAL \U_VGA|LessThan3~4_combout\ : std_logic;
SIGNAL \U_VGA|LessThan3~5_combout\ : std_logic;
SIGNAL \U_VGA|LessThan3~9_combout\ : std_logic;
SIGNAL \U_VGA|mov_y~1_combout\ : std_logic;
SIGNAL \U_VGA|Add7~1\ : std_logic;
SIGNAL \U_VGA|Add7~3\ : std_logic;
SIGNAL \U_VGA|Add7~5\ : std_logic;
SIGNAL \U_VGA|Add7~7\ : std_logic;
SIGNAL \U_VGA|Add7~9\ : std_logic;
SIGNAL \U_VGA|Add7~11\ : std_logic;
SIGNAL \U_VGA|Add7~13\ : std_logic;
SIGNAL \U_VGA|Add7~15\ : std_logic;
SIGNAL \U_VGA|Add7~17\ : std_logic;
SIGNAL \U_VGA|Add7~19\ : std_logic;
SIGNAL \U_VGA|Add7~21\ : std_logic;
SIGNAL \U_VGA|Add7~23\ : std_logic;
SIGNAL \U_VGA|Add7~25\ : std_logic;
SIGNAL \U_VGA|Add7~27\ : std_logic;
SIGNAL \U_VGA|Add7~29\ : std_logic;
SIGNAL \U_VGA|Add7~31\ : std_logic;
SIGNAL \U_VGA|Add7~33\ : std_logic;
SIGNAL \U_VGA|Add7~35\ : std_logic;
SIGNAL \U_VGA|Add7~37\ : std_logic;
SIGNAL \U_VGA|Add7~39\ : std_logic;
SIGNAL \U_VGA|Add7~41\ : std_logic;
SIGNAL \U_VGA|Add7~43\ : std_logic;
SIGNAL \U_VGA|Add7~45\ : std_logic;
SIGNAL \U_VGA|Add7~47\ : std_logic;
SIGNAL \U_VGA|Add7~48_combout\ : std_logic;
SIGNAL \U_VGA|Add7~46_combout\ : std_logic;
SIGNAL \U_VGA|Add7~49\ : std_logic;
SIGNAL \U_VGA|Add7~50_combout\ : std_logic;
SIGNAL \U_VGA|Add7~44_combout\ : std_logic;
SIGNAL \U_VGA|Add7~40_combout\ : std_logic;
SIGNAL \U_VGA|Add7~42_combout\ : std_logic;
SIGNAL \U_VGA|Add7~38_combout\ : std_logic;
SIGNAL \U_VGA|Add7~36_combout\ : std_logic;
SIGNAL \U_VGA|Add7~34_combout\ : std_logic;
SIGNAL \U_VGA|Add7~32_combout\ : std_logic;
SIGNAL \U_VGA|Add7~16_combout\ : std_logic;
SIGNAL \U_VGA|Add7~14_combout\ : std_logic;
SIGNAL \U_VGA|Add7~20_combout\ : std_logic;
SIGNAL \U_VGA|Add7~18_combout\ : std_logic;
SIGNAL \U_VGA|LessThan2~4_combout\ : std_logic;
SIGNAL \U_VGA|Add7~30_combout\ : std_logic;
SIGNAL \U_VGA|Add7~24_combout\ : std_logic;
SIGNAL \U_VGA|Add7~22_combout\ : std_logic;
SIGNAL \U_VGA|Add7~26_combout\ : std_logic;
SIGNAL \U_VGA|Add7~28_combout\ : std_logic;
SIGNAL \U_VGA|LessThan2~5_combout\ : std_logic;
SIGNAL \U_VGA|Add7~0_combout\ : std_logic;
SIGNAL \U_VGA|Add7~4_combout\ : std_logic;
SIGNAL \U_VGA|Add7~2_combout\ : std_logic;
SIGNAL \U_VGA|LessThan2~1_combout\ : std_logic;
SIGNAL \U_VGA|LessThan2~2_combout\ : std_logic;
SIGNAL \U_VGA|Add7~10_combout\ : std_logic;
SIGNAL \U_VGA|Add7~8_combout\ : std_logic;
SIGNAL \U_VGA|Add7~12_combout\ : std_logic;
SIGNAL \U_VGA|LessThan2~0_combout\ : std_logic;
SIGNAL \U_VGA|LessThan2~3_combout\ : std_logic;
SIGNAL \U_VGA|LessThan2~6_combout\ : std_logic;
SIGNAL \U_VGA|LessThan2~7_combout\ : std_logic;
SIGNAL \U_VGA|LessThan2~8_combout\ : std_logic;
SIGNAL \U_VGA|LessThan2~9_combout\ : std_logic;
SIGNAL \U_VGA|LessThan2~10_combout\ : std_logic;
SIGNAL \U_VGA|mov_y~0_combout\ : std_logic;
SIGNAL \U_VGA|Add3~16_combout\ : std_logic;
SIGNAL \U_VGA|Add3~18_combout\ : std_logic;
SIGNAL \U_VGA|Add7~6_combout\ : std_logic;
SIGNAL \U_VGA|LessThan9~1_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~3_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~5_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~7_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~9_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~11_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~13_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~15_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~17_cout\ : std_logic;
SIGNAL \U_VGA|LessThan9~18_combout\ : std_logic;
SIGNAL \U_VGA|LessThan8~1_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~3_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~5_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~7_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~9_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~11_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~13_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~15_cout\ : std_logic;
SIGNAL \U_VGA|LessThan8~16_combout\ : std_logic;
SIGNAL \U_VGA|sync|LessThan5~1_combout\ : std_logic;
SIGNAL \U_VGA|sync|LessThan5~0_combout\ : std_logic;
SIGNAL \U_VGA|sync|LessThan5~2_combout\ : std_logic;
SIGNAL \U_VGA|draw~4_combout\ : std_logic;
SIGNAL \U_VGA|LessThan6~1_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~3_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~5_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~7_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~9_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~11_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~13_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~15_cout\ : std_logic;
SIGNAL \U_VGA|LessThan6~16_combout\ : std_logic;
SIGNAL \U_VGA|draw~5_combout\ : std_logic;
SIGNAL \switch[0]~input_o\ : std_logic;
SIGNAL \U_VGA|Add5~15\ : std_logic;
SIGNAL \U_VGA|Add5~17\ : std_logic;
SIGNAL \U_VGA|Add5~18_combout\ : std_logic;
SIGNAL \U_VGA|Add4~17\ : std_logic;
SIGNAL \U_VGA|Add4~18_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~33_combout\ : std_logic;
SIGNAL \U_VGA|Add5~53\ : std_logic;
SIGNAL \U_VGA|Add5~54_combout\ : std_logic;
SIGNAL \U_VGA|Add5~57\ : std_logic;
SIGNAL \U_VGA|Add5~58_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1[9]~1_combout\ : std_logic;
SIGNAL \switch[1]~input_o\ : std_logic;
SIGNAL \U_VGA|Add5~45\ : std_logic;
SIGNAL \U_VGA|Add5~47\ : std_logic;
SIGNAL \U_VGA|Add5~48_combout\ : std_logic;
SIGNAL \U_VGA|Add5~41\ : std_logic;
SIGNAL \U_VGA|Add5~42_combout\ : std_logic;
SIGNAL \U_VGA|Add5~31\ : std_logic;
SIGNAL \U_VGA|Add5~32_combout\ : std_logic;
SIGNAL \U_VGA|Add5~33\ : std_logic;
SIGNAL \U_VGA|Add5~34_combout\ : std_logic;
SIGNAL \U_VGA|Add5~35\ : std_logic;
SIGNAL \U_VGA|Add5~37\ : std_logic;
SIGNAL \U_VGA|Add5~38_combout\ : std_logic;
SIGNAL \U_VGA|Add5~36_combout\ : std_logic;
SIGNAL \U_VGA|LessThan5~1_combout\ : std_logic;
SIGNAL \U_VGA|Add5~23\ : std_logic;
SIGNAL \U_VGA|Add5~24_combout\ : std_logic;
SIGNAL \U_VGA|Add5~25\ : std_logic;
SIGNAL \U_VGA|Add5~26_combout\ : std_logic;
SIGNAL \U_VGA|LessThan5~0_combout\ : std_logic;
SIGNAL \U_VGA|LessThan5~2_combout\ : std_logic;
SIGNAL \U_VGA|Add5~19\ : std_logic;
SIGNAL \U_VGA|Add5~20_combout\ : std_logic;
SIGNAL \U_VGA|Add5~16_combout\ : std_logic;
SIGNAL \U_VGA|LessThan5~6_combout\ : std_logic;
SIGNAL \U_VGA|Add5~0_combout\ : std_logic;
SIGNAL \U_VGA|Add4~0_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~11_combout\ : std_logic;
SIGNAL \U_VGA|Add4~1\ : std_logic;
SIGNAL \U_VGA|Add4~2_combout\ : std_logic;
SIGNAL \U_VGA|Add5~1\ : std_logic;
SIGNAL \U_VGA|Add5~2_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~10_combout\ : std_logic;
SIGNAL \U_VGA|Add4~3\ : std_logic;
SIGNAL \U_VGA|Add4~4_combout\ : std_logic;
SIGNAL \U_VGA|paddle1_move~0_combout\ : std_logic;
SIGNAL \U_VGA|Add5~3\ : std_logic;
SIGNAL \U_VGA|Add5~4_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~9_combout\ : std_logic;
SIGNAL \U_VGA|Add5~5\ : std_logic;
SIGNAL \U_VGA|Add5~7\ : std_logic;
SIGNAL \U_VGA|Add5~8_combout\ : std_logic;
SIGNAL \U_VGA|Add5~6_combout\ : std_logic;
SIGNAL \U_VGA|LessThan5~4_combout\ : std_logic;
SIGNAL \U_VGA|LessThan5~3_combout\ : std_logic;
SIGNAL \U_VGA|LessThan5~5_combout\ : std_logic;
SIGNAL \U_VGA|Add5~46_combout\ : std_logic;
SIGNAL \U_VGA|LessThan5~7_combout\ : std_logic;
SIGNAL \U_VGA|LessThan5~8_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1[9]~2_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1[9]~3_combout\ : std_logic;
SIGNAL \U_VGA|Add4~19\ : std_logic;
SIGNAL \U_VGA|Add4~20_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~32_combout\ : std_logic;
SIGNAL \U_VGA|Add5~21\ : std_logic;
SIGNAL \U_VGA|Add5~22_combout\ : std_logic;
SIGNAL \U_VGA|Add4~21\ : std_logic;
SIGNAL \U_VGA|Add4~22_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~31_combout\ : std_logic;
SIGNAL \U_VGA|Add4~23\ : std_logic;
SIGNAL \U_VGA|Add4~24_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~30_combout\ : std_logic;
SIGNAL \U_VGA|Add4~25\ : std_logic;
SIGNAL \U_VGA|Add4~26_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~29_combout\ : std_logic;
SIGNAL \U_VGA|Add5~27\ : std_logic;
SIGNAL \U_VGA|Add5~28_combout\ : std_logic;
SIGNAL \U_VGA|Add4~27\ : std_logic;
SIGNAL \U_VGA|Add4~28_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~28_combout\ : std_logic;
SIGNAL \U_VGA|Add5~29\ : std_logic;
SIGNAL \U_VGA|Add5~30_combout\ : std_logic;
SIGNAL \U_VGA|Add4~29\ : std_logic;
SIGNAL \U_VGA|Add4~30_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~27_combout\ : std_logic;
SIGNAL \U_VGA|Add4~31\ : std_logic;
SIGNAL \U_VGA|Add4~32_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~26_combout\ : std_logic;
SIGNAL \U_VGA|Add4~33\ : std_logic;
SIGNAL \U_VGA|Add4~34_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~25_combout\ : std_logic;
SIGNAL \U_VGA|Add4~35\ : std_logic;
SIGNAL \U_VGA|Add4~36_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~24_combout\ : std_logic;
SIGNAL \U_VGA|Add4~37\ : std_logic;
SIGNAL \U_VGA|Add4~38_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~23_combout\ : std_logic;
SIGNAL \U_VGA|Add5~39\ : std_logic;
SIGNAL \U_VGA|Add5~40_combout\ : std_logic;
SIGNAL \U_VGA|Add4~39\ : std_logic;
SIGNAL \U_VGA|Add4~40_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~22_combout\ : std_logic;
SIGNAL \U_VGA|Add4~41\ : std_logic;
SIGNAL \U_VGA|Add4~42_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~21_combout\ : std_logic;
SIGNAL \U_VGA|Add5~43\ : std_logic;
SIGNAL \U_VGA|Add5~44_combout\ : std_logic;
SIGNAL \U_VGA|Add4~43\ : std_logic;
SIGNAL \U_VGA|Add4~44_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~20_combout\ : std_logic;
SIGNAL \U_VGA|Add4~45\ : std_logic;
SIGNAL \U_VGA|Add4~46_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~19_combout\ : std_logic;
SIGNAL \U_VGA|Add4~47\ : std_logic;
SIGNAL \U_VGA|Add4~48_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~18_combout\ : std_logic;
SIGNAL \U_VGA|Add5~49\ : std_logic;
SIGNAL \U_VGA|Add5~50_combout\ : std_logic;
SIGNAL \U_VGA|Add4~49\ : std_logic;
SIGNAL \U_VGA|Add4~50_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~17_combout\ : std_logic;
SIGNAL \U_VGA|Add5~51\ : std_logic;
SIGNAL \U_VGA|Add5~52_combout\ : std_logic;
SIGNAL \U_VGA|Add4~51\ : std_logic;
SIGNAL \U_VGA|Add4~52_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~16_combout\ : std_logic;
SIGNAL \U_VGA|Add4~53\ : std_logic;
SIGNAL \U_VGA|Add4~54_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~15_combout\ : std_logic;
SIGNAL \U_VGA|Add5~55\ : std_logic;
SIGNAL \U_VGA|Add5~56_combout\ : std_logic;
SIGNAL \U_VGA|Add4~55\ : std_logic;
SIGNAL \U_VGA|Add4~56_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~14_combout\ : std_logic;
SIGNAL \U_VGA|Add4~57\ : std_logic;
SIGNAL \U_VGA|Add4~58_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~13_combout\ : std_logic;
SIGNAL \U_VGA|Add5~59\ : std_logic;
SIGNAL \U_VGA|Add5~60_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~12_combout\ : std_logic;
SIGNAL \U_VGA|Add4~59\ : std_logic;
SIGNAL \U_VGA|Add4~60_combout\ : std_logic;
SIGNAL \U_VGA|Add4~5\ : std_logic;
SIGNAL \U_VGA|Add4~6_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~8_combout\ : std_logic;
SIGNAL \U_VGA|Add4~7\ : std_logic;
SIGNAL \U_VGA|Add4~8_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~7_combout\ : std_logic;
SIGNAL \U_VGA|Add5~9\ : std_logic;
SIGNAL \U_VGA|Add5~10_combout\ : std_logic;
SIGNAL \U_VGA|Add4~9\ : std_logic;
SIGNAL \U_VGA|Add4~10_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~6_combout\ : std_logic;
SIGNAL \U_VGA|Add5~11\ : std_logic;
SIGNAL \U_VGA|Add5~12_combout\ : std_logic;
SIGNAL \U_VGA|Add4~11\ : std_logic;
SIGNAL \U_VGA|Add4~12_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~5_combout\ : std_logic;
SIGNAL \U_VGA|Add5~13\ : std_logic;
SIGNAL \U_VGA|Add5~14_combout\ : std_logic;
SIGNAL \U_VGA|Add4~13\ : std_logic;
SIGNAL \U_VGA|Add4~14_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~4_combout\ : std_logic;
SIGNAL \U_VGA|Add4~15\ : std_logic;
SIGNAL \U_VGA|Add4~16_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1~0_combout\ : std_logic;
SIGNAL \U_VGA|LessThan12~1_cout\ : std_logic;
SIGNAL \U_VGA|LessThan12~3_cout\ : std_logic;
SIGNAL \U_VGA|LessThan12~5_cout\ : std_logic;
SIGNAL \U_VGA|LessThan12~7_cout\ : std_logic;
SIGNAL \U_VGA|LessThan12~9_cout\ : std_logic;
SIGNAL \U_VGA|LessThan12~11_cout\ : std_logic;
SIGNAL \U_VGA|LessThan12~13_cout\ : std_logic;
SIGNAL \U_VGA|LessThan12~15_cout\ : std_logic;
SIGNAL \U_VGA|LessThan12~16_combout\ : std_logic;
SIGNAL \U_VGA|red~2_combout\ : std_logic;
SIGNAL \U_VGA|red~3_combout\ : std_logic;
SIGNAL \U_VGA|red~4_combout\ : std_logic;
SIGNAL \U_VGA|Add9~1\ : std_logic;
SIGNAL \U_VGA|Add9~3\ : std_logic;
SIGNAL \U_VGA|Add9~5\ : std_logic;
SIGNAL \U_VGA|Add9~7\ : std_logic;
SIGNAL \U_VGA|Add9~9\ : std_logic;
SIGNAL \U_VGA|Add9~11\ : std_logic;
SIGNAL \U_VGA|Add9~13\ : std_logic;
SIGNAL \U_VGA|Add9~14_combout\ : std_logic;
SIGNAL \U_VGA|Add9~12_combout\ : std_logic;
SIGNAL \U_VGA|Add9~10_combout\ : std_logic;
SIGNAL \U_VGA|Add9~8_combout\ : std_logic;
SIGNAL \U_VGA|Add9~6_combout\ : std_logic;
SIGNAL \U_VGA|Add9~4_combout\ : std_logic;
SIGNAL \U_VGA|Add9~2_combout\ : std_logic;
SIGNAL \U_VGA|Add9~0_combout\ : std_logic;
SIGNAL \U_VGA|LessThan13~1_cout\ : std_logic;
SIGNAL \U_VGA|LessThan13~3_cout\ : std_logic;
SIGNAL \U_VGA|LessThan13~5_cout\ : std_logic;
SIGNAL \U_VGA|LessThan13~7_cout\ : std_logic;
SIGNAL \U_VGA|LessThan13~9_cout\ : std_logic;
SIGNAL \U_VGA|LessThan13~11_cout\ : std_logic;
SIGNAL \U_VGA|LessThan13~13_cout\ : std_logic;
SIGNAL \U_VGA|LessThan13~15_cout\ : std_logic;
SIGNAL \U_VGA|LessThan13~17_cout\ : std_logic;
SIGNAL \U_VGA|LessThan13~18_combout\ : std_logic;
SIGNAL \U_VGA|red~5_combout\ : std_logic;
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
SIGNAL \U_VGA|sync|h_sync~4_combout\ : std_logic;
SIGNAL \U_VGA|sync|h_sync~2_combout\ : std_logic;
SIGNAL \U_VGA|sync|h_sync~3_combout\ : std_logic;
SIGNAL \U_VGA|sync|h_sync~5_combout\ : std_logic;
SIGNAL \U_VGA|draw~0_combout\ : std_logic;
SIGNAL \U_VGA|sync|v_sync~0_combout\ : std_logic;
SIGNAL \U_VGA|sync|v_sync~1_combout\ : std_logic;
SIGNAL \U_VGA|y_pos_p1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U_VGA|red\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_VGA|sync|h_counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_VGA|green\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_VGA|blue\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_VGA|mov_x\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U_VGA|sync|v_counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_VGA|x_pos\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U_VGA|y_pos\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U_VGA|mov_y\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U_VGA|clk_div|counter\ : std_logic_vector(20 DOWNTO 0);
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

\button_n[0]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \button_n[0]~input_o\);

\U_CLK_DIV|temp_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_CLK_DIV|temp_clk~q\);

\U_VGA|clk_div|temp_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_VGA|clk_div|temp_clk~q\);
\ALT_INV_button_n[0]~input_o\ <= NOT \button_n[0]~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
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
	i => \U_VGA|sync|h_sync~5_combout\,
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
	i => \U_VGA|sync|v_sync~1_combout\,
	devoe => ww_devoe,
	o => \v_sync~output_o\);

-- Location: IOOBUF_X29_Y0_N16
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

-- Location: IOOBUF_X78_Y18_N16
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

-- Location: IOOBUF_X71_Y54_N30
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

-- Location: IOOBUF_X46_Y54_N16
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

-- Location: IOOBUF_X78_Y33_N2
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

-- Location: IOOBUF_X56_Y0_N2
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

-- Location: IOOBUF_X26_Y0_N2
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

-- Location: IOOBUF_X0_Y35_N2
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

-- Location: IOOBUF_X14_Y0_N9
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

-- Location: IOOBUF_X22_Y39_N23
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

-- Location: IOOBUF_X24_Y0_N2
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

-- Location: IOOBUF_X66_Y54_N9
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

-- Location: IOOBUF_X60_Y0_N30
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

-- Location: IOOBUF_X78_Y34_N16
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

-- Location: IOOBUF_X78_Y17_N2
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

-- Location: IOOBUF_X69_Y54_N9
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

-- Location: IOOBUF_X49_Y0_N16
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

-- Location: IOOBUF_X24_Y0_N16
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

-- Location: IOOBUF_X0_Y27_N23
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

-- Location: IOOBUF_X74_Y54_N2
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

-- Location: IOOBUF_X78_Y33_N16
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

-- Location: IOOBUF_X24_Y0_N9
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

-- Location: IOOBUF_X58_Y54_N23
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

-- Location: IOOBUF_X78_Y40_N9
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

-- Location: IOOBUF_X22_Y39_N30
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

-- Location: IOOBUF_X26_Y0_N30
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

-- Location: IOOBUF_X78_Y16_N24
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

-- Location: IOOBUF_X78_Y45_N16
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

-- Location: IOOBUF_X0_Y29_N9
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

-- Location: IOOBUF_X38_Y0_N9
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

-- Location: IOOBUF_X62_Y0_N16
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

-- Location: IOOBUF_X78_Y36_N2
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

-- Location: IOOBUF_X58_Y54_N2
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

-- Location: IOOBUF_X56_Y0_N9
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

-- Location: IOOBUF_X51_Y54_N9
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

-- Location: IOOBUF_X0_Y35_N23
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

-- Location: IOOBUF_X78_Y23_N2
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

-- Location: IOOBUF_X78_Y3_N23
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

-- Location: IOOBUF_X56_Y54_N16
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

-- Location: IOOBUF_X14_Y0_N2
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

-- Location: IOOBUF_X78_Y18_N2
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

-- Location: IOOBUF_X66_Y54_N2
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

-- Location: IOOBUF_X64_Y54_N2
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

-- Location: IOOBUF_X0_Y34_N23
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

-- Location: IOOBUF_X0_Y25_N9
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

-- Location: IOOBUF_X0_Y36_N9
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

-- Location: IOOBUF_X36_Y39_N23
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

-- Location: IOOBUF_X24_Y0_N23
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

-- Location: LCCOMB_X35_Y1_N18
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

-- Location: LCCOMB_X35_Y1_N28
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

-- Location: IOIBUF_X0_Y18_N15
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

-- Location: CLKCTRL_G0
\button_n[0]~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \button_n[0]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \button_n[0]~inputclkctrl_outclk\);

-- Location: FF_X35_Y1_N29
\U_CLK_DIV|temp_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~input_o\,
	d => \U_CLK_DIV|temp_clk~feeder_combout\,
	clrn => \button_n[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_DIV|temp_clk~q\);

-- Location: CLKCTRL_G17
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

-- Location: LCCOMB_X4_Y23_N4
\U_VGA|sync|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Add1~0_combout\ = \U_VGA|sync|h_counter\(0) $ (VCC)
-- \U_VGA|sync|Add1~1\ = CARRY(\U_VGA|sync|h_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(0),
	datad => VCC,
	combout => \U_VGA|sync|Add1~0_combout\,
	cout => \U_VGA|sync|Add1~1\);

-- Location: FF_X3_Y23_N15
\U_VGA|sync|h_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|sync|Add1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|sync|h_counter\(0));

-- Location: LCCOMB_X4_Y23_N8
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

-- Location: LCCOMB_X4_Y23_N10
\U_VGA|sync|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Add1~6_combout\ = (\U_VGA|sync|h_counter\(3) & (!\U_VGA|sync|Add1~5\)) # (!\U_VGA|sync|h_counter\(3) & ((\U_VGA|sync|Add1~5\) # (GND)))
-- \U_VGA|sync|Add1~7\ = CARRY((!\U_VGA|sync|Add1~5\) # (!\U_VGA|sync|h_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(3),
	datad => VCC,
	cin => \U_VGA|sync|Add1~5\,
	combout => \U_VGA|sync|Add1~6_combout\,
	cout => \U_VGA|sync|Add1~7\);

-- Location: FF_X4_Y23_N11
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

-- Location: LCCOMB_X4_Y23_N12
\U_VGA|sync|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Add1~8_combout\ = (\U_VGA|sync|h_counter\(4) & (\U_VGA|sync|Add1~7\ $ (GND))) # (!\U_VGA|sync|h_counter\(4) & (!\U_VGA|sync|Add1~7\ & VCC))
-- \U_VGA|sync|Add1~9\ = CARRY((\U_VGA|sync|h_counter\(4) & !\U_VGA|sync|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(4),
	datad => VCC,
	cin => \U_VGA|sync|Add1~7\,
	combout => \U_VGA|sync|Add1~8_combout\,
	cout => \U_VGA|sync|Add1~9\);

-- Location: FF_X4_Y23_N13
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

-- Location: LCCOMB_X4_Y23_N14
\U_VGA|sync|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Add1~10_combout\ = (\U_VGA|sync|h_counter\(5) & (!\U_VGA|sync|Add1~9\)) # (!\U_VGA|sync|h_counter\(5) & ((\U_VGA|sync|Add1~9\) # (GND)))
-- \U_VGA|sync|Add1~11\ = CARRY((!\U_VGA|sync|Add1~9\) # (!\U_VGA|sync|h_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|sync|h_counter\(5),
	datad => VCC,
	cin => \U_VGA|sync|Add1~9\,
	combout => \U_VGA|sync|Add1~10_combout\,
	cout => \U_VGA|sync|Add1~11\);

-- Location: LCCOMB_X4_Y23_N28
\U_VGA|sync|h_counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|h_counter~0_combout\ = (!\U_VGA|sync|Equal0~2_combout\ & \U_VGA|sync|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|sync|Equal0~2_combout\,
	datac => \U_VGA|sync|Add1~10_combout\,
	combout => \U_VGA|sync|h_counter~0_combout\);

-- Location: FF_X4_Y23_N29
\U_VGA|sync|h_counter[5]\ : dffeas
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
	q => \U_VGA|sync|h_counter\(5));

-- Location: LCCOMB_X4_Y23_N16
\U_VGA|sync|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Add1~12_combout\ = (\U_VGA|sync|h_counter\(6) & (\U_VGA|sync|Add1~11\ $ (GND))) # (!\U_VGA|sync|h_counter\(6) & (!\U_VGA|sync|Add1~11\ & VCC))
-- \U_VGA|sync|Add1~13\ = CARRY((\U_VGA|sync|h_counter\(6) & !\U_VGA|sync|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|sync|h_counter\(6),
	datad => VCC,
	cin => \U_VGA|sync|Add1~11\,
	combout => \U_VGA|sync|Add1~12_combout\,
	cout => \U_VGA|sync|Add1~13\);

-- Location: FF_X4_Y23_N17
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

-- Location: LCCOMB_X4_Y23_N18
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

-- Location: FF_X4_Y23_N19
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

-- Location: LCCOMB_X2_Y23_N22
\U_VGA|sync|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Equal0~0_combout\ = (\U_VGA|sync|h_counter\(0) & (!\U_VGA|sync|h_counter\(7) & (!\U_VGA|sync|h_counter\(4) & !\U_VGA|sync|h_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(0),
	datab => \U_VGA|sync|h_counter\(7),
	datac => \U_VGA|sync|h_counter\(4),
	datad => \U_VGA|sync|h_counter\(6),
	combout => \U_VGA|sync|Equal0~0_combout\);

-- Location: LCCOMB_X4_Y23_N20
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

-- Location: LCCOMB_X4_Y23_N26
\U_VGA|sync|h_counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|h_counter~2_combout\ = (!\U_VGA|sync|Equal0~2_combout\ & \U_VGA|sync|Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|sync|Equal0~2_combout\,
	datad => \U_VGA|sync|Add1~16_combout\,
	combout => \U_VGA|sync|h_counter~2_combout\);

-- Location: FF_X4_Y23_N27
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

-- Location: LCCOMB_X2_Y23_N4
\U_VGA|sync|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Equal0~1_combout\ = (!\U_VGA|sync|h_counter\(1) & (!\U_VGA|sync|h_counter\(3) & (\U_VGA|sync|h_counter\(5) & !\U_VGA|sync|h_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(1),
	datab => \U_VGA|sync|h_counter\(3),
	datac => \U_VGA|sync|h_counter\(5),
	datad => \U_VGA|sync|h_counter\(2),
	combout => \U_VGA|sync|Equal0~1_combout\);

-- Location: LCCOMB_X4_Y23_N22
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

-- Location: LCCOMB_X4_Y23_N0
\U_VGA|sync|h_counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|h_counter~3_combout\ = (!\U_VGA|sync|Equal0~2_combout\ & \U_VGA|sync|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|sync|Equal0~2_combout\,
	datac => \U_VGA|sync|Add1~18_combout\,
	combout => \U_VGA|sync|h_counter~3_combout\);

-- Location: FF_X4_Y23_N1
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

-- Location: LCCOMB_X2_Y23_N26
\U_VGA|sync|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Equal0~2_combout\ = (\U_VGA|sync|Equal0~0_combout\ & (\U_VGA|sync|h_counter\(8) & (\U_VGA|sync|Equal0~1_combout\ & \U_VGA|sync|h_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|Equal0~0_combout\,
	datab => \U_VGA|sync|h_counter\(8),
	datac => \U_VGA|sync|Equal0~1_combout\,
	datad => \U_VGA|sync|h_counter\(9),
	combout => \U_VGA|sync|Equal0~2_combout\);

-- Location: LCCOMB_X4_Y23_N6
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

-- Location: LCCOMB_X4_Y23_N30
\U_VGA|sync|h_counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|h_counter~1_combout\ = (!\U_VGA|sync|Equal0~2_combout\ & \U_VGA|sync|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|sync|Equal0~2_combout\,
	datad => \U_VGA|sync|Add1~2_combout\,
	combout => \U_VGA|sync|h_counter~1_combout\);

-- Location: FF_X3_Y23_N29
\U_VGA|sync|h_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|sync|h_counter~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|sync|h_counter\(1));

-- Location: FF_X4_Y23_N9
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

-- Location: LCCOMB_X2_Y23_N20
\U_VGA|sync|h_sync~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|h_sync~0_combout\ = (\U_VGA|sync|h_counter\(5) & (\U_VGA|sync|h_counter\(4) & \U_VGA|sync|h_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(5),
	datac => \U_VGA|sync|h_counter\(4),
	datad => \U_VGA|sync|h_counter\(6),
	combout => \U_VGA|sync|h_sync~0_combout\);

-- Location: LCCOMB_X2_Y23_N10
\U_VGA|sync|h_sync~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|h_sync~1_combout\ = (\U_VGA|sync|h_sync~0_combout\ & ((\U_VGA|sync|h_counter\(2)) # (\U_VGA|sync|h_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|sync|h_counter\(2),
	datac => \U_VGA|sync|h_counter\(3),
	datad => \U_VGA|sync|h_sync~0_combout\,
	combout => \U_VGA|sync|h_sync~1_combout\);

-- Location: LCCOMB_X2_Y23_N8
\U_VGA|sync|LessThan4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|LessThan4~0_combout\ = (\U_VGA|sync|h_counter\(1) & (\U_VGA|sync|h_counter\(2) & (\U_VGA|sync|h_counter\(3) & \U_VGA|sync|h_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(1),
	datab => \U_VGA|sync|h_counter\(2),
	datac => \U_VGA|sync|h_counter\(3),
	datad => \U_VGA|sync|h_counter\(0),
	combout => \U_VGA|sync|LessThan4~0_combout\);

-- Location: LCCOMB_X3_Y23_N16
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

-- Location: LCCOMB_X3_Y23_N18
\U_VGA|sync|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Add0~10_combout\ = (\U_VGA|sync|v_counter\(5) & (!\U_VGA|sync|Add0~9\)) # (!\U_VGA|sync|v_counter\(5) & ((\U_VGA|sync|Add0~9\) # (GND)))
-- \U_VGA|sync|Add0~11\ = CARRY((!\U_VGA|sync|Add0~9\) # (!\U_VGA|sync|v_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|sync|v_counter\(5),
	datad => VCC,
	cin => \U_VGA|sync|Add0~9\,
	combout => \U_VGA|sync|Add0~10_combout\,
	cout => \U_VGA|sync|Add0~11\);

-- Location: FF_X3_Y23_N19
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

-- Location: LCCOMB_X3_Y23_N20
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

-- Location: FF_X3_Y23_N21
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

-- Location: LCCOMB_X3_Y23_N22
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

-- Location: FF_X3_Y23_N23
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

-- Location: LCCOMB_X3_Y23_N6
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

-- Location: LCCOMB_X3_Y23_N24
\U_VGA|sync|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Add0~16_combout\ = (\U_VGA|sync|v_counter\(8) & (\U_VGA|sync|Add0~15\ $ (GND))) # (!\U_VGA|sync|v_counter\(8) & (!\U_VGA|sync|Add0~15\ & VCC))
-- \U_VGA|sync|Add0~17\ = CARRY((\U_VGA|sync|v_counter\(8) & !\U_VGA|sync|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|sync|v_counter\(8),
	datad => VCC,
	cin => \U_VGA|sync|Add0~15\,
	combout => \U_VGA|sync|Add0~16_combout\,
	cout => \U_VGA|sync|Add0~17\);

-- Location: FF_X3_Y23_N25
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

-- Location: LCCOMB_X3_Y23_N8
\U_VGA|sync|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Add0~0_combout\ = \U_VGA|sync|v_counter\(0) $ (VCC)
-- \U_VGA|sync|Add0~1\ = CARRY(\U_VGA|sync|v_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(0),
	datad => VCC,
	combout => \U_VGA|sync|Add0~0_combout\,
	cout => \U_VGA|sync|Add0~1\);

-- Location: LCCOMB_X3_Y23_N30
\U_VGA|sync|v_counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|v_counter~1_combout\ = (\U_VGA|sync|Add0~0_combout\ & !\U_VGA|sync|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|sync|Add0~0_combout\,
	datad => \U_VGA|sync|Equal1~2_combout\,
	combout => \U_VGA|sync|v_counter~1_combout\);

-- Location: FF_X3_Y23_N31
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

-- Location: LCCOMB_X3_Y23_N10
\U_VGA|sync|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Add0~2_combout\ = (\U_VGA|sync|v_counter\(1) & (!\U_VGA|sync|Add0~1\)) # (!\U_VGA|sync|v_counter\(1) & ((\U_VGA|sync|Add0~1\) # (GND)))
-- \U_VGA|sync|Add0~3\ = CARRY((!\U_VGA|sync|Add0~1\) # (!\U_VGA|sync|v_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(1),
	datad => VCC,
	cin => \U_VGA|sync|Add0~1\,
	combout => \U_VGA|sync|Add0~2_combout\,
	cout => \U_VGA|sync|Add0~3\);

-- Location: LCCOMB_X2_Y22_N28
\U_VGA|sync|v_counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|v_counter~0_combout\ = (\U_VGA|sync|Add0~2_combout\ & !\U_VGA|sync|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|sync|Add0~2_combout\,
	datad => \U_VGA|sync|Equal1~2_combout\,
	combout => \U_VGA|sync|v_counter~0_combout\);

-- Location: FF_X2_Y22_N29
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

-- Location: LCCOMB_X3_Y23_N12
\U_VGA|sync|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Add0~4_combout\ = (\U_VGA|sync|v_counter\(2) & (\U_VGA|sync|Add0~3\ $ (GND))) # (!\U_VGA|sync|v_counter\(2) & (!\U_VGA|sync|Add0~3\ & VCC))
-- \U_VGA|sync|Add0~5\ = CARRY((\U_VGA|sync|v_counter\(2) & !\U_VGA|sync|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|sync|v_counter\(2),
	datad => VCC,
	cin => \U_VGA|sync|Add0~3\,
	combout => \U_VGA|sync|Add0~4_combout\,
	cout => \U_VGA|sync|Add0~5\);

-- Location: LCCOMB_X3_Y23_N4
\U_VGA|sync|v_counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|v_counter~2_combout\ = (!\U_VGA|sync|Equal1~2_combout\ & \U_VGA|sync|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|sync|Equal1~2_combout\,
	datad => \U_VGA|sync|Add0~4_combout\,
	combout => \U_VGA|sync|v_counter~2_combout\);

-- Location: FF_X3_Y23_N5
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

-- Location: LCCOMB_X3_Y23_N0
\U_VGA|sync|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Equal1~0_combout\ = (\U_VGA|sync|v_counter\(1) & (\U_VGA|sync|v_counter\(2) & (!\U_VGA|sync|v_counter\(0) & \U_VGA|sync|v_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(1),
	datab => \U_VGA|sync|v_counter\(2),
	datac => \U_VGA|sync|v_counter\(0),
	datad => \U_VGA|sync|v_counter\(3),
	combout => \U_VGA|sync|Equal1~0_combout\);

-- Location: LCCOMB_X3_Y23_N26
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

-- Location: LCCOMB_X3_Y23_N2
\U_VGA|sync|v_counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|v_counter~4_combout\ = (\U_VGA|sync|Add0~18_combout\ & !\U_VGA|sync|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|sync|Add0~18_combout\,
	datad => \U_VGA|sync|Equal1~2_combout\,
	combout => \U_VGA|sync|v_counter~4_combout\);

-- Location: FF_X3_Y23_N3
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

-- Location: LCCOMB_X2_Y23_N24
\U_VGA|sync|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|Equal1~2_combout\ = (\U_VGA|sync|Equal1~1_combout\ & (!\U_VGA|sync|v_counter\(8) & (\U_VGA|sync|Equal1~0_combout\ & \U_VGA|sync|v_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|Equal1~1_combout\,
	datab => \U_VGA|sync|v_counter\(8),
	datac => \U_VGA|sync|Equal1~0_combout\,
	datad => \U_VGA|sync|v_counter\(9),
	combout => \U_VGA|sync|Equal1~2_combout\);

-- Location: LCCOMB_X3_Y23_N14
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

-- Location: LCCOMB_X2_Y22_N2
\U_VGA|sync|v_counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|v_counter~3_combout\ = (!\U_VGA|sync|Equal1~2_combout\ & \U_VGA|sync|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|sync|Equal1~2_combout\,
	datac => \U_VGA|sync|Add0~6_combout\,
	combout => \U_VGA|sync|v_counter~3_combout\);

-- Location: FF_X2_Y22_N3
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

-- Location: FF_X3_Y23_N17
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

-- Location: LCCOMB_X3_Y22_N26
\U_VGA|draw~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|draw~2_combout\ = ((!\U_VGA|sync|v_counter\(2) & ((!\U_VGA|sync|v_counter\(0)) # (!\U_VGA|sync|v_counter\(1))))) # (!\U_VGA|sync|v_counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(3),
	datab => \U_VGA|sync|v_counter\(1),
	datac => \U_VGA|sync|v_counter\(0),
	datad => \U_VGA|sync|v_counter\(2),
	combout => \U_VGA|draw~2_combout\);

-- Location: LCCOMB_X3_Y22_N24
\U_VGA|draw~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|draw~3_combout\ = (\U_VGA|sync|v_counter\(4) & ((\U_VGA|draw~2_combout\) # ((!\U_VGA|sync|v_counter\(5) & \U_VGA|sync|v_counter\(3))))) # (!\U_VGA|sync|v_counter\(4) & ((\U_VGA|sync|v_counter\(5)) # ((\U_VGA|sync|v_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(4),
	datab => \U_VGA|sync|v_counter\(5),
	datac => \U_VGA|draw~2_combout\,
	datad => \U_VGA|sync|v_counter\(3),
	combout => \U_VGA|draw~3_combout\);

-- Location: LCCOMB_X4_Y23_N24
\U_VGA|red~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|red~0_combout\ = (\U_VGA|sync|v_counter\(7) & (!\U_VGA|sync|v_counter\(8) & (\U_VGA|sync|h_counter\(9) & \U_VGA|sync|v_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(7),
	datab => \U_VGA|sync|v_counter\(8),
	datac => \U_VGA|sync|h_counter\(9),
	datad => \U_VGA|sync|v_counter\(6),
	combout => \U_VGA|red~0_combout\);

-- Location: LCCOMB_X2_Y23_N16
\U_VGA|red~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|red~1_combout\ = (\U_VGA|sync|h_sync~1_combout\ & (!\U_VGA|sync|LessThan4~0_combout\ & (\U_VGA|draw~3_combout\ & \U_VGA|red~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_sync~1_combout\,
	datab => \U_VGA|sync|LessThan4~0_combout\,
	datac => \U_VGA|draw~3_combout\,
	datad => \U_VGA|red~0_combout\,
	combout => \U_VGA|red~1_combout\);

-- Location: LCCOMB_X2_Y23_N30
\U_VGA|sync|LessThan4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|LessThan4~1_combout\ = (!\U_VGA|sync|h_counter\(7) & (!\U_VGA|sync|h_counter\(8) & ((!\U_VGA|sync|h_sync~0_combout\) # (!\U_VGA|sync|LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(7),
	datab => \U_VGA|sync|h_counter\(8),
	datac => \U_VGA|sync|LessThan4~0_combout\,
	datad => \U_VGA|sync|h_sync~0_combout\,
	combout => \U_VGA|sync|LessThan4~1_combout\);

-- Location: LCCOMB_X3_Y22_N28
\U_VGA|draw~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|draw~1_combout\ = (!\U_VGA|sync|v_counter\(9) & ((\U_VGA|sync|LessThan4~1_combout\) # (!\U_VGA|sync|h_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(9),
	datab => \U_VGA|sync|v_counter\(9),
	datad => \U_VGA|sync|LessThan4~1_combout\,
	combout => \U_VGA|draw~1_combout\);

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
	clrn => \button_n[0]~inputclkctrl_outclk\,
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
	clrn => \button_n[0]~inputclkctrl_outclk\,
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
	clrn => \button_n[0]~inputclkctrl_outclk\,
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
	clrn => \button_n[0]~inputclkctrl_outclk\,
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
	clrn => \button_n[0]~inputclkctrl_outclk\,
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
	clrn => \button_n[0]~inputclkctrl_outclk\,
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
	clrn => \button_n[0]~inputclkctrl_outclk\,
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
	clrn => \button_n[0]~inputclkctrl_outclk\,
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
	clrn => \button_n[0]~inputclkctrl_outclk\,
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
	clrn => \button_n[0]~inputclkctrl_outclk\,
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
	clrn => \button_n[0]~inputclkctrl_outclk\,
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
	clrn => \button_n[0]~inputclkctrl_outclk\,
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
	clrn => \button_n[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|clk_div|counter\(12));

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
	clrn => \button_n[0]~inputclkctrl_outclk\,
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
	clrn => \button_n[0]~inputclkctrl_outclk\,
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
	clrn => \button_n[0]~inputclkctrl_outclk\,
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
-- \U_VGA|clk_div|counter~2_combout\ = (\U_VGA|clk_div|Add0~32_combout\ & (((!\U_VGA|clk_div|Equal0~4_combout\) # (!\U_VGA|clk_div|counter\(0))) # (!\U_VGA|clk_div|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|clk_div|Equal0~5_combout\,
	datab => \U_VGA|clk_div|counter\(0),
	datac => \U_VGA|clk_div|Equal0~4_combout\,
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
	clrn => \button_n[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|clk_div|counter\(16));

-- Location: LCCOMB_X46_Y52_N14
\U_VGA|clk_div|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|Add0~34_combout\ = (\U_VGA|clk_div|counter\(17) & (!\U_VGA|clk_div|Add0~33\)) # (!\U_VGA|clk_div|counter\(17) & ((\U_VGA|clk_div|Add0~33\) # (GND)))
-- \U_VGA|clk_div|Add0~35\ = CARRY((!\U_VGA|clk_div|Add0~33\) # (!\U_VGA|clk_div|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|clk_div|counter\(17),
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
	clrn => \button_n[0]~inputclkctrl_outclk\,
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
	clrn => \button_n[0]~inputclkctrl_outclk\,
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
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|clk_div|counter\(19),
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
	clrn => \button_n[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|clk_div|counter\(19));

-- Location: LCCOMB_X46_Y52_N20
\U_VGA|clk_div|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|Add0~40_combout\ = \U_VGA|clk_div|counter\(20) $ (!\U_VGA|clk_div|Add0~39\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|clk_div|counter\(20),
	cin => \U_VGA|clk_div|Add0~39\,
	combout => \U_VGA|clk_div|Add0~40_combout\);

-- Location: LCCOMB_X46_Y52_N22
\U_VGA|clk_div|counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|counter~0_combout\ = (\U_VGA|clk_div|Add0~40_combout\ & (((!\U_VGA|clk_div|Equal0~4_combout\) # (!\U_VGA|clk_div|counter\(0))) # (!\U_VGA|clk_div|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|clk_div|Equal0~5_combout\,
	datab => \U_VGA|clk_div|counter\(0),
	datac => \U_VGA|clk_div|Equal0~4_combout\,
	datad => \U_VGA|clk_div|Add0~40_combout\,
	combout => \U_VGA|clk_div|counter~0_combout\);

-- Location: FF_X46_Y52_N23
\U_VGA|clk_div|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|clk_div|counter~0_combout\,
	clrn => \button_n[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|clk_div|counter\(20));

-- Location: LCCOMB_X46_Y52_N30
\U_VGA|clk_div|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|Equal0~0_combout\ = (\U_VGA|clk_div|counter\(20) & (!\U_VGA|clk_div|counter\(19) & (\U_VGA|clk_div|counter\(17) & !\U_VGA|clk_div|counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|clk_div|counter\(20),
	datab => \U_VGA|clk_div|counter\(19),
	datac => \U_VGA|clk_div|counter\(17),
	datad => \U_VGA|clk_div|counter\(18),
	combout => \U_VGA|clk_div|Equal0~0_combout\);

-- Location: LCCOMB_X45_Y52_N24
\U_VGA|clk_div|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|Equal0~1_combout\ = (!\U_VGA|clk_div|counter\(13) & (!\U_VGA|clk_div|counter\(15) & (!\U_VGA|clk_div|counter\(14) & \U_VGA|clk_div|counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|clk_div|counter\(13),
	datab => \U_VGA|clk_div|counter\(15),
	datac => \U_VGA|clk_div|counter\(14),
	datad => \U_VGA|clk_div|counter\(16),
	combout => \U_VGA|clk_div|Equal0~1_combout\);

-- Location: LCCOMB_X45_Y52_N22
\U_VGA|clk_div|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|Equal0~2_combout\ = (!\U_VGA|clk_div|counter\(11) & (!\U_VGA|clk_div|counter\(10) & (\U_VGA|clk_div|counter\(9) & \U_VGA|clk_div|counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|clk_div|counter\(11),
	datab => \U_VGA|clk_div|counter\(10),
	datac => \U_VGA|clk_div|counter\(9),
	datad => \U_VGA|clk_div|counter\(12),
	combout => \U_VGA|clk_div|Equal0~2_combout\);

-- Location: LCCOMB_X46_Y53_N10
\U_VGA|clk_div|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|Equal0~3_combout\ = (!\U_VGA|clk_div|counter\(5) & (!\U_VGA|clk_div|counter\(8) & (\U_VGA|clk_div|counter\(6) & \U_VGA|clk_div|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|clk_div|counter\(5),
	datab => \U_VGA|clk_div|counter\(8),
	datac => \U_VGA|clk_div|counter\(6),
	datad => \U_VGA|clk_div|counter\(7),
	combout => \U_VGA|clk_div|Equal0~3_combout\);

-- Location: LCCOMB_X45_Y52_N28
\U_VGA|clk_div|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|Equal0~4_combout\ = (\U_VGA|clk_div|Equal0~0_combout\ & (\U_VGA|clk_div|Equal0~1_combout\ & (\U_VGA|clk_div|Equal0~2_combout\ & \U_VGA|clk_div|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|clk_div|Equal0~0_combout\,
	datab => \U_VGA|clk_div|Equal0~1_combout\,
	datac => \U_VGA|clk_div|Equal0~2_combout\,
	datad => \U_VGA|clk_div|Equal0~3_combout\,
	combout => \U_VGA|clk_div|Equal0~4_combout\);

-- Location: LCCOMB_X45_Y52_N14
\U_VGA|clk_div|temp_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|temp_clk~0_combout\ = \U_VGA|clk_div|temp_clk~q\ $ (((\U_VGA|clk_div|counter\(0) & (\U_VGA|clk_div|Equal0~4_combout\ & \U_VGA|clk_div|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|clk_div|counter\(0),
	datab => \U_VGA|clk_div|Equal0~4_combout\,
	datac => \U_VGA|clk_div|temp_clk~q\,
	datad => \U_VGA|clk_div|Equal0~5_combout\,
	combout => \U_VGA|clk_div|temp_clk~0_combout\);

-- Location: LCCOMB_X45_Y52_N2
\U_VGA|clk_div|temp_clk~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|clk_div|temp_clk~feeder_combout\ = \U_VGA|clk_div|temp_clk~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|clk_div|temp_clk~0_combout\,
	combout => \U_VGA|clk_div|temp_clk~feeder_combout\);

-- Location: FF_X45_Y52_N3
\U_VGA|clk_div|temp_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|clk_div|temp_clk~feeder_combout\,
	clrn => \button_n[0]~inputclkctrl_outclk\,
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

-- Location: LCCOMB_X4_Y22_N14
\U_VGA|mov_x~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~1_combout\ = (\button_n[0]~input_o\ & \U_VGA|mov_x~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datac => \U_VGA|mov_x~0_combout\,
	combout => \U_VGA|mov_x~1_combout\);

-- Location: FF_X4_Y22_N15
\U_VGA|mov_x[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_x~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_x\(10));

-- Location: LCCOMB_X6_Y22_N2
\U_VGA|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~0_combout\ = \U_VGA|x_pos\(1) $ (VCC)
-- \U_VGA|Add2~1\ = CARRY(\U_VGA|x_pos\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|x_pos\(1),
	datad => VCC,
	combout => \U_VGA|Add2~0_combout\,
	cout => \U_VGA|Add2~1\);

-- Location: LCCOMB_X8_Y23_N4
\U_VGA|Add2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~26_combout\ = (\U_VGA|Add2~0_combout\ & \button_n[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|Add2~0_combout\,
	datad => \button_n[0]~input_o\,
	combout => \U_VGA|Add2~26_combout\);

-- Location: FF_X8_Y23_N5
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

-- Location: LCCOMB_X6_Y22_N4
\U_VGA|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~2_combout\ = (\U_VGA|x_pos\(2) & ((\U_VGA|mov_x~0_combout\ & (\U_VGA|Add2~1\ & VCC)) # (!\U_VGA|mov_x~0_combout\ & (!\U_VGA|Add2~1\)))) # (!\U_VGA|x_pos\(2) & ((\U_VGA|mov_x~0_combout\ & (!\U_VGA|Add2~1\)) # (!\U_VGA|mov_x~0_combout\ & 
-- ((\U_VGA|Add2~1\) # (GND)))))
-- \U_VGA|Add2~3\ = CARRY((\U_VGA|x_pos\(2) & (!\U_VGA|mov_x~0_combout\ & !\U_VGA|Add2~1\)) # (!\U_VGA|x_pos\(2) & ((!\U_VGA|Add2~1\) # (!\U_VGA|mov_x~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(2),
	datab => \U_VGA|mov_x~0_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~1\,
	combout => \U_VGA|Add2~2_combout\,
	cout => \U_VGA|Add2~3\);

-- Location: LCCOMB_X8_Y23_N2
\U_VGA|Add2~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~25_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~2_combout\,
	combout => \U_VGA|Add2~25_combout\);

-- Location: FF_X8_Y23_N3
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

-- Location: LCCOMB_X6_Y22_N6
\U_VGA|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~4_combout\ = ((\U_VGA|x_pos\(3) $ (\U_VGA|mov_x~0_combout\ $ (\U_VGA|Add2~3\)))) # (GND)
-- \U_VGA|Add2~5\ = CARRY((\U_VGA|x_pos\(3) & (\U_VGA|mov_x~0_combout\ & !\U_VGA|Add2~3\)) # (!\U_VGA|x_pos\(3) & ((\U_VGA|mov_x~0_combout\) # (!\U_VGA|Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(3),
	datab => \U_VGA|mov_x~0_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~3\,
	combout => \U_VGA|Add2~4_combout\,
	cout => \U_VGA|Add2~5\);

-- Location: LCCOMB_X8_Y23_N8
\U_VGA|Add2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~24_combout\ = (\button_n[0]~input_o\ & !\U_VGA|Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~4_combout\,
	combout => \U_VGA|Add2~24_combout\);

-- Location: FF_X8_Y23_N9
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

-- Location: LCCOMB_X6_Y22_N8
\U_VGA|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~6_combout\ = (\U_VGA|x_pos\(4) & ((\U_VGA|mov_x~0_combout\ & (\U_VGA|Add2~5\ & VCC)) # (!\U_VGA|mov_x~0_combout\ & (!\U_VGA|Add2~5\)))) # (!\U_VGA|x_pos\(4) & ((\U_VGA|mov_x~0_combout\ & (!\U_VGA|Add2~5\)) # (!\U_VGA|mov_x~0_combout\ & 
-- ((\U_VGA|Add2~5\) # (GND)))))
-- \U_VGA|Add2~7\ = CARRY((\U_VGA|x_pos\(4) & (!\U_VGA|mov_x~0_combout\ & !\U_VGA|Add2~5\)) # (!\U_VGA|x_pos\(4) & ((!\U_VGA|Add2~5\) # (!\U_VGA|mov_x~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(4),
	datab => \U_VGA|mov_x~0_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~5\,
	combout => \U_VGA|Add2~6_combout\,
	cout => \U_VGA|Add2~7\);

-- Location: LCCOMB_X6_Y23_N0
\U_VGA|Add2~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~23_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datac => \U_VGA|Add2~6_combout\,
	combout => \U_VGA|Add2~23_combout\);

-- Location: FF_X6_Y23_N1
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

-- Location: LCCOMB_X6_Y22_N10
\U_VGA|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~8_combout\ = ((\U_VGA|x_pos\(5) $ (\U_VGA|mov_x~0_combout\ $ (!\U_VGA|Add2~7\)))) # (GND)
-- \U_VGA|Add2~9\ = CARRY((\U_VGA|x_pos\(5) & ((\U_VGA|mov_x~0_combout\) # (!\U_VGA|Add2~7\))) # (!\U_VGA|x_pos\(5) & (\U_VGA|mov_x~0_combout\ & !\U_VGA|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(5),
	datab => \U_VGA|mov_x~0_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~7\,
	combout => \U_VGA|Add2~8_combout\,
	cout => \U_VGA|Add2~9\);

-- Location: LCCOMB_X6_Y23_N2
\U_VGA|Add2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~22_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datac => \U_VGA|Add2~8_combout\,
	combout => \U_VGA|Add2~22_combout\);

-- Location: FF_X6_Y23_N3
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

-- Location: LCCOMB_X6_Y22_N12
\U_VGA|Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~10_combout\ = (\U_VGA|x_pos\(6) & ((\U_VGA|mov_x~0_combout\ & (!\U_VGA|Add2~9\)) # (!\U_VGA|mov_x~0_combout\ & ((\U_VGA|Add2~9\) # (GND))))) # (!\U_VGA|x_pos\(6) & ((\U_VGA|mov_x~0_combout\ & (\U_VGA|Add2~9\ & VCC)) # (!\U_VGA|mov_x~0_combout\ 
-- & (!\U_VGA|Add2~9\))))
-- \U_VGA|Add2~11\ = CARRY((\U_VGA|x_pos\(6) & ((!\U_VGA|Add2~9\) # (!\U_VGA|mov_x~0_combout\))) # (!\U_VGA|x_pos\(6) & (!\U_VGA|mov_x~0_combout\ & !\U_VGA|Add2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(6),
	datab => \U_VGA|mov_x~0_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~9\,
	combout => \U_VGA|Add2~10_combout\,
	cout => \U_VGA|Add2~11\);

-- Location: LCCOMB_X6_Y23_N8
\U_VGA|Add2~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~21_combout\ = (\button_n[0]~input_o\ & !\U_VGA|Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~10_combout\,
	combout => \U_VGA|Add2~21_combout\);

-- Location: FF_X6_Y23_N9
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

-- Location: LCCOMB_X6_Y22_N14
\U_VGA|Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~12_combout\ = ((\U_VGA|x_pos\(7) $ (\U_VGA|mov_x~0_combout\ $ (\U_VGA|Add2~11\)))) # (GND)
-- \U_VGA|Add2~13\ = CARRY((\U_VGA|x_pos\(7) & (\U_VGA|mov_x~0_combout\ & !\U_VGA|Add2~11\)) # (!\U_VGA|x_pos\(7) & ((\U_VGA|mov_x~0_combout\) # (!\U_VGA|Add2~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(7),
	datab => \U_VGA|mov_x~0_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~11\,
	combout => \U_VGA|Add2~12_combout\,
	cout => \U_VGA|Add2~13\);

-- Location: LCCOMB_X6_Y23_N6
\U_VGA|Add2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~20_combout\ = (\button_n[0]~input_o\ & !\U_VGA|Add2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~12_combout\,
	combout => \U_VGA|Add2~20_combout\);

-- Location: FF_X6_Y23_N7
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

-- Location: LCCOMB_X6_Y22_N16
\U_VGA|Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~14_combout\ = (\U_VGA|x_pos\(8) & ((\U_VGA|mov_x~0_combout\ & (\U_VGA|Add2~13\ & VCC)) # (!\U_VGA|mov_x~0_combout\ & (!\U_VGA|Add2~13\)))) # (!\U_VGA|x_pos\(8) & ((\U_VGA|mov_x~0_combout\ & (!\U_VGA|Add2~13\)) # (!\U_VGA|mov_x~0_combout\ & 
-- ((\U_VGA|Add2~13\) # (GND)))))
-- \U_VGA|Add2~15\ = CARRY((\U_VGA|x_pos\(8) & (!\U_VGA|mov_x~0_combout\ & !\U_VGA|Add2~13\)) # (!\U_VGA|x_pos\(8) & ((!\U_VGA|Add2~13\) # (!\U_VGA|mov_x~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(8),
	datab => \U_VGA|mov_x~0_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~13\,
	combout => \U_VGA|Add2~14_combout\,
	cout => \U_VGA|Add2~15\);

-- Location: LCCOMB_X6_Y23_N4
\U_VGA|Add2~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~19_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~14_combout\,
	combout => \U_VGA|Add2~19_combout\);

-- Location: FF_X6_Y23_N5
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

-- Location: LCCOMB_X6_Y22_N18
\U_VGA|Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~16_combout\ = ((\U_VGA|mov_x~0_combout\ $ (\U_VGA|x_pos\(9) $ (!\U_VGA|Add2~15\)))) # (GND)
-- \U_VGA|Add2~17\ = CARRY((\U_VGA|mov_x~0_combout\ & ((\U_VGA|x_pos\(9)) # (!\U_VGA|Add2~15\))) # (!\U_VGA|mov_x~0_combout\ & (\U_VGA|x_pos\(9) & !\U_VGA|Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x~0_combout\,
	datab => \U_VGA|x_pos\(9),
	datad => VCC,
	cin => \U_VGA|Add2~15\,
	combout => \U_VGA|Add2~16_combout\,
	cout => \U_VGA|Add2~17\);

-- Location: LCCOMB_X6_Y22_N20
\U_VGA|Add2~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~27_combout\ = (\U_VGA|mov_x~0_combout\ & ((\U_VGA|x_pos\(10) & (\U_VGA|Add2~17\ & VCC)) # (!\U_VGA|x_pos\(10) & (!\U_VGA|Add2~17\)))) # (!\U_VGA|mov_x~0_combout\ & ((\U_VGA|x_pos\(10) & (!\U_VGA|Add2~17\)) # (!\U_VGA|x_pos\(10) & 
-- ((\U_VGA|Add2~17\) # (GND)))))
-- \U_VGA|Add2~28\ = CARRY((\U_VGA|mov_x~0_combout\ & (!\U_VGA|x_pos\(10) & !\U_VGA|Add2~17\)) # (!\U_VGA|mov_x~0_combout\ & ((!\U_VGA|Add2~17\) # (!\U_VGA|x_pos\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x~0_combout\,
	datab => \U_VGA|x_pos\(10),
	datad => VCC,
	cin => \U_VGA|Add2~17\,
	combout => \U_VGA|Add2~27_combout\,
	cout => \U_VGA|Add2~28\);

-- Location: LCCOMB_X6_Y19_N26
\U_VGA|Add2~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~92_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~27_combout\,
	combout => \U_VGA|Add2~92_combout\);

-- Location: FF_X6_Y19_N27
\U_VGA|x_pos[10]\ : dffeas
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
	q => \U_VGA|x_pos\(10));

-- Location: LCCOMB_X6_Y22_N22
\U_VGA|Add2~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~29_combout\ = ((\U_VGA|mov_x~0_combout\ $ (\U_VGA|x_pos\(11) $ (!\U_VGA|Add2~28\)))) # (GND)
-- \U_VGA|Add2~30\ = CARRY((\U_VGA|mov_x~0_combout\ & ((\U_VGA|x_pos\(11)) # (!\U_VGA|Add2~28\))) # (!\U_VGA|mov_x~0_combout\ & (\U_VGA|x_pos\(11) & !\U_VGA|Add2~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x~0_combout\,
	datab => \U_VGA|x_pos\(11),
	datad => VCC,
	cin => \U_VGA|Add2~28\,
	combout => \U_VGA|Add2~29_combout\,
	cout => \U_VGA|Add2~30\);

-- Location: LCCOMB_X6_Y19_N20
\U_VGA|Add2~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~91_combout\ = (\U_VGA|Add2~29_combout\ & \button_n[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|Add2~29_combout\,
	datad => \button_n[0]~input_o\,
	combout => \U_VGA|Add2~91_combout\);

-- Location: FF_X6_Y19_N21
\U_VGA|x_pos[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(11));

-- Location: LCCOMB_X6_Y22_N24
\U_VGA|Add2~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~31_combout\ = (\U_VGA|mov_x~0_combout\ & ((\U_VGA|x_pos\(12) & (\U_VGA|Add2~30\ & VCC)) # (!\U_VGA|x_pos\(12) & (!\U_VGA|Add2~30\)))) # (!\U_VGA|mov_x~0_combout\ & ((\U_VGA|x_pos\(12) & (!\U_VGA|Add2~30\)) # (!\U_VGA|x_pos\(12) & 
-- ((\U_VGA|Add2~30\) # (GND)))))
-- \U_VGA|Add2~32\ = CARRY((\U_VGA|mov_x~0_combout\ & (!\U_VGA|x_pos\(12) & !\U_VGA|Add2~30\)) # (!\U_VGA|mov_x~0_combout\ & ((!\U_VGA|Add2~30\) # (!\U_VGA|x_pos\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x~0_combout\,
	datab => \U_VGA|x_pos\(12),
	datad => VCC,
	cin => \U_VGA|Add2~30\,
	combout => \U_VGA|Add2~31_combout\,
	cout => \U_VGA|Add2~32\);

-- Location: LCCOMB_X6_Y19_N22
\U_VGA|Add2~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~90_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~31_combout\,
	combout => \U_VGA|Add2~90_combout\);

-- Location: FF_X6_Y19_N23
\U_VGA|x_pos[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(12));

-- Location: LCCOMB_X6_Y22_N26
\U_VGA|Add2~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~33_combout\ = ((\U_VGA|mov_x~0_combout\ $ (\U_VGA|x_pos\(13) $ (!\U_VGA|Add2~32\)))) # (GND)
-- \U_VGA|Add2~34\ = CARRY((\U_VGA|mov_x~0_combout\ & ((\U_VGA|x_pos\(13)) # (!\U_VGA|Add2~32\))) # (!\U_VGA|mov_x~0_combout\ & (\U_VGA|x_pos\(13) & !\U_VGA|Add2~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x~0_combout\,
	datab => \U_VGA|x_pos\(13),
	datad => VCC,
	cin => \U_VGA|Add2~32\,
	combout => \U_VGA|Add2~33_combout\,
	cout => \U_VGA|Add2~34\);

-- Location: LCCOMB_X6_Y20_N20
\U_VGA|Add2~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~89_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~33_combout\,
	combout => \U_VGA|Add2~89_combout\);

-- Location: FF_X6_Y20_N21
\U_VGA|x_pos[13]\ : dffeas
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
	q => \U_VGA|x_pos\(13));

-- Location: LCCOMB_X6_Y22_N28
\U_VGA|Add2~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~35_combout\ = (\U_VGA|mov_x~0_combout\ & ((\U_VGA|x_pos\(14) & (\U_VGA|Add2~34\ & VCC)) # (!\U_VGA|x_pos\(14) & (!\U_VGA|Add2~34\)))) # (!\U_VGA|mov_x~0_combout\ & ((\U_VGA|x_pos\(14) & (!\U_VGA|Add2~34\)) # (!\U_VGA|x_pos\(14) & 
-- ((\U_VGA|Add2~34\) # (GND)))))
-- \U_VGA|Add2~36\ = CARRY((\U_VGA|mov_x~0_combout\ & (!\U_VGA|x_pos\(14) & !\U_VGA|Add2~34\)) # (!\U_VGA|mov_x~0_combout\ & ((!\U_VGA|Add2~34\) # (!\U_VGA|x_pos\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x~0_combout\,
	datab => \U_VGA|x_pos\(14),
	datad => VCC,
	cin => \U_VGA|Add2~34\,
	combout => \U_VGA|Add2~35_combout\,
	cout => \U_VGA|Add2~36\);

-- Location: LCCOMB_X6_Y20_N14
\U_VGA|Add2~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~88_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~35_combout\,
	combout => \U_VGA|Add2~88_combout\);

-- Location: FF_X6_Y20_N15
\U_VGA|x_pos[14]\ : dffeas
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
	q => \U_VGA|x_pos\(14));

-- Location: LCCOMB_X6_Y22_N30
\U_VGA|Add2~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~37_combout\ = ((\U_VGA|mov_x~0_combout\ $ (\U_VGA|x_pos\(15) $ (!\U_VGA|Add2~36\)))) # (GND)
-- \U_VGA|Add2~38\ = CARRY((\U_VGA|mov_x~0_combout\ & ((\U_VGA|x_pos\(15)) # (!\U_VGA|Add2~36\))) # (!\U_VGA|mov_x~0_combout\ & (\U_VGA|x_pos\(15) & !\U_VGA|Add2~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x~0_combout\,
	datab => \U_VGA|x_pos\(15),
	datad => VCC,
	cin => \U_VGA|Add2~36\,
	combout => \U_VGA|Add2~37_combout\,
	cout => \U_VGA|Add2~38\);

-- Location: LCCOMB_X6_Y20_N24
\U_VGA|Add2~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~87_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~37_combout\,
	combout => \U_VGA|Add2~87_combout\);

-- Location: FF_X6_Y20_N25
\U_VGA|x_pos[15]\ : dffeas
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
	q => \U_VGA|x_pos\(15));

-- Location: LCCOMB_X6_Y21_N0
\U_VGA|Add2~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~39_combout\ = (\U_VGA|mov_x~0_combout\ & ((\U_VGA|x_pos\(16) & (\U_VGA|Add2~38\ & VCC)) # (!\U_VGA|x_pos\(16) & (!\U_VGA|Add2~38\)))) # (!\U_VGA|mov_x~0_combout\ & ((\U_VGA|x_pos\(16) & (!\U_VGA|Add2~38\)) # (!\U_VGA|x_pos\(16) & 
-- ((\U_VGA|Add2~38\) # (GND)))))
-- \U_VGA|Add2~40\ = CARRY((\U_VGA|mov_x~0_combout\ & (!\U_VGA|x_pos\(16) & !\U_VGA|Add2~38\)) # (!\U_VGA|mov_x~0_combout\ & ((!\U_VGA|Add2~38\) # (!\U_VGA|x_pos\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x~0_combout\,
	datab => \U_VGA|x_pos\(16),
	datad => VCC,
	cin => \U_VGA|Add2~38\,
	combout => \U_VGA|Add2~39_combout\,
	cout => \U_VGA|Add2~40\);

-- Location: LCCOMB_X6_Y20_N22
\U_VGA|Add2~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~86_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~39_combout\,
	combout => \U_VGA|Add2~86_combout\);

-- Location: FF_X6_Y20_N23
\U_VGA|x_pos[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(16));

-- Location: LCCOMB_X6_Y21_N2
\U_VGA|Add2~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~41_combout\ = ((\U_VGA|mov_x~0_combout\ $ (\U_VGA|x_pos\(17) $ (!\U_VGA|Add2~40\)))) # (GND)
-- \U_VGA|Add2~42\ = CARRY((\U_VGA|mov_x~0_combout\ & ((\U_VGA|x_pos\(17)) # (!\U_VGA|Add2~40\))) # (!\U_VGA|mov_x~0_combout\ & (\U_VGA|x_pos\(17) & !\U_VGA|Add2~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x~0_combout\,
	datab => \U_VGA|x_pos\(17),
	datad => VCC,
	cin => \U_VGA|Add2~40\,
	combout => \U_VGA|Add2~41_combout\,
	cout => \U_VGA|Add2~42\);

-- Location: LCCOMB_X7_Y21_N30
\U_VGA|Add2~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~85_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~41_combout\,
	combout => \U_VGA|Add2~85_combout\);

-- Location: FF_X7_Y21_N31
\U_VGA|x_pos[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(17));

-- Location: LCCOMB_X6_Y21_N4
\U_VGA|Add2~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~43_combout\ = (\U_VGA|mov_x~0_combout\ & ((\U_VGA|x_pos\(18) & (\U_VGA|Add2~42\ & VCC)) # (!\U_VGA|x_pos\(18) & (!\U_VGA|Add2~42\)))) # (!\U_VGA|mov_x~0_combout\ & ((\U_VGA|x_pos\(18) & (!\U_VGA|Add2~42\)) # (!\U_VGA|x_pos\(18) & 
-- ((\U_VGA|Add2~42\) # (GND)))))
-- \U_VGA|Add2~44\ = CARRY((\U_VGA|mov_x~0_combout\ & (!\U_VGA|x_pos\(18) & !\U_VGA|Add2~42\)) # (!\U_VGA|mov_x~0_combout\ & ((!\U_VGA|Add2~42\) # (!\U_VGA|x_pos\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x~0_combout\,
	datab => \U_VGA|x_pos\(18),
	datad => VCC,
	cin => \U_VGA|Add2~42\,
	combout => \U_VGA|Add2~43_combout\,
	cout => \U_VGA|Add2~44\);

-- Location: LCCOMB_X7_Y21_N16
\U_VGA|Add2~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~84_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datac => \U_VGA|Add2~43_combout\,
	combout => \U_VGA|Add2~84_combout\);

-- Location: FF_X7_Y21_N17
\U_VGA|x_pos[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(18));

-- Location: LCCOMB_X6_Y21_N6
\U_VGA|Add2~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~45_combout\ = ((\U_VGA|mov_x~0_combout\ $ (\U_VGA|x_pos\(19) $ (!\U_VGA|Add2~44\)))) # (GND)
-- \U_VGA|Add2~46\ = CARRY((\U_VGA|mov_x~0_combout\ & ((\U_VGA|x_pos\(19)) # (!\U_VGA|Add2~44\))) # (!\U_VGA|mov_x~0_combout\ & (\U_VGA|x_pos\(19) & !\U_VGA|Add2~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x~0_combout\,
	datab => \U_VGA|x_pos\(19),
	datad => VCC,
	cin => \U_VGA|Add2~44\,
	combout => \U_VGA|Add2~45_combout\,
	cout => \U_VGA|Add2~46\);

-- Location: LCCOMB_X7_Y21_N2
\U_VGA|Add2~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~83_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datac => \U_VGA|Add2~45_combout\,
	combout => \U_VGA|Add2~83_combout\);

-- Location: FF_X7_Y21_N3
\U_VGA|x_pos[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(19));

-- Location: LCCOMB_X6_Y21_N8
\U_VGA|Add2~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~47_combout\ = (\U_VGA|mov_x~0_combout\ & ((\U_VGA|x_pos\(20) & (\U_VGA|Add2~46\ & VCC)) # (!\U_VGA|x_pos\(20) & (!\U_VGA|Add2~46\)))) # (!\U_VGA|mov_x~0_combout\ & ((\U_VGA|x_pos\(20) & (!\U_VGA|Add2~46\)) # (!\U_VGA|x_pos\(20) & 
-- ((\U_VGA|Add2~46\) # (GND)))))
-- \U_VGA|Add2~48\ = CARRY((\U_VGA|mov_x~0_combout\ & (!\U_VGA|x_pos\(20) & !\U_VGA|Add2~46\)) # (!\U_VGA|mov_x~0_combout\ & ((!\U_VGA|Add2~46\) # (!\U_VGA|x_pos\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x~0_combout\,
	datab => \U_VGA|x_pos\(20),
	datad => VCC,
	cin => \U_VGA|Add2~46\,
	combout => \U_VGA|Add2~47_combout\,
	cout => \U_VGA|Add2~48\);

-- Location: LCCOMB_X7_Y21_N0
\U_VGA|Add2~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~82_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~47_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~47_combout\,
	combout => \U_VGA|Add2~82_combout\);

-- Location: FF_X7_Y21_N1
\U_VGA|x_pos[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(20));

-- Location: LCCOMB_X6_Y21_N10
\U_VGA|Add2~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~49_combout\ = ((\U_VGA|mov_x~0_combout\ $ (\U_VGA|x_pos\(21) $ (!\U_VGA|Add2~48\)))) # (GND)
-- \U_VGA|Add2~50\ = CARRY((\U_VGA|mov_x~0_combout\ & ((\U_VGA|x_pos\(21)) # (!\U_VGA|Add2~48\))) # (!\U_VGA|mov_x~0_combout\ & (\U_VGA|x_pos\(21) & !\U_VGA|Add2~48\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x~0_combout\,
	datab => \U_VGA|x_pos\(21),
	datad => VCC,
	cin => \U_VGA|Add2~48\,
	combout => \U_VGA|Add2~49_combout\,
	cout => \U_VGA|Add2~50\);

-- Location: LCCOMB_X7_Y21_N22
\U_VGA|Add2~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~81_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~49_combout\,
	combout => \U_VGA|Add2~81_combout\);

-- Location: FF_X7_Y21_N23
\U_VGA|x_pos[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(21));

-- Location: LCCOMB_X6_Y21_N12
\U_VGA|Add2~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~51_combout\ = (\U_VGA|mov_x~0_combout\ & ((\U_VGA|x_pos\(22) & (\U_VGA|Add2~50\ & VCC)) # (!\U_VGA|x_pos\(22) & (!\U_VGA|Add2~50\)))) # (!\U_VGA|mov_x~0_combout\ & ((\U_VGA|x_pos\(22) & (!\U_VGA|Add2~50\)) # (!\U_VGA|x_pos\(22) & 
-- ((\U_VGA|Add2~50\) # (GND)))))
-- \U_VGA|Add2~52\ = CARRY((\U_VGA|mov_x~0_combout\ & (!\U_VGA|x_pos\(22) & !\U_VGA|Add2~50\)) # (!\U_VGA|mov_x~0_combout\ & ((!\U_VGA|Add2~50\) # (!\U_VGA|x_pos\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x~0_combout\,
	datab => \U_VGA|x_pos\(22),
	datad => VCC,
	cin => \U_VGA|Add2~50\,
	combout => \U_VGA|Add2~51_combout\,
	cout => \U_VGA|Add2~52\);

-- Location: LCCOMB_X7_Y21_N24
\U_VGA|Add2~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~80_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~51_combout\,
	combout => \U_VGA|Add2~80_combout\);

-- Location: FF_X7_Y21_N25
\U_VGA|x_pos[22]\ : dffeas
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
	q => \U_VGA|x_pos\(22));

-- Location: LCCOMB_X6_Y21_N14
\U_VGA|Add2~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~53_combout\ = ((\U_VGA|mov_x~0_combout\ $ (\U_VGA|x_pos\(23) $ (!\U_VGA|Add2~52\)))) # (GND)
-- \U_VGA|Add2~54\ = CARRY((\U_VGA|mov_x~0_combout\ & ((\U_VGA|x_pos\(23)) # (!\U_VGA|Add2~52\))) # (!\U_VGA|mov_x~0_combout\ & (\U_VGA|x_pos\(23) & !\U_VGA|Add2~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x~0_combout\,
	datab => \U_VGA|x_pos\(23),
	datad => VCC,
	cin => \U_VGA|Add2~52\,
	combout => \U_VGA|Add2~53_combout\,
	cout => \U_VGA|Add2~54\);

-- Location: LCCOMB_X7_Y21_N18
\U_VGA|Add2~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~79_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~53_combout\,
	combout => \U_VGA|Add2~79_combout\);

-- Location: FF_X7_Y21_N19
\U_VGA|x_pos[23]\ : dffeas
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
	q => \U_VGA|x_pos\(23));

-- Location: LCCOMB_X6_Y21_N16
\U_VGA|Add2~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~55_combout\ = (\U_VGA|x_pos\(24) & ((\U_VGA|mov_x~0_combout\ & (\U_VGA|Add2~54\ & VCC)) # (!\U_VGA|mov_x~0_combout\ & (!\U_VGA|Add2~54\)))) # (!\U_VGA|x_pos\(24) & ((\U_VGA|mov_x~0_combout\ & (!\U_VGA|Add2~54\)) # (!\U_VGA|mov_x~0_combout\ & 
-- ((\U_VGA|Add2~54\) # (GND)))))
-- \U_VGA|Add2~56\ = CARRY((\U_VGA|x_pos\(24) & (!\U_VGA|mov_x~0_combout\ & !\U_VGA|Add2~54\)) # (!\U_VGA|x_pos\(24) & ((!\U_VGA|Add2~54\) # (!\U_VGA|mov_x~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(24),
	datab => \U_VGA|mov_x~0_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~54\,
	combout => \U_VGA|Add2~55_combout\,
	cout => \U_VGA|Add2~56\);

-- Location: LCCOMB_X7_Y21_N8
\U_VGA|Add2~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~78_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~55_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datac => \U_VGA|Add2~55_combout\,
	combout => \U_VGA|Add2~78_combout\);

-- Location: FF_X7_Y21_N9
\U_VGA|x_pos[24]\ : dffeas
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
	q => \U_VGA|x_pos\(24));

-- Location: LCCOMB_X6_Y21_N18
\U_VGA|Add2~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~57_combout\ = ((\U_VGA|x_pos\(25) $ (\U_VGA|mov_x~0_combout\ $ (!\U_VGA|Add2~56\)))) # (GND)
-- \U_VGA|Add2~58\ = CARRY((\U_VGA|x_pos\(25) & ((\U_VGA|mov_x~0_combout\) # (!\U_VGA|Add2~56\))) # (!\U_VGA|x_pos\(25) & (\U_VGA|mov_x~0_combout\ & !\U_VGA|Add2~56\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(25),
	datab => \U_VGA|mov_x~0_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~56\,
	combout => \U_VGA|Add2~57_combout\,
	cout => \U_VGA|Add2~58\);

-- Location: LCCOMB_X6_Y20_N16
\U_VGA|Add2~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~77_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~57_combout\,
	combout => \U_VGA|Add2~77_combout\);

-- Location: FF_X6_Y20_N17
\U_VGA|x_pos[25]\ : dffeas
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
	q => \U_VGA|x_pos\(25));

-- Location: LCCOMB_X6_Y21_N20
\U_VGA|Add2~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~59_combout\ = (\U_VGA|x_pos\(26) & ((\U_VGA|mov_x~0_combout\ & (\U_VGA|Add2~58\ & VCC)) # (!\U_VGA|mov_x~0_combout\ & (!\U_VGA|Add2~58\)))) # (!\U_VGA|x_pos\(26) & ((\U_VGA|mov_x~0_combout\ & (!\U_VGA|Add2~58\)) # (!\U_VGA|mov_x~0_combout\ & 
-- ((\U_VGA|Add2~58\) # (GND)))))
-- \U_VGA|Add2~60\ = CARRY((\U_VGA|x_pos\(26) & (!\U_VGA|mov_x~0_combout\ & !\U_VGA|Add2~58\)) # (!\U_VGA|x_pos\(26) & ((!\U_VGA|Add2~58\) # (!\U_VGA|mov_x~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(26),
	datab => \U_VGA|mov_x~0_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~58\,
	combout => \U_VGA|Add2~59_combout\,
	cout => \U_VGA|Add2~60\);

-- Location: LCCOMB_X7_Y21_N14
\U_VGA|Add2~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~76_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~59_combout\,
	combout => \U_VGA|Add2~76_combout\);

-- Location: FF_X7_Y21_N15
\U_VGA|x_pos[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(26));

-- Location: LCCOMB_X6_Y21_N22
\U_VGA|Add2~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~61_combout\ = ((\U_VGA|x_pos\(27) $ (\U_VGA|mov_x~0_combout\ $ (!\U_VGA|Add2~60\)))) # (GND)
-- \U_VGA|Add2~62\ = CARRY((\U_VGA|x_pos\(27) & ((\U_VGA|mov_x~0_combout\) # (!\U_VGA|Add2~60\))) # (!\U_VGA|x_pos\(27) & (\U_VGA|mov_x~0_combout\ & !\U_VGA|Add2~60\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(27),
	datab => \U_VGA|mov_x~0_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~60\,
	combout => \U_VGA|Add2~61_combout\,
	cout => \U_VGA|Add2~62\);

-- Location: LCCOMB_X6_Y20_N10
\U_VGA|Add2~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~75_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~61_combout\,
	combout => \U_VGA|Add2~75_combout\);

-- Location: FF_X6_Y20_N11
\U_VGA|x_pos[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(27));

-- Location: LCCOMB_X6_Y21_N24
\U_VGA|Add2~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~63_combout\ = (\U_VGA|x_pos\(28) & ((\U_VGA|mov_x~0_combout\ & (\U_VGA|Add2~62\ & VCC)) # (!\U_VGA|mov_x~0_combout\ & (!\U_VGA|Add2~62\)))) # (!\U_VGA|x_pos\(28) & ((\U_VGA|mov_x~0_combout\ & (!\U_VGA|Add2~62\)) # (!\U_VGA|mov_x~0_combout\ & 
-- ((\U_VGA|Add2~62\) # (GND)))))
-- \U_VGA|Add2~64\ = CARRY((\U_VGA|x_pos\(28) & (!\U_VGA|mov_x~0_combout\ & !\U_VGA|Add2~62\)) # (!\U_VGA|x_pos\(28) & ((!\U_VGA|Add2~62\) # (!\U_VGA|mov_x~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(28),
	datab => \U_VGA|mov_x~0_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~62\,
	combout => \U_VGA|Add2~63_combout\,
	cout => \U_VGA|Add2~64\);

-- Location: LCCOMB_X6_Y20_N4
\U_VGA|Add2~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~74_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datac => \U_VGA|Add2~63_combout\,
	combout => \U_VGA|Add2~74_combout\);

-- Location: FF_X6_Y20_N5
\U_VGA|x_pos[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(28));

-- Location: LCCOMB_X6_Y21_N26
\U_VGA|Add2~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~65_combout\ = ((\U_VGA|x_pos\(29) $ (\U_VGA|mov_x~0_combout\ $ (!\U_VGA|Add2~64\)))) # (GND)
-- \U_VGA|Add2~66\ = CARRY((\U_VGA|x_pos\(29) & ((\U_VGA|mov_x~0_combout\) # (!\U_VGA|Add2~64\))) # (!\U_VGA|x_pos\(29) & (\U_VGA|mov_x~0_combout\ & !\U_VGA|Add2~64\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(29),
	datab => \U_VGA|mov_x~0_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~64\,
	combout => \U_VGA|Add2~65_combout\,
	cout => \U_VGA|Add2~66\);

-- Location: LCCOMB_X6_Y20_N26
\U_VGA|Add2~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~73_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datac => \U_VGA|Add2~65_combout\,
	combout => \U_VGA|Add2~73_combout\);

-- Location: FF_X6_Y20_N27
\U_VGA|x_pos[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(29));

-- Location: LCCOMB_X6_Y21_N28
\U_VGA|Add2~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~67_combout\ = (\U_VGA|x_pos\(30) & ((\U_VGA|mov_x~0_combout\ & (\U_VGA|Add2~66\ & VCC)) # (!\U_VGA|mov_x~0_combout\ & (!\U_VGA|Add2~66\)))) # (!\U_VGA|x_pos\(30) & ((\U_VGA|mov_x~0_combout\ & (!\U_VGA|Add2~66\)) # (!\U_VGA|mov_x~0_combout\ & 
-- ((\U_VGA|Add2~66\) # (GND)))))
-- \U_VGA|Add2~68\ = CARRY((\U_VGA|x_pos\(30) & (!\U_VGA|mov_x~0_combout\ & !\U_VGA|Add2~66\)) # (!\U_VGA|x_pos\(30) & ((!\U_VGA|Add2~66\) # (!\U_VGA|mov_x~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(30),
	datab => \U_VGA|mov_x~0_combout\,
	datad => VCC,
	cin => \U_VGA|Add2~66\,
	combout => \U_VGA|Add2~67_combout\,
	cout => \U_VGA|Add2~68\);

-- Location: LCCOMB_X6_Y20_N12
\U_VGA|Add2~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~72_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~67_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~67_combout\,
	combout => \U_VGA|Add2~72_combout\);

-- Location: FF_X6_Y20_N13
\U_VGA|x_pos[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(30));

-- Location: LCCOMB_X6_Y21_N30
\U_VGA|Add2~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~69_combout\ = \U_VGA|x_pos\(31) $ (\U_VGA|Add2~68\ $ (!\U_VGA|mov_x~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(31),
	datad => \U_VGA|mov_x~0_combout\,
	cin => \U_VGA|Add2~68\,
	combout => \U_VGA|Add2~69_combout\);

-- Location: LCCOMB_X7_Y21_N4
\U_VGA|Add2~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~71_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~69_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~69_combout\,
	combout => \U_VGA|Add2~71_combout\);

-- Location: FF_X7_Y21_N5
\U_VGA|x_pos[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|Add2~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|x_pos\(31));

-- Location: LCCOMB_X6_Y20_N6
\U_VGA|LessThan1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan1~8_combout\ = (!\U_VGA|x_pos\(27) & (!\U_VGA|x_pos\(25) & (!\U_VGA|x_pos\(28) & !\U_VGA|x_pos\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(27),
	datab => \U_VGA|x_pos\(25),
	datac => \U_VGA|x_pos\(28),
	datad => \U_VGA|x_pos\(26),
	combout => \U_VGA|LessThan1~8_combout\);

-- Location: LCCOMB_X6_Y20_N28
\U_VGA|LessThan1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan1~9_combout\ = (!\U_VGA|x_pos\(30) & (!\U_VGA|x_pos\(29) & \U_VGA|LessThan1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(30),
	datac => \U_VGA|x_pos\(29),
	datad => \U_VGA|LessThan1~8_combout\,
	combout => \U_VGA|LessThan1~9_combout\);

-- Location: LCCOMB_X6_Y19_N16
\U_VGA|LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan1~2_combout\ = (!\U_VGA|x_pos\(10) & (!\U_VGA|x_pos\(11) & (!\U_VGA|x_pos\(12) & !\U_VGA|x_pos\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(10),
	datab => \U_VGA|x_pos\(11),
	datac => \U_VGA|x_pos\(12),
	datad => \U_VGA|x_pos\(9),
	combout => \U_VGA|LessThan1~2_combout\);

-- Location: LCCOMB_X6_Y23_N28
\U_VGA|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan1~0_combout\ = (\U_VGA|x_pos\(3) & (!\U_VGA|x_pos\(2) & (!\U_VGA|x_pos\(1) & !\U_VGA|x_pos\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(3),
	datab => \U_VGA|x_pos\(2),
	datac => \U_VGA|x_pos\(1),
	datad => \U_VGA|x_pos\(4),
	combout => \U_VGA|LessThan1~0_combout\);

-- Location: LCCOMB_X6_Y20_N30
\U_VGA|LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan1~3_combout\ = (!\U_VGA|x_pos\(16) & (!\U_VGA|x_pos\(13) & (!\U_VGA|x_pos\(14) & !\U_VGA|x_pos\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(16),
	datab => \U_VGA|x_pos\(13),
	datac => \U_VGA|x_pos\(14),
	datad => \U_VGA|x_pos\(15),
	combout => \U_VGA|LessThan1~3_combout\);

-- Location: LCCOMB_X6_Y23_N30
\U_VGA|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan1~1_combout\ = (\U_VGA|x_pos\(7) & (\U_VGA|x_pos\(6) & (!\U_VGA|x_pos\(8) & !\U_VGA|x_pos\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(7),
	datab => \U_VGA|x_pos\(6),
	datac => \U_VGA|x_pos\(8),
	datad => \U_VGA|x_pos\(5),
	combout => \U_VGA|LessThan1~1_combout\);

-- Location: LCCOMB_X6_Y20_N8
\U_VGA|LessThan1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan1~4_combout\ = (\U_VGA|LessThan1~2_combout\ & (\U_VGA|LessThan1~0_combout\ & (\U_VGA|LessThan1~3_combout\ & \U_VGA|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|LessThan1~2_combout\,
	datab => \U_VGA|LessThan1~0_combout\,
	datac => \U_VGA|LessThan1~3_combout\,
	datad => \U_VGA|LessThan1~1_combout\,
	combout => \U_VGA|LessThan1~4_combout\);

-- Location: LCCOMB_X7_Y21_N26
\U_VGA|LessThan1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan1~6_combout\ = (!\U_VGA|x_pos\(21) & (!\U_VGA|x_pos\(22) & (!\U_VGA|x_pos\(24) & !\U_VGA|x_pos\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(21),
	datab => \U_VGA|x_pos\(22),
	datac => \U_VGA|x_pos\(24),
	datad => \U_VGA|x_pos\(23),
	combout => \U_VGA|LessThan1~6_combout\);

-- Location: LCCOMB_X7_Y21_N20
\U_VGA|LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan1~5_combout\ = (!\U_VGA|x_pos\(19) & !\U_VGA|x_pos\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|x_pos\(19),
	datad => \U_VGA|x_pos\(20),
	combout => \U_VGA|LessThan1~5_combout\);

-- Location: LCCOMB_X7_Y21_N12
\U_VGA|LessThan1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan1~7_combout\ = (!\U_VGA|x_pos\(17) & (!\U_VGA|x_pos\(18) & (\U_VGA|LessThan1~6_combout\ & \U_VGA|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(17),
	datab => \U_VGA|x_pos\(18),
	datac => \U_VGA|LessThan1~6_combout\,
	datad => \U_VGA|LessThan1~5_combout\,
	combout => \U_VGA|LessThan1~7_combout\);

-- Location: LCCOMB_X6_Y20_N18
\U_VGA|ball_move~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|ball_move~0_combout\ = (\U_VGA|x_pos\(31)) # ((\U_VGA|LessThan1~9_combout\ & (\U_VGA|LessThan1~4_combout\ & \U_VGA|LessThan1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(31),
	datab => \U_VGA|LessThan1~9_combout\,
	datac => \U_VGA|LessThan1~4_combout\,
	datad => \U_VGA|LessThan1~7_combout\,
	combout => \U_VGA|ball_move~0_combout\);

-- Location: LCCOMB_X7_Y23_N6
\U_VGA|Add6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~0_combout\ = \U_VGA|x_pos\(6) $ (GND)
-- \U_VGA|Add6~1\ = CARRY(!\U_VGA|x_pos\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(6),
	datad => VCC,
	combout => \U_VGA|Add6~0_combout\,
	cout => \U_VGA|Add6~1\);

-- Location: LCCOMB_X7_Y23_N8
\U_VGA|Add6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~2_combout\ = (\U_VGA|x_pos\(7) & ((\U_VGA|Add6~1\) # (GND))) # (!\U_VGA|x_pos\(7) & (!\U_VGA|Add6~1\))
-- \U_VGA|Add6~3\ = CARRY((\U_VGA|x_pos\(7)) # (!\U_VGA|Add6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|x_pos\(7),
	datad => VCC,
	cin => \U_VGA|Add6~1\,
	combout => \U_VGA|Add6~2_combout\,
	cout => \U_VGA|Add6~3\);

-- Location: LCCOMB_X7_Y23_N10
\U_VGA|Add6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~4_combout\ = (\U_VGA|x_pos\(8) & (\U_VGA|Add6~3\ $ (GND))) # (!\U_VGA|x_pos\(8) & (!\U_VGA|Add6~3\ & VCC))
-- \U_VGA|Add6~5\ = CARRY((\U_VGA|x_pos\(8) & !\U_VGA|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|x_pos\(8),
	datad => VCC,
	cin => \U_VGA|Add6~3\,
	combout => \U_VGA|Add6~4_combout\,
	cout => \U_VGA|Add6~5\);

-- Location: LCCOMB_X7_Y23_N12
\U_VGA|Add6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~6_combout\ = (\U_VGA|x_pos\(9) & (!\U_VGA|Add6~5\)) # (!\U_VGA|x_pos\(9) & ((\U_VGA|Add6~5\) # (GND)))
-- \U_VGA|Add6~7\ = CARRY((!\U_VGA|Add6~5\) # (!\U_VGA|x_pos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|x_pos\(9),
	datad => VCC,
	cin => \U_VGA|Add6~5\,
	combout => \U_VGA|Add6~6_combout\,
	cout => \U_VGA|Add6~7\);

-- Location: LCCOMB_X7_Y23_N14
\U_VGA|Add6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~8_combout\ = (\U_VGA|x_pos\(10) & (\U_VGA|Add6~7\ $ (GND))) # (!\U_VGA|x_pos\(10) & (!\U_VGA|Add6~7\ & VCC))
-- \U_VGA|Add6~9\ = CARRY((\U_VGA|x_pos\(10) & !\U_VGA|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(10),
	datad => VCC,
	cin => \U_VGA|Add6~7\,
	combout => \U_VGA|Add6~8_combout\,
	cout => \U_VGA|Add6~9\);

-- Location: LCCOMB_X7_Y23_N16
\U_VGA|Add6~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~10_combout\ = (\U_VGA|x_pos\(11) & (!\U_VGA|Add6~9\)) # (!\U_VGA|x_pos\(11) & ((\U_VGA|Add6~9\) # (GND)))
-- \U_VGA|Add6~11\ = CARRY((!\U_VGA|Add6~9\) # (!\U_VGA|x_pos\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|x_pos\(11),
	datad => VCC,
	cin => \U_VGA|Add6~9\,
	combout => \U_VGA|Add6~10_combout\,
	cout => \U_VGA|Add6~11\);

-- Location: LCCOMB_X7_Y23_N18
\U_VGA|Add6~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~12_combout\ = (\U_VGA|x_pos\(12) & (\U_VGA|Add6~11\ $ (GND))) # (!\U_VGA|x_pos\(12) & (!\U_VGA|Add6~11\ & VCC))
-- \U_VGA|Add6~13\ = CARRY((\U_VGA|x_pos\(12) & !\U_VGA|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|x_pos\(12),
	datad => VCC,
	cin => \U_VGA|Add6~11\,
	combout => \U_VGA|Add6~12_combout\,
	cout => \U_VGA|Add6~13\);

-- Location: LCCOMB_X7_Y23_N20
\U_VGA|Add6~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~14_combout\ = (\U_VGA|x_pos\(13) & (!\U_VGA|Add6~13\)) # (!\U_VGA|x_pos\(13) & ((\U_VGA|Add6~13\) # (GND)))
-- \U_VGA|Add6~15\ = CARRY((!\U_VGA|Add6~13\) # (!\U_VGA|x_pos\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(13),
	datad => VCC,
	cin => \U_VGA|Add6~13\,
	combout => \U_VGA|Add6~14_combout\,
	cout => \U_VGA|Add6~15\);

-- Location: LCCOMB_X7_Y23_N22
\U_VGA|Add6~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~16_combout\ = (\U_VGA|x_pos\(14) & (\U_VGA|Add6~15\ $ (GND))) # (!\U_VGA|x_pos\(14) & (!\U_VGA|Add6~15\ & VCC))
-- \U_VGA|Add6~17\ = CARRY((\U_VGA|x_pos\(14) & !\U_VGA|Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(14),
	datad => VCC,
	cin => \U_VGA|Add6~15\,
	combout => \U_VGA|Add6~16_combout\,
	cout => \U_VGA|Add6~17\);

-- Location: LCCOMB_X7_Y23_N24
\U_VGA|Add6~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~18_combout\ = (\U_VGA|x_pos\(15) & (!\U_VGA|Add6~17\)) # (!\U_VGA|x_pos\(15) & ((\U_VGA|Add6~17\) # (GND)))
-- \U_VGA|Add6~19\ = CARRY((!\U_VGA|Add6~17\) # (!\U_VGA|x_pos\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(15),
	datad => VCC,
	cin => \U_VGA|Add6~17\,
	combout => \U_VGA|Add6~18_combout\,
	cout => \U_VGA|Add6~19\);

-- Location: LCCOMB_X7_Y23_N26
\U_VGA|Add6~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~20_combout\ = (\U_VGA|x_pos\(16) & (\U_VGA|Add6~19\ $ (GND))) # (!\U_VGA|x_pos\(16) & (!\U_VGA|Add6~19\ & VCC))
-- \U_VGA|Add6~21\ = CARRY((\U_VGA|x_pos\(16) & !\U_VGA|Add6~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(16),
	datad => VCC,
	cin => \U_VGA|Add6~19\,
	combout => \U_VGA|Add6~20_combout\,
	cout => \U_VGA|Add6~21\);

-- Location: LCCOMB_X7_Y23_N28
\U_VGA|Add6~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~22_combout\ = (\U_VGA|x_pos\(17) & (!\U_VGA|Add6~21\)) # (!\U_VGA|x_pos\(17) & ((\U_VGA|Add6~21\) # (GND)))
-- \U_VGA|Add6~23\ = CARRY((!\U_VGA|Add6~21\) # (!\U_VGA|x_pos\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(17),
	datad => VCC,
	cin => \U_VGA|Add6~21\,
	combout => \U_VGA|Add6~22_combout\,
	cout => \U_VGA|Add6~23\);

-- Location: LCCOMB_X7_Y23_N30
\U_VGA|Add6~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~24_combout\ = (\U_VGA|x_pos\(18) & (\U_VGA|Add6~23\ $ (GND))) # (!\U_VGA|x_pos\(18) & (!\U_VGA|Add6~23\ & VCC))
-- \U_VGA|Add6~25\ = CARRY((\U_VGA|x_pos\(18) & !\U_VGA|Add6~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|x_pos\(18),
	datad => VCC,
	cin => \U_VGA|Add6~23\,
	combout => \U_VGA|Add6~24_combout\,
	cout => \U_VGA|Add6~25\);

-- Location: LCCOMB_X7_Y22_N0
\U_VGA|Add6~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~26_combout\ = (\U_VGA|x_pos\(19) & (!\U_VGA|Add6~25\)) # (!\U_VGA|x_pos\(19) & ((\U_VGA|Add6~25\) # (GND)))
-- \U_VGA|Add6~27\ = CARRY((!\U_VGA|Add6~25\) # (!\U_VGA|x_pos\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|x_pos\(19),
	datad => VCC,
	cin => \U_VGA|Add6~25\,
	combout => \U_VGA|Add6~26_combout\,
	cout => \U_VGA|Add6~27\);

-- Location: LCCOMB_X7_Y22_N2
\U_VGA|Add6~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~28_combout\ = (\U_VGA|x_pos\(20) & (\U_VGA|Add6~27\ $ (GND))) # (!\U_VGA|x_pos\(20) & (!\U_VGA|Add6~27\ & VCC))
-- \U_VGA|Add6~29\ = CARRY((\U_VGA|x_pos\(20) & !\U_VGA|Add6~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|x_pos\(20),
	datad => VCC,
	cin => \U_VGA|Add6~27\,
	combout => \U_VGA|Add6~28_combout\,
	cout => \U_VGA|Add6~29\);

-- Location: LCCOMB_X7_Y22_N4
\U_VGA|Add6~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~30_combout\ = (\U_VGA|x_pos\(21) & (!\U_VGA|Add6~29\)) # (!\U_VGA|x_pos\(21) & ((\U_VGA|Add6~29\) # (GND)))
-- \U_VGA|Add6~31\ = CARRY((!\U_VGA|Add6~29\) # (!\U_VGA|x_pos\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(21),
	datad => VCC,
	cin => \U_VGA|Add6~29\,
	combout => \U_VGA|Add6~30_combout\,
	cout => \U_VGA|Add6~31\);

-- Location: LCCOMB_X7_Y22_N6
\U_VGA|Add6~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~32_combout\ = (\U_VGA|x_pos\(22) & (\U_VGA|Add6~31\ $ (GND))) # (!\U_VGA|x_pos\(22) & (!\U_VGA|Add6~31\ & VCC))
-- \U_VGA|Add6~33\ = CARRY((\U_VGA|x_pos\(22) & !\U_VGA|Add6~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|x_pos\(22),
	datad => VCC,
	cin => \U_VGA|Add6~31\,
	combout => \U_VGA|Add6~32_combout\,
	cout => \U_VGA|Add6~33\);

-- Location: LCCOMB_X7_Y22_N8
\U_VGA|Add6~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~34_combout\ = (\U_VGA|x_pos\(23) & (!\U_VGA|Add6~33\)) # (!\U_VGA|x_pos\(23) & ((\U_VGA|Add6~33\) # (GND)))
-- \U_VGA|Add6~35\ = CARRY((!\U_VGA|Add6~33\) # (!\U_VGA|x_pos\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(23),
	datad => VCC,
	cin => \U_VGA|Add6~33\,
	combout => \U_VGA|Add6~34_combout\,
	cout => \U_VGA|Add6~35\);

-- Location: LCCOMB_X7_Y22_N10
\U_VGA|Add6~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~36_combout\ = (\U_VGA|x_pos\(24) & (\U_VGA|Add6~35\ $ (GND))) # (!\U_VGA|x_pos\(24) & (!\U_VGA|Add6~35\ & VCC))
-- \U_VGA|Add6~37\ = CARRY((\U_VGA|x_pos\(24) & !\U_VGA|Add6~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(24),
	datad => VCC,
	cin => \U_VGA|Add6~35\,
	combout => \U_VGA|Add6~36_combout\,
	cout => \U_VGA|Add6~37\);

-- Location: LCCOMB_X7_Y22_N12
\U_VGA|Add6~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~38_combout\ = (\U_VGA|x_pos\(25) & (!\U_VGA|Add6~37\)) # (!\U_VGA|x_pos\(25) & ((\U_VGA|Add6~37\) # (GND)))
-- \U_VGA|Add6~39\ = CARRY((!\U_VGA|Add6~37\) # (!\U_VGA|x_pos\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(25),
	datad => VCC,
	cin => \U_VGA|Add6~37\,
	combout => \U_VGA|Add6~38_combout\,
	cout => \U_VGA|Add6~39\);

-- Location: LCCOMB_X7_Y22_N14
\U_VGA|Add6~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~40_combout\ = (\U_VGA|x_pos\(26) & (\U_VGA|Add6~39\ $ (GND))) # (!\U_VGA|x_pos\(26) & (!\U_VGA|Add6~39\ & VCC))
-- \U_VGA|Add6~41\ = CARRY((\U_VGA|x_pos\(26) & !\U_VGA|Add6~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(26),
	datad => VCC,
	cin => \U_VGA|Add6~39\,
	combout => \U_VGA|Add6~40_combout\,
	cout => \U_VGA|Add6~41\);

-- Location: LCCOMB_X7_Y22_N16
\U_VGA|Add6~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~42_combout\ = (\U_VGA|x_pos\(27) & (!\U_VGA|Add6~41\)) # (!\U_VGA|x_pos\(27) & ((\U_VGA|Add6~41\) # (GND)))
-- \U_VGA|Add6~43\ = CARRY((!\U_VGA|Add6~41\) # (!\U_VGA|x_pos\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|x_pos\(27),
	datad => VCC,
	cin => \U_VGA|Add6~41\,
	combout => \U_VGA|Add6~42_combout\,
	cout => \U_VGA|Add6~43\);

-- Location: LCCOMB_X7_Y22_N18
\U_VGA|Add6~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~44_combout\ = (\U_VGA|x_pos\(28) & (\U_VGA|Add6~43\ $ (GND))) # (!\U_VGA|x_pos\(28) & (!\U_VGA|Add6~43\ & VCC))
-- \U_VGA|Add6~45\ = CARRY((\U_VGA|x_pos\(28) & !\U_VGA|Add6~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|x_pos\(28),
	datad => VCC,
	cin => \U_VGA|Add6~43\,
	combout => \U_VGA|Add6~44_combout\,
	cout => \U_VGA|Add6~45\);

-- Location: LCCOMB_X7_Y22_N20
\U_VGA|Add6~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~46_combout\ = (\U_VGA|x_pos\(29) & (!\U_VGA|Add6~45\)) # (!\U_VGA|x_pos\(29) & ((\U_VGA|Add6~45\) # (GND)))
-- \U_VGA|Add6~47\ = CARRY((!\U_VGA|Add6~45\) # (!\U_VGA|x_pos\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|x_pos\(29),
	datad => VCC,
	cin => \U_VGA|Add6~45\,
	combout => \U_VGA|Add6~46_combout\,
	cout => \U_VGA|Add6~47\);

-- Location: LCCOMB_X7_Y22_N22
\U_VGA|Add6~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~48_combout\ = (\U_VGA|x_pos\(30) & (\U_VGA|Add6~47\ $ (GND))) # (!\U_VGA|x_pos\(30) & (!\U_VGA|Add6~47\ & VCC))
-- \U_VGA|Add6~49\ = CARRY((\U_VGA|x_pos\(30) & !\U_VGA|Add6~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|x_pos\(30),
	datad => VCC,
	cin => \U_VGA|Add6~47\,
	combout => \U_VGA|Add6~48_combout\,
	cout => \U_VGA|Add6~49\);

-- Location: LCCOMB_X7_Y22_N24
\U_VGA|Add6~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add6~50_combout\ = \U_VGA|Add6~49\ $ (\U_VGA|x_pos\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_VGA|x_pos\(31),
	cin => \U_VGA|Add6~49\,
	combout => \U_VGA|Add6~50_combout\);

-- Location: LCCOMB_X8_Y22_N20
\U_VGA|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan0~0_combout\ = (!\U_VGA|Add6~26_combout\ & (!\U_VGA|Add6~24_combout\ & (!\U_VGA|Add6~30_combout\ & !\U_VGA|Add6~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add6~26_combout\,
	datab => \U_VGA|Add6~24_combout\,
	datac => \U_VGA|Add6~30_combout\,
	datad => \U_VGA|Add6~28_combout\,
	combout => \U_VGA|LessThan0~0_combout\);

-- Location: LCCOMB_X8_Y23_N6
\U_VGA|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan0~1_combout\ = ((\U_VGA|x_pos\(3)) # ((!\U_VGA|x_pos\(2)) # (!\U_VGA|x_pos\(1)))) # (!\U_VGA|x_pos\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(4),
	datab => \U_VGA|x_pos\(3),
	datac => \U_VGA|x_pos\(1),
	datad => \U_VGA|x_pos\(2),
	combout => \U_VGA|LessThan0~1_combout\);

-- Location: LCCOMB_X8_Y23_N0
\U_VGA|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan0~2_combout\ = ((\U_VGA|LessThan0~1_combout\) # (!\U_VGA|Add6~0_combout\)) # (!\U_VGA|x_pos\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|x_pos\(5),
	datac => \U_VGA|Add6~0_combout\,
	datad => \U_VGA|LessThan0~1_combout\,
	combout => \U_VGA|LessThan0~2_combout\);

-- Location: LCCOMB_X8_Y23_N30
\U_VGA|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan0~3_combout\ = ((!\U_VGA|Add6~4_combout\ & (\U_VGA|LessThan0~2_combout\ & !\U_VGA|Add6~2_combout\))) # (!\U_VGA|Add6~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add6~4_combout\,
	datab => \U_VGA|LessThan0~2_combout\,
	datac => \U_VGA|Add6~2_combout\,
	datad => \U_VGA|Add6~6_combout\,
	combout => \U_VGA|LessThan0~3_combout\);

-- Location: LCCOMB_X7_Y23_N0
\U_VGA|LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan0~4_combout\ = (!\U_VGA|Add6~12_combout\ & (!\U_VGA|Add6~14_combout\ & (!\U_VGA|Add6~8_combout\ & !\U_VGA|Add6~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add6~12_combout\,
	datab => \U_VGA|Add6~14_combout\,
	datac => \U_VGA|Add6~8_combout\,
	datad => \U_VGA|Add6~10_combout\,
	combout => \U_VGA|LessThan0~4_combout\);

-- Location: LCCOMB_X7_Y23_N2
\U_VGA|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan0~5_combout\ = (!\U_VGA|Add6~16_combout\ & (!\U_VGA|Add6~22_combout\ & (!\U_VGA|Add6~20_combout\ & !\U_VGA|Add6~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add6~16_combout\,
	datab => \U_VGA|Add6~22_combout\,
	datac => \U_VGA|Add6~20_combout\,
	datad => \U_VGA|Add6~18_combout\,
	combout => \U_VGA|LessThan0~5_combout\);

-- Location: LCCOMB_X7_Y23_N4
\U_VGA|LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan0~6_combout\ = (\U_VGA|LessThan0~3_combout\ & (\U_VGA|LessThan0~4_combout\ & (!\U_VGA|Add6~32_combout\ & \U_VGA|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|LessThan0~3_combout\,
	datab => \U_VGA|LessThan0~4_combout\,
	datac => \U_VGA|Add6~32_combout\,
	datad => \U_VGA|LessThan0~5_combout\,
	combout => \U_VGA|LessThan0~6_combout\);

-- Location: LCCOMB_X7_Y22_N30
\U_VGA|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan0~7_combout\ = (!\U_VGA|Add6~36_combout\ & (!\U_VGA|Add6~34_combout\ & (\U_VGA|LessThan0~0_combout\ & \U_VGA|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add6~36_combout\,
	datab => \U_VGA|Add6~34_combout\,
	datac => \U_VGA|LessThan0~0_combout\,
	datad => \U_VGA|LessThan0~6_combout\,
	combout => \U_VGA|LessThan0~7_combout\);

-- Location: LCCOMB_X7_Y22_N28
\U_VGA|LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan0~8_combout\ = (!\U_VGA|Add6~38_combout\ & (!\U_VGA|Add6~42_combout\ & (\U_VGA|LessThan0~7_combout\ & !\U_VGA|Add6~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add6~38_combout\,
	datab => \U_VGA|Add6~42_combout\,
	datac => \U_VGA|LessThan0~7_combout\,
	datad => \U_VGA|Add6~40_combout\,
	combout => \U_VGA|LessThan0~8_combout\);

-- Location: LCCOMB_X7_Y22_N26
\U_VGA|LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan0~9_combout\ = (!\U_VGA|Add6~46_combout\ & (!\U_VGA|Add6~44_combout\ & (!\U_VGA|Add6~48_combout\ & \U_VGA|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add6~46_combout\,
	datab => \U_VGA|Add6~44_combout\,
	datac => \U_VGA|Add6~48_combout\,
	datad => \U_VGA|LessThan0~8_combout\,
	combout => \U_VGA|LessThan0~9_combout\);

-- Location: LCCOMB_X6_Y22_N0
\U_VGA|mov_x~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_x~0_combout\ = \U_VGA|mov_x\(10) $ (((\U_VGA|ball_move~0_combout\) # ((!\U_VGA|Add6~50_combout\ & !\U_VGA|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_x\(10),
	datab => \U_VGA|ball_move~0_combout\,
	datac => \U_VGA|Add6~50_combout\,
	datad => \U_VGA|LessThan0~9_combout\,
	combout => \U_VGA|mov_x~0_combout\);

-- Location: LCCOMB_X6_Y19_N28
\U_VGA|Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add2~18_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datad => \U_VGA|Add2~16_combout\,
	combout => \U_VGA|Add2~18_combout\);

-- Location: FF_X6_Y19_N29
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

-- Location: LCCOMB_X8_Y23_N10
\U_VGA|LessThan7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan7~1_cout\ = CARRY(\U_VGA|sync|h_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(0),
	datad => VCC,
	cout => \U_VGA|LessThan7~1_cout\);

-- Location: LCCOMB_X8_Y23_N12
\U_VGA|LessThan7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan7~3_cout\ = CARRY((\U_VGA|sync|h_counter\(1) & (\U_VGA|x_pos\(1) & !\U_VGA|LessThan7~1_cout\)) # (!\U_VGA|sync|h_counter\(1) & ((\U_VGA|x_pos\(1)) # (!\U_VGA|LessThan7~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(1),
	datab => \U_VGA|x_pos\(1),
	datad => VCC,
	cin => \U_VGA|LessThan7~1_cout\,
	cout => \U_VGA|LessThan7~3_cout\);

-- Location: LCCOMB_X8_Y23_N14
\U_VGA|LessThan7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan7~5_cout\ = CARRY((\U_VGA|sync|h_counter\(2) & ((!\U_VGA|LessThan7~3_cout\) # (!\U_VGA|x_pos\(2)))) # (!\U_VGA|sync|h_counter\(2) & (!\U_VGA|x_pos\(2) & !\U_VGA|LessThan7~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(2),
	datab => \U_VGA|x_pos\(2),
	datad => VCC,
	cin => \U_VGA|LessThan7~3_cout\,
	cout => \U_VGA|LessThan7~5_cout\);

-- Location: LCCOMB_X8_Y23_N16
\U_VGA|LessThan7~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan7~7_cout\ = CARRY((\U_VGA|x_pos\(3) & (!\U_VGA|sync|h_counter\(3) & !\U_VGA|LessThan7~5_cout\)) # (!\U_VGA|x_pos\(3) & ((!\U_VGA|LessThan7~5_cout\) # (!\U_VGA|sync|h_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(3),
	datab => \U_VGA|sync|h_counter\(3),
	datad => VCC,
	cin => \U_VGA|LessThan7~5_cout\,
	cout => \U_VGA|LessThan7~7_cout\);

-- Location: LCCOMB_X8_Y23_N18
\U_VGA|LessThan7~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan7~9_cout\ = CARRY((\U_VGA|x_pos\(4) & (\U_VGA|sync|h_counter\(4) & !\U_VGA|LessThan7~7_cout\)) # (!\U_VGA|x_pos\(4) & ((\U_VGA|sync|h_counter\(4)) # (!\U_VGA|LessThan7~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(4),
	datab => \U_VGA|sync|h_counter\(4),
	datad => VCC,
	cin => \U_VGA|LessThan7~7_cout\,
	cout => \U_VGA|LessThan7~9_cout\);

-- Location: LCCOMB_X8_Y23_N20
\U_VGA|LessThan7~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan7~11_cout\ = CARRY((\U_VGA|sync|h_counter\(5) & (\U_VGA|x_pos\(5) & !\U_VGA|LessThan7~9_cout\)) # (!\U_VGA|sync|h_counter\(5) & ((\U_VGA|x_pos\(5)) # (!\U_VGA|LessThan7~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(5),
	datab => \U_VGA|x_pos\(5),
	datad => VCC,
	cin => \U_VGA|LessThan7~9_cout\,
	cout => \U_VGA|LessThan7~11_cout\);

-- Location: LCCOMB_X8_Y23_N22
\U_VGA|LessThan7~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan7~13_cout\ = CARRY((\U_VGA|sync|h_counter\(6) & ((!\U_VGA|LessThan7~11_cout\) # (!\U_VGA|Add6~0_combout\))) # (!\U_VGA|sync|h_counter\(6) & (!\U_VGA|Add6~0_combout\ & !\U_VGA|LessThan7~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(6),
	datab => \U_VGA|Add6~0_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan7~11_cout\,
	cout => \U_VGA|LessThan7~13_cout\);

-- Location: LCCOMB_X8_Y23_N24
\U_VGA|LessThan7~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan7~15_cout\ = CARRY((\U_VGA|Add6~2_combout\ & ((!\U_VGA|LessThan7~13_cout\) # (!\U_VGA|sync|h_counter\(7)))) # (!\U_VGA|Add6~2_combout\ & (!\U_VGA|sync|h_counter\(7) & !\U_VGA|LessThan7~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add6~2_combout\,
	datab => \U_VGA|sync|h_counter\(7),
	datad => VCC,
	cin => \U_VGA|LessThan7~13_cout\,
	cout => \U_VGA|LessThan7~15_cout\);

-- Location: LCCOMB_X8_Y23_N26
\U_VGA|LessThan7~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan7~17_cout\ = CARRY((\U_VGA|Add6~4_combout\ & (\U_VGA|sync|h_counter\(8) & !\U_VGA|LessThan7~15_cout\)) # (!\U_VGA|Add6~4_combout\ & ((\U_VGA|sync|h_counter\(8)) # (!\U_VGA|LessThan7~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add6~4_combout\,
	datab => \U_VGA|sync|h_counter\(8),
	datad => VCC,
	cin => \U_VGA|LessThan7~15_cout\,
	cout => \U_VGA|LessThan7~17_cout\);

-- Location: LCCOMB_X8_Y23_N28
\U_VGA|LessThan7~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan7~18_combout\ = (\U_VGA|sync|h_counter\(9) & ((\U_VGA|LessThan7~17_cout\) # (!\U_VGA|Add6~6_combout\))) # (!\U_VGA|sync|h_counter\(9) & (\U_VGA|LessThan7~17_cout\ & !\U_VGA|Add6~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|sync|h_counter\(9),
	datad => \U_VGA|Add6~6_combout\,
	cin => \U_VGA|LessThan7~17_cout\,
	combout => \U_VGA|LessThan7~18_combout\);

-- Location: LCCOMB_X1_Y18_N2
\U_VGA|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~0_combout\ = \U_VGA|y_pos\(1) $ (VCC)
-- \U_VGA|Add3~1\ = CARRY(\U_VGA|y_pos\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos\(1),
	datad => VCC,
	combout => \U_VGA|Add3~0_combout\,
	cout => \U_VGA|Add3~1\);

-- Location: LCCOMB_X2_Y22_N26
\U_VGA|Add3~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~26_combout\ = (\U_VGA|Add3~0_combout\ & \button_n[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|Add3~0_combout\,
	datad => \button_n[0]~input_o\,
	combout => \U_VGA|Add3~26_combout\);

-- Location: FF_X2_Y22_N27
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

-- Location: LCCOMB_X1_Y18_N4
\U_VGA|Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~2_combout\ = (\U_VGA|mov_y~0_combout\ & ((\U_VGA|y_pos\(2) & (\U_VGA|Add3~1\ & VCC)) # (!\U_VGA|y_pos\(2) & (!\U_VGA|Add3~1\)))) # (!\U_VGA|mov_y~0_combout\ & ((\U_VGA|y_pos\(2) & (!\U_VGA|Add3~1\)) # (!\U_VGA|y_pos\(2) & ((\U_VGA|Add3~1\) # 
-- (GND)))))
-- \U_VGA|Add3~3\ = CARRY((\U_VGA|mov_y~0_combout\ & (!\U_VGA|y_pos\(2) & !\U_VGA|Add3~1\)) # (!\U_VGA|mov_y~0_combout\ & ((!\U_VGA|Add3~1\) # (!\U_VGA|y_pos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y~0_combout\,
	datab => \U_VGA|y_pos\(2),
	datad => VCC,
	cin => \U_VGA|Add3~1\,
	combout => \U_VGA|Add3~2_combout\,
	cout => \U_VGA|Add3~3\);

-- Location: LCCOMB_X1_Y22_N16
\U_VGA|Add3~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~25_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~2_combout\,
	combout => \U_VGA|Add3~25_combout\);

-- Location: FF_X2_Y22_N11
\U_VGA|y_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|Add3~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos\(2));

-- Location: LCCOMB_X1_Y18_N6
\U_VGA|Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~4_combout\ = ((\U_VGA|mov_y~0_combout\ $ (\U_VGA|y_pos\(3) $ (\U_VGA|Add3~3\)))) # (GND)
-- \U_VGA|Add3~5\ = CARRY((\U_VGA|mov_y~0_combout\ & ((!\U_VGA|Add3~3\) # (!\U_VGA|y_pos\(3)))) # (!\U_VGA|mov_y~0_combout\ & (!\U_VGA|y_pos\(3) & !\U_VGA|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y~0_combout\,
	datab => \U_VGA|y_pos\(3),
	datad => VCC,
	cin => \U_VGA|Add3~3\,
	combout => \U_VGA|Add3~4_combout\,
	cout => \U_VGA|Add3~5\);

-- Location: LCCOMB_X2_Y18_N14
\U_VGA|Add3~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~24_combout\ = (\button_n[0]~input_o\ & !\U_VGA|Add3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datac => \U_VGA|Add3~4_combout\,
	combout => \U_VGA|Add3~24_combout\);

-- Location: FF_X2_Y18_N15
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

-- Location: LCCOMB_X1_Y18_N8
\U_VGA|Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~6_combout\ = (\U_VGA|mov_y~0_combout\ & ((\U_VGA|y_pos\(4) & (\U_VGA|Add3~5\ & VCC)) # (!\U_VGA|y_pos\(4) & (!\U_VGA|Add3~5\)))) # (!\U_VGA|mov_y~0_combout\ & ((\U_VGA|y_pos\(4) & (!\U_VGA|Add3~5\)) # (!\U_VGA|y_pos\(4) & ((\U_VGA|Add3~5\) # 
-- (GND)))))
-- \U_VGA|Add3~7\ = CARRY((\U_VGA|mov_y~0_combout\ & (!\U_VGA|y_pos\(4) & !\U_VGA|Add3~5\)) # (!\U_VGA|mov_y~0_combout\ & ((!\U_VGA|Add3~5\) # (!\U_VGA|y_pos\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y~0_combout\,
	datab => \U_VGA|y_pos\(4),
	datad => VCC,
	cin => \U_VGA|Add3~5\,
	combout => \U_VGA|Add3~6_combout\,
	cout => \U_VGA|Add3~7\);

-- Location: LCCOMB_X2_Y18_N16
\U_VGA|Add3~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~23_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~6_combout\,
	combout => \U_VGA|Add3~23_combout\);

-- Location: FF_X2_Y18_N17
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

-- Location: LCCOMB_X1_Y18_N10
\U_VGA|Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~8_combout\ = ((\U_VGA|mov_y~0_combout\ $ (\U_VGA|y_pos\(5) $ (!\U_VGA|Add3~7\)))) # (GND)
-- \U_VGA|Add3~9\ = CARRY((\U_VGA|mov_y~0_combout\ & ((\U_VGA|y_pos\(5)) # (!\U_VGA|Add3~7\))) # (!\U_VGA|mov_y~0_combout\ & (\U_VGA|y_pos\(5) & !\U_VGA|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y~0_combout\,
	datab => \U_VGA|y_pos\(5),
	datad => VCC,
	cin => \U_VGA|Add3~7\,
	combout => \U_VGA|Add3~8_combout\,
	cout => \U_VGA|Add3~9\);

-- Location: LCCOMB_X2_Y22_N24
\U_VGA|Add3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~22_combout\ = (\U_VGA|Add3~8_combout\ & \button_n[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|Add3~8_combout\,
	datad => \button_n[0]~input_o\,
	combout => \U_VGA|Add3~22_combout\);

-- Location: FF_X2_Y22_N25
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

-- Location: LCCOMB_X1_Y18_N12
\U_VGA|Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~10_combout\ = (\U_VGA|mov_y~0_combout\ & ((\U_VGA|y_pos\(6) & (!\U_VGA|Add3~9\)) # (!\U_VGA|y_pos\(6) & (\U_VGA|Add3~9\ & VCC)))) # (!\U_VGA|mov_y~0_combout\ & ((\U_VGA|y_pos\(6) & ((\U_VGA|Add3~9\) # (GND))) # (!\U_VGA|y_pos\(6) & 
-- (!\U_VGA|Add3~9\))))
-- \U_VGA|Add3~11\ = CARRY((\U_VGA|mov_y~0_combout\ & (\U_VGA|y_pos\(6) & !\U_VGA|Add3~9\)) # (!\U_VGA|mov_y~0_combout\ & ((\U_VGA|y_pos\(6)) # (!\U_VGA|Add3~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y~0_combout\,
	datab => \U_VGA|y_pos\(6),
	datad => VCC,
	cin => \U_VGA|Add3~9\,
	combout => \U_VGA|Add3~10_combout\,
	cout => \U_VGA|Add3~11\);

-- Location: LCCOMB_X2_Y22_N30
\U_VGA|Add3~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~21_combout\ = (\button_n[0]~input_o\ & !\U_VGA|Add3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~10_combout\,
	combout => \U_VGA|Add3~21_combout\);

-- Location: FF_X2_Y22_N31
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

-- Location: LCCOMB_X1_Y18_N14
\U_VGA|Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~12_combout\ = ((\U_VGA|mov_y~0_combout\ $ (\U_VGA|y_pos\(7) $ (\U_VGA|Add3~11\)))) # (GND)
-- \U_VGA|Add3~13\ = CARRY((\U_VGA|mov_y~0_combout\ & ((!\U_VGA|Add3~11\) # (!\U_VGA|y_pos\(7)))) # (!\U_VGA|mov_y~0_combout\ & (!\U_VGA|y_pos\(7) & !\U_VGA|Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y~0_combout\,
	datab => \U_VGA|y_pos\(7),
	datad => VCC,
	cin => \U_VGA|Add3~11\,
	combout => \U_VGA|Add3~12_combout\,
	cout => \U_VGA|Add3~13\);

-- Location: LCCOMB_X2_Y22_N0
\U_VGA|Add3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~20_combout\ = (\button_n[0]~input_o\ & !\U_VGA|Add3~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~12_combout\,
	combout => \U_VGA|Add3~20_combout\);

-- Location: FF_X2_Y22_N1
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

-- Location: LCCOMB_X1_Y18_N16
\U_VGA|Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~14_combout\ = (\U_VGA|y_pos\(8) & ((\U_VGA|mov_y~0_combout\ & (\U_VGA|Add3~13\ & VCC)) # (!\U_VGA|mov_y~0_combout\ & (!\U_VGA|Add3~13\)))) # (!\U_VGA|y_pos\(8) & ((\U_VGA|mov_y~0_combout\ & (!\U_VGA|Add3~13\)) # (!\U_VGA|mov_y~0_combout\ & 
-- ((\U_VGA|Add3~13\) # (GND)))))
-- \U_VGA|Add3~15\ = CARRY((\U_VGA|y_pos\(8) & (!\U_VGA|mov_y~0_combout\ & !\U_VGA|Add3~13\)) # (!\U_VGA|y_pos\(8) & ((!\U_VGA|Add3~13\) # (!\U_VGA|mov_y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(8),
	datab => \U_VGA|mov_y~0_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~13\,
	combout => \U_VGA|Add3~14_combout\,
	cout => \U_VGA|Add3~15\);

-- Location: LCCOMB_X2_Y22_N4
\U_VGA|Add3~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~19_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datac => \U_VGA|Add3~14_combout\,
	combout => \U_VGA|Add3~19_combout\);

-- Location: FF_X2_Y22_N5
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

-- Location: LCCOMB_X1_Y18_N18
\U_VGA|Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~16_combout\ = ((\U_VGA|mov_y~0_combout\ $ (\U_VGA|y_pos\(9) $ (!\U_VGA|Add3~15\)))) # (GND)
-- \U_VGA|Add3~17\ = CARRY((\U_VGA|mov_y~0_combout\ & ((\U_VGA|y_pos\(9)) # (!\U_VGA|Add3~15\))) # (!\U_VGA|mov_y~0_combout\ & (\U_VGA|y_pos\(9) & !\U_VGA|Add3~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y~0_combout\,
	datab => \U_VGA|y_pos\(9),
	datad => VCC,
	cin => \U_VGA|Add3~15\,
	combout => \U_VGA|Add3~16_combout\,
	cout => \U_VGA|Add3~17\);

-- Location: LCCOMB_X1_Y18_N20
\U_VGA|Add3~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~27_combout\ = (\U_VGA|y_pos\(10) & ((\U_VGA|mov_y~0_combout\ & (\U_VGA|Add3~17\ & VCC)) # (!\U_VGA|mov_y~0_combout\ & (!\U_VGA|Add3~17\)))) # (!\U_VGA|y_pos\(10) & ((\U_VGA|mov_y~0_combout\ & (!\U_VGA|Add3~17\)) # (!\U_VGA|mov_y~0_combout\ & 
-- ((\U_VGA|Add3~17\) # (GND)))))
-- \U_VGA|Add3~28\ = CARRY((\U_VGA|y_pos\(10) & (!\U_VGA|mov_y~0_combout\ & !\U_VGA|Add3~17\)) # (!\U_VGA|y_pos\(10) & ((!\U_VGA|Add3~17\) # (!\U_VGA|mov_y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(10),
	datab => \U_VGA|mov_y~0_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~17\,
	combout => \U_VGA|Add3~27_combout\,
	cout => \U_VGA|Add3~28\);

-- Location: LCCOMB_X3_Y18_N0
\U_VGA|Add3~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~92_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~27_combout\,
	combout => \U_VGA|Add3~92_combout\);

-- Location: FF_X3_Y18_N1
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

-- Location: LCCOMB_X1_Y18_N22
\U_VGA|Add3~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~29_combout\ = ((\U_VGA|y_pos\(11) $ (\U_VGA|mov_y~0_combout\ $ (!\U_VGA|Add3~28\)))) # (GND)
-- \U_VGA|Add3~30\ = CARRY((\U_VGA|y_pos\(11) & ((\U_VGA|mov_y~0_combout\) # (!\U_VGA|Add3~28\))) # (!\U_VGA|y_pos\(11) & (\U_VGA|mov_y~0_combout\ & !\U_VGA|Add3~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(11),
	datab => \U_VGA|mov_y~0_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~28\,
	combout => \U_VGA|Add3~29_combout\,
	cout => \U_VGA|Add3~30\);

-- Location: LCCOMB_X4_Y18_N10
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

-- Location: FF_X4_Y18_N11
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

-- Location: LCCOMB_X1_Y18_N24
\U_VGA|Add3~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~31_combout\ = (\U_VGA|y_pos\(12) & ((\U_VGA|mov_y~0_combout\ & (\U_VGA|Add3~30\ & VCC)) # (!\U_VGA|mov_y~0_combout\ & (!\U_VGA|Add3~30\)))) # (!\U_VGA|y_pos\(12) & ((\U_VGA|mov_y~0_combout\ & (!\U_VGA|Add3~30\)) # (!\U_VGA|mov_y~0_combout\ & 
-- ((\U_VGA|Add3~30\) # (GND)))))
-- \U_VGA|Add3~32\ = CARRY((\U_VGA|y_pos\(12) & (!\U_VGA|mov_y~0_combout\ & !\U_VGA|Add3~30\)) # (!\U_VGA|y_pos\(12) & ((!\U_VGA|Add3~30\) # (!\U_VGA|mov_y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(12),
	datab => \U_VGA|mov_y~0_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~30\,
	combout => \U_VGA|Add3~31_combout\,
	cout => \U_VGA|Add3~32\);

-- Location: LCCOMB_X1_Y18_N0
\U_VGA|Add3~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~90_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~31_combout\,
	combout => \U_VGA|Add3~90_combout\);

-- Location: FF_X1_Y18_N1
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

-- Location: LCCOMB_X1_Y18_N26
\U_VGA|Add3~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~33_combout\ = ((\U_VGA|y_pos\(13) $ (\U_VGA|mov_y~0_combout\ $ (!\U_VGA|Add3~32\)))) # (GND)
-- \U_VGA|Add3~34\ = CARRY((\U_VGA|y_pos\(13) & ((\U_VGA|mov_y~0_combout\) # (!\U_VGA|Add3~32\))) # (!\U_VGA|y_pos\(13) & (\U_VGA|mov_y~0_combout\ & !\U_VGA|Add3~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(13),
	datab => \U_VGA|mov_y~0_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~32\,
	combout => \U_VGA|Add3~33_combout\,
	cout => \U_VGA|Add3~34\);

-- Location: LCCOMB_X4_Y18_N12
\U_VGA|Add3~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~89_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~33_combout\,
	combout => \U_VGA|Add3~89_combout\);

-- Location: FF_X4_Y18_N13
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

-- Location: LCCOMB_X1_Y18_N28
\U_VGA|Add3~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~35_combout\ = (\U_VGA|y_pos\(14) & ((\U_VGA|mov_y~0_combout\ & (\U_VGA|Add3~34\ & VCC)) # (!\U_VGA|mov_y~0_combout\ & (!\U_VGA|Add3~34\)))) # (!\U_VGA|y_pos\(14) & ((\U_VGA|mov_y~0_combout\ & (!\U_VGA|Add3~34\)) # (!\U_VGA|mov_y~0_combout\ & 
-- ((\U_VGA|Add3~34\) # (GND)))))
-- \U_VGA|Add3~36\ = CARRY((\U_VGA|y_pos\(14) & (!\U_VGA|mov_y~0_combout\ & !\U_VGA|Add3~34\)) # (!\U_VGA|y_pos\(14) & ((!\U_VGA|Add3~34\) # (!\U_VGA|mov_y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(14),
	datab => \U_VGA|mov_y~0_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~34\,
	combout => \U_VGA|Add3~35_combout\,
	cout => \U_VGA|Add3~36\);

-- Location: LCCOMB_X4_Y18_N22
\U_VGA|Add3~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~88_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datac => \U_VGA|Add3~35_combout\,
	combout => \U_VGA|Add3~88_combout\);

-- Location: FF_X4_Y18_N23
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

-- Location: LCCOMB_X1_Y18_N30
\U_VGA|Add3~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~37_combout\ = ((\U_VGA|y_pos\(15) $ (\U_VGA|mov_y~0_combout\ $ (!\U_VGA|Add3~36\)))) # (GND)
-- \U_VGA|Add3~38\ = CARRY((\U_VGA|y_pos\(15) & ((\U_VGA|mov_y~0_combout\) # (!\U_VGA|Add3~36\))) # (!\U_VGA|y_pos\(15) & (\U_VGA|mov_y~0_combout\ & !\U_VGA|Add3~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(15),
	datab => \U_VGA|mov_y~0_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~36\,
	combout => \U_VGA|Add3~37_combout\,
	cout => \U_VGA|Add3~38\);

-- Location: LCCOMB_X4_Y18_N24
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

-- Location: FF_X4_Y18_N25
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

-- Location: LCCOMB_X1_Y17_N0
\U_VGA|Add3~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~39_combout\ = (\U_VGA|y_pos\(16) & ((\U_VGA|mov_y~0_combout\ & (\U_VGA|Add3~38\ & VCC)) # (!\U_VGA|mov_y~0_combout\ & (!\U_VGA|Add3~38\)))) # (!\U_VGA|y_pos\(16) & ((\U_VGA|mov_y~0_combout\ & (!\U_VGA|Add3~38\)) # (!\U_VGA|mov_y~0_combout\ & 
-- ((\U_VGA|Add3~38\) # (GND)))))
-- \U_VGA|Add3~40\ = CARRY((\U_VGA|y_pos\(16) & (!\U_VGA|mov_y~0_combout\ & !\U_VGA|Add3~38\)) # (!\U_VGA|y_pos\(16) & ((!\U_VGA|Add3~38\) # (!\U_VGA|mov_y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(16),
	datab => \U_VGA|mov_y~0_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~38\,
	combout => \U_VGA|Add3~39_combout\,
	cout => \U_VGA|Add3~40\);

-- Location: LCCOMB_X4_Y18_N30
\U_VGA|Add3~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~86_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~39_combout\,
	combout => \U_VGA|Add3~86_combout\);

-- Location: FF_X4_Y18_N31
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

-- Location: LCCOMB_X1_Y17_N2
\U_VGA|Add3~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~41_combout\ = ((\U_VGA|y_pos\(17) $ (\U_VGA|mov_y~0_combout\ $ (!\U_VGA|Add3~40\)))) # (GND)
-- \U_VGA|Add3~42\ = CARRY((\U_VGA|y_pos\(17) & ((\U_VGA|mov_y~0_combout\) # (!\U_VGA|Add3~40\))) # (!\U_VGA|y_pos\(17) & (\U_VGA|mov_y~0_combout\ & !\U_VGA|Add3~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(17),
	datab => \U_VGA|mov_y~0_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~40\,
	combout => \U_VGA|Add3~41_combout\,
	cout => \U_VGA|Add3~42\);

-- Location: LCCOMB_X2_Y17_N20
\U_VGA|Add3~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~85_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~41_combout\,
	combout => \U_VGA|Add3~85_combout\);

-- Location: FF_X2_Y17_N21
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

-- Location: LCCOMB_X1_Y17_N4
\U_VGA|Add3~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~43_combout\ = (\U_VGA|y_pos\(18) & ((\U_VGA|mov_y~0_combout\ & (\U_VGA|Add3~42\ & VCC)) # (!\U_VGA|mov_y~0_combout\ & (!\U_VGA|Add3~42\)))) # (!\U_VGA|y_pos\(18) & ((\U_VGA|mov_y~0_combout\ & (!\U_VGA|Add3~42\)) # (!\U_VGA|mov_y~0_combout\ & 
-- ((\U_VGA|Add3~42\) # (GND)))))
-- \U_VGA|Add3~44\ = CARRY((\U_VGA|y_pos\(18) & (!\U_VGA|mov_y~0_combout\ & !\U_VGA|Add3~42\)) # (!\U_VGA|y_pos\(18) & ((!\U_VGA|Add3~42\) # (!\U_VGA|mov_y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(18),
	datab => \U_VGA|mov_y~0_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~42\,
	combout => \U_VGA|Add3~43_combout\,
	cout => \U_VGA|Add3~44\);

-- Location: LCCOMB_X2_Y17_N2
\U_VGA|Add3~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~84_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datac => \U_VGA|Add3~43_combout\,
	combout => \U_VGA|Add3~84_combout\);

-- Location: FF_X2_Y17_N3
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

-- Location: LCCOMB_X1_Y17_N6
\U_VGA|Add3~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~45_combout\ = ((\U_VGA|y_pos\(19) $ (\U_VGA|mov_y~0_combout\ $ (!\U_VGA|Add3~44\)))) # (GND)
-- \U_VGA|Add3~46\ = CARRY((\U_VGA|y_pos\(19) & ((\U_VGA|mov_y~0_combout\) # (!\U_VGA|Add3~44\))) # (!\U_VGA|y_pos\(19) & (\U_VGA|mov_y~0_combout\ & !\U_VGA|Add3~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(19),
	datab => \U_VGA|mov_y~0_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~44\,
	combout => \U_VGA|Add3~45_combout\,
	cout => \U_VGA|Add3~46\);

-- Location: LCCOMB_X2_Y17_N8
\U_VGA|Add3~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~83_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datac => \U_VGA|Add3~45_combout\,
	combout => \U_VGA|Add3~83_combout\);

-- Location: FF_X2_Y17_N9
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

-- Location: LCCOMB_X1_Y17_N8
\U_VGA|Add3~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~47_combout\ = (\U_VGA|y_pos\(20) & ((\U_VGA|mov_y~0_combout\ & (\U_VGA|Add3~46\ & VCC)) # (!\U_VGA|mov_y~0_combout\ & (!\U_VGA|Add3~46\)))) # (!\U_VGA|y_pos\(20) & ((\U_VGA|mov_y~0_combout\ & (!\U_VGA|Add3~46\)) # (!\U_VGA|mov_y~0_combout\ & 
-- ((\U_VGA|Add3~46\) # (GND)))))
-- \U_VGA|Add3~48\ = CARRY((\U_VGA|y_pos\(20) & (!\U_VGA|mov_y~0_combout\ & !\U_VGA|Add3~46\)) # (!\U_VGA|y_pos\(20) & ((!\U_VGA|Add3~46\) # (!\U_VGA|mov_y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(20),
	datab => \U_VGA|mov_y~0_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~46\,
	combout => \U_VGA|Add3~47_combout\,
	cout => \U_VGA|Add3~48\);

-- Location: LCCOMB_X2_Y17_N26
\U_VGA|Add3~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~82_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~47_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~47_combout\,
	combout => \U_VGA|Add3~82_combout\);

-- Location: FF_X2_Y17_N27
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

-- Location: LCCOMB_X1_Y17_N10
\U_VGA|Add3~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~49_combout\ = ((\U_VGA|y_pos\(21) $ (\U_VGA|mov_y~0_combout\ $ (!\U_VGA|Add3~48\)))) # (GND)
-- \U_VGA|Add3~50\ = CARRY((\U_VGA|y_pos\(21) & ((\U_VGA|mov_y~0_combout\) # (!\U_VGA|Add3~48\))) # (!\U_VGA|y_pos\(21) & (\U_VGA|mov_y~0_combout\ & !\U_VGA|Add3~48\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(21),
	datab => \U_VGA|mov_y~0_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~48\,
	combout => \U_VGA|Add3~49_combout\,
	cout => \U_VGA|Add3~50\);

-- Location: LCCOMB_X3_Y17_N26
\U_VGA|Add3~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~81_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~49_combout\,
	combout => \U_VGA|Add3~81_combout\);

-- Location: FF_X3_Y17_N27
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

-- Location: LCCOMB_X1_Y17_N12
\U_VGA|Add3~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~51_combout\ = (\U_VGA|y_pos\(22) & ((\U_VGA|mov_y~0_combout\ & (\U_VGA|Add3~50\ & VCC)) # (!\U_VGA|mov_y~0_combout\ & (!\U_VGA|Add3~50\)))) # (!\U_VGA|y_pos\(22) & ((\U_VGA|mov_y~0_combout\ & (!\U_VGA|Add3~50\)) # (!\U_VGA|mov_y~0_combout\ & 
-- ((\U_VGA|Add3~50\) # (GND)))))
-- \U_VGA|Add3~52\ = CARRY((\U_VGA|y_pos\(22) & (!\U_VGA|mov_y~0_combout\ & !\U_VGA|Add3~50\)) # (!\U_VGA|y_pos\(22) & ((!\U_VGA|Add3~50\) # (!\U_VGA|mov_y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(22),
	datab => \U_VGA|mov_y~0_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~50\,
	combout => \U_VGA|Add3~51_combout\,
	cout => \U_VGA|Add3~52\);

-- Location: LCCOMB_X3_Y17_N28
\U_VGA|Add3~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~80_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~51_combout\,
	combout => \U_VGA|Add3~80_combout\);

-- Location: FF_X3_Y17_N29
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

-- Location: LCCOMB_X1_Y17_N14
\U_VGA|Add3~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~53_combout\ = ((\U_VGA|y_pos\(23) $ (\U_VGA|mov_y~0_combout\ $ (!\U_VGA|Add3~52\)))) # (GND)
-- \U_VGA|Add3~54\ = CARRY((\U_VGA|y_pos\(23) & ((\U_VGA|mov_y~0_combout\) # (!\U_VGA|Add3~52\))) # (!\U_VGA|y_pos\(23) & (\U_VGA|mov_y~0_combout\ & !\U_VGA|Add3~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(23),
	datab => \U_VGA|mov_y~0_combout\,
	datad => VCC,
	cin => \U_VGA|Add3~52\,
	combout => \U_VGA|Add3~53_combout\,
	cout => \U_VGA|Add3~54\);

-- Location: LCCOMB_X3_Y17_N30
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

-- Location: FF_X3_Y17_N31
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

-- Location: LCCOMB_X1_Y17_N16
\U_VGA|Add3~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~55_combout\ = (\U_VGA|mov_y~0_combout\ & ((\U_VGA|y_pos\(24) & (\U_VGA|Add3~54\ & VCC)) # (!\U_VGA|y_pos\(24) & (!\U_VGA|Add3~54\)))) # (!\U_VGA|mov_y~0_combout\ & ((\U_VGA|y_pos\(24) & (!\U_VGA|Add3~54\)) # (!\U_VGA|y_pos\(24) & 
-- ((\U_VGA|Add3~54\) # (GND)))))
-- \U_VGA|Add3~56\ = CARRY((\U_VGA|mov_y~0_combout\ & (!\U_VGA|y_pos\(24) & !\U_VGA|Add3~54\)) # (!\U_VGA|mov_y~0_combout\ & ((!\U_VGA|Add3~54\) # (!\U_VGA|y_pos\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y~0_combout\,
	datab => \U_VGA|y_pos\(24),
	datad => VCC,
	cin => \U_VGA|Add3~54\,
	combout => \U_VGA|Add3~55_combout\,
	cout => \U_VGA|Add3~56\);

-- Location: LCCOMB_X2_Y17_N16
\U_VGA|Add3~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~78_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~55_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datac => \U_VGA|Add3~55_combout\,
	combout => \U_VGA|Add3~78_combout\);

-- Location: FF_X2_Y17_N17
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

-- Location: LCCOMB_X1_Y17_N18
\U_VGA|Add3~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~57_combout\ = ((\U_VGA|mov_y~0_combout\ $ (\U_VGA|y_pos\(25) $ (!\U_VGA|Add3~56\)))) # (GND)
-- \U_VGA|Add3~58\ = CARRY((\U_VGA|mov_y~0_combout\ & ((\U_VGA|y_pos\(25)) # (!\U_VGA|Add3~56\))) # (!\U_VGA|mov_y~0_combout\ & (\U_VGA|y_pos\(25) & !\U_VGA|Add3~56\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y~0_combout\,
	datab => \U_VGA|y_pos\(25),
	datad => VCC,
	cin => \U_VGA|Add3~56\,
	combout => \U_VGA|Add3~57_combout\,
	cout => \U_VGA|Add3~58\);

-- Location: LCCOMB_X2_Y17_N18
\U_VGA|Add3~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~77_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~57_combout\,
	combout => \U_VGA|Add3~77_combout\);

-- Location: FF_X2_Y17_N19
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

-- Location: LCCOMB_X1_Y17_N20
\U_VGA|Add3~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~59_combout\ = (\U_VGA|mov_y~0_combout\ & ((\U_VGA|y_pos\(26) & (\U_VGA|Add3~58\ & VCC)) # (!\U_VGA|y_pos\(26) & (!\U_VGA|Add3~58\)))) # (!\U_VGA|mov_y~0_combout\ & ((\U_VGA|y_pos\(26) & (!\U_VGA|Add3~58\)) # (!\U_VGA|y_pos\(26) & 
-- ((\U_VGA|Add3~58\) # (GND)))))
-- \U_VGA|Add3~60\ = CARRY((\U_VGA|mov_y~0_combout\ & (!\U_VGA|y_pos\(26) & !\U_VGA|Add3~58\)) # (!\U_VGA|mov_y~0_combout\ & ((!\U_VGA|Add3~58\) # (!\U_VGA|y_pos\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y~0_combout\,
	datab => \U_VGA|y_pos\(26),
	datad => VCC,
	cin => \U_VGA|Add3~58\,
	combout => \U_VGA|Add3~59_combout\,
	cout => \U_VGA|Add3~60\);

-- Location: LCCOMB_X2_Y17_N24
\U_VGA|Add3~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~76_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~59_combout\,
	combout => \U_VGA|Add3~76_combout\);

-- Location: FF_X2_Y17_N25
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

-- Location: LCCOMB_X1_Y17_N22
\U_VGA|Add3~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~61_combout\ = ((\U_VGA|mov_y~0_combout\ $ (\U_VGA|y_pos\(27) $ (!\U_VGA|Add3~60\)))) # (GND)
-- \U_VGA|Add3~62\ = CARRY((\U_VGA|mov_y~0_combout\ & ((\U_VGA|y_pos\(27)) # (!\U_VGA|Add3~60\))) # (!\U_VGA|mov_y~0_combout\ & (\U_VGA|y_pos\(27) & !\U_VGA|Add3~60\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y~0_combout\,
	datab => \U_VGA|y_pos\(27),
	datad => VCC,
	cin => \U_VGA|Add3~60\,
	combout => \U_VGA|Add3~61_combout\,
	cout => \U_VGA|Add3~62\);

-- Location: LCCOMB_X2_Y17_N6
\U_VGA|Add3~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~75_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~61_combout\,
	combout => \U_VGA|Add3~75_combout\);

-- Location: FF_X2_Y17_N7
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

-- Location: LCCOMB_X1_Y17_N24
\U_VGA|Add3~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~63_combout\ = (\U_VGA|mov_y~0_combout\ & ((\U_VGA|y_pos\(28) & (\U_VGA|Add3~62\ & VCC)) # (!\U_VGA|y_pos\(28) & (!\U_VGA|Add3~62\)))) # (!\U_VGA|mov_y~0_combout\ & ((\U_VGA|y_pos\(28) & (!\U_VGA|Add3~62\)) # (!\U_VGA|y_pos\(28) & 
-- ((\U_VGA|Add3~62\) # (GND)))))
-- \U_VGA|Add3~64\ = CARRY((\U_VGA|mov_y~0_combout\ & (!\U_VGA|y_pos\(28) & !\U_VGA|Add3~62\)) # (!\U_VGA|mov_y~0_combout\ & ((!\U_VGA|Add3~62\) # (!\U_VGA|y_pos\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y~0_combout\,
	datab => \U_VGA|y_pos\(28),
	datad => VCC,
	cin => \U_VGA|Add3~62\,
	combout => \U_VGA|Add3~63_combout\,
	cout => \U_VGA|Add3~64\);

-- Location: LCCOMB_X2_Y17_N4
\U_VGA|Add3~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~74_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~63_combout\,
	combout => \U_VGA|Add3~74_combout\);

-- Location: FF_X2_Y17_N5
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

-- Location: LCCOMB_X1_Y17_N26
\U_VGA|Add3~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~65_combout\ = ((\U_VGA|mov_y~0_combout\ $ (\U_VGA|y_pos\(29) $ (!\U_VGA|Add3~64\)))) # (GND)
-- \U_VGA|Add3~66\ = CARRY((\U_VGA|mov_y~0_combout\ & ((\U_VGA|y_pos\(29)) # (!\U_VGA|Add3~64\))) # (!\U_VGA|mov_y~0_combout\ & (\U_VGA|y_pos\(29) & !\U_VGA|Add3~64\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y~0_combout\,
	datab => \U_VGA|y_pos\(29),
	datad => VCC,
	cin => \U_VGA|Add3~64\,
	combout => \U_VGA|Add3~65_combout\,
	cout => \U_VGA|Add3~66\);

-- Location: LCCOMB_X2_Y17_N10
\U_VGA|Add3~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~73_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datac => \U_VGA|Add3~65_combout\,
	combout => \U_VGA|Add3~73_combout\);

-- Location: FF_X2_Y17_N11
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

-- Location: LCCOMB_X1_Y17_N28
\U_VGA|Add3~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~67_combout\ = (\U_VGA|mov_y~0_combout\ & ((\U_VGA|y_pos\(30) & (\U_VGA|Add3~66\ & VCC)) # (!\U_VGA|y_pos\(30) & (!\U_VGA|Add3~66\)))) # (!\U_VGA|mov_y~0_combout\ & ((\U_VGA|y_pos\(30) & (!\U_VGA|Add3~66\)) # (!\U_VGA|y_pos\(30) & 
-- ((\U_VGA|Add3~66\) # (GND)))))
-- \U_VGA|Add3~68\ = CARRY((\U_VGA|mov_y~0_combout\ & (!\U_VGA|y_pos\(30) & !\U_VGA|Add3~66\)) # (!\U_VGA|mov_y~0_combout\ & ((!\U_VGA|Add3~66\) # (!\U_VGA|y_pos\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|mov_y~0_combout\,
	datab => \U_VGA|y_pos\(30),
	datad => VCC,
	cin => \U_VGA|Add3~66\,
	combout => \U_VGA|Add3~67_combout\,
	cout => \U_VGA|Add3~68\);

-- Location: LCCOMB_X2_Y17_N12
\U_VGA|Add3~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~72_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~67_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~67_combout\,
	combout => \U_VGA|Add3~72_combout\);

-- Location: FF_X2_Y17_N13
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

-- Location: LCCOMB_X1_Y17_N30
\U_VGA|Add3~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~69_combout\ = \U_VGA|y_pos\(31) $ (\U_VGA|Add3~68\ $ (!\U_VGA|mov_y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos\(31),
	datad => \U_VGA|mov_y~0_combout\,
	cin => \U_VGA|Add3~68\,
	combout => \U_VGA|Add3~69_combout\);

-- Location: LCCOMB_X2_Y18_N12
\U_VGA|Add3~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add3~71_combout\ = (\button_n[0]~input_o\ & \U_VGA|Add3~69_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|Add3~69_combout\,
	combout => \U_VGA|Add3~71_combout\);

-- Location: FF_X2_Y18_N13
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

-- Location: LCCOMB_X2_Y17_N28
\U_VGA|LessThan3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan3~6_combout\ = (!\U_VGA|y_pos\(21) & (!\U_VGA|y_pos\(22) & (!\U_VGA|y_pos\(23) & !\U_VGA|y_pos\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(21),
	datab => \U_VGA|y_pos\(22),
	datac => \U_VGA|y_pos\(23),
	datad => \U_VGA|y_pos\(24),
	combout => \U_VGA|LessThan3~6_combout\);

-- Location: LCCOMB_X2_Y17_N30
\U_VGA|LessThan3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan3~7_combout\ = (!\U_VGA|y_pos\(27) & (!\U_VGA|y_pos\(25) & (!\U_VGA|y_pos\(28) & !\U_VGA|y_pos\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(27),
	datab => \U_VGA|y_pos\(25),
	datac => \U_VGA|y_pos\(28),
	datad => \U_VGA|y_pos\(26),
	combout => \U_VGA|LessThan3~7_combout\);

-- Location: LCCOMB_X2_Y17_N0
\U_VGA|LessThan3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan3~8_combout\ = (\U_VGA|LessThan3~7_combout\ & (!\U_VGA|y_pos\(29) & !\U_VGA|y_pos\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|LessThan3~7_combout\,
	datac => \U_VGA|y_pos\(29),
	datad => \U_VGA|y_pos\(30),
	combout => \U_VGA|LessThan3~8_combout\);

-- Location: LCCOMB_X4_Y18_N26
\U_VGA|LessThan3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan3~3_combout\ = (!\U_VGA|y_pos\(14) & (!\U_VGA|y_pos\(15) & (!\U_VGA|y_pos\(16) & !\U_VGA|y_pos\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(14),
	datab => \U_VGA|y_pos\(15),
	datac => \U_VGA|y_pos\(16),
	datad => \U_VGA|y_pos\(13),
	combout => \U_VGA|LessThan3~3_combout\);

-- Location: LCCOMB_X2_Y18_N28
\U_VGA|LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan3~0_combout\ = (!\U_VGA|y_pos\(2) & (\U_VGA|y_pos\(3) & (!\U_VGA|y_pos\(4) & !\U_VGA|y_pos\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(2),
	datab => \U_VGA|y_pos\(3),
	datac => \U_VGA|y_pos\(4),
	datad => \U_VGA|y_pos\(1),
	combout => \U_VGA|LessThan3~0_combout\);

-- Location: LCCOMB_X4_Y18_N16
\U_VGA|LessThan3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan3~2_combout\ = (!\U_VGA|y_pos\(12) & (!\U_VGA|y_pos\(9) & (!\U_VGA|y_pos\(10) & !\U_VGA|y_pos\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(12),
	datab => \U_VGA|y_pos\(9),
	datac => \U_VGA|y_pos\(10),
	datad => \U_VGA|y_pos\(11),
	combout => \U_VGA|LessThan3~2_combout\);

-- Location: LCCOMB_X3_Y19_N12
\U_VGA|LessThan3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan3~1_combout\ = (\U_VGA|y_pos\(7) & (!\U_VGA|y_pos\(8) & (!\U_VGA|y_pos\(5) & \U_VGA|y_pos\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(7),
	datab => \U_VGA|y_pos\(8),
	datac => \U_VGA|y_pos\(5),
	datad => \U_VGA|y_pos\(6),
	combout => \U_VGA|LessThan3~1_combout\);

-- Location: LCCOMB_X2_Y18_N22
\U_VGA|LessThan3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan3~4_combout\ = (\U_VGA|LessThan3~3_combout\ & (\U_VGA|LessThan3~0_combout\ & (\U_VGA|LessThan3~2_combout\ & \U_VGA|LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|LessThan3~3_combout\,
	datab => \U_VGA|LessThan3~0_combout\,
	datac => \U_VGA|LessThan3~2_combout\,
	datad => \U_VGA|LessThan3~1_combout\,
	combout => \U_VGA|LessThan3~4_combout\);

-- Location: LCCOMB_X2_Y17_N14
\U_VGA|LessThan3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan3~5_combout\ = (!\U_VGA|y_pos\(19) & (!\U_VGA|y_pos\(18) & (!\U_VGA|y_pos\(20) & !\U_VGA|y_pos\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(19),
	datab => \U_VGA|y_pos\(18),
	datac => \U_VGA|y_pos\(20),
	datad => \U_VGA|y_pos\(17),
	combout => \U_VGA|LessThan3~5_combout\);

-- Location: LCCOMB_X2_Y18_N0
\U_VGA|LessThan3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan3~9_combout\ = (\U_VGA|LessThan3~6_combout\ & (\U_VGA|LessThan3~8_combout\ & (\U_VGA|LessThan3~4_combout\ & \U_VGA|LessThan3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|LessThan3~6_combout\,
	datab => \U_VGA|LessThan3~8_combout\,
	datac => \U_VGA|LessThan3~4_combout\,
	datad => \U_VGA|LessThan3~5_combout\,
	combout => \U_VGA|LessThan3~9_combout\);

-- Location: LCCOMB_X4_Y18_N4
\U_VGA|mov_y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_y~1_combout\ = (\button_n[0]~input_o\ & \U_VGA|mov_y~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_n[0]~input_o\,
	datad => \U_VGA|mov_y~0_combout\,
	combout => \U_VGA|mov_y~1_combout\);

-- Location: FF_X4_Y18_N5
\U_VGA|mov_y[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|mov_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|mov_y\(10));

-- Location: LCCOMB_X3_Y18_N6
\U_VGA|Add7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~0_combout\ = \U_VGA|y_pos\(6) $ (GND)
-- \U_VGA|Add7~1\ = CARRY(!\U_VGA|y_pos\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos\(6),
	datad => VCC,
	combout => \U_VGA|Add7~0_combout\,
	cout => \U_VGA|Add7~1\);

-- Location: LCCOMB_X3_Y18_N8
\U_VGA|Add7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~2_combout\ = (\U_VGA|y_pos\(7) & ((\U_VGA|Add7~1\) # (GND))) # (!\U_VGA|y_pos\(7) & (!\U_VGA|Add7~1\))
-- \U_VGA|Add7~3\ = CARRY((\U_VGA|y_pos\(7)) # (!\U_VGA|Add7~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos\(7),
	datad => VCC,
	cin => \U_VGA|Add7~1\,
	combout => \U_VGA|Add7~2_combout\,
	cout => \U_VGA|Add7~3\);

-- Location: LCCOMB_X3_Y18_N10
\U_VGA|Add7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~4_combout\ = (\U_VGA|y_pos\(8) & (\U_VGA|Add7~3\ $ (GND))) # (!\U_VGA|y_pos\(8) & (!\U_VGA|Add7~3\ & VCC))
-- \U_VGA|Add7~5\ = CARRY((\U_VGA|y_pos\(8) & !\U_VGA|Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos\(8),
	datad => VCC,
	cin => \U_VGA|Add7~3\,
	combout => \U_VGA|Add7~4_combout\,
	cout => \U_VGA|Add7~5\);

-- Location: LCCOMB_X3_Y18_N12
\U_VGA|Add7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~6_combout\ = (\U_VGA|y_pos\(9) & (!\U_VGA|Add7~5\)) # (!\U_VGA|y_pos\(9) & ((\U_VGA|Add7~5\) # (GND)))
-- \U_VGA|Add7~7\ = CARRY((!\U_VGA|Add7~5\) # (!\U_VGA|y_pos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(9),
	datad => VCC,
	cin => \U_VGA|Add7~5\,
	combout => \U_VGA|Add7~6_combout\,
	cout => \U_VGA|Add7~7\);

-- Location: LCCOMB_X3_Y18_N14
\U_VGA|Add7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~8_combout\ = (\U_VGA|y_pos\(10) & (\U_VGA|Add7~7\ $ (GND))) # (!\U_VGA|y_pos\(10) & (!\U_VGA|Add7~7\ & VCC))
-- \U_VGA|Add7~9\ = CARRY((\U_VGA|y_pos\(10) & !\U_VGA|Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos\(10),
	datad => VCC,
	cin => \U_VGA|Add7~7\,
	combout => \U_VGA|Add7~8_combout\,
	cout => \U_VGA|Add7~9\);

-- Location: LCCOMB_X3_Y18_N16
\U_VGA|Add7~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~10_combout\ = (\U_VGA|y_pos\(11) & (!\U_VGA|Add7~9\)) # (!\U_VGA|y_pos\(11) & ((\U_VGA|Add7~9\) # (GND)))
-- \U_VGA|Add7~11\ = CARRY((!\U_VGA|Add7~9\) # (!\U_VGA|y_pos\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos\(11),
	datad => VCC,
	cin => \U_VGA|Add7~9\,
	combout => \U_VGA|Add7~10_combout\,
	cout => \U_VGA|Add7~11\);

-- Location: LCCOMB_X3_Y18_N18
\U_VGA|Add7~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~12_combout\ = (\U_VGA|y_pos\(12) & (\U_VGA|Add7~11\ $ (GND))) # (!\U_VGA|y_pos\(12) & (!\U_VGA|Add7~11\ & VCC))
-- \U_VGA|Add7~13\ = CARRY((\U_VGA|y_pos\(12) & !\U_VGA|Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(12),
	datad => VCC,
	cin => \U_VGA|Add7~11\,
	combout => \U_VGA|Add7~12_combout\,
	cout => \U_VGA|Add7~13\);

-- Location: LCCOMB_X3_Y18_N20
\U_VGA|Add7~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~14_combout\ = (\U_VGA|y_pos\(13) & (!\U_VGA|Add7~13\)) # (!\U_VGA|y_pos\(13) & ((\U_VGA|Add7~13\) # (GND)))
-- \U_VGA|Add7~15\ = CARRY((!\U_VGA|Add7~13\) # (!\U_VGA|y_pos\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos\(13),
	datad => VCC,
	cin => \U_VGA|Add7~13\,
	combout => \U_VGA|Add7~14_combout\,
	cout => \U_VGA|Add7~15\);

-- Location: LCCOMB_X3_Y18_N22
\U_VGA|Add7~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~16_combout\ = (\U_VGA|y_pos\(14) & (\U_VGA|Add7~15\ $ (GND))) # (!\U_VGA|y_pos\(14) & (!\U_VGA|Add7~15\ & VCC))
-- \U_VGA|Add7~17\ = CARRY((\U_VGA|y_pos\(14) & !\U_VGA|Add7~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos\(14),
	datad => VCC,
	cin => \U_VGA|Add7~15\,
	combout => \U_VGA|Add7~16_combout\,
	cout => \U_VGA|Add7~17\);

-- Location: LCCOMB_X3_Y18_N24
\U_VGA|Add7~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~18_combout\ = (\U_VGA|y_pos\(15) & (!\U_VGA|Add7~17\)) # (!\U_VGA|y_pos\(15) & ((\U_VGA|Add7~17\) # (GND)))
-- \U_VGA|Add7~19\ = CARRY((!\U_VGA|Add7~17\) # (!\U_VGA|y_pos\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos\(15),
	datad => VCC,
	cin => \U_VGA|Add7~17\,
	combout => \U_VGA|Add7~18_combout\,
	cout => \U_VGA|Add7~19\);

-- Location: LCCOMB_X3_Y18_N26
\U_VGA|Add7~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~20_combout\ = (\U_VGA|y_pos\(16) & (\U_VGA|Add7~19\ $ (GND))) # (!\U_VGA|y_pos\(16) & (!\U_VGA|Add7~19\ & VCC))
-- \U_VGA|Add7~21\ = CARRY((\U_VGA|y_pos\(16) & !\U_VGA|Add7~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(16),
	datad => VCC,
	cin => \U_VGA|Add7~19\,
	combout => \U_VGA|Add7~20_combout\,
	cout => \U_VGA|Add7~21\);

-- Location: LCCOMB_X3_Y18_N28
\U_VGA|Add7~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~22_combout\ = (\U_VGA|y_pos\(17) & (!\U_VGA|Add7~21\)) # (!\U_VGA|y_pos\(17) & ((\U_VGA|Add7~21\) # (GND)))
-- \U_VGA|Add7~23\ = CARRY((!\U_VGA|Add7~21\) # (!\U_VGA|y_pos\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(17),
	datad => VCC,
	cin => \U_VGA|Add7~21\,
	combout => \U_VGA|Add7~22_combout\,
	cout => \U_VGA|Add7~23\);

-- Location: LCCOMB_X3_Y18_N30
\U_VGA|Add7~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~24_combout\ = (\U_VGA|y_pos\(18) & (\U_VGA|Add7~23\ $ (GND))) # (!\U_VGA|y_pos\(18) & (!\U_VGA|Add7~23\ & VCC))
-- \U_VGA|Add7~25\ = CARRY((\U_VGA|y_pos\(18) & !\U_VGA|Add7~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos\(18),
	datad => VCC,
	cin => \U_VGA|Add7~23\,
	combout => \U_VGA|Add7~24_combout\,
	cout => \U_VGA|Add7~25\);

-- Location: LCCOMB_X3_Y17_N0
\U_VGA|Add7~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~26_combout\ = (\U_VGA|y_pos\(19) & (!\U_VGA|Add7~25\)) # (!\U_VGA|y_pos\(19) & ((\U_VGA|Add7~25\) # (GND)))
-- \U_VGA|Add7~27\ = CARRY((!\U_VGA|Add7~25\) # (!\U_VGA|y_pos\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(19),
	datad => VCC,
	cin => \U_VGA|Add7~25\,
	combout => \U_VGA|Add7~26_combout\,
	cout => \U_VGA|Add7~27\);

-- Location: LCCOMB_X3_Y17_N2
\U_VGA|Add7~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~28_combout\ = (\U_VGA|y_pos\(20) & (\U_VGA|Add7~27\ $ (GND))) # (!\U_VGA|y_pos\(20) & (!\U_VGA|Add7~27\ & VCC))
-- \U_VGA|Add7~29\ = CARRY((\U_VGA|y_pos\(20) & !\U_VGA|Add7~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(20),
	datad => VCC,
	cin => \U_VGA|Add7~27\,
	combout => \U_VGA|Add7~28_combout\,
	cout => \U_VGA|Add7~29\);

-- Location: LCCOMB_X3_Y17_N4
\U_VGA|Add7~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~30_combout\ = (\U_VGA|y_pos\(21) & (!\U_VGA|Add7~29\)) # (!\U_VGA|y_pos\(21) & ((\U_VGA|Add7~29\) # (GND)))
-- \U_VGA|Add7~31\ = CARRY((!\U_VGA|Add7~29\) # (!\U_VGA|y_pos\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(21),
	datad => VCC,
	cin => \U_VGA|Add7~29\,
	combout => \U_VGA|Add7~30_combout\,
	cout => \U_VGA|Add7~31\);

-- Location: LCCOMB_X3_Y17_N6
\U_VGA|Add7~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~32_combout\ = (\U_VGA|y_pos\(22) & (\U_VGA|Add7~31\ $ (GND))) # (!\U_VGA|y_pos\(22) & (!\U_VGA|Add7~31\ & VCC))
-- \U_VGA|Add7~33\ = CARRY((\U_VGA|y_pos\(22) & !\U_VGA|Add7~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos\(22),
	datad => VCC,
	cin => \U_VGA|Add7~31\,
	combout => \U_VGA|Add7~32_combout\,
	cout => \U_VGA|Add7~33\);

-- Location: LCCOMB_X3_Y17_N8
\U_VGA|Add7~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~34_combout\ = (\U_VGA|y_pos\(23) & (!\U_VGA|Add7~33\)) # (!\U_VGA|y_pos\(23) & ((\U_VGA|Add7~33\) # (GND)))
-- \U_VGA|Add7~35\ = CARRY((!\U_VGA|Add7~33\) # (!\U_VGA|y_pos\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(23),
	datad => VCC,
	cin => \U_VGA|Add7~33\,
	combout => \U_VGA|Add7~34_combout\,
	cout => \U_VGA|Add7~35\);

-- Location: LCCOMB_X3_Y17_N10
\U_VGA|Add7~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~36_combout\ = (\U_VGA|y_pos\(24) & (\U_VGA|Add7~35\ $ (GND))) # (!\U_VGA|y_pos\(24) & (!\U_VGA|Add7~35\ & VCC))
-- \U_VGA|Add7~37\ = CARRY((\U_VGA|y_pos\(24) & !\U_VGA|Add7~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(24),
	datad => VCC,
	cin => \U_VGA|Add7~35\,
	combout => \U_VGA|Add7~36_combout\,
	cout => \U_VGA|Add7~37\);

-- Location: LCCOMB_X3_Y17_N12
\U_VGA|Add7~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~38_combout\ = (\U_VGA|y_pos\(25) & (!\U_VGA|Add7~37\)) # (!\U_VGA|y_pos\(25) & ((\U_VGA|Add7~37\) # (GND)))
-- \U_VGA|Add7~39\ = CARRY((!\U_VGA|Add7~37\) # (!\U_VGA|y_pos\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos\(25),
	datad => VCC,
	cin => \U_VGA|Add7~37\,
	combout => \U_VGA|Add7~38_combout\,
	cout => \U_VGA|Add7~39\);

-- Location: LCCOMB_X3_Y17_N14
\U_VGA|Add7~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~40_combout\ = (\U_VGA|y_pos\(26) & (\U_VGA|Add7~39\ $ (GND))) # (!\U_VGA|y_pos\(26) & (!\U_VGA|Add7~39\ & VCC))
-- \U_VGA|Add7~41\ = CARRY((\U_VGA|y_pos\(26) & !\U_VGA|Add7~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos\(26),
	datad => VCC,
	cin => \U_VGA|Add7~39\,
	combout => \U_VGA|Add7~40_combout\,
	cout => \U_VGA|Add7~41\);

-- Location: LCCOMB_X3_Y17_N16
\U_VGA|Add7~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~42_combout\ = (\U_VGA|y_pos\(27) & (!\U_VGA|Add7~41\)) # (!\U_VGA|y_pos\(27) & ((\U_VGA|Add7~41\) # (GND)))
-- \U_VGA|Add7~43\ = CARRY((!\U_VGA|Add7~41\) # (!\U_VGA|y_pos\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos\(27),
	datad => VCC,
	cin => \U_VGA|Add7~41\,
	combout => \U_VGA|Add7~42_combout\,
	cout => \U_VGA|Add7~43\);

-- Location: LCCOMB_X3_Y17_N18
\U_VGA|Add7~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~44_combout\ = (\U_VGA|y_pos\(28) & (\U_VGA|Add7~43\ $ (GND))) # (!\U_VGA|y_pos\(28) & (!\U_VGA|Add7~43\ & VCC))
-- \U_VGA|Add7~45\ = CARRY((\U_VGA|y_pos\(28) & !\U_VGA|Add7~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos\(28),
	datad => VCC,
	cin => \U_VGA|Add7~43\,
	combout => \U_VGA|Add7~44_combout\,
	cout => \U_VGA|Add7~45\);

-- Location: LCCOMB_X3_Y17_N20
\U_VGA|Add7~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~46_combout\ = (\U_VGA|y_pos\(29) & (!\U_VGA|Add7~45\)) # (!\U_VGA|y_pos\(29) & ((\U_VGA|Add7~45\) # (GND)))
-- \U_VGA|Add7~47\ = CARRY((!\U_VGA|Add7~45\) # (!\U_VGA|y_pos\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(29),
	datad => VCC,
	cin => \U_VGA|Add7~45\,
	combout => \U_VGA|Add7~46_combout\,
	cout => \U_VGA|Add7~47\);

-- Location: LCCOMB_X3_Y17_N22
\U_VGA|Add7~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~48_combout\ = (\U_VGA|y_pos\(30) & (\U_VGA|Add7~47\ $ (GND))) # (!\U_VGA|y_pos\(30) & (!\U_VGA|Add7~47\ & VCC))
-- \U_VGA|Add7~49\ = CARRY((\U_VGA|y_pos\(30) & !\U_VGA|Add7~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(30),
	datad => VCC,
	cin => \U_VGA|Add7~47\,
	combout => \U_VGA|Add7~48_combout\,
	cout => \U_VGA|Add7~49\);

-- Location: LCCOMB_X3_Y17_N24
\U_VGA|Add7~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add7~50_combout\ = \U_VGA|Add7~49\ $ (\U_VGA|y_pos\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_VGA|y_pos\(31),
	cin => \U_VGA|Add7~49\,
	combout => \U_VGA|Add7~50_combout\);

-- Location: LCCOMB_X3_Y18_N4
\U_VGA|LessThan2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan2~4_combout\ = (!\U_VGA|Add7~16_combout\ & (!\U_VGA|Add7~14_combout\ & (!\U_VGA|Add7~20_combout\ & !\U_VGA|Add7~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add7~16_combout\,
	datab => \U_VGA|Add7~14_combout\,
	datac => \U_VGA|Add7~20_combout\,
	datad => \U_VGA|Add7~18_combout\,
	combout => \U_VGA|LessThan2~4_combout\);

-- Location: LCCOMB_X2_Y18_N4
\U_VGA|LessThan2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan2~5_combout\ = (!\U_VGA|Add7~24_combout\ & (!\U_VGA|Add7~22_combout\ & (!\U_VGA|Add7~26_combout\ & !\U_VGA|Add7~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add7~24_combout\,
	datab => \U_VGA|Add7~22_combout\,
	datac => \U_VGA|Add7~26_combout\,
	datad => \U_VGA|Add7~28_combout\,
	combout => \U_VGA|LessThan2~5_combout\);

-- Location: LCCOMB_X2_Y18_N26
\U_VGA|LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan2~1_combout\ = ((!\U_VGA|Add7~2_combout\) # (!\U_VGA|Add7~4_combout\)) # (!\U_VGA|Add7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add7~0_combout\,
	datac => \U_VGA|Add7~4_combout\,
	datad => \U_VGA|Add7~2_combout\,
	combout => \U_VGA|LessThan2~1_combout\);

-- Location: LCCOMB_X2_Y18_N8
\U_VGA|LessThan2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan2~2_combout\ = (((\U_VGA|y_pos\(3)) # (!\U_VGA|y_pos\(1))) # (!\U_VGA|y_pos\(4))) # (!\U_VGA|y_pos\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(2),
	datab => \U_VGA|y_pos\(4),
	datac => \U_VGA|y_pos\(3),
	datad => \U_VGA|y_pos\(1),
	combout => \U_VGA|LessThan2~2_combout\);

-- Location: LCCOMB_X3_Y18_N2
\U_VGA|LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan2~0_combout\ = (!\U_VGA|Add7~6_combout\ & (!\U_VGA|Add7~10_combout\ & (!\U_VGA|Add7~8_combout\ & !\U_VGA|Add7~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add7~6_combout\,
	datab => \U_VGA|Add7~10_combout\,
	datac => \U_VGA|Add7~8_combout\,
	datad => \U_VGA|Add7~12_combout\,
	combout => \U_VGA|LessThan2~0_combout\);

-- Location: LCCOMB_X2_Y18_N10
\U_VGA|LessThan2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan2~3_combout\ = (\U_VGA|LessThan2~0_combout\ & ((\U_VGA|LessThan2~1_combout\) # ((!\U_VGA|y_pos\(5) & \U_VGA|LessThan2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|LessThan2~1_combout\,
	datab => \U_VGA|y_pos\(5),
	datac => \U_VGA|LessThan2~2_combout\,
	datad => \U_VGA|LessThan2~0_combout\,
	combout => \U_VGA|LessThan2~3_combout\);

-- Location: LCCOMB_X2_Y18_N18
\U_VGA|LessThan2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan2~6_combout\ = (\U_VGA|LessThan2~4_combout\ & (!\U_VGA|Add7~30_combout\ & (\U_VGA|LessThan2~5_combout\ & \U_VGA|LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|LessThan2~4_combout\,
	datab => \U_VGA|Add7~30_combout\,
	datac => \U_VGA|LessThan2~5_combout\,
	datad => \U_VGA|LessThan2~3_combout\,
	combout => \U_VGA|LessThan2~6_combout\);

-- Location: LCCOMB_X2_Y18_N20
\U_VGA|LessThan2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan2~7_combout\ = (!\U_VGA|Add7~36_combout\ & (!\U_VGA|Add7~34_combout\ & (!\U_VGA|Add7~32_combout\ & \U_VGA|LessThan2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add7~36_combout\,
	datab => \U_VGA|Add7~34_combout\,
	datac => \U_VGA|Add7~32_combout\,
	datad => \U_VGA|LessThan2~6_combout\,
	combout => \U_VGA|LessThan2~7_combout\);

-- Location: LCCOMB_X2_Y18_N2
\U_VGA|LessThan2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan2~8_combout\ = (!\U_VGA|Add7~40_combout\ & (!\U_VGA|Add7~42_combout\ & (!\U_VGA|Add7~38_combout\ & \U_VGA|LessThan2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add7~40_combout\,
	datab => \U_VGA|Add7~42_combout\,
	datac => \U_VGA|Add7~38_combout\,
	datad => \U_VGA|LessThan2~7_combout\,
	combout => \U_VGA|LessThan2~8_combout\);

-- Location: LCCOMB_X2_Y18_N24
\U_VGA|LessThan2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan2~9_combout\ = (!\U_VGA|Add7~44_combout\ & \U_VGA|LessThan2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|Add7~44_combout\,
	datad => \U_VGA|LessThan2~8_combout\,
	combout => \U_VGA|LessThan2~9_combout\);

-- Location: LCCOMB_X2_Y18_N6
\U_VGA|LessThan2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan2~10_combout\ = (\U_VGA|Add7~50_combout\) # ((!\U_VGA|Add7~48_combout\ & (!\U_VGA|Add7~46_combout\ & \U_VGA|LessThan2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add7~48_combout\,
	datab => \U_VGA|Add7~46_combout\,
	datac => \U_VGA|Add7~50_combout\,
	datad => \U_VGA|LessThan2~9_combout\,
	combout => \U_VGA|LessThan2~10_combout\);

-- Location: LCCOMB_X2_Y18_N30
\U_VGA|mov_y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|mov_y~0_combout\ = \U_VGA|mov_y\(10) $ (((\U_VGA|y_pos\(31)) # ((\U_VGA|LessThan3~9_combout\) # (!\U_VGA|LessThan2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(31),
	datab => \U_VGA|LessThan3~9_combout\,
	datac => \U_VGA|mov_y\(10),
	datad => \U_VGA|LessThan2~10_combout\,
	combout => \U_VGA|mov_y~0_combout\);

-- Location: LCCOMB_X4_Y18_N20
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

-- Location: FF_X4_Y18_N21
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

-- Location: LCCOMB_X3_Y22_N0
\U_VGA|LessThan9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~1_cout\ = CARRY(\U_VGA|sync|v_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|sync|v_counter\(0),
	datad => VCC,
	cout => \U_VGA|LessThan9~1_cout\);

-- Location: LCCOMB_X3_Y22_N2
\U_VGA|LessThan9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~3_cout\ = CARRY((\U_VGA|y_pos\(1) & ((!\U_VGA|LessThan9~1_cout\) # (!\U_VGA|sync|v_counter\(1)))) # (!\U_VGA|y_pos\(1) & (!\U_VGA|sync|v_counter\(1) & !\U_VGA|LessThan9~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(1),
	datab => \U_VGA|sync|v_counter\(1),
	datad => VCC,
	cin => \U_VGA|LessThan9~1_cout\,
	cout => \U_VGA|LessThan9~3_cout\);

-- Location: LCCOMB_X3_Y22_N4
\U_VGA|LessThan9~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~5_cout\ = CARRY((\U_VGA|y_pos\(2) & (\U_VGA|sync|v_counter\(2) & !\U_VGA|LessThan9~3_cout\)) # (!\U_VGA|y_pos\(2) & ((\U_VGA|sync|v_counter\(2)) # (!\U_VGA|LessThan9~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(2),
	datab => \U_VGA|sync|v_counter\(2),
	datad => VCC,
	cin => \U_VGA|LessThan9~3_cout\,
	cout => \U_VGA|LessThan9~5_cout\);

-- Location: LCCOMB_X3_Y22_N6
\U_VGA|LessThan9~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~7_cout\ = CARRY((\U_VGA|sync|v_counter\(3) & (!\U_VGA|y_pos\(3) & !\U_VGA|LessThan9~5_cout\)) # (!\U_VGA|sync|v_counter\(3) & ((!\U_VGA|LessThan9~5_cout\) # (!\U_VGA|y_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(3),
	datab => \U_VGA|y_pos\(3),
	datad => VCC,
	cin => \U_VGA|LessThan9~5_cout\,
	cout => \U_VGA|LessThan9~7_cout\);

-- Location: LCCOMB_X3_Y22_N8
\U_VGA|LessThan9~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~9_cout\ = CARRY((\U_VGA|sync|v_counter\(4) & ((!\U_VGA|LessThan9~7_cout\) # (!\U_VGA|y_pos\(4)))) # (!\U_VGA|sync|v_counter\(4) & (!\U_VGA|y_pos\(4) & !\U_VGA|LessThan9~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(4),
	datab => \U_VGA|y_pos\(4),
	datad => VCC,
	cin => \U_VGA|LessThan9~7_cout\,
	cout => \U_VGA|LessThan9~9_cout\);

-- Location: LCCOMB_X3_Y22_N10
\U_VGA|LessThan9~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~11_cout\ = CARRY((\U_VGA|y_pos\(5) & ((!\U_VGA|LessThan9~9_cout\) # (!\U_VGA|sync|v_counter\(5)))) # (!\U_VGA|y_pos\(5) & (!\U_VGA|sync|v_counter\(5) & !\U_VGA|LessThan9~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(5),
	datab => \U_VGA|sync|v_counter\(5),
	datad => VCC,
	cin => \U_VGA|LessThan9~9_cout\,
	cout => \U_VGA|LessThan9~11_cout\);

-- Location: LCCOMB_X3_Y22_N12
\U_VGA|LessThan9~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~13_cout\ = CARRY((\U_VGA|sync|v_counter\(6) & ((!\U_VGA|LessThan9~11_cout\) # (!\U_VGA|Add7~0_combout\))) # (!\U_VGA|sync|v_counter\(6) & (!\U_VGA|Add7~0_combout\ & !\U_VGA|LessThan9~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(6),
	datab => \U_VGA|Add7~0_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan9~11_cout\,
	cout => \U_VGA|LessThan9~13_cout\);

-- Location: LCCOMB_X3_Y22_N14
\U_VGA|LessThan9~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~15_cout\ = CARRY((\U_VGA|sync|v_counter\(7) & (\U_VGA|Add7~2_combout\ & !\U_VGA|LessThan9~13_cout\)) # (!\U_VGA|sync|v_counter\(7) & ((\U_VGA|Add7~2_combout\) # (!\U_VGA|LessThan9~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(7),
	datab => \U_VGA|Add7~2_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan9~13_cout\,
	cout => \U_VGA|LessThan9~15_cout\);

-- Location: LCCOMB_X3_Y22_N16
\U_VGA|LessThan9~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~17_cout\ = CARRY((\U_VGA|Add7~4_combout\ & (\U_VGA|sync|v_counter\(8) & !\U_VGA|LessThan9~15_cout\)) # (!\U_VGA|Add7~4_combout\ & ((\U_VGA|sync|v_counter\(8)) # (!\U_VGA|LessThan9~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add7~4_combout\,
	datab => \U_VGA|sync|v_counter\(8),
	datad => VCC,
	cin => \U_VGA|LessThan9~15_cout\,
	cout => \U_VGA|LessThan9~17_cout\);

-- Location: LCCOMB_X3_Y22_N18
\U_VGA|LessThan9~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan9~18_combout\ = (\U_VGA|Add7~6_combout\ & (\U_VGA|LessThan9~17_cout\ & \U_VGA|sync|v_counter\(9))) # (!\U_VGA|Add7~6_combout\ & ((\U_VGA|LessThan9~17_cout\) # (\U_VGA|sync|v_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|Add7~6_combout\,
	datad => \U_VGA|sync|v_counter\(9),
	cin => \U_VGA|LessThan9~17_cout\,
	combout => \U_VGA|LessThan9~18_combout\);

-- Location: LCCOMB_X2_Y22_N6
\U_VGA|LessThan8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~1_cout\ = CARRY((\U_VGA|y_pos\(1) & !\U_VGA|sync|v_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(1),
	datab => \U_VGA|sync|v_counter\(1),
	datad => VCC,
	cout => \U_VGA|LessThan8~1_cout\);

-- Location: LCCOMB_X2_Y22_N8
\U_VGA|LessThan8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~3_cout\ = CARRY((\U_VGA|y_pos\(2) & (\U_VGA|sync|v_counter\(2) & !\U_VGA|LessThan8~1_cout\)) # (!\U_VGA|y_pos\(2) & ((\U_VGA|sync|v_counter\(2)) # (!\U_VGA|LessThan8~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(2),
	datab => \U_VGA|sync|v_counter\(2),
	datad => VCC,
	cin => \U_VGA|LessThan8~1_cout\,
	cout => \U_VGA|LessThan8~3_cout\);

-- Location: LCCOMB_X2_Y22_N10
\U_VGA|LessThan8~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~5_cout\ = CARRY((\U_VGA|y_pos\(3) & (!\U_VGA|sync|v_counter\(3) & !\U_VGA|LessThan8~3_cout\)) # (!\U_VGA|y_pos\(3) & ((!\U_VGA|LessThan8~3_cout\) # (!\U_VGA|sync|v_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(3),
	datab => \U_VGA|sync|v_counter\(3),
	datad => VCC,
	cin => \U_VGA|LessThan8~3_cout\,
	cout => \U_VGA|LessThan8~5_cout\);

-- Location: LCCOMB_X2_Y22_N12
\U_VGA|LessThan8~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~7_cout\ = CARRY((\U_VGA|y_pos\(4) & (\U_VGA|sync|v_counter\(4) & !\U_VGA|LessThan8~5_cout\)) # (!\U_VGA|y_pos\(4) & ((\U_VGA|sync|v_counter\(4)) # (!\U_VGA|LessThan8~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(4),
	datab => \U_VGA|sync|v_counter\(4),
	datad => VCC,
	cin => \U_VGA|LessThan8~5_cout\,
	cout => \U_VGA|LessThan8~7_cout\);

-- Location: LCCOMB_X2_Y22_N14
\U_VGA|LessThan8~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~9_cout\ = CARRY((\U_VGA|sync|v_counter\(5) & (\U_VGA|y_pos\(5) & !\U_VGA|LessThan8~7_cout\)) # (!\U_VGA|sync|v_counter\(5) & ((\U_VGA|y_pos\(5)) # (!\U_VGA|LessThan8~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(5),
	datab => \U_VGA|y_pos\(5),
	datad => VCC,
	cin => \U_VGA|LessThan8~7_cout\,
	cout => \U_VGA|LessThan8~9_cout\);

-- Location: LCCOMB_X2_Y22_N16
\U_VGA|LessThan8~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~11_cout\ = CARRY((\U_VGA|sync|v_counter\(6) & ((\U_VGA|y_pos\(6)) # (!\U_VGA|LessThan8~9_cout\))) # (!\U_VGA|sync|v_counter\(6) & (\U_VGA|y_pos\(6) & !\U_VGA|LessThan8~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(6),
	datab => \U_VGA|y_pos\(6),
	datad => VCC,
	cin => \U_VGA|LessThan8~9_cout\,
	cout => \U_VGA|LessThan8~11_cout\);

-- Location: LCCOMB_X2_Y22_N18
\U_VGA|LessThan8~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~13_cout\ = CARRY((\U_VGA|sync|v_counter\(7) & (!\U_VGA|y_pos\(7) & !\U_VGA|LessThan8~11_cout\)) # (!\U_VGA|sync|v_counter\(7) & ((!\U_VGA|LessThan8~11_cout\) # (!\U_VGA|y_pos\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(7),
	datab => \U_VGA|y_pos\(7),
	datad => VCC,
	cin => \U_VGA|LessThan8~11_cout\,
	cout => \U_VGA|LessThan8~13_cout\);

-- Location: LCCOMB_X2_Y22_N20
\U_VGA|LessThan8~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~15_cout\ = CARRY((\U_VGA|y_pos\(8) & (\U_VGA|sync|v_counter\(8) & !\U_VGA|LessThan8~13_cout\)) # (!\U_VGA|y_pos\(8) & ((\U_VGA|sync|v_counter\(8)) # (!\U_VGA|LessThan8~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(8),
	datab => \U_VGA|sync|v_counter\(8),
	datad => VCC,
	cin => \U_VGA|LessThan8~13_cout\,
	cout => \U_VGA|LessThan8~15_cout\);

-- Location: LCCOMB_X2_Y22_N22
\U_VGA|LessThan8~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan8~16_combout\ = (\U_VGA|y_pos\(9) & ((!\U_VGA|sync|v_counter\(9)) # (!\U_VGA|LessThan8~15_cout\))) # (!\U_VGA|y_pos\(9) & (!\U_VGA|LessThan8~15_cout\ & !\U_VGA|sync|v_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos\(9),
	datad => \U_VGA|sync|v_counter\(9),
	cin => \U_VGA|LessThan8~15_cout\,
	combout => \U_VGA|LessThan8~16_combout\);

-- Location: LCCOMB_X3_Y26_N30
\U_VGA|sync|LessThan5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|LessThan5~1_combout\ = (((!\U_VGA|sync|v_counter\(0)) # (!\U_VGA|sync|v_counter\(1))) # (!\U_VGA|sync|v_counter\(2))) # (!\U_VGA|sync|v_counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(3),
	datab => \U_VGA|sync|v_counter\(2),
	datac => \U_VGA|sync|v_counter\(1),
	datad => \U_VGA|sync|v_counter\(0),
	combout => \U_VGA|sync|LessThan5~1_combout\);

-- Location: LCCOMB_X4_Y23_N2
\U_VGA|sync|LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|LessThan5~0_combout\ = (\U_VGA|sync|v_counter\(7) & (\U_VGA|sync|v_counter\(8) & \U_VGA|sync|v_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|sync|v_counter\(7),
	datac => \U_VGA|sync|v_counter\(8),
	datad => \U_VGA|sync|v_counter\(6),
	combout => \U_VGA|sync|LessThan5~0_combout\);

-- Location: LCCOMB_X3_Y26_N0
\U_VGA|sync|LessThan5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|LessThan5~2_combout\ = ((!\U_VGA|sync|v_counter\(5) & ((\U_VGA|sync|LessThan5~1_combout\) # (!\U_VGA|sync|v_counter\(4))))) # (!\U_VGA|sync|LessThan5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(4),
	datab => \U_VGA|sync|v_counter\(5),
	datac => \U_VGA|sync|LessThan5~1_combout\,
	datad => \U_VGA|sync|LessThan5~0_combout\,
	combout => \U_VGA|sync|LessThan5~2_combout\);

-- Location: LCCOMB_X4_Y22_N26
\U_VGA|draw~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|draw~4_combout\ = (!\U_VGA|LessThan8~16_combout\ & \U_VGA|sync|LessThan5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|LessThan8~16_combout\,
	datad => \U_VGA|sync|LessThan5~2_combout\,
	combout => \U_VGA|draw~4_combout\);

-- Location: LCCOMB_X6_Y23_N10
\U_VGA|LessThan6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~1_cout\ = CARRY((\U_VGA|x_pos\(1) & !\U_VGA|sync|h_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(1),
	datab => \U_VGA|sync|h_counter\(1),
	datad => VCC,
	cout => \U_VGA|LessThan6~1_cout\);

-- Location: LCCOMB_X6_Y23_N12
\U_VGA|LessThan6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~3_cout\ = CARRY((\U_VGA|sync|h_counter\(2) & ((!\U_VGA|LessThan6~1_cout\) # (!\U_VGA|x_pos\(2)))) # (!\U_VGA|sync|h_counter\(2) & (!\U_VGA|x_pos\(2) & !\U_VGA|LessThan6~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(2),
	datab => \U_VGA|x_pos\(2),
	datad => VCC,
	cin => \U_VGA|LessThan6~1_cout\,
	cout => \U_VGA|LessThan6~3_cout\);

-- Location: LCCOMB_X6_Y23_N14
\U_VGA|LessThan6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~5_cout\ = CARRY((\U_VGA|x_pos\(3) & (!\U_VGA|sync|h_counter\(3) & !\U_VGA|LessThan6~3_cout\)) # (!\U_VGA|x_pos\(3) & ((!\U_VGA|LessThan6~3_cout\) # (!\U_VGA|sync|h_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(3),
	datab => \U_VGA|sync|h_counter\(3),
	datad => VCC,
	cin => \U_VGA|LessThan6~3_cout\,
	cout => \U_VGA|LessThan6~5_cout\);

-- Location: LCCOMB_X6_Y23_N16
\U_VGA|LessThan6~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~7_cout\ = CARRY((\U_VGA|sync|h_counter\(4) & ((!\U_VGA|LessThan6~5_cout\) # (!\U_VGA|x_pos\(4)))) # (!\U_VGA|sync|h_counter\(4) & (!\U_VGA|x_pos\(4) & !\U_VGA|LessThan6~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(4),
	datab => \U_VGA|x_pos\(4),
	datad => VCC,
	cin => \U_VGA|LessThan6~5_cout\,
	cout => \U_VGA|LessThan6~7_cout\);

-- Location: LCCOMB_X6_Y23_N18
\U_VGA|LessThan6~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~9_cout\ = CARRY((\U_VGA|sync|h_counter\(5) & (\U_VGA|x_pos\(5) & !\U_VGA|LessThan6~7_cout\)) # (!\U_VGA|sync|h_counter\(5) & ((\U_VGA|x_pos\(5)) # (!\U_VGA|LessThan6~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(5),
	datab => \U_VGA|x_pos\(5),
	datad => VCC,
	cin => \U_VGA|LessThan6~7_cout\,
	cout => \U_VGA|LessThan6~9_cout\);

-- Location: LCCOMB_X6_Y23_N20
\U_VGA|LessThan6~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~11_cout\ = CARRY((\U_VGA|sync|h_counter\(6) & ((\U_VGA|x_pos\(6)) # (!\U_VGA|LessThan6~9_cout\))) # (!\U_VGA|sync|h_counter\(6) & (\U_VGA|x_pos\(6) & !\U_VGA|LessThan6~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(6),
	datab => \U_VGA|x_pos\(6),
	datad => VCC,
	cin => \U_VGA|LessThan6~9_cout\,
	cout => \U_VGA|LessThan6~11_cout\);

-- Location: LCCOMB_X6_Y23_N22
\U_VGA|LessThan6~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~13_cout\ = CARRY((\U_VGA|x_pos\(7) & (!\U_VGA|sync|h_counter\(7) & !\U_VGA|LessThan6~11_cout\)) # (!\U_VGA|x_pos\(7) & ((!\U_VGA|LessThan6~11_cout\) # (!\U_VGA|sync|h_counter\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(7),
	datab => \U_VGA|sync|h_counter\(7),
	datad => VCC,
	cin => \U_VGA|LessThan6~11_cout\,
	cout => \U_VGA|LessThan6~13_cout\);

-- Location: LCCOMB_X6_Y23_N24
\U_VGA|LessThan6~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~15_cout\ = CARRY((\U_VGA|sync|h_counter\(8) & ((!\U_VGA|LessThan6~13_cout\) # (!\U_VGA|x_pos\(8)))) # (!\U_VGA|sync|h_counter\(8) & (!\U_VGA|x_pos\(8) & !\U_VGA|LessThan6~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(8),
	datab => \U_VGA|x_pos\(8),
	datad => VCC,
	cin => \U_VGA|LessThan6~13_cout\,
	cout => \U_VGA|LessThan6~15_cout\);

-- Location: LCCOMB_X6_Y23_N26
\U_VGA|LessThan6~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan6~16_combout\ = (\U_VGA|x_pos\(9) & ((!\U_VGA|sync|h_counter\(9)) # (!\U_VGA|LessThan6~15_cout\))) # (!\U_VGA|x_pos\(9) & (!\U_VGA|LessThan6~15_cout\ & !\U_VGA|sync|h_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|x_pos\(9),
	datad => \U_VGA|sync|h_counter\(9),
	cin => \U_VGA|LessThan6~15_cout\,
	combout => \U_VGA|LessThan6~16_combout\);

-- Location: LCCOMB_X4_Y22_N4
\U_VGA|draw~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|draw~5_combout\ = (!\U_VGA|LessThan7~18_combout\ & (!\U_VGA|LessThan9~18_combout\ & (\U_VGA|draw~4_combout\ & !\U_VGA|LessThan6~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|LessThan7~18_combout\,
	datab => \U_VGA|LessThan9~18_combout\,
	datac => \U_VGA|draw~4_combout\,
	datad => \U_VGA|LessThan6~16_combout\,
	combout => \U_VGA|draw~5_combout\);

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

-- Location: LCCOMB_X8_Y26_N16
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

-- Location: LCCOMB_X8_Y26_N18
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

-- Location: LCCOMB_X8_Y26_N20
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

-- Location: LCCOMB_X6_Y26_N18
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

-- Location: LCCOMB_X6_Y26_N20
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

-- Location: LCCOMB_X9_Y25_N6
\U_VGA|y_pos_p1~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~33_combout\ = (\switch[0]~input_o\ & ((\U_VGA|Add4~60_combout\ & (\U_VGA|Add5~18_combout\)) # (!\U_VGA|Add4~60_combout\ & ((\U_VGA|Add4~18_combout\))))) # (!\switch[0]~input_o\ & (\U_VGA|Add5~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \U_VGA|Add5~18_combout\,
	datac => \U_VGA|Add4~18_combout\,
	datad => \U_VGA|Add4~60_combout\,
	combout => \U_VGA|y_pos_p1~33_combout\);

-- Location: LCCOMB_X8_Y25_N22
\U_VGA|Add5~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~52_combout\ = (\U_VGA|y_pos_p1\(27) & (\U_VGA|Add5~51\ $ (GND))) # (!\U_VGA|y_pos_p1\(27) & (!\U_VGA|Add5~51\ & VCC))
-- \U_VGA|Add5~53\ = CARRY((\U_VGA|y_pos_p1\(27) & !\U_VGA|Add5~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(27),
	datad => VCC,
	cin => \U_VGA|Add5~51\,
	combout => \U_VGA|Add5~52_combout\,
	cout => \U_VGA|Add5~53\);

-- Location: LCCOMB_X8_Y25_N24
\U_VGA|Add5~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~54_combout\ = (\U_VGA|y_pos_p1\(28) & (!\U_VGA|Add5~53\)) # (!\U_VGA|y_pos_p1\(28) & ((\U_VGA|Add5~53\) # (GND)))
-- \U_VGA|Add5~55\ = CARRY((!\U_VGA|Add5~53\) # (!\U_VGA|y_pos_p1\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(28),
	datad => VCC,
	cin => \U_VGA|Add5~53\,
	combout => \U_VGA|Add5~54_combout\,
	cout => \U_VGA|Add5~55\);

-- Location: LCCOMB_X8_Y25_N26
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

-- Location: LCCOMB_X8_Y25_N28
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

-- Location: LCCOMB_X7_Y25_N10
\U_VGA|y_pos_p1[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1[9]~1_combout\ = (\U_VGA|Add5~52_combout\) # ((\U_VGA|Add5~54_combout\) # ((\U_VGA|Add5~58_combout\) # (\U_VGA|Add5~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add5~52_combout\,
	datab => \U_VGA|Add5~54_combout\,
	datac => \U_VGA|Add5~58_combout\,
	datad => \U_VGA|Add5~56_combout\,
	combout => \U_VGA|y_pos_p1[9]~1_combout\);

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

-- Location: LCCOMB_X8_Y25_N14
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

-- Location: LCCOMB_X8_Y25_N16
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

-- Location: LCCOMB_X8_Y25_N18
\U_VGA|Add5~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~48_combout\ = (\U_VGA|y_pos_p1\(25) & (\U_VGA|Add5~47\ $ (GND))) # (!\U_VGA|y_pos_p1\(25) & (!\U_VGA|Add5~47\ & VCC))
-- \U_VGA|Add5~49\ = CARRY((\U_VGA|y_pos_p1\(25) & !\U_VGA|Add5~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(25),
	datad => VCC,
	cin => \U_VGA|Add5~47\,
	combout => \U_VGA|Add5~48_combout\,
	cout => \U_VGA|Add5~49\);

-- Location: LCCOMB_X8_Y25_N10
\U_VGA|Add5~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~40_combout\ = (\U_VGA|y_pos_p1\(21) & (\U_VGA|Add5~39\ $ (GND))) # (!\U_VGA|y_pos_p1\(21) & (!\U_VGA|Add5~39\ & VCC))
-- \U_VGA|Add5~41\ = CARRY((\U_VGA|y_pos_p1\(21) & !\U_VGA|Add5~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(21),
	datad => VCC,
	cin => \U_VGA|Add5~39\,
	combout => \U_VGA|Add5~40_combout\,
	cout => \U_VGA|Add5~41\);

-- Location: LCCOMB_X8_Y25_N12
\U_VGA|Add5~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~42_combout\ = (\U_VGA|y_pos_p1\(22) & (!\U_VGA|Add5~41\)) # (!\U_VGA|y_pos_p1\(22) & ((\U_VGA|Add5~41\) # (GND)))
-- \U_VGA|Add5~43\ = CARRY((!\U_VGA|Add5~41\) # (!\U_VGA|y_pos_p1\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(22),
	datad => VCC,
	cin => \U_VGA|Add5~41\,
	combout => \U_VGA|Add5~42_combout\,
	cout => \U_VGA|Add5~43\);

-- Location: LCCOMB_X8_Y25_N0
\U_VGA|Add5~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~30_combout\ = (\U_VGA|y_pos_p1\(16) & (!\U_VGA|Add5~29\)) # (!\U_VGA|y_pos_p1\(16) & ((\U_VGA|Add5~29\) # (GND)))
-- \U_VGA|Add5~31\ = CARRY((!\U_VGA|Add5~29\) # (!\U_VGA|y_pos_p1\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(16),
	datad => VCC,
	cin => \U_VGA|Add5~29\,
	combout => \U_VGA|Add5~30_combout\,
	cout => \U_VGA|Add5~31\);

-- Location: LCCOMB_X8_Y25_N2
\U_VGA|Add5~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~32_combout\ = (\U_VGA|y_pos_p1\(17) & (\U_VGA|Add5~31\ $ (GND))) # (!\U_VGA|y_pos_p1\(17) & (!\U_VGA|Add5~31\ & VCC))
-- \U_VGA|Add5~33\ = CARRY((\U_VGA|y_pos_p1\(17) & !\U_VGA|Add5~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(17),
	datad => VCC,
	cin => \U_VGA|Add5~31\,
	combout => \U_VGA|Add5~32_combout\,
	cout => \U_VGA|Add5~33\);

-- Location: LCCOMB_X8_Y25_N4
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

-- Location: LCCOMB_X8_Y25_N6
\U_VGA|Add5~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~36_combout\ = (\U_VGA|y_pos_p1\(19) & (\U_VGA|Add5~35\ $ (GND))) # (!\U_VGA|y_pos_p1\(19) & (!\U_VGA|Add5~35\ & VCC))
-- \U_VGA|Add5~37\ = CARRY((\U_VGA|y_pos_p1\(19) & !\U_VGA|Add5~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(19),
	datad => VCC,
	cin => \U_VGA|Add5~35\,
	combout => \U_VGA|Add5~36_combout\,
	cout => \U_VGA|Add5~37\);

-- Location: LCCOMB_X8_Y25_N8
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

-- Location: LCCOMB_X7_Y25_N4
\U_VGA|LessThan5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~1_combout\ = (\U_VGA|Add5~32_combout\) # ((\U_VGA|Add5~34_combout\) # ((\U_VGA|Add5~38_combout\) # (\U_VGA|Add5~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add5~32_combout\,
	datab => \U_VGA|Add5~34_combout\,
	datac => \U_VGA|Add5~38_combout\,
	datad => \U_VGA|Add5~36_combout\,
	combout => \U_VGA|LessThan5~1_combout\);

-- Location: LCCOMB_X8_Y26_N24
\U_VGA|Add5~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~22_combout\ = (\U_VGA|y_pos_p1\(12) & (!\U_VGA|Add5~21\)) # (!\U_VGA|y_pos_p1\(12) & ((\U_VGA|Add5~21\) # (GND)))
-- \U_VGA|Add5~23\ = CARRY((!\U_VGA|Add5~21\) # (!\U_VGA|y_pos_p1\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(12),
	datad => VCC,
	cin => \U_VGA|Add5~21\,
	combout => \U_VGA|Add5~22_combout\,
	cout => \U_VGA|Add5~23\);

-- Location: LCCOMB_X8_Y26_N26
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

-- Location: LCCOMB_X8_Y26_N28
\U_VGA|Add5~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~26_combout\ = (\U_VGA|y_pos_p1\(14) & (!\U_VGA|Add5~25\)) # (!\U_VGA|y_pos_p1\(14) & ((\U_VGA|Add5~25\) # (GND)))
-- \U_VGA|Add5~27\ = CARRY((!\U_VGA|Add5~25\) # (!\U_VGA|y_pos_p1\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(14),
	datad => VCC,
	cin => \U_VGA|Add5~25\,
	combout => \U_VGA|Add5~26_combout\,
	cout => \U_VGA|Add5~27\);

-- Location: LCCOMB_X7_Y25_N18
\U_VGA|LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~0_combout\ = (\U_VGA|Add5~24_combout\) # ((\U_VGA|Add5~30_combout\) # ((\U_VGA|Add5~26_combout\) # (\U_VGA|Add5~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add5~24_combout\,
	datab => \U_VGA|Add5~30_combout\,
	datac => \U_VGA|Add5~26_combout\,
	datad => \U_VGA|Add5~28_combout\,
	combout => \U_VGA|LessThan5~0_combout\);

-- Location: LCCOMB_X7_Y25_N26
\U_VGA|LessThan5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~2_combout\ = (\U_VGA|Add5~42_combout\) # ((\U_VGA|Add5~40_combout\) # ((\U_VGA|LessThan5~1_combout\) # (\U_VGA|LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add5~42_combout\,
	datab => \U_VGA|Add5~40_combout\,
	datac => \U_VGA|LessThan5~1_combout\,
	datad => \U_VGA|LessThan5~0_combout\,
	combout => \U_VGA|LessThan5~2_combout\);

-- Location: LCCOMB_X8_Y26_N22
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

-- Location: LCCOMB_X7_Y25_N12
\U_VGA|LessThan5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~6_combout\ = (\U_VGA|Add5~22_combout\) # ((\U_VGA|Add5~20_combout\) # ((\U_VGA|Add5~18_combout\) # (\U_VGA|Add5~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add5~22_combout\,
	datab => \U_VGA|Add5~20_combout\,
	datac => \U_VGA|Add5~18_combout\,
	datad => \U_VGA|Add5~16_combout\,
	combout => \U_VGA|LessThan5~6_combout\);

-- Location: LCCOMB_X8_Y26_N2
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

-- Location: LCCOMB_X6_Y26_N2
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

-- Location: LCCOMB_X7_Y26_N0
\U_VGA|y_pos_p1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~11_combout\ = (\U_VGA|Add4~60_combout\ & (\U_VGA|Add5~0_combout\)) # (!\U_VGA|Add4~60_combout\ & ((\switch[0]~input_o\ & ((\U_VGA|Add4~0_combout\))) # (!\switch[0]~input_o\ & (\U_VGA|Add5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add5~0_combout\,
	datab => \U_VGA|Add4~60_combout\,
	datac => \U_VGA|Add4~0_combout\,
	datad => \switch[0]~input_o\,
	combout => \U_VGA|y_pos_p1~11_combout\);

-- Location: FF_X7_Y26_N1
\U_VGA|y_pos_p1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|y_pos_p1~11_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	ena => \U_VGA|y_pos_p1[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(1));

-- Location: LCCOMB_X6_Y26_N4
\U_VGA|Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~2_combout\ = (\U_VGA|y_pos_p1\(2) & (\U_VGA|Add4~1\ & VCC)) # (!\U_VGA|y_pos_p1\(2) & (!\U_VGA|Add4~1\))
-- \U_VGA|Add4~3\ = CARRY((!\U_VGA|y_pos_p1\(2) & !\U_VGA|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(2),
	datad => VCC,
	cin => \U_VGA|Add4~1\,
	combout => \U_VGA|Add4~2_combout\,
	cout => \U_VGA|Add4~3\);

-- Location: LCCOMB_X8_Y26_N4
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

-- Location: LCCOMB_X7_Y26_N22
\U_VGA|y_pos_p1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~10_combout\ = (\switch[0]~input_o\ & ((\U_VGA|Add4~60_combout\ & ((\U_VGA|Add5~2_combout\))) # (!\U_VGA|Add4~60_combout\ & (\U_VGA|Add4~2_combout\)))) # (!\switch[0]~input_o\ & (((\U_VGA|Add5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \U_VGA|Add4~2_combout\,
	datac => \U_VGA|Add5~2_combout\,
	datad => \U_VGA|Add4~60_combout\,
	combout => \U_VGA|y_pos_p1~10_combout\);

-- Location: FF_X7_Y26_N23
\U_VGA|y_pos_p1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|y_pos_p1~10_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	ena => \U_VGA|y_pos_p1[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(2));

-- Location: LCCOMB_X6_Y26_N6
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

-- Location: LCCOMB_X9_Y26_N8
\U_VGA|paddle1_move~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|paddle1_move~0_combout\ = (\switch[0]~input_o\ & !\U_VGA|Add4~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch[0]~input_o\,
	datac => \U_VGA|Add4~60_combout\,
	combout => \U_VGA|paddle1_move~0_combout\);

-- Location: LCCOMB_X8_Y26_N6
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

-- Location: LCCOMB_X7_Y26_N26
\U_VGA|y_pos_p1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~9_combout\ = (\button_n[0]~input_o\ & ((\U_VGA|paddle1_move~0_combout\ & (!\U_VGA|Add4~4_combout\)) # (!\U_VGA|paddle1_move~0_combout\ & ((!\U_VGA|Add5~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datab => \U_VGA|Add4~4_combout\,
	datac => \U_VGA|paddle1_move~0_combout\,
	datad => \U_VGA|Add5~4_combout\,
	combout => \U_VGA|y_pos_p1~9_combout\);

-- Location: FF_X7_Y26_N27
\U_VGA|y_pos_p1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|y_pos_p1~9_combout\,
	ena => \U_VGA|y_pos_p1[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(3));

-- Location: LCCOMB_X8_Y26_N8
\U_VGA|Add5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~6_combout\ = (\U_VGA|y_pos_p1\(4) & (!\U_VGA|Add5~5\)) # (!\U_VGA|y_pos_p1\(4) & ((\U_VGA|Add5~5\) # (GND)))
-- \U_VGA|Add5~7\ = CARRY((!\U_VGA|Add5~5\) # (!\U_VGA|y_pos_p1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(4),
	datad => VCC,
	cin => \U_VGA|Add5~5\,
	combout => \U_VGA|Add5~6_combout\,
	cout => \U_VGA|Add5~7\);

-- Location: LCCOMB_X8_Y26_N10
\U_VGA|Add5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~8_combout\ = (\U_VGA|y_pos_p1\(5) & (\U_VGA|Add5~7\ $ (GND))) # (!\U_VGA|y_pos_p1\(5) & (!\U_VGA|Add5~7\ & VCC))
-- \U_VGA|Add5~9\ = CARRY((\U_VGA|y_pos_p1\(5) & !\U_VGA|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(5),
	datad => VCC,
	cin => \U_VGA|Add5~7\,
	combout => \U_VGA|Add5~8_combout\,
	cout => \U_VGA|Add5~9\);

-- Location: LCCOMB_X8_Y26_N0
\U_VGA|LessThan5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~4_combout\ = (\U_VGA|Add5~6_combout\) # ((\U_VGA|Add5~4_combout\ & (\U_VGA|Add5~2_combout\ & \U_VGA|Add5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add5~4_combout\,
	datab => \U_VGA|Add5~2_combout\,
	datac => \U_VGA|Add5~6_combout\,
	datad => \U_VGA|Add5~0_combout\,
	combout => \U_VGA|LessThan5~4_combout\);

-- Location: LCCOMB_X9_Y26_N28
\U_VGA|LessThan5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~3_combout\ = (\U_VGA|Add5~14_combout\ & \U_VGA|Add5~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|Add5~14_combout\,
	datad => \U_VGA|Add5~12_combout\,
	combout => \U_VGA|LessThan5~3_combout\);

-- Location: LCCOMB_X9_Y26_N30
\U_VGA|LessThan5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~5_combout\ = (\U_VGA|LessThan5~3_combout\ & ((\U_VGA|Add5~10_combout\) # ((\U_VGA|Add5~8_combout\ & \U_VGA|LessThan5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add5~8_combout\,
	datab => \U_VGA|Add5~10_combout\,
	datac => \U_VGA|LessThan5~4_combout\,
	datad => \U_VGA|LessThan5~3_combout\,
	combout => \U_VGA|LessThan5~5_combout\);

-- Location: LCCOMB_X7_Y25_N2
\U_VGA|LessThan5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~7_combout\ = (\U_VGA|LessThan5~6_combout\) # ((\U_VGA|Add5~44_combout\) # ((\U_VGA|LessThan5~5_combout\) # (\U_VGA|Add5~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|LessThan5~6_combout\,
	datab => \U_VGA|Add5~44_combout\,
	datac => \U_VGA|LessThan5~5_combout\,
	datad => \U_VGA|Add5~46_combout\,
	combout => \U_VGA|LessThan5~7_combout\);

-- Location: LCCOMB_X7_Y25_N24
\U_VGA|LessThan5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan5~8_combout\ = (\U_VGA|Add5~50_combout\) # ((\U_VGA|Add5~48_combout\) # ((\U_VGA|LessThan5~2_combout\) # (\U_VGA|LessThan5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add5~50_combout\,
	datab => \U_VGA|Add5~48_combout\,
	datac => \U_VGA|LessThan5~2_combout\,
	datad => \U_VGA|LessThan5~7_combout\,
	combout => \U_VGA|LessThan5~8_combout\);

-- Location: LCCOMB_X7_Y25_N20
\U_VGA|y_pos_p1[9]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1[9]~2_combout\ = (\switch[1]~input_o\ & ((\U_VGA|Add5~60_combout\) # ((!\U_VGA|y_pos_p1[9]~1_combout\ & !\U_VGA|LessThan5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1[9]~1_combout\,
	datab => \switch[1]~input_o\,
	datac => \U_VGA|Add5~60_combout\,
	datad => \U_VGA|LessThan5~8_combout\,
	combout => \U_VGA|y_pos_p1[9]~2_combout\);

-- Location: LCCOMB_X7_Y25_N6
\U_VGA|y_pos_p1[9]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1[9]~3_combout\ = ((\U_VGA|y_pos_p1[9]~2_combout\) # ((\switch[0]~input_o\ & !\U_VGA|Add4~60_combout\))) # (!\button_n[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \U_VGA|Add4~60_combout\,
	datac => \button_n[0]~input_o\,
	datad => \U_VGA|y_pos_p1[9]~2_combout\,
	combout => \U_VGA|y_pos_p1[9]~3_combout\);

-- Location: FF_X8_Y25_N13
\U_VGA|y_pos_p1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p1~33_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p1[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(10));

-- Location: LCCOMB_X6_Y26_N22
\U_VGA|Add4~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~20_combout\ = (\U_VGA|y_pos_p1\(11) & ((GND) # (!\U_VGA|Add4~19\))) # (!\U_VGA|y_pos_p1\(11) & (\U_VGA|Add4~19\ $ (GND)))
-- \U_VGA|Add4~21\ = CARRY((\U_VGA|y_pos_p1\(11)) # (!\U_VGA|Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(11),
	datad => VCC,
	cin => \U_VGA|Add4~19\,
	combout => \U_VGA|Add4~20_combout\,
	cout => \U_VGA|Add4~21\);

-- Location: LCCOMB_X7_Y25_N22
\U_VGA|y_pos_p1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~32_combout\ = (\switch[0]~input_o\ & ((\U_VGA|Add4~60_combout\ & ((\U_VGA|Add5~20_combout\))) # (!\U_VGA|Add4~60_combout\ & (\U_VGA|Add4~20_combout\)))) # (!\switch[0]~input_o\ & (((\U_VGA|Add5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add4~20_combout\,
	datab => \U_VGA|Add5~20_combout\,
	datac => \switch[0]~input_o\,
	datad => \U_VGA|Add4~60_combout\,
	combout => \U_VGA|y_pos_p1~32_combout\);

-- Location: FF_X8_Y26_N19
\U_VGA|y_pos_p1[11]\ : dffeas
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
	ena => \U_VGA|y_pos_p1[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(11));

-- Location: LCCOMB_X6_Y26_N24
\U_VGA|Add4~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~22_combout\ = (\U_VGA|y_pos_p1\(12) & (\U_VGA|Add4~21\ & VCC)) # (!\U_VGA|y_pos_p1\(12) & (!\U_VGA|Add4~21\))
-- \U_VGA|Add4~23\ = CARRY((!\U_VGA|y_pos_p1\(12) & !\U_VGA|Add4~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(12),
	datad => VCC,
	cin => \U_VGA|Add4~21\,
	combout => \U_VGA|Add4~22_combout\,
	cout => \U_VGA|Add4~23\);

-- Location: LCCOMB_X9_Y25_N20
\U_VGA|y_pos_p1~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~31_combout\ = (\switch[0]~input_o\ & ((\U_VGA|Add4~60_combout\ & (\U_VGA|Add5~22_combout\)) # (!\U_VGA|Add4~60_combout\ & ((\U_VGA|Add4~22_combout\))))) # (!\switch[0]~input_o\ & (\U_VGA|Add5~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \U_VGA|Add5~22_combout\,
	datac => \U_VGA|Add4~22_combout\,
	datad => \U_VGA|Add4~60_combout\,
	combout => \U_VGA|y_pos_p1~31_combout\);

-- Location: FF_X8_Y25_N11
\U_VGA|y_pos_p1[12]\ : dffeas
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
	ena => \U_VGA|y_pos_p1[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(12));

-- Location: LCCOMB_X6_Y26_N26
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

-- Location: LCCOMB_X7_Y25_N0
\U_VGA|y_pos_p1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~30_combout\ = (\U_VGA|Add4~60_combout\ & (((\U_VGA|Add5~24_combout\)))) # (!\U_VGA|Add4~60_combout\ & ((\switch[0]~input_o\ & (\U_VGA|Add4~24_combout\)) # (!\switch[0]~input_o\ & ((\U_VGA|Add5~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add4~24_combout\,
	datab => \U_VGA|Add4~60_combout\,
	datac => \switch[0]~input_o\,
	datad => \U_VGA|Add5~24_combout\,
	combout => \U_VGA|y_pos_p1~30_combout\);

-- Location: FF_X8_Y26_N21
\U_VGA|y_pos_p1[13]\ : dffeas
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
	ena => \U_VGA|y_pos_p1[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(13));

-- Location: LCCOMB_X6_Y26_N28
\U_VGA|Add4~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~26_combout\ = (\U_VGA|y_pos_p1\(14) & (\U_VGA|Add4~25\ & VCC)) # (!\U_VGA|y_pos_p1\(14) & (!\U_VGA|Add4~25\))
-- \U_VGA|Add4~27\ = CARRY((!\U_VGA|y_pos_p1\(14) & !\U_VGA|Add4~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(14),
	datad => VCC,
	cin => \U_VGA|Add4~25\,
	combout => \U_VGA|Add4~26_combout\,
	cout => \U_VGA|Add4~27\);

-- Location: LCCOMB_X9_Y26_N14
\U_VGA|y_pos_p1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~29_combout\ = (\switch[0]~input_o\ & ((\U_VGA|Add4~60_combout\ & ((\U_VGA|Add5~26_combout\))) # (!\U_VGA|Add4~60_combout\ & (\U_VGA|Add4~26_combout\)))) # (!\switch[0]~input_o\ & (((\U_VGA|Add5~26_combout\))))

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
	combout => \U_VGA|y_pos_p1~29_combout\);

-- Location: FF_X8_Y26_N13
\U_VGA|y_pos_p1[14]\ : dffeas
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
	ena => \U_VGA|y_pos_p1[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(14));

-- Location: LCCOMB_X8_Y26_N30
\U_VGA|Add5~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~28_combout\ = (\U_VGA|y_pos_p1\(15) & (\U_VGA|Add5~27\ $ (GND))) # (!\U_VGA|y_pos_p1\(15) & (!\U_VGA|Add5~27\ & VCC))
-- \U_VGA|Add5~29\ = CARRY((\U_VGA|y_pos_p1\(15) & !\U_VGA|Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(15),
	datad => VCC,
	cin => \U_VGA|Add5~27\,
	combout => \U_VGA|Add5~28_combout\,
	cout => \U_VGA|Add5~29\);

-- Location: LCCOMB_X6_Y26_N30
\U_VGA|Add4~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~28_combout\ = (\U_VGA|y_pos_p1\(15) & ((GND) # (!\U_VGA|Add4~27\))) # (!\U_VGA|y_pos_p1\(15) & (\U_VGA|Add4~27\ $ (GND)))
-- \U_VGA|Add4~29\ = CARRY((\U_VGA|y_pos_p1\(15)) # (!\U_VGA|Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(15),
	datad => VCC,
	cin => \U_VGA|Add4~27\,
	combout => \U_VGA|Add4~28_combout\,
	cout => \U_VGA|Add4~29\);

-- Location: LCCOMB_X9_Y25_N26
\U_VGA|y_pos_p1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~28_combout\ = (\switch[0]~input_o\ & ((\U_VGA|Add4~60_combout\ & (\U_VGA|Add5~28_combout\)) # (!\U_VGA|Add4~60_combout\ & ((\U_VGA|Add4~28_combout\))))) # (!\switch[0]~input_o\ & (\U_VGA|Add5~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add5~28_combout\,
	datab => \switch[0]~input_o\,
	datac => \U_VGA|Add4~28_combout\,
	datad => \U_VGA|Add4~60_combout\,
	combout => \U_VGA|y_pos_p1~28_combout\);

-- Location: FF_X8_Y25_N27
\U_VGA|y_pos_p1[15]\ : dffeas
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
	ena => \U_VGA|y_pos_p1[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(15));

-- Location: LCCOMB_X6_Y25_N0
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

-- Location: LCCOMB_X9_Y25_N4
\U_VGA|y_pos_p1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~27_combout\ = (\switch[0]~input_o\ & ((\U_VGA|Add4~60_combout\ & (\U_VGA|Add5~30_combout\)) # (!\U_VGA|Add4~60_combout\ & ((\U_VGA|Add4~30_combout\))))) # (!\switch[0]~input_o\ & (\U_VGA|Add5~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add5~30_combout\,
	datab => \switch[0]~input_o\,
	datac => \U_VGA|Add4~30_combout\,
	datad => \U_VGA|Add4~60_combout\,
	combout => \U_VGA|y_pos_p1~27_combout\);

-- Location: FF_X8_Y25_N5
\U_VGA|y_pos_p1[16]\ : dffeas
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
	ena => \U_VGA|y_pos_p1[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(16));

-- Location: LCCOMB_X6_Y25_N2
\U_VGA|Add4~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~32_combout\ = (\U_VGA|y_pos_p1\(17) & ((GND) # (!\U_VGA|Add4~31\))) # (!\U_VGA|y_pos_p1\(17) & (\U_VGA|Add4~31\ $ (GND)))
-- \U_VGA|Add4~33\ = CARRY((\U_VGA|y_pos_p1\(17)) # (!\U_VGA|Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(17),
	datad => VCC,
	cin => \U_VGA|Add4~31\,
	combout => \U_VGA|Add4~32_combout\,
	cout => \U_VGA|Add4~33\);

-- Location: LCCOMB_X7_Y25_N8
\U_VGA|y_pos_p1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~26_combout\ = (\switch[0]~input_o\ & ((\U_VGA|Add4~60_combout\ & ((\U_VGA|Add5~32_combout\))) # (!\U_VGA|Add4~60_combout\ & (\U_VGA|Add4~32_combout\)))) # (!\switch[0]~input_o\ & (((\U_VGA|Add5~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \U_VGA|Add4~60_combout\,
	datac => \U_VGA|Add4~32_combout\,
	datad => \U_VGA|Add5~32_combout\,
	combout => \U_VGA|y_pos_p1~26_combout\);

-- Location: FF_X7_Y25_N9
\U_VGA|y_pos_p1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|y_pos_p1~26_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	ena => \U_VGA|y_pos_p1[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(17));

-- Location: LCCOMB_X6_Y25_N4
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

-- Location: LCCOMB_X9_Y25_N10
\U_VGA|y_pos_p1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~25_combout\ = (\switch[0]~input_o\ & ((\U_VGA|Add4~60_combout\ & ((\U_VGA|Add5~34_combout\))) # (!\U_VGA|Add4~60_combout\ & (\U_VGA|Add4~34_combout\)))) # (!\switch[0]~input_o\ & (((\U_VGA|Add5~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add4~34_combout\,
	datab => \switch[0]~input_o\,
	datac => \U_VGA|Add5~34_combout\,
	datad => \U_VGA|Add4~60_combout\,
	combout => \U_VGA|y_pos_p1~25_combout\);

-- Location: FF_X8_Y25_N19
\U_VGA|y_pos_p1[18]\ : dffeas
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
	ena => \U_VGA|y_pos_p1[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(18));

-- Location: LCCOMB_X6_Y25_N6
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

-- Location: LCCOMB_X9_Y25_N8
\U_VGA|y_pos_p1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~24_combout\ = (\switch[0]~input_o\ & ((\U_VGA|Add4~60_combout\ & ((\U_VGA|Add5~36_combout\))) # (!\U_VGA|Add4~60_combout\ & (\U_VGA|Add4~36_combout\)))) # (!\switch[0]~input_o\ & (((\U_VGA|Add5~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add4~36_combout\,
	datab => \switch[0]~input_o\,
	datac => \U_VGA|Add5~36_combout\,
	datad => \U_VGA|Add4~60_combout\,
	combout => \U_VGA|y_pos_p1~24_combout\);

-- Location: FF_X8_Y25_N9
\U_VGA|y_pos_p1[19]\ : dffeas
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
	ena => \U_VGA|y_pos_p1[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(19));

-- Location: LCCOMB_X6_Y25_N8
\U_VGA|Add4~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~38_combout\ = (\U_VGA|y_pos_p1\(20) & (\U_VGA|Add4~37\ & VCC)) # (!\U_VGA|y_pos_p1\(20) & (!\U_VGA|Add4~37\))
-- \U_VGA|Add4~39\ = CARRY((!\U_VGA|y_pos_p1\(20) & !\U_VGA|Add4~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(20),
	datad => VCC,
	cin => \U_VGA|Add4~37\,
	combout => \U_VGA|Add4~38_combout\,
	cout => \U_VGA|Add4~39\);

-- Location: LCCOMB_X9_Y25_N14
\U_VGA|y_pos_p1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~23_combout\ = (\switch[0]~input_o\ & ((\U_VGA|Add4~60_combout\ & ((\U_VGA|Add5~38_combout\))) # (!\U_VGA|Add4~60_combout\ & (\U_VGA|Add4~38_combout\)))) # (!\switch[0]~input_o\ & (((\U_VGA|Add5~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add4~38_combout\,
	datab => \switch[0]~input_o\,
	datac => \U_VGA|Add5~38_combout\,
	datad => \U_VGA|Add4~60_combout\,
	combout => \U_VGA|y_pos_p1~23_combout\);

-- Location: FF_X8_Y25_N23
\U_VGA|y_pos_p1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	asdata => \U_VGA|y_pos_p1~23_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	sload => VCC,
	ena => \U_VGA|y_pos_p1[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(20));

-- Location: LCCOMB_X6_Y25_N10
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

-- Location: LCCOMB_X7_Y25_N14
\U_VGA|y_pos_p1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~22_combout\ = (\U_VGA|Add4~60_combout\ & (\U_VGA|Add5~40_combout\)) # (!\U_VGA|Add4~60_combout\ & ((\switch[0]~input_o\ & ((\U_VGA|Add4~40_combout\))) # (!\switch[0]~input_o\ & (\U_VGA|Add5~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add5~40_combout\,
	datab => \U_VGA|Add4~60_combout\,
	datac => \switch[0]~input_o\,
	datad => \U_VGA|Add4~40_combout\,
	combout => \U_VGA|y_pos_p1~22_combout\);

-- Location: FF_X7_Y25_N15
\U_VGA|y_pos_p1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|y_pos_p1~22_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	ena => \U_VGA|y_pos_p1[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(21));

-- Location: LCCOMB_X6_Y25_N12
\U_VGA|Add4~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~42_combout\ = (\U_VGA|y_pos_p1\(22) & (\U_VGA|Add4~41\ & VCC)) # (!\U_VGA|y_pos_p1\(22) & (!\U_VGA|Add4~41\))
-- \U_VGA|Add4~43\ = CARRY((!\U_VGA|y_pos_p1\(22) & !\U_VGA|Add4~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(22),
	datad => VCC,
	cin => \U_VGA|Add4~41\,
	combout => \U_VGA|Add4~42_combout\,
	cout => \U_VGA|Add4~43\);

-- Location: LCCOMB_X7_Y25_N28
\U_VGA|y_pos_p1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~21_combout\ = (\switch[0]~input_o\ & ((\U_VGA|Add4~60_combout\ & ((\U_VGA|Add5~42_combout\))) # (!\U_VGA|Add4~60_combout\ & (\U_VGA|Add4~42_combout\)))) # (!\switch[0]~input_o\ & (((\U_VGA|Add5~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add4~42_combout\,
	datab => \U_VGA|Add5~42_combout\,
	datac => \switch[0]~input_o\,
	datad => \U_VGA|Add4~60_combout\,
	combout => \U_VGA|y_pos_p1~21_combout\);

-- Location: FF_X7_Y25_N29
\U_VGA|y_pos_p1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|y_pos_p1~21_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	ena => \U_VGA|y_pos_p1[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(22));

-- Location: LCCOMB_X6_Y25_N14
\U_VGA|Add4~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~44_combout\ = (\U_VGA|y_pos_p1\(23) & ((GND) # (!\U_VGA|Add4~43\))) # (!\U_VGA|y_pos_p1\(23) & (\U_VGA|Add4~43\ $ (GND)))
-- \U_VGA|Add4~45\ = CARRY((\U_VGA|y_pos_p1\(23)) # (!\U_VGA|Add4~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(23),
	datad => VCC,
	cin => \U_VGA|Add4~43\,
	combout => \U_VGA|Add4~44_combout\,
	cout => \U_VGA|Add4~45\);

-- Location: LCCOMB_X9_Y25_N12
\U_VGA|y_pos_p1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~20_combout\ = (\switch[0]~input_o\ & ((\U_VGA|Add4~60_combout\ & (\U_VGA|Add5~44_combout\)) # (!\U_VGA|Add4~60_combout\ & ((\U_VGA|Add4~44_combout\))))) # (!\switch[0]~input_o\ & (\U_VGA|Add5~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add5~44_combout\,
	datab => \switch[0]~input_o\,
	datac => \U_VGA|Add4~44_combout\,
	datad => \U_VGA|Add4~60_combout\,
	combout => \U_VGA|y_pos_p1~20_combout\);

-- Location: FF_X8_Y25_N17
\U_VGA|y_pos_p1[23]\ : dffeas
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
	ena => \U_VGA|y_pos_p1[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(23));

-- Location: LCCOMB_X6_Y25_N16
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

-- Location: LCCOMB_X9_Y25_N18
\U_VGA|y_pos_p1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~19_combout\ = (\switch[0]~input_o\ & ((\U_VGA|Add4~60_combout\ & ((\U_VGA|Add5~46_combout\))) # (!\U_VGA|Add4~60_combout\ & (\U_VGA|Add4~46_combout\)))) # (!\switch[0]~input_o\ & (((\U_VGA|Add5~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \U_VGA|Add4~46_combout\,
	datac => \U_VGA|Add5~46_combout\,
	datad => \U_VGA|Add4~60_combout\,
	combout => \U_VGA|y_pos_p1~19_combout\);

-- Location: FF_X8_Y25_N25
\U_VGA|y_pos_p1[24]\ : dffeas
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
	ena => \U_VGA|y_pos_p1[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(24));

-- Location: LCCOMB_X6_Y25_N18
\U_VGA|Add4~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~48_combout\ = (\U_VGA|y_pos_p1\(25) & ((GND) # (!\U_VGA|Add4~47\))) # (!\U_VGA|y_pos_p1\(25) & (\U_VGA|Add4~47\ $ (GND)))
-- \U_VGA|Add4~49\ = CARRY((\U_VGA|y_pos_p1\(25)) # (!\U_VGA|Add4~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(25),
	datad => VCC,
	cin => \U_VGA|Add4~47\,
	combout => \U_VGA|Add4~48_combout\,
	cout => \U_VGA|Add4~49\);

-- Location: LCCOMB_X7_Y25_N30
\U_VGA|y_pos_p1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~18_combout\ = (\switch[0]~input_o\ & ((\U_VGA|Add4~60_combout\ & ((\U_VGA|Add5~48_combout\))) # (!\U_VGA|Add4~60_combout\ & (\U_VGA|Add4~48_combout\)))) # (!\switch[0]~input_o\ & (((\U_VGA|Add5~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \U_VGA|Add4~60_combout\,
	datac => \U_VGA|Add4~48_combout\,
	datad => \U_VGA|Add5~48_combout\,
	combout => \U_VGA|y_pos_p1~18_combout\);

-- Location: FF_X7_Y25_N31
\U_VGA|y_pos_p1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|y_pos_p1~18_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	ena => \U_VGA|y_pos_p1[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(25));

-- Location: LCCOMB_X8_Y25_N20
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

-- Location: LCCOMB_X6_Y25_N20
\U_VGA|Add4~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~50_combout\ = (\U_VGA|y_pos_p1\(26) & (\U_VGA|Add4~49\ & VCC)) # (!\U_VGA|y_pos_p1\(26) & (!\U_VGA|Add4~49\))
-- \U_VGA|Add4~51\ = CARRY((!\U_VGA|y_pos_p1\(26) & !\U_VGA|Add4~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(26),
	datad => VCC,
	cin => \U_VGA|Add4~49\,
	combout => \U_VGA|Add4~50_combout\,
	cout => \U_VGA|Add4~51\);

-- Location: LCCOMB_X9_Y25_N0
\U_VGA|y_pos_p1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~17_combout\ = (\switch[0]~input_o\ & ((\U_VGA|Add4~60_combout\ & (\U_VGA|Add5~50_combout\)) # (!\U_VGA|Add4~60_combout\ & ((\U_VGA|Add4~50_combout\))))) # (!\switch[0]~input_o\ & (\U_VGA|Add5~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \U_VGA|Add5~50_combout\,
	datac => \U_VGA|Add4~50_combout\,
	datad => \U_VGA|Add4~60_combout\,
	combout => \U_VGA|y_pos_p1~17_combout\);

-- Location: FF_X8_Y25_N31
\U_VGA|y_pos_p1[26]\ : dffeas
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
	ena => \U_VGA|y_pos_p1[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(26));

-- Location: LCCOMB_X6_Y25_N22
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

-- Location: LCCOMB_X7_Y25_N16
\U_VGA|y_pos_p1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~16_combout\ = (\switch[0]~input_o\ & ((\U_VGA|Add4~60_combout\ & (\U_VGA|Add5~52_combout\)) # (!\U_VGA|Add4~60_combout\ & ((\U_VGA|Add4~52_combout\))))) # (!\switch[0]~input_o\ & (((\U_VGA|Add5~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \U_VGA|Add4~60_combout\,
	datac => \U_VGA|Add5~52_combout\,
	datad => \U_VGA|Add4~52_combout\,
	combout => \U_VGA|y_pos_p1~16_combout\);

-- Location: FF_X7_Y25_N17
\U_VGA|y_pos_p1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|y_pos_p1~16_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	ena => \U_VGA|y_pos_p1[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(27));

-- Location: LCCOMB_X6_Y25_N24
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

-- Location: LCCOMB_X9_Y25_N28
\U_VGA|y_pos_p1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~15_combout\ = (\switch[0]~input_o\ & ((\U_VGA|Add4~60_combout\ & ((\U_VGA|Add5~54_combout\))) # (!\U_VGA|Add4~60_combout\ & (\U_VGA|Add4~54_combout\)))) # (!\switch[0]~input_o\ & (((\U_VGA|Add5~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add4~54_combout\,
	datab => \switch[0]~input_o\,
	datac => \U_VGA|Add5~54_combout\,
	datad => \U_VGA|Add4~60_combout\,
	combout => \U_VGA|y_pos_p1~15_combout\);

-- Location: FF_X9_Y25_N29
\U_VGA|y_pos_p1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|y_pos_p1~15_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	ena => \U_VGA|y_pos_p1[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(28));

-- Location: LCCOMB_X6_Y25_N26
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

-- Location: LCCOMB_X9_Y25_N30
\U_VGA|y_pos_p1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~14_combout\ = (\switch[0]~input_o\ & ((\U_VGA|Add4~60_combout\ & (\U_VGA|Add5~56_combout\)) # (!\U_VGA|Add4~60_combout\ & ((\U_VGA|Add4~56_combout\))))) # (!\switch[0]~input_o\ & (\U_VGA|Add5~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add5~56_combout\,
	datab => \switch[0]~input_o\,
	datac => \U_VGA|Add4~56_combout\,
	datad => \U_VGA|Add4~60_combout\,
	combout => \U_VGA|y_pos_p1~14_combout\);

-- Location: FF_X8_Y25_N1
\U_VGA|y_pos_p1[29]\ : dffeas
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
	ena => \U_VGA|y_pos_p1[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(29));

-- Location: LCCOMB_X6_Y25_N28
\U_VGA|Add4~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~58_combout\ = (\U_VGA|y_pos_p1\(30) & (\U_VGA|Add4~57\ & VCC)) # (!\U_VGA|y_pos_p1\(30) & (!\U_VGA|Add4~57\))
-- \U_VGA|Add4~59\ = CARRY((!\U_VGA|y_pos_p1\(30) & !\U_VGA|Add4~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(30),
	datad => VCC,
	cin => \U_VGA|Add4~57\,
	combout => \U_VGA|Add4~58_combout\,
	cout => \U_VGA|Add4~59\);

-- Location: LCCOMB_X9_Y25_N2
\U_VGA|y_pos_p1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~13_combout\ = (\switch[0]~input_o\ & ((\U_VGA|Add4~60_combout\ & ((\U_VGA|Add5~58_combout\))) # (!\U_VGA|Add4~60_combout\ & (\U_VGA|Add4~58_combout\)))) # (!\switch[0]~input_o\ & (((\U_VGA|Add5~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add4~58_combout\,
	datab => \U_VGA|Add5~58_combout\,
	datac => \switch[0]~input_o\,
	datad => \U_VGA|Add4~60_combout\,
	combout => \U_VGA|y_pos_p1~13_combout\);

-- Location: FF_X9_Y25_N3
\U_VGA|y_pos_p1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|y_pos_p1~13_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	ena => \U_VGA|y_pos_p1[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(30));

-- Location: LCCOMB_X8_Y25_N30
\U_VGA|Add5~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~60_combout\ = \U_VGA|Add5~59\ $ (!\U_VGA|y_pos_p1\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_VGA|y_pos_p1\(31),
	cin => \U_VGA|Add5~59\,
	combout => \U_VGA|Add5~60_combout\);

-- Location: LCCOMB_X9_Y25_N24
\U_VGA|y_pos_p1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~12_combout\ = (\U_VGA|Add5~60_combout\ & ((\U_VGA|Add4~60_combout\) # (!\switch[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|Add4~60_combout\,
	datac => \switch[0]~input_o\,
	datad => \U_VGA|Add5~60_combout\,
	combout => \U_VGA|y_pos_p1~12_combout\);

-- Location: FF_X9_Y25_N25
\U_VGA|y_pos_p1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|y_pos_p1~12_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	ena => \U_VGA|y_pos_p1[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(31));

-- Location: LCCOMB_X6_Y25_N30
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

-- Location: LCCOMB_X6_Y26_N8
\U_VGA|Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~6_combout\ = (\U_VGA|y_pos_p1\(4) & (\U_VGA|Add4~5\ & VCC)) # (!\U_VGA|y_pos_p1\(4) & (!\U_VGA|Add4~5\))
-- \U_VGA|Add4~7\ = CARRY((!\U_VGA|y_pos_p1\(4) & !\U_VGA|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(4),
	datad => VCC,
	cin => \U_VGA|Add4~5\,
	combout => \U_VGA|Add4~6_combout\,
	cout => \U_VGA|Add4~7\);

-- Location: LCCOMB_X7_Y26_N24
\U_VGA|y_pos_p1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~8_combout\ = (\switch[0]~input_o\ & ((\U_VGA|Add4~60_combout\ & (\U_VGA|Add5~6_combout\)) # (!\U_VGA|Add4~60_combout\ & ((\U_VGA|Add4~6_combout\))))) # (!\switch[0]~input_o\ & (((\U_VGA|Add5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \U_VGA|Add4~60_combout\,
	datac => \U_VGA|Add5~6_combout\,
	datad => \U_VGA|Add4~6_combout\,
	combout => \U_VGA|y_pos_p1~8_combout\);

-- Location: FF_X7_Y26_N25
\U_VGA|y_pos_p1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|y_pos_p1~8_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	ena => \U_VGA|y_pos_p1[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(4));

-- Location: LCCOMB_X6_Y26_N10
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

-- Location: LCCOMB_X7_Y26_N30
\U_VGA|y_pos_p1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~7_combout\ = (\switch[0]~input_o\ & ((\U_VGA|Add4~60_combout\ & ((\U_VGA|Add5~8_combout\))) # (!\U_VGA|Add4~60_combout\ & (\U_VGA|Add4~8_combout\)))) # (!\switch[0]~input_o\ & (((\U_VGA|Add5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \U_VGA|Add4~8_combout\,
	datac => \U_VGA|Add5~8_combout\,
	datad => \U_VGA|Add4~60_combout\,
	combout => \U_VGA|y_pos_p1~7_combout\);

-- Location: FF_X7_Y26_N31
\U_VGA|y_pos_p1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|y_pos_p1~7_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	ena => \U_VGA|y_pos_p1[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(5));

-- Location: LCCOMB_X8_Y26_N12
\U_VGA|Add5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~10_combout\ = (\U_VGA|y_pos_p1\(6) & ((\U_VGA|Add5~9\) # (GND))) # (!\U_VGA|y_pos_p1\(6) & (!\U_VGA|Add5~9\))
-- \U_VGA|Add5~11\ = CARRY((\U_VGA|y_pos_p1\(6)) # (!\U_VGA|Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(6),
	datad => VCC,
	cin => \U_VGA|Add5~9\,
	combout => \U_VGA|Add5~10_combout\,
	cout => \U_VGA|Add5~11\);

-- Location: LCCOMB_X6_Y26_N12
\U_VGA|Add4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add4~10_combout\ = (\U_VGA|y_pos_p1\(6) & (!\U_VGA|Add4~9\)) # (!\U_VGA|y_pos_p1\(6) & (\U_VGA|Add4~9\ & VCC))
-- \U_VGA|Add4~11\ = CARRY((\U_VGA|y_pos_p1\(6) & !\U_VGA|Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(6),
	datad => VCC,
	cin => \U_VGA|Add4~9\,
	combout => \U_VGA|Add4~10_combout\,
	cout => \U_VGA|Add4~11\);

-- Location: LCCOMB_X7_Y26_N28
\U_VGA|y_pos_p1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~6_combout\ = (\button_n[0]~input_o\ & ((\U_VGA|paddle1_move~0_combout\ & ((!\U_VGA|Add4~10_combout\))) # (!\U_VGA|paddle1_move~0_combout\ & (!\U_VGA|Add5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datab => \U_VGA|Add5~10_combout\,
	datac => \U_VGA|paddle1_move~0_combout\,
	datad => \U_VGA|Add4~10_combout\,
	combout => \U_VGA|y_pos_p1~6_combout\);

-- Location: FF_X7_Y26_N29
\U_VGA|y_pos_p1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|y_pos_p1~6_combout\,
	ena => \U_VGA|y_pos_p1[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(6));

-- Location: LCCOMB_X8_Y26_N14
\U_VGA|Add5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add5~12_combout\ = (\U_VGA|y_pos_p1\(7) & (!\U_VGA|Add5~11\ & VCC)) # (!\U_VGA|y_pos_p1\(7) & (\U_VGA|Add5~11\ $ (GND)))
-- \U_VGA|Add5~13\ = CARRY((!\U_VGA|y_pos_p1\(7) & !\U_VGA|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(7),
	datad => VCC,
	cin => \U_VGA|Add5~11\,
	combout => \U_VGA|Add5~12_combout\,
	cout => \U_VGA|Add5~13\);

-- Location: LCCOMB_X6_Y26_N14
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

-- Location: LCCOMB_X7_Y26_N2
\U_VGA|y_pos_p1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~5_combout\ = (\button_n[0]~input_o\ & ((\U_VGA|paddle1_move~0_combout\ & ((!\U_VGA|Add4~12_combout\))) # (!\U_VGA|paddle1_move~0_combout\ & (!\U_VGA|Add5~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n[0]~input_o\,
	datab => \U_VGA|Add5~12_combout\,
	datac => \U_VGA|paddle1_move~0_combout\,
	datad => \U_VGA|Add4~12_combout\,
	combout => \U_VGA|y_pos_p1~5_combout\);

-- Location: FF_X7_Y26_N3
\U_VGA|y_pos_p1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|y_pos_p1~5_combout\,
	ena => \U_VGA|y_pos_p1[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(7));

-- Location: LCCOMB_X6_Y26_N16
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

-- Location: LCCOMB_X7_Y26_N20
\U_VGA|y_pos_p1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~4_combout\ = (\switch[0]~input_o\ & ((\U_VGA|Add4~60_combout\ & (\U_VGA|Add5~14_combout\)) # (!\U_VGA|Add4~60_combout\ & ((\U_VGA|Add4~14_combout\))))) # (!\switch[0]~input_o\ & (\U_VGA|Add5~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \U_VGA|Add5~14_combout\,
	datac => \U_VGA|Add4~14_combout\,
	datad => \U_VGA|Add4~60_combout\,
	combout => \U_VGA|y_pos_p1~4_combout\);

-- Location: FF_X7_Y26_N21
\U_VGA|y_pos_p1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|y_pos_p1~4_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	ena => \U_VGA|y_pos_p1[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(8));

-- Location: LCCOMB_X6_Y26_N0
\U_VGA|y_pos_p1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|y_pos_p1~0_combout\ = (\switch[0]~input_o\ & ((\U_VGA|Add4~60_combout\ & ((\U_VGA|Add5~16_combout\))) # (!\U_VGA|Add4~60_combout\ & (\U_VGA|Add4~16_combout\)))) # (!\switch[0]~input_o\ & (((\U_VGA|Add5~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \U_VGA|Add4~16_combout\,
	datac => \U_VGA|Add4~60_combout\,
	datad => \U_VGA|Add5~16_combout\,
	combout => \U_VGA|y_pos_p1~0_combout\);

-- Location: FF_X6_Y26_N1
\U_VGA|y_pos_p1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VGA|clk_div|temp_clk~clkctrl_outclk\,
	d => \U_VGA|y_pos_p1~0_combout\,
	sclr => \ALT_INV_button_n[0]~input_o\,
	ena => \U_VGA|y_pos_p1[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|y_pos_p1\(9));

-- Location: LCCOMB_X3_Y26_N8
\U_VGA|LessThan12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan12~1_cout\ = CARRY((!\U_VGA|sync|v_counter\(1) & \U_VGA|y_pos_p1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(1),
	datab => \U_VGA|y_pos_p1\(1),
	datad => VCC,
	cout => \U_VGA|LessThan12~1_cout\);

-- Location: LCCOMB_X3_Y26_N10
\U_VGA|LessThan12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan12~3_cout\ = CARRY((\U_VGA|y_pos_p1\(2) & (\U_VGA|sync|v_counter\(2) & !\U_VGA|LessThan12~1_cout\)) # (!\U_VGA|y_pos_p1\(2) & ((\U_VGA|sync|v_counter\(2)) # (!\U_VGA|LessThan12~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(2),
	datab => \U_VGA|sync|v_counter\(2),
	datad => VCC,
	cin => \U_VGA|LessThan12~1_cout\,
	cout => \U_VGA|LessThan12~3_cout\);

-- Location: LCCOMB_X3_Y26_N12
\U_VGA|LessThan12~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan12~5_cout\ = CARRY((\U_VGA|sync|v_counter\(3) & (!\U_VGA|y_pos_p1\(3) & !\U_VGA|LessThan12~3_cout\)) # (!\U_VGA|sync|v_counter\(3) & ((!\U_VGA|LessThan12~3_cout\) # (!\U_VGA|y_pos_p1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(3),
	datab => \U_VGA|y_pos_p1\(3),
	datad => VCC,
	cin => \U_VGA|LessThan12~3_cout\,
	cout => \U_VGA|LessThan12~5_cout\);

-- Location: LCCOMB_X3_Y26_N14
\U_VGA|LessThan12~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan12~7_cout\ = CARRY((\U_VGA|sync|v_counter\(4) & ((!\U_VGA|LessThan12~5_cout\) # (!\U_VGA|y_pos_p1\(4)))) # (!\U_VGA|sync|v_counter\(4) & (!\U_VGA|y_pos_p1\(4) & !\U_VGA|LessThan12~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(4),
	datab => \U_VGA|y_pos_p1\(4),
	datad => VCC,
	cin => \U_VGA|LessThan12~5_cout\,
	cout => \U_VGA|LessThan12~7_cout\);

-- Location: LCCOMB_X3_Y26_N16
\U_VGA|LessThan12~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan12~9_cout\ = CARRY((\U_VGA|sync|v_counter\(5) & (\U_VGA|y_pos_p1\(5) & !\U_VGA|LessThan12~7_cout\)) # (!\U_VGA|sync|v_counter\(5) & ((\U_VGA|y_pos_p1\(5)) # (!\U_VGA|LessThan12~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(5),
	datab => \U_VGA|y_pos_p1\(5),
	datad => VCC,
	cin => \U_VGA|LessThan12~7_cout\,
	cout => \U_VGA|LessThan12~9_cout\);

-- Location: LCCOMB_X3_Y26_N18
\U_VGA|LessThan12~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan12~11_cout\ = CARRY((\U_VGA|y_pos_p1\(6) & ((\U_VGA|sync|v_counter\(6)) # (!\U_VGA|LessThan12~9_cout\))) # (!\U_VGA|y_pos_p1\(6) & (\U_VGA|sync|v_counter\(6) & !\U_VGA|LessThan12~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(6),
	datab => \U_VGA|sync|v_counter\(6),
	datad => VCC,
	cin => \U_VGA|LessThan12~9_cout\,
	cout => \U_VGA|LessThan12~11_cout\);

-- Location: LCCOMB_X3_Y26_N20
\U_VGA|LessThan12~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan12~13_cout\ = CARRY((\U_VGA|y_pos_p1\(7) & (!\U_VGA|sync|v_counter\(7) & !\U_VGA|LessThan12~11_cout\)) # (!\U_VGA|y_pos_p1\(7) & ((!\U_VGA|LessThan12~11_cout\) # (!\U_VGA|sync|v_counter\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(7),
	datab => \U_VGA|sync|v_counter\(7),
	datad => VCC,
	cin => \U_VGA|LessThan12~11_cout\,
	cout => \U_VGA|LessThan12~13_cout\);

-- Location: LCCOMB_X3_Y26_N22
\U_VGA|LessThan12~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan12~15_cout\ = CARRY((\U_VGA|sync|v_counter\(8) & ((!\U_VGA|LessThan12~13_cout\) # (!\U_VGA|y_pos_p1\(8)))) # (!\U_VGA|sync|v_counter\(8) & (!\U_VGA|y_pos_p1\(8) & !\U_VGA|LessThan12~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(8),
	datab => \U_VGA|y_pos_p1\(8),
	datad => VCC,
	cin => \U_VGA|LessThan12~13_cout\,
	cout => \U_VGA|LessThan12~15_cout\);

-- Location: LCCOMB_X3_Y26_N24
\U_VGA|LessThan12~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan12~16_combout\ = (\U_VGA|sync|v_counter\(9) & (!\U_VGA|LessThan12~15_cout\ & \U_VGA|y_pos_p1\(9))) # (!\U_VGA|sync|v_counter\(9) & ((\U_VGA|y_pos_p1\(9)) # (!\U_VGA|LessThan12~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|sync|v_counter\(9),
	datad => \U_VGA|y_pos_p1\(9),
	cin => \U_VGA|LessThan12~15_cout\,
	combout => \U_VGA|LessThan12~16_combout\);

-- Location: LCCOMB_X3_Y23_N28
\U_VGA|red~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|red~2_combout\ = ((!\U_VGA|sync|h_counter\(2) & ((!\U_VGA|sync|h_counter\(1)) # (!\U_VGA|sync|h_counter\(0))))) # (!\U_VGA|sync|h_counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(2),
	datab => \U_VGA|sync|h_counter\(0),
	datac => \U_VGA|sync|h_counter\(1),
	datad => \U_VGA|sync|h_counter\(3),
	combout => \U_VGA|red~2_combout\);

-- Location: LCCOMB_X2_Y23_N18
\U_VGA|red~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|red~3_combout\ = (!\U_VGA|sync|h_counter\(6) & (!\U_VGA|sync|h_counter\(7) & (!\U_VGA|sync|h_counter\(5) & \U_VGA|red~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(6),
	datab => \U_VGA|sync|h_counter\(7),
	datac => \U_VGA|sync|h_counter\(5),
	datad => \U_VGA|red~2_combout\,
	combout => \U_VGA|red~3_combout\);

-- Location: LCCOMB_X2_Y23_N28
\U_VGA|red~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|red~4_combout\ = (!\U_VGA|sync|h_counter\(9) & (!\U_VGA|sync|h_counter\(8) & (!\U_VGA|sync|h_counter\(4) & \U_VGA|red~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(9),
	datab => \U_VGA|sync|h_counter\(8),
	datac => \U_VGA|sync|h_counter\(4),
	datad => \U_VGA|red~3_combout\,
	combout => \U_VGA|red~4_combout\);

-- Location: LCCOMB_X7_Y26_N4
\U_VGA|Add9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add9~0_combout\ = (\U_VGA|y_pos_p1\(2) & (\U_VGA|y_pos_p1\(1) $ (VCC))) # (!\U_VGA|y_pos_p1\(2) & (\U_VGA|y_pos_p1\(1) & VCC))
-- \U_VGA|Add9~1\ = CARRY((\U_VGA|y_pos_p1\(2) & \U_VGA|y_pos_p1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(2),
	datab => \U_VGA|y_pos_p1\(1),
	datad => VCC,
	combout => \U_VGA|Add9~0_combout\,
	cout => \U_VGA|Add9~1\);

-- Location: LCCOMB_X7_Y26_N6
\U_VGA|Add9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add9~2_combout\ = (\U_VGA|y_pos_p1\(3) & ((\U_VGA|Add9~1\) # (GND))) # (!\U_VGA|y_pos_p1\(3) & (!\U_VGA|Add9~1\))
-- \U_VGA|Add9~3\ = CARRY((\U_VGA|y_pos_p1\(3)) # (!\U_VGA|Add9~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(3),
	datad => VCC,
	cin => \U_VGA|Add9~1\,
	combout => \U_VGA|Add9~2_combout\,
	cout => \U_VGA|Add9~3\);

-- Location: LCCOMB_X7_Y26_N8
\U_VGA|Add9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add9~4_combout\ = (\U_VGA|y_pos_p1\(4) & ((GND) # (!\U_VGA|Add9~3\))) # (!\U_VGA|y_pos_p1\(4) & (\U_VGA|Add9~3\ $ (GND)))
-- \U_VGA|Add9~5\ = CARRY((\U_VGA|y_pos_p1\(4)) # (!\U_VGA|Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(4),
	datad => VCC,
	cin => \U_VGA|Add9~3\,
	combout => \U_VGA|Add9~4_combout\,
	cout => \U_VGA|Add9~5\);

-- Location: LCCOMB_X7_Y26_N10
\U_VGA|Add9~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add9~6_combout\ = (\U_VGA|y_pos_p1\(5) & (\U_VGA|Add9~5\ & VCC)) # (!\U_VGA|y_pos_p1\(5) & (!\U_VGA|Add9~5\))
-- \U_VGA|Add9~7\ = CARRY((!\U_VGA|y_pos_p1\(5) & !\U_VGA|Add9~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(5),
	datad => VCC,
	cin => \U_VGA|Add9~5\,
	combout => \U_VGA|Add9~6_combout\,
	cout => \U_VGA|Add9~7\);

-- Location: LCCOMB_X7_Y26_N12
\U_VGA|Add9~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add9~8_combout\ = (\U_VGA|y_pos_p1\(6) & (!\U_VGA|Add9~7\ & VCC)) # (!\U_VGA|y_pos_p1\(6) & (\U_VGA|Add9~7\ $ (GND)))
-- \U_VGA|Add9~9\ = CARRY((!\U_VGA|y_pos_p1\(6) & !\U_VGA|Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(6),
	datad => VCC,
	cin => \U_VGA|Add9~7\,
	combout => \U_VGA|Add9~8_combout\,
	cout => \U_VGA|Add9~9\);

-- Location: LCCOMB_X7_Y26_N14
\U_VGA|Add9~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add9~10_combout\ = (\U_VGA|y_pos_p1\(7) & ((\U_VGA|Add9~9\) # (GND))) # (!\U_VGA|y_pos_p1\(7) & (!\U_VGA|Add9~9\))
-- \U_VGA|Add9~11\ = CARRY((\U_VGA|y_pos_p1\(7)) # (!\U_VGA|Add9~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(7),
	datad => VCC,
	cin => \U_VGA|Add9~9\,
	combout => \U_VGA|Add9~10_combout\,
	cout => \U_VGA|Add9~11\);

-- Location: LCCOMB_X7_Y26_N16
\U_VGA|Add9~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add9~12_combout\ = (\U_VGA|y_pos_p1\(8) & (\U_VGA|Add9~11\ $ (GND))) # (!\U_VGA|y_pos_p1\(8) & (!\U_VGA|Add9~11\ & VCC))
-- \U_VGA|Add9~13\ = CARRY((\U_VGA|y_pos_p1\(8) & !\U_VGA|Add9~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|y_pos_p1\(8),
	datad => VCC,
	cin => \U_VGA|Add9~11\,
	combout => \U_VGA|Add9~12_combout\,
	cout => \U_VGA|Add9~13\);

-- Location: LCCOMB_X7_Y26_N18
\U_VGA|Add9~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|Add9~14_combout\ = \U_VGA|Add9~13\ $ (\U_VGA|y_pos_p1\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_VGA|y_pos_p1\(9),
	cin => \U_VGA|Add9~13\,
	combout => \U_VGA|Add9~14_combout\);

-- Location: LCCOMB_X4_Y26_N12
\U_VGA|LessThan13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan13~1_cout\ = CARRY(\U_VGA|sync|v_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VGA|sync|v_counter\(0),
	datad => VCC,
	cout => \U_VGA|LessThan13~1_cout\);

-- Location: LCCOMB_X4_Y26_N14
\U_VGA|LessThan13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan13~3_cout\ = CARRY((\U_VGA|y_pos_p1\(1) & (!\U_VGA|sync|v_counter\(1) & !\U_VGA|LessThan13~1_cout\)) # (!\U_VGA|y_pos_p1\(1) & ((!\U_VGA|LessThan13~1_cout\) # (!\U_VGA|sync|v_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|y_pos_p1\(1),
	datab => \U_VGA|sync|v_counter\(1),
	datad => VCC,
	cin => \U_VGA|LessThan13~1_cout\,
	cout => \U_VGA|LessThan13~3_cout\);

-- Location: LCCOMB_X4_Y26_N16
\U_VGA|LessThan13~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan13~5_cout\ = CARRY((\U_VGA|sync|v_counter\(2) & ((!\U_VGA|LessThan13~3_cout\) # (!\U_VGA|Add9~0_combout\))) # (!\U_VGA|sync|v_counter\(2) & (!\U_VGA|Add9~0_combout\ & !\U_VGA|LessThan13~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(2),
	datab => \U_VGA|Add9~0_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan13~3_cout\,
	cout => \U_VGA|LessThan13~5_cout\);

-- Location: LCCOMB_X4_Y26_N18
\U_VGA|LessThan13~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan13~7_cout\ = CARRY((\U_VGA|Add9~2_combout\ & ((!\U_VGA|LessThan13~5_cout\) # (!\U_VGA|sync|v_counter\(3)))) # (!\U_VGA|Add9~2_combout\ & (!\U_VGA|sync|v_counter\(3) & !\U_VGA|LessThan13~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add9~2_combout\,
	datab => \U_VGA|sync|v_counter\(3),
	datad => VCC,
	cin => \U_VGA|LessThan13~5_cout\,
	cout => \U_VGA|LessThan13~7_cout\);

-- Location: LCCOMB_X4_Y26_N20
\U_VGA|LessThan13~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan13~9_cout\ = CARRY((\U_VGA|sync|v_counter\(4) & ((!\U_VGA|LessThan13~7_cout\) # (!\U_VGA|Add9~4_combout\))) # (!\U_VGA|sync|v_counter\(4) & (!\U_VGA|Add9~4_combout\ & !\U_VGA|LessThan13~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(4),
	datab => \U_VGA|Add9~4_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan13~7_cout\,
	cout => \U_VGA|LessThan13~9_cout\);

-- Location: LCCOMB_X4_Y26_N22
\U_VGA|LessThan13~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan13~11_cout\ = CARRY((\U_VGA|sync|v_counter\(5) & (\U_VGA|Add9~6_combout\ & !\U_VGA|LessThan13~9_cout\)) # (!\U_VGA|sync|v_counter\(5) & ((\U_VGA|Add9~6_combout\) # (!\U_VGA|LessThan13~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(5),
	datab => \U_VGA|Add9~6_combout\,
	datad => VCC,
	cin => \U_VGA|LessThan13~9_cout\,
	cout => \U_VGA|LessThan13~11_cout\);

-- Location: LCCOMB_X4_Y26_N24
\U_VGA|LessThan13~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan13~13_cout\ = CARRY((\U_VGA|Add9~8_combout\ & (\U_VGA|sync|v_counter\(6) & !\U_VGA|LessThan13~11_cout\)) # (!\U_VGA|Add9~8_combout\ & ((\U_VGA|sync|v_counter\(6)) # (!\U_VGA|LessThan13~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add9~8_combout\,
	datab => \U_VGA|sync|v_counter\(6),
	datad => VCC,
	cin => \U_VGA|LessThan13~11_cout\,
	cout => \U_VGA|LessThan13~13_cout\);

-- Location: LCCOMB_X4_Y26_N26
\U_VGA|LessThan13~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan13~15_cout\ = CARRY((\U_VGA|Add9~10_combout\ & ((!\U_VGA|LessThan13~13_cout\) # (!\U_VGA|sync|v_counter\(7)))) # (!\U_VGA|Add9~10_combout\ & (!\U_VGA|sync|v_counter\(7) & !\U_VGA|LessThan13~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add9~10_combout\,
	datab => \U_VGA|sync|v_counter\(7),
	datad => VCC,
	cin => \U_VGA|LessThan13~13_cout\,
	cout => \U_VGA|LessThan13~15_cout\);

-- Location: LCCOMB_X4_Y26_N28
\U_VGA|LessThan13~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan13~17_cout\ = CARRY((\U_VGA|Add9~12_combout\ & (\U_VGA|sync|v_counter\(8) & !\U_VGA|LessThan13~15_cout\)) # (!\U_VGA|Add9~12_combout\ & ((\U_VGA|sync|v_counter\(8)) # (!\U_VGA|LessThan13~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|Add9~12_combout\,
	datab => \U_VGA|sync|v_counter\(8),
	datad => VCC,
	cin => \U_VGA|LessThan13~15_cout\,
	cout => \U_VGA|LessThan13~17_cout\);

-- Location: LCCOMB_X4_Y26_N30
\U_VGA|LessThan13~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|LessThan13~18_combout\ = (\U_VGA|sync|v_counter\(9) & ((\U_VGA|LessThan13~17_cout\) # (!\U_VGA|Add9~14_combout\))) # (!\U_VGA|sync|v_counter\(9) & (\U_VGA|LessThan13~17_cout\ & !\U_VGA|Add9~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(9),
	datad => \U_VGA|Add9~14_combout\,
	cin => \U_VGA|LessThan13~17_cout\,
	combout => \U_VGA|LessThan13~18_combout\);

-- Location: LCCOMB_X4_Y22_N12
\U_VGA|red~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|red~5_combout\ = (!\U_VGA|LessThan12~16_combout\ & (\U_VGA|sync|LessThan5~2_combout\ & (\U_VGA|red~4_combout\ & !\U_VGA|LessThan13~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|LessThan12~16_combout\,
	datab => \U_VGA|sync|LessThan5~2_combout\,
	datac => \U_VGA|red~4_combout\,
	datad => \U_VGA|LessThan13~18_combout\,
	combout => \U_VGA|red~5_combout\);

-- Location: LCCOMB_X4_Y22_N2
\U_VGA|red~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|red~6_combout\ = (\U_VGA|draw~1_combout\ & ((\U_VGA|red~1_combout\) # ((\U_VGA|draw~5_combout\) # (\U_VGA|red~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|red~1_combout\,
	datab => \U_VGA|draw~1_combout\,
	datac => \U_VGA|draw~5_combout\,
	datad => \U_VGA|red~5_combout\,
	combout => \U_VGA|red~6_combout\);

-- Location: LCCOMB_X4_Y22_N0
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

-- Location: FF_X4_Y22_N1
\U_VGA|red[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|red[0]~feeder_combout\,
	ena => \button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|red\(0));

-- Location: LCCOMB_X4_Y22_N6
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

-- Location: FF_X4_Y22_N7
\U_VGA|red[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|red[1]~feeder_combout\,
	ena => \button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|red\(1));

-- Location: LCCOMB_X4_Y22_N16
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

-- Location: FF_X4_Y22_N17
\U_VGA|red[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|red[2]~feeder_combout\,
	ena => \button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|red\(2));

-- Location: LCCOMB_X4_Y22_N20
\U_VGA|red~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|red~7_combout\ = (\U_VGA|draw~1_combout\ & (!\U_VGA|draw~5_combout\ & ((\U_VGA|red~1_combout\) # (\U_VGA|red~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|red~1_combout\,
	datab => \U_VGA|draw~1_combout\,
	datac => \U_VGA|draw~5_combout\,
	datad => \U_VGA|red~5_combout\,
	combout => \U_VGA|red~7_combout\);

-- Location: LCCOMB_X4_Y22_N10
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

-- Location: FF_X4_Y22_N11
\U_VGA|red[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|red[3]~feeder_combout\,
	ena => \button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|red\(3));

-- Location: LCCOMB_X4_Y22_N8
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

-- Location: FF_X4_Y22_N9
\U_VGA|green[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|green[0]~feeder_combout\,
	ena => \button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|green\(0));

-- Location: LCCOMB_X4_Y22_N30
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

-- Location: FF_X4_Y22_N31
\U_VGA|green[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|green[1]~feeder_combout\,
	ena => \button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|green\(1));

-- Location: LCCOMB_X4_Y22_N24
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

-- Location: FF_X4_Y22_N25
\U_VGA|green[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|green[2]~feeder_combout\,
	ena => \button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|green\(2));

-- Location: LCCOMB_X4_Y22_N18
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

-- Location: FF_X4_Y22_N19
\U_VGA|green[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|green[3]~feeder_combout\,
	ena => \button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|green\(3));

-- Location: LCCOMB_X4_Y22_N28
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

-- Location: FF_X4_Y22_N29
\U_VGA|blue[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|blue[0]~feeder_combout\,
	ena => \button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|blue\(0));

-- Location: LCCOMB_X4_Y22_N22
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

-- Location: FF_X4_Y22_N23
\U_VGA|blue[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|blue[1]~feeder_combout\,
	ena => \button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|blue\(1));

-- Location: FF_X4_Y22_N21
\U_VGA|blue[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|red~7_combout\,
	ena => \button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|blue\(2));

-- Location: FF_X4_Y22_N3
\U_VGA|blue[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|temp_clk~clkctrl_outclk\,
	d => \U_VGA|red~6_combout\,
	ena => \button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGA|blue\(3));

-- Location: LCCOMB_X2_Y23_N12
\U_VGA|sync|h_sync~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|h_sync~4_combout\ = ((\U_VGA|sync|h_counter\(8)) # (!\U_VGA|sync|h_counter\(7))) # (!\U_VGA|sync|h_counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(9),
	datab => \U_VGA|sync|h_counter\(7),
	datad => \U_VGA|sync|h_counter\(8),
	combout => \U_VGA|sync|h_sync~4_combout\);

-- Location: LCCOMB_X2_Y23_N0
\U_VGA|sync|h_sync~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|h_sync~2_combout\ = (!\U_VGA|sync|h_counter\(3) & (!\U_VGA|sync|h_counter\(2) & ((!\U_VGA|sync|h_counter\(1)) # (!\U_VGA|sync|h_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(0),
	datab => \U_VGA|sync|h_counter\(3),
	datac => \U_VGA|sync|h_counter\(1),
	datad => \U_VGA|sync|h_counter\(2),
	combout => \U_VGA|sync|h_sync~2_combout\);

-- Location: LCCOMB_X2_Y23_N2
\U_VGA|sync|h_sync~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|h_sync~3_combout\ = (!\U_VGA|sync|h_counter\(6) & (!\U_VGA|sync|h_counter\(5) & ((\U_VGA|sync|h_sync~2_combout\) # (!\U_VGA|sync|h_counter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_counter\(6),
	datab => \U_VGA|sync|h_counter\(4),
	datac => \U_VGA|sync|h_counter\(5),
	datad => \U_VGA|sync|h_sync~2_combout\,
	combout => \U_VGA|sync|h_sync~3_combout\);

-- Location: LCCOMB_X2_Y23_N6
\U_VGA|sync|h_sync~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|h_sync~5_combout\ = (\U_VGA|sync|h_sync~4_combout\) # ((\U_VGA|sync|h_sync~3_combout\) # (\U_VGA|sync|h_sync~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|h_sync~4_combout\,
	datab => \U_VGA|sync|h_sync~3_combout\,
	datad => \U_VGA|sync|h_sync~1_combout\,
	combout => \U_VGA|sync|h_sync~5_combout\);

-- Location: LCCOMB_X4_Y26_N4
\U_VGA|draw~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|draw~0_combout\ = (!\U_VGA|sync|v_counter\(4) & \U_VGA|sync|v_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VGA|sync|v_counter\(4),
	datad => \U_VGA|sync|v_counter\(5),
	combout => \U_VGA|draw~0_combout\);

-- Location: LCCOMB_X3_Y26_N4
\U_VGA|sync|v_sync~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|v_sync~0_combout\ = ((\U_VGA|sync|v_counter\(1) $ (!\U_VGA|sync|v_counter\(0))) # (!\U_VGA|sync|v_counter\(2))) # (!\U_VGA|sync|v_counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(3),
	datab => \U_VGA|sync|v_counter\(2),
	datac => \U_VGA|sync|v_counter\(1),
	datad => \U_VGA|sync|v_counter\(0),
	combout => \U_VGA|sync|v_sync~0_combout\);

-- Location: LCCOMB_X4_Y26_N10
\U_VGA|sync|v_sync~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VGA|sync|v_sync~1_combout\ = (\U_VGA|sync|v_counter\(9)) # (((\U_VGA|sync|v_sync~0_combout\) # (!\U_VGA|sync|LessThan5~0_combout\)) # (!\U_VGA|draw~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGA|sync|v_counter\(9),
	datab => \U_VGA|draw~0_combout\,
	datac => \U_VGA|sync|v_sync~0_combout\,
	datad => \U_VGA|sync|LessThan5~0_combout\,
	combout => \U_VGA|sync|v_sync~1_combout\);

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

-- Location: IOIBUF_X0_Y35_N8
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



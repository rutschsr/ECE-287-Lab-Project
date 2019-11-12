-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "11/05/2019 18:03:59"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	vga_with_hw_test_image IS
    PORT (
	pixel_clk : OUT std_logic;
	clk : IN std_logic;
	h_sync : OUT std_logic;
	v_sync : OUT std_logic;
	n_blank : OUT std_logic;
	n_sync : OUT std_logic;
	blue : OUT std_logic_vector(7 DOWNTO 0);
	green : OUT std_logic_vector(7 DOWNTO 0);
	red : OUT std_logic_vector(7 DOWNTO 0)
	);
END vga_with_hw_test_image;

-- Design Ports Information
-- pixel_clk	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- h_sync	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- v_sync	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- n_blank	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- n_sync	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- blue[7]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- blue[6]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- blue[5]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- blue[4]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- blue[3]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- blue[2]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- blue[1]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- blue[0]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- green[7]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- green[6]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- green[5]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- green[4]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- green[3]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- green[2]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- green[1]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- green[0]	=>  Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- red[7]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- red[6]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- red[5]	=>  Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- red[4]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- red[3]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- red[2]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- red[1]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- red[0]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF vga_with_hw_test_image IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pixel_clk : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_h_sync : std_logic;
SIGNAL ww_v_sync : std_logic;
SIGNAL ww_n_blank : std_logic;
SIGNAL ww_n_sync : std_logic;
SIGNAL ww_blue : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_green : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_red : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_nCEO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~obuf_o\ : std_logic;
SIGNAL \~ALTERA_nCEO~~obuf_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst5|h_count[7]~feeder_combout\ : std_logic;
SIGNAL \inst5|Add0~15\ : std_logic;
SIGNAL \inst5|Add0~16_combout\ : std_logic;
SIGNAL \inst5|h_count~1_combout\ : std_logic;
SIGNAL \inst5|Add0~17\ : std_logic;
SIGNAL \inst5|Add0~18_combout\ : std_logic;
SIGNAL \inst5|h_count~0_combout\ : std_logic;
SIGNAL \inst5|Add0~19\ : std_logic;
SIGNAL \inst5|Add0~20_combout\ : std_logic;
SIGNAL \inst5|h_count~3_combout\ : std_logic;
SIGNAL \inst5|Add0~0_combout\ : std_logic;
SIGNAL \inst5|h_count~8_combout\ : std_logic;
SIGNAL \inst5|Add0~1\ : std_logic;
SIGNAL \inst5|Add0~2_combout\ : std_logic;
SIGNAL \inst5|h_count~9_combout\ : std_logic;
SIGNAL \inst5|Add0~3\ : std_logic;
SIGNAL \inst5|Add0~4_combout\ : std_logic;
SIGNAL \inst5|h_count~10_combout\ : std_logic;
SIGNAL \inst5|LessThan0~0_combout\ : std_logic;
SIGNAL \inst5|LessThan0~1_combout\ : std_logic;
SIGNAL \inst5|LessThan0~2_combout\ : std_logic;
SIGNAL \inst5|LessThan0~3_combout\ : std_logic;
SIGNAL \inst5|Add0~5\ : std_logic;
SIGNAL \inst5|Add0~6_combout\ : std_logic;
SIGNAL \inst5|h_count~7_combout\ : std_logic;
SIGNAL \inst5|Add0~7\ : std_logic;
SIGNAL \inst5|Add0~8_combout\ : std_logic;
SIGNAL \inst5|h_count~6_combout\ : std_logic;
SIGNAL \inst5|Add0~9\ : std_logic;
SIGNAL \inst5|Add0~10_combout\ : std_logic;
SIGNAL \inst5|h_count~5_combout\ : std_logic;
SIGNAL \inst5|Add0~11\ : std_logic;
SIGNAL \inst5|Add0~12_combout\ : std_logic;
SIGNAL \inst5|h_count~4_combout\ : std_logic;
SIGNAL \inst5|Add0~13\ : std_logic;
SIGNAL \inst5|Add0~14_combout\ : std_logic;
SIGNAL \inst5|h_count~2_combout\ : std_logic;
SIGNAL \inst5|process_0~16_combout\ : std_logic;
SIGNAL \inst5|process_0~10_combout\ : std_logic;
SIGNAL \inst5|process_0~11_combout\ : std_logic;
SIGNAL \inst5|h_sync~q\ : std_logic;
SIGNAL \inst5|Add1~0_combout\ : std_logic;
SIGNAL \inst5|Add1~27_combout\ : std_logic;
SIGNAL \inst5|Add1~1\ : std_logic;
SIGNAL \inst5|Add1~2_combout\ : std_logic;
SIGNAL \inst5|Add1~28_combout\ : std_logic;
SIGNAL \inst5|Add1~3\ : std_logic;
SIGNAL \inst5|Add1~4_combout\ : std_logic;
SIGNAL \inst5|Add1~29_combout\ : std_logic;
SIGNAL \inst5|Add1~5\ : std_logic;
SIGNAL \inst5|Add1~6_combout\ : std_logic;
SIGNAL \inst5|Add1~26_combout\ : std_logic;
SIGNAL \inst5|Add1~7\ : std_logic;
SIGNAL \inst5|Add1~8_combout\ : std_logic;
SIGNAL \inst5|Add1~24_combout\ : std_logic;
SIGNAL \inst5|Add1~9\ : std_logic;
SIGNAL \inst5|Add1~10_combout\ : std_logic;
SIGNAL \inst5|Add1~25_combout\ : std_logic;
SIGNAL \inst5|Add1~11\ : std_logic;
SIGNAL \inst5|Add1~12_combout\ : std_logic;
SIGNAL \inst5|Add1~23_combout\ : std_logic;
SIGNAL \inst5|v_count[6]~feeder_combout\ : std_logic;
SIGNAL \inst5|Add1~13\ : std_logic;
SIGNAL \inst5|Add1~14_combout\ : std_logic;
SIGNAL \inst5|Add1~16_combout\ : std_logic;
SIGNAL \inst5|v_count[7]~feeder_combout\ : std_logic;
SIGNAL \inst5|Add1~15\ : std_logic;
SIGNAL \inst5|Add1~17_combout\ : std_logic;
SIGNAL \inst5|Add1~19_combout\ : std_logic;
SIGNAL \inst5|v_count[8]~feeder_combout\ : std_logic;
SIGNAL \inst5|LessThan1~0_combout\ : std_logic;
SIGNAL \inst5|LessThan1~1_combout\ : std_logic;
SIGNAL \inst5|LessThan1~2_combout\ : std_logic;
SIGNAL \inst5|Add1~18\ : std_logic;
SIGNAL \inst5|Add1~20_combout\ : std_logic;
SIGNAL \inst5|Add1~22_combout\ : std_logic;
SIGNAL \inst5|process_0~12_combout\ : std_logic;
SIGNAL \inst5|process_0~13_combout\ : std_logic;
SIGNAL \inst5|process_0~14_combout\ : std_logic;
SIGNAL \inst5|v_sync~q\ : std_logic;
SIGNAL \inst5|LessThan7~0_combout\ : std_logic;
SIGNAL \inst5|LessThan7~1_combout\ : std_logic;
SIGNAL \inst5|row[5]~feeder_combout\ : std_logic;
SIGNAL \inst|LessThan5~0_combout\ : std_logic;
SIGNAL \inst5|row[9]~feeder_combout\ : std_logic;
SIGNAL \inst5|row[8]~feeder_combout\ : std_logic;
SIGNAL \inst|LessThan5~1_combout\ : std_logic;
SIGNAL \inst5|column[31]~feeder_combout\ : std_logic;
SIGNAL \inst5|row[31]~feeder_combout\ : std_logic;
SIGNAL \inst|process_0~0_combout\ : std_logic;
SIGNAL \inst5|row[0]~0_combout\ : std_logic;
SIGNAL \inst5|row[1]~feeder_combout\ : std_logic;
SIGNAL \inst|LessThan3~0_combout\ : std_logic;
SIGNAL \inst|LessThan3~1_combout\ : std_logic;
SIGNAL \inst|LessThan3~2_combout\ : std_logic;
SIGNAL \inst|process_0~1_combout\ : std_logic;
SIGNAL \inst5|process_0~15_combout\ : std_logic;
SIGNAL \inst5|disp_ena~q\ : std_logic;
SIGNAL \inst5|column[0]~0_combout\ : std_logic;
SIGNAL \inst|process_0~2_combout\ : std_logic;
SIGNAL \inst5|column[5]~feeder_combout\ : std_logic;
SIGNAL \inst|process_0~3_combout\ : std_logic;
SIGNAL \inst|process_0~4_combout\ : std_logic;
SIGNAL \inst|blue[7]~2_combout\ : std_logic;
SIGNAL \inst|green[7]~2_combout\ : std_logic;
SIGNAL \inst|red[7]~3_combout\ : std_logic;
SIGNAL \inst|red[7]~0_combout\ : std_logic;
SIGNAL \inst|red[7]~1_combout\ : std_logic;
SIGNAL \inst|red[7]~2_combout\ : std_logic;
SIGNAL \inst|red[7]~4_combout\ : std_logic;
SIGNAL \inst5|column\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst5|row\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst5|h_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst5|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|ALT_INV_blue[7]~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_h_count~3_combout\ : std_logic;

BEGIN

pixel_clk <= ww_pixel_clk;
ww_clk <= clk;
h_sync <= ww_h_sync;
v_sync <= ww_v_sync;
n_blank <= ww_n_blank;
n_sync <= ww_n_sync;
blue <= ww_blue;
green <= ww_green;
red <= ww_red;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst2|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\inst2|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst2|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst2|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst2|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst2|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst2|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst2|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst2|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst2|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst2|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|altpll_component|auto_generated|wire_pll1_clk\(0));
\inst|ALT_INV_blue[7]~2_combout\ <= NOT \inst|blue[7]~2_combout\;
\inst5|ALT_INV_h_count~3_combout\ <= NOT \inst5|h_count~3_combout\;

-- Location: IOOBUF_X47_Y73_N2
\pixel_clk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_pixel_clk);

-- Location: IOOBUF_X38_Y73_N16
\h_sync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|h_sync~q\,
	devoe => ww_devoe,
	o => ww_h_sync);

-- Location: IOOBUF_X54_Y73_N2
\v_sync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|v_sync~q\,
	devoe => ww_devoe,
	o => ww_v_sync);

-- Location: IOOBUF_X31_Y73_N9
\n_blank~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_n_blank);

-- Location: IOOBUF_X35_Y73_N16
\n_sync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_n_sync);

-- Location: IOOBUF_X52_Y73_N23
\blue[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_blue[7]~2_combout\,
	devoe => ww_devoe,
	o => ww_blue(7));

-- Location: IOOBUF_X23_Y73_N9
\blue[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_blue[7]~2_combout\,
	devoe => ww_devoe,
	o => ww_blue(6));

-- Location: IOOBUF_X52_Y73_N16
\blue[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_blue[7]~2_combout\,
	devoe => ww_devoe,
	o => ww_blue(5));

-- Location: IOOBUF_X42_Y73_N2
\blue[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_blue[7]~2_combout\,
	devoe => ww_devoe,
	o => ww_blue(4));

-- Location: IOOBUF_X42_Y73_N9
\blue[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_blue[7]~2_combout\,
	devoe => ww_devoe,
	o => ww_blue(3));

-- Location: IOOBUF_X23_Y73_N2
\blue[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_blue[7]~2_combout\,
	devoe => ww_devoe,
	o => ww_blue(2));

-- Location: IOOBUF_X38_Y73_N2
\blue[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_blue[7]~2_combout\,
	devoe => ww_devoe,
	o => ww_blue(1));

-- Location: IOOBUF_X38_Y73_N9
\blue[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_blue[7]~2_combout\,
	devoe => ww_devoe,
	o => ww_blue(0));

-- Location: IOOBUF_X23_Y73_N16
\green[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|green[7]~2_combout\,
	devoe => ww_devoe,
	o => ww_green(7));

-- Location: IOOBUF_X20_Y73_N2
\green[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|green[7]~2_combout\,
	devoe => ww_devoe,
	o => ww_green(6));

-- Location: IOOBUF_X16_Y73_N2
\green[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|green[7]~2_combout\,
	devoe => ww_devoe,
	o => ww_green(5));

-- Location: IOOBUF_X16_Y73_N9
\green[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|green[7]~2_combout\,
	devoe => ww_devoe,
	o => ww_green(4));

-- Location: IOOBUF_X25_Y73_N23
\green[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|green[7]~2_combout\,
	devoe => ww_devoe,
	o => ww_green(3));

-- Location: IOOBUF_X11_Y73_N9
\green[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|green[7]~2_combout\,
	devoe => ww_devoe,
	o => ww_green(2));

-- Location: IOOBUF_X25_Y73_N16
\green[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|green[7]~2_combout\,
	devoe => ww_devoe,
	o => ww_green(1));

-- Location: IOOBUF_X11_Y73_N16
\green[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|green[7]~2_combout\,
	devoe => ww_devoe,
	o => ww_green(0));

-- Location: IOOBUF_X20_Y73_N16
\red[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|red[7]~4_combout\,
	devoe => ww_devoe,
	o => ww_red(7));

-- Location: IOOBUF_X11_Y73_N23
\red[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|red[7]~4_combout\,
	devoe => ww_devoe,
	o => ww_red(6));

-- Location: IOOBUF_X40_Y73_N9
\red[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|red[7]~4_combout\,
	devoe => ww_devoe,
	o => ww_red(5));

-- Location: IOOBUF_X20_Y73_N9
\red[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|red[7]~4_combout\,
	devoe => ww_devoe,
	o => ww_red(4));

-- Location: IOOBUF_X33_Y73_N9
\red[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|red[7]~4_combout\,
	devoe => ww_devoe,
	o => ww_red(3));

-- Location: IOOBUF_X35_Y73_N23
\red[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|red[7]~4_combout\,
	devoe => ww_devoe,
	o => ww_red(2));

-- Location: IOOBUF_X31_Y73_N2
\red[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|red[7]~4_combout\,
	devoe => ww_devoe,
	o => ww_red(1));

-- Location: IOOBUF_X33_Y73_N2
\red[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|red[7]~4_combout\,
	devoe => ww_devoe,
	o => ww_red(0));

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: PLL_1
\inst2|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 5,
	c0_initial => 1,
	c0_low => 5,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 10,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 13,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 13,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 192,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => GND,
	fbin => \inst2|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst2|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst2|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst2|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X34_Y71_N18
\inst5|h_count[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|h_count[7]~feeder_combout\ = \inst5|h_count~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|h_count~2_combout\,
	combout => \inst5|h_count[7]~feeder_combout\);

-- Location: FF_X34_Y71_N19
\inst5|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|h_count[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|h_count\(7));

-- Location: LCCOMB_X33_Y71_N22
\inst5|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~14_combout\ = (\inst5|h_count\(7) & (!\inst5|Add0~13\)) # (!\inst5|h_count\(7) & ((\inst5|Add0~13\) # (GND)))
-- \inst5|Add0~15\ = CARRY((!\inst5|Add0~13\) # (!\inst5|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|h_count\(7),
	datad => VCC,
	cin => \inst5|Add0~13\,
	combout => \inst5|Add0~14_combout\,
	cout => \inst5|Add0~15\);

-- Location: LCCOMB_X33_Y71_N24
\inst5|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~16_combout\ = (\inst5|h_count\(8) & (\inst5|Add0~15\ $ (GND))) # (!\inst5|h_count\(8) & (!\inst5|Add0~15\ & VCC))
-- \inst5|Add0~17\ = CARRY((\inst5|h_count\(8) & !\inst5|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|h_count\(8),
	datad => VCC,
	cin => \inst5|Add0~15\,
	combout => \inst5|Add0~16_combout\,
	cout => \inst5|Add0~17\);

-- Location: LCCOMB_X33_Y71_N30
\inst5|h_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|h_count~1_combout\ = (\inst5|Add0~16_combout\ & \inst5|LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add0~16_combout\,
	datac => \inst5|LessThan0~3_combout\,
	combout => \inst5|h_count~1_combout\);

-- Location: FF_X33_Y71_N31
\inst5|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|h_count\(8));

-- Location: LCCOMB_X33_Y71_N26
\inst5|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~18_combout\ = (\inst5|h_count\(9) & (!\inst5|Add0~17\)) # (!\inst5|h_count\(9) & ((\inst5|Add0~17\) # (GND)))
-- \inst5|Add0~19\ = CARRY((!\inst5|Add0~17\) # (!\inst5|h_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|h_count\(9),
	datad => VCC,
	cin => \inst5|Add0~17\,
	combout => \inst5|Add0~18_combout\,
	cout => \inst5|Add0~19\);

-- Location: LCCOMB_X34_Y71_N20
\inst5|h_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|h_count~0_combout\ = (\inst5|LessThan0~3_combout\ & \inst5|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LessThan0~3_combout\,
	datac => \inst5|Add0~18_combout\,
	combout => \inst5|h_count~0_combout\);

-- Location: FF_X34_Y71_N21
\inst5|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|h_count\(9));

-- Location: LCCOMB_X33_Y71_N28
\inst5|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~20_combout\ = \inst5|Add0~19\ $ (!\inst5|h_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst5|h_count\(10),
	cin => \inst5|Add0~19\,
	combout => \inst5|Add0~20_combout\);

-- Location: LCCOMB_X34_Y71_N26
\inst5|h_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|h_count~3_combout\ = (\inst5|Add0~20_combout\ & \inst5|LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add0~20_combout\,
	datac => \inst5|LessThan0~3_combout\,
	combout => \inst5|h_count~3_combout\);

-- Location: FF_X34_Y71_N23
\inst5|h_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst5|h_count~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|h_count\(10));

-- Location: LCCOMB_X33_Y71_N8
\inst5|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~0_combout\ = \inst5|h_count\(0) $ (VCC)
-- \inst5|Add0~1\ = CARRY(\inst5|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|h_count\(0),
	datad => VCC,
	combout => \inst5|Add0~0_combout\,
	cout => \inst5|Add0~1\);

-- Location: LCCOMB_X32_Y71_N16
\inst5|h_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|h_count~8_combout\ = (\inst5|Add0~0_combout\ & \inst5|LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Add0~0_combout\,
	datad => \inst5|LessThan0~3_combout\,
	combout => \inst5|h_count~8_combout\);

-- Location: FF_X32_Y71_N17
\inst5|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|h_count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|h_count\(0));

-- Location: LCCOMB_X33_Y71_N10
\inst5|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~2_combout\ = (\inst5|h_count\(1) & (!\inst5|Add0~1\)) # (!\inst5|h_count\(1) & ((\inst5|Add0~1\) # (GND)))
-- \inst5|Add0~3\ = CARRY((!\inst5|Add0~1\) # (!\inst5|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|h_count\(1),
	datad => VCC,
	cin => \inst5|Add0~1\,
	combout => \inst5|Add0~2_combout\,
	cout => \inst5|Add0~3\);

-- Location: LCCOMB_X32_Y71_N30
\inst5|h_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|h_count~9_combout\ = (\inst5|Add0~2_combout\ & \inst5|LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Add0~2_combout\,
	datad => \inst5|LessThan0~3_combout\,
	combout => \inst5|h_count~9_combout\);

-- Location: FF_X32_Y71_N31
\inst5|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|h_count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|h_count\(1));

-- Location: LCCOMB_X33_Y71_N12
\inst5|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~4_combout\ = (\inst5|h_count\(2) & (\inst5|Add0~3\ $ (GND))) # (!\inst5|h_count\(2) & (!\inst5|Add0~3\ & VCC))
-- \inst5|Add0~5\ = CARRY((\inst5|h_count\(2) & !\inst5|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|h_count\(2),
	datad => VCC,
	cin => \inst5|Add0~3\,
	combout => \inst5|Add0~4_combout\,
	cout => \inst5|Add0~5\);

-- Location: LCCOMB_X33_Y71_N6
\inst5|h_count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|h_count~10_combout\ = (\inst5|LessThan0~3_combout\ & \inst5|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|LessThan0~3_combout\,
	datad => \inst5|Add0~4_combout\,
	combout => \inst5|h_count~10_combout\);

-- Location: FF_X33_Y71_N7
\inst5|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|h_count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|h_count\(2));

-- Location: LCCOMB_X34_Y71_N28
\inst5|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~0_combout\ = (((!\inst5|h_count\(3)) # (!\inst5|h_count\(4))) # (!\inst5|h_count\(2))) # (!\inst5|h_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|h_count\(5),
	datab => \inst5|h_count\(2),
	datac => \inst5|h_count\(4),
	datad => \inst5|h_count\(3),
	combout => \inst5|LessThan0~0_combout\);

-- Location: LCCOMB_X33_Y71_N0
\inst5|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~1_combout\ = (\inst5|h_count\(0) & (\inst5|h_count\(1) & !\inst5|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|h_count\(0),
	datab => \inst5|h_count\(1),
	datad => \inst5|LessThan0~0_combout\,
	combout => \inst5|LessThan0~1_combout\);

-- Location: LCCOMB_X34_Y71_N22
\inst5|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~2_combout\ = (\inst5|LessThan0~1_combout\) # ((\inst5|h_count\(6)) # (\inst5|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LessThan0~1_combout\,
	datab => \inst5|h_count\(6),
	datad => \inst5|h_count\(7),
	combout => \inst5|LessThan0~2_combout\);

-- Location: LCCOMB_X34_Y71_N30
\inst5|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~3_combout\ = ((!\inst5|h_count\(9) & ((!\inst5|h_count\(8)) # (!\inst5|LessThan0~2_combout\)))) # (!\inst5|h_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|h_count\(10),
	datab => \inst5|h_count\(9),
	datac => \inst5|LessThan0~2_combout\,
	datad => \inst5|h_count\(8),
	combout => \inst5|LessThan0~3_combout\);

-- Location: LCCOMB_X33_Y71_N14
\inst5|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~6_combout\ = (\inst5|h_count\(3) & (!\inst5|Add0~5\)) # (!\inst5|h_count\(3) & ((\inst5|Add0~5\) # (GND)))
-- \inst5|Add0~7\ = CARRY((!\inst5|Add0~5\) # (!\inst5|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|h_count\(3),
	datad => VCC,
	cin => \inst5|Add0~5\,
	combout => \inst5|Add0~6_combout\,
	cout => \inst5|Add0~7\);

-- Location: LCCOMB_X34_Y71_N10
\inst5|h_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|h_count~7_combout\ = (\inst5|LessThan0~3_combout\ & \inst5|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LessThan0~3_combout\,
	datac => \inst5|Add0~6_combout\,
	combout => \inst5|h_count~7_combout\);

-- Location: FF_X34_Y71_N11
\inst5|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|h_count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|h_count\(3));

-- Location: LCCOMB_X33_Y71_N16
\inst5|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~8_combout\ = (\inst5|h_count\(4) & (\inst5|Add0~7\ $ (GND))) # (!\inst5|h_count\(4) & (!\inst5|Add0~7\ & VCC))
-- \inst5|Add0~9\ = CARRY((\inst5|h_count\(4) & !\inst5|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|h_count\(4),
	datad => VCC,
	cin => \inst5|Add0~7\,
	combout => \inst5|Add0~8_combout\,
	cout => \inst5|Add0~9\);

-- Location: LCCOMB_X33_Y71_N4
\inst5|h_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|h_count~6_combout\ = (\inst5|Add0~8_combout\ & \inst5|LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add0~8_combout\,
	datac => \inst5|LessThan0~3_combout\,
	combout => \inst5|h_count~6_combout\);

-- Location: FF_X33_Y71_N5
\inst5|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|h_count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|h_count\(4));

-- Location: LCCOMB_X33_Y71_N18
\inst5|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~10_combout\ = (\inst5|h_count\(5) & (!\inst5|Add0~9\)) # (!\inst5|h_count\(5) & ((\inst5|Add0~9\) # (GND)))
-- \inst5|Add0~11\ = CARRY((!\inst5|Add0~9\) # (!\inst5|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|h_count\(5),
	datad => VCC,
	cin => \inst5|Add0~9\,
	combout => \inst5|Add0~10_combout\,
	cout => \inst5|Add0~11\);

-- Location: LCCOMB_X33_Y71_N2
\inst5|h_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|h_count~5_combout\ = (\inst5|Add0~10_combout\ & \inst5|LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add0~10_combout\,
	datac => \inst5|LessThan0~3_combout\,
	combout => \inst5|h_count~5_combout\);

-- Location: FF_X33_Y71_N3
\inst5|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|h_count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|h_count\(5));

-- Location: LCCOMB_X33_Y71_N20
\inst5|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~12_combout\ = (\inst5|h_count\(6) & (\inst5|Add0~11\ $ (GND))) # (!\inst5|h_count\(6) & (!\inst5|Add0~11\ & VCC))
-- \inst5|Add0~13\ = CARRY((\inst5|h_count\(6) & !\inst5|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|h_count\(6),
	datad => VCC,
	cin => \inst5|Add0~11\,
	combout => \inst5|Add0~12_combout\,
	cout => \inst5|Add0~13\);

-- Location: LCCOMB_X34_Y71_N16
\inst5|h_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|h_count~4_combout\ = (\inst5|Add0~12_combout\ & \inst5|LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add0~12_combout\,
	datac => \inst5|LessThan0~3_combout\,
	combout => \inst5|h_count~4_combout\);

-- Location: FF_X34_Y71_N17
\inst5|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|h_count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|h_count\(6));

-- Location: LCCOMB_X32_Y71_N8
\inst5|h_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|h_count~2_combout\ = (\inst5|Add0~14_combout\ & \inst5|LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add0~14_combout\,
	datad => \inst5|LessThan0~3_combout\,
	combout => \inst5|h_count~2_combout\);

-- Location: LCCOMB_X34_Y71_N4
\inst5|process_0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~16_combout\ = (\inst5|LessThan0~3_combout\ & (!\inst5|Add0~16_combout\ & (!\inst5|Add0~18_combout\ & \inst5|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LessThan0~3_combout\,
	datab => \inst5|Add0~16_combout\,
	datac => \inst5|Add0~18_combout\,
	datad => \inst5|Add0~20_combout\,
	combout => \inst5|process_0~16_combout\);

-- Location: LCCOMB_X34_Y71_N0
\inst5|process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~10_combout\ = (\inst5|Add0~12_combout\) # ((!\inst5|h_count~2_combout\ & (\inst5|Add0~6_combout\ & \inst5|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|h_count~2_combout\,
	datab => \inst5|Add0~6_combout\,
	datac => \inst5|Add0~8_combout\,
	datad => \inst5|Add0~12_combout\,
	combout => \inst5|process_0~10_combout\);

-- Location: LCCOMB_X34_Y71_N24
\inst5|process_0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~11_combout\ = (\inst5|h_count~2_combout\ $ (((!\inst5|Add0~10_combout\ & !\inst5|process_0~10_combout\)))) # (!\inst5|process_0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|h_count~2_combout\,
	datab => \inst5|Add0~10_combout\,
	datac => \inst5|process_0~16_combout\,
	datad => \inst5|process_0~10_combout\,
	combout => \inst5|process_0~11_combout\);

-- Location: FF_X34_Y71_N25
\inst5|h_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|h_sync~q\);

-- Location: FF_X34_Y70_N17
\inst5|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst5|Add1~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|v_count\(9));

-- Location: LCCOMB_X35_Y70_N6
\inst5|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~0_combout\ = \inst5|v_count\(0) $ (VCC)
-- \inst5|Add1~1\ = CARRY(\inst5|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|v_count\(0),
	datad => VCC,
	combout => \inst5|Add1~0_combout\,
	cout => \inst5|Add1~1\);

-- Location: LCCOMB_X34_Y70_N6
\inst5|Add1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~27_combout\ = (\inst5|LessThan0~3_combout\ & (((\inst5|v_count\(0))))) # (!\inst5|LessThan0~3_combout\ & (\inst5|LessThan1~2_combout\ & ((\inst5|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LessThan1~2_combout\,
	datab => \inst5|LessThan0~3_combout\,
	datac => \inst5|v_count\(0),
	datad => \inst5|Add1~0_combout\,
	combout => \inst5|Add1~27_combout\);

-- Location: FF_X34_Y70_N7
\inst5|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add1~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|v_count\(0));

-- Location: LCCOMB_X35_Y70_N8
\inst5|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~2_combout\ = (\inst5|v_count\(1) & (!\inst5|Add1~1\)) # (!\inst5|v_count\(1) & ((\inst5|Add1~1\) # (GND)))
-- \inst5|Add1~3\ = CARRY((!\inst5|Add1~1\) # (!\inst5|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|v_count\(1),
	datad => VCC,
	cin => \inst5|Add1~1\,
	combout => \inst5|Add1~2_combout\,
	cout => \inst5|Add1~3\);

-- Location: LCCOMB_X35_Y70_N26
\inst5|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~28_combout\ = (\inst5|LessThan0~3_combout\ & (((\inst5|v_count\(1))))) # (!\inst5|LessThan0~3_combout\ & (\inst5|LessThan1~2_combout\ & (\inst5|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LessThan1~2_combout\,
	datab => \inst5|Add1~2_combout\,
	datac => \inst5|v_count\(1),
	datad => \inst5|LessThan0~3_combout\,
	combout => \inst5|Add1~28_combout\);

-- Location: FF_X35_Y70_N27
\inst5|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add1~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|v_count\(1));

-- Location: LCCOMB_X35_Y70_N10
\inst5|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~4_combout\ = (\inst5|v_count\(2) & (\inst5|Add1~3\ $ (GND))) # (!\inst5|v_count\(2) & (!\inst5|Add1~3\ & VCC))
-- \inst5|Add1~5\ = CARRY((\inst5|v_count\(2) & !\inst5|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|v_count\(2),
	datad => VCC,
	cin => \inst5|Add1~3\,
	combout => \inst5|Add1~4_combout\,
	cout => \inst5|Add1~5\);

-- Location: LCCOMB_X35_Y70_N4
\inst5|Add1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~29_combout\ = (\inst5|LessThan0~3_combout\ & (((\inst5|v_count\(2))))) # (!\inst5|LessThan0~3_combout\ & (\inst5|LessThan1~2_combout\ & (\inst5|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LessThan1~2_combout\,
	datab => \inst5|Add1~4_combout\,
	datac => \inst5|v_count\(2),
	datad => \inst5|LessThan0~3_combout\,
	combout => \inst5|Add1~29_combout\);

-- Location: FF_X35_Y70_N5
\inst5|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add1~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|v_count\(2));

-- Location: LCCOMB_X35_Y70_N12
\inst5|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~6_combout\ = (\inst5|v_count\(3) & (!\inst5|Add1~5\)) # (!\inst5|v_count\(3) & ((\inst5|Add1~5\) # (GND)))
-- \inst5|Add1~7\ = CARRY((!\inst5|Add1~5\) # (!\inst5|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|v_count\(3),
	datad => VCC,
	cin => \inst5|Add1~5\,
	combout => \inst5|Add1~6_combout\,
	cout => \inst5|Add1~7\);

-- Location: LCCOMB_X35_Y70_N0
\inst5|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~26_combout\ = (\inst5|LessThan0~3_combout\ & (((\inst5|v_count\(3))))) # (!\inst5|LessThan0~3_combout\ & (\inst5|LessThan1~2_combout\ & (\inst5|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LessThan1~2_combout\,
	datab => \inst5|Add1~6_combout\,
	datac => \inst5|v_count\(3),
	datad => \inst5|LessThan0~3_combout\,
	combout => \inst5|Add1~26_combout\);

-- Location: FF_X35_Y70_N1
\inst5|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|v_count\(3));

-- Location: LCCOMB_X35_Y70_N14
\inst5|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~8_combout\ = (\inst5|v_count\(4) & (\inst5|Add1~7\ $ (GND))) # (!\inst5|v_count\(4) & (!\inst5|Add1~7\ & VCC))
-- \inst5|Add1~9\ = CARRY((\inst5|v_count\(4) & !\inst5|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|v_count\(4),
	datad => VCC,
	cin => \inst5|Add1~7\,
	combout => \inst5|Add1~8_combout\,
	cout => \inst5|Add1~9\);

-- Location: LCCOMB_X34_Y70_N8
\inst5|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~24_combout\ = (\inst5|LessThan0~3_combout\ & (((\inst5|v_count\(4))))) # (!\inst5|LessThan0~3_combout\ & (\inst5|LessThan1~2_combout\ & (\inst5|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LessThan1~2_combout\,
	datab => \inst5|Add1~8_combout\,
	datac => \inst5|v_count\(4),
	datad => \inst5|LessThan0~3_combout\,
	combout => \inst5|Add1~24_combout\);

-- Location: FF_X34_Y70_N9
\inst5|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|v_count\(4));

-- Location: LCCOMB_X35_Y70_N16
\inst5|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~10_combout\ = (\inst5|v_count\(5) & (!\inst5|Add1~9\)) # (!\inst5|v_count\(5) & ((\inst5|Add1~9\) # (GND)))
-- \inst5|Add1~11\ = CARRY((!\inst5|Add1~9\) # (!\inst5|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|v_count\(5),
	datad => VCC,
	cin => \inst5|Add1~9\,
	combout => \inst5|Add1~10_combout\,
	cout => \inst5|Add1~11\);

-- Location: LCCOMB_X34_Y70_N4
\inst5|Add1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~25_combout\ = (\inst5|LessThan0~3_combout\ & (((\inst5|v_count\(5))))) # (!\inst5|LessThan0~3_combout\ & (\inst5|LessThan1~2_combout\ & (\inst5|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LessThan1~2_combout\,
	datab => \inst5|Add1~10_combout\,
	datac => \inst5|v_count\(5),
	datad => \inst5|LessThan0~3_combout\,
	combout => \inst5|Add1~25_combout\);

-- Location: FF_X34_Y70_N5
\inst5|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add1~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|v_count\(5));

-- Location: LCCOMB_X35_Y70_N18
\inst5|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~12_combout\ = (\inst5|v_count\(6) & (\inst5|Add1~11\ $ (GND))) # (!\inst5|v_count\(6) & (!\inst5|Add1~11\ & VCC))
-- \inst5|Add1~13\ = CARRY((\inst5|v_count\(6) & !\inst5|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|v_count\(6),
	datad => VCC,
	cin => \inst5|Add1~11\,
	combout => \inst5|Add1~12_combout\,
	cout => \inst5|Add1~13\);

-- Location: LCCOMB_X34_Y70_N0
\inst5|Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~23_combout\ = (\inst5|LessThan0~3_combout\ & (((\inst5|v_count\(6))))) # (!\inst5|LessThan0~3_combout\ & (\inst5|Add1~12_combout\ & (\inst5|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LessThan0~3_combout\,
	datab => \inst5|Add1~12_combout\,
	datac => \inst5|LessThan1~2_combout\,
	datad => \inst5|v_count\(6),
	combout => \inst5|Add1~23_combout\);

-- Location: LCCOMB_X34_Y70_N14
\inst5|v_count[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|v_count[6]~feeder_combout\ = \inst5|Add1~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|Add1~23_combout\,
	combout => \inst5|v_count[6]~feeder_combout\);

-- Location: FF_X34_Y70_N15
\inst5|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|v_count[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|v_count\(6));

-- Location: LCCOMB_X35_Y70_N20
\inst5|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~14_combout\ = (\inst5|v_count\(7) & (!\inst5|Add1~13\)) # (!\inst5|v_count\(7) & ((\inst5|Add1~13\) # (GND)))
-- \inst5|Add1~15\ = CARRY((!\inst5|Add1~13\) # (!\inst5|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|v_count\(7),
	datad => VCC,
	cin => \inst5|Add1~13\,
	combout => \inst5|Add1~14_combout\,
	cout => \inst5|Add1~15\);

-- Location: LCCOMB_X34_Y70_N10
\inst5|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~16_combout\ = (\inst5|LessThan0~3_combout\ & (((\inst5|v_count\(7))))) # (!\inst5|LessThan0~3_combout\ & (\inst5|Add1~14_combout\ & ((\inst5|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add1~14_combout\,
	datab => \inst5|v_count\(7),
	datac => \inst5|LessThan1~2_combout\,
	datad => \inst5|LessThan0~3_combout\,
	combout => \inst5|Add1~16_combout\);

-- Location: LCCOMB_X34_Y70_N20
\inst5|v_count[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|v_count[7]~feeder_combout\ = \inst5|Add1~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|Add1~16_combout\,
	combout => \inst5|v_count[7]~feeder_combout\);

-- Location: FF_X34_Y70_N21
\inst5|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|v_count[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|v_count\(7));

-- Location: LCCOMB_X35_Y70_N22
\inst5|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~17_combout\ = (\inst5|v_count\(8) & (\inst5|Add1~15\ $ (GND))) # (!\inst5|v_count\(8) & (!\inst5|Add1~15\ & VCC))
-- \inst5|Add1~18\ = CARRY((\inst5|v_count\(8) & !\inst5|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|v_count\(8),
	datad => VCC,
	cin => \inst5|Add1~15\,
	combout => \inst5|Add1~17_combout\,
	cout => \inst5|Add1~18\);

-- Location: LCCOMB_X34_Y70_N28
\inst5|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~19_combout\ = (\inst5|LessThan0~3_combout\ & (((\inst5|v_count\(8))))) # (!\inst5|LessThan0~3_combout\ & (\inst5|Add1~17_combout\ & ((\inst5|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add1~17_combout\,
	datab => \inst5|v_count\(8),
	datac => \inst5|LessThan1~2_combout\,
	datad => \inst5|LessThan0~3_combout\,
	combout => \inst5|Add1~19_combout\);

-- Location: LCCOMB_X34_Y70_N18
\inst5|v_count[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|v_count[8]~feeder_combout\ = \inst5|Add1~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|Add1~19_combout\,
	combout => \inst5|v_count[8]~feeder_combout\);

-- Location: FF_X34_Y70_N19
\inst5|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|v_count[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|v_count\(8));

-- Location: LCCOMB_X35_Y70_N2
\inst5|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~0_combout\ = (!\inst5|v_count\(4) & (((!\inst5|v_count\(1) & !\inst5|v_count\(0))) # (!\inst5|v_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|v_count\(4),
	datab => \inst5|v_count\(2),
	datac => \inst5|v_count\(1),
	datad => \inst5|v_count\(0),
	combout => \inst5|LessThan1~0_combout\);

-- Location: LCCOMB_X35_Y70_N28
\inst5|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~1_combout\ = (\inst5|v_count\(7)) # ((\inst5|v_count\(5) & ((\inst5|v_count\(3)) # (!\inst5|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|v_count\(3),
	datab => \inst5|LessThan1~0_combout\,
	datac => \inst5|v_count\(5),
	datad => \inst5|v_count\(7),
	combout => \inst5|LessThan1~1_combout\);

-- Location: LCCOMB_X35_Y70_N30
\inst5|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~2_combout\ = (((!\inst5|v_count\(6) & !\inst5|LessThan1~1_combout\)) # (!\inst5|v_count\(8))) # (!\inst5|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|v_count\(9),
	datab => \inst5|v_count\(8),
	datac => \inst5|v_count\(6),
	datad => \inst5|LessThan1~1_combout\,
	combout => \inst5|LessThan1~2_combout\);

-- Location: LCCOMB_X35_Y70_N24
\inst5|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~20_combout\ = \inst5|Add1~18\ $ (\inst5|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst5|v_count\(9),
	cin => \inst5|Add1~18\,
	combout => \inst5|Add1~20_combout\);

-- Location: LCCOMB_X34_Y70_N22
\inst5|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~22_combout\ = (\inst5|LessThan0~3_combout\ & (((\inst5|v_count\(9))))) # (!\inst5|LessThan0~3_combout\ & (\inst5|LessThan1~2_combout\ & ((\inst5|Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LessThan1~2_combout\,
	datab => \inst5|v_count\(9),
	datac => \inst5|LessThan0~3_combout\,
	datad => \inst5|Add1~20_combout\,
	combout => \inst5|Add1~22_combout\);

-- Location: LCCOMB_X33_Y70_N4
\inst5|process_0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~12_combout\ = (\inst5|Add1~29_combout\ & (((\inst5|Add1~26_combout\)))) # (!\inst5|Add1~29_combout\ & ((\inst5|Add1~27_combout\ & ((\inst5|Add1~26_combout\) # (!\inst5|Add1~28_combout\))) # (!\inst5|Add1~27_combout\ & 
-- ((\inst5|Add1~28_combout\) # (!\inst5|Add1~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add1~27_combout\,
	datab => \inst5|Add1~29_combout\,
	datac => \inst5|Add1~26_combout\,
	datad => \inst5|Add1~28_combout\,
	combout => \inst5|process_0~12_combout\);

-- Location: LCCOMB_X34_Y70_N26
\inst5|process_0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~13_combout\ = (\inst5|Add1~24_combout\) # ((\inst5|Add1~25_combout\) # ((\inst5|process_0~12_combout\) # (\inst5|Add1~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add1~24_combout\,
	datab => \inst5|Add1~25_combout\,
	datac => \inst5|process_0~12_combout\,
	datad => \inst5|Add1~23_combout\,
	combout => \inst5|process_0~13_combout\);

-- Location: LCCOMB_X34_Y70_N24
\inst5|process_0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~14_combout\ = (((\inst5|process_0~13_combout\) # (\inst5|Add1~16_combout\)) # (!\inst5|Add1~19_combout\)) # (!\inst5|Add1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add1~22_combout\,
	datab => \inst5|Add1~19_combout\,
	datac => \inst5|process_0~13_combout\,
	datad => \inst5|Add1~16_combout\,
	combout => \inst5|process_0~14_combout\);

-- Location: FF_X34_Y70_N25
\inst5|v_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|process_0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|v_sync~q\);

-- Location: LCCOMB_X34_Y70_N12
\inst5|LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan7~0_combout\ = (\inst5|LessThan0~3_combout\ & (((\inst5|v_count\(9) & \inst5|v_count\(8))))) # (!\inst5|LessThan0~3_combout\ & (\inst5|LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LessThan1~2_combout\,
	datab => \inst5|v_count\(9),
	datac => \inst5|LessThan0~3_combout\,
	datad => \inst5|v_count\(8),
	combout => \inst5|LessThan7~0_combout\);

-- Location: LCCOMB_X34_Y70_N30
\inst5|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan7~1_combout\ = ((!\inst5|LessThan0~3_combout\ & ((!\inst5|Add1~20_combout\) # (!\inst5|Add1~17_combout\)))) # (!\inst5|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add1~17_combout\,
	datab => \inst5|Add1~20_combout\,
	datac => \inst5|LessThan0~3_combout\,
	datad => \inst5|LessThan7~0_combout\,
	combout => \inst5|LessThan7~1_combout\);

-- Location: FF_X33_Y70_N21
\inst5|row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst5|Add1~16_combout\,
	sload => VCC,
	ena => \inst5|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|row\(7));

-- Location: LCCOMB_X33_Y70_N0
\inst5|row[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|row[5]~feeder_combout\ = \inst5|Add1~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|Add1~25_combout\,
	combout => \inst5|row[5]~feeder_combout\);

-- Location: FF_X33_Y70_N1
\inst5|row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|row[5]~feeder_combout\,
	ena => \inst5|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|row\(5));

-- Location: FF_X33_Y70_N29
\inst5|row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst5|Add1~26_combout\,
	sload => VCC,
	ena => \inst5|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|row\(3));

-- Location: FF_X33_Y70_N27
\inst5|row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst5|Add1~24_combout\,
	sload => VCC,
	ena => \inst5|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|row\(4));

-- Location: LCCOMB_X33_Y70_N28
\inst|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan5~0_combout\ = ((!\inst5|row\(5) & (!\inst5|row\(3) & !\inst5|row\(4)))) # (!\inst5|row\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|row\(7),
	datab => \inst5|row\(5),
	datac => \inst5|row\(3),
	datad => \inst5|row\(4),
	combout => \inst|LessThan5~0_combout\);

-- Location: LCCOMB_X33_Y70_N8
\inst5|row[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|row[9]~feeder_combout\ = \inst5|Add1~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|Add1~22_combout\,
	combout => \inst5|row[9]~feeder_combout\);

-- Location: FF_X33_Y70_N9
\inst5|row[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|row[9]~feeder_combout\,
	ena => \inst5|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|row\(9));

-- Location: FF_X33_Y70_N31
\inst5|row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst5|Add1~23_combout\,
	sload => VCC,
	ena => \inst5|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|row\(6));

-- Location: LCCOMB_X33_Y70_N18
\inst5|row[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|row[8]~feeder_combout\ = \inst5|Add1~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|Add1~19_combout\,
	combout => \inst5|row[8]~feeder_combout\);

-- Location: FF_X33_Y70_N19
\inst5|row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|row[8]~feeder_combout\,
	ena => \inst5|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|row\(8));

-- Location: LCCOMB_X33_Y70_N30
\inst|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan5~1_combout\ = (!\inst5|row\(9) & (!\inst5|row\(8) & ((\inst|LessThan5~0_combout\) # (!\inst5|row\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan5~0_combout\,
	datab => \inst5|row\(9),
	datac => \inst5|row\(6),
	datad => \inst5|row\(8),
	combout => \inst|LessThan5~1_combout\);

-- Location: LCCOMB_X33_Y70_N22
\inst5|column[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|column[31]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst5|column[31]~feeder_combout\);

-- Location: FF_X33_Y70_N23
\inst5|column[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|column[31]~feeder_combout\,
	ena => \inst5|ALT_INV_h_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|column\(31));

-- Location: FF_X33_Y70_N25
\inst5|column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst5|h_count~0_combout\,
	sload => VCC,
	ena => \inst5|ALT_INV_h_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|column\(9));

-- Location: LCCOMB_X33_Y70_N12
\inst5|row[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|row[31]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst5|row[31]~feeder_combout\);

-- Location: FF_X33_Y70_N13
\inst5|row[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|row[31]~feeder_combout\,
	ena => \inst5|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|row\(31));

-- Location: LCCOMB_X33_Y70_N24
\inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~0_combout\ = (\inst5|column\(31) & (!\inst5|column\(9) & \inst5|row\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|column\(31),
	datac => \inst5|column\(9),
	datad => \inst5|row\(31),
	combout => \inst|process_0~0_combout\);

-- Location: LCCOMB_X33_Y70_N16
\inst5|row[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|row[0]~0_combout\ = !\inst5|Add1~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|Add1~27_combout\,
	combout => \inst5|row[0]~0_combout\);

-- Location: FF_X33_Y70_N17
\inst5|row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|row[0]~0_combout\,
	ena => \inst5|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|row\(0));

-- Location: FF_X33_Y70_N11
\inst5|row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst5|Add1~29_combout\,
	sload => VCC,
	ena => \inst5|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|row\(2));

-- Location: LCCOMB_X33_Y70_N14
\inst5|row[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|row[1]~feeder_combout\ = \inst5|Add1~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|Add1~28_combout\,
	combout => \inst5|row[1]~feeder_combout\);

-- Location: FF_X33_Y70_N15
\inst5|row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|row[1]~feeder_combout\,
	ena => \inst5|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|row\(1));

-- Location: LCCOMB_X33_Y70_N10
\inst|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan3~0_combout\ = (\inst5|row\(3)) # ((\inst5|row\(2) & ((\inst5|row\(1)) # (!\inst5|row\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|row\(0),
	datab => \inst5|row\(3),
	datac => \inst5|row\(2),
	datad => \inst5|row\(1),
	combout => \inst|LessThan3~0_combout\);

-- Location: LCCOMB_X33_Y70_N26
\inst|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan3~1_combout\ = (\inst5|row\(5) & (\inst5|row\(6) & ((\inst|LessThan3~0_combout\) # (\inst5|row\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan3~0_combout\,
	datab => \inst5|row\(5),
	datac => \inst5|row\(4),
	datad => \inst5|row\(6),
	combout => \inst|LessThan3~1_combout\);

-- Location: LCCOMB_X33_Y70_N20
\inst|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan3~2_combout\ = (\inst|LessThan3~1_combout\) # ((\inst5|row\(9)) # ((\inst5|row\(7)) # (\inst5|row\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan3~1_combout\,
	datab => \inst5|row\(9),
	datac => \inst5|row\(7),
	datad => \inst5|row\(8),
	combout => \inst|LessThan3~2_combout\);

-- Location: LCCOMB_X33_Y70_N2
\inst|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~1_combout\ = (\inst|process_0~0_combout\ & (\inst|LessThan3~2_combout\ & ((\inst|LessThan5~1_combout\) # (!\inst5|row\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan5~1_combout\,
	datab => \inst|process_0~0_combout\,
	datac => \inst|LessThan3~2_combout\,
	datad => \inst5|row\(31),
	combout => \inst|process_0~1_combout\);

-- Location: FF_X32_Y71_N9
\inst5|column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst5|h_count~1_combout\,
	sload => VCC,
	ena => \inst5|ALT_INV_h_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|column\(8));

-- Location: LCCOMB_X34_Y70_N2
\inst5|process_0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~15_combout\ = (\inst5|Add1~22_combout\ & (!\inst5|Add1~19_combout\ & ((!\inst5|LessThan0~3_combout\) # (!\inst5|Add0~20_combout\)))) # (!\inst5|Add1~22_combout\ & (((!\inst5|LessThan0~3_combout\)) # (!\inst5|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add1~22_combout\,
	datab => \inst5|Add0~20_combout\,
	datac => \inst5|LessThan0~3_combout\,
	datad => \inst5|Add1~19_combout\,
	combout => \inst5|process_0~15_combout\);

-- Location: FF_X34_Y70_N3
\inst5|disp_ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|process_0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|disp_ena~q\);

-- Location: FF_X32_Y71_N19
\inst5|column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst5|h_count~2_combout\,
	sload => VCC,
	ena => \inst5|ALT_INV_h_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|column\(7));

-- Location: FF_X32_Y71_N27
\inst5|column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst5|h_count~9_combout\,
	sload => VCC,
	ena => \inst5|ALT_INV_h_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|column\(1));

-- Location: LCCOMB_X32_Y71_N24
\inst5|column[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|column[0]~0_combout\ = !\inst5|h_count~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|h_count~8_combout\,
	combout => \inst5|column[0]~0_combout\);

-- Location: FF_X32_Y71_N25
\inst5|column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|column[0]~0_combout\,
	ena => \inst5|ALT_INV_h_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|column\(0));

-- Location: FF_X32_Y71_N29
\inst5|column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst5|h_count~10_combout\,
	sload => VCC,
	ena => \inst5|ALT_INV_h_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|column\(2));

-- Location: LCCOMB_X32_Y71_N22
\inst|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~2_combout\ = (\inst5|column\(2) & ((\inst5|column\(1)) # (!\inst5|column\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|column\(1),
	datac => \inst5|column\(0),
	datad => \inst5|column\(2),
	combout => \inst|process_0~2_combout\);

-- Location: FF_X33_Y71_N1
\inst5|column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst5|h_count~7_combout\,
	sload => VCC,
	ena => \inst5|ALT_INV_h_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|column\(3));

-- Location: FF_X32_Y71_N15
\inst5|column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst5|h_count~6_combout\,
	sload => VCC,
	ena => \inst5|ALT_INV_h_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|column\(4));

-- Location: LCCOMB_X32_Y71_N20
\inst5|column[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|column[5]~feeder_combout\ = \inst5|h_count~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|h_count~5_combout\,
	combout => \inst5|column[5]~feeder_combout\);

-- Location: FF_X32_Y71_N21
\inst5|column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|column[5]~feeder_combout\,
	ena => \inst5|ALT_INV_h_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|column\(5));

-- Location: LCCOMB_X32_Y71_N0
\inst|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~3_combout\ = (\inst5|column\(3)) # ((\inst5|column\(4)) # ((\inst|process_0~2_combout\ & \inst5|column\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~2_combout\,
	datab => \inst5|column\(3),
	datac => \inst5|column\(4),
	datad => \inst5|column\(5),
	combout => \inst|process_0~3_combout\);

-- Location: FF_X33_Y71_N27
\inst5|column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst5|h_count~4_combout\,
	sload => VCC,
	ena => \inst5|ALT_INV_h_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|column\(6));

-- Location: LCCOMB_X32_Y71_N2
\inst|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~4_combout\ = (\inst5|column\(7) & (((!\inst|process_0~3_combout\ & !\inst5|column\(5))) # (!\inst5|column\(6)))) # (!\inst5|column\(7) & (\inst|process_0~3_combout\ & (\inst5|column\(6) & \inst5|column\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|column\(7),
	datab => \inst|process_0~3_combout\,
	datac => \inst5|column\(6),
	datad => \inst5|column\(5),
	combout => \inst|process_0~4_combout\);

-- Location: LCCOMB_X32_Y71_N10
\inst|blue[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|blue[7]~2_combout\ = ((\inst5|column\(8)) # ((!\inst|process_0~4_combout\) # (!\inst5|disp_ena~q\))) # (!\inst|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~1_combout\,
	datab => \inst5|column\(8),
	datac => \inst5|disp_ena~q\,
	datad => \inst|process_0~4_combout\,
	combout => \inst|blue[7]~2_combout\);

-- Location: LCCOMB_X32_Y71_N4
\inst|green[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|green[7]~2_combout\ = (\inst5|disp_ena~q\ & (((\inst5|column\(8)) # (!\inst|process_0~4_combout\)) # (!\inst|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~1_combout\,
	datab => \inst5|column\(8),
	datac => \inst5|disp_ena~q\,
	datad => \inst|process_0~4_combout\,
	combout => \inst|green[7]~2_combout\);

-- Location: LCCOMB_X32_Y71_N28
\inst|red[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|red[7]~3_combout\ = (\inst5|column\(6) & (\inst5|column\(5) & ((\inst5|column\(3)) # (\inst5|column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|column\(6),
	datab => \inst5|column\(3),
	datac => \inst5|column\(2),
	datad => \inst5|column\(5),
	combout => \inst|red[7]~3_combout\);

-- Location: LCCOMB_X32_Y71_N26
\inst|red[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|red[7]~0_combout\ = (\inst5|column\(0) & (!\inst5|column\(3) & (!\inst5|column\(1) & !\inst5|column\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|column\(0),
	datab => \inst5|column\(3),
	datac => \inst5|column\(1),
	datad => \inst5|column\(2),
	combout => \inst|red[7]~0_combout\);

-- Location: LCCOMB_X32_Y71_N12
\inst|red[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|red[7]~1_combout\ = (!\inst5|column\(6) & (!\inst5|column\(5) & ((\inst|red[7]~0_combout\) # (!\inst5|column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|red[7]~0_combout\,
	datab => \inst5|column\(4),
	datac => \inst5|column\(6),
	datad => \inst5|column\(5),
	combout => \inst|red[7]~1_combout\);

-- Location: LCCOMB_X32_Y71_N18
\inst|red[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|red[7]~2_combout\ = (\inst|red[7]~1_combout\) # (((!\inst|process_0~1_combout\) # (!\inst5|column\(7))) # (!\inst5|column\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|red[7]~1_combout\,
	datab => \inst5|column\(8),
	datac => \inst5|column\(7),
	datad => \inst|process_0~1_combout\,
	combout => \inst|red[7]~2_combout\);

-- Location: LCCOMB_X32_Y71_N14
\inst|red[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|red[7]~4_combout\ = (\inst5|disp_ena~q\ & ((\inst|red[7]~2_combout\) # ((\inst|red[7]~3_combout\ & \inst5|column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|disp_ena~q\,
	datab => \inst|red[7]~3_combout\,
	datac => \inst5|column\(4),
	datad => \inst|red[7]~2_combout\,
	combout => \inst|red[7]~4_combout\);
END structure;



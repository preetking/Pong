-- Importing IEEE Library
library IEEE;

-- Library Headers Being Used
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity VGA_DRIVER is
    port (
        clk         :   in std_logic;
        rst         :   in std_logic;

        DAC_CLOCK   :   out std_logic;
        h_sync      :   out std_logic;
        v_sync      :   out std_logic;

        display_on  :   out std_logic;

        h_pos       :   out integer;
        v_pos       :   out integer
    );
end VGA_DRIVER;

architecture Behavorial of VGA_DRIVER is

    -- CONSTANT VALUES FOR HSYNC AND VSYNC
    constant horizontal_display     :   integer := 640;
    constant horizontal_front_porch :   integer := 16;
    constant horizontal_sync_pulse  :   integer := 96;
    constant horizontal_back_porch  :   integer := 48;

    constant vertical_display     :   integer := 480;
    constant vertical_front_porch :   integer := 10;
    constant vertical_sync_pulse  :   integer := 2;
    constant vertical_back_porch  :   integer := 33;

    -- DAC_CLOCK Signal & Component
    signal clk25 : std_logic := '0';

    component clock25
        port (
            clk     :   in std_logic;
            rst     :   in std_logic;
            clk_out :   out std_logic
        );
    end component;

    -- HORIZONTAL & VETICAL POSITON COUNTER Signal and COMPONENT
    signal h_position : integer := 0;
    signal v_position : integer := 0;

    component hv_position
        port (
            clk     : in std_logic;
            rst     : in std_logic;

            h_pos   : out integer;
            v_pos   : out integer
        );
    end component;

    -- HORIZONTAL & VERTICAL SYNC Signal and COMPONENT
    component hv_sync
        port (
            clk     : in std_logic;
            rst     : in std_logic;

            h_position   : in integer;
            v_position   : in integer;

            h_sync  : out std_logic;
            v_sync  : out std_logic
        );
    end component;

    component display
        port (
            clk         : in std_logic;
            rst         : in std_logic;

            h_position       : in integer;
            v_position       : in integer;

            display_out : out std_logic
        );
    end component;
begin

    pixel_clk : clock25
    port map(
        clk => clk,
        rst => rst,
        clk_out => clk25
    );

    DAC_CLOCK <= clk25;

    position_counter : hv_position
    port map (
        clk => clk25,
        rst => rst,

        h_pos => h_position,
        v_pos => v_position
    );
	
	 h_pos <= h_position;
	 v_pos <= v_position;
	
    sync : hv_sync
    port map (
        clk => clk25,
        rst => rst,

        h_position => h_position,
        v_position => v_position,

        h_sync => h_sync,
        v_sync => v_sync
    );

    displayon : display
    port map(
        clk => clk25,
        rst => rst,

        h_position => h_position,
        v_position => v_position,

        display_out => display_on
    );

end Behavorial;

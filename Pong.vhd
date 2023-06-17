----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:    12:40:06 11/16/2022
-- Design Name:
-- Module Name:    Pong - Behavioral
-- Project Name:
-- Target Devices:
-- Tool versions:
-- Description:
--
-- Dependencies:
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Pong is
port (
	clk			: in std_logic;
	rst			: in std_logic;
   SW0         : in std_logic;
   SW1         : in std_logic;
   SW2         : in std_logic;
   SW3         : in std_logic;
	Rout		: out std_logic_vector(7 downto 0);
	Bout		: out std_logic_vector(7 downto 0);
	Gout		: out std_logic_vector(7 downto 0);
	H			: out std_logic;
	V			: out std_logic;
	DAC     : out std_logic
);
end Pong;

architecture Behavioral of Pong is
component VGA_DRIVER
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
end component;

signal h_position : integer := 0;
signal v_position : integer := 0;

signal display_on : std_logic := '0';

component game
    port (
        clk : in std_logic;
        rst : in std_logic;

        SW0 : in std_logic;
        SW1 : in std_logic;
        SW2 : in std_logic;
        SW3 : in std_logic;

        h_position : in integer;
        v_position : in integer;

        display_on : in std_logic;

        R         :   out std_logic_vector(7 downto 0);
        G       :   out std_logic_vector(7 downto 0);
        B        :   out std_logic_vector(7 downto 0)
    );
end component;

begin

	vga : VGA_DRIVER
	port map (
		clk => clk,
		rst => rst,

		DAC_CLOCK => DAC,
		h_sync => H,
		v_sync => V,

        display_on => display_on,

        h_pos => h_position,
        v_pos => v_position
	);

    pong_game : game
    port map (
        clk => clk,
        rst => rst,

        SW0 => SW0,
        SW1 => SW1,
        SW2 => SW2,
        SW3 => SW3,

        h_position => h_position,
        v_position => v_position,
        display_on => display_on,

        R => Rout,
        G => Gout,
        B => Bout
    );

end Behavioral;


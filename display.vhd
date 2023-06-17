-- Importing IEEE Library
library IEEE;

-- Library Headers Being Used
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity display is
    port (
        clk         : in std_logic;
        rst         : in std_logic;

        h_position       : in integer;
        v_position       : in integer;

        display_out : out std_logic
    );
end display;

architecture Behavorial of display is
    signal display : std_logic := '0';
begin
    process (clk, rst, h_position, v_position)
    begin
        if (rst = '1') then
            display <= '0';
        elsif (clk'event and clk = '1') then
            if (h_position <= 639 and v_position <= 479) then
                display <= '1';
            else
                display <= '0';
            end if;
        end if;

        display_out <= display;
    end process;
end Behavorial;
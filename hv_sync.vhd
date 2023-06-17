-- Importing IEEE Library
library IEEE;

-- Library Headers Being Used
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity hv_sync is
    port (
        clk     : in std_logic;
        rst     : in std_logic;

        h_position   : in integer;
        v_position   : in integer;

        h_sync  : out std_logic;
        v_sync  : out std_logic
    );
end hv_sync;

architecture Behavorial of hv_sync is
begin

    horizontal_sync:process(clk, rst, h_position)
    begin
        if (rst = '1') then
            h_sync <= '0';

        elsif (clk'event and clk = '1') then
            if ((h_position <= (639 + 16)) or (h_position > (639 + 16 + 96))) then
                h_sync <= '1';
            else
                h_sync <= '0';
            end if;
        end if;
    end process;

    vertical_sync:process(clk, rst, v_position)
    begin
        if (rst = '1') then
            v_sync <= '0';

        elsif (clk'event and clk = '1') then
            if ((v_position <= (479 + 10)) or (v_position > (479 + 10 + 2))) then
                v_sync <= '1';
            else
                v_sync <= '0';
            end if;
        end if;
    end process;
end Behavorial;
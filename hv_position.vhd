-- Importing IEEE Library
library IEEE;

-- Library Headers Being Used
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity hv_position is
    port (
        clk     : in std_logic;
        rst     : in std_logic;

        h_pos   : out integer;
        v_pos   : out integer
    );
end hv_position;

architecture Behavorial of hv_position is
    signal h_position : integer := 0;
    signal v_position : integer := 0;

begin

    horizontal:process(clk, rst)
    begin
        if (rst = '1') then
            h_position  <= 0;

        elsif (clk'event and clk = '1') then
            if (h_position = 799) then
                h_position <= 0;
            else
                h_position <= h_position + 1;

            end if;
        end if;

        h_pos <= h_position;
    end process;

    vertical:process(clk, rst, h_position)
    begin
        if (rst = '1') then
            v_position <= 0;

        elsif(clk'event and clk = '1') then
            if (h_position = 799) then
                if (v_position = 524) then
                    v_position <= 0;
                else
                    v_position <= v_position + 1;
                end if;
            end if;
        end if;

        v_pos <= v_position;
    end process;
end Behavorial;
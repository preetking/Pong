-- Importing IEEE Library
library IEEE;

-- Library Headers Being Used
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity clock25 is
    port (
        clk     :   in std_logic;
        rst     :   in std_logic;

        clk_out :   out std_logic
    );
end clock25;

architecture Behavorial of clock25 is
    signal clk25  :   std_logic := '0';

begin
    process(clk, rst)
    begin

        if (rst = '1') then
            clk25 <= '0';

        elsif (clk'event and clk = '1') then
            clk25 <= not clk_25;
        end if;

        clk_out <= clk_25

    end process;
end Behavorial;
-- Importing IEEE Library
library IEEE;

-- Library Headers Being Used
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity game is
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
end game;

architecture Behavioral of game is

signal paddle1, paddle2 : integer := 158;
signal paddle_size : integer := 100;
signal paddle_speed : integer := 3;

signal ball_x : integer := 312;
signal ball_y : integer := 232;
signal ball_xmove : integer := 2;
signal ball_ymove : integer := 2;

signal ball_speed : integer := 1;

signal delay : integer := 0;

signal clk_slow : integer := 0;

begin
   draw_static:process (clk, rst, h_position, v_position, display_on)
	begin
		if (rst = '1') then
			R <= "00000000";
			G <= "00000000";
			B <= "00000000";
		elsif (clk'event and clk = '1') then
			if (display_on ='1') then
				if ((h_position >= 25 and h_position <= 615) and ((v_position >= 25 and v_position <= 36) or (v_position >= 448 and v_position <= 459))) then
					R <= "11111111";
					G <= "11111111";
					B <= "11111111";

				elsif (((h_position >= 25 and h_position <= 36) or (h_position >= 604 and h_position <= 615)) and ((v_position >= 36 and v_position <= 126) or (v_position >= 358 and v_position <= 448))) then
					R <= "11111111";
					G <= "11111111";
					B <= "11111111";

                elsif (((h_position > 316 and h_position < 324) and v_position >= 37 and v_position < 448) and (((v_position - 35) mod 64) > 32)) then
                    R <= "10000000";
                    G <= "10000000";
                    B <= "10000000";
				else
					R <= "00000000";
					G <= "11111111";
					B <= "00000000";
				end if;

			else
				R <= "00000000";
				G <= "00000000";
				B <= "00000000";
			end if;
		
		if (h_position > 45 and h_position <= 59 and v_position > paddle1 and v_position <= paddle1 + paddle_size) then
			R <= "00000000";
			G <= "00000000";
			B <= "11111111";
		elsif (h_position > 581 and h_position <= 595 and v_position > paddle2 and v_position <= paddle2 + paddle_size) then
			R <= "11111111";
			G <= "00000000";
			B <= "11111111";
			
		elsif (h_position > ball_x and h_position <= ball_x + 16 and v_position > ball_y and v_position <= ball_y + 16) then
			if (ball_x <= 12 or ball_x + 16 >= 628) then
				R <= "11111111";
				G <= "00000000";
				B <= "00000000";
				
				if (delay = 3000) then
					ball_x <= 312;
					delay <= 0;
					
					ball_xmove <= -ball_xmove;
					ball_ymove <= -ball_ymove;
				else
					delay <= delay + 1;
				end if;
			else
				R <= "11111111";				
				G <= "11111111";
				B <= "00000000";

			end if;
		end if;
		
		if (h_position = 639 and v_position = 479) then
			if (ball_x <= 36 or ball_x + 16 >= 604) then
				if (ball_y > 126 and ball_y < 358) then
				else
					if (ball_x <= 36) then
						ball_xmove <= ball_speed;
					else
						ball_xmove <= -ball_speed;
					end if;
				end if;
			end if;
			
			if (ball_y <= 36) then
				ball_ymove <= ball_speed;
			end if;
			
			if (ball_y + 16 >= 448) then
				ball_ymove <= -ball_speed;
			end if;
			
			if ((ball_x <= 60 and ball_x + 16 >= 44) and (ball_y + 16 > paddle1 and ball_y < paddle1 + paddle_size)) then
				ball_xmove <= ball_speed;
			end if;
			
			if ((ball_x <= 597 and ball_x + 16 >= 581) and (ball_y + 16 > paddle2 and ball_y < paddle2 + paddle_size)) then
				ball_xmove <= -ball_speed;
			end if;
--			
			if (SW0 = '1' and paddle1 >= 43) then
				paddle1 <= paddle1 - paddle_speed;
			elsif (SW1 = '0' and paddle1 + paddle_size <= 440) then
				paddle1 <= paddle1 + paddle_speed;
			end if;
--			
			if (SW1 = '1' and paddle2 >= 43) then
				paddle2 <= paddle2 - paddle_speed;
			elsif (SW1 = '0' and paddle2 + paddle_size <= 440) then
				paddle2 <= paddle2 + paddle_speed;
			end if;
--			
			if (not(ball_x <= 10 or ball_x + 16 >= 630)) then
				ball_x <= ball_x + ball_xmove;
				ball_y <= ball_y + ball_ymove;
			end if;
--			
		end if;
	end if;
	end process;
end Behavioral;
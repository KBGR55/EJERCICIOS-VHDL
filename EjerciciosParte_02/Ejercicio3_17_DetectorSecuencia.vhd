----------------------------------------------------------------------------------
-- Create Date:    17:30:48 07/13/2022
-- Module Name:    Ejercicio3_17_DetectorSecuencia - Behavioral 
-- Karen Brigith Gonzaga Rivas
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ejercicio3_17_DetectorSecuencia is
    Port ( clk, x : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR(0 to 6));
end Ejercicio3_17_DetectorSecuencia;

architecture Behavioral of Ejercicio3_17_DetectorSecuencia is
	type estado is (A,B,C,D,E,F,G,H);
	signal presente, futuro : estado;
begin
	process_01 : process (presente, x) begin
		case presente is
			when A => s <= "0000000";
				if x = '0' then
					futuro <= B;
				end if;
			when B => s <= "0000000";
				if x = '1' then
					futuro <= C;
				end if;
			when C => s <= "0000000";
				if x = '1' then
					futuro <= D;
				end if;
			when D => s <= "0000000";
				if x = '0' then
					futuro <= E;
				end if;
			when E => s <= "0000000";
				if x = '1' then
					futuro <= F;
				end if;
			when F => s <= "0000000";
				if x = '0' then
					futuro <= G;
				end if;
			when G => s <= "0000000";
				if  x = '1' then
					futuro <= H;
				end if;
			when H =>
				if x = '0' then 
					futuro <= A;
					s <= "1101111";
				else
					s <= "0000000";
				end if;
		end case;
	end process process_01;

	process_02 : process(clk) begin
		if clk' event and clk = '1' then
			presente <= futuro;
		end if;
	end process process_02;
end Behavioral;
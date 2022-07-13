----------------------------------------------------------------------------------
-- Create Date:    19:27:08 07/12/2022
-- Module Name:    Ejercicio3_14 - Behavioral 
-- Karen Brigith Gonzaga Rivas
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ejercicio3_14 is
	port (clk : in  STD_LOGIC;
				x: in  STD_LOGIC;
				aux : inout  STD_LOGIC_VECTOR (2 downto 0));
end Ejercicio3_14;

architecture arquiEjercicio3_14 of Ejercicio3_14 is
	Type estados is (A, B, C, D, E,F,G,H);
	signal presente, futuro: estados;
begin
	proceso_01:	process (presente, x) begin
		case presente is
		when A => 
			aux <= "000";
			if x = '1' then 
				futuro <= B;
			else
				futuro <= H;
			end if;
		when B =>
			aux <= "001";
			if x = '1' then 
				futuro <= C;
			else 
				futuro <= A;
			end if;
		when C =>
			aux <= "011";
			if x = '1' then 
				futuro <= D;
			else 
				futuro <= B;
			end if;
		when D => 
			aux <= "010";
			if x = '1' then 
				futuro <= E;
			else 
				futuro <= C;
			end if;
		when E =>
			aux <= "110";
			if x = '1' then 
				futuro <= F;
			else 
				futuro <= D;
			end if;
		when F =>
			aux <= "111";
			if x= '1' then 
				futuro <= G;
			else 
				futuro <= E;
			end if;		
		when G =>
			aux <= "101";
			if x = '1' then 
				futuro <= H;
			else
				futuro <= F;
			end if;
		when H =>
			aux <= "110";
			if x = '1' then
				futuro <= A;
			else 
				futuro <= G;
			end if;
		end case;
	end process proceso_01; 

	proceso_02: process (clk) begin
		if (clk' event and clk ='1') then
			presente <= futuro;
		end if;
	end process proceso_02;
end arquiEjercicio3_14;
----------------------------------------------------------------------------------
-- Create Date:    17:40:30 07/13/2022 
-- Module Name:    Ejercicio3_19_Contador - Behavioral 
-- Karen Brigith Gonzaga Rivas
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Ejercicio3_19_Contador is
    Port ( clk, x : in  STD_LOGIC;--Entradas
           s : out  STD_LOGIC_VECTOR (2 downto 0));--Salida
end Ejercicio3_19_Contador;

architecture Behavioral of Ejercicio3_19_Contador is
	type estado is (A,B,C,D,E,F,G,H);
	signal presente, futuro : estado;
begin
	process_01 : process(presente, x) begin
		case presente is
			when A =>
				if x = '0' then
					futuro <= B;
				end if;
			when B =>
				if x = '0' then 
					futuro <= C;
				else
					futuro <= E;
				end if;
			when C =>
				if x = '0' then
					futuro <= D;
				else
					futuro <= F;
				end if;
			when D =>
				if x = '0' then
					futuro <= E;
				else
					futuro <= B;
				end if;
			when E => 
				if x = '0' then 
					futuro <= F;
				else
					futuro <= B;
				end if;
			when F => futuro <= G;
			when G => futuro <= H;
			when H =>
				if x = '0' then
					futuro <= A;
				else
					futuro <= C;
				end if;
		end case;
	end process process_01;
	
	process_02 : process(presente) begin
		case presente is
			when A => s <= "000";
			when B => s <= "001";
			when C => s <= "010";
			when D => s <= "011";
			when E => s <= "100";
			when F => s <= "101";
			when G => s <= "110";
			when H => s <= "111";
		end case;
	end process process_02;
	
	process_03 : process(clk) begin	
		if clk' event and clk = '1' then
			presente <= futuro;
		end if;
	end process process_03;
end Behavioral;
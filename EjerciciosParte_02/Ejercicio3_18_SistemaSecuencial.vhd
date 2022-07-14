----------------------------------------------------------------------------------
-- Create Date:    17:38:10 07/13/2022 
-- Module Name:    Ejercicio3_18_SistemaSecuencial - Behavioral 
-- Karen Brigith Gonzaga Rivas
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ejercicio3_18_SistemaSecuencial is
    Port ( clk, x : in  STD_LOGIC;
           s : out  STD_LOGIC);
end Ejercicio3_18_SistemaSecuencial;

architecture Behavioral of Ejercicio3_18_SistemaSecuencial is
	type estado is (A, B, C, D, E);
	signal presente, futuro : estado;
begin
	process_01 : process(presente, x) begin
		case presente is
			when A => s <= '0';
				if x = '0' then
					futuro <= B;
				else
					futuro <= E;
				end if;
			when B => s <= '1';
				if x = '0' then
					futuro <= A;
				else
					futuro <= C;
				end if;
			when C =>
				if x = '0' then
					futuro <= B;
					s  <= '0';
				else
					futuro <= C;
					s	<= '1';
				end if;
			when D => s <= '0'; 
				if x = '0' then
					futuro <= C;
				else
					futuro <= E;
				end if;
			when E => 
				if x = '0' then 
					futuro <= D;
					s	<= '1';
				else
					futuro <= A;
					s	<= '0';
				end if;
		end case;
	end process process_01;

	process_02 : process (clk) begin
		if clk' event and clk = '1' then
			presente <= futuro;
		end if;
	end process process_02;
end Behavioral;
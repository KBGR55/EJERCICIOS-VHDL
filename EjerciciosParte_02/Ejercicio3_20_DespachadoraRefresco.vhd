----------------------------------------------------------------------------------
-- Create Date:    17:45:41 07/13/2022 
-- Module Name:    Ejercicio3_20_DespachadoraRefresco - Behavioral 
-- Karen Brigith Gonzaga Rivas
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ejercicio3_20_DespachadoraRefresco is
    Port ( clk : in  STD_LOGIC;
           x: in  STD_LOGIC_VECTOR(4 downto 0);
           s : out  STD_LOGIC_VECTOR(3 downto 0));
end Ejercicio3_20_DespachadoraRefresco;

architecture Behavioral of Ejercicio3_20_DespachadoraRefresco is
	type estado is (A,B,C,D);
	signal presente, futuro : estado;
begin
 proceso_01: process(presente, x) begin
	case presente is
		when A => s <= "0000";
			if x = "00101" then
				futuro <= B;
			elsif x = "01010" then
				futuro <= C;
			elsif x = "10100" then
				futuro <= D;
			else
				futuro <= A;
			end if;
		when B => s <= "0000";
			futuro<= A;
		when C => s <= "0101";
			futuro<= A;
		when D => s <= "1111";
			futuro<= A;
	end case;
 end process  proceso_01;

  proceso_02: process(clk) begin
	if clk' event and clk = '1' then
		presente <= futuro;
	end if;
 end process  proceso_02;
end Behavioral;
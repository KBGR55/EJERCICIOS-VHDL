----------------------------------------------------------------------------------
-- Create Date:    23:06:36 07/12/2022 
-- Module Name:    Ejercicio3_08_Contador - Behavioral 
-- Karen Brigith Gonzaga Rivas
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Ejercicio3_08_Contador is
    Port ( clk, X : in  STD_LOGIC;--Entradas
           Q : out  STD_LOGIC_VECTOR (1 downto 0));--Salida
end Ejercicio3_08_Contador;

architecture Behavioral of Ejercicio3_08_Contador is
	signal signalQ : STD_LOGIC_VECTOR (1 downto 0);
begin
	Q <= signalQ;
	process(clk)
	begin
		if (clk' event and clk = '1') then
			if (X = '0') then
				signalQ <= signalQ+1;
			else 
				signalQ <= signalQ - 1;
			end if;
		end if;
	end process;
end Behavioral;
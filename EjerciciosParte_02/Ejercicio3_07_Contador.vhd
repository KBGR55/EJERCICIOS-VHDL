----------------------------------------------------------------------------------
-- Create Date:    22:32:09 07/12/2022 
-- Module Name:    Ejercicio3_07_Contador - Behavioral 
-- Karen Brigith Gonzaga Rivas
-----------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Ejercicio3_07_Contador is
	Port ( clk, RST : in  STD_LOGIC;--Entrada de reloj y Reset
           Q : out  STD_LOGIC_VECTOR (2 downto 0));--salida
end Ejercicio3_07_Contador;

architecture Behavioral of Ejercicio3_07_Contador is
	signal signalQ :  STD_LOGIC_VECTOR (2 downto 0);
begin
	Q <= signalQ;
	process(clk, RST)
	begin
		if (clk' event and clk = '1') then
			if (RST = '0' or signalQ = "111") then
				signalQ <= "000";
			else
				signalQ <= signalQ+1;
			end if;
		end if;
	end process;
end Behavioral;

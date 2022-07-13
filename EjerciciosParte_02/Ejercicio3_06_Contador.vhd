----------------------------------------------------------------------------------
-- Create Date:    22:15:00 07/12/2022 
-- Module Name:    Ejercicio3_06_Contador - Behavioral 
-- Karen Brigith Gonzaga Rivas
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity Ejercicio3_06_Contador is
    Port ( clk : in  STD_LOGIC;--Entrada de reloj
           RST : in  STD_LOGIC;--Entada reset
           Q : inout  STD_LOGIC_VECTOR (3 downto 0));
end Ejercicio3_06_Contador;

architecture Behavioral of Ejercicio3_06_Contador is
	signal signalQ : STD_LOGIC_VECTOR (3 downto 0);
begin
	process (clk,RST)
	begin
		Q <= signalQ;
		if (clk' event and clk ='1') then
			if(RST = '0' or signalQ ="101") then
				signalQ <= "0000";
			elsif(signalQ = "0000") then
				signalQ <= signalQ + 1;
			else
				signalQ <= signalQ + 2;
			end if;
		end if;
	end process;
end Behavioral;
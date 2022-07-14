----------------------------------------------------------------------------------
-- Create Date:    23:14:35 07/12/2022
-- Module Name:    Ejercicio3_09_Contador - Behavioral 
-- Karen Brigith Gonzaga Rivas
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Ejercicio3_09_Contador is
    Port ( clk, X : in  STD_LOGIC;
           Z_01, Z_02 : inout  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR(3 downto 0));
end Ejercicio3_09_Contador;

architecture Behavioral of Ejercicio3_09_Contador is
	signal signalQ: std_logic_vector(3 downto 0) := "0000";
begin
	Q <= signalQ;
	process(clk, X) 
	begin
	if(clk' event and clk = '1') then
		if(X = '0') then
			signalQ <= signalQ+1;
		else
			signalQ <= signalQ-1;
		end if;
		if(signalQ(0) = '0') then
			Z_01	<= '1';
			Z_02	<= '0';
		else
			Z_01	<= '0';
			Z_02	<= '1';
		end if;
	end if;
	end process;
end Behavioral;


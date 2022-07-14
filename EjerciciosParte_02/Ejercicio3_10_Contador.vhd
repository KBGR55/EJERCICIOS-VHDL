----------------------------------------------------------------------------------
-- Create Date:    23:18:31 07/12/2022 
-- Module Name:    Ejercicio3_10_Contador - Behavioral 
-- Karen Brigith Gonzaga Rivas
-- ff
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Ejercicio3_10_Contador is
    Port ( clk, C : in  STD_LOGIC;
           SAL_01, SAL_02 : inout  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0));
end Ejercicio3_10_Contador;

architecture Behavioral of Ejercicio3_10_Contador is
	signal signalQ: STD_LOGIC_VECTOR (3 downto 0) := "0000";
begin
	Q <= signalQ;
	process(clk, C)
	begin
		if (clk' event and clk = '1') then
			if (C = '0') then
				if(signalQ = "1001") then
					signalQ	<= "0000";
				else
					signalQ	<= signalQ+1;
				end if;
			else
				if(signalQ = "0000") then
					signalQ	<= "1001";
				else
					signalQ	<= signalQ-1;
				end if;
			end if;
			if (C = '0' and signalQ(0) = '1') then
				SAL_01	<= '1';
				SAL_02	<= '0';
			elsif(C = '1' and signalQ(0) = '0') then
				SAL_01	<= '0';
				SAL_02	<= '1';
			else
				SAL_01	<= '0';
				SAL_02	<= '0';
			end if;
		end if;
	end process;
end Behavioral;
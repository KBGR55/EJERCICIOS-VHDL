----------------------------------------------------------------------------------
-- Create Date:    15:33:11 07/28/2022
-- Module Name:    Replica01_registro_R - Behavioral 
-- Grupo 05
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--Diseño del registro R
-- registro de 4 bits
entity Replica01_registro_R is
    Port ( R : in  STD_LOGIC_VECTOR (3 downto 0);
           ER,CLK : in  STD_LOGIC;
           REG : inout  STD_LOGIC_VECTOR (3 downto 0));
end Replica01_registro_R;

architecture arq_regR of Replica01_registro_R is

begin
	process(CLK, ER, REG, R)begin
		if(CLK' event and CLK='1') then
			if ER= '0' then	
				REG <= R;
			else
				REG <=REG;
			end if;
		end if;
	end process;
end arq_regR;
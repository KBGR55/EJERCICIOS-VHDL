----------------------------------------------------------------------------------
-- Create Date:    23:05:09 05/23/2022 
-- Karen Brigith Gonzaga Rivas
-- Pregunta : 1.21
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ventilador is
    Port ( a,b : in  STD_LOGIC;
           s : out  STD_LOGIC);
end Ventilador;

architecture Behavioral of ventilador is

begin
	process(a,b)
	begin
		if a='1' then
			s<='1';
		elsif b='1' then
			s<='0';
		end if;
	end process;
end Behavioral;
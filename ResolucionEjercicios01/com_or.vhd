----------------------------------------------------------------------------------
-- Create Date:    23:15:56 05/23/2022 
-- Karen Brigith Gonzaga Rivas
-- Pregunta : 1.25
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity com_or is
    Port ( a,b : in  STD_LOGIC;
           f1 : out  STD_LOGIC);
end com_or;

architecture funcional of com_or is

begin
process (a,b) begin
	if (a='0' and b='0')then 
		f1<='0';
	else
		f1<='1';
	end if;
end process;
end funcional;
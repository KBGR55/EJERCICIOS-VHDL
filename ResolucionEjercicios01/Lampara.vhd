----------------------------------------------------------------------------------
-- Create Date:    19:12:55 05/23/2022 
-- Karen Brigith Gonzaga Rivas
-- Pregunta : 1.20
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Lampara is
    Port ( A : in  STD_LOGIC;
           S : out  STD_LOGIC);
end Lampara;

architecture Behavioral of Lampara is

begin
	process(A)
		begin
			if(A = '1') then S <= '1';
				else S <= '0';
			end if;
	end process;
end Behavioral;


----------------------------------------------------------------------------------
-- Create Date:    19:18:27 05/23/2022 
-- Karen Brigith Gonzaga Rivas
-- Pregunta : 1.19
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Robot is
    Port ( a,b,c,d : in  STD_LOGIC;
           bot : out  STD_LOGIC);
end Robot;

architecture Behavioral of Robot is

begin
bot <= '1' when (a='1' and b='1' and c='1' and d='1') else '0';
end Behavioral;


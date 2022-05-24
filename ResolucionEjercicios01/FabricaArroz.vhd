----------------------------------------------------------------------------------
-- Create Date:    22:15:22 05/23/2022 
-- Karen Brigith Gonzaga Rivas
-- Pregunta : 1.22
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FabricaArroz is
    Port ( a,b : in  STD_LOGIC;
           c,d,e : out  STD_LOGIC);
end FabricaArroz;

architecture Behavioral of FabricaArroz is

begin
c<='1' when (a='0' and b='0') else '0';
d<='1' when (a='1' and b='1') else '0';
e<='1' when (a='1' and b='1') else '0';
end Behavioral;
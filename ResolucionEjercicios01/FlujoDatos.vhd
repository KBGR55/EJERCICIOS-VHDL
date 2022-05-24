----------------------------------------------------------------------------------
-- Create Date:    21:58:19 05/23/2022 
-- Karen Brigith Gonzaga Rivas
-- Pregunta : 1.17
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FlujoDatos is
    Port ( a0,b0 : in  STD_LOGIC;
           a1,b1 : in  STD_LOGIC;
           a2,b2 : in  STD_LOGIC;
           a3,b3 : in  STD_LOGIC;
           F : out  STD_LOGIC);
end FlujoDatos;

architecture Behavioral of FlujoDatos is

begin
F <= '1' when ((a0='1' or b0='1') and (a1='1' or b1='1') and (a2='1' or b2='1') and (a3='1' or b3='1')) else '0';
end Behavioral;
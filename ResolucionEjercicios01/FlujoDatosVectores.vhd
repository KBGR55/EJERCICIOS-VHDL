----------------------------------------------------------------------------------
-- Create Date:    22:04:19 05/23/2022 
-- Karen Brigith Gonzaga Rivas
-- Pregunta : 1.18
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FlujoDatosVectores is
    Port ( a,b : in  STD_LOGIC_VECTOR (0 to 3);
           F : out  STD_LOGIC);
end FlujoDatosVectores;

architecture Behavioral of FlujoDatosVectores is

begin

F <= '1' when ((a(0)='1' or b(0)='1') and (a(1)='1' or b(1)='1') and (a(2)='1' or b(2)='1') and (a(3)='1' or b(3)='1')) else '0';
end Behavioral;
----------------------------------------------------------------------------------
-- Create Date:    23:03:33 05/23/2022 
-- Karen Brigith Gonzaga Rivas
-- Pregunta : 1.25
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity EstiloEstructuralEjercicio1_17 is
    Port ( A,B : in  STD_LOGIC_VECTOR (0 to 3);
           F : out  STD_LOGIC);
end EstiloEstructuralEjercicio1_17;

architecture Behavioral of EstiloEstructuralEjercicio1_17 is

Component andA is
      Port (A, B : in STD_LOGIC;
             S : out STD_LOGIC);
end Component;
	
Component orA is
      Port (A, B : in STD_LOGIC;
             S : out STD_LOGIC);
end Component;

signal X: STD_LOGIC_VECTOR(0 to 5);
begin
	U0: orA port map(A(0), B(0), X(0));
	U1: orA port map(A(1), B(1), X(1));
	U2: orA port map(A(2), B(2), X(2));
	U3: orA port map(A(3), B(3), X(3));
	U4: andA port map(X(0), X(1), X(4));
	U5: andA port map(X(2), X(3), X(5));
	U6: andA port map(X(4), X(5), F);
end Behavioral;
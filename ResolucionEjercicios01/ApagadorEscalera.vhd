----------------------------------------------------------------------------------
-- Create Date:    22:51:51 05/23/2022 
-- Karen Brigith Gonzaga Rivas
-- Pregunta : 1.24
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ApagadorEscalera is
    Port ( a,b : in  STD_LOGIC;
           c : out  STD_LOGIC);
end ApagadorEscalera;

architecture Behavioral of ApagadorEscalera is

Component andA is
      Port (A , B : in STD_LOGIC;
             S : out STD_LOGIC);
end Component;
	
Component orA is
      Port (A, B : in STD_LOGIC;
             S : out STD_LOGIC);
end Component;

signal x: STD_LOGIC_VECTOR(0 to 1);

begin

U0: andA port map(a, not b, x(0));
U1: andA port map(a, not b, x(1));
U2: orA port map(x(0), x(1), c);
-- C<= (a and not b)or (a and not b);
end Behavioral;
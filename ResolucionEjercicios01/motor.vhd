----------------------------------------------------------------------------------
-- Create Date:    19:03:03 05/23/2022 
-- Karen Brigith Gonzaga Rivas
-- Pregunta : 1.26
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity motor is
    Port ( a,b,c : in  STD_LOGIC;
           y : out  STD_LOGIC);
end motor;

architecture Behavioral of motor is
Component andA is
      Port (a,b : in STD_LOGIC;
             f: out STD_LOGIC);
end Component;
	
Component orA is
      Port (a,b : in STD_LOGIC;
             f: out STD_LOGIC);
end Component;
signal x: STD_LOGIC_VECTOR(0 to 3);
begin
U0: andA port map(a, not b, x(0));
U1: andA port map(c, not b, x(1));
U2: andA port map(a, c, x(2)); 
U3: orA port map(x(0), x(1), x(3));
U4: orA port map(x(2), x(3), y);
-- y= a/b + c/b + ac
-- y<=((a and b) or (c and b) or (a and c));
end Behavioral;
----------------------------------------------------------------------------------
-- Create Date:    22:40:16 05/23/2022 
-- Karen Brigith Gonzaga Rivas
-- Pregunta : 1.23
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FuncionesLogicas is
    Port ( A,B,C : in  STD_LOGIC;
           F,F0,F2 : out  STD_LOGIC);
end FuncionesLogicas;

architecture Operacion01 of FuncionesLogicas is
Component andA is
      Port (a,b: in STD_LOGIC;
             f: out STD_LOGIC);
end Component;

Component orA is
      Port (a,b: in STD_LOGIC;
             f: out STD_LOGIC);
end Component;
	signal x: STD_LOGIC;
begin
-- F0 =(A+B)*C
U0: orA port map (A, B, x);
U1: andA port map (x, C, F0);
-- F0<=(A or B) and C;
end Operacion01;

architecture Operacion02 of FuncionesLogicas is
Component andA is
      Port (a,b: in STD_LOGIC;
             f: out STD_LOGIC);
end Component;
Component orA is
      Port (a,b: in STD_LOGIC;
             f: out STD_LOGIC);
end Component;
signal x,x0: STD_LOGIC;
begin
-- F0=(A*C)+(B*C)
U0: andA port map(A, C, X);
U1: andA	port map(B, C, X0);
U2: orA port map(X, X0, F0);
--F0<=(A and C) or (B and C);
end Operacion02;

architecture Operacion03 of FuncionesLogicas is
Component andA is
      Port (a,b: in STD_LOGIC;
             f: out STD_LOGIC);
end Component;
begin
-- F=(B*C)
U0: andA port map(B, C, F);
--F<=(B and C);
end Operacion03;

architecture Operacion04 of FuncionesLogicas is
Component orA is
      Port (a,b: in STD_LOGIC;
             f: out STD_LOGIC);
end Component;
begin
-- F2=(A+B)
U0: orA port map(A, C, F2);
-- F2<=(A or C);
end Operacion04;
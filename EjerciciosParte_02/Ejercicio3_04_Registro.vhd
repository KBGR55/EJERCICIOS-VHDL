----------------------------------------------------------------------------------
-- Create Date:    21:48:31 07/12/2022 
-- Module Name:    Ejercicio3_04_Registro - Behavioral 
-- Karen Brigith Gonzaga Rivas
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ejercicio3_04_Registro is
	port( clk, ModoC: IN STD_LOGIC;--Entrada de Reloj,  modo de control
			serieIn: INOUT STD_LOGIC;
			Q : OUT STD_LOGIC_VECTOR(0 TO 3));--Salidas
end Ejercicio3_04_Registro;

architecture Behavioral of Ejercicio3_04_Registro is
 signal aux: STD_LOGIC_VECTOR(0 TO 3);
begin
	serieIn <= not(aux(0) or aux(1) or aux(2));
	Q <=aux;
process (clk)
	begin
	if (clk' EVENT and clk = '0' and ModoC = '0') THEN 
		case aux IS
		when "0000" => aux	<= "1000" ;
		when "1000" => aux	<= "0100" ;
		when "0100" => aux	<= "0010" ;
		when "0010" => aux   <= "0001" ;
		when "0001" => aux	<= "0000" ;
		when others => aux   <= "0000" ; 
		end case;
	end if;
end process;
end Behavioral;
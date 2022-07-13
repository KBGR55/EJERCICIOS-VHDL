----------------------------------------------------------------------------------
-- Create Date:    22:01:09 07/12/2022 
-- Module Name:    Ejercicio3_05_RegistroSemaforo - Behavioral 
-- Karen Brigith Gonzaga Rivas
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ejercicio3_05_RegistroSemaforo is
	port( clk, MC: IN STD_LOGIC;--Entrada reloj
			serieIn: INOUT STD_LOGIC;
			Q : OUT STD_LOGIC_VECTOR(0 TO 2)	);-- Salida colores
end Ejercicio3_05_RegistroSemaforo;

architecture Behavioral of Ejercicio3_05_RegistroSemaforo is
	signal signalAux: STD_LOGIC_VECTOR(0 TO 2);
begin
	serieIn <= not(signalAux(0) or signalAux(1) or signalAux(2));
	Q <=signalAux;
process (clk)
	begin
	if (clk' event and clk= '0' and MC = '0') THEN 
		case signalAux IS
		when "000" => signalAux	<= "100" ;
		when "100" => signalAux	<= "010" ;
		when "010" => signalAux	<= "001" ;
		when others => signalAux <= "000" ; 
		end case;
	end if;
end process;
end Behavioral;
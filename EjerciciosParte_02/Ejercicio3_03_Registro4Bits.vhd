----------------------------------------------------------------------------------
-- Create Date:    21:12:52 07/12/2022 
-- Module Name:    Ejercicio3_03_Registro4Bits - Behavioral 
-- Karen Brigith Gonzaga Rivas
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ejercicio3_03_Registro4Bits is
	port( clk,REST: IN STD_LOGIC;--Entrada de Reloj, reset
			R,L: IN STD_LOGIC;--Entrada serie desplazamiento a la derecha , serie desplazamiento a la izquierda
	      datos : IN STD_LOGIC_VECTOR(0 TO 3);--Entrada de datos
			S : IN STD_LOGIC_VECTOR(0 TO 1);--Seniales de control
			Q : OUT STD_LOGIC_VECTOR(0 TO 3));--Salida de datos
end Ejercicio3_03_Registro4Bits;

architecture Behavioral of Ejercicio3_03_Registro4Bits is
	signal aux: STD_LOGIC_VECTOR(0 TO 3);
begin
	process (clk, REST)
	begin
		if(REST = '0') then 
			aux <= "0000";
		elsif (clk' event and clk = '1') THEN 
			case S  is
				when "01" => aux <= R & aux(0 TO 2) ;
				when "10" => aux <= L & aux(1 TO 3) ;
				when "11" => aux <= datos;
				when others => aux <= "UUUU";
			end case;
		end if;
	end process;
end Behavioral;
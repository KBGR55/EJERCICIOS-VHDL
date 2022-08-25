----------------------------------------------------------------------------------
-- Create Date:    13:53:33 06/19/2022 
-- Module Name:    ALU_8BITS - RTL
-- Karen Brigith Gonzaga Rivas
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU_8BITS is
    Port ( a,b : in  STD_LOGIC_VECTOR (7 downto 0);   -- Entradas
           opcode : in  STD_LOGIC_VECTOR (1 downto 0);-- Entrada codigo de operacion 
           d : out  STD_LOGIC_VECTOR (7 downto 0));   -- Salida
end ALU_8BITS;

architecture RTL of ALU_8BITS is
begin
	process(a,b,opcode)
	begin
	-- unsigned( ) se usa para no tomar en cuenta el signo
		case opcode is
			when "00" => 
			 d <= STD_LOGIC_VECTOR (unsigned(a) + unsigned(b)); -- Suma
			when "01" => 
			 d <= STD_LOGIC_VECTOR (unsigned(a) - unsigned(b)); -- Resta
			when "10" => 
			 d <= a and b; -- Operacion and
			when others=> 
			 d <= a or b;  -- Operacion or
		end case;
	end process;
end architecture ;
----------------------------------------------------------------------------------
-- Replica de una ALU
-- Create Date:    09:29:39 06/22/2022 
-- Module Name:    ALU - Behavioral 
-- Karen Gonzaga Rivas
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity ALU is
	port( a, b : in std_logic_vector(7 downto 0); -- Entradas
		  operacion: in std_logic_vector(3 downto 0); -- Operacion a realizar
		  salida : out std_logic_vector(7 downto 0));
end ALU;

architecture Behavioral of ALU is

begin
	process(a, b, operacion)
	begin
		case operacion is
			when "0000"=> salida <= a;
			when "0001"=> salida <= b;
			when "0010"=> salida <= not a;
			when "0011"=> salida <= not b;
			when "0100"=> salida <= a and b;
			when "0101"=> salida <= a nand b;
			when "0110"=> salida <= a or b;
			when "0111"=> salida <= a nor b;
			when "1000"=> salida <= a xor b;
			when "1001"=> salida <= a xnor b;
			when "1010"=> salida <= std_logic_vector(unsigned(a) + unsigned(b)); -- unsigned( ) se usa para no tomar en cuenta el signo
			when "1011"=> salida <= std_logic_vector(unsigned(a) - unsigned(b));
			when others => salida <= "00000000";
		end case;
	end process;
end Behavioral;


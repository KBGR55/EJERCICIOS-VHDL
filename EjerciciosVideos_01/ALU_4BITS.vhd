----------------------------------------------------------------------------------
-- Create Date:    14:04:02 06/19/2022 
-- Module Name:    ALU_4BITS - Behavioral 
-- Karen Brigith Gonzaga Rivas
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU_4BITS is
	Port( a,b: in STD_LOGIC_VECTOR (3 downto 0);
			opcode : in STD_LOGIC_VECTOR (2 downto 0); -- opcode operacion
			Cout : out STD_LOGIC;
			Yout : out STD_LOGIC_VECTOR (3 downto 0));
end ALU_4BITS;
 
architecture Behavioral of ALU_4BITS is 
	signal Y_tmp : STD_LOGIC_VECTOR (4 downto 0) := (others => '0');
begin
-- Se debe concatenar un cero a la izquierda para que aparezca el acarreo 
	-- Operaciones logicas
	with opcode(2 downto 0) select						
		Y_tmp <= ('0' & a) when "000",					-- 000    Transtarencia de A
					('0' & b) when "001",					-- 001    Transtarencia de B
				   ('0' & a) and ('0' & b) when "010", -- 010    A and B
					('0' & a) or ('0' & b) when "011",  -- 011    A or B
	-- Operaciones aritmeticas
					('0' & a) + b when "100",    -- 100    A + B
					('0' & a) + '1' when "101",  -- 101    A + 1
					('0' & a) - '1' when "110",  -- 110    A - 1
					('0' & a) - b when others;   -- 111    A - B
						
	Cout <= Y_tmp(4); -- Bit mas significativo que viene siendo el acarreo
	Yout <= Y_tmp(3 downto 0);
end Behavioral;
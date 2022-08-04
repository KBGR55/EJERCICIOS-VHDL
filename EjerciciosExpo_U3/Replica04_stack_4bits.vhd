----------------------------------------------------------------------------------
-- Create Date:    16:13:49 07/28/2022 
-- Module Name:    Replica04_stack_4bits - Behavioral 
-- Grupo 05
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Replica04_stack_4bits is
    Port ( CLK, FE, PUSH, POP : in  STD_LOGIC;
           PC : in  STD_LOGIC_VECTOR (3 downto 0);
           ST : inout  STD_LOGIC_VECTOR (3 downto 0));
end Replica04_stack_4bits;

architecture arq_stack of Replica04_stack_4bits is
	signal var: std_logic_vector (3 downto 0);
begin
	process (FE, CLK, PUSH, POP, PC)
		variable x: std_logic_vector (3 downto 0);
	begin
		if (CLK' event and CLK = '1') then
			if (FE = '0') then --Habilitacion de stack pointer(ST)
				if (PUSH = '1') then
					x := PC;--almacena dato
					var <= x; 
				elsif (POP = '0') then
					ST <= var;--saca dato
				else
					ST<=ST;
				end if;
			end if;
		end if;
	end process;
end arq_stack;
----------------------------------------------------------------------------------
-- Create Date:    18:33:08 07/06/2022 
-- Module Name:    Replica_16_contador - Behavioral 
-- Karen Brigith Gonzaga Rivas
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Replica_16_contador is
    Port ( clk,UP : in  STD_LOGIC;
           q : inout  STD_LOGIC_VECTOR (3 downto 0));
end Replica_16_contador;

architecture Behavioral of Replica_16_contador is

begin
	process(clk, UP)
	begin
		if(clk' event and clk='1') then
			if(UP='0') then
				q <= q+1;
			else
				q <= q-1;
			end if;
		end if;
	end process;
end Behavioral;
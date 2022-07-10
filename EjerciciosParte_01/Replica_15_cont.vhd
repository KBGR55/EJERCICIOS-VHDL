----------------------------------------------------------------------------------
-- Create Date:    18:22:12 07/06/2022 
-- Module Name:    Replica_15_cont - Behavioral 
-- Karen Brigith Gonzaga Rivas
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Replica_15_cont is
    Port ( clk, reset : in  STD_LOGIC;
           q : inout  integer range 0 to 15);
end Replica_15_cont;

architecture Behavioral of Replica_15_cont is

begin
	process(clk, reset)
	begin
		if(clk' event and clk='1') then
			if(reset='1' or q=9) then
				q <= 0;
			else
				q <= q+1;
			end if;
		end if;
	end process;
end Behavioral;
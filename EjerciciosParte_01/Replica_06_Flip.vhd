----------------------------------------------------------------------------------
-- Create Date:    16:00:17 07/06/2022 
-- Module Name:    Replica_06_Flip - Behavioral 
-- Karen Brigith Gonzaga Rivas
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Replica_06_Flip is
    Port ( D,EN,RESET,clk : in  STD_LOGIC;
           Q : inout  STD_LOGIC);
end Replica_06_Flip;

architecture Behavioral of Replica_06_Flip is
	signal q_aux:STD_LOGIC;
begin
	process (clk,RESET,EN)
	begin
		if RESET='1' then
			q_aux <= '0';
		elsif(clk' event and clk='1') then
			if(EN='1') then
				q_aux <= D;
			else
				q_aux <= Q;
			end if;
		end if;
	end process;
	Q <= q_aux;
end Behavioral;

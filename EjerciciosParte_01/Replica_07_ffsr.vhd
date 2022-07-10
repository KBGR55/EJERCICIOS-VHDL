----------------------------------------------------------------------------------
-- Create Date:    16:16:47 07/06/2022 
-- Module Name:    Replica_07_ffsr - Behavioral 
-- Karen Brigith Gonzaga Rivas
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Replica_07_ffsr is
    Port ( S,R,clk : in  STD_LOGIC;
           Q,Qn : inout  STD_LOGIC);
end Replica_07_ffsr;

architecture Behavioral of Replica_07_ffsr is

begin
	process (clk,S,R)
	begin
		if (clk' event and clk='1') then
			if(S='0' and R='1')then
				Q <= '0';
				Qn <= '1';
			elsif(S='1' and R='0')then
				Q <= '1';
				Qn <= '0';
			elsif(S='0' and R='0')then
				Q <= Q;
				Qn <= Qn;
			else 
				Q <= '-';
				Qn <= '-';
			end if;
		end if;
	end process;
end Behavioral;
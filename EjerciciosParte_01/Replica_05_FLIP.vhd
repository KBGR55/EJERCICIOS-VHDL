----------------------------------------------------------------------------------
-- Create Date:    15:54:02 07/06/2022 
-- Module Name:    Replica_05_FLIP - Behavioral 
-- Karen Brigith Gonzaga Rivas
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Replica_05_FLIP is
    Port ( D,RESET,clk : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end Replica_05_FLIP;

architecture Behavioral of Replica_05_FLIP is

begin
	process (clk,D,RESET)
	begin
		if RESET='1' then
			Q <= '0';
		elsif(clk' event and clk='1') then
			Q <= D;
		end if;
	end process;
end Behavioral;

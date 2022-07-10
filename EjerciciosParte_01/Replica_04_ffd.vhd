----------------------------------------------------------------------------------
-- Create Date:    15:43:26 07/06/2022
-- Module Name:    Replica_04_ffd - Behavioral 
-- Karen Brigith Gonzaga Rivas
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Replica_04_ffd is
Port ( D,CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end Replica_04_ffd;

architecture forma01 of Replica_04_ffd is

begin
	process (CLK )
	begin
		if (CLK' event and CLK='1') then
			Q <=D;
		end if;
	end process;
end  forma01;

architecture forma02 of Replica_04_ffd is

begin
	process (CLK )
	begin
		if (rising_edge(CLK)) then
			Q <=D;
		end if;
	end process;
end forma02;


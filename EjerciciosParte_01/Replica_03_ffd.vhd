----------------------------------------------------------------------------------
-- Create Date:    15:37:26 07/06/2022 
-- Module Name:    Replica_03_ffd - Behavioral 
-- Karen Brigith Gonzaga Rivas
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Replica_03_ffd is
    Port ( D,CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end Replica_03_ffd;

architecture Behavioral of Replica_03_ffd is

begin
	process (CLK )
	begin
		if (CLK' event and CLK='1') then
			Q <=D;
		end if;
	end process;

end Behavioral;
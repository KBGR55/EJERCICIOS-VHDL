----------------------------------------------------------------------------------
-- Create Date:    16:53:52 07/06/2022 
-- Module Name:    Replica_10_reg - Behavioral 
-- Karen Brigith Gonzaga Rivas
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Replica_10_reg is
    Port ( clk : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR (0 to 7);
           Q : out  STD_LOGIC_VECTOR (0 to 7));
end Replica_10_reg;

architecture Behavioral of Replica_10_reg is

begin
	process (clk)
	begin
		if(clk' event and clk='1') then 
			Q <= D;
		end if;
	end process;
end Behavioral;

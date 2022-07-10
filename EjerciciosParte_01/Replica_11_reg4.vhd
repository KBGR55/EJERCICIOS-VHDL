----------------------------------------------------------------------------------
-- Create Date:    17:05:07 07/06/2022 
-- Module Name:    Replica_11_reg4 - Behavioral 
-- Karen Brigith Gonzaga Rivas
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Replica_11_reg4 is
    Port ( clk,clr : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR (3 downto 0);
           Q,Qn : inout STD_LOGIC_VECTOR (3 downto 0));
end Replica_11_reg4;

architecture Behavioral of Replica_11_reg4 is

begin
	process (clk,clr)
	begin
		if(clk' event and clk='1') then 
			if(clr = '1')then
				Q <= D;
				Qn <= not Q;
			else
				Q <= "0000";
				Qn <= "1111";
			end if;
		end if;
	end process;
end Behavioral;
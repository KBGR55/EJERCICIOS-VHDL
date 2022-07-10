----------------------------------------------------------------------------------
-- Create Date:    17:33:48 07/06/2022
-- Module Name:    Replica_13_contador - Behavioral 
-- Karen Brigith Gonzaga Rivas
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library unisim;
use unisim.vcomponents.all;
entity Replica_13_contador is
    Port ( clk : in  STD_LOGIC;
           q : inout  STD_LOGIC_VECTOR (3 downto 0));
	attribute pin_numbers:String;
	attribute pin_numbers of Replica_13_contador: entity is "clk:1" &"q(3):14"&"q(2):15"&"q(1):16"&"q(0):17";
end Replica_13_contador; 

architecture Behavioral of Replica_13_contador is

begin
	process(clk)
	begin
		if(clk' event and clk='1') then 
				q <= q + 1;
		end if;
	end process;
end Behavioral;
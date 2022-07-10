----------------------------------------------------------------------------------
-- Create Date:    21:23:15 07/06/2022 
-- Module Name:    Replica_20_diagrama - Behavioral 
-- Karen Brigith Gonzaga Rivas
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Replica_20_diagrama is
    Port ( clk, x : in  STD_LOGIC;
           z : out  STD_LOGIC);
end Replica_20_diagrama;

architecture Behavioral of Replica_20_diagrama is
	type estados is (d0,d1,d2,d3 );
	signal edo_presente,edo_futuro:estados;
begin
	proceso1:process (edo_presente, x) begin
		case edo_presente is
			when d0 => z <='0';
				if x='1' then
					edo_futuro <= d1;
				else
					edo_futuro <= d0;
				end if;
			when d1 => z <='0';
				if x='1' then
					edo_futuro <= d2;
				else
					edo_futuro <= d1;
				end if;
			when d2 => z <='0';
				if x='1' then
					edo_futuro <= d3;
				else
					edo_futuro <= d0;
				end if;
			when d3 => 
				if x='1' then
					edo_futuro <= d0;
					z <= '1';
				else
					edo_futuro <= d3;
					z <= '0';
				end if;		
		end case;
	end process proceso1;
	
	proceso2:process (edo_presente, x) begin
		if(clk' event and clk='1') then
		 edo_presente <= edo_futuro;
		end if;
	end process proceso2;
end Behavioral;
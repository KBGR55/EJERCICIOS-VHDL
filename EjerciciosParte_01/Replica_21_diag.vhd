----------------------------------------------------------------------------------
-- Create Date:    22:02:18 07/06/2022 
-- Module Name:    Replica_21_diag - Behavioral 
-- Karen Brigith Gonzaga Rivas
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Replica_21_diag is
    Port ( clk,x : in  STD_LOGIC;
           z : out  STD_LOGIC);
end Replica_21_diag;

architecture Behavioral of Replica_21_diag is
	type estados is (q0,q1,q2,q3,q4 );
	signal edo_presente,edo_futuro:estados;
begin
	proceso1:process (edo_presente, x) begin
		case edo_presente is
			when q0 => z <= '0';
				if x='0' then
					edo_futuro <= q4;
				else
					edo_futuro <= q1;
				end if;
			when q1 => z <='0';
				if x='0' then
					edo_futuro <= q4;
				else
					edo_futuro <= q2;
				end if;
			when q2 =>
				if x='0' then
					edo_futuro <= q4;
					z <= '0';
				else
					edo_futuro <= q3;
					z <= '1';
				end if;
			when q3 => z <='0';
				if x='0' then
					edo_futuro <= q3;
				else
					edo_futuro <= q3;
				end if;
			when q4 => z <='0';
				if x='0' then
					edo_futuro <= q4;
				else
					edo_futuro <= q1;
				end if;				
		end case;
	end process proceso1;
	
	proceso2:process (clk) begin
		if(clk' event and clk='1') then
		 edo_presente <= edo_futuro;
		end if;
	end process proceso2;
end Behavioral;
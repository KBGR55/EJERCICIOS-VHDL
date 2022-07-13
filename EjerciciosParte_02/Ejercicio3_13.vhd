----------------------------------------------------------------------------------
-- Create Date:    20:00:25 07/12/2022 
-- Module Name:    Ejercicio3_13 - Behavioral 
-- Karen Brigith Gonzaga Rivas
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ejercicio3_13 is
    Port ( clk : in  STD_LOGIC;
           x : in  STD_LOGIC;
			  RST : in  STD_LOGIC;
           s : out  STD_LOGIC);
end Ejercicio3_13;

architecture Behavioral of Ejercicio3_13 is
	type estados is(A, B, C, D);
	signal presente, futuro: estados;
begin
	proceso_01: process (presente, x) begin
		case presente is
			when A => s <= '0';
				if x = '0' then 				
					futuro <= D;
				else
					futuro <= B;
				end if;
			when B => s <= '0';
				if x = '0' then 
					futuro <= D;
				else
					futuro <= C;
				end if;
			when C => s <= '0';
				if x = '0' then 
					futuro <= D;
				else
					futuro <= B;
				end if;
			when D =>
				if x = '0' then 
					futuro <= D;
					s <= '0';
				else
					futuro <= A;
					s <= '1';
				end if;
		end case;
	end process proceso_01;
 
	proceso_02: process (clk) begin
		if(RST='1')then
			presente <= A;
		elsif(clk'event and clk='1') then
			presente <= futuro;
		end if;
	end process proceso_02;

end Behavioral;

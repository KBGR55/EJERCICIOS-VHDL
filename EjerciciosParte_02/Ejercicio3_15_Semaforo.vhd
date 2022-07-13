----------------------------------------------------------------------------------
-- Create Date:    18:12:51 07/12/2022 
-- Module Name:    Ejercicio3_15_Semaforo - Behavioral 
-- Karen Brigith Gonzaga Rivas
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Ejercicio3_15_Semaforo is
    Port ( clk,mc : in  STD_LOGIC;
           q : inout  STD_LOGIC_VECTOR (5 downto 0):="000000";
           s : inout  STD_LOGIC;
           NorteSur, EO : out  STD_LOGIC_VECTOR (2 downto 0));
end Ejercicio3_15_Semaforo;

architecture Behavioral of Ejercicio3_15_Semaforo is

begin
	process(clk) 
	begin
		if (clk' event and clk='0') then
			q <= q+1;
			if (q="110011") then
				q<="000001";
			end if;
		end if;
	end process;
	
--	NorteSur : rojo - ambar- verde
--	EO : verde - ambar - rojo

	process (q) 
	begin
		case q is
		when "000001"=>
			if s='0' then
				NorteSur<="100";--ROJO
				EO<= "100";--VERDE
			elsif mc= '1' then
				NorteSur<= "000";
				EO<= "000";
			end if;
		when "000010"=>
			if s='1' then
				NorteSur<= "001";--verde
				EO<= "001";--rojo
			elsif mc= '1' then
				NorteSur<= "000";
				EO<= "000";
			end if;
		when "000011"=>
			if s='1' then
				NorteSur<= "010";--ambar
				EO<= "001";--rojo
			elsif mc= '1' then
				NorteSur<= "000";
				EO<= "000";
			end if;
		when "000100"=>
			if s='1' then
				NorteSur<= "010";--ambar
				EO<= "001";--rojo
			elsif mc= '1' then
				NorteSur<= "000";
				EO<= "000";
			end if;
		when "000101"=>
			if s='0' then
				NorteSur<= "100";--rojo
				EO<= "100";--verde
			elsif mc= '1' then
				NorteSur<= "000";
				EO<= "000";
			end if;
		when others =>
			NorteSur<= "100";
			EO<= "001";
		end case;
	end process;
end Behavioral;
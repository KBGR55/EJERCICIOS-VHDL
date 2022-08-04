----------------------------------------------------------------------------------
-- Create Date:    15:56:00 07/28/2022 
-- Module Name:    Replica03_contador_microprograma - Behavioral 
-- Grupo 05
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
--use IEEE.STD_LOGIC_arith.ALL;
--Contador de microprograma (PC)
entity Replica03_contador_microprograma is
    Port ( CIN,CLK : in  STD_LOGIC;
           Y : in  STD_LOGIC_VECTOR (3 downto 0);
           COUT : inout  STD_LOGIC;
           PC : inout  STD_LOGIC_VECTOR (3 downto 0));
end Replica03_contador_microprograma;

architecture arq_mpc of Replica03_contador_microprograma is

begin
	process (CLK, Y, CIN)begin
		if(CLK'event and CLK='1')then
			if(CIN='1') then
				PC<= Y+1;
			else
				PC<= Y;
			end if;
		end if;
	end process;
COUT<= (CIN and Y(0) and Y(1) and Y(2) and Y(3));
end arq_mpc;
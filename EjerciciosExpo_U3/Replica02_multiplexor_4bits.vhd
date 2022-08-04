----------------------------------------------------------------------------------
-- Create Date:    15:46:18 07/28/2022 
-- Module Name:    Replica02_multiplexor_4bits - Behavioral 
-- Grupo 05
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- multiplexor de seleccion
entity Replica02_multiplexor_4bits is
    Port ( D,R,ST,PC : in  STD_LOGIC_VECTOR (3 downto 0);--entradas
           S : in  STD_LOGIC_VECTOR (1 downto 0);--entradas de seleccion
           Y : out  STD_LOGIC_VECTOR (3 downto 0));--Salida
end Replica02_multiplexor_4bits;

architecture arq_mux4 of Replica02_multiplexor_4bits is

begin
	with S select
		  Y <= PC when "00",
				ST when "01",
				R when "10",
				D when others;
end arq_mux4;
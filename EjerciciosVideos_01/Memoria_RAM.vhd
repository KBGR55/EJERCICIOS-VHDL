----------------------------------------------------------------------------------
-- Create Date:    15:30:46 06/19/2022 
-- Module Name:    Memoria_RAM - Behavioral 
-- Karen Brigith Gonzaga Rivas
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Memoria_RAM is
	Port( clk: in STD_LOGIC;
			dato_entrada, direccion : in STD_LOGIC_VECTOR(1 downto 0);
			CE, OE, WE : in STD_LOGIC;
			dato_salida : out STD_LOGIC_VECTOR(1 downto 0));
end Memoria_RAM;

architecture Behavioral of Memoria_RAM is
	type datos is array (0 to 3) of STD_LOGIC_VECTOR(1 downto 0);
	signal signalDatos : datos;
begin
	process(clk)
	begin
		if CE = '0' then
			if (clk'event and clk='1') then
				if WE = '0' then
					signalDatos(to_integer(unsigned(direccion))) <= dato_entrada;
				else
					dato_salida  <= signalDatos(to_integer(unsigned(direccion)));
				end if;
			end if;
		end if;
	end process;
end Behavioral;
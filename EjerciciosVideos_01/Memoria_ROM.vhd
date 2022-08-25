----------------------------------------------------------------------------------
-- Create Date:    15:20:10 06/19/2022 
-- Module Name:    Memoria_ROM - Behavioral 
-- Karen Brigith Gonzaga Rivas
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity Memoria_ROM is
	Port( salida : out std_logic_vector(1 downto 0);
		   direccion: in std_logic_vector (1 downto 0));
end Memoria_ROM;

architecture Behavioral of Memoria_ROM is
	type datos is array (0 to 3) of std_logic_vector(1 downto 0);
	constant rom : datos := ("11", "10", "00", "01");
begin
	salida <= rom(to_integer(unsigned(direccion)));
end Behavioral;
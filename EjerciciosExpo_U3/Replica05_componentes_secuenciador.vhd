----------------------------------------------------------------------------------
-- Create Date:    16:42:55 07/28/2022 
-- Module Name:    Replica05_componentes_secuenciador - Behavioral 
-- Grupo05
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;

package Replica05_componentes_secuenciador is --declaracion del paquete
	
	component Replica01_registro_R port ( 
		R : in  STD_LOGIC_VECTOR (3 downto 0);
      ER,CLK : in  STD_LOGIC;
      REG : inout  STD_LOGIC_VECTOR (3 downto 0));
	end component;
	
	component Replica03_contador_microprograma port ( 
		CIN,CLK : in  STD_LOGIC;
      Y : in  STD_LOGIC_VECTOR (3 downto 0);
      COUT : inout  STD_LOGIC;
      PC : inout  STD_LOGIC_VECTOR (3 downto 0));
	end component;
		
	component Replica04_stack_4bits port ( 
		CLK, FE, PUSH, POP : in  STD_LOGIC;
      PC : in  STD_LOGIC_VECTOR (3 downto 0);
      ST : inout  STD_LOGIC_VECTOR (3 downto 0));
	end component;
	
	component Replica02_multiplexor_4bits port ( 
		D,R,ST,PC : in  STD_LOGIC_VECTOR (3 downto 0);--entradas
      S : in  STD_LOGIC_VECTOR (1 downto 0);--entradas de seleccion
      Y : buffer  STD_LOGIC_VECTOR (3 downto 0));--Salida
	end component;
	
end Replica05_componentes_secuenciador;
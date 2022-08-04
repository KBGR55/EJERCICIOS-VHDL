----------------------------------------------------------------------------------
-- Create Date:    17:03:42 07/28/2022 
-- Module Name:    amd2909 - Behavioral 
-- Grupo05
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Replica05_componentes_secuenciador.ALL;

entity amd2909 is
Port ( R: in std_logic_vector (3 downto 0);--Entradas de registro | Utilizadas para mantener el estado presente de hold y reten
		 D: in std_logic_vector (3 downto 0);--Entradas directas | Utilizadas como entradas del secuenciador para indicar un cambio de direccion en la logica del programa
		 ER: in std_logic;--Habilitacion del reguistro R
       CLK: in std_logic; 
		 S: in std_logic_vector (1 downto 0);--lineas de seleccion que determinan una de cuatro fuentes diferentes de entrada
       FE: in std_logic;--Habilitacion de stack pointer(ST)
       PUSH,POP: in std_logic;--seniales para brincos y retornos de subrutina
		 CIN: in std_logic;--Acarreo de entrada
		 COUT: inout std_logic;--Acarreo de salida
		 Y: buffer std_logic_vector (3 downto 0));--Salidas del secuenciador
end amd2909;

architecture Behavioral of amd2909 is
	signal REG: std_logic_vector (3 downto 0);
	signal ST: std_logic_vector (3 downto 0); 
	signal PC: std_logic_vector (3 downto 0);
begin
--inicia interconexión de los componentes
	ul: Replica01_registro_R port map (CLK => CLK, ER => ER, REG => REG, R => R);
	u2: Replica03_contador_microprograma port map (CIN =>CIN, COUT => COUT, CLK => CLK, Y =>Y, PC=>PC);
	u3: Replica04_stack_4bits port map (CLK=>CLK, FE => FE, PUSH => PUSH, POP => POP, PC => PC, ST => ST);
	u4: Replica02_multiplexor_4bits port map (D=>D, R=>R, ST=>ST, PC=>PC, S=>S, Y=>Y);
end Behavioral;
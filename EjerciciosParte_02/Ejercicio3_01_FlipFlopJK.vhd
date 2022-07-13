----------------------------------------------------------------------------------
-- Create Date:    17:49:23 07/12/2022 
-- Module Name:    Ejercicio3_01_FlipFlopJK - Behavioral 
-- Karen Brigith Gonzaga Rivas
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ejercicio3_01_FlipFlopJK is
	port( Q, notQ : out std_logic;
         clk, j, k : in std_logic );
end Ejercicio3_01_FlipFlopJK;

architecture Behavioral of Ejercicio3_01_FlipFlopJK is
	 signal qAux : std_logic;
begin
	 Q <= qAux;
    notQ <= not qAux;
    main_process : process (clk)
    begin
	 if rising_edge (clk) then
            if j = '0' and k = '0' then
               qAux <= qAux;
            elsif j = '0' and k = '1' then
               qAux <= '0';
            elsif j = '1' and k = '0' then
               qAux <= '1';
            else
               qAux <= not qAux;
            end if;
        end if;
    end process;
end Behavioral;

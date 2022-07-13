----------------------------------------------------------------------------------
-- Create Date:    17:53:27 07/12/2022
-- Module Name:    Ejercicio3_02_FlipFlopT - Behavioral 
-- Karen Brigith Gonzaga Rivas
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ejercicio3_02_FlipFlopT is
	 port( Q, notQ : out std_logic;
			 clk, t : in std_logic);
end Ejercicio3_02_FlipFlopT;

architecture Behavioral of Ejercicio3_02_FlipFlopT is
    signal qAux: std_logic;
begin
    Q <= qAux;
    notQ <= not qAux;
    main_process : process (clk)
    begin
        if rising_edge (clk) then
            if qAux = 'U' then
                qAux <= t;
            else
                if t = '1' then
						qAux<= not qAux;
                else
						qAux <= qAux;
                end if;
            end if;
        end if;
    end process;
end Behavioral;
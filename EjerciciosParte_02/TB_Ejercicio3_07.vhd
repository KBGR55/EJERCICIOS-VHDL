--------------------------------------------------------------------------------
-- Create Date:   16:45:49 07/13/2022
-- Module Name:   C:/Users/K.G/Documents/ProgramasIse/EjerciciosParte_02/TB_Ejercicio3_07.vhd
-- Project Name:  EjerciciosParte_02
-- VHDL Test Bench Created by ISE for module: Ejercicio3_07_Contador
-- Karen Brigith Gonzaga Rivas
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_Ejercicio3_07 IS
END TB_Ejercicio3_07;
 
ARCHITECTURE behavior OF TB_Ejercicio3_07 IS  
    -- Component Declaration for the Unit Under Test (UUT) 
    COMPONENT Ejercicio3_07_Contador
    PORT(clk : IN  std_logic;
         RST : IN  std_logic;
         Q : OUT  std_logic_vector(2 downto 0));
    END COMPONENT;
   --Inputs
   signal clk : std_logic := '0';
   signal RST : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(2 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Ejercicio3_07_Contador PORT MAP (clk => clk,
          RST => RST, Q => Q );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
   -- Stimulus process
   stim_proc: process
   begin		
      wait for clk_period;
			RST	<= '0';
		wait for clk_period;
			RST	<= '1';
      wait;
   end process;
END;
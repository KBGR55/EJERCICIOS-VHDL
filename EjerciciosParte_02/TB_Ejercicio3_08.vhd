--------------------------------------------------------------------------------
-- Create Date:   16:50:43 07/13/2022 
-- Module Name:   C:/Users/K.G/Documents/ProgramasIse/EjerciciosParte_02/TB_Ejercicio3_08.vhd
-- Project Name:  EjerciciosParte_02
-- VHDL Test Bench Created by ISE for module: Ejercicio3_08_Contador
-- Karen Brigith Gonzaga Rivas
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_Ejercicio3_08 IS
END TB_Ejercicio3_08;
 
ARCHITECTURE behavior OF TB_Ejercicio3_08 IS 
    -- Component Declaration for the Unit Under Test (UUT) 
    COMPONENT Ejercicio3_08_Contador
    PORT(clk : IN  std_logic;
         X : IN  std_logic;
         Q : OUT  std_logic_vector(1 downto 0));
    END COMPONENT;
   --Inputs
   signal clk : std_logic := '0';
   signal X : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: Ejercicio3_08_Contador PORT MAP (
          clk => clk,
          X => X,
          Q => Q
        );

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
		X <= '1';
		wait for clk_period*10;
		X <= '0';
      wait;
   end process;
END;
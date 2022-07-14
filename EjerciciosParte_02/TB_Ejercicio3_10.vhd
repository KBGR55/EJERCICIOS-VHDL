--------------------------------------------------------------------------------
-- Create Date:   16:57:07 07/13/2022
-- Module Name:   C:/Users/K.G/Documents/ProgramasIse/EjerciciosParte_02/TB_Ejercicio3_10.vhd
-- Project Name:  EjerciciosParte_02
-- VHDL Test Bench Created by ISE for module: Ejercicio3_10_Contador
-- Karen Brigith Gonzaga Rivas
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_Ejercicio3_10 IS
END TB_Ejercicio3_10;
 
ARCHITECTURE behavior OF TB_Ejercicio3_10 IS  
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT Ejercicio3_10_Contador
    PORT(clk : IN  std_logic;
         C : IN  std_logic;
         SAL_01 : INOUT  std_logic;
         SAL_02 : INOUT  std_logic;
         Q : OUT  std_logic_vector(3 downto 0));
    END COMPONENT;
   --Inputs
   signal clk : std_logic := '0';
   signal C : std_logic := '0';

	--BiDirs
   signal SAL_01 : std_logic;
   signal SAL_02 : std_logic;

 	--Outputs
   signal Q : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Ejercicio3_10_Contador PORT MAP ( clk => clk,
          C => C,SAL_01 => SAL_01,
          SAL_02 => SAL_02,Q => Q);
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
      wait for clk_period*10;
			C <= '0';
      wait for clk_period*10;
			C <= '1';
      wait;
   end process;
END;
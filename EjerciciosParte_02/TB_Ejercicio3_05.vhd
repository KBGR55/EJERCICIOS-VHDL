--------------------------------------------------------------------------------
-- Create Date:   16:29:01 07/13/2022
-- Module Name:   C:/Users/K.G/Documents/ProgramasIse/EjerciciosParte_02/TB_Ejercicio3_05.vhd
-- Project Name:  EjerciciosParte_02
-- VHDL Test Bench Created by ISE for module: Ejercicio3_05_RegistroSemaforo
-- Karen Brigith Gonzaga Rivas
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_Ejercicio3_05 IS
END TB_Ejercicio3_05;
 
ARCHITECTURE behavior OF TB_Ejercicio3_05 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT Ejercicio3_05_RegistroSemaforo
    PORT(clk : IN  std_logic;
         MC : IN  std_logic;
         serieIn : INOUT  std_logic;
         Q : OUT  std_logic_vector(0 to 2));
    END COMPONENT;

   --Inputs
   signal clk : std_logic := '0';
   signal MC : std_logic := '0';

	--BiDirs
   signal serieIn : std_logic;

 	--Outputs
   signal Q : std_logic_vector(0 to 2);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Ejercicio3_05_RegistroSemaforo PORT MAP (
          clk => clk,	MC => MC,
          serieIn => serieIn,	Q => Q);

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
      wait for 100 ns;	
		   MC <= '0';
      wait for clk_period*10;
			MC <= '1';
      wait;
   end process;

END;

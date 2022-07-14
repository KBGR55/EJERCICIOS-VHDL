--------------------------------------------------------------------------------
-- Create Date:   11:21:44 07/14/2022
-- Module Name:   C:/Users/K.G/Documents/ProgramasIse/EjerciciosParte_02/TB_Ejercicio3_12.vhd
-- Project Name:  EjerciciosParte_02
-- VHDL Test Bench Created by ISE for module: Ejercicio3_12_Contador0A245
-- Karen Brigith Gonzaga Rivas
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY TB_Ejercicio3_12 IS
END TB_Ejercicio3_12;
 
ARCHITECTURE behavior OF TB_Ejercicio3_12 IS 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT Ejercicio3_12_Contador0A245
    PORT(clk : IN  std_logic;
         D_01 : OUT  std_logic_vector(0 to 6);
         D_02 : OUT  std_logic_vector(0 to 6);
         D_03 : OUT  std_logic_vector(0 to 6);
         Q1 : OUT  std_logic_vector(0 to 3);
         Q2 : OUT  std_logic_vector(0 to 3);
         Q3 : OUT  std_logic_vector(0 to 3));
    END COMPONENT;
   --Inputs
   signal clk : std_logic := '0';
 	--Outputs
   signal D_01 : std_logic_vector(0 to 6);
   signal D_02 : std_logic_vector(0 to 6);
   signal D_03 : std_logic_vector(0 to 6);
   signal Q1 : std_logic_vector(0 to 3);
   signal Q2 : std_logic_vector(0 to 3);
   signal Q3 : std_logic_vector(0 to 3);
   -- Clock period definitions
   constant clk_period : time := 10 ns;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Ejercicio3_12_Contador0A245 PORT MAP (
          clk => clk,
          D_01 => D_01,
          D_02 => D_02,
          D_03 => D_03,
          Q1 => Q1,
          Q2 => Q2,
          Q3 => Q3
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
      wait for clk_period*10;
      wait;
   end process;

END;

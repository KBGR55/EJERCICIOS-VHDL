--------------------------------------------------------------------------------
-- Create Date:   19:00:48 07/12/2022
-- Module Name:   C:/Users/K.G/Documents/ProgramasIse/EjerciciosParte_02/TB_Ejercicio3_11.vhd
-- Project Name:  EjerciciosParte_02
-- VHDL Test Bench Created by ISE for module: Ejercicio3_11_Contador0A99
-- Karen Brigith Gonzaga Rivas
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_Ejercicio3_11 IS
END TB_Ejercicio3_11;
 
ARCHITECTURE behavior OF TB_Ejercicio3_11 IS  
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT Ejercicio3_11_Contador0A99
    PORT(clk : IN  std_logic;
         D_01 : OUT  std_logic_vector(0 to 6);
         D_02 : OUT  std_logic_vector(0 to 6);
         Q_01 : OUT  std_logic_vector(0 to 3);
         Q_02 : OUT  std_logic_vector(0 to 3));
    END COMPONENT;
   --Inputs
   signal clk : std_logic := '0';

 	--Outputs
   signal D_01 : std_logic_vector(0 to 6);
   signal D_02 : std_logic_vector(0 to 6);
   signal Q_01 : std_logic_vector(0 to 3);
   signal Q_02 : std_logic_vector(0 to 3);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: Ejercicio3_11_Contador0A99 PORT MAP(clk => clk,
          D_01 => D_01,D_02 => D_02,
          Q_01 => Q_01,Q_02 => Q_02);

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
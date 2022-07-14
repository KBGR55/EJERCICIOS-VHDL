--------------------------------------------------------------------------------
-- Create Date:   16:36:21 07/14/2022
-- Module Name:   C:/Users/K.G/Documents/ProgramasIse/EjerciciosParte_02/TB_Ejercicio3_15.vhd
-- Project Name:  EjerciciosParte_02
-- VHDL Test Bench Created by ISE for module: Ejercicio3_15_Semaforo
-- Karen Brigith Gonzaga Rivas
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_Ejercicio3_15 IS
END TB_Ejercicio3_15;
 
ARCHITECTURE behavior OF TB_Ejercicio3_15 IS  
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT Ejercicio3_15_Semaforo
    PORT(clk : IN  std_logic;
         mc : IN  std_logic;
         q : INOUT  std_logic_vector(5 downto 0);
         s : INOUT  std_logic;
         NorteSur : OUT  std_logic_vector(2 downto 0);
         EO : OUT  std_logic_vector(2 downto 0));
    END COMPONENT;

   --Inputs
   signal clk : std_logic := '0';
   signal mc : std_logic := '0';

	--BiDirs
   signal q : std_logic_vector(5 downto 0);
   signal s : std_logic:= '0';

 	--Outputs
   signal NorteSur : std_logic_vector(2 downto 0);
   signal EO : std_logic_vector(2 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Ejercicio3_15_Semaforo PORT MAP (
          clk => clk,mc => mc, 
			 q => q,s => s,
          NorteSur => NorteSur, EO => EO);
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
		mc <='0';
      wait for clk_period*10;
			s <= '0';
      wait for clk_period*10;
			s <= '1';
      wait;
   end process;
END;

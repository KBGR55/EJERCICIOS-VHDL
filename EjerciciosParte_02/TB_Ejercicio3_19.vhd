--------------------------------------------------------------------------------
-- Create Date:   17:20:41 07/14/2022
-- Module Name:   C:/Users/K.G/Documents/ProgramasIse/EjerciciosParte_02/TB_Ejercicio3_19.vhd
-- Project Name:  EjerciciosParte_02
-- VHDL Test Bench Created by ISE for module: Ejercicio3_19_Contador
-- Karen Brigith Gonzaga Rivas
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_Ejercicio3_19 IS
END TB_Ejercicio3_19;
 
ARCHITECTURE behavior OF TB_Ejercicio3_19 IS  
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT Ejercicio3_19_Contador
    PORT(clk : IN  std_logic;
         x : IN  std_logic;
         s : OUT  std_logic_vector(2 downto 0));
    END COMPONENT;

   --Inputs
   signal clk : std_logic := '0';
   signal x : std_logic := '0';

 	--Outputs
   signal s : std_logic_vector(2 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Ejercicio3_19_Contador PORT MAP (clk => clk,
          x => x,	s => s);

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
			x <= '0';
      wait for 100 ns;	
			x <= '1';
      wait for 100 ns;
			x <= '0';
      wait for 100 ns;
			x <= '1';
		wait for 100 ns;
			x <= '0';
      wait;
   end process;
END;
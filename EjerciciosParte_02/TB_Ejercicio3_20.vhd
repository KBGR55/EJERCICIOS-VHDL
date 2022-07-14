--------------------------------------------------------------------------------
-- Create Date:   18:00:51 07/14/2022 
-- Module Name:   C:/Users/K.G/Documents/ProgramasIse/EjerciciosParte_02/TB_Ejercicio3_20.vhd
-- Project Name:  EjerciciosParte_02
-- VHDL Test Bench Created by ISE for module: Ejercicio3_20_DespachadoraRefresco
-- Karen Brigith Gonzaga Rivas
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_Ejercicio3_20 IS
END TB_Ejercicio3_20;
 
ARCHITECTURE behavior OF TB_Ejercicio3_20 IS  
    -- Component Declaration for the Unit Under Test (UUT) 
    COMPONENT Ejercicio3_20_DespachadoraRefresco
    PORT(clk : IN  std_logic;
         x : IN  std_logic_vector(4 downto 0);
         s : OUT  std_logic_vector(3 downto 0));
    END COMPONENT;

   --Inputs
   signal clk : std_logic := '0';
   signal x : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal s : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Ejercicio3_20_DespachadoraRefresco PORT MAP (clk => clk,
          x => x,s => s);

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
			x	<= "00101";
      wait for 100 ns;
			x	<= "01010";
		wait for 100 ns;
			x	<= "10100";
		wait for 100 ns;
			x	<= "00000";		
      wait;
   end process;
END;
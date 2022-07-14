--------------------------------------------------------------------------------
-- Create Date:   15:50:24 07/13/2022
-- Module Name:   C:/Users/K.G/Documents/ProgramasIse/EjerciciosParte_02/TB_Ejercicio3_01.vhd
-- Project Name:  EjerciciosParte_02
-- Karen Brigith Gonzaga Rivas
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_Ejercicio3_01 IS
END TB_Ejercicio3_01;
 
ARCHITECTURE behavior OF TB_Ejercicio3_01 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Ejercicio3_01_FlipFlopJK
    PORT(Q : OUT  std_logic;
         notQ : OUT  std_logic;
         clk : IN  std_logic;
         j : IN  std_logic;
         k : IN  std_logic);
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal j : std_logic := '0';
   signal k : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal notQ : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Ejercicio3_01_FlipFlopJK PORT MAP (Q => Q,
          notQ => notQ,	clk => clk,
          j => j,	k => k);
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
		j	<= '0';
		k	<= '1';
		wait for clk_period*10;	
		j	<= '0';
		k	<= '0';
		wait for clk_period*10;	
		j	<= '1';
		k	<= '0';
		wait for clk_period*10;
		j	<= '1';
		k	<= '1';
      wait;
   end process;
END;
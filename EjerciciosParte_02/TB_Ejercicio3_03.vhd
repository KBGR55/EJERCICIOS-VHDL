--------------------------------------------------------------------------------
-- Create Date:   16:06:04 07/13/2022
-- Module Name:   C:/Users/K.G/Documents/ProgramasIse/EjerciciosParte_02/TB_Ejercicio3_03.vhd
-- Project Name:  EjerciciosParte_02
-- VHDL Test Bench Created by ISE for module: Ejercicio3_03_Registro4Bits
-- Karen Brigith Gonzaga Rivas
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_Ejercicio3_03 IS
END TB_Ejercicio3_03;
 
ARCHITECTURE behavior OF TB_Ejercicio3_03 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT Ejercicio3_03_Registro4Bits
    PORT(clk : IN  std_logic;
         REST : IN  std_logic;
         R : IN  std_logic;
         L : IN  std_logic;
         datos : IN  std_logic_vector(0 to 3);
         S : IN  std_logic_vector(0 to 1);
         Q : OUT  std_logic_vector(0 to 3));
    END COMPONENT;

   --Inputs
   signal clk : std_logic := '0';
   signal REST : std_logic := '0';
   signal R : std_logic := '0';
   signal L : std_logic := '0';
   signal datos : std_logic_vector(0 to 3) := (others => '0');
   signal S : std_logic_vector(0 to 1) := (others => '0');

 	--Outputs
   signal Q : std_logic_vector(0 to 3);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Ejercicio3_03_Registro4Bits PORT MAP (clk => clk,
          REST => REST,	R => R,
          L => L, datos => datos,
          S => S,	Q => Q);
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
			D <= "0100";
			L <= '1';
			R <= '0';
			S <= "10";
      wait for clk_period*10;
			S <= "01";
		wait for clk_period*10;
			S <= "11";
		wait for clk_period*10;
			S <= "00";
      wait;
   end process;
END;

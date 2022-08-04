--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:22:09 08/02/2022
-- Design Name:   
-- Module Name:   C:/Users/K.G/Documents/ProgramasIse/EjerciciosExpo_U3/TB_Replica01_registro_R.vhd
-- Project Name:  EjerciciosExpo_U3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Replica01_registro_R
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY TB_Replica01_registro_R IS
END TB_Replica01_registro_R;
 
ARCHITECTURE behavior OF TB_Replica01_registro_R IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Replica01_registro_R
    PORT(
         R : IN  std_logic_vector(3 downto 0);
         ER : IN  std_logic;
         CLK : IN  std_logic;
         REG : INOUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal R : std_logic_vector(3 downto 0) := "1001";
   signal ER : std_logic := '0';
   signal CLK : std_logic := '0';

	--BiDirs
   signal REG : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Replica01_registro_R PORT MAP (
          R => R,
          ER => ER,
          CLK => CLK,
          REG => REG
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		ER <= '0';
		wait for CLK_period*1;
		R <=  "0110";
      wait for CLK_period*2;
		ER <= '1';
		R <=  "1111";
      -- insert stimulus here 
      wait;
   end process;

END;

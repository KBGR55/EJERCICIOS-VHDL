--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:00:48 08/03/2022
-- Design Name:   
-- Module Name:   C:/Users/K.G/Documents/ProgramasIse/EjerciciosExpo_U3/TB_Contador.vhd
-- Project Name:  EjerciciosExpo_U3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Replica03_contador_microprograma
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_Contador IS
END TB_Contador;
 
ARCHITECTURE behavior OF TB_Contador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Replica03_contador_microprograma
    PORT(
         CIN : IN  std_logic;
         CLK : IN  std_logic;
         Y : IN  std_logic_vector(3 downto 0);
         COUT : INOUT  std_logic;
         PC : INOUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CIN : std_logic := '1';
   signal CLK : std_logic := '0';
   signal Y : std_logic_vector(3 downto 0);

	--BiDirs
   signal COUT : std_logic;
   signal PC : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Replica03_contador_microprograma PORT MAP (
          CIN => CIN,
          CLK => CLK,
          Y => Y,
          COUT => COUT,
          PC => PC
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
			Y<="0110";	
      wait for 100 ns;	
			CIN <='0';
      wait for 100 ns;
			CIN <='1';
			Y<="0100";	
      wait for 100 ns;	
			CIN <='0';
      wait for 100 ns;
			CIN <='1';
			Y<="0010";

      -- insert stimulus here 

      wait;
   end process;

END;

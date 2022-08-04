--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:35:03 08/02/2022
-- Design Name:   
-- Module Name:   C:/Users/K.G/Documents/ProgramasIse/EjerciciosExpo_U3/TB_Mux.vhd
-- Project Name:  EjerciciosExpo_U3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Replica02_multiplexor_4bits
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
 
ENTITY TB_Mux IS
END TB_Mux;
 
ARCHITECTURE behavior OF TB_Mux IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Replica02_multiplexor_4bits
    PORT(
         D : IN  std_logic_vector(3 downto 0);
         R : IN  std_logic_vector(3 downto 0);
         ST : IN  std_logic_vector(3 downto 0);
         PC : IN  std_logic_vector(3 downto 0);
         S : IN  std_logic_vector(1 downto 0);
         Y : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic_vector(3 downto 0) := "0001";
   signal R : std_logic_vector(3 downto 0) := "0010";
   signal ST : std_logic_vector(3 downto 0) := "0100";
   signal PC : std_logic_vector(3 downto 0) := "1000";
   signal S : std_logic_vector(1 downto 0) := "00";

 	--Outputs
   signal Y : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
   constant CLK_period : time := 100 ns;
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Replica02_multiplexor_4bits PORT MAP (
          D => D,
          R => R,
          ST => ST,
          PC => PC,
          S => S,
          Y => Y
        );

   -- Clock process definitions
   
 
  
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 200 ns;	
			S <= "01";
      wait for 200 ns;
			S <= "10";
	wait for 200 ns;
			S <= "11";
      -- insert stimulus here 

      wait;
   end process;

END;

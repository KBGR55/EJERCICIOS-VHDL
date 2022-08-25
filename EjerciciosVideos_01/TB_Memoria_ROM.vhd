--------------------------------------------------------------------------------
-- Create Date:   15:48:22 06/19/2022  
-- Module Name:   C:/Users/K.G/Documents/ProgramasIse/EjerciciosVideos/TB_Memoria_ROM.vhd
-- Project Name:  EjerciciosVideos
-- Karen Brigith Gonzaga Rivas
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_Memoria_ROM IS
END TB_Memoria_ROM;
 
ARCHITECTURE behavior OF TB_Memoria_ROM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Memoria_ROM
    PORT(
         salida : OUT  std_logic_vector(1 downto 0);
         direccion : IN  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal direccion : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal salida : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Memoria_ROM PORT MAP (
          salida => salida,
          direccion => direccion
        );
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		direccion <= "01";
		wait for 100 ns;
		direccion <= "00";
		wait for 100 ns;
		direccion <= "11";
		wait for 100 ns;
		direccion <= "10";
      wait;
   end process;

END;

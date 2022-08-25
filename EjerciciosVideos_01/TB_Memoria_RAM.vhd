--------------------------------------------------------------------------------
-- Create Date:   15:50:53 06/19/2022
-- Module Name:   C:/Users/K.G/Documents/ProgramasIse/EjerciciosVideos/TB_Memoria_RAM.vhd
-- Project Name:  EjerciciosVideos
-- Karen Brigith Gonzaga Rivas
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_Memoria_RAM IS
END TB_Memoria_RAM;
 
ARCHITECTURE behavior OF TB_Memoria_RAM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT Memoria_RAM
    PORT(clk : IN  std_logic;
         dato_entrada : IN  std_logic_vector(1 downto 0);
         direccion : IN  std_logic_vector(1 downto 0);
         CE : IN  std_logic;
         OE : IN  std_logic;
         WE : IN  std_logic;
         dato_salida : OUT  std_logic_vector(1 downto 0));
    END COMPONENT;
 
   --Inputs
   signal clk : std_logic := '0';
   signal dato_entrada : std_logic_vector(1 downto 0) := (others => '0');
   signal direccion : std_logic_vector(1 downto 0) := (others => '0');
   signal CE : std_logic := '0';
   signal OE : std_logic := '0';
   signal WE : std_logic := '0';

 	--Outputs
   signal dato_salida : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: Memoria_RAM PORT MAP (clk => clk,
          dato_entrada => dato_entrada,
          direccion => direccion,
          CE => CE,
          OE => OE,
          WE => WE,
          dato_salida  => dato_salida 
        );

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
      -- hold reset state for 100 ns.
      CE <= '0';
		WE <= '0';
		OE <= '1';
		dato_entrada <= "11";
		direccion <= "00";
      wait for clk_period;
		WE <= '1';
		OE <= '0';
		direccion <= "00";		
      wait;
   end process;
END;

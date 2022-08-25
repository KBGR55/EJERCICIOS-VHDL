--------------------------------------------------------------------------------
-- Create Date:   15:42:35 06/19/2022   
-- Module Name:   C:/Users/K.G/Documents/ProgramasIse/EjerciciosVideos/TB_ALU_4BITS.vhd
-- Project Name:  EjerciciosVideos
-- Karen Brigith Gonzaga Rivas
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_signed.ALL;
--USE IEEE.std_logic_unsigned.all;

ENTITY TB_ALU_4BITS IS
END TB_ALU_4BITS;
 
ARCHITECTURE behavior OF TB_ALU_4BITS IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU_4BITS
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         opcode : IN  std_logic_vector(2 downto 0);
         Cout : OUT  std_logic;
         Yout : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
	 
   --Inputs
   signal a : std_logic_vector(3 downto 0) := "1011";
   signal b : std_logic_vector(3 downto 0) := "1001";
   signal opcode : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal Cout : std_logic;
   signal Resul : std_logic_vector(3 downto 0) := (others => '0');
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU_4BITS PORT MAP (a,b,opcode,Cout,Resul);
	-- Generacion de Estimulos --
	a <= "1100" after 80 ns;
	b <= "1010" after 80 ns;
	opcode <= opcode + '1' after 10 ns;
END;
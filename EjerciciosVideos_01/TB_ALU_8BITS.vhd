--------------------------------------------------------------------------------
-- Create Date:   14:35:26 06/19/2022
-- Module Name:   C:/Users/K.G/Documents/ProgramasIse/EjerciciosVideos/TB_ALU_8BITS.vhd
-- Project Name:  EjerciciosVideos
-- Karen Brigith Gonzaga Rivas
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_ALU_8BITS IS
END TB_ALU_8BITS;
 
ARCHITECTURE behavior OF TB_ALU_8BITS IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU_8BITS
    PORT(
         a : IN  std_logic_vector(7 downto 0);
         b : IN  std_logic_vector(7 downto 0);
         opcode : IN  std_logic_vector(1 downto 0);
         d : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;

   --Inputs
   signal a_s : std_logic_vector(7 downto 0) ;
   signal b_s : std_logic_vector(7 downto 0) ;
   signal opcode_s : std_logic_vector(1 downto 0);

 	--Outputs
   signal d_s : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
BEGIN

	UUT: ALU_8BITS port map(a_s, b_s, opcode_s, d_s);
	a_s <= "00010001", "01100101" after 5 ns;
	b_s <= "00100011", "00000010" after 5 ns, "00111001" after 20 ns;
	opcode_s <= "00", "01" after 5 ns;
 
END;
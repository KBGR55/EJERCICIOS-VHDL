----------------------------------------------------------------------------------
-- Create Date:    17:22:32 07/13/2022 
-- Module Name:    Ejercicio3_12_Contador0A245 -  BehavioralContador0A245
-- Karen Brigith Gonzaga Rivas
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Ejercicio3_12_Contador0A245 is
    Port ( clk : in  STD_LOGIC;--Entrada de reloj
           D_01, D_02, D_03 : out  STD_LOGIC_VECTOR (0 to 6);--salida decodificadores
           Q1, Q2, Q3 : out  STD_LOGIC_VECTOR (0 to 3));
end Ejercicio3_12_Contador0A245;

architecture BehavioralContador0A245 of Ejercicio3_12_Contador0A245 is
	signal signalQ_01 : STD_LOGIC_VECTOR(0 to 3) := "0000";
	signal signalQ_02 : STD_LOGIC_VECTOR(0 to 3) := "0000";
	signal signalQ_03: STD_LOGIC_VECTOR(0 to 3) := "0000";
begin
	Q1 <= signalQ_01;
	Q2 <= signalQ_02;
	Q3 <= signalQ_03;
	process(clk)
	begin
		if(clk'event and clk='1') then
			signalQ_01	<= signalQ_01+1;
			if(signalQ_01 = "1001") then
				signalQ_01	<= "0000";
				signalQ_02 <= signalQ_02+1;
			end if;
			if (signalQ_02 = "1001" and signalQ_01 = "1001") then
				signalQ_03	<= signalQ_03+1;
				signalQ_02	<= "0000";
			end if;
			if ((signalQ_03 = "0010" and signalQ_02 = "0100") and signalQ_01 = "0101") then
				signalQ_01	<= "0000";
				signalQ_02	<= "0000";
				signalQ_03	<= "0000";
			end if;
			case signalQ_01 is
				when "0000" => 
					D_01	<= "0000001";
				when "0001" => 
					D_01	<= "1001111";
				when "0010" => 
					D_01	<= "0010010";
				when "0011" => 
					D_01	<= "0000110";
				when "0100" => 
					D_01	<= "1001100";
				when "0101" => 
					D_01	<= "0100100";
				when "0110" => 
					D_01	<= "0100000";
				when "0111" => 
					D_01	<= "0001110";
				when "1000" => 
					D_01	<= "0000000";
				when "1001" => 
					D_01	<= "0000100";
				when others => 
					D_01	<= "1111111";
			end case;
			case signalQ_02 is
				when "0000" => 
					D_02	<= "0000001";
				when "0001" => 
					D_02	<= "1001111";
				when "0010" => 
					D_02	<= "0010010";
				when "0011" => 
					D_02	<= "0000110";
				when "0100" => 
					D_02	<= "1001100";
				when "0101" => 
					D_02	<= "0100100";
				when "0110" => 
					D_02	<= "0100000";
				when "0111" => 
					D_02	<= "0001110";
				when "1000" => 
					D_02	<= "0000000";
				when "1001" => 
					D_02	<= "0000100";
				when others =>
					D_02	<= "1111111";
			end case;
			case signalQ_03 is
				when "0000" => 
					D_03	<= "0000001";
				when "0001" => 
					D_03	<= "1001111";
				when "0010" => 
					D_03	<= "0010010";
				when "0011" =>
					D_03	<= "0000110";
				when "0100" => 
					D_03	<= "1001100";
				when "0101" => 
					D_03	<= "0100100";
				when "0110" => 
					D_03	 <= "0100000";
				when "0111" => 
					D_03	<= "0001110";
				when "1000" =>
					D_03	<= "0000000";
				when "1001" => 
					D_03	<= "0000100";
				when others =>
					D_03	<= "1111111";
			end case;
		end if;
	end process;
end BehavioralContador0A245;
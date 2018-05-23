----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:45:44 04/14/2018 
-- Design Name: 
-- Module Name:    Dir_V2 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Dir_V3 is
    Port ( EncodeA : in  STD_LOGIC;
           EncodeB : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
			  CountPulse : out  STD_LOGIC;
			  Dir : out  STD_LOGIC;
			  Error : out STD_LOGIC);
end Dir_V3;

architecture Behavioral of Dir_V3 is

begin
	
	process(Clk) 
		variable A_Sift : std_logic_vector(1 downto 0) := "00";
		variable B_Sift : std_logic_vector(1 downto 0) := "00";

		attribute keep : string;
		attribute keep of A_Sift: variable is "TRUE";
		attribute keep of B_Sift: variable is "TRUE";
		
		variable ABAoBo : std_logic_vector(3 downto 0);
		constant New_value : integer := 0;
		constant Old_value : integer := 1;
		
		constant rising_edge_const : std_logic_vector(1 downto 0) := "01";
		
	begin
		
		if(rising_edge(Clk)) then
			--Sift reg
			A_Sift := A_Sift(New_value) & EncodeA;
			B_Sift := B_Sift(New_value) & EncodeB;
			
			CountPulse <= '0';
			
			ABAoBo := A_Sift(New_value)&B_Sift(New_value)&A_Sift(Old_value)&B_Sift(Old_value);
			
			case ABAoBo is
				when "0000"|"1010"|"1111"|"0101" =>
					Null; --What there hapens when der isent af cleare dir to decekt or the moter i stopet 
				
				when "1000"|"1110"|"0111"|"0001" =>
					Dir <= '0';
					Error <= '0';
					CountPulse <= '1';
					
				when "1101"|"0100"|"1011"|"0010" =>
					Dir <= '1';
					Error <= '0';
					CountPulse <= '1';
					
				when others =>
					Error <= '1';
			end case;
		end if;
		
	end process; 
	
end Behavioral;


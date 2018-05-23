----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:23:30 04/10/2018 
-- Design Name: 
-- Module Name:    BcdDigit - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BcdDigit is
    Port ( Clk : in  STD_LOGIC;
           Init : in  STD_LOGIC;
           DoneIn : in  STD_LOGIC;
           ModIn : in  STD_LOGIC;
           ModOut : out  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0));
end BcdDigit;

architecture Behavioral of BcdDigit is
	signal Bcd : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
begin
	
	Q <= Bcd;
	
	process(Clk, Init)
	begin
		if(rising_edge(Clk)) then
			if(Init = '1') then
				Bcd <= (others => '0');
			elsif(DoneIn='0') then
				case Bcd is
					when "0000" =>
						Bcd <= "000" & ModIn;
					when "0001" =>
						Bcd <= "001" & ModIn;
					when "0010" =>
						Bcd <= "010" & ModIn;
					when "0011" =>
						Bcd <= "011" & ModIn;
					when "0100" =>
						Bcd <= "100" & ModIn;
					when "0101" =>
						Bcd <= "000" & ModIn;
					when "0110" =>
						Bcd <= "001" & ModIn;
					when "0111" =>
						Bcd <= "010" & ModIn;
					when "1000" =>
						Bcd <= "011" & ModIn;
					when "1001" =>
						Bcd <= "100" & ModIn;
					when others =>
						Bcd <= (others => '0');
				end case;
			end if;
		end if;
	end process;
	
	ModOut <= '1' when Bcd>=5 else '0';
	
end Behavioral;


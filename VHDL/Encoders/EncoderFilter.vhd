----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:27:58 04/12/2018 
-- Design Name: 
-- Module Name:    EncoderFilter - Behavioral 
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

entity EncoderFilter is
    Port ( EncodeA : in  STD_LOGIC;
           EncodeB : in  STD_LOGIC;
           FEncodeA : out  STD_LOGIC;
           FEncodeB : out  STD_LOGIC;
			  Clk : in STD_LOGIC);
end EncoderFilter;

architecture Behavioral of EncoderFilter is

begin
	
	process(Clk)
		variable AB: std_logic_vector(1 downto 0);
	begin
		if(rising_edge(Clk)) then
		AB := EncodeA&EncodeB;
			case AB is
				when "00" =>
					FEncodeA <= '0';
				when "11" => 
					FEncodeA <= '1';
				when "10" => 
					FEncodeB <= '0';
				when "01" => 
					FEncodeB <= '1';
				when others => 
					Null;
			end case;
		end if;
	end process;
end Behavioral;


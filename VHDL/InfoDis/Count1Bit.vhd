----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:30:52 04/10/2018 
-- Design Name: 
-- Module Name:    Count1Bit - Behavioral 
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

entity Count1Bit is
    Port ( Clk : in  STD_LOGIC;
           O : out  STD_LOGIC);
end Count1Bit;

architecture Behavioral of Count1Bit is
	signal count : STD_LOGIC := '0';
begin
	
	O <= count;
	
	process(Clk)
	begin
		if(rising_edge(Clk)) then 
			count <= not count;
		end if;
	end process;

end Behavioral;


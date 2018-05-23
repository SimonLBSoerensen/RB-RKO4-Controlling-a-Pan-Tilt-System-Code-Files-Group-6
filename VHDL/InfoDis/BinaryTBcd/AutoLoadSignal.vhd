----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:59:14 04/10/2018 
-- Design Name: 
-- Module Name:    AutoLoadSignal - Behavioral 
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

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AutoLoadSignal is
    Port ( Din : in  STD_LOGIC_VECTOR (15 downto 0);
			  Clk : in  STD_LOGIC;
			  LoadO : out  STD_LOGIC);
end AutoLoadSignal;

architecture Behavioral of AutoLoadSignal is
	signal tempData : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
begin
	
	process(Clk)
	begin
		if(rising_edge(Clk)) then
			LoadO <= '0';
			
			if(tempData /= Din) then
				LoadO <= '1';
			end if;
			 
			tempData <= Din;
			
		end if;
		
	end process;

end Behavioral;


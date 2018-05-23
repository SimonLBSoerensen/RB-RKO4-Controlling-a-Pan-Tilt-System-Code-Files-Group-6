----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:56:44 04/14/2018 
-- Design Name: 
-- Module Name:    BlinkDp - Behavioral 
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

entity BlinkDp is
    Port ( En : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Dp : inout  STD_LOGIC_VECTOR (3 downto 0));
end BlinkDp;

architecture Behavioral of BlinkDp is

begin
	
	process(Clk) 
	begin 
		if(rising_edge(Clk)) then
			if(En = '1') then
				Dp <= not Dp;
			else
				Dp <= Dp;		
			end if;
		end if;
	end process;

end Behavioral;


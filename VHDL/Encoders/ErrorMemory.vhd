----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:05:19 04/14/2018 
-- Design Name: 
-- Module Name:    ErrorMemory - Behavioral 
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

entity ErrorMemory is
    Port ( ErrorIn : in  STD_LOGIC;
           ErrorOut : out  STD_LOGIC;
           Reset : in  STD_LOGIC);
end ErrorMemory;

architecture Behavioral of ErrorMemory is

begin

	process(ErrorIn, Reset)
	begin
		if(Reset = '1') then
			ErrorOut <= '0';
		elsif(ErrorIn = '1') then
			ErrorOut <= '1';
		end if;
	end process;

end Behavioral;


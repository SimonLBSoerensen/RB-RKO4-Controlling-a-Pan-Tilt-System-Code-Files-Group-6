----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:00:55 04/05/2018 
-- Design Name: 
-- Module Name:    SCount - Behavioral 
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

entity SCount is
    Port ( CountPulse : in  STD_LOGIC;
           Dir : in  STD_LOGIC;
           CountOut : out  STD_LOGIC_VECTOR(7 downto 0);
			  Reset : in  STD_LOGIC);
end SCount;

architecture Behavioral of SCount is
	signal count : signed(7 downto 0)   := (others => '0');
begin
	
	--Sends the count out on the CountOut bus
	CountOut <= std_logic_vector(count);
	
	process(CountPulse, Reset) 
	begin
		--If reset is set reset the counter 
		if(Reset = '1') then
			count <= (others => '0');
		elsif(rising_edge(CountPulse)) then		
			--Count the direction there is spicified on Dir
			if(Dir = '0') then
				count <= count+1;
			else
				count <= count-1;
			end if;
		end if;
	end process;

end Behavioral;


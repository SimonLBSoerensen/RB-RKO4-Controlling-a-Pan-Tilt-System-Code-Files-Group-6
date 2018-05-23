----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:32:02 04/10/2018 
-- Design Name: 
-- Module Name:    Count16Bit - Behavioral 
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

entity SCount16Bit is
    Port ( CountPulse : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
			  Dir : in STD_LOGIC;
           CountOut: out  STD_LOGIC_VECTOR (15 downto 0));
end SCount16Bit;

architecture Behavioral of SCount16Bit is
	constant StartDeg : integer := 0;
	signal count : STD_LOGIC_VECTOR(15 downto 0)   := conv_std_logic_vector(StartDeg, 16);
	
	
	
begin
	
	--Sends the count out on the CountOut bus
	CountOut <= std_logic_vector(count);
	
	process(CountPulse, Reset) 
	begin
		--If reset is set reset the counter 
		if(Reset = '1') then
			count <= (others => '0');
		elsif(rising_edge(CountPulse)) then--If tehere if af rising edge on the count signal 
			if(Dir = '0') then
				count <= count+1;
			else
				count <= count-1;
			end if;
		end if;
	end process;

end Behavioral;


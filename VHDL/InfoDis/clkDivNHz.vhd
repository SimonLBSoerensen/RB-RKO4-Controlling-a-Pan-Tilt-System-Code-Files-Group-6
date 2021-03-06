----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:21:34 02/21/2018 
-- Design Name: 
-- Module Name:    clkDiv1kHz - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: Er blevet teste og giver den rigtige frekven ud 
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

entity clkDiv2Hz is
    Port ( clk : in  STD_LOGIC;
           divClk : out  STD_LOGIC);
end clkDiv2Hz;

architecture Behavioral of clkDiv2Hz is
	constant clkIn :integer := 50000000;
	constant clkOut :integer := 2;
	constant scale :integer := (clkIn/clkOut)/2;

	signal counter : integer range 0 to scale-1 := 0;
	signal tempAfClk : STD_LOGIC := '0';
begin
	divClk <= tempAfClk;
	process(clk)
	begin
		if rising_edge(clk) then
			if(counter = scale-1) then
				tempAfClk <= not tempAfClk;
				counter <= 0;
			else
				counter <= counter +1;
			end if;
		end if;
	end process;
end Behavioral;


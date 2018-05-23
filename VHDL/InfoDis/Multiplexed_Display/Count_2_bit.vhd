----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:45:35 02/21/2018 
-- Design Name: 
-- Module Name:    count2Bit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: Er teste og virker
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

entity count2Bit is
    Port ( clk : in  STD_LOGIC;
           count : out  STD_LOGIC_VECTOR (1 downto 0));
end count2Bit;

architecture Behavioral of count2Bit is
	signal countSig : std_logic_vector(1 downto 0) := (others => '0'); 
begin
	
	count <= countSig;
	
	process(clk)
		begin
			if rising_edge(clk) then 
				countSig <= countSig +1;
			end if; 
	end process;
	
end Behavioral;


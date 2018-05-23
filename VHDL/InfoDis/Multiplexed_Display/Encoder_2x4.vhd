----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:35:04 02/22/2018 
-- Design Name: 
-- Module Name:    Encoder_2x4 - Behavioral 
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

entity Encoder_2x4 is
    Port ( Ind : in  STD_LOGIC_VECTOR (1 downto 0);
           O1 : out  STD_LOGIC;
           O2 : out  STD_LOGIC;
           O3 : out  STD_LOGIC;
           O4 : out  STD_LOGIC);
end Encoder_2x4;

architecture Behavioral of Encoder_2x4 is
signal Osamlet : STD_LOGIC_VECTOR (3 downto 0);
begin
	O4 <= Osamlet(3);
	O3 <= Osamlet(2);
	O2 <= Osamlet(1);
	O1 <= Osamlet(0);
	
	with Ind select Osamlet <=
		 "1110" when "00",
		 "1101" when "01",
		 "1011" when "10",
		 "0111" when others;

end Behavioral;


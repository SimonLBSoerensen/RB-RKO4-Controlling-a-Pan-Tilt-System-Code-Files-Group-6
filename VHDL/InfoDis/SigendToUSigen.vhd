----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:42:45 04/10/2018 
-- Design Name: 
-- Module Name:    SigendToUSigen - Behavioral 
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

entity SigendToUSigen is
    Port ( SindIn : in  STD_LOGIC_VECTOR (15 downto 0);
           UnSind : out  STD_LOGIC_VECTOR (15 downto 0);
           SindOut : out  STD_LOGIC);
end SigendToUSigen;

architecture Behavioral of SigendToUSigen is
	signal sind : std_logic;
begin
	
	sind <= SindIn(15);
	SindOut <= SindIn(15);
	
	process(SindIn)
	begin
		
		if(sind = '0') then
			UnSind <= SindIn;
		else
			UnSind <= ( not SindIn) +1;
		end if;
		
	end process;

end Behavioral;


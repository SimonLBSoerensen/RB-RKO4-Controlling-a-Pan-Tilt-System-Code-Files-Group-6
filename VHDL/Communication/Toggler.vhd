----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:55:51 03/03/2018 
-- Design Name: 
-- Module Name:    Toggler - Behavioral 
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

entity Toggler is
    Port ( DBButton : in  STD_LOGIC;
           ToggleO : out  STD_LOGIC);
end Toggler;

architecture Behavioral of Toggler is
	signal toggelTemp : STD_LOGIC := '0';
begin

	ToggleO <= toggelTemp;

	process(DBButton) 
	begin
		if(rising_edge(DBButton)) then
			toggelTemp <= not toggelTemp;
		end if;
	end process;

end Behavioral;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:54:17 02/21/2018 
-- Design Name: 
-- Module Name:    Mux_4x1_bit - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux_4x1_bit is
    Port ( In0 : in  STD_LOGIC;
           In1 : in  STD_LOGIC;
           In2 : in  STD_LOGIC;
           In3 : in  STD_LOGIC;
           O : out  STD_LOGIC;
           Sel : in  STD_LOGIC_VECTOR (1 downto 0));
end Mux_4x1_bit;

architecture Behavioral of Mux_4x1_bit is

begin

	with Sel select O <=
		 In0 when "00",
		 In1 when "01",
		 In2 when "10",
		 In3 when others;

end Behavioral;


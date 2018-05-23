----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:57:50 02/19/2018 
-- Design Name: 
-- Module Name:    SegmentDecoder - Behavioral 
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

entity SegmentDecoder is
    Port ( Din : in  STD_LOGIC_VECTOR (3 downto 0);
           aSeg, bSeg, cSeg, dSeg, eSeg, fSeg, gSeg: out  STD_LOGIC);
end SegmentDecoder;

architecture Behavioral of SegmentDecoder is
begin

	aSeg <=(not Din(3) and not Din(2) and not Din(1) and Din(0)) or (not Din(3) and Din(2) and not Din(1) and not Din(0)) or (Din(3) and Din(2) and not Din(1) and Din(0)) or (Din(3) and not Din(2) and Din(1) and Din(0));
	bSeg <=(Din(3) and Din(1) and Din(0)) or (Din(2) and Din(1) and not Din(0)) or (Din(3) and Din(2) and not Din(0)) or (not Din(3) and Din(2) and not Din(1) and Din(0));
	cSeg <=(Din(3) and Din(2) and Din(1)) or (Din(3) and Din(2) and not Din(0)) or (not Din(3) and not Din(2) and Din(1) and not Din(0));
	dSeg <=(Din(2) and Din(1) and Din(0)) or (not Din(3) and not Din(2) and not Din(1) and Din(0)) or (not Din(3) and Din(2) and not Din(1) and not Din(0)) or (Din(3) and not Din(2) and Din(1) and not Din(0));
	eSeg <=(not Din(3) and Din(0)) or (not Din(2) and not Din(1) and Din(0)) or (not Din(3) and Din(2) and not Din(1));
	fSeg <=(not Din(3) and Din(1) and Din(0)) or (not Din(3) and not Din(2) and Din(0)) or (not Din(3) and not Din(2) and Din(1)) or (Din(3) and Din(2) and not Din(1) and Din(0));
	gSeg <=(not Din(3) and not Din(2) and not Din(1)) or (not Din(3) and Din(2) and Din(1) and Din(0)) or (Din(3) and Din(2) and not Din(1) and not Din(0));
	
end Behavioral;


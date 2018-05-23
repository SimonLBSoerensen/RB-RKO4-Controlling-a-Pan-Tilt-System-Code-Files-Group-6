----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:38:31 04/19/2018 
-- Design Name: 
-- Module Name:    TraMode - Behavioral 
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

entity TraMode is
    Port ( Motor0 : in  STD_LOGIC_VECTOR (7 downto 0);
           Motor1 : in  STD_LOGIC_VECTOR (7 downto 0);
			  Clk : in  STD_LOGIC;
			  Motor0Reset : out  STD_LOGIC;
           Motor1Reset : out  STD_LOGIC;
			  Reset : out  STD_LOGIC;
           Data_Tran : out  STD_LOGIC_VECTOR (9 downto 0);
			  CalPan : in  STD_LOGIC;
			  CalTilt : in  STD_LOGIC;
           Mode : in  STD_LOGIC);
end TraMode;

architecture Behavioral of TraMode is
	signal OldMode : STD_LOGIC := '0';
	signal extMode : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	constant motor0_mode : STD_LOGIC := '0';
	constant motor1_mode : STD_LOGIC := '1';
	constant fun : STD_LOGIC_VECTOR (1 downto 0) := "10";
	constant calFun : STD_LOGIC_VECTOR (5 downto 0) := "000000";
	
	TYPE State_type IS (NormalMode, CalibrateMode);  -- Define the states
	SIGNAL State : State_Type := NormalMode;    -- Create a signal that uses 
	
begin
	
	extMode(0) <= Mode;
	
	with extMode select Data_Tran <=
    '0' & motor0_mode & Motor0 when '0'&motor0_mode,
    '0' & motor1_mode & Motor1 when '0'&motor1_mode,
	 fun & calFun & not CalPan &  not CalTilt when others;

	
	process(Clk)
	begin
		if(rising_edge(Clk)) then
			Motor0Reset <= '0';
			Motor1Reset <= '0';
			Reset <= '0';
			
			case State is
				when NormalMode =>
					
					if(CalPan = '1' or CalTilt = '1') then 
						State <= CalibrateMode;
						extMode(1) <= '1';
					elsif(OldMode /= Mode) then
					  case Mode is 
							when motor0_mode =>
								Motor0Reset <= '1';
							when motor1_mode =>
								Motor1Reset <= '1';
							when others =>
								Null;
						end case;
						OldMode <= Mode;
					end if;
				
				when CalibrateMode =>
				
					if(CalPan = '0' and CalTilt = '0') then 
						Reset <= '1';
						State <= NormalMode;
						extMode(1) <= '0';
					end if;
					
			end case;
			
		end if;
		
	end process;
end Behavioral;


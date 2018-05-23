----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:41:24 05/14/2018 
-- Design Name: 
-- Module Name:    PanCal - Behavioral 
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

entity PanCalibration is
    Port ( Enable : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           PanReference : in  STD_LOGIC;
           PanEncode : in  STD_LOGIC;	
			  Reset			: in  STD_LOGIC;
			  Calibrate : out std_logic;
           PCM : out  STD_LOGIC_VECTOR (7 downto 0));
end PanCalibration;

architecture Behavioral of PanCalibration is
	constant countMax : integer := 100000000;
	constant countMaxEncoderTjek : integer := 20000000;
	signal countencode 	: integer range 0 to countMax;
	signal dir				: std_logic := '0';
	signal speed : STD_LOGIC_VECTOR (7 downto 0):= (others => '0');
	TYPE State_type IS (Idel, CalibrateS, CalibrateChek);  -- Define the states
	SIGNAL State : State_Type := Idel;    
	
begin

process(Clk)
begin
	if dir = '1' then
		PCM <= speed;
	else
		PCM <= (not speed) +1;
	end if;
end process;

process(Clk)
	constant speedHigh : STD_LOGIC_VECTOR (7 downto 0):= conv_std_logic_vector(38, 8); --30%*1.27=38
	constant speedLow : STD_LOGIC_VECTOR (7 downto 0):= conv_std_logic_vector(31, 8); --25%*1.27=31
	constant stop : STD_LOGIC_VECTOR (7 downto 0):= (others => '0');
begin
	if rising_edge(Clk) then
		case State is
			when Idel =>
				speed <= stop;
				Calibrate <= '0';
				countencode <= 0;
				if Enable = '1' then
					State <= CalibrateS;
					speed <= speedHigh;
					Calibrate <= '1';
					dir <= '0';
					countencode <= 0;
				end if;
				
			when CalibrateS =>
				
				if(Reset = '1') then 
					State <= Idel;
				elsif PanReference = '0' then
					speed <= stop;
					State <= CalibrateChek;
					countencode <= 0;
				else
					if PanEncode = '0' then
						if countencode = countMaxEncoderTjek then
							countencode <= 0;
							speed <= speedHigh;
							dir <= not dir;
							
						else
							countencode <= countencode + 1;
						end if;
					else
						countencode <= 0;
					end if;
				end if;
				
			when CalibrateChek =>
				if(Reset = '1') then 
					State <= Idel;
				elsif countencode = countMax then
					countencode <= 0;
					
					if(PanReference = '0') then
						State <= Idel;
						speed <= stop;
						Calibrate <= '0';
						dir <= '0';
						countencode <= 0;
					else
						State <= CalibrateS;
						speed <= speedLow;
						countencode <= 0;
						dir <= not dir;
					end if;
				else
					countencode <= countencode + 1;
				end if;
		end case;
	end if;
end process;

end Behavioral;





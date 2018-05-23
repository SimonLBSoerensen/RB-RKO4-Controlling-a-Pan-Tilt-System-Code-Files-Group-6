----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:43:47 05/14/2018 
-- Design Name: 
-- Module Name:    TiltCal - Behavioral 
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

entity TiltCalibration is
    Port ( Enable 		: in STD_LOGIC;
			  Clk 			: in  STD_LOGIC;
           TiltReference: in  STD_LOGIC;	
			  Reset			: in  STD_LOGIC;				  
           PCM 			: out STD_LOGIC_VECTOR(7 downto 0);
			  Calibrate    : out std_logic);
end TiltCalibration;

architecture Behavioral of TiltCalibration is
	constant countMax : integer := 100000000;
	constant countMaxEncoderTjek : integer := 20000000;
	signal countencode 	: integer range 0 to countMax;
	signal dir				: std_logic := '0';
	signal speed 			: STD_LOGIC_VECTOR (7 downto 0):= (others => '0');
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
	constant speedHigh : STD_LOGIC_VECTOR (7 downto 0):= conv_std_logic_vector(44, 8); --30%*1.27=44,4
	constant speedLow : STD_LOGIC_VECTOR (7 downto 0):= conv_std_logic_vector(32, 8); --25%*1.27=32
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
					Calibrate <= '1';
					speed <= speedHigh;
				end if;
				
			when CalibrateS =>
				
				if(Reset = '1') then 
					State <= Idel;
				elsif TiltReference = '0' then
					speed <= stop;
					State <= CalibrateChek;
				end if;
				
			when CalibrateChek =>
			
				if(Reset = '1') then 
					State <= Idel;
				elsif countencode = countMax then
					countencode <= 0;
					
					if(TiltReference = '0') then
						State <= Idel;
						speed <= stop;
						dir <= '0';
						countencode <= 0;
					else
						State <= CalibrateS;
						speed <= speedLow;
						dir <= not dir;
						countencode <= 0;
					end if;
				else
					countencode <= countencode + 1;
				end if;
				
		end case;
	end if;
end process;

end Behavioral;


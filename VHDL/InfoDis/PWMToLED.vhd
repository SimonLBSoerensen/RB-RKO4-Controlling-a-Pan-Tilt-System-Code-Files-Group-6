----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:03:08 04/16/2018 
-- Design Name: 
-- Module Name:    PWMToLED - Behavioral 
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

entity PWMToLED is
    Port ( PWM : in  STD_LOGIC_VECTOR (7 downto 0);
           LED : out  STD_LOGIC_VECTOR (7 downto 0));
end PWMToLED;

architecture Behavioral of PWMToLED is

begin
	
	process(PWM)
		constant Par10Porcent : integer := 13;
		variable PWMABS : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
	begin
		if(PWM(7) = '1') then
			PWMABS := (not PWM) + 1;
			
			if(PWMABS = "00000000") then
				LED <= "00000000";
			elsif (PWMABS < Par10Porcent*1) then
				LED <= "10000000";
			elsif (PWMABS < Par10Porcent*2) then
				LED <= "11000000";
			elsif (PWMABS < Par10Porcent*3) then
				LED <= "11100000";
			elsif (PWMABS < Par10Porcent*4) then
				LED <= "11110000";
			elsif (PWMABS < Par10Porcent*5) then
				LED <= "11111000";
			elsif (PWMABS < Par10Porcent*6) then
				LED <= "11111100";
			elsif (PWMABS < Par10Porcent*7) then
				LED <= "11111110";
			else
				LED <= "11111111";
			end if;
		else
			
			if(PWM = "00000000") then
				LED <= "00000000";
			elsif (PWM < Par10Porcent*1) then
				LED <= "00000001";
			elsif (PWM < Par10Porcent*2) then
				LED <= "00000011";
			elsif (PWM < Par10Porcent*3) then
				LED <= "00000111";
			elsif (PWM < Par10Porcent*4) then
				LED <= "00001111";
			elsif (PWM < Par10Porcent*5) then
				LED <= "00011111";
			elsif (PWM < Par10Porcent*6) then
				LED <= "00111111";
			elsif (PWM < Par10Porcent*7) then
				LED <= "01111111";
			else
				LED <= "11111111";
			end if;
			
		end if;
		
		
	end process;
	
end Behavioral;


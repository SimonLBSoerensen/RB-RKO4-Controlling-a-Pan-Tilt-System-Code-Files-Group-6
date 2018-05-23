----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:33:38 04/09/2018 
-- Design Name: 
-- Module Name:    Binary - Behavioral 
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

entity Binary is
    Port ( Clk : in  STD_LOGIC;
           Load : in  STD_LOGIC;
           Din : in  STD_LOGIC_VECTOR (15 downto 0);
           ShiftOut : out  STD_LOGIC;
           InitOut : out  STD_LOGIC;
           Done : out  STD_LOGIC);
end Binary;

architecture Behavioral of Binary is
	signal data : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
	signal count : integer := 0;
	constant limCount : integer := 15;
begin
	ShiftOut <= data(15);
	
	process(Clk) 
	begin
	
	if(rising_edge(Clk)) then 
		InitOut <= '0';
		
		if(Load = '1') then
			InitOut <= '1';
			Done <= '0';
			data <= Din;	
			Count <= 0;
		else
			if(Count /= limCount) then
				data <= data(14 downto 0) & '0';
				Count <= Count + 1;
			else
				Done <= '1';
			end if;
		end if;
	end if;
	end process;
	
	
end Behavioral;

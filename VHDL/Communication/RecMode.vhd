----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:27:13 04/19/2018 
-- Design Name: 
-- Module Name:    RecMode - Behavioral 
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

entity RecMode is
    Port ( Data_Rec : in  STD_LOGIC_VECTOR (9 downto 0);
			  Clk : in STD_LOGIC;
			  DataInta : in STD_LOGIC;
			  Reset : in STD_LOGIC;
           PCMMotor0 : inout  STD_LOGIC_VECTOR (7 downto 0);
			  PCMMotor1 : inout  STD_LOGIC_VECTOR (7 downto 0);
			  Calibrate : out STD_LOGIC;
			  Reset0 : out STD_LOGIC;
			  Reset1 : out STD_LOGIC);
end RecMode;

architecture Behavioral of RecMode is
	constant motor0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
	constant motor1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
	constant Fun : STD_LOGIC_VECTOR (1 downto 0) := "10";
	constant setReset : STD_LOGIC_VECTOR (5 downto 0) := "000001";
	constant stop : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
	constant nop : STD_LOGIC_VECTOR (7 downto 0) := "00000010";
	constant cal : STD_LOGIC_VECTOR (7 downto 0) := "00000011";
	signal tempData : STD_LOGIC_VECTOR (9 downto 0) := (others => '0');
begin
	
	process(Data_Rec)
	begin
		if(rising_edge(Clk)) then
			Reset0 <= '0';
			Reset1 <= '0';
			Calibrate <= '0';
			if(Reset = '1') then
				PCMMotor0 <= (others => '0');
				PCMMotor1 <= (others => '0');
			elsif(tempData /= Data_Rec) then
				if(Data_Rec(9 downto 8) = motor0) then
					PCMMotor0 <= Data_Rec(7 downto 0);
					PCMMotor1 <= PCMMotor1;
				
				elsif(Data_Rec(9 downto 8) = motor1) then
					PCMMotor1 <= Data_Rec(7 downto 0);
					PCMMotor0 <= PCMMotor0;
					
				elsif(Data_Rec(9 downto 8) = Fun) then
					if(Data_Rec(7 downto 2) = setReset) then
						Reset0 <= Data_Rec(0);
						Reset1 <= Data_Rec(1);
						if(Data_Rec(1) = '1') then
							PCMMotor0 <= (others => '0');
							PCMMotor1 <= (others => '0');
						end if;
					elsif(Data_Rec(7 downto 0) = stop) then
						PCMMotor0 <= (others => '0');
						PCMMotor1 <= (others => '0');
					elsif(Data_Rec(7 downto 0) = cal) then
						Calibrate <= '1';
					elsif(Data_Rec(7 downto 0) = nop) then
						Null;
					end if;
				else
					Null;
				end if;
			end if;
			
			if(DataInta = '1') then
				tempData <= (others => '0');
			else
				tempData <= Data_Rec;
			end if;

		end if;		
		
	end process;

end Behavioral;


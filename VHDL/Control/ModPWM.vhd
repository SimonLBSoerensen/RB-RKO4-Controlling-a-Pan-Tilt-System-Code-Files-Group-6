----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:57:40 04/11/2018 
-- Design Name: 
-- Module Name:    ModPWM - Behavioral 
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
use IEEE.STD_LOGIC_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ModPWM is
generic ( N: natural := 8;
			Max: natural :=127;
			shift_delay : natural := 8);
			
Port ( Clk: in STD_LOGIC;
	PCM: in std_logic_vector (N-1 downto 0);
	PWM_A,PWM_B: out STD_LOGIC);
end ModPWM;

architecture Behavioral of ModPWM is

signal PWM_Count: std_logic_vector (N-2 downto 0) := (others => '0');    -- a full logic vector of zeroes. 
signal Scaled_clk: STD_LOGIC;
signal PCM_unsigned : STD_LOGIC_VECTOR (N-2 downto 0); --den variabel jeg lægger den absolutte værdi af PCM ind i. 

signal Q:    STD_LOGIC_VECTOR( 1 to shift_delay):= (others => '0');    --skifteregisteret der giver delayet 
constant Q_A: STD_LOGIC_VECTOR( 1 to shift_delay):= (others => '1');   --skifteregister betingelse for aktivering af udgang A 
constant Q_B: STD_LOGIC_VECTOR( 1 to shift_delay):= (others => '0');   -- betingelse for udgagn B. 
signal drive_A,drive_B : STD_LOGIC := '0';    -- bliver sat høj når udgang A og B respektivt skal aktiveres. 

begin

-----------------Implements a shiftregister for delay ------	
shiftDelay : process(Clk)
begin
 if Rising_edge(Clk) then
	Q <= Q(2 to shift_delay)& PCM(N-1);

	if (Q=Q_A) then
		drive_A <= '1';
   else 
		drive_A <= '0';
	end if;
	
	if (Q=Q_B) then
		drive_B <= '1';
   else 
		drive_B <= '0';
	end if;
 end if;
end process;

Clock_Scale:process (Clk)
 constant Scalex: integer := 39;
 variable Count: integer range 0 to 50000001 :=0;
	
begin

 if rising_edge(Clk) then   --generates scaled_clk
	if Count >= Scalex then
		Scaled_clk <= '1';
		Count:=0; 
	else
		Scaled_clk <= '0';
		Count:= Count+1;
   end if;
 end if;

end process;

PWM_Generator: process ( Clk, PWM_Count, PCM)
begin
 if rising_edge(Clk) then
	if (scaled_Clk = '1' ) then
		if (PWM_Count < (Max-1)) then
			PWM_Count <= (PWM_Count + 1);
		else
			PWM_count <= (others=>'0');
		end if;
	end if;
	
	if (PCM(N-1)='1') then
		PCM_unsigned <= (not PCM(N-2 downto 0)) +1; --((PCM(N-2 downto 0) - 1) xor "1111111");
	else 
		PCM_unsigned <= PCM(N-2 downto 0);
	end if;

	if PWM_Count < PCM_unsigned then
		if (drive_A='1')then 
			PWM_A <='1';
		else 
		
		end if;
	
		if (drive_B ='1') then 
			PWM_B <='1';
		end if;
	else
		PWM_A <='0';
		PWM_B <='0';
	end if;
 
 
	if (drive_A='0')then 
		PWM_A <='0';
	end if; 
	
	
	if (drive_B ='0') then 
		PWM_B <='0';
	end if;
 
 end if;
	

end process PWM_Generator;



end Behavioral;


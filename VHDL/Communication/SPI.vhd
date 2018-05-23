----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:38:18 03/20/2018 
-- Design Name: 
-- Module Name:    SPI - Behavioral 
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

entity SPISlave is
    Port ( SCLK : in  STD_LOGIC;
			  CLK : in std_logic;
           SS : in  STD_LOGIC;
           MISO : out  STD_LOGIC;
           MOSI : in  STD_LOGIC;
			  			  
			  DATA_Rec : out std_logic_vector ( 9 downto 0);
			  DATA_Tra : in std_logic_vector ( 9 downto 0);

			  DATA_Inta : out  STD_LOGIC);
end SPISlave;

architecture Behavioral of SPISlave is
	
	constant n_bitT : integer := 10;
	
	signal SregSCLK : std_logic_vector(1 downto 0) := (others => '0');
	signal SregSS : std_logic_vector(1 downto 0) := (others => '1'); --1 is idel on SS line 
	
	signal DATA_IntaTemp : STD_LOGIC := '0';
		
begin
	
	-- Send data 
	--MISO <= MISOTemp when SS='0' else 'Z'; --MISO is MSB of SregRecTra when SS is low else it is high inpandans so it dosent interfier 
	
	-- DATA_Inta is dirict concete to DATA_IntaTemp (The recon to DATA_IntaTemp is so DATA_Inta  can start with the value 0 from the beginden)
	DATA_Inta <= DATA_IntaTemp;
	
	process(CLK)
		variable SregRecTra : std_logic_vector(n_bitT-1 downto 0) := (others => '0');
	begin 
		if (rising_edge(CLK)) then 
			--Shift regisre action 
			SregSCLK <= SregSCLK(0) & SCLK;
			SregSS <= SregSS(0) & SS;
			
			--Reset DATA_Inta
			DATA_IntaTemp <= '0';
			
			if(SS = '1') then 
				MISO <= 'Z';
			end if;
			
			--SregSCLK is a rising edge
			if (SregSCLK = "01" and SS = '0') then
				SregRecTra := SregRecTra(n_bitT-2 downto 0) & MOSI;
			end if; 
			
			--SregSCLK is a faling edge
			if (SregSCLK = "10" and SS = '0') then
				MISO <= SregRecTra(n_bitT-1);
			end if;
			
			--Pull data to send and set DATA_Inta
			if SregSS = "10" then
				SregRecTra(9 downto 0) := DATA_Tra;
				MISO <= SregRecTra(n_bitT-1);--Ændring her
				DATA_IntaTemp <= '1';
			end if;
			
			--Push data that are resived 
			if SregSS = "01" then
				DATA_Rec <= SregRecTra(9 downto 0);
			end if;
			
		end if;		
	end process;
	
	
end Behavioral;
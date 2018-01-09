----------------------------------------------------------------------------------
-- Company: 
-- Engineer: LJ
-- 
-- Create Date:    11:38:06 07/21/2017 
-- Design Name: 
-- Module Name: GateTimeGen   
-- Project Name: FrequnecyCounter
-- Target Devices: Spartan LX 9 
-- Tool versions: 
-- Description: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity GateTimeGen is 
	-- generic(
	-- CountLimit : natural	
	-- );
	port ( 
		CLK 			: in STD_LOGIC;
		RESET           : in STD_LOGIC;
		GatePulse		: out STD_LOGIC;
		GateReady		: in STD_LOGIC;
		CountLimit		: in unsigned(30 downto 0);
		Valid			: out STD_LOGIC
		);
end GateTimeGen;

architecture Behavioral of GateTimeGen is

	signal Count_s : unsigned (30 downto 0) := to_unsigned(0,31);
	signal GatePulse_s : std_logic := '0';
	signal GateReady_s : std_logic := '0';
	signal Valid_s : std_logic := '0';
	signal CountLimit_s : unsigned(30 downto 0) := to_unsigned(0,31);

begin
	Valid <= Valid_s;
	GatePulse <= GatePulse_s;
	CountLimit_s <= CountLimit;
	GateReady_s <= GateReady;


	TimeGen : process (CLK,RESET) begin
--	    if (RESET = '1') then
--            GatePulse_s <= '0';
--            GateReady_s <= '0';
--            Valid_s <= '0';
		if rising_edge(CLK) then
			if GateReady_s = '1' and Valid_s = '0'  then
				GatePulse_s <= '1';
				if Count_s = CountLimit_s then
					Count_s <= to_unsigned(0,Count_s'length);
					GatePulse_s <= '0';
					Valid_s <= '1';
				else
					Count_s <= Count_s +1;
				end if;
			end if;
			if GateReady_s = '0' and Valid_s = '1' then
				GatePulse_s <= '0';
				Valid_s <= '0';
			end if;
		end if;
	end process;
end Behavioral;
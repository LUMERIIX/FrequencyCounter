----------------------------------------------------------------------------------
-- Company: 
-- Engineer: LJ
-- 
-- Create Date:    11:38:06 07/21/2017 
-- Design Name: 
-- Module Name: GateTime   
-- Project Name: FrequnecyCounter
-- Target Devices: iCE40 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;

entity GateTime is 
	generic(
		CLK_OCXO : integer
	);
	port ( 
		CLK 			: in STD_LOGIC;
		TimeVal			: in STD_LOGIC_VECTOR (1 downto 0);
		--Testsig			: out STD_LOGIC;
		GatePulse		: out STD_LOGIC;
		GateReady		: in STD_LOGIC;
		Valid 			: out STD_LOGIC
		);
end GateTime;

architecture structure of GateTime is

	component  GateTimeGen  is
		-- generic(
		-- CountLimit : natural
		-- );
		port(
			CLK 			: in STD_LOGIC;
			GatePulse		: out STD_LOGIC;
			GateReady		: in STD_LOGIC;
			CountLimit		: in natural;
			Valid			: out STD_LOGIC
		);
	end component ;
	
	
	signal GatePulse_s	: STD_LOGIC;
	signal Valid_s : std_logic;
	signal Blind_s : std_logic;
	signal CountLimit_s : natural;
	signal TimeVal_s : std_logic_vector(1 downto 0);
	
begin
	--Testsig <= '1';
	GatePulse <= GatePulse_s;
	--Valid_s <= Valid10ms_s;
	TimeVal_s <= TimeVal;
	
	Valid <= Valid_s;
	
	GateTime : component GateTimeGen
	-- generic map (CountLimit => Size_s)
	port map(
		CLK => CLK,
		GatePulse => GatePulse_s,
		GateReady => GateReady,
		Valid => Valid_s,
		CountLimit => CountLimit_s
	);
	
	mux : process (TimeVal_s)
	begin
	if rising_edge (CLK) then
		case TimeVal_s is
		when "00"   => CountLimit_s <= (CLK_OCXO/100);
		when "01"   => CountLimit_s <= (CLK_OCXO/100);
		when "10"   => CountLimit_s <= (CLK_OCXO);
		when others => CountLimit_s <= (CLK_OCXO*10);
		end case;
	end if;
	end process;
	
	


end architecture structure;
	
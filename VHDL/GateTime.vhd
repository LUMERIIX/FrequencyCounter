----------------------------------------------------------------------------------
-- Company: 
-- Engineer: LJ
-- 
-- Create Date:    11:38:06 07/21/2017 
-- Design Name: 
-- Module Name: GateTime   
-- Project Name: FrequnecyCounter
-- Target Devices: Spartan 6 LX9 
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
use IEEE.NUMERIC_STD.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity GateTime is 
	generic(
		CLK_OCXO : integer := 10000000
	);
	port ( 
		CLK 			: in STD_LOGIC;
		RESET           : in STD_LOGIC;
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
			RESET           : in STD_LOGIC;
			GatePulse		: out STD_LOGIC;
			GateReady		: in STD_LOGIC;
			CountLimit		: in unsigned(30 downto 0);
			Valid			: out STD_LOGIC
		);
	end component ;
	
	
	signal GatePulse_s	: STD_LOGIC;
	signal Valid_s : std_logic;
	signal Blind_s : std_logic;
	signal CountLimit_s : unsigned(30 downto 0) := to_unsigned(0,31);
	signal TimeVal_s : std_logic_vector(1 downto 0) := "00";

begin
	--Testsig <= '1';
	GatePulse <= GatePulse_s;
	--Valid_s <= Valid10ms_s;
	TimeVal_s <= TimeVal;
	
	Valid <= Valid_s;

	Init : process (RESET)
	begin
        if (RESET = '1') then
            --GatePulse_s <= '0';
            --Valid_s <= '0';
            Blind_s <= '0';
            --CountLimit_s <= to_unsigned(0,CountLimit_s'length);
            --TimeVal_s <= "00";
        end if;
	end process;

	GateTime : component GateTimeGen
	-- generic map (CountLimit => Size_s)
	port map(
		CLK => CLK,
		RESET => RESET,
		GatePulse => GatePulse_s,
		GateReady => GateReady,
		Valid => Valid_s,
		CountLimit => CountLimit_s
	);

	mux : process (CLK)
	begin
	if rising_edge (CLK) then
		case TimeVal_s is
		when "00"   => CountLimit_s <= to_unsigned(10000,CountLimit_s'length);--10000;--(CLK_OCXO/1000);  --0.001s
		when "01"   => CountLimit_s <= to_unsigned(100000,CountLimit_s'length);--100000;--(CLK_OCXO/100);   --0.01s
		when "10"   => CountLimit_s <= to_unsigned(1000000,CountLimit_s'length);--1000000;--(CLK_OCXO/10);      --0.1s
		when others => CountLimit_s <= to_unsigned(10000000,CountLimit_s'length);--10000000;--(CLK_OCXO);   --1s
		end case;
	end if;
	end process;
	
	


end architecture structure;
	
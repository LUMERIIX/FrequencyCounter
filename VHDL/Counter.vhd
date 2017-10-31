-- Company:
-- Engineer: LJ
--
-- Create Date:    11:38:06 07/21/2017
-- Design Name:
-- Module Name: Counter
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
--use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Counter is
	port (
		CLK 		: in STD_LOGIC;
		ENABLE 		: in STD_LOGIC;
		TEST		: out STD_LOGIC;
		DataValid	: out STD_LOGIC;
		RESET		: in STD_LOGIC;
		DATA		: out unsigned
		);
end Counter;

architecture structure of Counter is

signal Count_s : unsigned (13 downto 0);
signal DataValid_s : STD_LOGIC;


begin
	DATA <= Count_s;
	DataValid <= DataValid_s;

	Counter : process (CLK,RESET) begin
	if RESET = '0' then
		if rising_edge(CLK) then
			if ENABLE = '1' then
				Count_s <= Count_s + 1;
				--DataValid_s <= '0';
			elsif ENABLE = '0' and Count_s > to_unsigned(0,Count_s'length) then
				DataValid_s <= '1';
			end if;
		end if;
	else
		Count_s <= (others => '0');
		DataValid_s <= '0';
		TEST <= '0';
	end if;
	end process;

end architecture structure;

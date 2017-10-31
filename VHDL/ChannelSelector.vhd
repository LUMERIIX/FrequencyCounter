----------------------------------------------------------------------------------
-- Company:
-- Engineer: LJ
--
-- Create Date:    11:38:06 07/21/2017
-- Design Name:
-- Module Name: ChannelSelector
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

entity ChannelSelector is
	port (
		IntRefClk 		: in STD_LOGIC;
		ClkA			: in STD_LOGIC;
		ClkB			: in STD_LOGIC;
		ExtRefClk	 	: in STD_LOGIC;
		MeasureClk		: out STD_LOGIC;
		RefClkSelect	: in STD_LOGIC;
		MeasClkSelect	: in STD_LOGIC;
		RefClk			: out STD_LOGIC
		);
end ChannelSelector;

architecture structure of ChannelSelector is

begin
	Selector : process (RefClkSelect,MeasClkSelect,ExtRefClk,IntRefClk,ClkA,ClkB) begin
				if RefClkSelect = '1' then
					RefClk <= ExtRefClk;
				else
					RefClk <= IntRefClk;
				end if;
				if MeasClkSelect = '1' then
					MeasureClk <= ClkB;
				else
					MeasureClk <= ClkA;
				end if;
	end process;
end architecture structure;

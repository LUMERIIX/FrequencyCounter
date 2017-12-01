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
		ChannelConfig   : in std_logic_vector(1 downto 0);
		RefClk			: out STD_LOGIC
	 );
end ChannelSelector;

architecture structure of ChannelSelector is

begin
    Selector : process (ChannelConfig,ClkA,ClkB,IntRefClk,ExtRefClk) begin
        if ChannelConfig = "00" then
            MeasureClk <= ClkA;
            RefClk <= IntRefClk;
        elsif ChannelConfig = "01" then
            MeasureClk <= ClkA;
            RefClk <= ExtRefClk;
        elsif ChannelConfig = "10" then
            MeasureClk <= ClkB;
            RefClk <= IntRefClk;
        elsif ChannelConfig = "11" then
            MeasureClk <= ClkB;
            RefClk <= ExtRefClk;
        end if;
    end process;
end architecture structure;

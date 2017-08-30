----------------------------------------------------------------------------------
-- Company: 
-- Engineer: LJ
-- 
-- Create Date:    11:38:06 07/21/2017 
-- Design Name: 
-- Module Name: Processor   
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Processor is 
	generic (
		CLK_OCXO : integer 
	)
	port (
		CLK : in STD_LOGIC;
		DataValid : in STD_LOGIC;
		MeasCountVal : in unsigned;
		RefCountVal : in unsigned;
		CounterReset : out  STD_LOGIC;
		Valid : out STD_LOGIC;
		RawDataOut : out STD_LOGIC
		);
end Processor;

architecture structure of Processor is

	
begin

	Calculate : process (CLK) begin
		if rising_edge (CLK) then
			if DataValid = '1' then
				RawDatOut_s <= std_logic_vector(MeasCountVal_s * (to_unsigned(CLK_OCXO,20) / RefCountVal_s));
				CounterReset_s <= '1';
			elsif DataValid = '0' and CounterReset_s = '1' then
				CounterReset_s <= '0';
				--Test <= '0';
			end if;
			if RawDatOut_s > std_logic_vector(to_unsigned(990,RawDatOut_s'length)) then
				Valid <= '1';
			else 
				Valid <= '0';
			end if;		
		end if;
	end process;

end architecture structure;
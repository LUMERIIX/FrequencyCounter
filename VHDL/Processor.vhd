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
	);
	port (
		CLK : in STD_LOGIC;
		DataInValid : in STD_LOGIC;
		MeasCountVal : in unsigned;
		RefCountVal : in unsigned;
		CounterReset : out  STD_LOGIC;
		DataOutValid : out STD_LOGIC;
		TEST : in std_logic;
		RawDataOut : out STD_LOGIC_VECTOR
		);
end Processor;

architecture structure of Processor is
	signal CounterReset_s : std_logic;
	--signal RawDataOut_s : STD_LOGIC_VECTOR;
	
begin
	--RawDataOut_s <= RawDataOut;
	CounterReset <= CounterReset_s;
	Calculate : process (CLK) begin
		if rising_edge (CLK) then
			if DataInValid = '1' then
				RawDataOut <= std_logic_vector(MeasCountVal * (to_unsigned(CLK_OCXO,20) / RefCountVal));
				CounterReset_s <= '1';
				DataOutValid <= '1';
			elsif TEST = '1' then
				CounterReset_s <= '0';
				DataOutValid <= '0';
				--Test <= '0';
			end if;
			--if()
--			if RawDataOut_s > std_logic_vector(to_unsigned(990,RawDataOut'length)) then
--				Valid <= '1';
--			else 
--				Valid <= '0';
--			end if;		
		end if;
	end process;

end architecture structure;
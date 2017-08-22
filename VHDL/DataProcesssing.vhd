----------------------------------------------------------------------------------
-- Company: 
-- Engineer: LJ
-- 
-- Create Date:    11:38:06 07/21/2017 
-- Design Name: 
-- Module Name: DataProcessing   
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

entity DataProcessing is 
	generic (
		CLK_OCXO : integer 
	);
	port( 
		CLK : in STD_LOGIC;
		RefCountVal : in unsigned (13 downto 0);
		MeasCountVal : in unsigned (13 downto 0);
		CounterReset : out STD_LOGIC;
		DataValid : in STD_LOGIC;
		--Test : out STD_LOGIC;
		DATOUT : out unsigned (33 downto 0)
		);
end DataProcessing;

architecture structure of DataProcessing is
	 
	signal RefCountVal_s : unsigned (13 downto 0);
	signal MeasCountVal_s : unsigned (13 downto 0);
	signal DATOUT_s	 : unsigned (33 downto 0);
	signal Ready_s : std_logic;
begin
	RefCountVal_s <= RefCountVal;
	MeasCountVal_s <= MeasCountVal;
	
	Calculate : process (CLK) begin
		if rising_edge (CLK) then
			if DataValid = '1' then
				DATOUT <= (MeasCountVal_s * (to_unsigned(CLK_OCXO,20) / RefCountVal_s));
				CounterReset <= '1';
			elsif DataValid = '0' and CounterReset = '1' then
				CounterReset <= '0';
				--Test <= '0';
			end if;
		end if;
	end process;
	
	
end architecture structure;
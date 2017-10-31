----------------------------------------------------------------------------------
-- Company:
-- Engineer: LJ
--
-- Create Date:    11:38:06 07/21/2017
-- Design Name:
-- Module Name: FrequencyCounter
-- Project Name: FrequencyCounter
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
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity FrequencyCounter is
	port (
		CLK 			: in STD_LOGIC;
		MEAS_CLK		: in STD_LOGIC;
		GateEnable	 	: in STD_LOGIC;
		RefCountVal		: out unsigned;
		GatePulse		: in  STD_LOGIC;
		TEST 			: out STD_LOGIC;
		MeasCountVal	: out unsigned;
		OpenGate		: out STD_LOGIC;
		DataValid		: out STD_LOGIC;
		RESET			: in STD_LOGIC;
		Valid 			: in STD_LOGIC
		);
end FrequencyCounter;

architecture structure of FrequencyCounter is

	component Counter is
		port(
		CLK 		: in STD_LOGIC;
		ENABLE 		: in STD_LOGIC;
		TEST		: out STD_LOGIC;
		DataValid	: out STD_LOGIC;
		RESET		: in STD_LOGIC;
		DATA		: out unsigned
		);
	end component Counter;
	signal OpenGate_s : STD_LOGIC;
	signal RefCountVal_s : unsigned (13 downto 0);
	signal MeasCountVal_s : unsigned (13 downto 0);
	signal DataValidRef_s : STD_LOGIC;
	signal DataValidMeas_s : STD_LOGIC;
	signal DataValid_s : STD_LOGIC;
begin
	DataValid_s <= DataValidMeas_s and DataValidRef_s;
	--RefCountVal <= RefCountVal_s;
	--MeasCountVal <= MeasCountVal_s;
	OpenGate <= OpenGate_s;
	DataValid <= DataValid_s;

	GateControl : process (MEAS_CLK) begin
		if rising_edge (MEAS_CLK)  then
			if GateEnable = '1' and Valid = '0' then
				OpenGate_s <= '1';
			end if;
			if Valid = '1' and GatePulse = '0' then
				OpenGate_s <= '0';
			end if;
		end if;
	end process;

	BaseCounter : component Counter
	port map(
		CLK => CLK,
		ENABLE => OpenGate_s,
		TEST => open,
		DataValid => DataValidRef_s,
		RESET => RESET,
		DATA => RefCountVal
	);

	MeasCounter : component Counter
	port map(
		CLK => MEAS_CLK,
		ENABLE => OpenGate_s,
		TEST => open,
		DataValid => DataValidMeas_s,
		RESET => RESET,
		DATA => MeasCountVal
	);
end architecture structure;


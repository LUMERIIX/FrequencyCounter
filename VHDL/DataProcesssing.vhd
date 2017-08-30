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
--use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity DataProcessing is 
	generic (
		CLK_OCXO : integer 
	);
	port( 
		CLK : in STD_LOGIC;
		RefCountVal : in unsigned;--(13 downto 0);
		MeasCountVal : in unsigned; --(13 downto 0);
		CounterReset : out STD_LOGIC;
		DataValid : in STD_LOGIC;
		Data8bit : out std_logic_vector(7 downto 0);
		Valid : out std_logic;
		DataOut : out std_logic_vector (7 downto 0);--(33 downto 0)
		DataIn : in std_logic_vector (7 downto 0)--(33 downto 0)
		);
end DataProcessing;

architecture structure of DataProcessing is
	
	component DataController is
	port (
		CLK : in STD_LOGIC;
		RST : in STD_LOGIC;
		ce : in STD_LOGIC;
		
		DataOut : out std_logic_vector(7 downto 0);
		DataIn : in std_logic_vector(7 downto 0);
		
		RawDataIn	: out std_logic_vector;
		RawDataOut : in std_logic_vector
	);
	end component;
	
	component Processor is
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
	end component;
	
	signal RefCountVal_s : unsigned (13 downto 0);
	signal MeasCountVal_s : unsigned (13 downto 0);
	signal CounterReset_s : std_logic;
	signal RawDatOut_s : std_logic_vector;
	signal RawDatIn_s : std_logic_vector;
	signal Ready_s : std_logic;
	signal Checkbit : std_logic;
	signal test : unsigned (7 downto 0);
begin
	CounterReset <= CounterReset_s;
	RawDataOut <= RawDatOut_s;
	

	
	Calculate : component processor 
		generic map (
			CLK_OCXO => CLK_OCXO
		)
		port map (
			CLK             => CLK,
			DataValid       => DataValid,
			MeasCountVal    => MeasCountVal,
			RefCountVal     => RefCountVal,
			CounterReset    => CounterReset_s,
			Valid           => Valid,
			RawDataOut		=> RawDatOut_s,
		);
	Control : component DataController 
		port map(
			CLK        => CLK,
			RST        => '1',
			ce         => CounterReset_s,
			DataOut    => open,
			DataIn     => open,
			RawDataIn  => RawDatIn_s,
			RawDataOut => RawDatOut_s,
		
		);
	
	
	
end architecture structure;
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
		Valid : out std_logic;
		TEST : out std_logic;
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
		RawDataOut : in std_logic_vector;
		TEST 		: out std_logic
	);
	end component DataController;
	
	component Processor is
	generic (
		CLK_OCXO : integer 
	);
	port (
		CLK : in STD_LOGIC;
		DataValid : in STD_LOGIC;
		MeasCountVal : in unsigned;
		RefCountVal : in unsigned;
		CounterReset : out  STD_LOGIC;
		Valid : out STD_LOGIC;
		RawDataOut : out STD_LOGIC_VECTOR;
		DataControllerEnable : out std_logic
	);
	end component Processor;
	
--	signal RefCountVal_s : unsigned (13 downto 0);
--	signal MeasCountVal_s : unsigned (13 downto 0);
	signal CounterReset_s : std_logic;
	signal RawDataOut_s : std_logic_vector ((MeasCountVal'length+20)-1 downto 0);
	signal RawDataIn_s : std_logic_vector (RawDataOut_s'length-1 downto 0);
	signal Valid_s : std_logic;
	signal DataControllerEnable_s : std_logic;
	--signal DataValid_s : std_logic;
begin
	CounterReset <= CounterReset_s;
	Valid <= Valid_s;

	
	Calculate : component Processor 
		generic map (
			CLK_OCXO => CLK_OCXO
		)
		port map (
			CLK             => CLK,
			DataValid       => DataValid,
			MeasCountVal    => MeasCountVal,
			RefCountVal     => RefCountVal,
			CounterReset    => CounterReset_s,
			Valid           => Valid_s,
			RawDataOut		=> RawDataOut_s,
			DataControllerEnable => DataControllerEnable_s
		);
		
	Control : component DataController
		port map(
			CLK        => CLK,
			RST        => '1',
			ce         => DataControllerEnable_s,
			DataOut    => open,
			DataIn     => (others => '0'),
			RawDataIn  => RawDataIn_s,
			RawDataOut => RawDataOut_s,
			TEST 	   => TEST
		);
	
	
	
end architecture structure;
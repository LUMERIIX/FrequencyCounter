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
--use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity DataProcessing is 
	generic (
		CLK_OCXO : integer 
	);
	port( 
		CLK : in STD_LOGIC;
		RefCountVal : in unsigned;--(13 downto 0);
		MeasCountVal : in unsigned; --(13 downto 0);
		CounterReset : out STD_LOGIC;
		DataInValid : in STD_LOGIC;
		Valid : out std_logic;
		TEST : out std_logic;
		DataOut : out std_logic_vector (7 downto 0);--(33 downto 0)
		DataIn : in std_logic_vector (7 downto 0);--(33 downto 0)
		debug : out std_logic;
		DataOutReady : in std_logic;
		DataOutValid : out std_logic
		);
end DataProcessing;

architecture structure of DataProcessing is
	
	component DataController is
	port (
		CLK 			: in STD_LOGIC;
		RST 			: in STD_LOGIC;
		
		DataOut 		: out std_logic_vector(7 downto 0);
		DataIn 			: in std_logic_vector(7 downto 0);
		
		RawDataIn		: in std_logic_vector;
		RawDataOut 		: out std_logic_vector;
		
		DataOutValid 	: out std_logic;
		DataInValid 	: in std_logic;
		DataOutReady 	: in std_logic;
		debug 			: out std_logic;
		
		TEST 			: out std_logic
	);
	end component DataController;
	
	component Processor is
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
	end component Processor;
	
--	signal RefCountVal_s : unsigned (13 downto 0);
--	signal MeasCountVal_s : unsigned (13 downto 0);
	signal CounterReset_s : std_logic;
	signal RawDataOut_s : std_logic_vector ((MeasCountVal'length+20)-1 downto 0);
	signal RawDataIn_s : std_logic_vector (RawDataOut_s'length-1 downto 0);
	signal Valid_s : std_logic;
	signal DataControllerEnable_s : std_logic;
	signal TEST_s : std_logic;
	--signal DataValid_s : std_logic;
begin
	CounterReset <= CounterReset_s;
	Valid <= Valid_s;
	TEST <= TEST_s;
	
	Calculate : component Processor 
		generic map (
			CLK_OCXO => CLK_OCXO
		)
		port map (
			CLK             => CLK,
			DataInValid       => DataInValid,
			MeasCountVal    => MeasCountVal,
			RefCountVal     => RefCountVal,
			CounterReset    => CounterReset_s,
			DataOutValid    => Valid_s,
			TEST 			=> TEST_s,
			RawDataOut		=> RawDataOut_s
		);
		
	Control : component DataController
		port map(
			-- CLK        => CLK,
			-- RST        => '1',
			-- ce         => DataControllerEnable_s,
			-- DataOut    => open,
			-- DataIn     => (others => '0'),
			-- RawDataIn  => RawDataIn_s,
			-- RawDataOut => RawDataOut_s,
			-- TEST 	   => TEST
			CLK 			=> CLK,
			RST 			=> '0',
			DataOut 		=> DataOut,
			DataIn 			=> DataIn,
			RawDataIn		=> "110100111111111111001011",
			RawDataOut 		=> RawDataOut_s,
			debug 			=> debug,
			DataOutValid 	=> DataOutValid,
			DataInValid 	=> Valid_s,
			DataOutReady 	=> DataOutReady,
			TEST 			=> TEST_s
		);
		

	
	
	
end architecture structure;
----------------------------------------------------------------------------------
-- Company:
-- Engineer: LJ
--
-- Create Date:    11:38:06 07/21/2017
-- Design Name:
-- Module Name: FrequnecyCounterTop

-- Project Name: FrequnecyCounter
-- Target Devices: iCE40
-- Tool versions:
-- Description:
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity FrequnecyCounterTop is
	generic(
		CLK_OCXO : integer := 1000000
	);
	port (
		IntRefClk 		: in STD_LOGIC;
		ClkA			: in STD_LOGIC;
		ClkB			: in STD_LOGIC;
		ExtRefClk 		: in STD_LOGIC;
		ENABLE_EXT_REF	: in STD_LOGIC;
		MEAS_OUT		: out STD_LOGIC;
		LED1			: out STD_LOGIC;
		TP0				: out STD_LOGIC;
		TP1				: out STD_LOGIC;
		TP2				: out STD_LOGIC;
		TP3				: out STD_LOGIC;
		TP4				: out STD_LOGIC;
		TP5				: out STD_LOGIC;
		CLKOUT			: out STD_LOGIC;
		TimeVal			: in STD_LOGIC_VECTOR (1 downto 0);
		STARTMEAS		: in STD_LOGIC;
		ALWAYSON		: out STD_LOGIC;
		uart_rx			: in STD_LOGIC;
		uart_tx			: out STD_LOGIC;
		MeasClkSelect   : in STD_LOGIC;
		RefClkSelect	: in STD_LOGIC
		);
end FrequnecyCounterTop;

architecture structure of FrequnecyCounterTop is

	component FrequencyCounter 	is
		port(
			CLK 			: in STD_LOGIC;
			MEAS_CLK		: in STD_LOGIC;
			GateEnable	 	: in STD_LOGIC;
			RefCountVal		: out unsigned (13 downto 0);
			GatePulse		: in  STD_LOGIC;
			TEST			: out STD_LOGIC;
			DataValid 		: out STD_LOGIC;
			RESET			: in STD_LOGIC;
			MeasCountVal	: out unsigned (13 downto 0);
			OpenGate		: out STD_LOGIC;
			Valid			: in STD_LOGIC
			);
	end component FrequencyCounter;

	component GateTime 	is
		generic (
			CLK_OCXO : integer
		);
		port(
			CLK 			: in STD_LOGIC;
			TimeVal			: in STD_LOGIC_VECTOR (1 downto 0);
			--Testsig			: out STD_LOGIC;
			GatePulse		: out STD_LOGIC;
			GateReady		: in STD_LOGIC;
			--DataValid 		: out STD_LOGIC;
			Valid			: out STD_LOGIC
		);
	end component GateTime;

	component DataProcessing is
		generic (
			CLK_OCXO : integer
		);
		port(
			CLK : in STD_LOGIC;
			RefCountVal : in unsigned;
			MeasCountVal : in unsigned ;
			DataInValid : in STD_LOGIC;
			CounterReset : out STD_LOGIC;
			--Data8bit : out std_logic_vector(7 downto 0);
			Valid : out std_logic;
			TEST : out std_logic;
			debug : out std_logic;
			DataOut : out std_logic_vector (7 downto 0);--(33 downto 0)
         	DataIn : in std_logic_vector (7 downto 0);--(33 downto 0)
         	DataOutReady : in std_logic;
            DataOutValid : out std_logic
		);
	end component DataProcessing;

	 component ChannelSelector is
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
	 end component;

	component uart is
		port(
			clk			:	IN		STD_LOGIC;										--system clock
			reset_n		:	IN		STD_LOGIC;										--ascynchronous reset
			tx_ena		:	IN		STD_LOGIC;										--initiate transmission
			tx_data		:	IN		STD_LOGIC_VECTOR(7 DOWNTO 0);  					--data to transmit
			rx			:	IN		STD_LOGIC;										--receive pin
			rx_busy		:	OUT		STD_LOGIC;										--data reception in progress
			rx_error	:	OUT		STD_LOGIC;										--start, parity, or stop bit error detected
			rx_data		:	OUT		STD_LOGIC_VECTOR(7 DOWNTO 0);					--data received
			tx_busy		:	OUT		STD_LOGIC;  									--transmission in progress
			tx			:	OUT		STD_LOGIC										--transmit pin
		);
	end component;

	--signal ClkA_s : std_logic;
	--signal ClkB_s : std_logic;
	signal RefClk_s : std_logic;
	--signal ExtRef_s : std_logic;
	signal GatePulse_s : std_logic;
	signal MeasureClock_s : std_logic;
	signal RefCountVal_s : unsigned (13 downto 0);
	signal MeasCountVal_s : unsigned (13 downto 0);
	signal GateReady_s : std_logic;
	signal DATOUT_s : std_logic_vector(33 downto 0);
	signal TimeVal_s : std_logic_vector (1 downto 0);
	signal Startmeas_s : std_logic;
	signal Valid_s : std_logic;
	signal GateEnable_s : std_logic;
	signal done_s : std_logic;
	signal debug1_s : std_logic;
	signal debug2_s : std_logic;
	signal LedDbg_s : std_logic_vector (7 downto 0);
	signal test		: std_logic;
	signal DataValid_s : std_logic;
	signal CounterReset_s : std_logic;
	signal rx_busy_s : std_logic;
	signal tx_busy_s : std_logic;
	signal DataOutReady : std_logic;
	signal rx_error_s : std_logic;
	signal Count2_s : unsigned (19 downto 0);
    signal reset_s	: std_logic;
	signal rx_data_s : std_logic_vector(7 downto 0);
	signal uart_tx_s : std_logic;
	signal Data8bit_s : std_logic_vector(7 downto 0);
	signal txValid_s : std_logic;
	signal TxData_s : std_logic_vector(7 downto 0);
	signal RxData_s : std_logic_vector(7 downto 0);
	signal test_s : std_logic;
	signal MeasureClocktest_s : std_logic;
	--signal OpenGate_s : STD_LOGIC;
begin
	Startmeas_s <= STARTMEAS;
	LED1 <= GatePulse_s;
	ALWAYSON <= '1';
	TimeVal_s <= TimeVal;
	--RefClk_s <= ExtRefClk;
	--MeasureClock_s <= ClkA;

	MEAS_OUT <= MeasureClock_s;
	TP0 <= txValid_s;
	--TP3 <= Valid_s;
	TP2 <= GatePulse_s;
	TP1 <= DataValid_s;
	TP4 <= txValid_s;
	--LED4 <= GatePulse_s;
	CLKOUT <= RefClk_s;
	--TP5 <= ;
	--LED2 <= test1;
	--LED3 <= test;
	uart_tx <= not uart_tx_s;
	--tx_data_s <= std_logic_vector(DATOUT_s);

	Timing : component GateTime
	generic map(
		CLK_OCXO => CLK_OCXO
	)
	port map(
		CLK => RefClk_s,
		TimeVal => TimeVal_s,
		GatePulse => GatePulse_s,
		--Testsig => TP4,
		GateReady => GateReady_s,
		Valid => Valid_s
	);

	Start : process (Startmeas_s,GateReady_s) begin
		if rising_edge(Startmeas_s) and GateReady_s = '0' then
			GateEnable_s <= '1';
			--test_s <= '1';
		end if;
		if GateReady_s = '1' then
			GateEnable_s <= '0';
		end if;
	end process;

	FreqCount : component FrequencyCounter
	port map(
		CLK => RefClk_s,
		MEAS_CLK => MeasureClock_s,
		GateEnable => GateEnable_s,
		GatePulse => GatePulse_s,
		RefCountVal => RefCountVal_s,
		DataValid => DataValid_s,
		RESET => CounterReset_s,
		TEST => open,
		MeasCountVal => MeasCountVal_s,
		OpenGate => GateReady_s,
		Valid => Valid_s
	);

	Processing : component DataProcessing
	generic map(
		CLK_OCXO => CLK_OCXO
	)
	port map(
		CLK => RefClk_s,
		RefCountVal => RefCountVal_s,
		MeasCountVal => MeasCountVal_s,
		DataInValid =>DataValid_s,
		TEST => TP3,
		CounterReset => CounterReset_s,
		Valid => open,
		debug => TP5,
		DataOut => TxData_s,
     	DataIn => RxData_s,
     	DataOutReady => DataOutReady,
        DataOutValid => txValid_s
	);
	DataOutReady <= not tx_busy_s;

	ChannelSelect : component ChannelSelector
	port map(
		IntRefClk 		=> IntRefClk,
		ClkA			=> ClkA,
		ClkB			=> ClkB,
		ExtRefClk	 	=> ExtRefClk,
		MeasureClk		=> MeasureClocktest_s,
		RefClkSelect	=> RefClkSelect,
		MeasClkSelect	=> MeasClkSelect,
		RefClk			=> RefClk_s
	);

	reset : process (MeasureClocktest_s) begin
		if rising_edge(MeasureClocktest_s) then
				if Count2_s = to_unsigned(16000, Count2_s'length) then --1kHz MeasureClk
					Count2_s <= to_unsigned(0,Count2_s'length);
					MeasureClock_s <= not MeasureClock_s;
				else
					Count2_s <= Count2_s +1;
				end if;
			end if;
    end process;

	DataTransfer : component uart
	port map(
		clk		 => RefClk_s,
		reset_n	 => '1',
		tx_ena	 => txValid_s,
		tx_data	 => TxData_s,
		rx		 => uart_rx,
		rx_busy	 => rx_busy_s,
		rx_error => rx_error_s,
		rx_data	 => RxData_s,
		tx_busy	 => tx_busy_s,
		tx		 => uart_tx_s
	);

end architecture structure;

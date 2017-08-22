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
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;

entity FrequnecyCounterTop is
	generic(
		CLK_OCXO : integer := 1000000
	);
	port ( 
		REF_CLK 		: in STD_LOGIC;
		CLK_A			: in STD_LOGIC;
		CLK_B			: in STD_LOGIC;
		EXT_REF_CLK 	: in STD_LOGIC;
		ENABLE_EXT_REF	: in STD_LOGIC;
		LED2			: out STD_LOGIC;
		MEAS_OUT		: out STD_LOGIC;
		LED1			: out STD_LOGIC;
		LED3 			: out STD_LOGIC;
		TP0				: out STD_LOGIC;
		TP1				: out STD_LOGIC;
		TP2				: out STD_LOGIC;
		TP3				: out STD_LOGIC;
		TP4				: out STD_LOGIC;
		TP5				: out STD_LOGIC;
		CLKOUT			: out STD_LOGIC;
		TimeVal			: in STD_LOGIC_VECTOR (1 downto 0);
		LED4			: out STD_LOGIC;
		STARTMEAS		: in STD_LOGIC;
		ALWAYSON		: out STD_LOGIC;
		uart_rx			: in STD_LOGIC;
		uart_tx			: out STD_LOGIC;
		TimeVal_out		: out STD_LOGIC_VECTOR(1 downto 0)
		--DATAOUT_Process	: out unsigned (23 downto 0)
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
			Testsig			: out STD_LOGIC;
			GatePulse		: out STD_LOGIC;
			GateReady		: in STD_LOGIC;
			DataValid 		: out STD_LOGIC;
			Valid			: out STD_LOGIC
		);
	end component GateTime;
	
	component DataProcessing is
		generic (
			CLK_OCXO : integer
		);
		port(
			CLK : in STD_LOGIC;
			RefCountVal : in unsigned (13 downto 0);
			MeasCountVal : in unsigned (13 downto 0);
			DataValid : in STD_LOGIC;
			CounterReset : out STD_LOGIC;
			--Test : out STD_LOGIC;
			DATOUT : out std_logic_vector (27 downto 0)
		);
	end component DataProcessing;
	
	-- component UART is 
		-- port(
			-- clk			: in std_logic;
			-- reset		: in std_logic;
			-- uart_tx 	: out std_logic;
			-- uart_rx		: in std_logic
		-- );
	-- end component;
	component t_serial is
		port(
			sys_clk: in std_logic; -- 100 MHz system clock
	  
			led : out std_logic_vector(7 downto 0);
			uart_rx : in std_logic;
			uart_tx : out std_logic;
			Data_TX : in unsigned(33 downto 0);
	  
			pmod_1 : out std_logic; -- debug outputs
			pmod_2 : out std_logic;
	  
			reset_btn : in std_logic
		);
	end component;
	
	signal ClkA_s : std_logic;
	--signal ClkB_s : std_logic;
	signal ClkRef_s : std_logic;
	--signal ExtRef_s : std_logic;
	-- signal Count_s : unsigned (7 downto 0);
	-- signal Count2_s : unsigned (7 downto 0);
	signal GatePulse_s : std_logic;
	signal Measure_Clock_s : std_logic;
	signal RefCountVal_s : unsigned (13 downto 0);
	signal MeasCountVal_s : unsigned (13 downto 0);
	signal GateReady_s : std_logic;
	signal DATOUT_s : unsigned (33 downto 0);
	signal TimeVal_s : std_logic_vector (1 downto 0);
	--signal GlockGen_s : std_logic;
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
	--signal OpenGate_s : STD_LOGIC;
begin
	Startmeas_s <= STARTMEAS;
	LED1 <= '1';
	ALWAYSON <= '1';
	--DATAOUT_Process <= DATOUT_s;
	ClkRef_s <= REF_CLK;
	TimeVal_s <= TimeVal;
	Measure_Clock_s <= CLK_A;
	TimeVal_out <= TimeVal_s;

	MEAS_OUT <= Measure_Clock_s;
	TP0 <= test;	
	TP3 <= CounterReset_s;
	--TP2 <= test1;
	TP1 <= DataValid_s;
	LED4 <= GatePulse_s;
	CLKOUT <= ClkRef_s;
	TP5 <= GateReady_s;
	--LED2 <= test1;
	LED3 <= test;
	
	-- Control : process (DATOUT_s) begin
		-- if rising_edge (ClkRef_s) then
			-- if DATOUT_s >= to_unsigned(333000, DATOUT_s'length) then
				-- test <= '1';
			-- elsif DATOUT_s = to_unsigned(0, DATOUT_s'length) then
				-- test <= '0';
			-- end if;
		-- end if;
	-- end process;
		
	Timing : component GateTime
	generic map(
		CLK_OCXO => CLK_OCXO
	)
	port map(
		CLK => ClkRef_s,
		TimeVal => TimeVal_s,
		GatePulse => GatePulse_s,
		--Testsig => TP4,
		GateReady => GateReady_s,
		Valid => Valid_s
	);
	
	-- Divider : process (Measure_Clock_s) begin
		-- if rising_edge(Measure_Clock_s) then
			-- if Count2_s = to_unsigned(337, Count2_s'length) then --1kHz signal
                -- Count2_s <= 0;
                 -- GlockGen_s <= not GlockGen_s;
            -- else
                -- Count2_s <= Count2_s +1;
            -- end if;
        -- end if;
    -- end process;
	
	Start : process (Startmeas_s) begin
		if rising_edge (Startmeas_s) and GateReady_s = '0' then
			GateEnable_s <= '1';
		end if;
		if GateReady_s = '1' then
			GateEnable_s <= '0';
		end if;
	end process;
		
	FreqCount : component FrequencyCounter
	port map(
		CLK => ClkRef_s,
		MEAS_CLK => Measure_Clock_s,
		GateEnable => GateEnable_s,
		GatePulse => GatePulse_s,
		RefCountVal => RefCountVal_s,
		DataValid => DataValid_s,
		RESET => CounterReset_s,
		TEST => TP2,
		MeasCountVal => MeasCountVal_s,
		OpenGate => GateReady_s,
		Valid => Valid_s
	);
	
	Processing : component DataProcessing
	generic map(
		CLK_OCXO => CLK_OCXO
	)
	port map(
		CLK => ClkRef_s,
		RefCountVal => RefCountVal_s,
		MeasCountVal => MeasCountVal_s,
		DataValid =>DataValid_s,
		CounterReset => CounterReset_s,
		--Test => TP2,
		DATOUT => DATOUT_s
	);	
	
	UART : component t_serial
	port map(
		sys_clk => ClkRef_s,  
		led => LedDbg_s,
		Data_TX => open,
		uart_rx => uart_rx,
		uart_tx => uart_tx, 
		pmod_1 => debug1_s,
		pmod_2 => debug2_s,
		reset_btn => '1'
	);

	
end architecture structure;
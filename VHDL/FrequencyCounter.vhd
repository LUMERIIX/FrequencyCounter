----------------------------------------------------------------------------------
-- Company:
-- Engineer: LJ
--
-- Create Date:    13:35:49 12/07/2017
-- Design Name:
-- Module Name: FrequencyCounter
-- Project Name: FrequencyCounter
-- Target Devices: Spartan 6 LX 9
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FrequencyCounter is
    generic(
        CLK_OCXO : integer;
        ARST_LVL : std_logic := '0'                       -- asynchronous reset level
    );
    port (
        --wb-interface
        wb_clk_i      : in  std_logic;                    -- master clock input
        wb_rst_i      : in  std_logic := '0';             -- synchronous active high reset
        arst_i        : in  std_logic := not ARST_LVL;    -- asynchronous reset
        wb_adr_i      : in  std_logic_vector(7 downto 0);
        wb_dat_i      : in  std_logic_vector(7 downto 0); -- Databus input
        wb_dat_o      : out std_logic_vector(7 downto 0); -- Databus output
        wb_we_i       : in  std_logic;                    -- Write enable input
        wb_stb_i      : in  std_logic;                    -- Strobe signals / core select signal
        wb_cyc_i      : in  std_logic;                    -- Valid bus cycle input
        wb_ack_o      : out std_logic;                    -- Bus cycle acknowledge output
        --wb_inta_o     : out std_logic;                    -- interrupt request output signal
        --IO
        IntRefClk       : in std_logic;
        ClkA            : in std_logic;
        ClkB            : in std_logic;
        ExtRefClk       : in std_logic;

        CLK             : out std_logic;

        --UART
--        RxData          : out std_logic;
--        TxData          : out std_logic;

        --Debug
        TPs                 : out std_logic_vector(9 downto 0)
    );
end entity FrequencyCounter;

architecture Behavioral of FrequencyCounter is
    component FrequencyCounter_core is
		port(
			CLK 			: in STD_LOGIC;
			MEAS_CLK		: in STD_LOGIC;
            CounterReset    : in STD_LOGIC;
			GateEnable	 	: in STD_LOGIC;
			RefCountVal		: out std_logic_vector (31 downto 0);
			GatePulse		: in  STD_LOGIC;
			TEST			: out STD_LOGIC;
			DataValid 		: out STD_LOGIC;
			RESET			: in STD_LOGIC;
			MeasCountVal	: out std_logic_vector (31 downto 0);
			OpenGate		: out STD_LOGIC;
			Valid			: in STD_LOGIC
			);
	end component FrequencyCounter_core;

	component GateTime 	is
		generic (
			CLK_OCXO : integer
		);
		port(
			CLK 			: in STD_LOGIC;
			RESET           : in STD_LOGIC;
			TimeVal			: in STD_LOGIC_VECTOR (1 downto 0);
			--Testsig			: out STD_LOGIC;
			GatePulse		: out STD_LOGIC;
			GateReady		: in STD_LOGIC;
			--DataValid 		: out STD_LOGIC;
			Valid			: out STD_LOGIC
		);
	end component GateTime;

--    component Escaping is
--        port(
--        CLK             : in STD_LOGIC;
--        reset           : out STD_LOGIC;
--        ce              : in STD_LOGIC;
--        DataOut         : out std_logic_vector (7 downto 0);--(33 downto 0)
--        DataIn          : in std_logic_vector (7 downto 0);--(33 downto 0)
--
--        DataInValid     : in STD_LOGIC;
--        DataOutValid    : out std_logic
--		);
--    end component;

	 component ChannelSelector is
	 port (
		IntRefClk 		: in STD_LOGIC;
		ClkA			: in STD_LOGIC;
		ClkB			: in STD_LOGIC;
		ExtRefClk	 	: in STD_LOGIC;
		MeasureClk		: out STD_LOGIC;
		ChannelConfig   : in std_logic_vector(1 downto 0);
--		RefClkSelect	: in STD_LOGIC;
--		MeasClkSelect	: in STD_LOGIC;
		RefClk			: out STD_LOGIC
	 );
	 end component;

	--signal ClkA_s : std_logic;
	--signal ClkB_s : std_logic;
	signal RefClk_s : std_logic;
	--signal ExtRef_s : std_logic;
	signal GatePulse_s : std_logic;
	signal MeasureClock_s : std_logic;
	signal RefCountVal_s : std_logic_vector (31 downto 0);
	signal MeasCountVal_s : std_logic_vector (31 downto 0);
	signal GateReady_s : std_logic := '0';
	signal DATOUT_s : std_logic_vector(33 downto 0);
	signal TimeBase_s : std_logic_vector (1 downto 0) := "00";
	signal Startmeas_s : std_logic := '0';
	signal Valid_s : std_logic;
	signal GateEnable_s : std_logic := '0';
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
	--signal TESTout : std_logic;
	signal MeasureClocktest_s : std_logic;
	--signal LEDS : STD_LOGIC_VECTOR (15 downto 0);
	--signal LED : STD_LOGIC;
	--signal OpenGate_s : STD_LOGIC;
	signal ChannelConfig_s : std_logic_vector(1 downto 0) := "00";
	signal CalibOsc_s   : std_logic;
	signal DataInValid_s : std_logic;
    signal RxDataOutValid_s : std_logic;


    signal LED1            : std_logic;
    --signal MEAS_OUT        : std_logic;
    --signal CLKOUT          : std_logic;
    --signal uart_tx         : std_logic;
    --signal ZpuRxData       : std_logic_vector(7 downto 0);

    signal iack_o       : std_logic;
    signal wb_wacc      : std_logic;

begin

    --Startmeas_s <= STARTMEAS;
	LED1 <= GatePulse_s;
	--ALWAYSON <= '1';
	--TimeVal_s <= TimeVal;
	--RefClk_s <= Ref_Clk;
	CLK <= RefClk_s;
	--MeasureClock_s <= ClkA;

	--MEAS_OUT <= MeasureClock_s;
	TPs(0) <= txValid_s;
	TPs(1) <= GateReady_s;
	TPs(2) <= GatePulse_s;
	TPs(3) <= DataValid_s;
	TPs(4) <= txValid_s;
	--CLKOUT <= RefClk_s;
	--uart_tx <= not uart_tx_s;
	--tx_data_s <= std_logic_vector(DATOUT_s);

    Timing : component GateTime
	generic map(
		CLK_OCXO => CLK_OCXO
	)
	port map(
		CLK => RefClk_s,
		RESET => wb_rst_i,
		TimeVal => TimeBase_s,
		GatePulse => GatePulse_s,
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

	FreqCount : component FrequencyCounter_core
	port map(
		CLK => RefClk_s,
		MEAS_CLK => MeasureClocktest_s,
		GateEnable => GateEnable_s,
		GatePulse => GatePulse_s,
		RefCountVal => RefCountVal_s,
		DataValid => DataValid_s,
		RESET => wb_rst_i,
		CounterReset => CounterReset_s,
		TEST => open,
		MeasCountVal => MeasCountVal_s,
		OpenGate => GateReady_s,
		Valid => Valid_s
	);

--    Escape : component Escaping
--    port map(
--        CLK             => RefClk_s,
--        reset           => reset_s,
--        ce              => '1',
--        DataOut         => ZpuRxData,
--        DataIn          => RxData_s,
--        DataInValid     => DataInValid_s,
--        DataOutValid    => RxDataOutValid_s
--    );


    ChannelSelect : component ChannelSelector
	port map(
		IntRefClk 		=> IntRefClk,
		ExtRefClk	 	=> ExtRefClk,
		MeasureClk		=> MeasureClocktest_s,
        ChannelConfig   => ChannelConfig_s,
		RefClk			=> RefClk_s,
		ClkA            => ClkA,
		ClkB            => ClkB
	);

--	IntClockGen : process (MeasureClocktest_s) begin
--		if rising_edge(MeasureClocktest_s) then
--				if Count2_s = to_unsigned(16000, Count2_s'length) then --1kHz MeasureClk
--					Count2_s <= to_unsigned(0,Count2_s'length);
--					MeasureClock_s <= not MeasureClock_s;
--				else
--					Count2_s <= Count2_s +1;
--				end if;
--			end if;
--    end process;


    gen_ack_o : process(wb_clk_i)
    begin
        if (wb_clk_i'event and wb_clk_i = '1') then
            iack_o <= wb_cyc_i and wb_stb_i;
        end if;
    end process gen_ack_o;
    wb_ack_o <= iack_o;

    wb_wacc <= wb_cyc_i and wb_stb_i and wb_we_i;


    ReadFromWB : process (wb_clk_i,wb_adr_i,wb_dat_i) begin
    if rising_edge(wb_clk_i) then
        if(wb_rst_i = '1') then
            TxData_s <= (others => '0');
            txValid_s <= '0';
        elsif wb_wacc = '1' then
            case wb_adr_i is
                when x"04" => ChannelConfig_s <= wb_dat_i(1 downto 0);
                when x"08" => TimeBase_s <= wb_dat_i(1 downto 0);
                when x"0C" => CounterReset_s <= wb_dat_i(0);
                when x"10" => Startmeas_s <= wb_dat_i(0);
                when others => null;
            end case;
        end if;
    end if;
    end process;

    WriteTOWb : process (wb_clk_i,wb_adr_i,RxData_s,tx_busy_s) begin
        if rising_edge(wb_clk_i) then
            case wb_adr_i is
                when x"14" => wb_dat_o(0) <= DataValid_s;
                when x"20" => wb_dat_o <= RefCountVal_s(31 downto 24);
                when x"24" => wb_dat_o <= RefCountVal_s(23 downto 16);
                when x"28" => wb_dat_o <= RefCountVal_s(15 downto 8);
                when x"2C" => wb_dat_o <= RefCountVal_s(7 downto 0);
                when x"30" => wb_dat_o <= MeasCountVal_s(31 downto 24);
                when x"34" => wb_dat_o <= MeasCountVal_s(23 downto 16);
                when x"38" => wb_dat_o <= MeasCountVal_s(15 downto 8);
                when x"3C" => wb_dat_o <= MeasCountVal_s(7 downto 0);
                when others => wb_dat_o <= x"00";
            end case;
        end if;
    end process;



end Behavioral;


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
-- Revision 0.01 - File Created
-- Additional Comments:
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

--library work;
use work.zpupkg.all;
--use work.zpu_config.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values


-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

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
		RefClkSelect	: in STD_LOGIC;

--ZPU-----------------------------------------------------
        CLK 	                    : in  STD_LOGIC;
        RESET 	                    : in  STD_LOGIC;
        out_mem_write_enable        : out std_logic;
        out_mem_read_enable         : out std_logic;
        LEDS                        : out std_logic_vector(15 downto 0);
        --CLK_OUT                     : out std_logic;
        LED                         : out std_logic;
        TESTout                     : out std_logic;

        --I2C
        sda                          : inout std_logic;
        scl                          : inout std_logic
        );
end FrequnecyCounterTop;

architecture Behavioral of FrequnecyCounterTop is


    constant Generate_Trace  : boolean := false;
    constant wordPower       : integer := 5;

    constant DontCareValue   : std_logic := '0';
    constant maxAddrBitIncIO : integer := 15;
    constant maxAddrBitBRAM  : integer := 14;



    constant byteBits           : integer := wordPower-3;
    constant maxAddrBit         : integer := maxAddrBitIncIO-1;
    constant ioBit              : integer := maxAddrBit+1;
    constant wordSize           : integer := 2**wordPower;
    constant wordBytes          : integer := wordSize/8;
    constant minAddrBit         : integer := byteBits;

    constant adr_i2c_master     : std_logic_vector(maxAddrBitIncIO-1 downto 0) := "000000000100000"; --0x"8020" without first 1


    constant adr_i2c_master_min    : std_logic_vector(maxAddrBitIncIO-1 downto 0) := "000000000100000"; --0x"8020" without first 1
     constant adr_i2c_master_max    : std_logic_vector(maxAddrBitIncIO-1 downto 0) := "000000000100100";

	component FrequencyCounter 	is
		port(
			CLK 			: in STD_LOGIC;
			MEAS_CLK		: in STD_LOGIC;
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

--	component DataProcessing is
--    generic (
--        CLK_OCXO : integer
--    );
--    port(
--        CLK             : in STD_LOGIC;
--        CounterReset    : out STD_LOGIC;
--        RefCountVal     : in std_logic_vector (31 downto 0);
--        MeasCountVal    : in std_logic_vector (31 downto 0);
--
--        DataOut         : out std_logic_vector (7 downto 0);--(33 downto 0)
--        DataIn          : in std_logic_vector (7 downto 0);--(33 downto 0)
--
--        MeasValuesValid : in STD_LOGIC;     --when CountVals are Valid
--        DataInValid     : in STD_LOGIC;     --when no rx transmission is live
--        DataOutReady    : in std_logic;     --when no tx transmission is live
--        DataOutValid    : out std_logic;    --start tx transmission
--
--        CalibOsc        : out std_logic;
--        ChannelConfig   : out std_logic_vector(1 downto 0);
--        StartMeas       : out std_logic
--		);
--	end component DataProcessing;

    component Escaping is
        port(
        CLK             : in STD_LOGIC;
        reset           : out STD_LOGIC;
        ce              : in STD_LOGIC;
        DataOut         : out std_logic_vector (7 downto 0);--(33 downto 0)
        DataIn          : in std_logic_vector (7 downto 0);--(33 downto 0)

        DataInValid     : in STD_LOGIC;
        DataOutValid    : out std_logic
		);
    end component;

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



  component ZPUMediumCore is
   generic(
      WORD_SIZE    : integer:=32;  -- 16/32 (2**wordPower)
      ADDR_W       : integer:=16;  -- Total address space width (incl. I/O)
      MEM_W        : integer:=15;  -- Memory (prog+data+stack) width
      D_CARE_VAL   : std_logic:='0'; -- Value used to fill the unsused bits
      MULT_PIPE    : boolean:=false; -- Pipeline multiplication
      BINOP_PIPE   : integer range 0 to 2:=0; -- Pipeline binary operations (-, =, < and <=)
      ENA_LEVEL0   : boolean:=true;  -- eq, loadb, neqbranch and pushspadd
      ENA_LEVEL1   : boolean:=true;  -- lessthan, ulessthan, mult, storeb, callpcrel and sub
      ENA_LEVEL2   : boolean:=false; -- lessthanorequal, ulessthanorequal, call and poppcrel
      ENA_LSHR     : boolean:=true;  -- lshiftright
      ENA_IDLE     : boolean:=false; -- Enable the enable_i input
      FAST_FETCH   : boolean:=true); -- Merge the st_fetch with the st_execute states
   port(
      clk_i        : in  std_logic; -- CPU Clock
      reset_i      : in  std_logic; -- Sync Reset
      enable_i     : in  std_logic; -- Hold the CPU (after reset)
      break_o      : out std_logic; -- Break instruction executed
      dbg_o        : out zpu_dbgo_t; -- Debug outputs (i.e. trace log)
      -- Memory interface
      mem_busy_i   : in  std_logic; -- Memory is busy
      data_i       : in  unsigned(WORD_SIZE-1 downto 0); -- Data from mem
      data_o       : out unsigned(WORD_SIZE-1 downto 0); -- Data to mem
      addr_o       : out unsigned(ADDR_W-1 downto 0); -- Memory address
      write_en_o   : out std_logic;  -- Memory write enable
      read_en_o    : out std_logic); -- Memory read enable
    end component ZPUMediumCore;


    component dualport_ram is
    generic(
        wordPower                       : integer;
        maxAddrBitBRAM                  : integer
    );
    port(
        clk                             : in  std_logic;
        memAWriteEnable                 : in  std_logic;
        memAAddr                        : in  std_logic_vector(maxAddrBitBRAM downto wordPower-3);
        memAWrite                       : in  std_logic_vector(2**wordPower-1 downto 0);
        memARead                        : out std_logic_vector(2**wordPower-1 downto 0);
        memBWriteEnable                 : in  std_logic;
        memBAddr                        : in  std_logic_vector(maxAddrBitBRAM downto wordPower-3);
        memBWrite                       : in  std_logic_vector(2**wordPower-1 downto 0);
        memBRead                        : out std_logic_vector(2**wordPower-1 downto 0)
    );
    end component dualport_ram;

    component zpu_wb_bridge is
        generic(
            wordSize                    : natural;
            maxAddrBitIncIO             : natural;
            wordBytes                   : natural
        );
        port(
            clk_i                       : in  std_logic;
            rst_i                       : in  std_logic;
            mem_req                     : in  std_logic;
            mem_we                      : in  std_logic;
            mem_ack                     : out std_logic;
            mem_read                    : out std_logic_vector(wordSize-1 downto 0);
            mem_write                   : in  std_logic_vector(wordSize-1 downto 0);
            out_mem_addr                : in  std_logic_vector(maxAddrBitIncIO downto 0);
            mem_write_mask              : in  std_logic_vector(wordBytes-1 downto 0);
            adr_o                       : out std_logic_vector(maxAddrBitIncIO-1 downto 0);
            sel_o                       : out std_logic_vector(wordBytes-1 downto 0);
            dat_o                       : out std_logic_vector(wordSize-1 downto 0);
            dat_i                       : in  std_logic_vector(wordSize-1 downto 0);
            cyc_o                       : out std_logic;
            stb_o                       : out std_logic;
            we_o                        : out std_logic;
            ack_i                       : in  std_logic
        );
    end component zpu_wb_bridge;

    component i2c_master_top is
        generic(
            ARST_LVL : std_logic := '0'                       -- asynchronous reset level
        );
        port(
            -- wishbone signals
            wb_clk_i      : in  std_logic;                    -- master clock input
            wb_rst_i      : in  std_logic := '0';             -- synchronous active high reset
            arst_i        : in  std_logic := not ARST_LVL;    -- asynchronous reset
            wb_adr_i      : in  std_logic_vector(7 downto 0); -- lower address bits
            wb_dat_i      : in  std_logic_vector(7 downto 0); -- Databus input
            wb_dat_o      : out std_logic_vector(7 downto 0); -- Databus output
            wb_we_i       : in  std_logic;                    -- Write enable input
            wb_stb_i      : in  std_logic;                    -- Strobe signals / core select signal
            wb_cyc_i      : in  std_logic;                    -- Valid bus cycle input
            wb_ack_o      : out std_logic;                    -- Bus cycle acknowledge output
            wb_inta_o     : out std_logic;                    -- interrupt request output signal

            -- i2c lines
            scl_pad_i     : in  std_logic;                    -- i2c clock line input
            scl_pad_o     : out std_logic;                    -- i2c clock line output
            scl_padoen_o  : out std_logic;                    -- i2c clock line output enable, active low
            sda_pad_i     : in  std_logic;                    -- i2c data line input
            sda_pad_o     : out std_logic;                    -- i2c data line output
            sda_padoen_o  : out std_logic                     -- i2c data line output enable, active low
    );
    end component i2c_master_top;

--FreqCount--------------------------------------------------------------------------------------
	--signal ClkA_s : std_logic;
	--signal ClkB_s : std_logic;
	signal RefClk_s : std_logic;
	--signal ExtRef_s : std_logic;
	signal GatePulse_s : std_logic;
	signal MeasureClock_s : std_logic;
	signal RefCountVal_s : std_logic_vector (31 downto 0);
	signal MeasCountVal_s : std_logic_vector (31 downto 0);
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
	--signal TESTout : std_logic;
	signal MeasureClocktest_s : std_logic;
	--signal LEDS : STD_LOGIC_VECTOR (15 downto 0);
	--signal LED : STD_LOGIC;
	--signal OpenGate_s : STD_LOGIC;
	signal ChannelConfig_s : std_logic_vector(1 downto 0);
	signal CalibOsc_s   : std_logic;
	signal DataInValid_s : std_logic;
    signal RxDataOutValid_s : std_logic;
--ZPU---------------------------------------------------------------------------------
    signal mem_read_peripherials_s      : std_logic_vector(wordSize-1 downto 0);
    signal mem_read_mem_s               : std_logic_vector(wordSize-1 downto 0);
    signal mem_busy_s                   : std_logic;
    signal mem_read_s                   : std_logic_vector(wordSize-1 downto 0);
    signal mem_write_s                  : std_logic_vector(wordSize-1 downto 0);
    signal out_mem_addr_s               : std_logic_vector(maxAddrBitIncIO downto 0);
    signal out_mem_write_enable_s       : std_logic;
    signal out_mem_read_enable_s        : std_logic;
    signal mem_write_mask_s	            : std_logic_vector(wordBytes-1 downto 0);
    signal memory_write_s               : std_logic_vector(wordSize-1 downto 0);

    signal adr_o                        : std_logic_vector(maxAddrBitIncIO-1 downto 0);
    signal sel_o                        : std_logic_vector(wordBytes-1 downto 0);
    signal dat_o                        : std_logic_vector(wordSize-1 downto 0);
    signal dat_i                        : std_logic_vector(wordSize-1 downto 0);
    signal cyc_o                        : std_logic;
    signal stb_o                        : std_logic;
    signal we_o                         : std_logic;
    signal ack_i                        : std_logic;

    signal mem_write_mem_s              : std_logic_vector(wordSize-1 downto 0);
    signal mem_write_peripherials_s     : std_logic_vector(wordSize-1 downto 0);
    signal mem_ack_s                    : std_logic;
    signal mem_busy_i                   : std_logic;

    --signal CLK_s                        : std_logic;
    --signal Count                        : unsigned(33 downto 0);
    --signal test                         : std_logic;
    signal LEDS_s                       : std_logic_vector(15 downto 0) := x"FFFF";
    signal LED_s                        : std_logic := '1';
    signal ZpuRxData                    : std_logic_vector(7 downto 0);

    signal scl_pad_i                    : std_logic;
    signal scl_pad_o                    : std_logic;
    signal scl_padoen_o                 : std_logic;
    signal sda_pad_i                    : std_logic;
    signal sda_pad_o                    : std_logic;
    signal sda_padoen_o                 : std_logic;

    signal dat_i_i2c                    : std_logic_vector(7 downto 0);
    signal dat_o_i2c                    : std_logic_vector(wordSize-1 downto 0);

    begin
	--Startmeas_s <= STARTMEAS;
	LED1 <= GatePulse_s;
	ALWAYSON <= '1';
	TimeVal_s <= TimeVal;
	--RefClk_s <= ExtRefClk;
	--MeasureClock_s <= ClkA;

	MEAS_OUT <= MeasureClock_s;
	TP0 <= txValid_s;
	TP3 <= GateReady_s;
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

--	Processing : component DataProcessing
--	generic map(
--		CLK_OCXO => CLK_OCXO
--	)
--	port map(
--		CLK => RefClk_s,
--		RefCountVal => RefCountVal_s,
--		MeasCountVal => MeasCountVal_s,
--		CounterReset => CounterReset_s,
--
----		Valid => open,
----		debug => TP5,
----		TEST => TP3,
--
--		DataOut => TxData_s,
--     	DataIn => RxData_s,
--
--     	MeasValuesValid => DataValid_s,
--     	DataInValid => DataInValid_s,
--     	DataOutReady => DataOutReady,
--        DataOutValid => txValid_s,
--        StartMeas   => Startmeas_s,
--        ChannelConfig => ChannelConfig_s,
--        CalibOsc => CalibOsc_s
--	);
--	DataOutReady <= not tx_busy_s;
--	DataInValid_s <= not rx_busy_s;

    Escape : component Escaping
    port map(
        CLK             => RefClk_s,
        reset           => reset_s,
        ce              => '1',
        DataOut         => ZpuRxData,
        DataIn          => RxData_s,
        DataInValid     => DataInValid_s,
        DataOutValid    => RxDataOutValid_s
    );

--    DataControl : process () begin
--        if rising_edge(RefClk_s) then
--
--        end if;
--    end process;

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

	IntClockGen : process (MeasureClocktest_s) begin
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


    out_mem_write_enable <= out_mem_write_enable_s;
    out_mem_read_enable  <= out_mem_read_enable_s;


    my_zpu_core : component ZPUMediumCore
	port map(
		clk_i    			        => CLK,
		reset_i    				    => RESET,
		enable_i     			    => '1',
		mem_busy_i      	        => mem_busy_i,
		data_i       		        => unsigned(mem_read_s),
		std_logic_vector(data_o)    => mem_write_s,
		std_logic_vector(addr_o)    => out_mem_addr_s,
		write_en_o 	                => out_mem_write_enable_s,
		read_en_o  	                => out_mem_read_enable_s,
		--mem_write_mask       	    => mem_write_mask_s,
		--interrupt           	    => '0',
		dbg_o                       => open,
		break_o             	    => open
	);
	mem_busy_i <= not mem_ack_s and out_mem_read_enable_s;

    memory : component dualport_Ram
    generic map(
        wordPower               => wordPower,
        maxAddrBitBRAM          => maxAddrBitBRAM
    )
    port map(
        clk				        => CLK,
		memAWriteEnable	        => out_mem_write_enable_s,
		memAAddr			    => out_mem_addr_s(maxAddrBitBRAM downto wordPower-3),
		memAWrite			    => mem_write_mem_s,
		memARead			    => mem_read_mem_s,
		memBWriteEnable	        => '0',
		memBAddr			    => out_mem_addr_s(maxAddrBitBRAM downto wordPower-3),
		memBWrite			    => x"00000000",
		memBRead			    => open
    );

    bridge_to_peripherials : component zpu_wb_bridge
        generic map(
            wordSize            => wordSize,
            maxAddrBitIncIO     => maxAddrBitIncIO,
            wordBytes           => wordBytes
        )
        port map(
            clk_i               => CLK,
            rst_i               => RESET,
            mem_req             => out_mem_write_enable_s,  --getauscht ^
            mem_we              => out_mem_read_enable_s,   --getauscht ^
            mem_ack             => mem_ack_s,
            mem_read            => mem_read_peripherials_s,
            mem_write           => mem_write_peripherials_s,
            out_mem_addr        => out_mem_addr_s,
            mem_write_mask      => mem_write_mask_s,

            adr_o               => adr_o,
            sel_o               => sel_o,
            dat_o               => dat_o,
            cyc_o               => cyc_o,
            stb_o               => stb_o,
            we_o                => we_o,

            dat_i               => dat_i,
            ack_i               => ack_i
        );

        wb_bridge_controll : process (adr_o,dat_o,dat_i_i2c,dat_o_i2c) begin

            if(dat_o >= x"00008000") and (dat_o <= x"00008080")  then
                dat_i <= dat_o_i2c;
            elsif (dat_o = x"00008060") then
                dat_i <= RefCountVal_s;
            elsif (dat_o = x"00008070") then
                dat_i <= MeasCountVal_s;
            elsif (dat_o <= x"00008080") and rx_busy_s = '0' then
                dat_i(7 downto 0) <= RxData_s;
            end if;
                --LED_s <= '1';
            --else
              --  LED_s <= '0';
            --end if;
            --if(dat_o >= adr_i2c_master_min) then
                dat_i_i2c <= dat_o(7 downto 0);
            --end if;
        end process;

        i2c_slave : component i2c_master_top
        generic map(
            ARST_LVL        => '0'
        )
        port map(
            -- wishbone signals
            wb_clk_i        => CLK,
            wb_rst_i        => RESET,
            arst_i          => '0',
            wb_adr_i        => adr_o(7 downto 0),
            wb_dat_i        => dat_i_i2c,
            wb_dat_o        => dat_o_i2c(7 downto 0),
            wb_we_i         => we_o,
            wb_stb_i        => stb_o,
            wb_cyc_i        => cyc_o,
            wb_ack_o        => ack_i,
            wb_inta_o       => open,

            -- i2c lines
            scl_pad_i       => scl_pad_i,
            scl_pad_o       => scl_pad_o,
            scl_padoen_o    => scl_padoen_o,
            sda_pad_i       => sda_pad_i,
            sda_pad_o       => sda_pad_o,
            sda_padoen_o    => sda_padoen_o
    );

    I2C : process (scl_padoen_o,sda_padoen_o,scl_pad_o,sda_pad_o,scl,sda) begin

        if(scl_padoen_o = '0') then
            scl <= scl_pad_o;
        else
            scl <= 'Z';
        end if;
        if(sda_padoen_o = '0') then
            sda <= sda_pad_o;
        else
            sda <= 'Z';
        end if;
        scl_pad_i <= scl;
        sda_pad_i <= sda;


    end process;


    --mem_busy_s <= ((out_mem_write_enable_s or out_mem_read_enable_s) and out_mem_addr_s(out_mem_addr_s'left));

    ZealotTop : process (out_mem_addr_s, mem_read_peripherials_s, mem_read_mem_s, mem_write_s, out_mem_write_enable_s) begin

        mem_read_s <= x"00000000";
        if out_mem_addr_s(out_mem_addr_s'left) = '1' then
            mem_read_s <= mem_read_peripherials_s;
        else
            mem_read_s <= mem_read_mem_s;
        end if;


            mem_write_peripherials_s <= mem_write_s;
            mem_write_mem_s <= mem_write_s;

    end process;


        LEDS <= LEDS_s;
        LED <= LED_s;

    IO : process (CLK,LEDS_s,LED_s) begin
        if rising_edge(CLK) then
            if out_mem_addr_s = x"8050" then
                LEDS_s <= mem_write_peripherials_s(15 downto 0);
                LED_s <= not LED_s;
--            elsif out_mem_addr_s = x"8060" then
--                mem_read_peripherials_s <= RefCountVal_s;
--            elsif out_mem_addr_s = x"8070" then
--                mem_read_peripherials_s <= MeasCountVal_s;
--            end if;
            end if;
        end if;
    end process;

end architecture Behavioral;


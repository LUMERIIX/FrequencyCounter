----------------------------------------------------------------------------------
-- Company:
-- Engineer: LJ
--
-- Create Date:    11:38:06 07/21/2017
-- Design Name:
-- Module Name: FrequnecyCounterTop

-- Project Name: FrequnecyCounter
-- Target Devices: Spartan 6 LX9
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
		CLK_OCXO : integer := 10000000
	);
	port (
		IntRefClk 		: in STD_LOGIC;
		ClkA			: in STD_LOGIC;
		ClkADef         : in STD_LOGIC;
		ClkB			: in STD_LOGIC;
		ExtRefClk 		: in STD_LOGIC;
		LED1			: out STD_LOGIC;
        TPs             : out STD_LOGIC_VECTOR(9 downto 0);
		uart_rx			: in STD_LOGIC;
		uart_tx			: out STD_LOGIC;

        RESET 	                    : in  STD_LOGIC;

        --I2C
        sda                          : inout std_logic;
        scl                          : inout std_logic;
        --GPIO
        DivSelect                    : out std_logic_vector(1 downto 0) := "11";
        EnFilt                       : out std_logic_vector(1 downto 0) := "11"
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


    component FrequencyCounter is
        generic(
            CLK_OCXO : integer;
            ARST_LVL : std_logic := '0'                       -- asynchronous reset level
        );
        port(
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

            IntRefClk 		: in STD_LOGIC;
            ClkA			: in STD_LOGIC;
            ClkB			: in STD_LOGIC;
            ExtRefClk 		: in STD_LOGIC;

            CLK             : out std_logic;
            --Debug
            TPs                 : out std_logic_vector(6 downto 0)
         );
    end component FrequencyCounter;

    component UartTop is
   generic(
        ARST_LVL : std_logic := '0'                   -- asynchronous reset level
    );
    port(
        -- wishbone signals
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
        --rx_data       : in std_logic_vector;
        --UART
        test          : out std_logic;
        rx            : in std_logic;
        tx            : out std_logic
    );
    end component UartTop;

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

    component I2CTop is
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
            scl : inout std_logic;
            sda : inout std_logic
    );
    end component I2CTop;

--FreqCount--------------------------------------------------------------------------------------
	signal CLK_s : std_logic;
	signal rx_busy_s : std_logic;
	signal tx_busy_s : std_logic;
	signal rx_error_s : std_logic;
	signal rx_data_s : std_logic_vector(7 downto 0);
	signal uart_tx_s : std_logic;
	signal txValid_s : std_logic;
	signal TxData_s : std_logic_vector(7 downto 0);
	signal RxData_s : std_logic_vector(7 downto 0);

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
    signal dat_o_i2c                    : std_logic_vector(wordSize-1 downto 0):= x"00000000";

    signal stb_i2c : std_logic;
    signal stb_fc : std_logic;
    signal stb_gpio : std_logic;
    signal stb_uart : std_logic;

    signal dat_o_fc : std_logic_vector(wordSize-1 downto 0):= x"00000000";
    signal dat_o_gpio : std_logic_vector(wordSize-1 downto 0):= x"00000000";
    signal dat_o_uart : std_logic_vector(wordSize-1 downto 0) := x"00000000";

    signal ack_o_i2c : std_logic := '0';
    signal ack_o_fc : std_logic := '0';
    signal ack_o_gpio : std_logic := '0';
    signal ack_o_uart :  std_logic := '0';

    signal MeasValueValid_s : std_logic;

    signal LEDs         :  std_logic;
    signal Count        : unsigned (40 downto 0);




    begin
    --LEDS <= LEDS_s;
    LED1 <= LEDs;

        Blinki : process (CLK_s) begin
        if rising_edge(CLK_s) then
            if Count = to_unsigned(10000000,Count'length) then
                Count <= (others => '0');
                LEDs <= not LEDs;
            else
                Count <= Count + 1;
            end if;
        end if;
    end process;




    FreqCounter : component FrequencyCounter
    generic map(
        CLK_OCXO                    => CLK_OCXO,
        ARST_LVL                    => '0'
    )
    port map(
        wb_clk_i                    => CLK_s,
        wb_rst_i                    => RESET,
        arst_i                      => '0',
        wb_adr_i                    => adr_o(7 downto 0),
        wb_dat_i                    => dat_o(7 downto 0),
        wb_dat_o                    => dat_o_fc(7 downto 0) ,
        wb_we_i                     => we_o,
        wb_stb_i                    => stb_fc,
        wb_cyc_i                    => cyc_o,
        wb_ack_o                    => ack_o_fc,

        IntRefClk 		            => IntRefClk,
        ClkA			            => ClkA,
        ClkB			            => ClkB,
        ExtRefClk 		            => ExtRefClk,
        CLK                         => CLK_s,
        TPs                         => TPs(6 downto 0)
    );




--    out_mem_write_enable <= out_mem_write_enable_s;
    --out_mem_read_enable  <= out_mem_read_enable_s;


    my_zpu_core : component ZPUMediumCore
	port map(
		clk_i    			        => CLK_s,
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

    Ram : block
        signal MemWriteEnable : std_logic;
    begin
        MemWriteEnable <= out_mem_write_enable_s and (not out_mem_addr_s(out_mem_addr_s'left));

        memory : component dualport_Ram
        generic map(
            wordPower               => wordPower,
            maxAddrBitBRAM          => maxAddrBitBRAM
        )
        port map(
            clk				        => CLK_s,
            memAWriteEnable	        => MemWriteEnable,
            memAAddr			    => out_mem_addr_s(maxAddrBitBRAM downto wordPower-3),
            memAWrite			    => mem_write_mem_s,
            memARead			    => mem_read_mem_s,
            memBWriteEnable	        => '0',
            memBAddr			    => out_mem_addr_s(maxAddrBitBRAM downto wordPower-3),
            memBWrite			    => x"00000000",
            memBRead			    => open
        );
    end block Ram;

    Bridge : block
        signal req : std_logic;
    begin
        req <= out_mem_write_enable_s or out_mem_read_enable_s;

        bridge_to_peripherials : component zpu_wb_bridge
            generic map(
                wordSize            => wordSize,
                maxAddrBitIncIO     => maxAddrBitIncIO,
                wordBytes           => wordBytes
            )
            port map(
                clk_i               => CLK_s,
                rst_i               => RESET,
                mem_req             => req,
                mem_we              => out_mem_write_enable_s,
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
    end block Bridge;

    wb_bridge_stb : process (adr_o, dat_o_i2c, dat_o_fc, dat_o_uart, dat_o_gpio, stb_o, ack_o_i2c, ack_o_fc, ack_o_gpio, ack_o_uart) begin

        stb_uart <= '0';
        stb_i2c <= '0';
        stb_gpio <= '0';
        stb_fc <= '0';

        case adr_o(14 downto 13) is
            when "00" => stb_i2c <= stb_o;    dat_i <= dat_o_i2c;  ack_i <= ack_o_i2c;
            when "01" => stb_fc <= stb_o;     dat_i <= dat_o_fc;   ack_i <= ack_o_fc;
            when "10" => stb_gpio <= stb_o;   dat_i <= dat_o_gpio; ack_i <= ack_o_gpio;
            when others => stb_uart <= stb_o; dat_i <= dat_o_uart; ack_i <= ack_o_uart;
        end case;
    end process;

        i2c_slave : component I2CTop
        generic map(
            ARST_LVL        => '0'
        )
        port map(
            -- wishbone signals
            wb_clk_i        => CLK_s,
            wb_rst_i        => RESET,
            arst_i          => '0',
            wb_adr_i        => adr_o(7 downto 0),
            wb_dat_i        => dat_i_i2c,
            wb_dat_o        => dat_o_i2c(7 downto 0),
            wb_we_i         => we_o,
            wb_stb_i        => stb_i2c,
            wb_cyc_i        => cyc_o,
            wb_ack_o        => ack_o_i2c,
            wb_inta_o       => open,

            -- i2c lines
            scl             => scl,
            sda             => sda
        );
        dat_i_i2c <= dat_o(7 downto 0);


        Uart : component UartTop
        generic map(
            ARST_LVL => '0'
        )
        port map(
            wb_clk_i      => CLK_s,
            wb_rst_i      => RESET,
            arst_i        => '0',
            wb_adr_i      => adr_o(7 downto 0),
            wb_dat_i      => dat_o(7 downto 0),
            wb_dat_o      => dat_o_uart(7 downto 0),
            wb_we_i       => we_o,
            wb_stb_i      => stb_uart,
            wb_cyc_i      => cyc_o,
            wb_ack_o      => ack_o_uart,
            --rx_data       => rx_data,
            test            =>TPs(7),
            rx            => uart_rx,
            tx            => uart_tx
        );
        TPs(9 downto 8) <= "00";

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


end architecture Behavioral;


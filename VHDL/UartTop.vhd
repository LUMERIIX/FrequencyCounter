----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:    15:18:51 12/07/2017
-- Design Name:
-- Module Name:    UartTop - Behavioral
-- Project Name:
-- Target Devices:
-- Tool versions:
-- Description:
--
-- Dependencies:
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

entity UartTop is
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
        --wb_inta_o     : out std_logic;                    -- interrupt request output signal
        --rx_data         : in std_logic_vector(7 downto 0);
        test            : out std_logic;

        --UART
        rx            : in std_logic;
        tx            : out std_logic
    );
end UartTop;

architecture Behavioral of UartTop is
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

    signal txValid_s    : std_logic;
    signal TxData_s     : std_logic_vector(7 downto 0) := x"00";
    signal RxData_s     : std_logic_vector(7 downto 0) := x"00";
    signal rx_busy_s    : std_logic;
    signal tx_busy_s    : std_logic;
    signal rx_error_s   : std_logic;

    signal reset_s      : std_logic;
    signal iack_o       : std_logic;
    signal wb_wacc      : std_logic;

begin
    test <= txValid_s;
    reset_s <= not wb_rst_i;

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
                when x"08" => TxData_s <= wb_dat_i;
                when x"10" => txValid_s <= wb_dat_i(0);
                when others => null;
            end case;
        end if;
    end if;
    end process;

    WriteTOWb : process (wb_clk_i,wb_adr_i,RxData_s,tx_busy_s) begin
        if rising_edge(wb_clk_i) then
            case wb_adr_i is
                when x"04" => wb_dat_o <= RxData_s;
                when x"0C" => wb_dat_o(0) <= tx_busy_s;
                when others => wb_dat_o <= x"00";
            end case;
        end if;
    end process;

    DataTransfer : component uart
	port map(
		clk		 => wb_clk_i,
		reset_n	 => reset_s,
		tx_ena	 => txValid_s,
		tx_data	 => TxData_s,
		rx		 => rx,
		rx_busy	 => rx_busy_s,
		rx_error => rx_error_s,
		rx_data	 => RxData_s,
		tx_busy	 => tx_busy_s,
		tx		 => tx
	);


end Behavioral;


-- EB Mar 2013
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity t_serial is
port(
  sys_clk: in std_logic; -- 100 MHz system clock
  
  led: out std_logic_vector(7 downto 0);
  uart_rx: in std_logic;
  uart_tx: out std_logic;
  Data_TX : in unsigned (33 downto 0);
  
  pmod_1: out std_logic; -- debug outputs
  pmod_2: out std_logic;
  
  reset_btn: in std_logic
);
end t_serial;

architecture Behavioral of t_serial is

component basic_uart is
generic (
  DIVISOR: natural
);
port (
  clk: in std_logic;   -- system clock
  reset: in std_logic;
  
  -- Client interface
  rx_data: out std_logic_vector(7 downto 0);  -- received byte
  rx_enable: out std_logic;  				  -- validates received byte (1 system clock spike)
  tx_data: in std_logic_vector(7 downto 0);   -- byte to send
  tx_enable: in std_logic;  				  -- validates byte to send if tx_ready is '1'
  tx_ready: out std_logic;  				  -- if '1', we can send a new byte, otherwise we won't take it
  
  -- Physical interface
  rx: in std_logic;
  tx: out std_logic
);
end component;

type fsm_state_t is (idle, received, emitting);
type state_t is
record
  fsm_state: fsm_state_t; -- FSM state
  tx_data: std_logic_vector(7 downto 0);
  tx_enable: std_logic;
end record;

signal reset : std_logic;
signal uart_rx_data : std_logic_vector(7 downto 0);
signal uart_rx_enable : std_logic;
signal uart_tx_data : std_logic_vector(7 downto 0);
signal uart_tx_enable : std_logic;
signal uart_tx_ready : std_logic;
signal Data_TX_s : unsigned (33 downto 0);

signal state,state_next: state_t;

begin
	Data_TX_s <= Data_TX;

  basic_uart_inst: basic_uart
  generic map (DIVISOR => 26) -- 2400
  port map (
    clk => sys_clk, reset => reset,
    rx_data => uart_rx_data, rx_enable => uart_rx_enable,
    tx_data => uart_tx_data, tx_enable => uart_tx_enable, tx_ready => uart_tx_ready,
    rx => uart_rx,
    tx => uart_tx
  );

  reset_control: process (reset_btn) is
  begin
    if reset_btn = '1' then
      reset <= '0';
    else
      reset <= '1';
    end if;
  end process;
  
  pmod_1 <= uart_tx_enable;
  pmod_2 <= uart_tx_ready;
  
  fsm_clk: process (sys_clk,reset) is
  begin
    if reset = '1' then
      state.fsm_state <= idle;
      state.tx_data <= (others => '0');
      state.tx_enable <= '0';
    else
      if rising_edge(sys_clk) then
        state <= state_next;
      end if;
    end if;
  end process;

  fsm_next: process (state,uart_rx_enable,uart_rx_data,uart_tx_ready) is
  begin
    state_next <= state;
    case state.fsm_state is
    
    when idle =>
      if uart_rx_enable = '1' then
        state_next.tx_data <= "01000110";
        state_next.tx_enable <= '0';
        state_next.fsm_state <= received;
      end if;
      
    when received =>
      if uart_tx_ready = '1' then
        state_next.tx_enable <= '1';
        state_next.fsm_state <= emitting;
      end if;
      
    when emitting =>
      if uart_tx_ready = '0' then
        state_next.tx_enable <= '0';
        state_next.fsm_state <= idle;
      end if;
      
    end case;
  end process;
  
  fsm_output: process (state) is
  begin
  
    uart_tx_enable <= state.tx_enable;
    uart_tx_data <= state.tx_data;
    led <= state.tx_data;
    
  end process;
  
end Behavioral;


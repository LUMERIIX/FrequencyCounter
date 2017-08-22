----------------------------------------------------------------------------------
-- Company: 
-- Engineer: LJ
-- 
-- Create Date:    11:38:06 07/21/2017 
-- Design Name: 
-- Module Name: UART   
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity UART is 
	port ( 
		clk			: in std_logic;
		reset		: in std_logic;
		uart_tx 	: out std_logic;
		uart_rx		: in std_logic
		);
end UART;

architecture structure of UART is

	component TX is
		port(
			tx_data 	: in std_logic_vector(7 downto 0);
			tx_enable 	: in std_logic;
			tx_ready 	: out std_logic;
			tx 			: out std_logic;
			sample		: in std_logic			
			);
	end component ;

	component RX is
		port(
			rx_data		: out std_logic_vector(7 downto 0); -- received byte
			rx_enable	: out std_logic;                  	-- validates received byte (1 system clock spike)
			rx			: in std_logic;
			sample		: in std_logic
			);
	end component ;
	
	component BaudGen is 
		port(
			clk 		: in std_logic;
			reset		: in std_logic;
			sample		: out std_logic
			);
	end component ;
begin

	basic_uart_inst: basic_uart
	generic map (DIVISOR => 26) -- 26
	port map(
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
				state_next.tx_data <= uart_rx_data;
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
end architecture structure;
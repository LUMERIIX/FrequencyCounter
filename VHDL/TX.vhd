-- Company: 
-- Engineer: LJ
-- 
-- Create Date:    11:38:06 07/21/2017 
-- Design Name: 
-- Module Name: TX   
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

entity TX is 
	port ( 
    tx_data		: in std_logic_vector(7 downto 0);  -- byte to send
    tx_enable	: in std_logic;                   -- validates byte to send if tx_ready is '1'
    tx_ready	: out std_logic;                   -- if '1', we can send a new byte, otherwise we won't take it
    tx			: out std_logic
		);
end TX;

architecture structure of TX is

	type fsm_state_t is (idle, active); -- common to both RX and TX FSM
	type tx_state_t is
	record
		fsm_state: fsm_state_t; -- FSM state
		counter: std_logic_vector(3 downto 0); -- tick count
		bits: std_logic_vector(8 downto 0); -- bits to emit, includes start bit
		nbits: std_logic_vector(3 downto 0); -- number of bits left to send
		ready: std_logic; -- signal we are accepting a new byte
	end record;
	signal tx_state,tx_state_next: tx_state_t;
	
begin

	-- TX state registers update at each CLK, and RESET
	reg_process: process (clk,reset) is
	begin
		if reset = '1' then
			tx_state.fsm_state <= idle;
			tx_state.bits <= (others => '1');
			tx_state.nbits <= (others => '0');
			tx_state.ready <= '1';
		elsif rising_edge(clk) then
			tx_state <= tx_state_next;
		end if;
	end process;
  
	-- TX FSM
	tx_process: process (tx_state,sample,tx_enable,tx_data) is
	begin
		case tx_state.fsm_state is
    
			when idle =>
				if tx_enable = '1' then
					-- start a new bit
					tx_state_next.bits <= tx_data & '0';  -- data & start
					tx_state_next.nbits <= "0000" + 10; -- send 10 bits (includes '1' stop bit)
					tx_state_next.counter <= (others => '0');
					tx_state_next.fsm_state <= active;
					tx_state_next.ready <= '0';
				else
					-- keep idle
					tx_state_next.bits <= (others => '1');
					tx_state_next.nbits <= (others => '0');
					tx_state_next.counter <= (others => '0');
					tx_state_next.fsm_state <= idle;
					tx_state_next.ready <= '1';
				end if;
		  
			when active =>
				tx_state_next <= tx_state;
				if sample = '1' then
					if tx_state.counter = 15 then
						-- send next bit
						if tx_state.nbits = 0 then
							-- turn idle
							tx_state_next.bits <= (others => '1');
							tx_state_next.nbits <= (others => '0');
							tx_state_next.counter <= (others => '0');
							tx_state_next.fsm_state <= idle;
							tx_state_next.ready <= '1';
						else
							tx_state_next.bits <= '1' & tx_state.bits(8 downto 1);
							tx_state_next.nbits <= tx_state.nbits - 1;
					end if;
				end if;
				tx_state_next.counter <= tx_state.counter + 1;
			end if;
		end case;
	end process;

  -- TX output
  tx_output: process (tx_state) is
  begin
    tx_ready <= tx_state.ready;
    tx <= tx_state.bits(0);
  end process;

end architecture structure;
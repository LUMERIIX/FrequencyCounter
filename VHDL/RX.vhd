----------------------------------------------------------------------------------
-- Company: 
-- Engineer: LJ
-- 
-- Create Date:    11:38:06 07/21/2017 
-- Design Name: 
-- Module Name: RX   
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

entity RX is 
	port ( 
	rx_data		: out std_logic_vector (7 downto 0);
	rx_enable   : out std_logic;
	rx 			: in std_logic
		);
end RX;

architecture structure of RX is

  type fsm_state_t is (idle, active); -- common to both RX and TX FSM
  type rx_state_t is
  record
    fsm_state: fsm_state_t;                -- FSM state
    counter: std_logic_vector(3 downto 0); -- tick count
    bits: std_logic_vector(7 downto 0);    -- last 8 received bits
    nbits: std_logic_vector(3 downto 0);   -- number of received bits (includes start bit)
    enable: std_logic;                     -- signal we received a new byte
  end record;
  
  signal rx_state,rx_state_next: rx_state_t;

begin	

	reg_process: process (clk,reset) is
	begin
		if reset = '1' then
			rx_state.fsm_state <= idle;
			rx_state.bits <= (others => '0');
			rx_state.nbits <= (others => '0');
			rx_state.enable <= '0';
		elsif rising_edge(clk) then
			rx_state <= rx_state_next;
		end if;
	end process;
  
	-- RX FSM: updates rx_state_next from rx_state and inputs.
	rx_process: process (rx_state,sample,rx) is
	begin
		case rx_state.fsm_state is
    
			when idle =>
			rx_state_next.counter <= (others => '0');
			rx_state_next.bits <= (others => '0');
			rx_state_next.nbits <= (others => '0');
			rx_state_next.enable <= '0';
			if rx = '0' then
				-- start a new byte
				rx_state_next.fsm_state <= active;
			else
				-- keep idle
				rx_state_next.fsm_state <= idle;
			end if;
			
			when active =>
			rx_state_next <= rx_state;
			if sample = '1' then
				if rx_state.counter = 8 then
				  -- sample next RX bit (at the middle of the counter cycle)
					if rx_state.nbits = 9 then
						rx_state_next.fsm_state <= idle; -- back to idle state to wait for next start bit
						rx_state_next.enable <= rx; -- OK if stop bit is '1'
					else
						rx_state_next.bits <= rx & rx_state.bits(7 downto 1); -- shift new bit in bits
						rx_state_next.nbits <= rx_state.nbits + 1;
					end if;
				end if;
				rx_state_next.counter <= rx_state.counter + 1;
			end if;		  
		end case;
	end process;
  
	-- RX output
	rx_output: process (rx_state) is
	begin
		rx_enable <= rx_state.enable;
		rx_data <= rx_state.bits;
	end process;

end architecture structure;
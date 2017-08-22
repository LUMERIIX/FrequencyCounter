asdf----------------------------------------------------------------------------------
-- Company: 
-- Engineer: LJ
-- 
-- Create Date:    11:38:06 07/21/2017 
-- Design Name: 
-- Module Name: BaudGen   
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

entity BaudGen is 
	generic (
	DIVISOR: natural ;
	);
	port ( 
	clk			: in std_logic;
	reset		: in std_logic;
	sample 		: out std_logic
		);
end BaudGen;

architecture structure of BaudGen is

	constant COUNTER_BITS : natural := integer(ceil(log2(real(DIVISOR))));
	signal sample: std_logic; -- 1 clk spike at 16x baud rate
	signal sample_counter: std_logic_vector(COUNTER_BITS-1 downto 0); -- should fit values in 0..DIVISOR-1

begin
	-- sample signal at 16x baud rate, 1 CLK spikes
  sample_process: process (clk,reset) is
  begin
    if reset = '1' then
      sample_counter <= (others => '0');
      sample <= '0';
    elsif rising_edge(clk) then
      if sample_counter = DIVISOR-1 then
        sample <= '1';
        sample_counter <= (others => '0');
      else
        sample <= '0';
        sample_counter <= sample_counter + 1;
      end if;
    end if;
  end process;


	

end architecture structure;
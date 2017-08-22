----------------------------------------------------------------------------------
-- Company: 
-- Engineer: LJ
-- 
-- Create Date:    11:38:06 07/21/2017 
-- Design Name: 
-- Module Name: mux_4to1   
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

entity mux_4to1 is 
	port ( 
		SEL 		: in STD_LOGIC_VECTOR(1 downto 0);
		In0 		: in STD_LOGIC;
		In1 		: in STD_LOGIC;
		In2 		: in STD_LOGIC;
		In3 		: in STD_LOGIC;
		Output 	: out STD_LOGIC
	);
end mux_4to1;

architecture structure of mux_4to1 is

--	component    	is
--		port(
--			
--			);
--	end component ;


begin
	mux : process (In0,In1,In2,In3,SEL)
	begin
	
		case SEL is
		when "00"   => Output <= In0;
		when "01"   => Output <= In1;
		when "10"   => Output <= In2;
		when others => Output <= In3;
		end case;
	end process;
	
end architecture structure;
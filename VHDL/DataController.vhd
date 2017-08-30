----------------------------------------------------------------------------------
-- Company: 
-- Engineer: LJ
-- 
-- Create Date:    11:38:06 07/21/2017 
-- Design Name: 
-- Module Name: DataController		   
-- Project Name: FrequnecyCounter
-- Target Devices: Spartan6 LX9 
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
--use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity DataController is 
	port ( 
		CLK : in STD_LOGIC;
		RST : in STD_LOGIC;
		ce : in STD_LOGIC;
		
		DataOut : out std_logic_vector(7 downto 0);
		DataIn : in std_logic_vector(7 downto 0);
		
		RawDataIn	: out std_logic_vector;
		RawDataOut : in std_logic_vector
		);
end DataController;

architecture Behavioral of DataController is

begin

	
	
end Behavioral;
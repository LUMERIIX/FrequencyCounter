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
		CLK 			: in STD_LOGIC;
		RST 			: in STD_LOGIC;
		ce 				: in STD_LOGIC;
		
		DataOut 		: out std_logic_vector(7 downto 0);
		DataIn 			: in std_logic_vector(7 downto 0);
		
		RawDataIn		: in std_logic_vector;
		RawDataOut 		: out std_logic_vector;
		
		DataOutValid 	: out std_logic;
		DataInValid 	: in std_logic;
		DataOutReady 	: in std_logic;
		
		TEST 			: out std_logic
		);
end DataController;

architecture Behavioral of DataController is
	constant HOST_WORD_SIZE 			: natural := 8;
	constant OUTPUT_WIDTH 				: natural := RawDataOut'length;
	constant INPUT_WIDTH 				: natural := RawDataIn'length;
	
	constant INPUT_WIDTH_BYTES        	: natural := (INPUT_WIDTH + HOST_WORD_SIZE - 1)/ HOST_WORD_SIZE;
    constant OUTPUT_WIDTH_BYTES       	: natural := (OUTPUT_WIDTH + HOST_WORD_SIZE - 1)/ HOST_WORD_SIZE;
    constant INPUT_WIDTH_slv          	: std_logic_vector(31 downto 0) := std_logic_vector(to_unsigned(INPUT_WIDTH, 32));
    constant OUTPUT_WIDTH_slv         	: std_logic_vector(31 downto 0) := std_logic_vector(to_unsigned(OUTPUT_WIDTH, 32));
		
	-- State machines
	type states_t 						is(init, IoWidth, setOutput, readInput);
	signal state						: states_t;
	
	signal RawDataIn_s : std_logic_vector(INPUT_WIDTH-1 downto 0);
	signal RawDataOut_s : std_logic_vector(OUTPUT_WIDTH-1 downto 0);
	signal DatenInZwischenspeicher : std_logic_vector(INPUT_WIDTH-1 downto 0);

begin
	RawDataOut_s <= RawDataOut;
	RawDataIn_s <= RawDataIn_s;

	Controller : process (CLK,RST) begin
		if RST = '1' then		
		elsif rising_edge (CLK) then
			if ce = '1' then
				if DataInValid = '1' then
					DatenInZwischenspeicher <= RawDataIn;
				end if;
				
				
			else
				TEST <= '0';
			end if;
		end if;
	end process;
	
	
end Behavioral;
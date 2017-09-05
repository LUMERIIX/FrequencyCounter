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
	
	constant INPUT_WIDTH_BYTES        	: natural := (INPUT_WIDTH)/ HOST_WORD_SIZE;
    constant OUTPUT_WIDTH_BYTES       	: natural := (OUTPUT_WIDTH)/ HOST_WORD_SIZE;
    constant INPUT_WIDTH_slv          	: std_logic_vector(31 downto 0) := std_logic_vector(to_unsigned(INPUT_WIDTH, 32));
    constant OUTPUT_WIDTH_slv         	: std_logic_vector(31 downto 0) := std_logic_vector(to_unsigned(OUTPUT_WIDTH, 32));
		
	-- State machines
	type states_t 						is(init, IoWidth, setOutput, readInput);
	signal state						: states_t;
	
	signal RawDataIn_s : std_logic_vector(INPUT_WIDTH-1 downto 0);
	signal RawDataOut_s : std_logic_vector(OUTPUT_WIDTH-1 downto 0);
	signal DatenInZwischenspeicher : std_logic_vector(INPUT_WIDTH-1 downto 0);
	signal ConvertEnable_s : std_logic;

begin
	--RawDataOut_s <= RawDataOut;
	RawDataIn_s <= RawDataIn_s;

	Controller : process (CLK,RST)
		variable Index : integer range 0 to 128 := 0;
	begin
		if RST = '1' then
			DataOutValid <= '0';
			DataOut <= (others => '0');
			TEST <= '0';
			RawDataOut <= (others => '0');
			ConvertEnable_s	<= '0';
		elsif rising_edge (CLK) then
			if DataInValid = '1' then
				DatenInZwischenspeicher <= RawDataIn;
				TEST <= '1';
				ConvertEnable_s <= '1';
			end if;
			if DataOutReady = '0' then
				if Index = integer(4) then
					Index := 0;
					DataOutValid <= '0';
					ConvertEnable_s <= '0';
					TEST <= '0';
				elsif ConvertEnable_s = '1' then
					DataOutValid <= '1';
					DataOut <= DatenInZwischenspeicher(RawDataIn'length-1 downto RawDataIn'length-8);
					Index := Index +1;
					--DatenInZwischenspeicher <= DatenInZwischenspeicher srl 8;
					DatenInZwischenspeicher <= std_logic_vector(shift_left(unsigned(DatenInZwischenspeicher),8));
				end if;
			else
				DataOutValid <= '0';
			end if;
		end if;
	end process;
	
	
end Behavioral;
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
-- use IEEE.STD_LOGIC_UNSIGNED.ALL;
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

		debug 			: out std_logic;

		DataAccepted 	: out std_logic
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

	signal RawDataIn_s : std_logic_vector(INPUT_WIDTH-1 downto 0);
	signal RawDataOut_s : std_logic_vector(OUTPUT_WIDTH-1 downto 0);
	signal DatenInZwischenspeicher : std_logic_vector(RawDataIn_s'length-1 downto 0);
	signal ConvertEnable_s : std_logic;
	signal DataOut_s : std_logic_vector (7 downto 0);
	signal DataOutValid_s : std_logic;
begin
	--RawDataOut_s <= RawDataOut;
	RawDataIn_s <= RawDataIn_s;

	Data_Out : process (CLK,RST)
		variable Index : natural;
	begin
		if RST = '1' then
			DataOutValid_s <= '0';
			DataOut <= (others => '0');
			DataAccepted <= '0';
			RawDataOut <= (others => '0');
			ConvertEnable_s	<= '0';
		elsif rising_edge (CLK) then
			if DataInValid = '1' then
				DatenInZwischenspeicher <= RawDataIn;
				DataAccepted <= '1';
				Index := 0;
				ConvertEnable_s <= '1';
			end if;
			if DataOutReady = '1' then
				if Index >= natural(INPUT_WIDTH_BYTES) then
					Index := 0;
					DataOutValid_s <= '0';
					ConvertEnable_s <= '0';
					DataAccepted <= '0';
				elsif ConvertEnable_s = '1' and DataOutValid_s = '0' then
					debug <= '1';
					DataOut <= not DatenInZwischenspeicher(7 downto 0);
					DataOutValid_s <= '1';
					Index := Index +1;
					DatenInZwischenspeicher <= x"00" & DatenInZwischenspeicher(DatenInZwischenspeicher'left downto 8);
				end if;
			else
				DataOutValid_s <= '0';
				debug <= '0';
			end if;
		end if;
	end process;

--    Data_In : process (CLK,RST)
--		variable Index : natural;
--	begin
--		if RST = '1' then
--
--		elsif rising_edge (CLK) then
--			if DataInValid = '1' then
--				DatenInZwischenspeicher <= RawDataIn;
--				DataAccepted <= '1';
--				Index := 0;
--				ConvertEnable_s <= '1';
--			end if;
--			if DataOutReady = '1' then
--				if Index >= natural(INPUT_WIDTH_BYTES) then
--					Index := 0;
--					DataOutValid_s <= '0';
--					ConvertEnable_s <= '0';
--					DataAccepted <= '0';
--				elsif ConvertEnable_s = '1' and DataOutValid_s = '0' then
--					debug <= '1';
--					DataOut <= not DatenInZwischenspeicher(7 downto 0);
--					DataOutValid_s <= '1';
--					Index := Index +1;
--					DatenInZwischenspeicher <= x"00" & DatenInZwischenspeicher(DatenInZwischenspeicher'left downto 8);
--				end if;
--			else
--				DataOutValid_s <= '0';
--				debug <= '0';
--			end if;
--		end if;
--	end process;
	DataOutValid <= DataOutValid_s;
end Behavioral;

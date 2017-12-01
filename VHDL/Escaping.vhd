----------------------------------------------------------------------------------
-- Company:
-- Engineer: LJ
--
-- Create Date:    11:38:06 07/21/2017
-- Design Name:
-- Module Name: Escaping
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
--use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity Escaping is
    port(
        CLK             : in STD_LOGIC;
        reset           : out STD_LOGIC;
        ce              : in STD_LOGIC;
        DataOut         : out std_logic_vector (7 downto 0);--(33 downto 0)
        DataIn          : in std_logic_vector (7 downto 0);--(33 downto 0)

        DataInValid     : in STD_LOGIC;
        DataOutValid    : out std_logic
		);
end Escaping;

architecture structure of Escaping is

    constant escape_symbol : std_logic_vector(7 downto 0) := x"55";
    constant reset_symbol : std_logic_vector(7 downto 0) := x"EE";

    type escaping_states_t is (normal_s,escaping_s);
    signal state : escaping_states_t;

--	type Controller_states_t is (Idle, Measure, Calib, Transmit);
--	signal state : Controller_states_t;

--	signal RefCountVal_s : std_logic_vector(31 downto 0); --(31 downto 0);
--	signal MeasCountVal_s : std_logic_vector(31 downto 0); --(31 downto 0);
--	signal CounterReset_s : std_logic;
--	signal RawDataOut_s : std_logic_vector (31 downto 0);
--	signal RawDataIn_s : std_logic_vector (63 downto 0);
--	signal Valid_s : std_logic;
--	signal DataControllerEnable_s : std_logic;
--	signal DataAccepted_s : std_logic;
--	signal DataOut_s : std_logic_vector (7 downto 0);
--	signal DataIn_s : std_logic_vector(7 downto 0);
--	signal CommandReceived : std_logic;
	--signal DataValid_s : std_logic;
begin

        Escaping : process (CLK,DataIn,DataInValid) begin
            if(rising_edge(CLK)) then
                if ce = '1' then
                    DataOutValid <= '0';
                    reset <= '0';
                    DataOut <= DataIn;
                    if DataInValid = '1' then
                        case state is
                        when normal_s =>
                            if(DataIN = escape_symbol) then
                                state <= escaping_s;
                            elsif DataIn = reset_symbol then
                                reset <= '1';
                            else
                                DataOutValid <= '1';
                            end if;
                        when escaping_s =>
                            state <= normal_s;
                            DataOutValid <= '1';
                        end case;
                    end if;
                end if;
            end if;
        end process;



end architecture structure;

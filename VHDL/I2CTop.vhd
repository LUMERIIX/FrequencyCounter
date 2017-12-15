----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:    12:46:54 12/07/2017
-- Design Name:
-- Module Name:    I2CTop - Behavioral
-- Project Name:
-- Target Devices:
-- Tool versions:
-- Description:
--
-- Dependencies:
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity I2CTop is
    generic(
        ARST_LVL : std_logic := '0'                   -- asynchronous reset level
    );
    port(
        -- wishbone signals
        wb_clk_i      : in  std_logic;                    -- master clock input
        wb_rst_i      : in  std_logic := '0';             -- synchronous active high reset
        arst_i        : in  std_logic := not ARST_LVL;    -- asynchronous reset
        wb_adr_i      : in  std_logic_vector(7 downto 0);
        wb_dat_i      : in  std_logic_vector(7 downto 0); -- Databus input
        wb_dat_o      : out std_logic_vector(7 downto 0); -- Databus output
        wb_we_i       : in  std_logic;                    -- Write enable input
        wb_stb_i      : in  std_logic;                    -- Strobe signals / core select signal
        wb_cyc_i      : in  std_logic;                    -- Valid bus cycle input
        wb_ack_o      : out std_logic;                    -- Bus cycle acknowledge output
        wb_inta_o     : out std_logic;                    -- interrupt request output signal

        -- i2c lines
        scl : inout std_logic;
        sda : inout std_logic
--        scl_pad_i     : in  std_logic;                    -- i2c clock line input
--        scl_pad_o     : out std_logic;                    -- i2c clock line output
--        scl_padoen_o  : out std_logic;                    -- i2c clock line output enable, active low
--        sda_pad_i     : in  std_logic;                    -- i2c data line input
--        sda_pad_o     : out std_logic;                    -- i2c data line output
--        sda_padoen_o  : out std_logic                     -- i2c data line output enable, active low
    );

end I2CTop;

architecture Behavioral of I2CTop is

    component i2c_master_top is
        generic(
            ARST_LVL : std_logic := '0'                   -- asynchronous reset level
        );
        port(
            wb_clk_i      : in  std_logic;
            wb_rst_i      : in  std_logic := '0';
            arst_i        : in  std_logic := not ARST_LVL;
            wb_adr_i      : in  std_logic_vector(7 downto 0);
            wb_dat_i      : in  std_logic_vector(7 downto 0);
            wb_dat_o      : out std_logic_vector(7 downto 0);
            wb_we_i       : in  std_logic;
            wb_stb_i      : in  std_logic;
            wb_cyc_i      : in  std_logic;
            wb_ack_o      : out std_logic;
            wb_inta_o     : out std_logic;

            -- i2c lines
            scl_pad_i     : in  std_logic;
            scl_pad_o     : out std_logic;
            scl_padoen_o  : out std_logic;
            sda_pad_i     : in  std_logic;
            sda_pad_o     : out std_logic;
            sda_padoen_o  : out std_logic
        );
    end component;

    signal scl_pad_i                    : std_logic;
    signal scl_pad_o                    : std_logic;
    signal scl_padoen_o                 : std_logic;
    signal sda_pad_i                    : std_logic;
    signal sda_pad_o                    : std_logic;
    signal sda_padoen_o                 : std_logic;

begin

    i2c_master : component i2c_master_top
        generic map(
            ARST_LVL      => ARST_LVL
        )
        port map(
            wb_clk_i      => wb_clk_i,
            wb_rst_i      => wb_rst_i,
            arst_i        => arst_i,
            wb_adr_i      => wb_adr_i,
            wb_dat_i      => wb_dat_i,
            wb_dat_o      => wb_dat_o,
            wb_we_i       => wb_we_i,
            wb_stb_i      => wb_stb_i,
            wb_cyc_i      => wb_cyc_i,
            wb_ack_o      => wb_ack_o,
            wb_inta_o     => wb_inta_o,

            -- i2c lines
            scl_pad_i     => scl_pad_i,
            scl_pad_o     => scl_pad_o,
            scl_padoen_o  => scl_padoen_o,
            sda_pad_i     => sda_pad_i,
            sda_pad_o     => sda_pad_o,
            sda_padoen_o  => sda_padoen_o
        );


    I2C : process (scl_padoen_o,sda_padoen_o,scl_pad_o,sda_pad_o,scl,sda) begin

        if(scl_padoen_o = '0') then
            scl <= scl_pad_o;
        else
            scl <= 'Z';
        end if;
        if(sda_padoen_o = '0') then
            sda <= sda_pad_o;
        else
            sda <= 'Z';
        end if;
        scl_pad_i <= scl;
        sda_pad_i <= sda;
    end process;



end Behavioral;


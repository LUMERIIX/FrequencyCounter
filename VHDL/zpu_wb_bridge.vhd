
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

--library work;
--use work.zpupkg.all;
--use work.zpu_config.all;

entity zpu_wb_bridge is
    generic(
        wordSize        : natural;
        maxAddrBitIncIO : natural;
        wordBytes       : natural
    );
    port (    -- Native ZPU interface
        clk_i                  : in  std_logic;
        rst_i                  : in  std_logic;

        mem_req                : in  std_logic;
        mem_we                 : in  std_logic;
        mem_ack                : out std_logic;
        mem_read               : out std_logic_vector(wordSize-1 downto 0);
        mem_write              : in  std_logic_vector(wordSize-1 downto 0);
        out_mem_addr           : in  std_logic_vector(maxAddrBitIncIO downto 0);
        mem_write_mask          : in  std_logic_vector(wordBytes-1 downto 0);

        -- Wishbone from ZPU
        adr_o                  : out std_logic_vector(maxAddrBitIncIO-1 downto 0);
        sel_o                  : out std_logic_vector(wordBytes-1 downto 0);
        dat_o                  : out std_logic_vector(wordSize-1 downto 0);
        dat_i                  : in  std_logic_vector(wordSize-1 downto 0);
        cyc_o                  : out std_logic;
        stb_o                  : out std_logic;
        we_o                   : out std_logic;
        ack_i                  : in  std_logic
    );
end zpu_wb_bridge;

architecture behave of zpu_wb_bridge is

begin

    mem_read <= dat_i;
    mem_ack <= ack_i;

    adr_o <= out_mem_addr(maxAddrBitIncIO-1 downto 0);--"000000" & out_mem_addr(27) & out_mem_addr(24 downto 0);
    dat_o <= mem_write;
    sel_o <= mem_write_mask;
    stb_o <= mem_req and out_mem_addr(out_mem_addr'left);
    cyc_o <= mem_req and out_mem_addr(out_mem_addr'left);
    we_o <= mem_we;

--    process (clk_i,mem_req,ack_i,out_mem_addr) begin
--        if rising_edge(clk_i) and mem_req = '1' and out_mem_addr(out_mem_addr'left) = '1' then
--            stb_o <= '1';
--            cyc_o <= '1';
--        elsif rising_edge(clk_i) and ack_i = '1' then
--            stb_o <= '0';
--            cyc_o <= '0';
--        end if;
--    end process;




end behave;

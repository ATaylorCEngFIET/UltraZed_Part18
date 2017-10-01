-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.3
-- Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity design_1_v_tpg_0_0_tpgPatternTartanCFfa_rom is 
    generic(
             dwidth     : integer := 3; 
             awidth     : integer := 6; 
             mem_size    : integer := 64
    ); 
    port (
          addr0      : in std_logic_vector(awidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(dwidth-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of design_1_v_tpg_0_0_tpgPatternTartanCFfa_rom is 

signal addr0_tmp : std_logic_vector(awidth-1 downto 0); 
type mem_array is array (0 to mem_size-1) of std_logic_vector (dwidth-1 downto 0); 
signal mem : mem_array := (
    0 => "100", 1 => "010", 2 => "110", 3 => "000", 4 => "111", 5 => "001", 
    6 => "101", 7 => "011", 8 => "010", 9 => "111", 10 => "011", 11 => "001", 
    12 => "110", 13 => "100", 14 => "000", 15 => "101", 16 => "110", 17 => "011", 
    18 => "000", 19 => "010", 20 => "101", 21 => "111", 22 => "100", 23 => "001", 
    24 => "000", 25 => "001", 26 => "010", 27 => "011", 28 => "100", 29 => "101", 
    30 => "110", 31 to 32=> "111", 33 => "110", 34 => "101", 35 => "100", 36 => "011", 
    37 => "010", 38 => "001", 39 => "000", 40 => "001", 41 => "100", 42 => "111", 
    43 => "101", 44 => "010", 45 => "000", 46 => "011", 47 => "110", 48 => "101", 
    49 => "000", 50 => "100", 51 => "110", 52 => "001", 53 => "011", 54 => "111", 
    55 => "010", 56 => "011", 57 => "101", 58 => "001", 59 => "111", 60 => "000", 
    61 => "110", 62 => "010", 63 => "100" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "select_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "distributed";

attribute EQUIVALENT_REGISTER_REMOVAL : string;
begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;


Library IEEE;
use IEEE.std_logic_1164.all;

entity design_1_v_tpg_0_0_tpgPatternTartanCFfa is
    generic (
        DataWidth : INTEGER := 3;
        AddressRange : INTEGER := 64;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of design_1_v_tpg_0_0_tpgPatternTartanCFfa is
    component design_1_v_tpg_0_0_tpgPatternTartanCFfa_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    design_1_v_tpg_0_0_tpgPatternTartanCFfa_rom_U :  component design_1_v_tpg_0_0_tpgPatternTartanCFfa_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;



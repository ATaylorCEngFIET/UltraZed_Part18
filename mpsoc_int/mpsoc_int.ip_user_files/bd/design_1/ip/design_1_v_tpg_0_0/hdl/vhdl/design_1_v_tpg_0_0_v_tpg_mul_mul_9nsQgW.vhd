
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity design_1_v_tpg_0_0_v_tpg_mul_mul_9nsQgW_DSP48_8 is
port (
    clk: in std_logic;
    rst: in std_logic;
    ce: in std_logic;
    a: in std_logic_vector(9 - 1 downto 0);
    b: in std_logic_vector(20 - 1 downto 0);
    p: out std_logic_vector(28 - 1 downto 0));

end entity;

architecture behav of design_1_v_tpg_0_0_v_tpg_mul_mul_9nsQgW_DSP48_8 is
    signal a_cvt: unsigned(9 - 1 downto 0);
    signal b_cvt: signed(20 - 1 downto 0);
    signal p_cvt: signed(28 - 1 downto 0);

    signal p_reg: signed(28 - 1 downto 0);
    signal a_reg: unsigned(9 - 1 downto 0) ; 
    signal b_reg: signed(20 - 1 downto 0) ; 
begin

    a_cvt <= unsigned(a);
    b_cvt <= signed(b);

    process(clk)
    begin
        if (clk'event and clk = '1') then
            if (ce = '1') then
                a_reg <= a_cvt;
                b_reg <= b_cvt;
                p_reg <= p_cvt;
            end if;
        end if;
    end process;

    p_cvt <= signed (resize(unsigned (signed ('0' & a_reg) * signed (b_reg)), 28));
    p <= std_logic_vector(p_reg);

end architecture;

Library IEEE;
use IEEE.std_logic_1164.all;

entity design_1_v_tpg_0_0_v_tpg_mul_mul_9nsQgW is
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER);
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        ce : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR(din0_WIDTH - 1 DOWNTO 0);
        din1 : IN STD_LOGIC_VECTOR(din1_WIDTH - 1 DOWNTO 0);
        dout : OUT STD_LOGIC_VECTOR(dout_WIDTH - 1 DOWNTO 0));
end entity;

architecture arch of design_1_v_tpg_0_0_v_tpg_mul_mul_9nsQgW is
    component design_1_v_tpg_0_0_v_tpg_mul_mul_9nsQgW_DSP48_8 is
        port (
            clk : IN STD_LOGIC;
            rst : IN STD_LOGIC;
            ce : IN STD_LOGIC;
            a : IN STD_LOGIC_VECTOR;
            b : IN STD_LOGIC_VECTOR;
            p : OUT STD_LOGIC_VECTOR);
    end component;



begin
    design_1_v_tpg_0_0_v_tpg_mul_mul_9nsQgW_DSP48_8_U :  component design_1_v_tpg_0_0_v_tpg_mul_mul_9nsQgW_DSP48_8
    port map (
        clk => clk,
        rst => reset,
        ce => ce,
        a => din0,
        b => din1,
        p => dout);

end architecture;



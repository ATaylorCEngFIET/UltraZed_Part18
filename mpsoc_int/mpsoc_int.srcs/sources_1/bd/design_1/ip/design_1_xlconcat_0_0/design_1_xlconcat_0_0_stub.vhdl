-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3_sdx (win64) Build 1721784 Tue Nov 29 22:12:44 MST 2016
-- Date        : Fri Sep 29 16:15:24 2017
-- Host        : DESKTOP-HQKVQ13 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top design_1_xlconcat_0_0 -prefix
--               design_1_xlconcat_0_0_ design_1_xlconcat_0_0_stub.vhdl
-- Design      : design_1_xlconcat_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sfva625-1-i-es1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_xlconcat_0_0 is
  Port ( 
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end design_1_xlconcat_0_0;

architecture stub of design_1_xlconcat_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "In0[0:0],In1[0:0],dout[1:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "xlconcat,Vivado 2016.3_sdx";
begin
end;

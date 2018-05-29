-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Wed May 23 17:57:04 2018
-- Host        : PHSX-82QWMN2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_CDR_state_machine_0_0_stub.vhdl
-- Design      : design_1_CDR_state_machine_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    d_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    dv : in STD_LOGIC_VECTOR ( 1 downto 0 );
    d_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    d_write : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "d_in[1:0],clk,rst,dv[1:0],d_out[1:0],d_write";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "CDR_state_machine,Vivado 2018.1";
begin
end;
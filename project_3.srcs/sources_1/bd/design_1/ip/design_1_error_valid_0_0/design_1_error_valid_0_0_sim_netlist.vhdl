-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Thu May 17 14:33:40 2018
-- Host        : PHSX-82QWMN2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Projects/04-23-test/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_error_valid_0_0/design_1_error_valid_0_0_sim_netlist.vhdl
-- Design      : design_1_error_valid_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_error_valid_0_0_error_valid is
  port (
    valid_error : out STD_LOGIC;
    error : in STD_LOGIC;
    test : in STD_LOGIC;
    tc : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_error_valid_0_0_error_valid : entity is "error_valid";
end design_1_error_valid_0_0_error_valid;

architecture STRUCTURE of design_1_error_valid_0_0_error_valid is
begin
\valid_error__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => error,
      I1 => test,
      I2 => tc,
      O => valid_error
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_error_valid_0_0 is
  port (
    error : in STD_LOGIC;
    tc : in STD_LOGIC;
    test : in STD_LOGIC;
    valid_error : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_error_valid_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_error_valid_0_0 : entity is "design_1_error_valid_0_0,error_valid,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_error_valid_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_error_valid_0_0 : entity is "error_valid,Vivado 2018.1";
end design_1_error_valid_0_0;

architecture STRUCTURE of design_1_error_valid_0_0 is
begin
U0: entity work.design_1_error_valid_0_0_error_valid
     port map (
      error => error,
      tc => tc,
      test => test,
      valid_error => valid_error
    );
end STRUCTURE;
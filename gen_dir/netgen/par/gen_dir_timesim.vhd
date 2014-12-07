--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: gen_dir_timesim.vhd
-- /___/   /\     Timestamp: Sun Dec 07 21:04:08 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf gen_dir.pcf -rpw 100 -tpw 0 -ar Structure -tm gen_dir -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim gen_dir.ncd gen_dir_timesim.vhd 
-- Device	: 6slx45csg324-3 (PRODUCTION 1.23 2013-10-13)
-- Input file	: gen_dir.ncd
-- Output file	: C:\Users\christopher\Dropbox\workspace\modelado14\gen_dir\netgen\par\gen_dir_timesim.vhd
-- # of Entities	: 1
-- Design Name	: gen_dir
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity gen_dir is
  port (
    CLK : in STD_LOGIC := 'X'; 
    RST : in STD_LOGIC := 'X'; 
    DIR_VLD : in STD_LOGIC := 'X'; 
    DATO_VLD : in STD_LOGIC := 'X'; 
    DATO_OK : out STD_LOGIC; 
    DIR : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    DATO : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    ADDR_OUT : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end gen_dir;

architecture Structure of gen_dir is
  signal CLK_BUFGP : STD_LOGIC; 
  signal prescalerCounter_6_dato_ok_trigger_AND_2_o2_365 : STD_LOGIC; 
  signal RST_IBUF_0 : STD_LOGIC; 
  signal CE_378 : STD_LOGIC; 
  signal Maccum_cnt_cy_3_Q_379 : STD_LOGIC; 
  signal Maccum_cnt_cy_7_Q_388 : STD_LOGIC; 
  signal Maccum_cnt_cy_11_Q_394 : STD_LOGIC; 
  signal DATO_0_IBUF_0 : STD_LOGIC; 
  signal DATO_1_IBUF_0 : STD_LOGIC; 
  signal DATO_2_IBUF_0 : STD_LOGIC; 
  signal DATO_3_IBUF_0 : STD_LOGIC; 
  signal DATO_4_IBUF_0 : STD_LOGIC; 
  signal DATO_5_IBUF_0 : STD_LOGIC; 
  signal DATO_6_IBUF_0 : STD_LOGIC; 
  signal DIR_VLD_IBUF_0 : STD_LOGIC; 
  signal DATO_7_IBUF_0 : STD_LOGIC; 
  signal DIR_0_IBUF_0 : STD_LOGIC; 
  signal DIR_1_IBUF_0 : STD_LOGIC; 
  signal DIR_2_IBUF_0 : STD_LOGIC; 
  signal DATO_VLD_IBUF_0 : STD_LOGIC; 
  signal DIR_3_IBUF_0 : STD_LOGIC; 
  signal DIR_4_IBUF_0 : STD_LOGIC; 
  signal DIR_5_IBUF_0 : STD_LOGIC; 
  signal DIR_6_IBUF_0 : STD_LOGIC; 
  signal DIR_7_IBUF_0 : STD_LOGIC; 
  signal DATO_OK_OBUF_418 : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal prescalerCounter_6_dato_ok_trigger_AND_2_o3_421 : STD_LOGIC; 
  signal prescalerCounter_6_dato_ok_trigger_AND_2_o4_422 : STD_LOGIC; 
  signal prescalerCounter_6_dato_ok_trigger_AND_2_o1_423 : STD_LOGIC; 
  signal state_424 : STD_LOGIC; 
  signal Q_n0053_inv : STD_LOGIC; 
  signal prescalerCounter_6_dato_ok_trigger_AND_2_o5_426 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal ProtoComp2_CYINITGND_0 : STD_LOGIC; 
  signal cnt_8_rt_80 : STD_LOGIC; 
  signal cnt_9_rt_76 : STD_LOGIC; 
  signal cnt_10_rt_72 : STD_LOGIC; 
  signal cnt_11_rt_60 : STD_LOGIC; 
  signal cnt_12_rt_107 : STD_LOGIC; 
  signal cnt_13_rt_103 : STD_LOGIC; 
  signal cnt_14_rt_99 : STD_LOGIC; 
  signal cnt_15_rt_89 : STD_LOGIC; 
  signal DATO_0_IBUF_114 : STD_LOGIC; 
  signal DATO_1_IBUF_117 : STD_LOGIC; 
  signal DATO_2_IBUF_120 : STD_LOGIC; 
  signal DATO_3_IBUF_123 : STD_LOGIC; 
  signal DATO_4_IBUF_126 : STD_LOGIC; 
  signal DATO_5_IBUF_131 : STD_LOGIC; 
  signal DATO_6_IBUF_136 : STD_LOGIC; 
  signal DIR_VLD_IBUF_139 : STD_LOGIC; 
  signal DATO_7_IBUF_144 : STD_LOGIC; 
  signal DIR_0_IBUF_157 : STD_LOGIC; 
  signal DIR_1_IBUF_160 : STD_LOGIC; 
  signal DIR_2_IBUF_163 : STD_LOGIC; 
  signal DATO_VLD_IBUF_166 : STD_LOGIC; 
  signal DIR_3_IBUF_169 : STD_LOGIC; 
  signal DIR_4_IBUF_172 : STD_LOGIC; 
  signal DIR_5_IBUF_175 : STD_LOGIC; 
  signal DIR_6_IBUF_178 : STD_LOGIC; 
  signal DIR_7_IBUF_181 : STD_LOGIC; 
  signal RST_IBUF_184 : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_189 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal Mcount_prescalerCounter6 : STD_LOGIC; 
  signal prescalerCounter_6_dato_ok_trigger_AND_2_o : STD_LOGIC; 
  signal prescalerCounter_6_PWR_4_o_equal_2_o : STD_LOGIC; 
  signal Mcount_prescalerCounter : STD_LOGIC; 
  signal prescalerCounter_2_pack_14 : STD_LOGIC; 
  signal Mcount_prescalerCounter2 : STD_LOGIC; 
  signal Mcount_prescalerCounter1 : STD_LOGIC; 
  signal prescalerCounter_4_pack_16 : STD_LOGIC; 
  signal Mcount_prescalerCounter4 : STD_LOGIC; 
  signal Mcount_prescalerCounter3 : STD_LOGIC; 
  signal Mcount_prescalerCounter5 : STD_LOGIC; 
  signal state_rstpot_326 : STD_LOGIC; 
  signal NlwBufferSignal_cnt_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cnt_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Maccum_cnt_cy_3_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_Maccum_cnt_cy_3_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_Maccum_cnt_cy_3_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_Maccum_cnt_cy_3_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_cnt_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cnt_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cnt_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cnt_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Maccum_cnt_cy_7_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_Maccum_cnt_cy_7_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_Maccum_cnt_cy_7_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_Maccum_cnt_cy_7_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_cnt_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cnt_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cnt_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cnt_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cnt_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cnt_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cnt_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cnt_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cnt_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cnt_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ADDR_OUT_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ADDR_OUT_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ADDR_OUT_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ADDR_OUT_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ADDR_OUT_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ADDR_OUT_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ADDR_OUT_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ADDR_OUT_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DATO_OK_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CLK_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_prescalerCounter_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_OK_CLK : STD_LOGIC; 
  signal NlwBufferSignal_CE_CLK : STD_LOGIC; 
  signal NlwBufferSignal_valor_freq_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_valor_freq_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_valor_freq_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_valor_freq_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_valor_freq_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_valor_freq_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_valor_freq_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_valor_freq_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_prescalerCounter_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_prescalerCounter_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_prescalerCounter_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_prescalerCounter_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_prescalerCounter_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_prescalerCounter_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_valor_freq_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_valor_freq_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_valor_freq_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_valor_freq_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_valor_freq_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_valor_freq_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_valor_freq_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_valor_freq_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_state_CLK : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_Maccum_cnt_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maccum_cnt_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maccum_cnt_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maccum_cnt_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maccum_cnt_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maccum_cnt_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_6_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maccum_cnt_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maccum_cnt_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maccum_cnt_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_5_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_4_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_3_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maccum_cnt_xor_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maccum_cnt_xor_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maccum_cnt_xor_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maccum_cnt_xor_15_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maccum_cnt_xor_15_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_9_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_8_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_7_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal prescalerCounter : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal cnt : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal valor_freq : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Maccum_cnt_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 15 downto 0 ); 
begin
  cnt_3 : X_FF
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => '0'
    )
    port map (
      CE => CE_378,
      CLK => NlwBufferSignal_cnt_3_CLK,
      I => Result(3),
      O => cnt(3),
      RST => RST_IBUF_0,
      SET => GND
    );
  Maccum_cnt_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => cnt(3),
      ADR3 => '1',
      ADR5 => valor_freq(3),
      O => Maccum_cnt_lut(3)
    );
  ProtoComp2_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X14Y6"
    )
    port map (
      O => ProtoComp2_CYINITGND_0
    );
  cnt_2 : X_FF
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => '0'
    )
    port map (
      CE => CE_378,
      CLK => NlwBufferSignal_cnt_2_CLK,
      I => Result(2),
      O => cnt(2),
      RST => RST_IBUF_0,
      SET => GND
    );
  Maccum_cnt_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y6"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp2_CYINITGND_0,
      CO(3) => Maccum_cnt_cy_3_Q_379,
      CO(2) => NLW_Maccum_cnt_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_Maccum_cnt_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_Maccum_cnt_cy_3_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_Maccum_cnt_cy_3_DI_3_Q,
      DI(2) => NlwBufferSignal_Maccum_cnt_cy_3_DI_2_Q,
      DI(1) => NlwBufferSignal_Maccum_cnt_cy_3_DI_1_Q,
      DI(0) => NlwBufferSignal_Maccum_cnt_cy_3_DI_0_Q,
      O(3) => Result(3),
      O(2) => Result(2),
      O(1) => Result(1),
      O(0) => Result(0),
      S(3) => Maccum_cnt_lut(3),
      S(2) => Maccum_cnt_lut(2),
      S(1) => Maccum_cnt_lut(1),
      S(0) => Maccum_cnt_lut(0)
    );
  Maccum_cnt_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => cnt(2),
      ADR3 => '1',
      ADR4 => valor_freq(2),
      O => Maccum_cnt_lut(2)
    );
  cnt_1 : X_FF
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => '0'
    )
    port map (
      CE => CE_378,
      CLK => NlwBufferSignal_cnt_1_CLK,
      I => Result(1),
      O => cnt(1),
      RST => RST_IBUF_0,
      SET => GND
    );
  Maccum_cnt_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => cnt(1),
      ADR3 => '1',
      ADR5 => valor_freq(1),
      O => Maccum_cnt_lut(1)
    );
  cnt_0 : X_FF
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => '0'
    )
    port map (
      CE => CE_378,
      CLK => NlwBufferSignal_cnt_0_CLK,
      I => Result(0),
      O => cnt(0),
      RST => RST_IBUF_0,
      SET => GND
    );
  Maccum_cnt_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => cnt(0),
      ADR3 => '1',
      ADR5 => valor_freq(0),
      O => Maccum_cnt_lut(0)
    );
  cnt_7 : X_FF
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => '0'
    )
    port map (
      CE => CE_378,
      CLK => NlwBufferSignal_cnt_7_CLK,
      I => Result(7),
      O => cnt(7),
      RST => RST_IBUF_0,
      SET => GND
    );
  Maccum_cnt_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => X"33333333CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR5 => cnt(7),
      ADR4 => '1',
      ADR1 => valor_freq(7),
      O => Maccum_cnt_lut(7)
    );
  cnt_6 : X_FF
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => '0'
    )
    port map (
      CE => CE_378,
      CLK => NlwBufferSignal_cnt_6_CLK,
      I => Result(6),
      O => cnt(6),
      RST => RST_IBUF_0,
      SET => GND
    );
  Maccum_cnt_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y7"
    )
    port map (
      CI => Maccum_cnt_cy_3_Q_379,
      CYINIT => '0',
      CO(3) => Maccum_cnt_cy_7_Q_388,
      CO(2) => NLW_Maccum_cnt_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_Maccum_cnt_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_Maccum_cnt_cy_7_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_Maccum_cnt_cy_7_DI_3_Q,
      DI(2) => NlwBufferSignal_Maccum_cnt_cy_7_DI_2_Q,
      DI(1) => NlwBufferSignal_Maccum_cnt_cy_7_DI_1_Q,
      DI(0) => NlwBufferSignal_Maccum_cnt_cy_7_DI_0_Q,
      O(3) => Result(7),
      O(2) => Result(6),
      O(1) => Result(5),
      O(0) => Result(4),
      S(3) => Maccum_cnt_lut(7),
      S(2) => Maccum_cnt_lut(6),
      S(1) => Maccum_cnt_lut(5),
      S(0) => Maccum_cnt_lut(4)
    );
  Maccum_cnt_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => cnt(6),
      ADR5 => '1',
      ADR3 => valor_freq(6),
      O => Maccum_cnt_lut(6)
    );
  cnt_5 : X_FF
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => '0'
    )
    port map (
      CE => CE_378,
      CLK => NlwBufferSignal_cnt_5_CLK,
      I => Result(5),
      O => cnt(5),
      RST => RST_IBUF_0,
      SET => GND
    );
  Maccum_cnt_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => X"3333CCCC3333CCCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR4 => cnt(5),
      ADR3 => '1',
      ADR1 => valor_freq(5),
      O => Maccum_cnt_lut(5)
    );
  cnt_4 : X_FF
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => '0'
    )
    port map (
      CE => CE_378,
      CLK => NlwBufferSignal_cnt_4_CLK,
      I => Result(4),
      O => cnt(4),
      RST => RST_IBUF_0,
      SET => GND
    );
  Maccum_cnt_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => cnt(4),
      ADR3 => '1',
      ADR5 => valor_freq(4),
      O => Maccum_cnt_lut(4)
    );
  cnt_11 : X_FF
    generic map(
      LOC => "SLICE_X14Y8",
      INIT => '0'
    )
    port map (
      CE => CE_378,
      CLK => NlwBufferSignal_cnt_11_CLK,
      I => Result(11),
      O => cnt(11),
      RST => RST_IBUF_0,
      SET => GND
    );
  cnt_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y8",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => cnt(11),
      ADR3 => '1',
      ADR5 => '1',
      O => cnt_11_rt_60
    );
  N1_6_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y8",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_6_D5LUT_O_UNCONNECTED
    );
  cnt_10 : X_FF
    generic map(
      LOC => "SLICE_X14Y8",
      INIT => '0'
    )
    port map (
      CE => CE_378,
      CLK => NlwBufferSignal_cnt_10_CLK,
      I => Result(10),
      O => cnt(10),
      RST => RST_IBUF_0,
      SET => GND
    );
  Maccum_cnt_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y8"
    )
    port map (
      CI => Maccum_cnt_cy_7_Q_388,
      CYINIT => '0',
      CO(3) => Maccum_cnt_cy_11_Q_394,
      CO(2) => NLW_Maccum_cnt_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_Maccum_cnt_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_Maccum_cnt_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(11),
      O(2) => Result(10),
      O(1) => Result(9),
      O(0) => Result(8),
      S(3) => cnt_11_rt_60,
      S(2) => cnt_10_rt_72,
      S(1) => cnt_9_rt_76,
      S(0) => cnt_8_rt_80
    );
  cnt_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y8",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => cnt(10),
      ADR3 => '1',
      ADR5 => '1',
      O => cnt_10_rt_72
    );
  N1_5_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y8",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_5_C5LUT_O_UNCONNECTED
    );
  cnt_9 : X_FF
    generic map(
      LOC => "SLICE_X14Y8",
      INIT => '0'
    )
    port map (
      CE => CE_378,
      CLK => NlwBufferSignal_cnt_9_CLK,
      I => Result(9),
      O => cnt(9),
      RST => RST_IBUF_0,
      SET => GND
    );
  cnt_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y8",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => cnt(9),
      ADR3 => '1',
      ADR5 => '1',
      O => cnt_9_rt_76
    );
  N1_4_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y8",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_4_B5LUT_O_UNCONNECTED
    );
  cnt_8 : X_FF
    generic map(
      LOC => "SLICE_X14Y8",
      INIT => '0'
    )
    port map (
      CE => CE_378,
      CLK => NlwBufferSignal_cnt_8_CLK,
      I => Result(8),
      O => cnt(8),
      RST => RST_IBUF_0,
      SET => GND
    );
  cnt_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y8",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => cnt(8),
      ADR3 => '1',
      ADR5 => '1',
      O => cnt_8_rt_80
    );
  N1_3_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y8",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_3_A5LUT_O_UNCONNECTED
    );
  cnt_15 : X_FF
    generic map(
      LOC => "SLICE_X14Y9",
      INIT => '0'
    )
    port map (
      CE => CE_378,
      CLK => NlwBufferSignal_cnt_15_CLK,
      I => Result(15),
      O => cnt(15),
      RST => RST_IBUF_0,
      SET => GND
    );
  cnt_15_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y9",
      INIT => X"FFFFFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => cnt(15),
      ADR4 => '1',
      ADR3 => '1',
      O => cnt_15_rt_89
    );
  cnt_14 : X_FF
    generic map(
      LOC => "SLICE_X14Y9",
      INIT => '0'
    )
    port map (
      CE => CE_378,
      CLK => NlwBufferSignal_cnt_14_CLK,
      I => Result(14),
      O => cnt(14),
      RST => RST_IBUF_0,
      SET => GND
    );
  Maccum_cnt_xor_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y9"
    )
    port map (
      CI => Maccum_cnt_cy_11_Q_394,
      CYINIT => '0',
      CO(3) => NLW_Maccum_cnt_xor_15_CO_3_UNCONNECTED,
      CO(2) => NLW_Maccum_cnt_xor_15_CO_2_UNCONNECTED,
      CO(1) => NLW_Maccum_cnt_xor_15_CO_1_UNCONNECTED,
      CO(0) => NLW_Maccum_cnt_xor_15_CO_0_UNCONNECTED,
      DI(3) => NLW_Maccum_cnt_xor_15_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(15),
      O(2) => Result(14),
      O(1) => Result(13),
      O(0) => Result(12),
      S(3) => cnt_15_rt_89,
      S(2) => cnt_14_rt_99,
      S(1) => cnt_13_rt_103,
      S(0) => cnt_12_rt_107
    );
  cnt_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y9",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => cnt(14),
      ADR3 => '1',
      ADR5 => '1',
      O => cnt_14_rt_99
    );
  N1_9_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y9",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_9_C5LUT_O_UNCONNECTED
    );
  cnt_13 : X_FF
    generic map(
      LOC => "SLICE_X14Y9",
      INIT => '0'
    )
    port map (
      CE => CE_378,
      CLK => NlwBufferSignal_cnt_13_CLK,
      I => Result(13),
      O => cnt(13),
      RST => RST_IBUF_0,
      SET => GND
    );
  cnt_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y9",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => cnt(13),
      ADR3 => '1',
      ADR5 => '1',
      O => cnt_13_rt_103
    );
  N1_8_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y9",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_8_B5LUT_O_UNCONNECTED
    );
  cnt_12 : X_FF
    generic map(
      LOC => "SLICE_X14Y9",
      INIT => '0'
    )
    port map (
      CE => CE_378,
      CLK => NlwBufferSignal_cnt_12_CLK,
      I => Result(12),
      O => cnt(12),
      RST => RST_IBUF_0,
      SET => GND
    );
  cnt_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y9",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => cnt(12),
      ADR3 => '1',
      ADR5 => '1',
      O => cnt_12_rt_107
    );
  N1_7_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y9",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_7_A5LUT_O_UNCONNECTED
    );
  DATO_0_IBUF : X_BUF
    generic map(
      LOC => "PAD223",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO_0_IBUF_114,
      I => DATO(0)
    );
  ProtoComp6_IMUX : X_BUF
    generic map(
      LOC => "PAD223",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_0_IBUF_114,
      O => DATO_0_IBUF_0
    );
  DATO_1_IBUF : X_BUF
    generic map(
      LOC => "PAD224",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO_1_IBUF_117,
      I => DATO(1)
    );
  ProtoComp6_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD224",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_1_IBUF_117,
      O => DATO_1_IBUF_0
    );
  DATO_2_IBUF : X_BUF
    generic map(
      LOC => "PAD225",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO_2_IBUF_120,
      I => DATO(2)
    );
  ProtoComp6_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD225",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_2_IBUF_120,
      O => DATO_2_IBUF_0
    );
  DATO_3_IBUF : X_BUF
    generic map(
      LOC => "PAD226",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO_3_IBUF_123,
      I => DATO(3)
    );
  ProtoComp6_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD226",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_3_IBUF_123,
      O => DATO_3_IBUF_0
    );
  DATO_4_IBUF : X_BUF
    generic map(
      LOC => "PAD227",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO_4_IBUF_126,
      I => DATO(4)
    );
  ProtoComp6_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD227",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_4_IBUF_126,
      O => DATO_4_IBUF_0
    );
  ADDR_OUT_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD231"
    )
    port map (
      I => NlwBufferSignal_ADDR_OUT_0_OBUF_I,
      O => ADDR_OUT(0)
    );
  DATO_5_IBUF : X_BUF
    generic map(
      LOC => "PAD228",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO_5_IBUF_131,
      I => DATO(5)
    );
  ProtoComp6_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD228",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_5_IBUF_131,
      O => DATO_5_IBUF_0
    );
  ADDR_OUT_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD232"
    )
    port map (
      I => NlwBufferSignal_ADDR_OUT_1_OBUF_I,
      O => ADDR_OUT(1)
    );
  DATO_6_IBUF : X_BUF
    generic map(
      LOC => "PAD229",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO_6_IBUF_136,
      I => DATO(6)
    );
  ProtoComp6_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD229",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_6_IBUF_136,
      O => DATO_6_IBUF_0
    );
  DIR_VLD_IBUF : X_BUF
    generic map(
      LOC => "PAD220",
      PATHPULSE => 202 ps
    )
    port map (
      O => DIR_VLD_IBUF_139,
      I => DIR_VLD
    );
  ProtoComp6_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD220",
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_VLD_IBUF_139,
      O => DIR_VLD_IBUF_0
    );
  ADDR_OUT_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD251"
    )
    port map (
      I => NlwBufferSignal_ADDR_OUT_2_OBUF_I,
      O => ADDR_OUT(2)
    );
  DATO_7_IBUF : X_BUF
    generic map(
      LOC => "PAD230",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO_7_IBUF_144,
      I => DATO(7)
    );
  ProtoComp6_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD230",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_7_IBUF_144,
      O => DATO_7_IBUF_0
    );
  ADDR_OUT_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD252"
    )
    port map (
      I => NlwBufferSignal_ADDR_OUT_3_OBUF_I,
      O => ADDR_OUT(3)
    );
  ADDR_OUT_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD253"
    )
    port map (
      I => NlwBufferSignal_ADDR_OUT_4_OBUF_I,
      O => ADDR_OUT(4)
    );
  ADDR_OUT_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD254"
    )
    port map (
      I => NlwBufferSignal_ADDR_OUT_5_OBUF_I,
      O => ADDR_OUT(5)
    );
  ADDR_OUT_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD257"
    )
    port map (
      I => NlwBufferSignal_ADDR_OUT_6_OBUF_I,
      O => ADDR_OUT(6)
    );
  ADDR_OUT_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD258"
    )
    port map (
      I => NlwBufferSignal_ADDR_OUT_7_OBUF_I,
      O => ADDR_OUT(7)
    );
  DIR_0_IBUF : X_BUF
    generic map(
      LOC => "PAD210",
      PATHPULSE => 202 ps
    )
    port map (
      O => DIR_0_IBUF_157,
      I => DIR(0)
    );
  ProtoComp6_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD210",
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_0_IBUF_157,
      O => DIR_0_IBUF_0
    );
  DIR_1_IBUF : X_BUF
    generic map(
      LOC => "PAD211",
      PATHPULSE => 202 ps
    )
    port map (
      O => DIR_1_IBUF_160,
      I => DIR(1)
    );
  ProtoComp6_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD211",
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_1_IBUF_160,
      O => DIR_1_IBUF_0
    );
  DIR_2_IBUF : X_BUF
    generic map(
      LOC => "PAD212",
      PATHPULSE => 202 ps
    )
    port map (
      O => DIR_2_IBUF_163,
      I => DIR(2)
    );
  ProtoComp6_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD212",
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_2_IBUF_163,
      O => DIR_2_IBUF_0
    );
  DATO_VLD_IBUF : X_BUF
    generic map(
      LOC => "PAD209",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO_VLD_IBUF_166,
      I => DATO_VLD
    );
  ProtoComp6_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD209",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_VLD_IBUF_166,
      O => DATO_VLD_IBUF_0
    );
  DIR_3_IBUF : X_BUF
    generic map(
      LOC => "PAD213",
      PATHPULSE => 202 ps
    )
    port map (
      O => DIR_3_IBUF_169,
      I => DIR(3)
    );
  ProtoComp6_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD213",
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_3_IBUF_169,
      O => DIR_3_IBUF_0
    );
  DIR_4_IBUF : X_BUF
    generic map(
      LOC => "PAD214",
      PATHPULSE => 202 ps
    )
    port map (
      O => DIR_4_IBUF_172,
      I => DIR(4)
    );
  ProtoComp6_IMUX_14 : X_BUF
    generic map(
      LOC => "PAD214",
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_4_IBUF_172,
      O => DIR_4_IBUF_0
    );
  DIR_5_IBUF : X_BUF
    generic map(
      LOC => "PAD215",
      PATHPULSE => 202 ps
    )
    port map (
      O => DIR_5_IBUF_175,
      I => DIR(5)
    );
  ProtoComp6_IMUX_15 : X_BUF
    generic map(
      LOC => "PAD215",
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_5_IBUF_175,
      O => DIR_5_IBUF_0
    );
  DIR_6_IBUF : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      O => DIR_6_IBUF_178,
      I => DIR(6)
    );
  ProtoComp6_IMUX_16 : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_6_IBUF_178,
      O => DIR_6_IBUF_0
    );
  DIR_7_IBUF : X_BUF
    generic map(
      LOC => "PAD219",
      PATHPULSE => 202 ps
    )
    port map (
      O => DIR_7_IBUF_181,
      I => DIR(7)
    );
  ProtoComp6_IMUX_17 : X_BUF
    generic map(
      LOC => "PAD219",
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_7_IBUF_181,
      O => DIR_7_IBUF_0
    );
  RST_IBUF : X_BUF
    generic map(
      LOC => "PAD221",
      PATHPULSE => 202 ps
    )
    port map (
      O => RST_IBUF_184,
      I => RST
    );
  ProtoComp6_IMUX_18 : X_BUF
    generic map(
      LOC => "PAD221",
      PATHPULSE => 202 ps
    )
    port map (
      I => RST_IBUF_184,
      O => RST_IBUF_0
    );
  DATO_OK_OBUF : X_OBUF
    generic map(
      LOC => "PAD222"
    )
    port map (
      I => NlwBufferSignal_DATO_OK_OBUF_I,
      O => DATO_OK
    );
  CLK_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD314",
      PATHPULSE => 202 ps
    )
    port map (
      O => CLK_BUFGP_IBUFG_189,
      I => CLK
    );
  ProtoComp6_IMUX_19 : X_BUF
    generic map(
      LOC => "PAD314",
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP_IBUFG_189,
      O => CLK_BUFGP_IBUFG_0
    );
  CLK_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => NlwBufferSignal_CLK_BUFGP_BUFG_IN,
      O => CLK_BUFGP
    );
  Mcount_prescalerCounter_xor_6_11 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y11"
    )
    port map (
      IA => N5,
      IB => N6,
      O => Mcount_prescalerCounter6,
      SEL => prescalerCounter(4)
    );
  Mcount_prescalerCounter_xor_6_11_F : X_LUT6
    generic map(
      LOC => "SLICE_X14Y11",
      INIT => X"CCCCCCCCCCCCCC8C"
    )
    port map (
      ADR1 => prescalerCounter(6),
      ADR2 => prescalerCounter(2),
      ADR3 => prescalerCounter(0),
      ADR5 => prescalerCounter(5),
      ADR0 => prescalerCounter(3),
      ADR4 => prescalerCounter(1),
      O => N5
    );
  prescalerCounter_6 : X_FF
    generic map(
      LOC => "SLICE_X14Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prescalerCounter_6_CLK,
      I => Mcount_prescalerCounter6,
      O => prescalerCounter(6),
      RST => RST_IBUF_0,
      SET => GND
    );
  Mcount_prescalerCounter_xor_6_11_G : X_LUT6
    generic map(
      LOC => "SLICE_X14Y11",
      INIT => X"7F80FF00FF00FF00"
    )
    port map (
      ADR5 => prescalerCounter(3),
      ADR1 => prescalerCounter(0),
      ADR2 => prescalerCounter(2),
      ADR3 => prescalerCounter(6),
      ADR0 => prescalerCounter(1),
      ADR4 => prescalerCounter(5),
      O => N6
    );
  prescalerCounter_6_dato_ok_trigger_AND_2_o3 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y6",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR1 => cnt(2),
      ADR2 => cnt(3),
      ADR0 => cnt(0),
      ADR3 => cnt(1),
      ADR5 => cnt(14),
      ADR4 => cnt(15),
      O => prescalerCounter_6_dato_ok_trigger_AND_2_o4_422
    );
  prescalerCounter_6_dato_ok_trigger_AND_2_o2 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y7",
      INIT => X"FFFFFFFFFFFCFFFC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => cnt(6),
      ADR1 => cnt(7),
      ADR5 => cnt(4),
      ADR2 => cnt(5),
      O => prescalerCounter_6_dato_ok_trigger_AND_2_o3_421
    );
  prescalerCounter_6_dato_ok_trigger_AND_2_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y8",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR3 => cnt(12),
      ADR0 => cnt(13),
      ADR1 => cnt(10),
      ADR2 => cnt(11),
      ADR5 => cnt(8),
      ADR4 => cnt(9),
      O => prescalerCounter_6_dato_ok_trigger_AND_2_o1_423
    );
  prescalerCounter_6_dato_ok_trigger_AND_2_o4 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y11",
      INIT => X"000000000000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => prescalerCounter(6),
      ADR4 => prescalerCounter(2),
      O => prescalerCounter_6_dato_ok_trigger_AND_2_o5_426
    );
  DATO_OK_174 : X_FF
    generic map(
      LOC => "SLICE_X15Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DATO_OK_CLK,
      I => prescalerCounter_6_dato_ok_trigger_AND_2_o,
      O => DATO_OK_OBUF_418,
      RST => RST_IBUF_0,
      SET => GND
    );
  prescalerCounter_6_dato_ok_trigger_AND_2_o5 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y11",
      INIT => X"8888000088800000"
    )
    port map (
      ADR1 => prescalerCounter(0),
      ADR3 => prescalerCounter_6_dato_ok_trigger_AND_2_o3_421,
      ADR4 => prescalerCounter_6_dato_ok_trigger_AND_2_o5_426,
      ADR5 => prescalerCounter_6_dato_ok_trigger_AND_2_o4_422,
      ADR2 => prescalerCounter_6_dato_ok_trigger_AND_2_o1_423,
      ADR0 => prescalerCounter_6_dato_ok_trigger_AND_2_o2_365,
      O => prescalerCounter_6_dato_ok_trigger_AND_2_o
    );
  prescalerCounter_6_dato_ok_trigger_AND_2_o21 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y11",
      INIT => X"000000000000000F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => prescalerCounter(4),
      ADR3 => prescalerCounter(5),
      ADR4 => prescalerCounter(3),
      ADR5 => prescalerCounter(1),
      O => prescalerCounter_6_dato_ok_trigger_AND_2_o2_365
    );
  CE : X_FF
    generic map(
      LOC => "SLICE_X15Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_CE_CLK,
      I => prescalerCounter_6_PWR_4_o_equal_2_o,
      O => CE_378,
      RST => RST_IBUF_0,
      SET => GND
    );
  prescalerCounter_6_PWR_4_o_equal_2_o_6_1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y11",
      INIT => X"0F00000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => prescalerCounter(0),
      ADR3 => prescalerCounter(2),
      ADR5 => prescalerCounter(6),
      ADR4 => prescalerCounter_6_dato_ok_trigger_AND_2_o2_365,
      O => prescalerCounter_6_PWR_4_o_equal_2_o
    );
  valor_freq_7 : X_FF
    generic map(
      LOC => "SLICE_X16Y6",
      INIT => '0'
    )
    port map (
      CE => Q_n0053_inv,
      CLK => NlwBufferSignal_valor_freq_7_CLK,
      I => NlwBufferSignal_valor_freq_7_IN,
      O => valor_freq(7),
      RST => RST_IBUF_0,
      SET => GND
    );
  valor_freq_6 : X_FF
    generic map(
      LOC => "SLICE_X16Y6",
      INIT => '0'
    )
    port map (
      CE => Q_n0053_inv,
      CLK => NlwBufferSignal_valor_freq_6_CLK,
      I => NlwBufferSignal_valor_freq_6_IN,
      O => valor_freq(6),
      RST => RST_IBUF_0,
      SET => GND
    );
  valor_freq_5 : X_FF
    generic map(
      LOC => "SLICE_X16Y6",
      INIT => '0'
    )
    port map (
      CE => Q_n0053_inv,
      CLK => NlwBufferSignal_valor_freq_5_CLK,
      I => NlwBufferSignal_valor_freq_5_IN,
      O => valor_freq(5),
      RST => RST_IBUF_0,
      SET => GND
    );
  valor_freq_4 : X_FF
    generic map(
      LOC => "SLICE_X16Y6",
      INIT => '0'
    )
    port map (
      CE => Q_n0053_inv,
      CLK => NlwBufferSignal_valor_freq_4_CLK,
      I => NlwBufferSignal_valor_freq_4_IN,
      O => valor_freq(4),
      RST => RST_IBUF_0,
      SET => GND
    );
  prescalerCounter_5_prescalerCounter_5_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => prescalerCounter_4_pack_16,
      O => prescalerCounter(4)
    );
  prescalerCounter_5_prescalerCounter_5_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => prescalerCounter_2_pack_14,
      O => prescalerCounter(2)
    );
  prescalerCounter_5 : X_FF
    generic map(
      LOC => "SLICE_X16Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prescalerCounter_5_CLK,
      I => Mcount_prescalerCounter5,
      O => prescalerCounter(5),
      RST => RST_IBUF_0,
      SET => GND
    );
  Mcount_prescalerCounter_xor_5_11 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y11",
      INIT => X"7FFFFFFF80000000"
    )
    port map (
      ADR2 => prescalerCounter(4),
      ADR1 => prescalerCounter(3),
      ADR4 => prescalerCounter(0),
      ADR5 => prescalerCounter(5),
      ADR0 => prescalerCounter(2),
      ADR3 => prescalerCounter(1),
      O => Mcount_prescalerCounter5
    );
  prescalerCounter_3 : X_FF
    generic map(
      LOC => "SLICE_X16Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prescalerCounter_3_CLK,
      I => Mcount_prescalerCounter3,
      O => prescalerCounter(3),
      RST => RST_IBUF_0,
      SET => GND
    );
  Mcount_prescalerCounter_xor_3_11 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y11",
      INIT => X"3FFFC0003FFFC000"
    )
    port map (
      ADR0 => '1',
      ADR2 => prescalerCounter(0),
      ADR3 => prescalerCounter(2),
      ADR4 => prescalerCounter(3),
      ADR1 => prescalerCounter(1),
      ADR5 => '1',
      O => Mcount_prescalerCounter3
    );
  Mcount_prescalerCounter_xor_4_11 : X_LUT5
    generic map(
      LOC => "SLICE_X16Y11",
      INIT => X"6AAAAAAA"
    )
    port map (
      ADR0 => prescalerCounter(4),
      ADR2 => prescalerCounter(0),
      ADR3 => prescalerCounter(2),
      ADR4 => prescalerCounter(3),
      ADR1 => prescalerCounter(1),
      O => Mcount_prescalerCounter4
    );
  prescalerCounter_4 : X_FF
    generic map(
      LOC => "SLICE_X16Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prescalerCounter_4_CLK,
      I => Mcount_prescalerCounter4,
      O => prescalerCounter_4_pack_16,
      RST => RST_IBUF_0,
      SET => GND
    );
  prescalerCounter_1 : X_FF
    generic map(
      LOC => "SLICE_X16Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prescalerCounter_1_CLK,
      I => Mcount_prescalerCounter1,
      O => prescalerCounter(1),
      RST => RST_IBUF_0,
      SET => GND
    );
  Mcount_prescalerCounter_xor_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y11",
      INIT => X"3333CCCC3333CCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => prescalerCounter(1),
      ADR1 => prescalerCounter(0),
      ADR5 => '1',
      O => Mcount_prescalerCounter1
    );
  Mcount_prescalerCounter_xor_2_11 : X_LUT5
    generic map(
      LOC => "SLICE_X16Y11",
      INIT => X"46668AAA"
    )
    port map (
      ADR2 => prescalerCounter(6),
      ADR0 => prescalerCounter(2),
      ADR3 => prescalerCounter_6_dato_ok_trigger_AND_2_o2_365,
      ADR4 => prescalerCounter(1),
      ADR1 => prescalerCounter(0),
      O => Mcount_prescalerCounter2
    );
  prescalerCounter_2 : X_FF
    generic map(
      LOC => "SLICE_X16Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prescalerCounter_2_CLK,
      I => Mcount_prescalerCounter2,
      O => prescalerCounter_2_pack_14,
      RST => RST_IBUF_0,
      SET => GND
    );
  prescalerCounter_0 : X_FF
    generic map(
      LOC => "SLICE_X16Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prescalerCounter_0_CLK,
      I => Mcount_prescalerCounter,
      O => prescalerCounter(0),
      RST => RST_IBUF_0,
      SET => GND
    );
  Mcount_prescalerCounter_xor_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y11",
      INIT => X"000000000FFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => prescalerCounter(2),
      ADR5 => prescalerCounter(0),
      ADR4 => prescalerCounter(6),
      ADR3 => prescalerCounter_6_dato_ok_trigger_AND_2_o2_365,
      O => Mcount_prescalerCounter
    );
  valor_freq_3 : X_FF
    generic map(
      LOC => "SLICE_X18Y6",
      INIT => '0'
    )
    port map (
      CE => Q_n0053_inv,
      CLK => NlwBufferSignal_valor_freq_3_CLK,
      I => NlwBufferSignal_valor_freq_3_IN,
      O => valor_freq(3),
      RST => RST_IBUF_0,
      SET => GND
    );
  valor_freq_2 : X_FF
    generic map(
      LOC => "SLICE_X18Y6",
      INIT => '0'
    )
    port map (
      CE => Q_n0053_inv,
      CLK => NlwBufferSignal_valor_freq_2_CLK,
      I => NlwBufferSignal_valor_freq_2_IN,
      O => valor_freq(2),
      RST => RST_IBUF_0,
      SET => GND
    );
  valor_freq_1 : X_FF
    generic map(
      LOC => "SLICE_X18Y6",
      INIT => '0'
    )
    port map (
      CE => Q_n0053_inv,
      CLK => NlwBufferSignal_valor_freq_1_CLK,
      I => NlwBufferSignal_valor_freq_1_IN,
      O => valor_freq(1),
      RST => RST_IBUF_0,
      SET => GND
    );
  valor_freq_0 : X_FF
    generic map(
      LOC => "SLICE_X18Y6",
      INIT => '0'
    )
    port map (
      CE => Q_n0053_inv,
      CLK => NlwBufferSignal_valor_freq_0_CLK,
      I => NlwBufferSignal_valor_freq_0_IN,
      O => valor_freq(0),
      RST => RST_IBUF_0,
      SET => GND
    );
  Q_n0053_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y1",
      INIT => X"8888888888888888"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => DATO_VLD_IBUF_0,
      ADR0 => state_424,
      O => Q_n0053_inv
    );
  Q_n0050_inv_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y1",
      INIT => X"FFFFFEFFFFFFFFFF"
    )
    port map (
      ADR5 => DIR_5_IBUF_0,
      ADR4 => DIR_0_IBUF_0,
      ADR1 => DIR_3_IBUF_0,
      ADR2 => DIR_2_IBUF_0,
      ADR0 => DIR_1_IBUF_0,
      ADR3 => DIR_4_IBUF_0,
      O => N3
    );
  state : X_FF
    generic map(
      LOC => "SLICE_X25Y1",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_state_CLK,
      I => state_rstpot_326,
      O => state_424,
      RST => RST_IBUF_0,
      SET => GND
    );
  state_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X25Y1",
      INIT => X"333300003333A000"
    )
    port map (
      ADR5 => N3,
      ADR3 => DIR_6_IBUF_0,
      ADR0 => DIR_VLD_IBUF_0,
      ADR4 => state_424,
      ADR2 => DIR_7_IBUF_0,
      ADR1 => DATO_VLD_IBUF_0,
      O => state_rstpot_326
    );
  NlwBufferBlock_cnt_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cnt_3_CLK
    );
  NlwBufferBlock_cnt_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cnt_2_CLK
    );
  NlwBufferBlock_Maccum_cnt_cy_3_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => cnt(0),
      O => NlwBufferSignal_Maccum_cnt_cy_3_DI_0_Q
    );
  NlwBufferBlock_Maccum_cnt_cy_3_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => cnt(1),
      O => NlwBufferSignal_Maccum_cnt_cy_3_DI_1_Q
    );
  NlwBufferBlock_Maccum_cnt_cy_3_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => cnt(2),
      O => NlwBufferSignal_Maccum_cnt_cy_3_DI_2_Q
    );
  NlwBufferBlock_Maccum_cnt_cy_3_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => cnt(3),
      O => NlwBufferSignal_Maccum_cnt_cy_3_DI_3_Q
    );
  NlwBufferBlock_cnt_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cnt_1_CLK
    );
  NlwBufferBlock_cnt_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cnt_0_CLK
    );
  NlwBufferBlock_cnt_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cnt_7_CLK
    );
  NlwBufferBlock_cnt_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cnt_6_CLK
    );
  NlwBufferBlock_Maccum_cnt_cy_7_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => cnt(4),
      O => NlwBufferSignal_Maccum_cnt_cy_7_DI_0_Q
    );
  NlwBufferBlock_Maccum_cnt_cy_7_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => cnt(5),
      O => NlwBufferSignal_Maccum_cnt_cy_7_DI_1_Q
    );
  NlwBufferBlock_Maccum_cnt_cy_7_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => cnt(6),
      O => NlwBufferSignal_Maccum_cnt_cy_7_DI_2_Q
    );
  NlwBufferBlock_Maccum_cnt_cy_7_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => cnt(7),
      O => NlwBufferSignal_Maccum_cnt_cy_7_DI_3_Q
    );
  NlwBufferBlock_cnt_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cnt_5_CLK
    );
  NlwBufferBlock_cnt_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cnt_4_CLK
    );
  NlwBufferBlock_cnt_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cnt_11_CLK
    );
  NlwBufferBlock_cnt_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cnt_10_CLK
    );
  NlwBufferBlock_cnt_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cnt_9_CLK
    );
  NlwBufferBlock_cnt_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cnt_8_CLK
    );
  NlwBufferBlock_cnt_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cnt_15_CLK
    );
  NlwBufferBlock_cnt_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cnt_14_CLK
    );
  NlwBufferBlock_cnt_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cnt_13_CLK
    );
  NlwBufferBlock_cnt_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cnt_12_CLK
    );
  NlwBufferBlock_ADDR_OUT_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => cnt(8),
      O => NlwBufferSignal_ADDR_OUT_0_OBUF_I
    );
  NlwBufferBlock_ADDR_OUT_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => cnt(9),
      O => NlwBufferSignal_ADDR_OUT_1_OBUF_I
    );
  NlwBufferBlock_ADDR_OUT_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => cnt(10),
      O => NlwBufferSignal_ADDR_OUT_2_OBUF_I
    );
  NlwBufferBlock_ADDR_OUT_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => cnt(11),
      O => NlwBufferSignal_ADDR_OUT_3_OBUF_I
    );
  NlwBufferBlock_ADDR_OUT_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => cnt(12),
      O => NlwBufferSignal_ADDR_OUT_4_OBUF_I
    );
  NlwBufferBlock_ADDR_OUT_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => cnt(13),
      O => NlwBufferSignal_ADDR_OUT_5_OBUF_I
    );
  NlwBufferBlock_ADDR_OUT_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => cnt(14),
      O => NlwBufferSignal_ADDR_OUT_6_OBUF_I
    );
  NlwBufferBlock_ADDR_OUT_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => cnt(15),
      O => NlwBufferSignal_ADDR_OUT_7_OBUF_I
    );
  NlwBufferBlock_DATO_OK_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_OK_OBUF_418,
      O => NlwBufferSignal_DATO_OK_OBUF_I
    );
  NlwBufferBlock_CLK_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP_IBUFG_0,
      O => NlwBufferSignal_CLK_BUFGP_BUFG_IN
    );
  NlwBufferBlock_prescalerCounter_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_prescalerCounter_6_CLK
    );
  NlwBufferBlock_DATO_OK_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DATO_OK_CLK
    );
  NlwBufferBlock_CE_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_CE_CLK
    );
  NlwBufferBlock_valor_freq_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_valor_freq_7_CLK
    );
  NlwBufferBlock_valor_freq_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_7_IBUF_0,
      O => NlwBufferSignal_valor_freq_7_IN
    );
  NlwBufferBlock_valor_freq_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_valor_freq_6_CLK
    );
  NlwBufferBlock_valor_freq_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_6_IBUF_0,
      O => NlwBufferSignal_valor_freq_6_IN
    );
  NlwBufferBlock_valor_freq_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_valor_freq_5_CLK
    );
  NlwBufferBlock_valor_freq_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_5_IBUF_0,
      O => NlwBufferSignal_valor_freq_5_IN
    );
  NlwBufferBlock_valor_freq_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_valor_freq_4_CLK
    );
  NlwBufferBlock_valor_freq_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_4_IBUF_0,
      O => NlwBufferSignal_valor_freq_4_IN
    );
  NlwBufferBlock_prescalerCounter_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_prescalerCounter_5_CLK
    );
  NlwBufferBlock_prescalerCounter_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_prescalerCounter_3_CLK
    );
  NlwBufferBlock_prescalerCounter_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_prescalerCounter_4_CLK
    );
  NlwBufferBlock_prescalerCounter_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_prescalerCounter_1_CLK
    );
  NlwBufferBlock_prescalerCounter_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_prescalerCounter_2_CLK
    );
  NlwBufferBlock_prescalerCounter_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_prescalerCounter_0_CLK
    );
  NlwBufferBlock_valor_freq_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_valor_freq_3_CLK
    );
  NlwBufferBlock_valor_freq_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_3_IBUF_0,
      O => NlwBufferSignal_valor_freq_3_IN
    );
  NlwBufferBlock_valor_freq_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_valor_freq_2_CLK
    );
  NlwBufferBlock_valor_freq_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_2_IBUF_0,
      O => NlwBufferSignal_valor_freq_2_IN
    );
  NlwBufferBlock_valor_freq_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_valor_freq_1_CLK
    );
  NlwBufferBlock_valor_freq_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_1_IBUF_0,
      O => NlwBufferSignal_valor_freq_1_IN
    );
  NlwBufferBlock_valor_freq_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_valor_freq_0_CLK
    );
  NlwBufferBlock_valor_freq_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_0_IBUF_0,
      O => NlwBufferSignal_valor_freq_0_IN
    );
  NlwBufferBlock_state_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_state_CLK
    );
  NlwBlock_gen_dir_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_gen_dir_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;


--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: cnt_dpram_timesim.vhd
-- /___/   /\     Timestamp: Sun Dec 07 02:54:19 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf cnt_dpram.pcf -rpw 100 -tpw 0 -ar Structure -tm cnt_dpram -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim cnt_dpram.ncd cnt_dpram_timesim.vhd 
-- Device	: 6slx45csg324-3 (PRODUCTION 1.23 2013-10-13)
-- Input file	: cnt_dpram.ncd
-- Output file	: C:\Users\christopher\Dropbox\workspace\modelado14\cnt_dpram\netgen\par\cnt_dpram_timesim.vhd
-- # of Entities	: 1
-- Design Name	: cnt_dpram
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

entity cnt_dpram is
  port (
    CLK : in STD_LOGIC := 'X'; 
    RST : in STD_LOGIC := 'X'; 
    DIR_VLD : in STD_LOGIC := 'X'; 
    DATO_VLD : in STD_LOGIC := 'X'; 
    WE_DP1 : out STD_LOGIC; 
    WE_DP2 : out STD_LOGIC; 
    DIR : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    DATO : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    ADDRESS : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    DATA : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end cnt_dpram;

architecture Structure of cnt_dpram is
  signal Q_n0121_inv : STD_LOGIC; 
  signal CLK_BUFGP : STD_LOGIC; 
  signal CEcounter_353 : STD_LOGIC; 
  signal RST_IBUF_0 : STD_LOGIC; 
  signal DIR_0_IBUF_0 : STD_LOGIC; 
  signal state_FSM_FFd3_In2_360 : STD_LOGIC; 
  signal DIR_1_IBUF_0 : STD_LOGIC; 
  signal WE_DP2_OBUF_362 : STD_LOGIC; 
  signal state_FSM_FFd1_363 : STD_LOGIC; 
  signal Q_n0117_inv : STD_LOGIC; 
  signal state_FSM_FFd3_365 : STD_LOGIC; 
  signal state_FSM_FFd2_366 : STD_LOGIC; 
  signal state_FSM_FFd3_In1_367 : STD_LOGIC; 
  signal DIR_VLD_IBUF_0 : STD_LOGIC; 
  signal clearCounter_369 : STD_LOGIC; 
  signal DATO_VLD_IBUF_0 : STD_LOGIC; 
  signal Mmux_counter_7_counter_7_mux_5_OUT41_373 : STD_LOGIC; 
  signal DATA_0_OBUF_0 : STD_LOGIC; 
  signal DATA_1_OBUF_0 : STD_LOGIC; 
  signal DATA_2_OBUF_0 : STD_LOGIC; 
  signal DATA_3_OBUF_0 : STD_LOGIC; 
  signal DATA_4_OBUF_0 : STD_LOGIC; 
  signal DATA_5_OBUF_0 : STD_LOGIC; 
  signal DATA_6_OBUF_0 : STD_LOGIC; 
  signal DATA_7_OBUF_0 : STD_LOGIC; 
  signal WE_DP1_OBUF_382 : STD_LOGIC; 
  signal DIR_2_IBUF_0 : STD_LOGIC; 
  signal DIR_3_IBUF_0 : STD_LOGIC; 
  signal DIR_4_IBUF_0 : STD_LOGIC; 
  signal DIR_5_IBUF_0 : STD_LOGIC; 
  signal DIR_6_IBUF_0 : STD_LOGIC; 
  signal DIR_7_IBUF_0 : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal state_FSM_FFd3_In4 : STD_LOGIC; 
  signal state_FSM_FFd3_In6 : STD_LOGIC; 
  signal state_FSM_FFd3_In9_408 : STD_LOGIC; 
  signal state_FSM_FFd3_In3_410 : STD_LOGIC; 
  signal state_FSM_FFd3_In8_411 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal DATA_0_OBUF_13 : STD_LOGIC; 
  signal DATA_1_OBUF_18 : STD_LOGIC; 
  signal DATA_2_OBUF_23 : STD_LOGIC; 
  signal DATA_3_OBUF_26 : STD_LOGIC; 
  signal DATA_4_OBUF_29 : STD_LOGIC; 
  signal DATA_5_OBUF_34 : STD_LOGIC; 
  signal DATA_6_OBUF_37 : STD_LOGIC; 
  signal DIR_VLD_IBUF_40 : STD_LOGIC; 
  signal DATA_7_OBUF_43 : STD_LOGIC; 
  signal DIR_0_IBUF_52 : STD_LOGIC; 
  signal DIR_1_IBUF_57 : STD_LOGIC; 
  signal DIR_2_IBUF_62 : STD_LOGIC; 
  signal DATO_VLD_IBUF_67 : STD_LOGIC; 
  signal DIR_3_IBUF_70 : STD_LOGIC; 
  signal DIR_4_IBUF_75 : STD_LOGIC; 
  signal DIR_5_IBUF_80 : STD_LOGIC; 
  signal DIR_6_IBUF_85 : STD_LOGIC; 
  signal DIR_7_IBUF_88 : STD_LOGIC; 
  signal RST_IBUF_91 : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_94 : STD_LOGIC; 
  signal state_FSM_FFd3_In : STD_LOGIC; 
  signal state_FSM_FFd2_In : STD_LOGIC; 
  signal state_FSM_FFd3_In3_pack_3 : STD_LOGIC; 
  signal WE_DP1_rstpot_173 : STD_LOGIC; 
  signal WE_DP2_rstpot_205 : STD_LOGIC; 
  signal CEcounter_pack_13 : STD_LOGIC; 
  signal CEcounter_rstpot_198 : STD_LOGIC; 
  signal clearCounter_pack_10 : STD_LOGIC; 
  signal clearCounter_rstpot_177 : STD_LOGIC; 
  signal counter_7_counter_7_mux_5_OUT_6_Q : STD_LOGIC; 
  signal counter_7_counter_7_mux_5_OUT_7_Q : STD_LOGIC; 
  signal counter_7_counter_7_mux_5_OUT_0_Q : STD_LOGIC; 
  signal counter_0_pack_11 : STD_LOGIC; 
  signal counter_7_counter_7_mux_5_OUT_5_Q : STD_LOGIC; 
  signal counter_7_counter_7_mux_5_OUT_4_Q : STD_LOGIC; 
  signal counter_7_counter_7_mux_5_OUT_1_Q : STD_LOGIC; 
  signal counter_1_pack_17 : STD_LOGIC; 
  signal counter_3_pack_13 : STD_LOGIC; 
  signal counter_7_counter_7_mux_5_OUT_3_Q : STD_LOGIC; 
  signal counter_7_counter_7_mux_5_OUT_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_DATA_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_WE_DP1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_WE_DP2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ADDRESS_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ADDRESS_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ADDRESS_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ADDRESS_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ADDRESS_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ADDRESS_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ADDRESS_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ADDRESS_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CLK_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_dirActual_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_dirActual_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_dirActual_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_dirActual_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_dirActual_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_dirActual_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_dirActual_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_dirActual_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_state_FSM_FFd3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_state_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_state_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_state_FSM_FFd1_IN : STD_LOGIC; 
  signal NlwBufferSignal_dirPrev_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_dirPrev_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_dirPrev_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_dirPrev_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_dirPrev_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_dirPrev_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_dirPrev_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_dirPrev_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_WE_DP1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_CEcounter_CLK : STD_LOGIC; 
  signal NlwBufferSignal_WE_DP2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_clearCounter_CLK : STD_LOGIC; 
  signal NlwBufferSignal_dirPrev_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_dirPrev_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_dirPrev_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_dirPrev_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_dirPrev_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_dirPrev_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_dirPrev_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_dirPrev_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_dirActual_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_dirActual_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_dirActual_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_dirActual_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_dirActual_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_dirActual_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_dirActual_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_dirActual_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_counter_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_3_CLK : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal counter : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal dirPrev : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal dirActual : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  DATA_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD232"
    )
    port map (
      I => NlwBufferSignal_DATA_0_OBUF_I,
      O => DATA(0)
    );
  DATA_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD251"
    )
    port map (
      I => NlwBufferSignal_DATA_1_OBUF_I,
      O => DATA(1)
    );
  DATA_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD252"
    )
    port map (
      I => NlwBufferSignal_DATA_2_OBUF_I,
      O => DATA(2)
    );
  DATA_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD253"
    )
    port map (
      I => NlwBufferSignal_DATA_3_OBUF_I,
      O => DATA(3)
    );
  DATA_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD254"
    )
    port map (
      I => NlwBufferSignal_DATA_4_OBUF_I,
      O => DATA(4)
    );
  DATA_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD255"
    )
    port map (
      I => NlwBufferSignal_DATA_5_OBUF_I,
      O => DATA(5)
    );
  DATO_0_IBUF : X_BUF
    generic map(
      LOC => "PAD256",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATA_0_OBUF_13,
      I => DATO(0)
    );
  ProtoComp7_IMUX : X_BUF
    generic map(
      LOC => "PAD256",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATA_0_OBUF_13,
      O => DATA_0_OBUF_0
    );
  DATA_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD258"
    )
    port map (
      I => NlwBufferSignal_DATA_6_OBUF_I,
      O => DATA(6)
    );
  DATO_1_IBUF : X_BUF
    generic map(
      LOC => "PAD259",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATA_1_OBUF_18,
      I => DATO(1)
    );
  ProtoComp7_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD259",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATA_1_OBUF_18,
      O => DATA_1_OBUF_0
    );
  DATA_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD257"
    )
    port map (
      I => NlwBufferSignal_DATA_7_OBUF_I,
      O => DATA(7)
    );
  DATO_2_IBUF : X_BUF
    generic map(
      LOC => "PAD260",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATA_2_OBUF_23,
      I => DATO(2)
    );
  ProtoComp7_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD260",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATA_2_OBUF_23,
      O => DATA_2_OBUF_0
    );
  DATO_3_IBUF : X_BUF
    generic map(
      LOC => "PAD261",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATA_3_OBUF_26,
      I => DATO(3)
    );
  ProtoComp7_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD261",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATA_3_OBUF_26,
      O => DATA_3_OBUF_0
    );
  DATO_4_IBUF : X_BUF
    generic map(
      LOC => "PAD262",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATA_4_OBUF_29,
      I => DATO(4)
    );
  ProtoComp7_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD262",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATA_4_OBUF_29,
      O => DATA_4_OBUF_0
    );
  WE_DP1_OBUF : X_OBUF
    generic map(
      LOC => "PAD219"
    )
    port map (
      I => NlwBufferSignal_WE_DP1_OBUF_I,
      O => WE_DP1
    );
  DATO_5_IBUF : X_BUF
    generic map(
      LOC => "PAD291",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATA_5_OBUF_34,
      I => DATO(5)
    );
  ProtoComp7_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD291",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATA_5_OBUF_34,
      O => DATA_5_OBUF_0
    );
  DATO_6_IBUF : X_BUF
    generic map(
      LOC => "PAD292",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATA_6_OBUF_37,
      I => DATO(6)
    );
  ProtoComp7_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD292",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATA_6_OBUF_37,
      O => DATA_6_OBUF_0
    );
  DIR_VLD_IBUF : X_BUF
    generic map(
      LOC => "PAD220",
      PATHPULSE => 202 ps
    )
    port map (
      O => DIR_VLD_IBUF_40,
      I => DIR_VLD
    );
  ProtoComp7_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD220",
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_VLD_IBUF_40,
      O => DIR_VLD_IBUF_0
    );
  DATO_7_IBUF : X_BUF
    generic map(
      LOC => "PAD293",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATA_7_OBUF_43,
      I => DATO(7)
    );
  ProtoComp7_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD293",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATA_7_OBUF_43,
      O => DATA_7_OBUF_0
    );
  WE_DP2_OBUF : X_OBUF
    generic map(
      LOC => "PAD229"
    )
    port map (
      I => NlwBufferSignal_WE_DP2_OBUF_I,
      O => WE_DP2
    );
  ADDRESS_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD209"
    )
    port map (
      I => NlwBufferSignal_ADDRESS_0_OBUF_I,
      O => ADDRESS(0)
    );
  ADDRESS_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD210"
    )
    port map (
      I => NlwBufferSignal_ADDRESS_1_OBUF_I,
      O => ADDRESS(1)
    );
  DIR_0_IBUF : X_BUF
    generic map(
      LOC => "PAD221",
      PATHPULSE => 202 ps
    )
    port map (
      O => DIR_0_IBUF_52,
      I => DIR(0)
    );
  ProtoComp7_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD221",
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_0_IBUF_52,
      O => DIR_0_IBUF_0
    );
  ADDRESS_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD211"
    )
    port map (
      I => NlwBufferSignal_ADDRESS_2_OBUF_I,
      O => ADDRESS(2)
    );
  DIR_1_IBUF : X_BUF
    generic map(
      LOC => "PAD222",
      PATHPULSE => 202 ps
    )
    port map (
      O => DIR_1_IBUF_57,
      I => DIR(1)
    );
  ProtoComp7_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD222",
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_1_IBUF_57,
      O => DIR_1_IBUF_0
    );
  ADDRESS_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD212"
    )
    port map (
      I => NlwBufferSignal_ADDRESS_3_OBUF_I,
      O => ADDRESS(3)
    );
  DIR_2_IBUF : X_BUF
    generic map(
      LOC => "PAD223",
      PATHPULSE => 202 ps
    )
    port map (
      O => DIR_2_IBUF_62,
      I => DIR(2)
    );
  ProtoComp7_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD223",
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_2_IBUF_62,
      O => DIR_2_IBUF_0
    );
  ADDRESS_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD213"
    )
    port map (
      I => NlwBufferSignal_ADDRESS_4_OBUF_I,
      O => ADDRESS(4)
    );
  DATO_VLD_IBUF : X_BUF
    generic map(
      LOC => "PAD231",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO_VLD_IBUF_67,
      I => DATO_VLD
    );
  ProtoComp7_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD231",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_VLD_IBUF_67,
      O => DATO_VLD_IBUF_0
    );
  DIR_3_IBUF : X_BUF
    generic map(
      LOC => "PAD224",
      PATHPULSE => 202 ps
    )
    port map (
      O => DIR_3_IBUF_70,
      I => DIR(3)
    );
  ProtoComp7_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD224",
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_3_IBUF_70,
      O => DIR_3_IBUF_0
    );
  ADDRESS_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD214"
    )
    port map (
      I => NlwBufferSignal_ADDRESS_5_OBUF_I,
      O => ADDRESS(5)
    );
  DIR_4_IBUF : X_BUF
    generic map(
      LOC => "PAD225",
      PATHPULSE => 202 ps
    )
    port map (
      O => DIR_4_IBUF_75,
      I => DIR(4)
    );
  ProtoComp7_IMUX_14 : X_BUF
    generic map(
      LOC => "PAD225",
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_4_IBUF_75,
      O => DIR_4_IBUF_0
    );
  ADDRESS_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD215"
    )
    port map (
      I => NlwBufferSignal_ADDRESS_6_OBUF_I,
      O => ADDRESS(6)
    );
  DIR_5_IBUF : X_BUF
    generic map(
      LOC => "PAD226",
      PATHPULSE => 202 ps
    )
    port map (
      O => DIR_5_IBUF_80,
      I => DIR(5)
    );
  ProtoComp7_IMUX_15 : X_BUF
    generic map(
      LOC => "PAD226",
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_5_IBUF_80,
      O => DIR_5_IBUF_0
    );
  ADDRESS_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD216"
    )
    port map (
      I => NlwBufferSignal_ADDRESS_7_OBUF_I,
      O => ADDRESS(7)
    );
  DIR_6_IBUF : X_BUF
    generic map(
      LOC => "PAD227",
      PATHPULSE => 202 ps
    )
    port map (
      O => DIR_6_IBUF_85,
      I => DIR(6)
    );
  ProtoComp7_IMUX_16 : X_BUF
    generic map(
      LOC => "PAD227",
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_6_IBUF_85,
      O => DIR_6_IBUF_0
    );
  DIR_7_IBUF : X_BUF
    generic map(
      LOC => "PAD230",
      PATHPULSE => 202 ps
    )
    port map (
      O => DIR_7_IBUF_88,
      I => DIR(7)
    );
  ProtoComp7_IMUX_17 : X_BUF
    generic map(
      LOC => "PAD230",
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_7_IBUF_88,
      O => DIR_7_IBUF_0
    );
  RST_IBUF : X_BUF
    generic map(
      LOC => "PAD228",
      PATHPULSE => 202 ps
    )
    port map (
      O => RST_IBUF_91,
      I => RST
    );
  ProtoComp7_IMUX_18 : X_BUF
    generic map(
      LOC => "PAD228",
      PATHPULSE => 202 ps
    )
    port map (
      I => RST_IBUF_91,
      O => RST_IBUF_0
    );
  CLK_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD314",
      PATHPULSE => 202 ps
    )
    port map (
      O => CLK_BUFGP_IBUFG_94,
      I => CLK
    );
  ProtoComp7_IMUX_19 : X_BUF
    generic map(
      LOC => "PAD314",
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP_IBUFG_94,
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
  dirActual_3 : X_FF
    generic map(
      LOC => "SLICE_X18Y7",
      INIT => '0'
    )
    port map (
      CE => Q_n0117_inv,
      CLK => NlwBufferSignal_dirActual_3_CLK,
      I => NlwBufferSignal_dirActual_3_IN,
      O => dirActual(3),
      RST => RST_IBUF_0,
      SET => GND
    );
  dirActual_2 : X_FF
    generic map(
      LOC => "SLICE_X18Y7",
      INIT => '0'
    )
    port map (
      CE => Q_n0117_inv,
      CLK => NlwBufferSignal_dirActual_2_CLK,
      I => NlwBufferSignal_dirActual_2_IN,
      O => dirActual(2),
      RST => RST_IBUF_0,
      SET => GND
    );
  dirActual_1 : X_FF
    generic map(
      LOC => "SLICE_X18Y7",
      INIT => '0'
    )
    port map (
      CE => Q_n0117_inv,
      CLK => NlwBufferSignal_dirActual_1_CLK,
      I => NlwBufferSignal_dirActual_1_IN,
      O => dirActual(1),
      RST => RST_IBUF_0,
      SET => GND
    );
  state_FSM_FFd3_In5 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y7",
      INIT => X"3B3BFF3B0A0AFF0A"
    )
    port map (
      ADR5 => dirPrev(0),
      ADR1 => dirActual(0),
      ADR0 => dirPrev(1),
      ADR2 => dirActual(1),
      ADR3 => dirActual(7),
      ADR4 => dirPrev(7),
      O => state_FSM_FFd3_In6
    );
  dirActual_0 : X_FF
    generic map(
      LOC => "SLICE_X18Y7",
      INIT => '0'
    )
    port map (
      CE => Q_n0117_inv,
      CLK => NlwBufferSignal_dirActual_0_CLK,
      I => NlwBufferSignal_dirActual_0_IN,
      O => dirActual(0),
      RST => RST_IBUF_0,
      SET => GND
    );
  state_FSM_FFd3_In8 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y7",
      INIT => X"5F0FDFCF5500DDCC"
    )
    port map (
      ADR3 => dirActual(2),
      ADR0 => dirPrev(2),
      ADR5 => dirActual(3),
      ADR2 => dirPrev(3),
      ADR1 => dirActual(1),
      ADR4 => dirPrev(1),
      O => state_FSM_FFd3_In9_408
    );
  state_FSM_FFd3_state_FSM_FFd3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => state_FSM_FFd3_In3_pack_3,
      O => state_FSM_FFd3_In3_410
    );
  state_FSM_FFd3 : X_FF
    generic map(
      LOC => "SLICE_X19Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_state_FSM_FFd3_CLK,
      I => state_FSM_FFd3_In,
      O => state_FSM_FFd3_365,
      RST => RST_IBUF_0,
      SET => GND
    );
  state_FSM_FFd3_In9 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y6",
      INIT => X"EEEEEAEEEEEEEAEA"
    )
    port map (
      ADR3 => dirPrev(0),
      ADR5 => dirActual(0),
      ADR1 => state_FSM_FFd3_In3_410,
      ADR2 => state_FSM_FFd3_In9_408,
      ADR0 => state_FSM_FFd3_In1_367,
      ADR4 => state_FSM_FFd3_In8_411,
      O => state_FSM_FFd3_In
    );
  state_FSM_FFd3_In7 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y6",
      INIT => X"FFFFFF3BFFFFFFFF"
    )
    port map (
      ADR1 => DATO_VLD_IBUF_0,
      ADR2 => dirActual(7),
      ADR0 => dirPrev(7),
      ADR5 => N01,
      ADR4 => state_FSM_FFd3_In4,
      ADR3 => state_FSM_FFd3_In6,
      O => state_FSM_FFd3_In8_411
    );
  state_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X19Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_state_FSM_FFd2_CLK,
      I => state_FSM_FFd2_In,
      O => state_FSM_FFd2_366,
      RST => RST_IBUF_0,
      SET => GND
    );
  state_FSM_FFd2_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y6",
      INIT => X"0000A0A00000A0A0"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => DATO_VLD_IBUF_0,
      ADR4 => state_FSM_FFd2_366,
      ADR2 => state_FSM_FFd3_365,
      ADR5 => '1',
      O => state_FSM_FFd2_In
    );
  state_FSM_FFd3_In2 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y6",
      INIT => X"0000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => state_FSM_FFd2_366,
      ADR2 => state_FSM_FFd3_365,
      O => state_FSM_FFd3_In3_pack_3
    );
  state_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X19Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_state_FSM_FFd1_CLK,
      I => NlwBufferSignal_state_FSM_FFd1_IN,
      O => state_FSM_FFd1_363,
      RST => RST_IBUF_0,
      SET => GND
    );
  dirPrev_3 : X_FF
    generic map(
      LOC => "SLICE_X19Y7",
      INIT => '0'
    )
    port map (
      CE => state_FSM_FFd1_363,
      CLK => NlwBufferSignal_dirPrev_3_CLK,
      I => NlwBufferSignal_dirPrev_3_IN,
      O => dirPrev(3),
      RST => RST_IBUF_0,
      SET => GND
    );
  dirPrev_2 : X_FF
    generic map(
      LOC => "SLICE_X19Y7",
      INIT => '0'
    )
    port map (
      CE => state_FSM_FFd1_363,
      CLK => NlwBufferSignal_dirPrev_2_CLK,
      I => NlwBufferSignal_dirPrev_2_IN,
      O => dirPrev(2),
      RST => RST_IBUF_0,
      SET => GND
    );
  dirPrev_1 : X_FF
    generic map(
      LOC => "SLICE_X19Y7",
      INIT => '0'
    )
    port map (
      CE => state_FSM_FFd1_363,
      CLK => NlwBufferSignal_dirPrev_1_CLK,
      I => NlwBufferSignal_dirPrev_1_IN,
      O => dirPrev(1),
      RST => RST_IBUF_0,
      SET => GND
    );
  dirPrev_0 : X_FF
    generic map(
      LOC => "SLICE_X19Y7",
      INIT => '0'
    )
    port map (
      CE => state_FSM_FFd1_363,
      CLK => NlwBufferSignal_dirPrev_0_CLK,
      I => NlwBufferSignal_dirPrev_0_IN,
      O => dirPrev(0),
      RST => RST_IBUF_0,
      SET => GND
    );
  state_FSM_FFd3_In3 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y7",
      INIT => X"3B0AFFFF3B0A3B0A"
    )
    port map (
      ADR0 => dirPrev(3),
      ADR2 => dirActual(3),
      ADR5 => dirPrev(4),
      ADR4 => dirActual(4),
      ADR3 => dirPrev(2),
      ADR1 => dirActual(2),
      O => state_FSM_FFd3_In4
    );
  WE_DP1_160 : X_FF
    generic map(
      LOC => "SLICE_X20Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_WE_DP1_CLK,
      I => WE_DP1_rstpot_173,
      O => WE_DP1_OBUF_382,
      RST => RST_IBUF_0,
      SET => GND
    );
  WE_DP1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X20Y2",
      INIT => X"FFFF0000FF40FF00"
    )
    port map (
      ADR0 => DIR_1_IBUF_0,
      ADR1 => state_FSM_FFd3_In2_360,
      ADR2 => DIR_0_IBUF_0,
      ADR3 => WE_DP1_OBUF_382,
      ADR4 => state_FSM_FFd1_363,
      ADR5 => Q_n0117_inv,
      O => WE_DP1_rstpot_173
    );
  WE_DP2_OBUF_WE_DP2_OBUF_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CEcounter_pack_13,
      O => CEcounter_353
    );
  WE_DP2_OBUF_WE_DP2_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clearCounter_pack_10,
      O => clearCounter_369
    );
  Q_n0117_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y6",
      INIT => X"0000000F0000000F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => state_FSM_FFd3_365,
      ADR2 => state_FSM_FFd2_366,
      ADR4 => state_FSM_FFd1_363,
      ADR5 => '1',
      O => Q_n0117_inv
    );
  CEcounter_rstpot : X_LUT5
    generic map(
      LOC => "SLICE_X20Y6",
      INIT => X"0000AAFA"
    )
    port map (
      ADR1 => '1',
      ADR0 => CEcounter_353,
      ADR3 => state_FSM_FFd3_365,
      ADR2 => state_FSM_FFd2_366,
      ADR4 => state_FSM_FFd1_363,
      O => CEcounter_rstpot_198
    );
  CEcounter : X_FF
    generic map(
      LOC => "SLICE_X20Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_CEcounter_CLK,
      I => CEcounter_rstpot_198,
      O => CEcounter_pack_13,
      RST => RST_IBUF_0,
      SET => GND
    );
  WE_DP2_167 : X_FF
    generic map(
      LOC => "SLICE_X20Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_WE_DP2_CLK,
      I => WE_DP2_rstpot_205,
      O => WE_DP2_OBUF_362,
      RST => RST_IBUF_0,
      SET => GND
    );
  WE_DP2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X20Y6",
      INIT => X"FF00FF00FFFF4000"
    )
    port map (
      ADR0 => DIR_0_IBUF_0,
      ADR2 => state_FSM_FFd3_In2_360,
      ADR1 => DIR_1_IBUF_0,
      ADR4 => WE_DP2_OBUF_362,
      ADR3 => state_FSM_FFd1_363,
      ADR5 => Q_n0117_inv,
      O => WE_DP2_rstpot_205
    );
  Q_n0117_inv1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y6",
      INIT => X"F0F00F0FF0F00F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => DIR_1_IBUF_0,
      ADR4 => DIR_0_IBUF_0,
      ADR5 => '1',
      O => N4
    );
  clearCounter_rstpot : X_LUT5
    generic map(
      LOC => "SLICE_X20Y6",
      INIT => X"EE88EE88"
    )
    port map (
      ADR3 => state_FSM_FFd2_366,
      ADR1 => state_FSM_FFd3_365,
      ADR0 => clearCounter_369,
      ADR2 => '1',
      ADR4 => '1',
      O => clearCounter_rstpot_177
    );
  clearCounter : X_FF
    generic map(
      LOC => "SLICE_X20Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_clearCounter_CLK,
      I => clearCounter_rstpot_177,
      O => clearCounter_pack_10,
      RST => RST_IBUF_0,
      SET => GND
    );
  state_FSM_FFd3_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y6",
      INIT => X"0000000000000008"
    )
    port map (
      ADR0 => state_FSM_FFd3_In2_360,
      ADR5 => state_FSM_FFd3_365,
      ADR1 => DIR_VLD_IBUF_0,
      ADR3 => state_FSM_FFd2_366,
      ADR4 => state_FSM_FFd1_363,
      ADR2 => N4,
      O => state_FSM_FFd3_In1_367
    );
  dirPrev_7 : X_FF
    generic map(
      LOC => "SLICE_X20Y7",
      INIT => '0'
    )
    port map (
      CE => state_FSM_FFd1_363,
      CLK => NlwBufferSignal_dirPrev_7_CLK,
      I => NlwBufferSignal_dirPrev_7_IN,
      O => dirPrev(7),
      RST => RST_IBUF_0,
      SET => GND
    );
  dirPrev_6 : X_FF
    generic map(
      LOC => "SLICE_X20Y7",
      INIT => '0'
    )
    port map (
      CE => state_FSM_FFd1_363,
      CLK => NlwBufferSignal_dirPrev_6_CLK,
      I => NlwBufferSignal_dirPrev_6_IN,
      O => dirPrev(6),
      RST => RST_IBUF_0,
      SET => GND
    );
  dirPrev_5 : X_FF
    generic map(
      LOC => "SLICE_X20Y7",
      INIT => '0'
    )
    port map (
      CE => state_FSM_FFd1_363,
      CLK => NlwBufferSignal_dirPrev_5_CLK,
      I => NlwBufferSignal_dirPrev_5_IN,
      O => dirPrev(5),
      RST => RST_IBUF_0,
      SET => GND
    );
  state_FSM_FFd3_In7_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y7",
      INIT => X"84000084A50000A5"
    )
    port map (
      ADR3 => dirActual(6),
      ADR4 => dirPrev(6),
      ADR0 => dirActual(5),
      ADR2 => dirPrev(5),
      ADR5 => dirActual(4),
      ADR1 => dirPrev(4),
      O => N01
    );
  dirPrev_4 : X_FF
    generic map(
      LOC => "SLICE_X20Y7",
      INIT => '0'
    )
    port map (
      CE => state_FSM_FFd1_363,
      CLK => NlwBufferSignal_dirPrev_4_CLK,
      I => NlwBufferSignal_dirPrev_4_IN,
      O => dirPrev(4),
      RST => RST_IBUF_0,
      SET => GND
    );
  state_FSM_FFd3_In21 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => X"0000000000000020"
    )
    port map (
      ADR2 => DIR_7_IBUF_0,
      ADR5 => DIR_6_IBUF_0,
      ADR0 => DIR_5_IBUF_0,
      ADR3 => DIR_4_IBUF_0,
      ADR1 => DIR_2_IBUF_0,
      ADR4 => DIR_3_IBUF_0,
      O => state_FSM_FFd3_In2_360
    );
  dirActual_7 : X_FF
    generic map(
      LOC => "SLICE_X21Y7",
      INIT => '0'
    )
    port map (
      CE => Q_n0117_inv,
      CLK => NlwBufferSignal_dirActual_7_CLK,
      I => NlwBufferSignal_dirActual_7_IN,
      O => dirActual(7),
      RST => RST_IBUF_0,
      SET => GND
    );
  dirActual_6 : X_FF
    generic map(
      LOC => "SLICE_X21Y7",
      INIT => '0'
    )
    port map (
      CE => Q_n0117_inv,
      CLK => NlwBufferSignal_dirActual_6_CLK,
      I => NlwBufferSignal_dirActual_6_IN,
      O => dirActual(6),
      RST => RST_IBUF_0,
      SET => GND
    );
  dirActual_5 : X_FF
    generic map(
      LOC => "SLICE_X21Y7",
      INIT => '0'
    )
    port map (
      CE => Q_n0117_inv,
      CLK => NlwBufferSignal_dirActual_5_CLK,
      I => NlwBufferSignal_dirActual_5_IN,
      O => dirActual(5),
      RST => RST_IBUF_0,
      SET => GND
    );
  dirActual_4 : X_FF
    generic map(
      LOC => "SLICE_X21Y7",
      INIT => '0'
    )
    port map (
      CE => Q_n0117_inv,
      CLK => NlwBufferSignal_dirActual_4_CLK,
      I => NlwBufferSignal_dirActual_4_IN,
      O => dirActual(4),
      RST => RST_IBUF_0,
      SET => GND
    );
  counter_7_counter_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => counter_0_pack_11,
      O => counter(0)
    );
  Q_n0121_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y6",
      INIT => X"FFFFF0F0FFFFF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => CEcounter_353,
      ADR2 => clearCounter_369,
      ADR5 => '1',
      O => Q_n0121_inv
    );
  Mmux_counter_7_counter_7_mux_5_OUT11 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y6",
      INIT => X"55550000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => counter(0),
      ADR4 => CEcounter_353,
      ADR3 => '1',
      O => counter_7_counter_7_mux_5_OUT_0_Q
    );
  counter_0 : X_FF
    generic map(
      LOC => "SLICE_X26Y6",
      INIT => '0'
    )
    port map (
      CE => Q_n0121_inv,
      CLK => NlwBufferSignal_counter_0_CLK,
      I => counter_7_counter_7_mux_5_OUT_0_Q,
      O => counter_0_pack_11,
      RST => RST_IBUF_0,
      SET => GND
    );
  Mmux_counter_7_counter_7_mux_5_OUT81_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y6",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => counter(3),
      ADR2 => counter(6),
      O => N2
    );
  counter_7 : X_FF
    generic map(
      LOC => "SLICE_X26Y6",
      INIT => '0'
    )
    port map (
      CE => Q_n0121_inv,
      CLK => NlwBufferSignal_counter_7_CLK,
      I => counter_7_counter_7_mux_5_OUT_7_Q,
      O => counter(7),
      RST => RST_IBUF_0,
      SET => GND
    );
  Mmux_counter_7_counter_7_mux_5_OUT81 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y6",
      INIT => X"8888488888888888"
    )
    port map (
      ADR1 => CEcounter_353,
      ADR2 => N2,
      ADR3 => counter(5),
      ADR0 => counter(7),
      ADR5 => counter(4),
      ADR4 => Mmux_counter_7_counter_7_mux_5_OUT41_373,
      O => counter_7_counter_7_mux_5_OUT_7_Q
    );
  counter_6 : X_FF
    generic map(
      LOC => "SLICE_X26Y6",
      INIT => '0'
    )
    port map (
      CE => Q_n0121_inv,
      CLK => NlwBufferSignal_counter_6_CLK,
      I => counter_7_counter_7_mux_5_OUT_6_Q,
      O => counter(6),
      RST => RST_IBUF_0,
      SET => GND
    );
  Mmux_counter_7_counter_7_mux_5_OUT72 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y6",
      INIT => X"C0C0C0C060C0C0C0"
    )
    port map (
      ADR2 => CEcounter_353,
      ADR3 => counter(3),
      ADR0 => counter(5),
      ADR1 => counter(6),
      ADR4 => counter(4),
      ADR5 => Mmux_counter_7_counter_7_mux_5_OUT41_373,
      O => counter_7_counter_7_mux_5_OUT_6_Q
    );
  counter_5_counter_5_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => counter_1_pack_17,
      O => counter(1)
    );
  counter_5_counter_5_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => counter_3_pack_13,
      O => counter(3)
    );
  Mmux_counter_7_counter_7_mux_5_OUT411 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y6",
      INIT => X"77FF77FF77FF77FF"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR0 => counter(2),
      ADR3 => counter(0),
      ADR1 => counter(1),
      ADR5 => '1',
      O => Mmux_counter_7_counter_7_mux_5_OUT41_373
    );
  Mmux_counter_7_counter_7_mux_5_OUT21 : X_LUT5
    generic map(
      LOC => "SLICE_X27Y6",
      INIT => X"33CC0000"
    )
    port map (
      ADR0 => '1',
      ADR4 => CEcounter_353,
      ADR2 => '1',
      ADR3 => counter(0),
      ADR1 => counter(1),
      O => counter_7_counter_7_mux_5_OUT_1_Q
    );
  counter_1 : X_FF
    generic map(
      LOC => "SLICE_X27Y6",
      INIT => '0'
    )
    port map (
      CE => Q_n0121_inv,
      CLK => NlwBufferSignal_counter_1_CLK,
      I => counter_7_counter_7_mux_5_OUT_1_Q,
      O => counter_1_pack_17,
      RST => RST_IBUF_0,
      SET => GND
    );
  counter_5 : X_FF
    generic map(
      LOC => "SLICE_X27Y6",
      INIT => '0'
    )
    port map (
      CE => Q_n0121_inv,
      CLK => NlwBufferSignal_counter_5_CLK,
      I => counter_7_counter_7_mux_5_OUT_5_Q,
      O => counter(5),
      RST => RST_IBUF_0,
      SET => GND
    );
  Mmux_counter_7_counter_7_mux_5_OUT61 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y6",
      INIT => X"FF0000005F00A000"
    )
    port map (
      ADR1 => '1',
      ADR3 => CEcounter_353,
      ADR0 => counter(4),
      ADR4 => counter(5),
      ADR2 => counter(3),
      ADR5 => Mmux_counter_7_counter_7_mux_5_OUT41_373,
      O => counter_7_counter_7_mux_5_OUT_5_Q
    );
  counter_4 : X_FF
    generic map(
      LOC => "SLICE_X27Y6",
      INIT => '0'
    )
    port map (
      CE => Q_n0121_inv,
      CLK => NlwBufferSignal_counter_4_CLK,
      I => counter_7_counter_7_mux_5_OUT_4_Q,
      O => counter(4),
      RST => RST_IBUF_0,
      SET => GND
    );
  Mmux_counter_7_counter_7_mux_5_OUT51 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y6",
      INIT => X"78F0F0F000000000"
    )
    port map (
      ADR5 => CEcounter_353,
      ADR0 => counter(2),
      ADR4 => counter(0),
      ADR2 => counter(4),
      ADR1 => counter(1),
      ADR3 => counter(3),
      O => counter_7_counter_7_mux_5_OUT_4_Q
    );
  counter_2 : X_FF
    generic map(
      LOC => "SLICE_X27Y6",
      INIT => '0'
    )
    port map (
      CE => Q_n0121_inv,
      CLK => NlwBufferSignal_counter_2_CLK,
      I => counter_7_counter_7_mux_5_OUT_2_Q,
      O => counter(2),
      RST => RST_IBUF_0,
      SET => GND
    );
  Mmux_counter_7_counter_7_mux_5_OUT31 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y6",
      INIT => X"5F00A0005F00A000"
    )
    port map (
      ADR1 => '1',
      ADR3 => CEcounter_353,
      ADR0 => counter(0),
      ADR4 => counter(2),
      ADR2 => counter(1),
      ADR5 => '1',
      O => counter_7_counter_7_mux_5_OUT_2_Q
    );
  Mmux_counter_7_counter_7_mux_5_OUT41 : X_LUT5
    generic map(
      LOC => "SLICE_X27Y6",
      INIT => X"6C00CC00"
    )
    port map (
      ADR1 => counter(3),
      ADR3 => CEcounter_353,
      ADR0 => counter(0),
      ADR4 => counter(2),
      ADR2 => counter(1),
      O => counter_7_counter_7_mux_5_OUT_3_Q
    );
  counter_3 : X_FF
    generic map(
      LOC => "SLICE_X27Y6",
      INIT => '0'
    )
    port map (
      CE => Q_n0121_inv,
      CLK => NlwBufferSignal_counter_3_CLK,
      I => counter_7_counter_7_mux_5_OUT_3_Q,
      O => counter_3_pack_13,
      RST => RST_IBUF_0,
      SET => GND
    );
  NlwBufferBlock_DATA_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATA_0_OBUF_0,
      O => NlwBufferSignal_DATA_0_OBUF_I
    );
  NlwBufferBlock_DATA_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATA_1_OBUF_0,
      O => NlwBufferSignal_DATA_1_OBUF_I
    );
  NlwBufferBlock_DATA_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATA_2_OBUF_0,
      O => NlwBufferSignal_DATA_2_OBUF_I
    );
  NlwBufferBlock_DATA_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATA_3_OBUF_0,
      O => NlwBufferSignal_DATA_3_OBUF_I
    );
  NlwBufferBlock_DATA_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATA_4_OBUF_0,
      O => NlwBufferSignal_DATA_4_OBUF_I
    );
  NlwBufferBlock_DATA_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATA_5_OBUF_0,
      O => NlwBufferSignal_DATA_5_OBUF_I
    );
  NlwBufferBlock_DATA_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATA_6_OBUF_0,
      O => NlwBufferSignal_DATA_6_OBUF_I
    );
  NlwBufferBlock_DATA_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATA_7_OBUF_0,
      O => NlwBufferSignal_DATA_7_OBUF_I
    );
  NlwBufferBlock_WE_DP1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => WE_DP1_OBUF_382,
      O => NlwBufferSignal_WE_DP1_OBUF_I
    );
  NlwBufferBlock_WE_DP2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => WE_DP2_OBUF_362,
      O => NlwBufferSignal_WE_DP2_OBUF_I
    );
  NlwBufferBlock_ADDRESS_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => counter(0),
      O => NlwBufferSignal_ADDRESS_0_OBUF_I
    );
  NlwBufferBlock_ADDRESS_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => counter(1),
      O => NlwBufferSignal_ADDRESS_1_OBUF_I
    );
  NlwBufferBlock_ADDRESS_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => counter(2),
      O => NlwBufferSignal_ADDRESS_2_OBUF_I
    );
  NlwBufferBlock_ADDRESS_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => counter(3),
      O => NlwBufferSignal_ADDRESS_3_OBUF_I
    );
  NlwBufferBlock_ADDRESS_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => counter(4),
      O => NlwBufferSignal_ADDRESS_4_OBUF_I
    );
  NlwBufferBlock_ADDRESS_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => counter(5),
      O => NlwBufferSignal_ADDRESS_5_OBUF_I
    );
  NlwBufferBlock_ADDRESS_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => counter(6),
      O => NlwBufferSignal_ADDRESS_6_OBUF_I
    );
  NlwBufferBlock_ADDRESS_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => counter(7),
      O => NlwBufferSignal_ADDRESS_7_OBUF_I
    );
  NlwBufferBlock_CLK_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP_IBUFG_0,
      O => NlwBufferSignal_CLK_BUFGP_BUFG_IN
    );
  NlwBufferBlock_dirActual_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_dirActual_3_CLK
    );
  NlwBufferBlock_dirActual_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_3_IBUF_0,
      O => NlwBufferSignal_dirActual_3_IN
    );
  NlwBufferBlock_dirActual_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_dirActual_2_CLK
    );
  NlwBufferBlock_dirActual_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_2_IBUF_0,
      O => NlwBufferSignal_dirActual_2_IN
    );
  NlwBufferBlock_dirActual_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_dirActual_1_CLK
    );
  NlwBufferBlock_dirActual_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_1_IBUF_0,
      O => NlwBufferSignal_dirActual_1_IN
    );
  NlwBufferBlock_dirActual_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_dirActual_0_CLK
    );
  NlwBufferBlock_dirActual_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_0_IBUF_0,
      O => NlwBufferSignal_dirActual_0_IN
    );
  NlwBufferBlock_state_FSM_FFd3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_state_FSM_FFd3_CLK
    );
  NlwBufferBlock_state_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_state_FSM_FFd2_CLK
    );
  NlwBufferBlock_state_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_state_FSM_FFd1_CLK
    );
  NlwBufferBlock_state_FSM_FFd1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => state_FSM_FFd2_366,
      O => NlwBufferSignal_state_FSM_FFd1_IN
    );
  NlwBufferBlock_dirPrev_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_dirPrev_3_CLK
    );
  NlwBufferBlock_dirPrev_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_3_IBUF_0,
      O => NlwBufferSignal_dirPrev_3_IN
    );
  NlwBufferBlock_dirPrev_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_dirPrev_2_CLK
    );
  NlwBufferBlock_dirPrev_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_2_IBUF_0,
      O => NlwBufferSignal_dirPrev_2_IN
    );
  NlwBufferBlock_dirPrev_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_dirPrev_1_CLK
    );
  NlwBufferBlock_dirPrev_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_1_IBUF_0,
      O => NlwBufferSignal_dirPrev_1_IN
    );
  NlwBufferBlock_dirPrev_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_dirPrev_0_CLK
    );
  NlwBufferBlock_dirPrev_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_0_IBUF_0,
      O => NlwBufferSignal_dirPrev_0_IN
    );
  NlwBufferBlock_WE_DP1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_WE_DP1_CLK
    );
  NlwBufferBlock_CEcounter_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_CEcounter_CLK
    );
  NlwBufferBlock_WE_DP2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_WE_DP2_CLK
    );
  NlwBufferBlock_clearCounter_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_clearCounter_CLK
    );
  NlwBufferBlock_dirPrev_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_dirPrev_7_CLK
    );
  NlwBufferBlock_dirPrev_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_7_IBUF_0,
      O => NlwBufferSignal_dirPrev_7_IN
    );
  NlwBufferBlock_dirPrev_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_dirPrev_6_CLK
    );
  NlwBufferBlock_dirPrev_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_6_IBUF_0,
      O => NlwBufferSignal_dirPrev_6_IN
    );
  NlwBufferBlock_dirPrev_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_dirPrev_5_CLK
    );
  NlwBufferBlock_dirPrev_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_5_IBUF_0,
      O => NlwBufferSignal_dirPrev_5_IN
    );
  NlwBufferBlock_dirPrev_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_dirPrev_4_CLK
    );
  NlwBufferBlock_dirPrev_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_4_IBUF_0,
      O => NlwBufferSignal_dirPrev_4_IN
    );
  NlwBufferBlock_dirActual_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_dirActual_7_CLK
    );
  NlwBufferBlock_dirActual_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_7_IBUF_0,
      O => NlwBufferSignal_dirActual_7_IN
    );
  NlwBufferBlock_dirActual_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_dirActual_6_CLK
    );
  NlwBufferBlock_dirActual_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_6_IBUF_0,
      O => NlwBufferSignal_dirActual_6_IN
    );
  NlwBufferBlock_dirActual_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_dirActual_5_CLK
    );
  NlwBufferBlock_dirActual_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_5_IBUF_0,
      O => NlwBufferSignal_dirActual_5_IN
    );
  NlwBufferBlock_dirActual_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_dirActual_4_CLK
    );
  NlwBufferBlock_dirActual_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_4_IBUF_0,
      O => NlwBufferSignal_dirActual_4_IN
    );
  NlwBufferBlock_counter_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_counter_0_CLK
    );
  NlwBufferBlock_counter_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_counter_7_CLK
    );
  NlwBufferBlock_counter_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_counter_6_CLK
    );
  NlwBufferBlock_counter_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_counter_1_CLK
    );
  NlwBufferBlock_counter_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_counter_5_CLK
    );
  NlwBufferBlock_counter_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_counter_4_CLK
    );
  NlwBufferBlock_counter_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_counter_2_CLK
    );
  NlwBufferBlock_counter_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_counter_3_CLK
    );
  NlwBlock_cnt_dpram_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_cnt_dpram_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;


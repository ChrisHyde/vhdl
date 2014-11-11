--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: cnt_epp_timesim.vhd
-- /___/   /\     Timestamp: Tue Nov 11 23:32:47 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf cnt_epp.pcf -rpw 100 -tpw 0 -ar Structure -tm cnt_epp -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim cnt_epp.ncd cnt_epp_timesim.vhd 
-- Device	: 6slx45csg324-3 (PRODUCTION 1.23 2013-10-13)
-- Input file	: cnt_epp.ncd
-- Output file	: C:\Users\christopher\Dropbox\workspace\modelado14\cnt_epp\netgen\par\cnt_epp_timesim.vhd
-- # of Entities	: 1
-- Design Name	: cnt_epp
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

entity cnt_epp is
  port (
    CLK : in STD_LOGIC := 'X'; 
    RST : in STD_LOGIC := 'X'; 
    ASTRB : in STD_LOGIC := 'X'; 
    DSTRB : in STD_LOGIC := 'X'; 
    PWRITE : in STD_LOGIC := 'X'; 
    PWAIT : out STD_LOGIC; 
    CE_RD : out STD_LOGIC; 
    DIR_VLD : out STD_LOGIC; 
    DATO_VLD : out STD_LOGIC; 
    DATO_RD : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    DATA : inout STD_LOGIC_VECTOR ( 7 downto 0 ); 
    DIR : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    DATO : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end cnt_epp;

architecture Structure of cnt_epp is
  signal DATA_1_MLTSRCEDGE : STD_LOGIC; 
  signal DATO_RD_0_IBUF_0 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal DATO_RD_1_IBUF_0 : STD_LOGIC; 
  signal DATA_0_MLTSRCEDGE_0 : STD_LOGIC; 
  signal DATA_3_MLTSRCEDGE : STD_LOGIC; 
  signal DATO_RD_2_IBUF_0 : STD_LOGIC; 
  signal DATO_RD_3_IBUF_0 : STD_LOGIC; 
  signal DATA_2_MLTSRCEDGE_0 : STD_LOGIC; 
  signal CLK_BUFGP : STD_LOGIC; 
  signal ASTRB_IBUF_0 : STD_LOGIC; 
  signal DSTRB_IBUF_0 : STD_LOGIC; 
  signal Q2_345 : STD_LOGIC; 
  signal ASTRB_DSTRB_AND_7_o_0 : STD_LOGIC; 
  signal DATO_VLD_OBUF_347 : STD_LOGIC; 
  signal RST_IBUF_0 : STD_LOGIC; 
  signal DATA_5_MLTSRCEDGE : STD_LOGIC; 
  signal DATO_RD_4_IBUF_0 : STD_LOGIC; 
  signal DATO_RD_5_IBUF_0 : STD_LOGIC; 
  signal DATA_4_MLTSRCEDGE_0 : STD_LOGIC; 
  signal DATA_7_MLTSRCEDGE : STD_LOGIC; 
  signal DATO_RD_6_IBUF_0 : STD_LOGIC; 
  signal DATO_RD_7_IBUF_0 : STD_LOGIC; 
  signal DATA_6_MLTSRCEDGE_0 : STD_LOGIC; 
  signal N17_0 : STD_LOGIC; 
  signal N16_0 : STD_LOGIC; 
  signal N15_0 : STD_LOGIC; 
  signal N14_0 : STD_LOGIC; 
  signal N13_0 : STD_LOGIC; 
  signal N12_0 : STD_LOGIC; 
  signal DATO_0_363 : STD_LOGIC; 
  signal N11_0 : STD_LOGIC; 
  signal DATO_1_365 : STD_LOGIC; 
  signal N10_0 : STD_LOGIC; 
  signal DATO_2_367 : STD_LOGIC; 
  signal DATO_3_368 : STD_LOGIC; 
  signal DATO_4_369 : STD_LOGIC; 
  signal DATO_5_370 : STD_LOGIC; 
  signal DATO_6_371 : STD_LOGIC; 
  signal DATO_7_372 : STD_LOGIC; 
  signal PWAIT_OBUF_373 : STD_LOGIC; 
  signal DIR_0_374 : STD_LOGIC; 
  signal DIR_1_375 : STD_LOGIC; 
  signal DIR_2_376 : STD_LOGIC; 
  signal DIR_3_377 : STD_LOGIC; 
  signal DIR_4_378 : STD_LOGIC; 
  signal DIR_5_379 : STD_LOGIC; 
  signal DIR_6_380 : STD_LOGIC; 
  signal DIR_7_381 : STD_LOGIC; 
  signal DIR_VLD_OBUF_382 : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal Q_384 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal DATO_RD_0_IBUF_57 : STD_LOGIC; 
  signal DATO_RD_1_IBUF_60 : STD_LOGIC; 
  signal DATO_RD_2_IBUF_67 : STD_LOGIC; 
  signal DATO_RD_3_IBUF_70 : STD_LOGIC; 
  signal ASTRB_IBUF_73 : STD_LOGIC; 
  signal DATO_RD_4_IBUF_76 : STD_LOGIC; 
  signal DATO_RD_5_IBUF_79 : STD_LOGIC; 
  signal DATO_RD_6_IBUF_82 : STD_LOGIC; 
  signal DATO_RD_7_IBUF_85 : STD_LOGIC; 
  signal RST_IBUF_104 : STD_LOGIC; 
  signal ProtoComp5_IINV_OUT : STD_LOGIC; 
  signal N9_non_inverted : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_113 : STD_LOGIC; 
  signal DSTRB_IBUF_116 : STD_LOGIC; 
  signal DATA_4_MLTSRCEDGE : STD_LOGIC; 
  signal DATA_6_MLTSRCEDGE : STD_LOGIC; 
  signal DATA_0_MLTSRCEDGE : STD_LOGIC; 
  signal DATA_2_MLTSRCEDGE : STD_LOGIC; 
  signal ASTRB_IBUF_rt_172 : STD_LOGIC; 
  signal Q_pack_10 : STD_LOGIC; 
  signal DIR_0_rstpot_168 : STD_LOGIC; 
  signal DIR_1_rstpot_167 : STD_LOGIC; 
  signal DIR_3_rstpot_162 : STD_LOGIC; 
  signal DIR_2_rstpot_154 : STD_LOGIC; 
  signal DIR_4_rstpot_205 : STD_LOGIC; 
  signal DIR_5_rstpot_198 : STD_LOGIC; 
  signal DIR_6_rstpot_191 : STD_LOGIC; 
  signal DIR_7_rstpot_183 : STD_LOGIC; 
  signal S11 : STD_LOGIC; 
  signal ASTRB_DSTRB_AND_7_o : STD_LOGIC; 
  signal S22 : STD_LOGIC; 
  signal DATO_4_rstpot_252 : STD_LOGIC; 
  signal DATO_5_rstpot_245 : STD_LOGIC; 
  signal DATO_6_rstpot_238 : STD_LOGIC; 
  signal DATO_7_rstpot_230 : STD_LOGIC; 
  signal DATO_0_rstpot_286 : STD_LOGIC; 
  signal DATO_1_rstpot_279 : STD_LOGIC; 
  signal DATO_2_rstpot_272 : STD_LOGIC; 
  signal DATO_3_rstpot_264 : STD_LOGIC; 
  signal NlwBufferSignal_DATA_0_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_1_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_2_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_3_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_4_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_5_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATO_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_6_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATO_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_7_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATO_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DATO_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DATO_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DATO_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DATO_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DATO_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_PWAIT_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DATO_VLD_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DIR_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DIR_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DIR_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DIR_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DIR_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DIR_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DIR_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DIR_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DIR_VLD_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_PWAIT_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWAIT_IN : STD_LOGIC; 
  signal NlwBufferSignal_CLK_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_DIR_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIR_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIR_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIR_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIR_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIR_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIR_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIR_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIR_VLD_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_VLD_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Q2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Q2_IN : STD_LOGIC; 
  signal NlwBufferSignal_DATO_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_0_CLK : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
begin
  DATA_0_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD221"
    )
    port map (
      I => NlwBufferSignal_DATA_0_IOBUF_OBUFT_I,
      O => DATA(0),
      CTL => N9
    );
  DATA_0_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD221",
      PATHPULSE => 202 ps
    )
    port map (
      O => N17,
      I => DATA(0)
    );
  ProtoComp2_IMUX : X_BUF
    generic map(
      LOC => "PAD221",
      PATHPULSE => 202 ps
    )
    port map (
      I => N17,
      O => N17_0
    );
  DATA_1_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD222"
    )
    port map (
      I => NlwBufferSignal_DATA_1_IOBUF_OBUFT_I,
      O => DATA(1),
      CTL => N9
    );
  DATA_1_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD222",
      PATHPULSE => 202 ps
    )
    port map (
      O => N16,
      I => DATA(1)
    );
  ProtoComp2_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD222",
      PATHPULSE => 202 ps
    )
    port map (
      I => N16,
      O => N16_0
    );
  DATA_2_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD223"
    )
    port map (
      I => NlwBufferSignal_DATA_2_IOBUF_OBUFT_I,
      O => DATA(2),
      CTL => N9
    );
  DATA_2_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD223",
      PATHPULSE => 202 ps
    )
    port map (
      O => N15,
      I => DATA(2)
    );
  ProtoComp2_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD223",
      PATHPULSE => 202 ps
    )
    port map (
      I => N15,
      O => N15_0
    );
  DATA_3_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD224"
    )
    port map (
      I => NlwBufferSignal_DATA_3_IOBUF_OBUFT_I,
      O => DATA(3),
      CTL => N9
    );
  DATA_3_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD224",
      PATHPULSE => 202 ps
    )
    port map (
      O => N14,
      I => DATA(3)
    );
  ProtoComp2_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD224",
      PATHPULSE => 202 ps
    )
    port map (
      I => N14,
      O => N14_0
    );
  DATA_4_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD225"
    )
    port map (
      I => NlwBufferSignal_DATA_4_IOBUF_OBUFT_I,
      O => DATA(4),
      CTL => N9
    );
  DATA_4_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD225",
      PATHPULSE => 202 ps
    )
    port map (
      O => N13,
      I => DATA(4)
    );
  ProtoComp2_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD225",
      PATHPULSE => 202 ps
    )
    port map (
      I => N13,
      O => N13_0
    );
  DATA_5_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD226"
    )
    port map (
      I => NlwBufferSignal_DATA_5_IOBUF_OBUFT_I,
      O => DATA(5),
      CTL => N9
    );
  DATA_5_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD226",
      PATHPULSE => 202 ps
    )
    port map (
      O => N12,
      I => DATA(5)
    );
  ProtoComp2_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD226",
      PATHPULSE => 202 ps
    )
    port map (
      I => N12,
      O => N12_0
    );
  DATO_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD209"
    )
    port map (
      I => NlwBufferSignal_DATO_0_OBUF_I,
      O => DATO(0)
    );
  DATA_6_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD229"
    )
    port map (
      I => NlwBufferSignal_DATA_6_IOBUF_OBUFT_I,
      O => DATA(6),
      CTL => N9
    );
  DATA_6_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD229",
      PATHPULSE => 202 ps
    )
    port map (
      O => N11,
      I => DATA(6)
    );
  ProtoComp2_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD229",
      PATHPULSE => 202 ps
    )
    port map (
      I => N11,
      O => N11_0
    );
  DATO_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD210"
    )
    port map (
      I => NlwBufferSignal_DATO_1_OBUF_I,
      O => DATO(1)
    );
  DATA_7_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD230"
    )
    port map (
      I => NlwBufferSignal_DATA_7_IOBUF_OBUFT_I,
      O => DATA(7),
      CTL => N9
    );
  DATA_7_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD230",
      PATHPULSE => 202 ps
    )
    port map (
      O => N10,
      I => DATA(7)
    );
  ProtoComp2_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD230",
      PATHPULSE => 202 ps
    )
    port map (
      I => N10,
      O => N10_0
    );
  DATO_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD211"
    )
    port map (
      I => NlwBufferSignal_DATO_2_OBUF_I,
      O => DATO(2)
    );
  DATO_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD212"
    )
    port map (
      I => NlwBufferSignal_DATO_3_OBUF_I,
      O => DATO(3)
    );
  DATO_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD213"
    )
    port map (
      I => NlwBufferSignal_DATO_4_OBUF_I,
      O => DATO(4)
    );
  DATO_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD214"
    )
    port map (
      I => NlwBufferSignal_DATO_5_OBUF_I,
      O => DATO(5)
    );
  DATO_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD215"
    )
    port map (
      I => NlwBufferSignal_DATO_6_OBUF_I,
      O => DATO(6)
    );
  DATO_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD216"
    )
    port map (
      I => NlwBufferSignal_DATO_7_OBUF_I,
      O => DATO(7)
    );
  DATO_RD_0_IBUF : X_BUF
    generic map(
      LOC => "PAD259",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO_RD_0_IBUF_57,
      I => DATO_RD(0)
    );
  ProtoComp4_IMUX : X_BUF
    generic map(
      LOC => "PAD259",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_RD_0_IBUF_57,
      O => DATO_RD_0_IBUF_0
    );
  DATO_RD_1_IBUF : X_BUF
    generic map(
      LOC => "PAD260",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO_RD_1_IBUF_60,
      I => DATO_RD(1)
    );
  ProtoComp4_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD260",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_RD_1_IBUF_60,
      O => DATO_RD_1_IBUF_0
    );
  PWAIT_OBUF : X_OBUF
    generic map(
      LOC => "PAD291"
    )
    port map (
      I => NlwBufferSignal_PWAIT_OBUF_I,
      O => PWAIT
    );
  DATO_VLD_OBUF : X_OBUF
    generic map(
      LOC => "PAD220"
    )
    port map (
      I => NlwBufferSignal_DATO_VLD_OBUF_I,
      O => DATO_VLD
    );
  DATO_RD_2_IBUF : X_BUF
    generic map(
      LOC => "PAD261",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO_RD_2_IBUF_67,
      I => DATO_RD(2)
    );
  ProtoComp4_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD261",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_RD_2_IBUF_67,
      O => DATO_RD_2_IBUF_0
    );
  DATO_RD_3_IBUF : X_BUF
    generic map(
      LOC => "PAD262",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO_RD_3_IBUF_70,
      I => DATO_RD(3)
    );
  ProtoComp4_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD262",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_RD_3_IBUF_70,
      O => DATO_RD_3_IBUF_0
    );
  ASTRB_IBUF : X_BUF
    generic map(
      LOC => "PAD231",
      PATHPULSE => 202 ps
    )
    port map (
      O => ASTRB_IBUF_73,
      I => ASTRB
    );
  ProtoComp4_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD231",
      PATHPULSE => 202 ps
    )
    port map (
      I => ASTRB_IBUF_73,
      O => ASTRB_IBUF_0
    );
  DATO_RD_4_IBUF : X_BUF
    generic map(
      LOC => "PAD295",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO_RD_4_IBUF_76,
      I => DATO_RD(4)
    );
  ProtoComp4_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD295",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_RD_4_IBUF_76,
      O => DATO_RD_4_IBUF_0
    );
  DATO_RD_5_IBUF : X_BUF
    generic map(
      LOC => "PAD292",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO_RD_5_IBUF_79,
      I => DATO_RD(5)
    );
  ProtoComp4_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD292",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_RD_5_IBUF_79,
      O => DATO_RD_5_IBUF_0
    );
  DATO_RD_6_IBUF : X_BUF
    generic map(
      LOC => "PAD293",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO_RD_6_IBUF_82,
      I => DATO_RD(6)
    );
  ProtoComp4_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD293",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_RD_6_IBUF_82,
      O => DATO_RD_6_IBUF_0
    );
  DATO_RD_7_IBUF : X_BUF
    generic map(
      LOC => "PAD294",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO_RD_7_IBUF_85,
      I => DATO_RD(7)
    );
  ProtoComp4_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD294",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_RD_7_IBUF_85,
      O => DATO_RD_7_IBUF_0
    );
  DIR_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD232"
    )
    port map (
      I => NlwBufferSignal_DIR_0_OBUF_I,
      O => DIR(0)
    );
  DIR_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD251"
    )
    port map (
      I => NlwBufferSignal_DIR_1_OBUF_I,
      O => DIR(1)
    );
  DIR_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD252"
    )
    port map (
      I => NlwBufferSignal_DIR_2_OBUF_I,
      O => DIR(2)
    );
  DIR_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD253"
    )
    port map (
      I => NlwBufferSignal_DIR_3_OBUF_I,
      O => DIR(3)
    );
  DIR_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD254"
    )
    port map (
      I => NlwBufferSignal_DIR_4_OBUF_I,
      O => DIR(4)
    );
  DIR_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD255"
    )
    port map (
      I => NlwBufferSignal_DIR_5_OBUF_I,
      O => DIR(5)
    );
  DIR_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD258"
    )
    port map (
      I => NlwBufferSignal_DIR_6_OBUF_I,
      O => DIR(6)
    );
  DIR_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD257"
    )
    port map (
      I => NlwBufferSignal_DIR_7_OBUF_I,
      O => DIR(7)
    );
  RST_IBUF : X_BUF
    generic map(
      LOC => "PAD228",
      PATHPULSE => 202 ps
    )
    port map (
      O => RST_IBUF_104,
      I => RST
    );
  ProtoComp4_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD228",
      PATHPULSE => 202 ps
    )
    port map (
      I => RST_IBUF_104,
      O => RST_IBUF_0
    );
  DIR_VLD_OBUF : X_OBUF
    generic map(
      LOC => "PAD227"
    )
    port map (
      I => NlwBufferSignal_DIR_VLD_OBUF_I,
      O => DIR_VLD
    );
  PWRITE_IBUF : X_BUF
    generic map(
      LOC => "PAD256",
      PATHPULSE => 202 ps
    )
    port map (
      O => N9_non_inverted,
      I => PWRITE
    );
  ProtoComp5_IMUX : X_BUF
    generic map(
      LOC => "PAD256",
      PATHPULSE => 202 ps
    )
    port map (
      I => ProtoComp5_IINV_OUT,
      O => N9
    );
  ProtoComp5_IINV : X_INV
    generic map(
      LOC => "PAD256",
      PATHPULSE => 202 ps
    )
    port map (
      I => N9_non_inverted,
      O => ProtoComp5_IINV_OUT
    );
  CLK_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD314",
      PATHPULSE => 202 ps
    )
    port map (
      O => CLK_BUFGP_IBUFG_113,
      I => CLK
    );
  ProtoComp4_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD314",
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP_IBUFG_113,
      O => CLK_BUFGP_IBUFG_0
    );
  DSTRB_IBUF : X_BUF
    generic map(
      LOC => "PAD219",
      PATHPULSE => 202 ps
    )
    port map (
      O => DSTRB_IBUF_116,
      I => DSTRB
    );
  ProtoComp4_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD219",
      PATHPULSE => 202 ps
    )
    port map (
      I => DSTRB_IBUF_116,
      O => DSTRB_IBUF_0
    );
  PWAIT_152 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y37",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWAIT_CLK,
      I => NlwBufferSignal_PWAIT_IN,
      O => PWAIT_OBUF_373,
      SET => GND,
      RST => RST_IBUF_0
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
  DATA_5_MLTSRCEDGE_DATA_5_MLTSRCEDGE_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATA_4_MLTSRCEDGE,
      O => DATA_4_MLTSRCEDGE_0
    );
  DATA_5_MLTSRCEDGE_DATA_5_MLTSRCEDGE_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATA_6_MLTSRCEDGE,
      O => DATA_6_MLTSRCEDGE_0
    );
  DATA_5_MLTSRCEDGELogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y14",
      INIT => X"FFAAFFAAFFAAFFAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => N9,
      ADR3 => DATO_RD_5_IBUF_0,
      ADR5 => '1',
      O => DATA_5_MLTSRCEDGE
    );
  DATA_4_MLTSRCEDGELogicTrst1 : X_LUT5
    generic map(
      LOC => "SLICE_X7Y14",
      INIT => X"FAFAFAFA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => DATO_RD_4_IBUF_0,
      ADR0 => N9,
      ADR4 => '1',
      O => DATA_4_MLTSRCEDGE
    );
  DATA_7_MLTSRCEDGELogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y14",
      INIT => X"FFFFF0F0FFFFF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => N9,
      ADR2 => DATO_RD_7_IBUF_0,
      ADR5 => '1',
      O => DATA_7_MLTSRCEDGE
    );
  DATA_6_MLTSRCEDGELogicTrst1 : X_LUT5
    generic map(
      LOC => "SLICE_X7Y14",
      INIT => X"FFFFAAAA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => DATO_RD_6_IBUF_0,
      ADR4 => N9,
      ADR3 => '1',
      O => DATA_6_MLTSRCEDGE
    );
  DATA_1_MLTSRCEDGE_DATA_1_MLTSRCEDGE_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATA_0_MLTSRCEDGE,
      O => DATA_0_MLTSRCEDGE_0
    );
  DATA_1_MLTSRCEDGELogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y2",
      INIT => X"FFF0FFF0FFF0FFF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => N9,
      ADR2 => DATO_RD_1_IBUF_0,
      ADR5 => '1',
      O => DATA_1_MLTSRCEDGE
    );
  DATA_0_MLTSRCEDGELogicTrst1 : X_LUT5
    generic map(
      LOC => "SLICE_X8Y2",
      INIT => X"FFCCFFCC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => DATO_RD_0_IBUF_0,
      ADR3 => N9,
      ADR4 => '1',
      O => DATA_0_MLTSRCEDGE
    );
  DATA_3_MLTSRCEDGE_DATA_3_MLTSRCEDGE_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATA_2_MLTSRCEDGE,
      O => DATA_2_MLTSRCEDGE_0
    );
  DATA_3_MLTSRCEDGELogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y3",
      INIT => X"FFFFAAAAFFFFAAAA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => N9,
      ADR4 => DATO_RD_3_IBUF_0,
      ADR5 => '1',
      O => DATA_3_MLTSRCEDGE
    );
  DATA_2_MLTSRCEDGELogicTrst1 : X_LUT5
    generic map(
      LOC => "SLICE_X8Y3",
      INIT => X"EEEEEEEE"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => DATO_RD_2_IBUF_0,
      ADR0 => N9,
      ADR4 => '1',
      O => DATA_2_MLTSRCEDGE
    );
  DIR_3_DIR_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Q_pack_10,
      O => Q_384
    );
  DIR_3 : X_FF
    generic map(
      LOC => "SLICE_X13Y0",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DIR_3_CLK,
      I => DIR_3_rstpot_162,
      O => DIR_3_377,
      RST => RST_IBUF_0,
      SET => GND
    );
  DIR_3_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y0",
      INIT => X"FFFFBBFF00008800"
    )
    port map (
      ADR2 => '1',
      ADR0 => N14_0,
      ADR3 => ASTRB_IBUF_0,
      ADR5 => DIR_3_377,
      ADR1 => N9,
      ADR4 => Q_384,
      O => DIR_3_rstpot_162
    );
  DIR_2 : X_FF
    generic map(
      LOC => "SLICE_X13Y0",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DIR_2_CLK,
      I => DIR_2_rstpot_154,
      O => DIR_2_376,
      RST => RST_IBUF_0,
      SET => GND
    );
  DIR_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y0",
      INIT => X"FCFF0C00FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => N15_0,
      ADR3 => ASTRB_IBUF_0,
      ADR4 => DIR_2_376,
      ADR5 => N9,
      ADR2 => Q_384,
      O => DIR_2_rstpot_154
    );
  DIR_1 : X_FF
    generic map(
      LOC => "SLICE_X13Y0",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DIR_1_CLK,
      I => DIR_1_rstpot_167,
      O => DIR_1_375,
      RST => RST_IBUF_0,
      SET => GND
    );
  DIR_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y0",
      INIT => X"FFFF0000F5FFA000"
    )
    port map (
      ADR1 => '1',
      ADR2 => N16_0,
      ADR0 => ASTRB_IBUF_0,
      ADR4 => DIR_1_375,
      ADR3 => N9,
      ADR5 => Q_384,
      O => DIR_1_rstpot_167
    );
  DIR_0 : X_FF
    generic map(
      LOC => "SLICE_X13Y0",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DIR_0_CLK,
      I => DIR_0_rstpot_168,
      O => DIR_0_374,
      RST => RST_IBUF_0,
      SET => GND
    );
  DIR_0_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y0",
      INIT => X"FDFF2000FDFF2000"
    )
    port map (
      ADR2 => N17_0,
      ADR0 => ASTRB_IBUF_0,
      ADR3 => N9,
      ADR4 => DIR_0_374,
      ADR1 => Q_384,
      ADR5 => '1',
      O => DIR_0_rstpot_168
    );
  ASTRB_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y0",
      INIT => X"AAAAAAAA"
    )
    port map (
      ADR1 => '1',
      ADR0 => ASTRB_IBUF_0,
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => ASTRB_IBUF_rt_172
    );
  Q : X_FF
    generic map(
      LOC => "SLICE_X13Y0",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Q_CLK,
      I => ASTRB_IBUF_rt_172,
      O => Q_pack_10,
      RST => RST_IBUF_0,
      SET => GND
    );
  DIR_7 : X_FF
    generic map(
      LOC => "SLICE_X14Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DIR_7_CLK,
      I => DIR_7_rstpot_183,
      O => DIR_7_381,
      RST => RST_IBUF_0,
      SET => GND
    );
  DIR_7_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X14Y2",
      INIT => X"FFFF0000F7F78080"
    )
    port map (
      ADR3 => '1',
      ADR2 => N10_0,
      ADR0 => ASTRB_IBUF_0,
      ADR4 => DIR_7_381,
      ADR1 => N9,
      ADR5 => Q_384,
      O => DIR_7_rstpot_183
    );
  DIR_6 : X_FF
    generic map(
      LOC => "SLICE_X14Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DIR_6_CLK,
      I => DIR_6_rstpot_191,
      O => DIR_6_380,
      RST => RST_IBUF_0,
      SET => GND
    );
  DIR_6_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X14Y2",
      INIT => X"FFFF0000BFBF8080"
    )
    port map (
      ADR3 => '1',
      ADR0 => N11_0,
      ADR1 => ASTRB_IBUF_0,
      ADR4 => DIR_6_380,
      ADR2 => N9,
      ADR5 => Q_384,
      O => DIR_6_rstpot_191
    );
  DIR_5 : X_FF
    generic map(
      LOC => "SLICE_X14Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DIR_5_CLK,
      I => DIR_5_rstpot_198,
      O => DIR_5_379,
      RST => RST_IBUF_0,
      SET => GND
    );
  DIR_5_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X14Y2",
      INIT => X"FFFF0000CFFFC000"
    )
    port map (
      ADR0 => '1',
      ADR1 => N12_0,
      ADR2 => ASTRB_IBUF_0,
      ADR4 => DIR_5_379,
      ADR3 => N9,
      ADR5 => Q_384,
      O => DIR_5_rstpot_198
    );
  DIR_4 : X_FF
    generic map(
      LOC => "SLICE_X14Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DIR_4_CLK,
      I => DIR_4_rstpot_205,
      O => DIR_4_378,
      RST => RST_IBUF_0,
      SET => GND
    );
  DIR_4_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X14Y2",
      INIT => X"FFFF0000FF5FA000"
    )
    port map (
      ADR1 => '1',
      ADR3 => N13_0,
      ADR2 => ASTRB_IBUF_0,
      ADR4 => DIR_4_378,
      ADR0 => N9,
      ADR5 => Q_384,
      O => DIR_4_rstpot_205
    );
  DIR_VLD_188 : X_FF
    generic map(
      LOC => "SLICE_X16Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DIR_VLD_CLK,
      I => S11,
      O => DIR_VLD_OBUF_382,
      RST => RST_IBUF_0,
      SET => GND
    );
  S111 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y2",
      INIT => X"0000F0F000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR5 => ASTRB_IBUF_0,
      ADR2 => N9,
      ADR4 => Q_384,
      O => S11
    );
  DATO_VLD_OBUF_DATO_VLD_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ASTRB_DSTRB_AND_7_o,
      O => ASTRB_DSTRB_AND_7_o_0
    );
  DATO_VLD_192 : X_FF
    generic map(
      LOC => "SLICE_X18Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DATO_VLD_CLK,
      I => S22,
      O => DATO_VLD_OBUF_347,
      RST => RST_IBUF_0,
      SET => GND
    );
  S221 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y6",
      INIT => X"0808080808080808"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR1 => DSTRB_IBUF_0,
      ADR0 => N9,
      ADR2 => Q2_345,
      ADR5 => '1',
      O => S22
    );
  ASTRB_DSTRB_AND_7_o1 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y6",
      INIT => X"00330033"
    )
    port map (
      ADR0 => '1',
      ADR3 => ASTRB_IBUF_0,
      ADR1 => DSTRB_IBUF_0,
      ADR2 => '1',
      ADR4 => '1',
      O => ASTRB_DSTRB_AND_7_o
    );
  DATO_7 : X_FF
    generic map(
      LOC => "SLICE_X19Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DATO_7_CLK,
      I => DATO_7_rstpot_230,
      O => DATO_7_372,
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_7_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y2",
      INIT => X"FFFF0000AFFFA000"
    )
    port map (
      ADR1 => '1',
      ADR0 => N10_0,
      ADR3 => DSTRB_IBUF_0,
      ADR4 => DATO_7_372,
      ADR2 => N9,
      ADR5 => Q2_345,
      O => DATO_7_rstpot_230
    );
  DATO_6 : X_FF
    generic map(
      LOC => "SLICE_X19Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DATO_6_CLK,
      I => DATO_6_rstpot_238,
      O => DATO_6_371,
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_6_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y2",
      INIT => X"FFFFCFFF0000C000"
    )
    port map (
      ADR0 => '1',
      ADR1 => N11_0,
      ADR3 => DSTRB_IBUF_0,
      ADR5 => DATO_6_371,
      ADR2 => N9,
      ADR4 => Q2_345,
      O => DATO_6_rstpot_238
    );
  DATO_5 : X_FF
    generic map(
      LOC => "SLICE_X19Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DATO_5_CLK,
      I => DATO_5_rstpot_245,
      O => DATO_5_370,
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_5_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y2",
      INIT => X"FFFF0000F7F78080"
    )
    port map (
      ADR3 => '1',
      ADR2 => N12_0,
      ADR1 => DSTRB_IBUF_0,
      ADR4 => DATO_5_370,
      ADR0 => N9,
      ADR5 => Q2_345,
      O => DATO_5_rstpot_245
    );
  DATO_4 : X_FF
    generic map(
      LOC => "SLICE_X19Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DATO_4_CLK,
      I => DATO_4_rstpot_252,
      O => DATO_4_369,
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_4_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y2",
      INIT => X"FFFF0000F7F78080"
    )
    port map (
      ADR3 => '1',
      ADR2 => N13_0,
      ADR0 => DSTRB_IBUF_0,
      ADR4 => DATO_4_369,
      ADR1 => N9,
      ADR5 => Q2_345,
      O => DATO_4_rstpot_252
    );
  Q2 : X_FF
    generic map(
      LOC => "SLICE_X20Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Q2_CLK,
      I => NlwBufferSignal_Q2_IN,
      O => Q2_345,
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_3 : X_FF
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DATO_3_CLK,
      I => DATO_3_rstpot_264,
      O => DATO_3_368,
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_3_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => X"FFFF0000F3FFC000"
    )
    port map (
      ADR0 => '1',
      ADR2 => N14_0,
      ADR3 => DSTRB_IBUF_0,
      ADR4 => DATO_3_368,
      ADR1 => N9,
      ADR5 => Q2_345,
      O => DATO_3_rstpot_264
    );
  DATO_2 : X_FF
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DATO_2_CLK,
      I => DATO_2_rstpot_272,
      O => DATO_2_367,
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => X"FFFF0000AFFFA000"
    )
    port map (
      ADR1 => '1',
      ADR0 => N15_0,
      ADR2 => DSTRB_IBUF_0,
      ADR4 => DATO_2_367,
      ADR3 => N9,
      ADR5 => Q2_345,
      O => DATO_2_rstpot_272
    );
  DATO_1 : X_FF
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DATO_1_CLK,
      I => DATO_1_rstpot_279,
      O => DATO_1_365,
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => X"FFFF0000AFFFA000"
    )
    port map (
      ADR1 => '1',
      ADR0 => N16_0,
      ADR2 => DSTRB_IBUF_0,
      ADR4 => DATO_1_365,
      ADR3 => N9,
      ADR5 => Q2_345,
      O => DATO_1_rstpot_279
    );
  DATO_0 : X_FF
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DATO_0_CLK,
      I => DATO_0_rstpot_286,
      O => DATO_0_363,
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_0_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => X"FFFF0000F7F78080"
    )
    port map (
      ADR3 => '1',
      ADR2 => N17_0,
      ADR0 => DSTRB_IBUF_0,
      ADR4 => DATO_0_363,
      ADR1 => N9,
      ADR5 => Q2_345,
      O => DATO_0_rstpot_286
    );
  NlwBufferBlock_DATA_0_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATA_0_MLTSRCEDGE_0,
      O => NlwBufferSignal_DATA_0_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_1_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATA_1_MLTSRCEDGE,
      O => NlwBufferSignal_DATA_1_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_2_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATA_2_MLTSRCEDGE_0,
      O => NlwBufferSignal_DATA_2_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_3_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATA_3_MLTSRCEDGE,
      O => NlwBufferSignal_DATA_3_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_4_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATA_4_MLTSRCEDGE_0,
      O => NlwBufferSignal_DATA_4_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_5_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATA_5_MLTSRCEDGE,
      O => NlwBufferSignal_DATA_5_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATO_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_0_363,
      O => NlwBufferSignal_DATO_0_OBUF_I
    );
  NlwBufferBlock_DATA_6_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATA_6_MLTSRCEDGE_0,
      O => NlwBufferSignal_DATA_6_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATO_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_1_365,
      O => NlwBufferSignal_DATO_1_OBUF_I
    );
  NlwBufferBlock_DATA_7_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATA_7_MLTSRCEDGE,
      O => NlwBufferSignal_DATA_7_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATO_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_2_367,
      O => NlwBufferSignal_DATO_2_OBUF_I
    );
  NlwBufferBlock_DATO_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_3_368,
      O => NlwBufferSignal_DATO_3_OBUF_I
    );
  NlwBufferBlock_DATO_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_4_369,
      O => NlwBufferSignal_DATO_4_OBUF_I
    );
  NlwBufferBlock_DATO_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_5_370,
      O => NlwBufferSignal_DATO_5_OBUF_I
    );
  NlwBufferBlock_DATO_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_6_371,
      O => NlwBufferSignal_DATO_6_OBUF_I
    );
  NlwBufferBlock_DATO_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_7_372,
      O => NlwBufferSignal_DATO_7_OBUF_I
    );
  NlwBufferBlock_PWAIT_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PWAIT_OBUF_373,
      O => NlwBufferSignal_PWAIT_OBUF_I
    );
  NlwBufferBlock_DATO_VLD_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_VLD_OBUF_347,
      O => NlwBufferSignal_DATO_VLD_OBUF_I
    );
  NlwBufferBlock_DIR_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_0_374,
      O => NlwBufferSignal_DIR_0_OBUF_I
    );
  NlwBufferBlock_DIR_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_1_375,
      O => NlwBufferSignal_DIR_1_OBUF_I
    );
  NlwBufferBlock_DIR_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_2_376,
      O => NlwBufferSignal_DIR_2_OBUF_I
    );
  NlwBufferBlock_DIR_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_3_377,
      O => NlwBufferSignal_DIR_3_OBUF_I
    );
  NlwBufferBlock_DIR_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_4_378,
      O => NlwBufferSignal_DIR_4_OBUF_I
    );
  NlwBufferBlock_DIR_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_5_379,
      O => NlwBufferSignal_DIR_5_OBUF_I
    );
  NlwBufferBlock_DIR_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_6_380,
      O => NlwBufferSignal_DIR_6_OBUF_I
    );
  NlwBufferBlock_DIR_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_7_381,
      O => NlwBufferSignal_DIR_7_OBUF_I
    );
  NlwBufferBlock_DIR_VLD_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_VLD_OBUF_382,
      O => NlwBufferSignal_DIR_VLD_OBUF_I
    );
  NlwBufferBlock_PWAIT_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWAIT_CLK
    );
  NlwBufferBlock_PWAIT_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ASTRB_DSTRB_AND_7_o_0,
      O => NlwBufferSignal_PWAIT_IN
    );
  NlwBufferBlock_CLK_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP_IBUFG_0,
      O => NlwBufferSignal_CLK_BUFGP_BUFG_IN
    );
  NlwBufferBlock_DIR_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIR_3_CLK
    );
  NlwBufferBlock_DIR_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIR_2_CLK
    );
  NlwBufferBlock_DIR_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIR_1_CLK
    );
  NlwBufferBlock_DIR_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIR_0_CLK
    );
  NlwBufferBlock_Q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Q_CLK
    );
  NlwBufferBlock_DIR_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIR_7_CLK
    );
  NlwBufferBlock_DIR_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIR_6_CLK
    );
  NlwBufferBlock_DIR_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIR_5_CLK
    );
  NlwBufferBlock_DIR_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIR_4_CLK
    );
  NlwBufferBlock_DIR_VLD_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIR_VLD_CLK
    );
  NlwBufferBlock_DATO_VLD_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DATO_VLD_CLK
    );
  NlwBufferBlock_DATO_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DATO_7_CLK
    );
  NlwBufferBlock_DATO_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DATO_6_CLK
    );
  NlwBufferBlock_DATO_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DATO_5_CLK
    );
  NlwBufferBlock_DATO_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DATO_4_CLK
    );
  NlwBufferBlock_Q2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Q2_CLK
    );
  NlwBufferBlock_Q2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DSTRB_IBUF_0,
      O => NlwBufferSignal_Q2_IN
    );
  NlwBufferBlock_DATO_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DATO_3_CLK
    );
  NlwBufferBlock_DATO_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DATO_2_CLK
    );
  NlwBufferBlock_DATO_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DATO_1_CLK
    );
  NlwBufferBlock_DATO_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DATO_0_CLK
    );
  NlwBlock_cnt_epp_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_cnt_epp_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;


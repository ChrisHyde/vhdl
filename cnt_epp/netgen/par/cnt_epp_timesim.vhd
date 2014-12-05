--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: cnt_epp_timesim.vhd
-- /___/   /\     Timestamp: Tue Nov 25 19:46:48 2014
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
  signal DATO_RD_4_IBUF_0 : STD_LOGIC; 
  signal PWRITE_DSTRB_AND_5_o_inv_0 : STD_LOGIC; 
  signal N5_0 : STD_LOGIC; 
  signal DATO_RD_5_IBUF_0 : STD_LOGIC; 
  signal N4_0 : STD_LOGIC; 
  signal DATO_0_324 : STD_LOGIC; 
  signal DATO_RD_6_IBUF_0 : STD_LOGIC; 
  signal N3_0 : STD_LOGIC; 
  signal DATO_1_327 : STD_LOGIC; 
  signal DATO_RD_7_IBUF_0 : STD_LOGIC; 
  signal N2_0 : STD_LOGIC; 
  signal DATO_2_330 : STD_LOGIC; 
  signal DATO_3_331 : STD_LOGIC; 
  signal DATO_4_332 : STD_LOGIC; 
  signal DATO_5_333 : STD_LOGIC; 
  signal DATO_6_334 : STD_LOGIC; 
  signal DATO_7_335 : STD_LOGIC; 
  signal DATO_RD_0_IBUF_0 : STD_LOGIC; 
  signal DATO_RD_1_IBUF_0 : STD_LOGIC; 
  signal PWAIT_OBUF_338 : STD_LOGIC; 
  signal DATO_VLD_OBUF_339 : STD_LOGIC; 
  signal DATO_RD_2_IBUF_0 : STD_LOGIC; 
  signal DATO_RD_3_IBUF_0 : STD_LOGIC; 
  signal ASTRB_IBUF_0 : STD_LOGIC; 
  signal DIR_0_343 : STD_LOGIC; 
  signal DIR_1_344 : STD_LOGIC; 
  signal DIR_2_345 : STD_LOGIC; 
  signal DIR_3_346 : STD_LOGIC; 
  signal DIR_4_347 : STD_LOGIC; 
  signal DIR_5_348 : STD_LOGIC; 
  signal DIR_6_349 : STD_LOGIC; 
  signal DIR_7_350 : STD_LOGIC; 
  signal RST_IBUF_0 : STD_LOGIC; 
  signal DIR_VLD_OBUF_352 : STD_LOGIC; 
  signal PWRITE_IBUF_0 : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal DSTRB_IBUF_0 : STD_LOGIC; 
  signal CE_RD_OBUF_356 : STD_LOGIC; 
  signal CLK_BUFGP : STD_LOGIC; 
  signal PWRITE_PWRITE_OR_2_o : STD_LOGIC; 
  signal N7_0 : STD_LOGIC; 
  signal Q2_360 : STD_LOGIC; 
  signal N6_0 : STD_LOGIC; 
  signal N9_0 : STD_LOGIC; 
  signal Q_363 : STD_LOGIC; 
  signal N8_0 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal DATO_RD_0_IBUF_37 : STD_LOGIC; 
  signal DATO_RD_1_IBUF_40 : STD_LOGIC; 
  signal DATO_RD_2_IBUF_47 : STD_LOGIC; 
  signal DATO_RD_3_IBUF_50 : STD_LOGIC; 
  signal ASTRB_IBUF_53 : STD_LOGIC; 
  signal DATO_RD_4_IBUF_56 : STD_LOGIC; 
  signal DATO_RD_5_IBUF_59 : STD_LOGIC; 
  signal DATO_RD_6_IBUF_62 : STD_LOGIC; 
  signal DATO_RD_7_IBUF_65 : STD_LOGIC; 
  signal RST_IBUF_84 : STD_LOGIC; 
  signal PWRITE_IBUF_89 : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_92 : STD_LOGIC; 
  signal DSTRB_IBUF_95 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal PWRITE_DSTRB_AND_5_o_inv : STD_LOGIC; 
  signal S11 : STD_LOGIC; 
  signal Q_pack_10 : STD_LOGIC; 
  signal ASTRB_IBUF_rt_163 : STD_LOGIC; 
  signal DIR_0_rstpot_162 : STD_LOGIC; 
  signal DIR_3_rstpot_156 : STD_LOGIC; 
  signal DIR_2_rstpot_147 : STD_LOGIC; 
  signal DIR_1_rstpot_140 : STD_LOGIC; 
  signal DIR_4_rstpot_195 : STD_LOGIC; 
  signal DIR_5_rstpot_188 : STD_LOGIC; 
  signal DIR_6_rstpot_181 : STD_LOGIC; 
  signal DIR_7_rstpot_173 : STD_LOGIC; 
  signal CE_RD_rstpot_203 : STD_LOGIC; 
  signal S22 : STD_LOGIC; 
  signal DATO_4_rstpot_239 : STD_LOGIC; 
  signal DATO_5_rstpot_232 : STD_LOGIC; 
  signal DATO_6_rstpot_225 : STD_LOGIC; 
  signal DATO_7_rstpot_217 : STD_LOGIC; 
  signal Q2_pack_10 : STD_LOGIC; 
  signal DSTRB_IBUF_rt_270 : STD_LOGIC; 
  signal DATO_0_rstpot_269 : STD_LOGIC; 
  signal DATO_3_rstpot_263 : STD_LOGIC; 
  signal DATO_2_rstpot_254 : STD_LOGIC; 
  signal DATO_1_rstpot_247 : STD_LOGIC; 
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
  signal NlwBufferSignal_CE_RD_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_PWAIT_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWAIT_IN : STD_LOGIC; 
  signal NlwBufferSignal_CLK_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_DATA_0_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_1_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_2_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_3_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DIR_VLD_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIR_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIR_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIR_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIR_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIR_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIR_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIR_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIR_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_CE_RD_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_VLD_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Q2_CLK : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
begin
  DATA_4_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD225"
    )
    port map (
      I => NlwBufferSignal_DATA_4_IOBUF_OBUFT_I,
      O => DATA(4),
      CTL => PWRITE_DSTRB_AND_5_o_inv_0
    );
  DATA_4_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD225",
      PATHPULSE => 202 ps
    )
    port map (
      O => N5,
      I => DATA(4)
    );
  ProtoComp0_IMUX : X_BUF
    generic map(
      LOC => "PAD225",
      PATHPULSE => 202 ps
    )
    port map (
      I => N5,
      O => N5_0
    );
  DATA_5_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD226"
    )
    port map (
      I => NlwBufferSignal_DATA_5_IOBUF_OBUFT_I,
      O => DATA(5),
      CTL => PWRITE_DSTRB_AND_5_o_inv_0
    );
  DATA_5_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD226",
      PATHPULSE => 202 ps
    )
    port map (
      O => N4,
      I => DATA(5)
    );
  ProtoComp0_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD226",
      PATHPULSE => 202 ps
    )
    port map (
      I => N4,
      O => N4_0
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
      CTL => PWRITE_DSTRB_AND_5_o_inv_0
    );
  DATA_6_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD229",
      PATHPULSE => 202 ps
    )
    port map (
      O => N3,
      I => DATA(6)
    );
  ProtoComp0_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD229",
      PATHPULSE => 202 ps
    )
    port map (
      I => N3,
      O => N3_0
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
      CTL => PWRITE_DSTRB_AND_5_o_inv_0
    );
  DATA_7_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD230",
      PATHPULSE => 202 ps
    )
    port map (
      O => N2,
      I => DATA(7)
    );
  ProtoComp0_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD230",
      PATHPULSE => 202 ps
    )
    port map (
      I => N2,
      O => N2_0
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
      LOC => "PAD261",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO_RD_0_IBUF_37,
      I => DATO_RD(0)
    );
  ProtoComp2_IMUX : X_BUF
    generic map(
      LOC => "PAD261",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_RD_0_IBUF_37,
      O => DATO_RD_0_IBUF_0
    );
  DATO_RD_1_IBUF : X_BUF
    generic map(
      LOC => "PAD262",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO_RD_1_IBUF_40,
      I => DATO_RD(1)
    );
  ProtoComp2_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD262",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_RD_1_IBUF_40,
      O => DATO_RD_1_IBUF_0
    );
  PWAIT_OBUF : X_OBUF
    generic map(
      LOC => "PAD259"
    )
    port map (
      I => NlwBufferSignal_PWAIT_OBUF_I,
      O => PWAIT
    );
  DATO_VLD_OBUF : X_OBUF
    generic map(
      LOC => "PAD227"
    )
    port map (
      I => NlwBufferSignal_DATO_VLD_OBUF_I,
      O => DATO_VLD
    );
  DATO_RD_2_IBUF : X_BUF
    generic map(
      LOC => "PAD291",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO_RD_2_IBUF_47,
      I => DATO_RD(2)
    );
  ProtoComp2_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD291",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_RD_2_IBUF_47,
      O => DATO_RD_2_IBUF_0
    );
  DATO_RD_3_IBUF : X_BUF
    generic map(
      LOC => "PAD292",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO_RD_3_IBUF_50,
      I => DATO_RD(3)
    );
  ProtoComp2_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD292",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_RD_3_IBUF_50,
      O => DATO_RD_3_IBUF_0
    );
  ASTRB_IBUF : X_BUF
    generic map(
      LOC => "PAD219",
      PATHPULSE => 202 ps
    )
    port map (
      O => ASTRB_IBUF_53,
      I => ASTRB
    );
  ProtoComp2_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD219",
      PATHPULSE => 202 ps
    )
    port map (
      I => ASTRB_IBUF_53,
      O => ASTRB_IBUF_0
    );
  DATO_RD_4_IBUF : X_BUF
    generic map(
      LOC => "PAD293",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO_RD_4_IBUF_56,
      I => DATO_RD(4)
    );
  ProtoComp2_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD293",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_RD_4_IBUF_56,
      O => DATO_RD_4_IBUF_0
    );
  DATO_RD_5_IBUF : X_BUF
    generic map(
      LOC => "PAD294",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO_RD_5_IBUF_59,
      I => DATO_RD(5)
    );
  ProtoComp2_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD294",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_RD_5_IBUF_59,
      O => DATO_RD_5_IBUF_0
    );
  DATO_RD_6_IBUF : X_BUF
    generic map(
      LOC => "PAD295",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO_RD_6_IBUF_62,
      I => DATO_RD(6)
    );
  ProtoComp2_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD295",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_RD_6_IBUF_62,
      O => DATO_RD_6_IBUF_0
    );
  DATO_RD_7_IBUF : X_BUF
    generic map(
      LOC => "PAD296",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO_RD_7_IBUF_65,
      I => DATO_RD(7)
    );
  ProtoComp2_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD296",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_RD_7_IBUF_65,
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
      O => RST_IBUF_84,
      I => RST
    );
  ProtoComp2_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD228",
      PATHPULSE => 202 ps
    )
    port map (
      I => RST_IBUF_84,
      O => RST_IBUF_0
    );
  DIR_VLD_OBUF : X_OBUF
    generic map(
      LOC => "PAD260"
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
      O => PWRITE_IBUF_89,
      I => PWRITE
    );
  ProtoComp2_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD256",
      PATHPULSE => 202 ps
    )
    port map (
      I => PWRITE_IBUF_89,
      O => PWRITE_IBUF_0
    );
  CLK_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD314",
      PATHPULSE => 202 ps
    )
    port map (
      O => CLK_BUFGP_IBUFG_92,
      I => CLK
    );
  ProtoComp2_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD314",
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP_IBUFG_92,
      O => CLK_BUFGP_IBUFG_0
    );
  DSTRB_IBUF : X_BUF
    generic map(
      LOC => "PAD220",
      PATHPULSE => 202 ps
    )
    port map (
      O => DSTRB_IBUF_95,
      I => DSTRB
    );
  ProtoComp2_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD220",
      PATHPULSE => 202 ps
    )
    port map (
      I => DSTRB_IBUF_95,
      O => DSTRB_IBUF_0
    );
  CE_RD_OBUF : X_OBUF
    generic map(
      LOC => "PAD231"
    )
    port map (
      I => NlwBufferSignal_CE_RD_OBUF_I,
      O => CE_RD
    );
  PWAIT_134 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWAIT_CLK,
      I => NlwBufferSignal_PWAIT_IN,
      O => PWAIT_OBUF_338,
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
  DATA_0_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD221"
    )
    port map (
      I => NlwBufferSignal_DATA_0_IOBUF_OBUFT_I,
      O => DATA(0),
      CTL => PWRITE_DSTRB_AND_5_o_inv_0
    );
  DATA_0_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD221",
      PATHPULSE => 202 ps
    )
    port map (
      O => N9,
      I => DATA(0)
    );
  ProtoComp0_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD221",
      PATHPULSE => 202 ps
    )
    port map (
      I => N9,
      O => N9_0
    );
  DATA_1_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD222"
    )
    port map (
      I => NlwBufferSignal_DATA_1_IOBUF_OBUFT_I,
      O => DATA(1),
      CTL => PWRITE_DSTRB_AND_5_o_inv_0
    );
  DATA_1_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD222",
      PATHPULSE => 202 ps
    )
    port map (
      O => N8,
      I => DATA(1)
    );
  ProtoComp0_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD222",
      PATHPULSE => 202 ps
    )
    port map (
      I => N8,
      O => N8_0
    );
  DATA_2_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD223"
    )
    port map (
      I => NlwBufferSignal_DATA_2_IOBUF_OBUFT_I,
      O => DATA(2),
      CTL => PWRITE_DSTRB_AND_5_o_inv_0
    );
  DATA_2_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD223",
      PATHPULSE => 202 ps
    )
    port map (
      O => N7,
      I => DATA(2)
    );
  ProtoComp0_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD223",
      PATHPULSE => 202 ps
    )
    port map (
      I => N7,
      O => N7_0
    );
  DATA_3_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD224"
    )
    port map (
      I => NlwBufferSignal_DATA_3_IOBUF_OBUFT_I,
      O => DATA(3),
      CTL => PWRITE_DSTRB_AND_5_o_inv_0
    );
  DATA_3_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD224",
      PATHPULSE => 202 ps
    )
    port map (
      O => N6,
      I => DATA(3)
    );
  ProtoComp0_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD224",
      PATHPULSE => 202 ps
    )
    port map (
      I => N6,
      O => N6_0
    );
  PWRITE_PWRITE_OR_2_o_PWRITE_PWRITE_OR_2_o_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PWRITE_DSTRB_AND_5_o_inv,
      O => PWRITE_DSTRB_AND_5_o_inv_0
    );
  PWRITE_PWRITE_OR_2_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y3",
      INIT => X"0F3F0F3F0F3F0F3F"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => DSTRB_IBUF_0,
      ADR1 => ASTRB_IBUF_0,
      ADR3 => PWRITE_IBUF_0,
      ADR5 => '1',
      O => PWRITE_PWRITE_OR_2_o
    );
  PWRITE_DSTRB_AND_5_o_inv1 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y3",
      INIT => X"0FFF0FFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => DSTRB_IBUF_0,
      ADR4 => '1',
      ADR3 => PWRITE_IBUF_0,
      O => PWRITE_DSTRB_AND_5_o_inv
    );
  DIR_VLD_162 : X_FF
    generic map(
      LOC => "SLICE_X1Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DIR_VLD_CLK,
      I => S11,
      O => DIR_VLD_OBUF_352,
      RST => RST_IBUF_0,
      SET => GND
    );
  S111 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y3",
      INIT => X"00000F0000000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => ASTRB_IBUF_0,
      ADR2 => PWRITE_IBUF_0,
      ADR4 => Q_363,
      O => S11
    );
  DIR_3_DIR_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Q_pack_10,
      O => Q_363
    );
  DIR_3 : X_FF
    generic map(
      LOC => "SLICE_X13Y0",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DIR_3_CLK,
      I => DIR_3_rstpot_156,
      O => DIR_3_346,
      RST => RST_IBUF_0,
      SET => GND
    );
  DIR_3_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y0",
      INIT => X"FFFFEEFF00002200"
    )
    port map (
      ADR2 => '1',
      ADR0 => N6_0,
      ADR1 => PWRITE_IBUF_0,
      ADR5 => DIR_3_346,
      ADR3 => ASTRB_IBUF_0,
      ADR4 => Q_363,
      O => DIR_3_rstpot_156
    );
  DIR_2 : X_FF
    generic map(
      LOC => "SLICE_X13Y0",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DIR_2_CLK,
      I => DIR_2_rstpot_147,
      O => DIR_2_345,
      RST => RST_IBUF_0,
      SET => GND
    );
  DIR_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y0",
      INIT => X"FFFF0000FFF30C00"
    )
    port map (
      ADR0 => '1',
      ADR3 => N7_0,
      ADR5 => PWRITE_IBUF_0,
      ADR4 => DIR_2_345,
      ADR1 => ASTRB_IBUF_0,
      ADR2 => Q_363,
      O => DIR_2_rstpot_147
    );
  DIR_1 : X_FF
    generic map(
      LOC => "SLICE_X13Y0",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DIR_1_CLK,
      I => DIR_1_rstpot_140,
      O => DIR_1_344,
      RST => RST_IBUF_0,
      SET => GND
    );
  DIR_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y0",
      INIT => X"FFFF0000FFF500A0"
    )
    port map (
      ADR1 => '1',
      ADR2 => N8_0,
      ADR3 => PWRITE_IBUF_0,
      ADR4 => DIR_1_344,
      ADR0 => ASTRB_IBUF_0,
      ADR5 => Q_363,
      O => DIR_1_rstpot_140
    );
  DIR_0 : X_FF
    generic map(
      LOC => "SLICE_X13Y0",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DIR_0_CLK,
      I => DIR_0_rstpot_162,
      O => DIR_0_343,
      RST => RST_IBUF_0,
      SET => GND
    );
  DIR_0_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y0",
      INIT => X"FFFD0200FFFD0200"
    )
    port map (
      ADR3 => N9_0,
      ADR2 => PWRITE_IBUF_0,
      ADR0 => ASTRB_IBUF_0,
      ADR4 => DIR_0_343,
      ADR1 => Q_363,
      ADR5 => '1',
      O => DIR_0_rstpot_162
    );
  ASTRB_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y0",
      INIT => X"AAAAAAAA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => ASTRB_IBUF_0,
      ADR3 => '1',
      ADR4 => '1',
      O => ASTRB_IBUF_rt_163
    );
  Q : X_FF
    generic map(
      LOC => "SLICE_X13Y0",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Q_CLK,
      I => ASTRB_IBUF_rt_163,
      O => Q_pack_10,
      RST => RST_IBUF_0,
      SET => GND
    );
  DIR_7 : X_FF
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DIR_7_CLK,
      I => DIR_7_rstpot_173,
      O => DIR_7_350,
      RST => RST_IBUF_0,
      SET => GND
    );
  DIR_7_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => X"FFFFFBFB00000808"
    )
    port map (
      ADR3 => '1',
      ADR0 => N2_0,
      ADR2 => PWRITE_IBUF_0,
      ADR5 => DIR_7_350,
      ADR1 => ASTRB_IBUF_0,
      ADR4 => Q_363,
      O => DIR_7_rstpot_173
    );
  DIR_6 : X_FF
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DIR_6_CLK,
      I => DIR_6_rstpot_181,
      O => DIR_6_349,
      RST => RST_IBUF_0,
      SET => GND
    );
  DIR_6_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => X"FFFFFCFF00003000"
    )
    port map (
      ADR0 => '1',
      ADR2 => N3_0,
      ADR1 => PWRITE_IBUF_0,
      ADR5 => DIR_6_349,
      ADR3 => ASTRB_IBUF_0,
      ADR4 => Q_363,
      O => DIR_6_rstpot_181
    );
  DIR_5 : X_FF
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DIR_5_CLK,
      I => DIR_5_rstpot_188,
      O => DIR_5_348,
      RST => RST_IBUF_0,
      SET => GND
    );
  DIR_5_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => X"FFFF0000EEFF4400"
    )
    port map (
      ADR2 => '1',
      ADR1 => N4_0,
      ADR0 => PWRITE_IBUF_0,
      ADR4 => DIR_5_348,
      ADR3 => ASTRB_IBUF_0,
      ADR5 => Q_363,
      O => DIR_5_rstpot_188
    );
  DIR_4 : X_FF
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DIR_4_CLK,
      I => DIR_4_rstpot_195,
      O => DIR_4_347,
      RST => RST_IBUF_0,
      SET => GND
    );
  DIR_4_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => X"FFFFFBFB00004040"
    )
    port map (
      ADR3 => '1',
      ADR2 => N5_0,
      ADR0 => PWRITE_IBUF_0,
      ADR5 => DIR_4_347,
      ADR1 => ASTRB_IBUF_0,
      ADR4 => Q_363,
      O => DIR_4_rstpot_195
    );
  CE_RD_185 : X_FF
    generic map(
      LOC => "SLICE_X15Y2",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_CE_RD_CLK,
      I => CE_RD_rstpot_203,
      O => CE_RD_OBUF_356,
      SET => RST_IBUF_0,
      RST => GND
    );
  CE_RD_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X15Y2",
      INIT => X"F0F0FFFFF0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR5 => CE_RD_OBUF_356,
      ADR2 => DSTRB_IBUF_0,
      ADR4 => PWRITE_IBUF_0,
      O => CE_RD_rstpot_203
    );
  DATO_VLD_188 : X_FF
    generic map(
      LOC => "SLICE_X17Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DATO_VLD_CLK,
      I => S22,
      O => DATO_VLD_OBUF_339,
      RST => RST_IBUF_0,
      SET => GND
    );
  S221 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y2",
      INIT => X"000000000000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => DSTRB_IBUF_0,
      ADR4 => PWRITE_IBUF_0,
      ADR5 => Q2_360,
      O => S22
    );
  DATO_7 : X_FF
    generic map(
      LOC => "SLICE_X19Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DATO_7_CLK,
      I => DATO_7_rstpot_217,
      O => DATO_7_335,
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_7_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y2",
      INIT => X"FFFF0000FFF50A00"
    )
    port map (
      ADR1 => '1',
      ADR3 => N2_0,
      ADR2 => PWRITE_IBUF_0,
      ADR4 => DATO_7_335,
      ADR0 => DSTRB_IBUF_0,
      ADR5 => Q2_360,
      O => DATO_7_rstpot_217
    );
  DATO_6 : X_FF
    generic map(
      LOC => "SLICE_X19Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DATO_6_CLK,
      I => DATO_6_rstpot_225,
      O => DATO_6_334,
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_6_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y2",
      INIT => X"FFFF0000FDFD0808"
    )
    port map (
      ADR3 => '1',
      ADR1 => N3_0,
      ADR2 => PWRITE_IBUF_0,
      ADR4 => DATO_6_334,
      ADR0 => DSTRB_IBUF_0,
      ADR5 => Q2_360,
      O => DATO_6_rstpot_225
    );
  DATO_5 : X_FF
    generic map(
      LOC => "SLICE_X19Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DATO_5_CLK,
      I => DATO_5_rstpot_232,
      O => DATO_5_333,
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_5_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y2",
      INIT => X"FFFFFFAF000000A0"
    )
    port map (
      ADR1 => '1',
      ADR0 => N4_0,
      ADR3 => PWRITE_IBUF_0,
      ADR5 => DATO_5_333,
      ADR2 => DSTRB_IBUF_0,
      ADR4 => Q2_360,
      O => DATO_5_rstpot_232
    );
  DATO_4 : X_FF
    generic map(
      LOC => "SLICE_X19Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DATO_4_CLK,
      I => DATO_4_rstpot_239,
      O => DATO_4_332,
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_4_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y2",
      INIT => X"FFFFFCFF00003000"
    )
    port map (
      ADR0 => '1',
      ADR2 => N5_0,
      ADR1 => PWRITE_IBUF_0,
      ADR5 => DATO_4_332,
      ADR3 => DSTRB_IBUF_0,
      ADR4 => Q2_360,
      O => DATO_4_rstpot_239
    );
  DATO_3_DATO_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Q2_pack_10,
      O => Q2_360
    );
  DATO_3 : X_FF
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DATO_3_CLK,
      I => DATO_3_rstpot_263,
      O => DATO_3_331,
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_3_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => X"FFFFFCFF00003000"
    )
    port map (
      ADR0 => '1',
      ADR2 => N6_0,
      ADR1 => PWRITE_IBUF_0,
      ADR5 => DATO_3_331,
      ADR3 => DSTRB_IBUF_0,
      ADR4 => Q2_360,
      O => DATO_3_rstpot_263
    );
  DATO_2 : X_FF
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DATO_2_CLK,
      I => DATO_2_rstpot_254,
      O => DATO_2_330,
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => X"FFFF0500FAFF0000"
    )
    port map (
      ADR1 => '1',
      ADR5 => N7_0,
      ADR0 => PWRITE_IBUF_0,
      ADR4 => DATO_2_330,
      ADR3 => DSTRB_IBUF_0,
      ADR2 => Q2_360,
      O => DATO_2_rstpot_254
    );
  DATO_1 : X_FF
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DATO_1_CLK,
      I => DATO_1_rstpot_247,
      O => DATO_1_327,
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => X"FFFF0000EFEF2020"
    )
    port map (
      ADR3 => '1',
      ADR0 => N8_0,
      ADR1 => PWRITE_IBUF_0,
      ADR4 => DATO_1_327,
      ADR2 => DSTRB_IBUF_0,
      ADR5 => Q2_360,
      O => DATO_1_rstpot_247
    );
  DATO_0 : X_FF
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DATO_0_CLK,
      I => DATO_0_rstpot_269,
      O => DATO_0_324,
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_0_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => X"FFFD0020FFFD0020"
    )
    port map (
      ADR2 => N9_0,
      ADR3 => PWRITE_IBUF_0,
      ADR0 => DSTRB_IBUF_0,
      ADR4 => DATO_0_324,
      ADR1 => Q2_360,
      ADR5 => '1',
      O => DATO_0_rstpot_269
    );
  DSTRB_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => X"AAAAAAAA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => DSTRB_IBUF_0,
      ADR3 => '1',
      ADR4 => '1',
      O => DSTRB_IBUF_rt_270
    );
  Q2 : X_FF
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Q2_CLK,
      I => DSTRB_IBUF_rt_270,
      O => Q2_pack_10,
      RST => RST_IBUF_0,
      SET => GND
    );
  NlwBufferBlock_DATA_4_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_RD_4_IBUF_0,
      O => NlwBufferSignal_DATA_4_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_5_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_RD_5_IBUF_0,
      O => NlwBufferSignal_DATA_5_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATO_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_0_324,
      O => NlwBufferSignal_DATO_0_OBUF_I
    );
  NlwBufferBlock_DATA_6_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_RD_6_IBUF_0,
      O => NlwBufferSignal_DATA_6_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATO_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_1_327,
      O => NlwBufferSignal_DATO_1_OBUF_I
    );
  NlwBufferBlock_DATA_7_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_RD_7_IBUF_0,
      O => NlwBufferSignal_DATA_7_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATO_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_2_330,
      O => NlwBufferSignal_DATO_2_OBUF_I
    );
  NlwBufferBlock_DATO_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_3_331,
      O => NlwBufferSignal_DATO_3_OBUF_I
    );
  NlwBufferBlock_DATO_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_4_332,
      O => NlwBufferSignal_DATO_4_OBUF_I
    );
  NlwBufferBlock_DATO_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_5_333,
      O => NlwBufferSignal_DATO_5_OBUF_I
    );
  NlwBufferBlock_DATO_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_6_334,
      O => NlwBufferSignal_DATO_6_OBUF_I
    );
  NlwBufferBlock_DATO_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_7_335,
      O => NlwBufferSignal_DATO_7_OBUF_I
    );
  NlwBufferBlock_PWAIT_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PWAIT_OBUF_338,
      O => NlwBufferSignal_PWAIT_OBUF_I
    );
  NlwBufferBlock_DATO_VLD_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_VLD_OBUF_339,
      O => NlwBufferSignal_DATO_VLD_OBUF_I
    );
  NlwBufferBlock_DIR_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_0_343,
      O => NlwBufferSignal_DIR_0_OBUF_I
    );
  NlwBufferBlock_DIR_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_1_344,
      O => NlwBufferSignal_DIR_1_OBUF_I
    );
  NlwBufferBlock_DIR_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_2_345,
      O => NlwBufferSignal_DIR_2_OBUF_I
    );
  NlwBufferBlock_DIR_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_3_346,
      O => NlwBufferSignal_DIR_3_OBUF_I
    );
  NlwBufferBlock_DIR_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_4_347,
      O => NlwBufferSignal_DIR_4_OBUF_I
    );
  NlwBufferBlock_DIR_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_5_348,
      O => NlwBufferSignal_DIR_5_OBUF_I
    );
  NlwBufferBlock_DIR_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_6_349,
      O => NlwBufferSignal_DIR_6_OBUF_I
    );
  NlwBufferBlock_DIR_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_7_350,
      O => NlwBufferSignal_DIR_7_OBUF_I
    );
  NlwBufferBlock_DIR_VLD_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_VLD_OBUF_352,
      O => NlwBufferSignal_DIR_VLD_OBUF_I
    );
  NlwBufferBlock_CE_RD_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CE_RD_OBUF_356,
      O => NlwBufferSignal_CE_RD_OBUF_I
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
      I => PWRITE_PWRITE_OR_2_o,
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
  NlwBufferBlock_DATA_0_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_RD_0_IBUF_0,
      O => NlwBufferSignal_DATA_0_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_1_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_RD_1_IBUF_0,
      O => NlwBufferSignal_DATA_1_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_2_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_RD_2_IBUF_0,
      O => NlwBufferSignal_DATA_2_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_3_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_RD_3_IBUF_0,
      O => NlwBufferSignal_DATA_3_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DIR_VLD_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIR_VLD_CLK
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
  NlwBufferBlock_CE_RD_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_CE_RD_CLK
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
  NlwBufferBlock_Q2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Q2_CLK
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


--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: cnt_epp_timesim.vhd
-- /___/   /\     Timestamp: Thu Nov 13 12:33:56 2014
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
  signal DATO_2_308 : STD_LOGIC; 
  signal DATO_3_309 : STD_LOGIC; 
  signal DATO_4_310 : STD_LOGIC; 
  signal DATO_5_311 : STD_LOGIC; 
  signal DATO_6_312 : STD_LOGIC; 
  signal DATO_7_313 : STD_LOGIC; 
  signal DATO_RD_0_IBUF_0 : STD_LOGIC; 
  signal DATO_RD_1_IBUF_0 : STD_LOGIC; 
  signal PWAIT_OBUF_316 : STD_LOGIC; 
  signal DATO_VLD_OBUF_317 : STD_LOGIC; 
  signal DATO_RD_2_IBUF_0 : STD_LOGIC; 
  signal DATO_RD_3_IBUF_0 : STD_LOGIC; 
  signal ASTRB_IBUF_0 : STD_LOGIC; 
  signal DATO_RD_4_IBUF_0 : STD_LOGIC; 
  signal DATO_RD_5_IBUF_0 : STD_LOGIC; 
  signal DATO_RD_6_IBUF_0 : STD_LOGIC; 
  signal DATO_RD_7_IBUF_0 : STD_LOGIC; 
  signal DIR_0_325 : STD_LOGIC; 
  signal DIR_1_326 : STD_LOGIC; 
  signal DIR_2_327 : STD_LOGIC; 
  signal DIR_3_328 : STD_LOGIC; 
  signal DIR_4_329 : STD_LOGIC; 
  signal DIR_5_330 : STD_LOGIC; 
  signal DIR_6_331 : STD_LOGIC; 
  signal DIR_7_332 : STD_LOGIC; 
  signal RST_IBUF_0 : STD_LOGIC; 
  signal DIR_VLD_OBUF_334 : STD_LOGIC; 
  signal PWRITE_IBUF_0 : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal DSTRB_IBUF_0 : STD_LOGIC; 
  signal CLK_BUFGP : STD_LOGIC; 
  signal ASTRB_DSTRB_AND_6_o_0 : STD_LOGIC; 
  signal N7_0 : STD_LOGIC; 
  signal Q2_341 : STD_LOGIC; 
  signal N6_0 : STD_LOGIC; 
  signal N5_0 : STD_LOGIC; 
  signal N4_0 : STD_LOGIC; 
  signal N3_0 : STD_LOGIC; 
  signal N2_0 : STD_LOGIC; 
  signal N9_0 : STD_LOGIC; 
  signal Q_348 : STD_LOGIC; 
  signal N8_0 : STD_LOGIC; 
  signal DATO_0_350 : STD_LOGIC; 
  signal DATO_1_351 : STD_LOGIC; 
  signal PWRITE_DSTRB_AND_5_o_inv_0 : STD_LOGIC; 
  signal DATO_RD_0_IBUF_13 : STD_LOGIC; 
  signal DATO_RD_1_IBUF_16 : STD_LOGIC; 
  signal DATO_RD_2_IBUF_23 : STD_LOGIC; 
  signal DATO_RD_3_IBUF_26 : STD_LOGIC; 
  signal ASTRB_IBUF_29 : STD_LOGIC; 
  signal DATO_RD_4_IBUF_32 : STD_LOGIC; 
  signal DATO_RD_5_IBUF_35 : STD_LOGIC; 
  signal DATO_RD_6_IBUF_38 : STD_LOGIC; 
  signal DATO_RD_7_IBUF_41 : STD_LOGIC; 
  signal RST_IBUF_60 : STD_LOGIC; 
  signal PWRITE_IBUF_65 : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_68 : STD_LOGIC; 
  signal DSTRB_IBUF_71 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal DATO_0_rstpot_149 : STD_LOGIC; 
  signal DSTRB_IBUF_rt_148 : STD_LOGIC; 
  signal Q2_pack_10 : STD_LOGIC; 
  signal DATO_3_rstpot_139 : STD_LOGIC; 
  signal DATO_2_rstpot_131 : STD_LOGIC; 
  signal DATO_1_rstpot_124 : STD_LOGIC; 
  signal PWRITE_DSTRB_AND_5_o_inv : STD_LOGIC; 
  signal S22 : STD_LOGIC; 
  signal DATO_4_rstpot_189 : STD_LOGIC; 
  signal DATO_5_rstpot_182 : STD_LOGIC; 
  signal DATO_6_rstpot_175 : STD_LOGIC; 
  signal DATO_7_rstpot_167 : STD_LOGIC; 
  signal ASTRB_DSTRB_AND_6_o : STD_LOGIC; 
  signal S11 : STD_LOGIC; 
  signal DIR_4_rstpot_229 : STD_LOGIC; 
  signal DIR_5_rstpot_222 : STD_LOGIC; 
  signal DIR_6_rstpot_215 : STD_LOGIC; 
  signal DIR_7_rstpot_207 : STD_LOGIC; 
  signal DIR_0_rstpot_261 : STD_LOGIC; 
  signal ASTRB_IBUF_rt_260 : STD_LOGIC; 
  signal Q_pack_10 : STD_LOGIC; 
  signal DIR_3_rstpot_251 : STD_LOGIC; 
  signal DIR_2_rstpot_243 : STD_LOGIC; 
  signal DIR_1_rstpot_236 : STD_LOGIC; 
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
  signal NlwBufferSignal_DATO_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Q2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_VLD_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIR_VLD_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIR_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIR_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIR_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIR_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIR_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIR_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIR_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIR_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Q_CLK : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
begin
  DATO_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD253"
    )
    port map (
      I => NlwBufferSignal_DATO_2_OBUF_I,
      O => DATO(2)
    );
  DATO_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD254"
    )
    port map (
      I => NlwBufferSignal_DATO_3_OBUF_I,
      O => DATO(3)
    );
  DATO_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD255"
    )
    port map (
      I => NlwBufferSignal_DATO_4_OBUF_I,
      O => DATO(4)
    );
  DATO_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD256"
    )
    port map (
      I => NlwBufferSignal_DATO_5_OBUF_I,
      O => DATO(5)
    );
  DATO_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD257"
    )
    port map (
      I => NlwBufferSignal_DATO_6_OBUF_I,
      O => DATO(6)
    );
  DATO_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD258"
    )
    port map (
      I => NlwBufferSignal_DATO_7_OBUF_I,
      O => DATO(7)
    );
  DATO_RD_0_IBUF : X_BUF
    generic map(
      LOC => "PAD260",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO_RD_0_IBUF_13,
      I => DATO_RD(0)
    );
  ProtoComp1_IMUX : X_BUF
    generic map(
      LOC => "PAD260",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_RD_0_IBUF_13,
      O => DATO_RD_0_IBUF_0
    );
  DATO_RD_1_IBUF : X_BUF
    generic map(
      LOC => "PAD261",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO_RD_1_IBUF_16,
      I => DATO_RD(1)
    );
  ProtoComp1_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD261",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_RD_1_IBUF_16,
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
      LOC => "PAD232"
    )
    port map (
      I => NlwBufferSignal_DATO_VLD_OBUF_I,
      O => DATO_VLD
    );
  DATO_RD_2_IBUF : X_BUF
    generic map(
      LOC => "PAD262",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO_RD_2_IBUF_23,
      I => DATO_RD(2)
    );
  ProtoComp1_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD262",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_RD_2_IBUF_23,
      O => DATO_RD_2_IBUF_0
    );
  DATO_RD_3_IBUF : X_BUF
    generic map(
      LOC => "PAD291",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO_RD_3_IBUF_26,
      I => DATO_RD(3)
    );
  ProtoComp1_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD291",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_RD_3_IBUF_26,
      O => DATO_RD_3_IBUF_0
    );
  ASTRB_IBUF : X_BUF
    generic map(
      LOC => "PAD227",
      PATHPULSE => 202 ps
    )
    port map (
      O => ASTRB_IBUF_29,
      I => ASTRB
    );
  ProtoComp1_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD227",
      PATHPULSE => 202 ps
    )
    port map (
      I => ASTRB_IBUF_29,
      O => ASTRB_IBUF_0
    );
  DATO_RD_4_IBUF : X_BUF
    generic map(
      LOC => "PAD292",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO_RD_4_IBUF_32,
      I => DATO_RD(4)
    );
  ProtoComp1_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD292",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_RD_4_IBUF_32,
      O => DATO_RD_4_IBUF_0
    );
  DATO_RD_5_IBUF : X_BUF
    generic map(
      LOC => "PAD293",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO_RD_5_IBUF_35,
      I => DATO_RD(5)
    );
  ProtoComp1_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD293",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_RD_5_IBUF_35,
      O => DATO_RD_5_IBUF_0
    );
  DATO_RD_6_IBUF : X_BUF
    generic map(
      LOC => "PAD294",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO_RD_6_IBUF_38,
      I => DATO_RD(6)
    );
  ProtoComp1_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD294",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_RD_6_IBUF_38,
      O => DATO_RD_6_IBUF_0
    );
  DATO_RD_7_IBUF : X_BUF
    generic map(
      LOC => "PAD295",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO_RD_7_IBUF_41,
      I => DATO_RD(7)
    );
  ProtoComp1_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD295",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_RD_7_IBUF_41,
      O => DATO_RD_7_IBUF_0
    );
  DIR_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD209"
    )
    port map (
      I => NlwBufferSignal_DIR_0_OBUF_I,
      O => DIR(0)
    );
  DIR_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD210"
    )
    port map (
      I => NlwBufferSignal_DIR_1_OBUF_I,
      O => DIR(1)
    );
  DIR_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD211"
    )
    port map (
      I => NlwBufferSignal_DIR_2_OBUF_I,
      O => DIR(2)
    );
  DIR_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD212"
    )
    port map (
      I => NlwBufferSignal_DIR_3_OBUF_I,
      O => DIR(3)
    );
  DIR_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD213"
    )
    port map (
      I => NlwBufferSignal_DIR_4_OBUF_I,
      O => DIR(4)
    );
  DIR_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD214"
    )
    port map (
      I => NlwBufferSignal_DIR_5_OBUF_I,
      O => DIR(5)
    );
  DIR_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD215"
    )
    port map (
      I => NlwBufferSignal_DIR_6_OBUF_I,
      O => DIR(6)
    );
  DIR_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD216"
    )
    port map (
      I => NlwBufferSignal_DIR_7_OBUF_I,
      O => DIR(7)
    );
  RST_IBUF : X_BUF
    generic map(
      LOC => "PAD231",
      PATHPULSE => 202 ps
    )
    port map (
      O => RST_IBUF_60,
      I => RST
    );
  ProtoComp1_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD231",
      PATHPULSE => 202 ps
    )
    port map (
      I => RST_IBUF_60,
      O => RST_IBUF_0
    );
  DIR_VLD_OBUF : X_OBUF
    generic map(
      LOC => "PAD219"
    )
    port map (
      I => NlwBufferSignal_DIR_VLD_OBUF_I,
      O => DIR_VLD
    );
  PWRITE_IBUF : X_BUF
    generic map(
      LOC => "PAD228",
      PATHPULSE => 202 ps
    )
    port map (
      O => PWRITE_IBUF_65,
      I => PWRITE
    );
  ProtoComp1_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD228",
      PATHPULSE => 202 ps
    )
    port map (
      I => PWRITE_IBUF_65,
      O => PWRITE_IBUF_0
    );
  CLK_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD314",
      PATHPULSE => 202 ps
    )
    port map (
      O => CLK_BUFGP_IBUFG_68,
      I => CLK
    );
  ProtoComp1_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD314",
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP_IBUFG_68,
      O => CLK_BUFGP_IBUFG_0
    );
  DSTRB_IBUF : X_BUF
    generic map(
      LOC => "PAD220",
      PATHPULSE => 202 ps
    )
    port map (
      O => DSTRB_IBUF_71,
      I => DSTRB
    );
  ProtoComp1_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD220",
      PATHPULSE => 202 ps
    )
    port map (
      I => DSTRB_IBUF_71,
      O => DSTRB_IBUF_0
    );
  PWAIT_105 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWAIT_CLK,
      I => NlwBufferSignal_PWAIT_IN,
      O => PWAIT_OBUF_316,
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
  ProtoComp8_IMUX : X_BUF
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
  ProtoComp8_IMUX_1 : X_BUF
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
  ProtoComp8_IMUX_2 : X_BUF
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
  ProtoComp8_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD224",
      PATHPULSE => 202 ps
    )
    port map (
      I => N6,
      O => N6_0
    );
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
  ProtoComp8_IMUX_4 : X_BUF
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
  ProtoComp8_IMUX_5 : X_BUF
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
      LOC => "PAD251"
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
  ProtoComp8_IMUX_6 : X_BUF
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
      LOC => "PAD252"
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
  ProtoComp8_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD230",
      PATHPULSE => 202 ps
    )
    port map (
      I => N2,
      O => N2_0
    );
  DATO_3_DATO_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Q2_pack_10,
      O => Q2_341
    );
  DATO_3 : X_FF
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DATO_3_CLK,
      I => DATO_3_rstpot_139,
      O => DATO_3_309,
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_3_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => X"FFFFFFF300000C00"
    )
    port map (
      ADR0 => '1',
      ADR3 => N6_0,
      ADR1 => DSTRB_IBUF_0,
      ADR5 => DATO_3_309,
      ADR2 => PWRITE_IBUF_0,
      ADR4 => Q2_341,
      O => DATO_3_rstpot_139
    );
  DATO_2 : X_FF
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DATO_2_CLK,
      I => DATO_2_rstpot_131,
      O => DATO_2_308,
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => X"FFFD0008FFFD0008"
    )
    port map (
      ADR5 => '1',
      ADR1 => N7_0,
      ADR0 => DSTRB_IBUF_0,
      ADR4 => DATO_2_308,
      ADR3 => PWRITE_IBUF_0,
      ADR2 => Q2_341,
      O => DATO_2_rstpot_131
    );
  DATO_1 : X_FF
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DATO_1_CLK,
      I => DATO_1_rstpot_124,
      O => DATO_1_351,
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => X"FFFF0000FFAF00A0"
    )
    port map (
      ADR1 => '1',
      ADR0 => N8_0,
      ADR2 => DSTRB_IBUF_0,
      ADR4 => DATO_1_351,
      ADR3 => PWRITE_IBUF_0,
      ADR5 => Q2_341,
      O => DATO_1_rstpot_124
    );
  DATO_0 : X_FF
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DATO_0_CLK,
      I => DATO_0_rstpot_149,
      O => DATO_0_350,
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_0_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => X"FFEF1000FFEF1000"
    )
    port map (
      ADR3 => N9_0,
      ADR2 => DSTRB_IBUF_0,
      ADR0 => PWRITE_IBUF_0,
      ADR4 => DATO_0_350,
      ADR1 => Q2_341,
      ADR5 => '1',
      O => DATO_0_rstpot_149
    );
  DSTRB_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR2 => DSTRB_IBUF_0,
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => DSTRB_IBUF_rt_148
    );
  Q2 : X_FF
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Q2_CLK,
      I => DSTRB_IBUF_rt_148,
      O => Q2_pack_10,
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_VLD_OBUF_DATO_VLD_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PWRITE_DSTRB_AND_5_o_inv,
      O => PWRITE_DSTRB_AND_5_o_inv_0
    );
  DATO_VLD_168 : X_FF
    generic map(
      LOC => "SLICE_X15Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DATO_VLD_CLK,
      I => S22,
      O => DATO_VLD_OBUF_317,
      RST => RST_IBUF_0,
      SET => GND
    );
  S221 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y2",
      INIT => X"000C000C000C000C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => DSTRB_IBUF_0,
      ADR2 => PWRITE_IBUF_0,
      ADR3 => Q2_341,
      ADR5 => '1',
      O => S22
    );
  PWRITE_DSTRB_AND_5_o_inv1 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y2",
      INIT => X"3F3F3F3F"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => DSTRB_IBUF_0,
      ADR2 => PWRITE_IBUF_0,
      ADR4 => '1',
      O => PWRITE_DSTRB_AND_5_o_inv
    );
  DATO_7 : X_FF
    generic map(
      LOC => "SLICE_X16Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DATO_7_CLK,
      I => DATO_7_rstpot_167,
      O => DATO_7_313,
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_7_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X16Y2",
      INIT => X"FFFF0000FCFF0C00"
    )
    port map (
      ADR0 => '1',
      ADR1 => N2_0,
      ADR3 => DSTRB_IBUF_0,
      ADR4 => DATO_7_313,
      ADR2 => PWRITE_IBUF_0,
      ADR5 => Q2_341,
      O => DATO_7_rstpot_167
    );
  DATO_6 : X_FF
    generic map(
      LOC => "SLICE_X16Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DATO_6_CLK,
      I => DATO_6_rstpot_175,
      O => DATO_6_312,
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_6_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X16Y2",
      INIT => X"FFFF0000EFEF4040"
    )
    port map (
      ADR3 => '1',
      ADR1 => N3_0,
      ADR2 => DSTRB_IBUF_0,
      ADR4 => DATO_6_312,
      ADR0 => PWRITE_IBUF_0,
      ADR5 => Q2_341,
      O => DATO_6_rstpot_175
    );
  DATO_5 : X_FF
    generic map(
      LOC => "SLICE_X16Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DATO_5_CLK,
      I => DATO_5_rstpot_182,
      O => DATO_5_311,
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_5_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X16Y2",
      INIT => X"FFFF0000FBFB0808"
    )
    port map (
      ADR3 => '1',
      ADR0 => N4_0,
      ADR1 => DSTRB_IBUF_0,
      ADR4 => DATO_5_311,
      ADR2 => PWRITE_IBUF_0,
      ADR5 => Q2_341,
      O => DATO_5_rstpot_182
    );
  DATO_4 : X_FF
    generic map(
      LOC => "SLICE_X16Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DATO_4_CLK,
      I => DATO_4_rstpot_189,
      O => DATO_4_310,
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_4_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X16Y2",
      INIT => X"FFFF0000FDFD0808"
    )
    port map (
      ADR3 => '1',
      ADR1 => N5_0,
      ADR0 => DSTRB_IBUF_0,
      ADR4 => DATO_4_310,
      ADR2 => PWRITE_IBUF_0,
      ADR5 => Q2_341,
      O => DATO_4_rstpot_189
    );
  DIR_VLD_OBUF_DIR_VLD_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ASTRB_DSTRB_AND_6_o,
      O => ASTRB_DSTRB_AND_6_o_0
    );
  DIR_VLD_181 : X_FF
    generic map(
      LOC => "SLICE_X18Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DIR_VLD_CLK,
      I => S11,
      O => DIR_VLD_OBUF_334,
      RST => RST_IBUF_0,
      SET => GND
    );
  S111 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y2",
      INIT => X"00000A0A00000A0A"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => ASTRB_IBUF_0,
      ADR2 => PWRITE_IBUF_0,
      ADR4 => Q_348,
      ADR5 => '1',
      O => S11
    );
  ASTRB_DSTRB_AND_6_o1 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y2",
      INIT => X"11111111"
    )
    port map (
      ADR2 => '1',
      ADR1 => DSTRB_IBUF_0,
      ADR0 => ASTRB_IBUF_0,
      ADR3 => '1',
      ADR4 => '1',
      O => ASTRB_DSTRB_AND_6_o
    );
  DIR_7 : X_FF
    generic map(
      LOC => "SLICE_X19Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DIR_7_CLK,
      I => DIR_7_rstpot_207,
      O => DIR_7_332,
      RST => RST_IBUF_0,
      SET => GND
    );
  DIR_7_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y2",
      INIT => X"FFFF0000FFDD2200"
    )
    port map (
      ADR2 => '1',
      ADR3 => N2_0,
      ADR0 => ASTRB_IBUF_0,
      ADR4 => DIR_7_332,
      ADR1 => PWRITE_IBUF_0,
      ADR5 => Q_348,
      O => DIR_7_rstpot_207
    );
  DIR_6 : X_FF
    generic map(
      LOC => "SLICE_X19Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DIR_6_CLK,
      I => DIR_6_rstpot_215,
      O => DIR_6_331,
      RST => RST_IBUF_0,
      SET => GND
    );
  DIR_6_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y2",
      INIT => X"FFFF0000FFDD0088"
    )
    port map (
      ADR2 => '1',
      ADR1 => N3_0,
      ADR0 => ASTRB_IBUF_0,
      ADR4 => DIR_6_331,
      ADR3 => PWRITE_IBUF_0,
      ADR5 => Q_348,
      O => DIR_6_rstpot_215
    );
  DIR_5 : X_FF
    generic map(
      LOC => "SLICE_X19Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DIR_5_CLK,
      I => DIR_5_rstpot_222,
      O => DIR_5_330,
      RST => RST_IBUF_0,
      SET => GND
    );
  DIR_5_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y2",
      INIT => X"FFFFFFF300000C00"
    )
    port map (
      ADR0 => '1',
      ADR3 => N4_0,
      ADR1 => ASTRB_IBUF_0,
      ADR5 => DIR_5_330,
      ADR2 => PWRITE_IBUF_0,
      ADR4 => Q_348,
      O => DIR_5_rstpot_222
    );
  DIR_4 : X_FF
    generic map(
      LOC => "SLICE_X19Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DIR_4_CLK,
      I => DIR_4_rstpot_229,
      O => DIR_4_329,
      RST => RST_IBUF_0,
      SET => GND
    );
  DIR_4_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y2",
      INIT => X"FFFFFCFF00000C00"
    )
    port map (
      ADR0 => '1',
      ADR1 => N5_0,
      ADR3 => ASTRB_IBUF_0,
      ADR5 => DIR_4_329,
      ADR2 => PWRITE_IBUF_0,
      ADR4 => Q_348,
      O => DIR_4_rstpot_229
    );
  DIR_3_DIR_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Q_pack_10,
      O => Q_348
    );
  DIR_3 : X_FF
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DIR_3_CLK,
      I => DIR_3_rstpot_251,
      O => DIR_3_328,
      RST => RST_IBUF_0,
      SET => GND
    );
  DIR_3_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => X"FFFFFAFF00005000"
    )
    port map (
      ADR1 => '1',
      ADR2 => N6_0,
      ADR3 => ASTRB_IBUF_0,
      ADR5 => DIR_3_328,
      ADR0 => PWRITE_IBUF_0,
      ADR4 => Q_348,
      O => DIR_3_rstpot_251
    );
  DIR_2 : X_FF
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DIR_2_CLK,
      I => DIR_2_rstpot_243,
      O => DIR_2_327,
      RST => RST_IBUF_0,
      SET => GND
    );
  DIR_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => X"FEFF0200FEFF0200"
    )
    port map (
      ADR5 => '1',
      ADR0 => N7_0,
      ADR3 => ASTRB_IBUF_0,
      ADR4 => DIR_2_327,
      ADR1 => PWRITE_IBUF_0,
      ADR2 => Q_348,
      O => DIR_2_rstpot_243
    );
  DIR_1 : X_FF
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DIR_1_CLK,
      I => DIR_1_rstpot_236,
      O => DIR_1_326,
      RST => RST_IBUF_0,
      SET => GND
    );
  DIR_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => X"FFFF0000FAFF0A00"
    )
    port map (
      ADR1 => '1',
      ADR0 => N8_0,
      ADR3 => ASTRB_IBUF_0,
      ADR4 => DIR_1_326,
      ADR2 => PWRITE_IBUF_0,
      ADR5 => Q_348,
      O => DIR_1_rstpot_236
    );
  DIR_0 : X_FF
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DIR_0_CLK,
      I => DIR_0_rstpot_261,
      O => DIR_0_325,
      RST => RST_IBUF_0,
      SET => GND
    );
  DIR_0_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => X"FFFD0020FFFD0020"
    )
    port map (
      ADR2 => N9_0,
      ADR0 => ASTRB_IBUF_0,
      ADR3 => PWRITE_IBUF_0,
      ADR4 => DIR_0_325,
      ADR1 => Q_348,
      ADR5 => '1',
      O => DIR_0_rstpot_261
    );
  ASTRB_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => X"AAAAAAAA"
    )
    port map (
      ADR1 => '1',
      ADR0 => ASTRB_IBUF_0,
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => ASTRB_IBUF_rt_260
    );
  Q : X_FF
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Q_CLK,
      I => ASTRB_IBUF_rt_260,
      O => Q_pack_10,
      RST => RST_IBUF_0,
      SET => GND
    );
  NlwBufferBlock_DATO_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_2_308,
      O => NlwBufferSignal_DATO_2_OBUF_I
    );
  NlwBufferBlock_DATO_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_3_309,
      O => NlwBufferSignal_DATO_3_OBUF_I
    );
  NlwBufferBlock_DATO_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_4_310,
      O => NlwBufferSignal_DATO_4_OBUF_I
    );
  NlwBufferBlock_DATO_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_5_311,
      O => NlwBufferSignal_DATO_5_OBUF_I
    );
  NlwBufferBlock_DATO_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_6_312,
      O => NlwBufferSignal_DATO_6_OBUF_I
    );
  NlwBufferBlock_DATO_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_7_313,
      O => NlwBufferSignal_DATO_7_OBUF_I
    );
  NlwBufferBlock_PWAIT_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PWAIT_OBUF_316,
      O => NlwBufferSignal_PWAIT_OBUF_I
    );
  NlwBufferBlock_DATO_VLD_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_VLD_OBUF_317,
      O => NlwBufferSignal_DATO_VLD_OBUF_I
    );
  NlwBufferBlock_DIR_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_0_325,
      O => NlwBufferSignal_DIR_0_OBUF_I
    );
  NlwBufferBlock_DIR_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_1_326,
      O => NlwBufferSignal_DIR_1_OBUF_I
    );
  NlwBufferBlock_DIR_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_2_327,
      O => NlwBufferSignal_DIR_2_OBUF_I
    );
  NlwBufferBlock_DIR_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_3_328,
      O => NlwBufferSignal_DIR_3_OBUF_I
    );
  NlwBufferBlock_DIR_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_4_329,
      O => NlwBufferSignal_DIR_4_OBUF_I
    );
  NlwBufferBlock_DIR_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_5_330,
      O => NlwBufferSignal_DIR_5_OBUF_I
    );
  NlwBufferBlock_DIR_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_6_331,
      O => NlwBufferSignal_DIR_6_OBUF_I
    );
  NlwBufferBlock_DIR_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_7_332,
      O => NlwBufferSignal_DIR_7_OBUF_I
    );
  NlwBufferBlock_DIR_VLD_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIR_VLD_OBUF_334,
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
      I => ASTRB_DSTRB_AND_6_o_0,
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
      I => DATO_0_350,
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
      I => DATO_1_351,
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
  NlwBufferBlock_DIR_VLD_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIR_VLD_CLK
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


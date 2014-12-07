--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: top_system1_timesim.vhd
-- /___/   /\     Timestamp: Sat Dec 06 15:20:25 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf top_system1.pcf -rpw 100 -tpw 0 -ar Structure -tm top_system1 -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim top_system1.ncd top_system1_timesim.vhd 
-- Device	: 6slx45csg324-3 (PRODUCTION 1.23 2013-10-13)
-- Input file	: top_system1.ncd
-- Output file	: C:\Users\christopher\Dropbox\workspace\modelado14\top_system1\netgen\par\top_system1_timesim.vhd
-- # of Entities	: 1
-- Design Name	: top_system1
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

entity top_system1 is
  port (
    CLK : in STD_LOGIC := 'X'; 
    RST : in STD_LOGIC := 'X'; 
    ASTRB : in STD_LOGIC := 'X'; 
    DSTRB : in STD_LOGIC := 'X'; 
    PWRITE : in STD_LOGIC := 'X'; 
    PSH_BUTTON : in STD_LOGIC := 'X'; 
    PWAIT : out STD_LOGIC; 
    SWITCHES_I : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    DATA : inout STD_LOGIC_VECTOR ( 7 downto 0 ); 
    LEDS_O : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end top_system1;

architecture Structure of top_system1 is
  signal cntEpp_PWRITE_DSTRB_AND_5_o_inv : STD_LOGIC; 
  signal ASTRB_IBUF_0 : STD_LOGIC; 
  signal PWRITE_IBUF_0 : STD_LOGIC; 
  signal DSTRB_IBUF_0 : STD_LOGIC; 
  signal cntEpp_PWRITE_PWRITE_OR_2_o_0 : STD_LOGIC; 
  signal LEDS_O_1_OBUF_330 : STD_LOGIC; 
  signal PSH_BUTTON_IBUF_0 : STD_LOGIC; 
  signal LEDS_O_0_OBUF_0 : STD_LOGIC; 
  signal CLK_BUFGP : STD_LOGIC; 
  signal cntEpp_DIR_VLD_338 : STD_LOGIC; 
  signal cntEpp_S11 : STD_LOGIC; 
  signal cntEpp_S22 : STD_LOGIC; 
  signal cntEpp_Q_341 : STD_LOGIC; 
  signal cntEpp_Q2_342 : STD_LOGIC; 
  signal cntEpp_DATO_VLD_343 : STD_LOGIC; 
  signal RST_IBUF_0 : STD_LOGIC; 
  signal LEDS_O_3_OBUF_345 : STD_LOGIC; 
  signal LEDS_O_2_OBUF_0 : STD_LOGIC; 
  signal LEDS_O_5_OBUF_349 : STD_LOGIC; 
  signal LEDS_O_4_OBUF_0 : STD_LOGIC; 
  signal LEDS_O_7_OBUF_353 : STD_LOGIC; 
  signal LEDS_O_6_OBUF_0 : STD_LOGIC; 
  signal SWITCHES_I_3_IBUF_0 : STD_LOGIC; 
  signal SWITCHES_I_4_IBUF_0 : STD_LOGIC; 
  signal SWITCHES_I_5_IBUF_0 : STD_LOGIC; 
  signal SWITCHES_I_6_IBUF_0 : STD_LOGIC; 
  signal SWITCHES_I_7_IBUF_0 : STD_LOGIC; 
  signal N11_0 : STD_LOGIC; 
  signal N10_0 : STD_LOGIC; 
  signal N9_0 : STD_LOGIC; 
  signal N8_0 : STD_LOGIC; 
  signal N7_0 : STD_LOGIC; 
  signal N6_0 : STD_LOGIC; 
  signal N5_0 : STD_LOGIC; 
  signal N4_0 : STD_LOGIC; 
  signal cntEpp_PWAIT_378 : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal SWITCHES_I_0_IBUF_0 : STD_LOGIC; 
  signal SWITCHES_I_1_IBUF_0 : STD_LOGIC; 
  signal SWITCHES_I_2_IBUF_0 : STD_LOGIC; 
  signal cntEpp_CE_RD_383 : STD_LOGIC; 
  signal cntEpp_DIR_0_0 : STD_LOGIC; 
  signal cntEpp_DIR_1_0 : STD_LOGIC; 
  signal cntEpp_DIR_2_0 : STD_LOGIC; 
  signal cntEpp_DIR_3_0 : STD_LOGIC; 
  signal CE_RD_comm_GND_3_o_AND_9_o_390 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal SWITCHES_I_3_IBUF_1 : STD_LOGIC; 
  signal SWITCHES_I_4_IBUF_4 : STD_LOGIC; 
  signal SWITCHES_I_5_IBUF_7 : STD_LOGIC; 
  signal PSH_BUTTON_IBUF_10 : STD_LOGIC; 
  signal SWITCHES_I_6_IBUF_13 : STD_LOGIC; 
  signal SWITCHES_I_7_IBUF_16 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal ASTRB_IBUF_61 : STD_LOGIC; 
  signal RST_IBUF_66 : STD_LOGIC; 
  signal PWRITE_IBUF_83 : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_86 : STD_LOGIC; 
  signal SWITCHES_I_0_IBUF_89 : STD_LOGIC; 
  signal DSTRB_IBUF_92 : STD_LOGIC; 
  signal SWITCHES_I_1_IBUF_95 : STD_LOGIC; 
  signal SWITCHES_I_2_IBUF_98 : STD_LOGIC; 
  signal N8_rt_170 : STD_LOGIC; 
  signal N9_rt_163 : STD_LOGIC; 
  signal N10_rt_158 : STD_LOGIC; 
  signal N11_rt_153 : STD_LOGIC; 
  signal LEDS_O_6_OBUF_199 : STD_LOGIC; 
  signal LEDS_O_4_OBUF_188 : STD_LOGIC; 
  signal cntEpp_S11_pack_1 : STD_LOGIC; 
  signal LEDS_O_0_OBUF_239 : STD_LOGIC; 
  signal LEDS_O_2_OBUF_252 : STD_LOGIC; 
  signal cntEpp_CE_RD_rstpot_271 : STD_LOGIC; 
  signal cntEpp_PWRITE_PWRITE_OR_2_o : STD_LOGIC; 
  signal NlwBufferSignal_DATA_0_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_1_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_2_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_3_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_4_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_5_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_6_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_7_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_PWAIT_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_LEDS_O_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_LEDS_O_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_LEDS_O_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_LEDS_O_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_LEDS_O_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_LEDS_O_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_LEDS_O_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_LEDS_O_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_PWAIT_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_PWAIT_IN : STD_LOGIC; 
  signal NlwBufferSignal_CLK_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_DATO_RD_comm_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_RD_comm_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_DATO_RD_comm_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_RD_comm_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_DATO_RD_comm_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_RD_comm_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_DATO_RD_comm_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_RD_comm_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_DATO_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_DATO_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_DATO_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_DATO_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_DATO_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_DATO_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_DATO_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_DATO_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_DATO_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_DATO_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_DATO_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_DATO_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_DATO_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_DATO_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_DATO_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_DATO_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_DIR_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_DIR_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_DIR_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_DIR_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_DIR_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_DIR_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_DIR_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_DIR_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_DIR_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_DIR_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_DIR_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_DIR_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_REG_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_REG_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_DATO_REG_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_REG_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_DATO_REG_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_REG_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_DATO_REG_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_REG_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_DIR_REG_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIR_REG_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_DIR_REG_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIR_REG_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_DIR_REG_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIR_REG_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_DIR_REG_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIR_REG_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_DATO_REG_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_REG_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_DATO_REG_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_REG_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_DATO_REG_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_REG_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_DATO_REG_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_REG_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_DATO_VLD_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_DIR_VLD_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_DIR_VLD_IN : STD_LOGIC; 
  signal NlwBufferSignal_DIR_REG_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIR_REG_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_DIR_REG_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIR_REG_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_DIR_REG_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIR_REG_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_DIR_REG_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIR_REG_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_Q2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_Q2_IN : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_Q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_Q_IN : STD_LOGIC; 
  signal NlwBufferSignal_cntEpp_CE_RD_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_RD_comm_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_RD_comm_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_DATO_RD_comm_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_RD_comm_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_DATO_RD_comm_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_RD_comm_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_DATO_RD_comm_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATO_RD_comm_0_IN : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal DIR_REG : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal DATO_REG : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal DATO_RD_comm : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal cntEpp_DIR : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal cntEpp_DATO : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  SWITCHES_I_3_IBUF : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 115 ps
    )
    port map (
      O => SWITCHES_I_3_IBUF_1,
      I => SWITCHES_I(3)
    );
  ProtoComp3_IMUX : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 115 ps
    )
    port map (
      I => SWITCHES_I_3_IBUF_1,
      O => SWITCHES_I_3_IBUF_0
    );
  SWITCHES_I_4_IBUF : X_BUF
    generic map(
      LOC => "PAD184",
      PATHPULSE => 115 ps
    )
    port map (
      O => SWITCHES_I_4_IBUF_4,
      I => SWITCHES_I(4)
    );
  ProtoComp3_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD184",
      PATHPULSE => 115 ps
    )
    port map (
      I => SWITCHES_I_4_IBUF_4,
      O => SWITCHES_I_4_IBUF_0
    );
  SWITCHES_I_5_IBUF : X_BUF
    generic map(
      LOC => "PAD229",
      PATHPULSE => 115 ps
    )
    port map (
      O => SWITCHES_I_5_IBUF_7,
      I => SWITCHES_I(5)
    );
  ProtoComp3_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD229",
      PATHPULSE => 115 ps
    )
    port map (
      I => SWITCHES_I_5_IBUF_7,
      O => SWITCHES_I_5_IBUF_0
    );
  PSH_BUTTON_IBUF : X_BUF
    generic map(
      LOC => "PAD340",
      PATHPULSE => 115 ps
    )
    port map (
      O => PSH_BUTTON_IBUF_10,
      I => PSH_BUTTON
    );
  ProtoComp3_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD340",
      PATHPULSE => 115 ps
    )
    port map (
      I => PSH_BUTTON_IBUF_10,
      O => PSH_BUTTON_IBUF_0
    );
  SWITCHES_I_6_IBUF : X_BUF
    generic map(
      LOC => "PAD230",
      PATHPULSE => 115 ps
    )
    port map (
      O => SWITCHES_I_6_IBUF_13,
      I => SWITCHES_I(6)
    );
  ProtoComp3_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD230",
      PATHPULSE => 115 ps
    )
    port map (
      I => SWITCHES_I_6_IBUF_13,
      O => SWITCHES_I_6_IBUF_0
    );
  SWITCHES_I_7_IBUF : X_BUF
    generic map(
      LOC => "PAD337",
      PATHPULSE => 115 ps
    )
    port map (
      O => SWITCHES_I_7_IBUF_16,
      I => SWITCHES_I(7)
    );
  ProtoComp3_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD337",
      PATHPULSE => 115 ps
    )
    port map (
      I => SWITCHES_I_7_IBUF_16,
      O => SWITCHES_I_7_IBUF_0
    );
  DATA_0_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD4"
    )
    port map (
      I => NlwBufferSignal_DATA_0_IOBUF_OBUFT_I,
      O => DATA(0),
      CTL => cntEpp_PWRITE_DSTRB_AND_5_o_inv
    );
  DATA_0_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD4",
      PATHPULSE => 115 ps
    )
    port map (
      O => N11,
      I => DATA(0)
    );
  ProtoComp4_IMUX : X_BUF
    generic map(
      LOC => "PAD4",
      PATHPULSE => 115 ps
    )
    port map (
      I => N11,
      O => N11_0
    );
  DATA_1_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD5"
    )
    port map (
      I => NlwBufferSignal_DATA_1_IOBUF_OBUFT_I,
      O => DATA(1),
      CTL => cntEpp_PWRITE_DSTRB_AND_5_o_inv
    );
  DATA_1_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD5",
      PATHPULSE => 115 ps
    )
    port map (
      O => N10,
      I => DATA(1)
    );
  ProtoComp4_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD5",
      PATHPULSE => 115 ps
    )
    port map (
      I => N10,
      O => N10_0
    );
  DATA_2_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD6"
    )
    port map (
      I => NlwBufferSignal_DATA_2_IOBUF_OBUFT_I,
      O => DATA(2),
      CTL => cntEpp_PWRITE_DSTRB_AND_5_o_inv
    );
  DATA_2_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD6",
      PATHPULSE => 115 ps
    )
    port map (
      O => N9,
      I => DATA(2)
    );
  ProtoComp4_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD6",
      PATHPULSE => 115 ps
    )
    port map (
      I => N9,
      O => N9_0
    );
  DATA_3_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD7"
    )
    port map (
      I => NlwBufferSignal_DATA_3_IOBUF_OBUFT_I,
      O => DATA(3),
      CTL => cntEpp_PWRITE_DSTRB_AND_5_o_inv
    );
  DATA_3_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD7",
      PATHPULSE => 115 ps
    )
    port map (
      O => N8,
      I => DATA(3)
    );
  ProtoComp4_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD7",
      PATHPULSE => 115 ps
    )
    port map (
      I => N8,
      O => N8_0
    );
  DATA_4_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD8"
    )
    port map (
      I => NlwBufferSignal_DATA_4_IOBUF_OBUFT_I,
      O => DATA(4),
      CTL => cntEpp_PWRITE_DSTRB_AND_5_o_inv
    );
  DATA_4_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD8",
      PATHPULSE => 115 ps
    )
    port map (
      O => N7,
      I => DATA(4)
    );
  ProtoComp4_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD8",
      PATHPULSE => 115 ps
    )
    port map (
      I => N7,
      O => N7_0
    );
  DATA_5_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD9"
    )
    port map (
      I => NlwBufferSignal_DATA_5_IOBUF_OBUFT_I,
      O => DATA(5),
      CTL => cntEpp_PWRITE_DSTRB_AND_5_o_inv
    );
  DATA_5_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD9",
      PATHPULSE => 115 ps
    )
    port map (
      O => N6,
      I => DATA(5)
    );
  ProtoComp4_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD9",
      PATHPULSE => 115 ps
    )
    port map (
      I => N6,
      O => N6_0
    );
  DATA_6_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD10"
    )
    port map (
      I => NlwBufferSignal_DATA_6_IOBUF_OBUFT_I,
      O => DATA(6),
      CTL => cntEpp_PWRITE_DSTRB_AND_5_o_inv
    );
  DATA_6_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD10",
      PATHPULSE => 115 ps
    )
    port map (
      O => N5,
      I => DATA(6)
    );
  ProtoComp4_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD10",
      PATHPULSE => 115 ps
    )
    port map (
      I => N5,
      O => N5_0
    );
  DATA_7_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD11"
    )
    port map (
      I => NlwBufferSignal_DATA_7_IOBUF_OBUFT_I,
      O => DATA(7),
      CTL => cntEpp_PWRITE_DSTRB_AND_5_o_inv
    );
  DATA_7_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD11",
      PATHPULSE => 115 ps
    )
    port map (
      O => N4,
      I => DATA(7)
    );
  ProtoComp4_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD11",
      PATHPULSE => 115 ps
    )
    port map (
      I => N4,
      O => N4_0
    );
  PWAIT_OBUF : X_OBUF
    generic map(
      LOC => "PAD39"
    )
    port map (
      I => NlwBufferSignal_PWAIT_OBUF_I,
      O => PWAIT
    );
  ASTRB_IBUF : X_BUF
    generic map(
      LOC => "PAD23",
      PATHPULSE => 115 ps
    )
    port map (
      O => ASTRB_IBUF_61,
      I => ASTRB
    );
  ProtoComp3_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD23",
      PATHPULSE => 115 ps
    )
    port map (
      I => ASTRB_IBUF_61,
      O => ASTRB_IBUF_0
    );
  LEDS_O_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD124"
    )
    port map (
      I => NlwBufferSignal_LEDS_O_0_OBUF_I,
      O => LEDS_O(0)
    );
  RST_IBUF : X_BUF
    generic map(
      LOC => "PAD259",
      PATHPULSE => 115 ps
    )
    port map (
      O => RST_IBUF_66,
      I => RST
    );
  ProtoComp3_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD259",
      PATHPULSE => 115 ps
    )
    port map (
      I => RST_IBUF_66,
      O => RST_IBUF_0
    );
  LEDS_O_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD125"
    )
    port map (
      I => NlwBufferSignal_LEDS_O_1_OBUF_I,
      O => LEDS_O(1)
    );
  LEDS_O_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD126"
    )
    port map (
      I => NlwBufferSignal_LEDS_O_2_OBUF_I,
      O => LEDS_O(2)
    );
  LEDS_O_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD133"
    )
    port map (
      I => NlwBufferSignal_LEDS_O_3_OBUF_I,
      O => LEDS_O(3)
    );
  LEDS_O_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD134"
    )
    port map (
      I => NlwBufferSignal_LEDS_O_4_OBUF_I,
      O => LEDS_O(4)
    );
  LEDS_O_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD1"
    )
    port map (
      I => NlwBufferSignal_LEDS_O_5_OBUF_I,
      O => LEDS_O(5)
    );
  LEDS_O_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD158"
    )
    port map (
      I => NlwBufferSignal_LEDS_O_6_OBUF_I,
      O => LEDS_O(6)
    );
  LEDS_O_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD183"
    )
    port map (
      I => NlwBufferSignal_LEDS_O_7_OBUF_I,
      O => LEDS_O(7)
    );
  PWRITE_IBUF : X_BUF
    generic map(
      LOC => "PAD41",
      PATHPULSE => 115 ps
    )
    port map (
      O => PWRITE_IBUF_83,
      I => PWRITE
    );
  ProtoComp3_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD41",
      PATHPULSE => 115 ps
    )
    port map (
      I => PWRITE_IBUF_83,
      O => PWRITE_IBUF_0
    );
  CLK_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 115 ps
    )
    port map (
      O => CLK_BUFGP_IBUFG_86,
      I => CLK
    );
  ProtoComp3_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP_IBUFG_86,
      O => CLK_BUFGP_IBUFG_0
    );
  SWITCHES_I_0_IBUF : X_BUF
    generic map(
      LOC => "PAD28",
      PATHPULSE => 115 ps
    )
    port map (
      O => SWITCHES_I_0_IBUF_89,
      I => SWITCHES_I(0)
    );
  ProtoComp3_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD28",
      PATHPULSE => 115 ps
    )
    port map (
      I => SWITCHES_I_0_IBUF_89,
      O => SWITCHES_I_0_IBUF_0
    );
  DSTRB_IBUF : X_BUF
    generic map(
      LOC => "PAD24",
      PATHPULSE => 115 ps
    )
    port map (
      O => DSTRB_IBUF_92,
      I => DSTRB
    );
  ProtoComp3_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD24",
      PATHPULSE => 115 ps
    )
    port map (
      I => DSTRB_IBUF_92,
      O => DSTRB_IBUF_0
    );
  SWITCHES_I_1_IBUF : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 115 ps
    )
    port map (
      O => SWITCHES_I_1_IBUF_95,
      I => SWITCHES_I(1)
    );
  ProtoComp3_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 115 ps
    )
    port map (
      I => SWITCHES_I_1_IBUF_95,
      O => SWITCHES_I_1_IBUF_0
    );
  SWITCHES_I_2_IBUF : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 115 ps
    )
    port map (
      O => SWITCHES_I_2_IBUF_98,
      I => SWITCHES_I(2)
    );
  ProtoComp3_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 115 ps
    )
    port map (
      I => SWITCHES_I_2_IBUF_98,
      O => SWITCHES_I_2_IBUF_0
    );
  cntEpp_PWAIT : X_FF
    generic map(
      LOC => "OLOGIC_X25Y119",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_cntEpp_PWAIT_CLK,
      I => NlwBufferSignal_cntEpp_PWAIT_IN,
      O => cntEpp_PWAIT_378,
      SET => GND,
      RST => RST_IBUF_0
    );
  CLK_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X2Y4",
      PATHPULSE => 115 ps
    )
    port map (
      I => NlwBufferSignal_CLK_BUFGP_BUFG_IN,
      O => CLK_BUFGP
    );
  DATO_RD_comm_7 : X_FF
    generic map(
      LOC => "SLICE_X5Y98",
      INIT => '0'
    )
    port map (
      CE => CE_RD_comm_GND_3_o_AND_9_o_390,
      CLK => NlwBufferSignal_DATO_RD_comm_7_CLK,
      I => NlwBufferSignal_DATO_RD_comm_7_IN,
      O => DATO_RD_comm(7),
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_RD_comm_6 : X_FF
    generic map(
      LOC => "SLICE_X5Y98",
      INIT => '0'
    )
    port map (
      CE => CE_RD_comm_GND_3_o_AND_9_o_390,
      CLK => NlwBufferSignal_DATO_RD_comm_6_CLK,
      I => NlwBufferSignal_DATO_RD_comm_6_IN,
      O => DATO_RD_comm(6),
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_RD_comm_5 : X_FF
    generic map(
      LOC => "SLICE_X5Y98",
      INIT => '0'
    )
    port map (
      CE => CE_RD_comm_GND_3_o_AND_9_o_390,
      CLK => NlwBufferSignal_DATO_RD_comm_5_CLK,
      I => NlwBufferSignal_DATO_RD_comm_5_IN,
      O => DATO_RD_comm(5),
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_RD_comm_4 : X_FF
    generic map(
      LOC => "SLICE_X5Y98",
      INIT => '0'
    )
    port map (
      CE => CE_RD_comm_GND_3_o_AND_9_o_390,
      CLK => NlwBufferSignal_DATO_RD_comm_4_CLK,
      I => NlwBufferSignal_DATO_RD_comm_4_IN,
      O => DATO_RD_comm(4),
      RST => RST_IBUF_0,
      SET => GND
    );
  cntEpp_DATO_3 : X_FF
    generic map(
      LOC => "SLICE_X12Y97",
      INIT => '0'
    )
    port map (
      CE => cntEpp_S22,
      CLK => NlwBufferSignal_cntEpp_DATO_3_CLK,
      I => NlwBufferSignal_cntEpp_DATO_3_IN,
      O => cntEpp_DATO(3),
      RST => RST_IBUF_0,
      SET => GND
    );
  cntEpp_DATO_2 : X_FF
    generic map(
      LOC => "SLICE_X12Y97",
      INIT => '0'
    )
    port map (
      CE => cntEpp_S22,
      CLK => NlwBufferSignal_cntEpp_DATO_2_CLK,
      I => NlwBufferSignal_cntEpp_DATO_2_IN,
      O => cntEpp_DATO(2),
      RST => RST_IBUF_0,
      SET => GND
    );
  cntEpp_DATO_1 : X_FF
    generic map(
      LOC => "SLICE_X12Y97",
      INIT => '0'
    )
    port map (
      CE => cntEpp_S22,
      CLK => NlwBufferSignal_cntEpp_DATO_1_CLK,
      I => NlwBufferSignal_cntEpp_DATO_1_IN,
      O => cntEpp_DATO(1),
      RST => RST_IBUF_0,
      SET => GND
    );
  cntEpp_DATO_0 : X_FF
    generic map(
      LOC => "SLICE_X12Y97",
      INIT => '0'
    )
    port map (
      CE => cntEpp_S22,
      CLK => NlwBufferSignal_cntEpp_DATO_0_CLK,
      I => NlwBufferSignal_cntEpp_DATO_0_IN,
      O => cntEpp_DATO(0),
      RST => RST_IBUF_0,
      SET => GND
    );
  cntEpp_DATO_7 : X_FF
    generic map(
      LOC => "SLICE_X12Y98",
      INIT => '0'
    )
    port map (
      CE => cntEpp_S22,
      CLK => NlwBufferSignal_cntEpp_DATO_7_CLK,
      I => NlwBufferSignal_cntEpp_DATO_7_IN,
      O => cntEpp_DATO(7),
      RST => RST_IBUF_0,
      SET => GND
    );
  cntEpp_DATO_6 : X_FF
    generic map(
      LOC => "SLICE_X12Y98",
      INIT => '0'
    )
    port map (
      CE => cntEpp_S22,
      CLK => NlwBufferSignal_cntEpp_DATO_6_CLK,
      I => NlwBufferSignal_cntEpp_DATO_6_IN,
      O => cntEpp_DATO(6),
      RST => RST_IBUF_0,
      SET => GND
    );
  cntEpp_DATO_5 : X_FF
    generic map(
      LOC => "SLICE_X12Y98",
      INIT => '0'
    )
    port map (
      CE => cntEpp_S22,
      CLK => NlwBufferSignal_cntEpp_DATO_5_CLK,
      I => NlwBufferSignal_cntEpp_DATO_5_IN,
      O => cntEpp_DATO(5),
      RST => RST_IBUF_0,
      SET => GND
    );
  CE_RD_comm_GND_3_o_AND_9_o_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y98",
      INIT => X"FFFFFFFFFFFFEEEE"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => cntEpp_DIR_3_0,
      ADR5 => cntEpp_DIR_0_0,
      ADR0 => cntEpp_DIR(7),
      ADR1 => cntEpp_DIR_2_0,
      O => N2
    );
  cntEpp_DATO_4 : X_FF
    generic map(
      LOC => "SLICE_X12Y98",
      INIT => '0'
    )
    port map (
      CE => cntEpp_S22,
      CLK => NlwBufferSignal_cntEpp_DATO_4_CLK,
      I => NlwBufferSignal_cntEpp_DATO_4_IN,
      O => cntEpp_DATO(4),
      RST => RST_IBUF_0,
      SET => GND
    );
  CE_RD_comm_GND_3_o_AND_9_o : X_LUT6
    generic map(
      LOC => "SLICE_X12Y98",
      INIT => X"0400000000000000"
    )
    port map (
      ADR4 => cntEpp_DIR(5),
      ADR1 => cntEpp_DIR(4),
      ADR5 => cntEpp_DIR_1_0,
      ADR3 => cntEpp_CE_RD_383,
      ADR0 => cntEpp_DIR(6),
      ADR2 => N2,
      O => CE_RD_comm_GND_3_o_AND_9_o_390
    );
  cntEpp_DIR_7_cntEpp_DIR_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cntEpp_DIR(3),
      O => cntEpp_DIR_3_0
    );
  cntEpp_DIR_7_cntEpp_DIR_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cntEpp_DIR(2),
      O => cntEpp_DIR_2_0
    );
  cntEpp_DIR_7_cntEpp_DIR_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cntEpp_DIR(1),
      O => cntEpp_DIR_1_0
    );
  cntEpp_DIR_7_cntEpp_DIR_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cntEpp_DIR(0),
      O => cntEpp_DIR_0_0
    );
  cntEpp_DIR_7 : X_FF
    generic map(
      LOC => "SLICE_X13Y98",
      INIT => '0'
    )
    port map (
      CE => cntEpp_S11,
      CLK => NlwBufferSignal_cntEpp_DIR_7_CLK,
      I => NlwBufferSignal_cntEpp_DIR_7_IN,
      O => cntEpp_DIR(7),
      RST => RST_IBUF_0,
      SET => GND
    );
  N8_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y98",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => N8_0,
      O => N8_rt_170
    );
  cntEpp_DIR_3 : X_FF
    generic map(
      LOC => "SLICE_X13Y98",
      INIT => '0'
    )
    port map (
      CE => cntEpp_S11,
      CLK => NlwBufferSignal_cntEpp_DIR_3_CLK,
      I => N8_rt_170,
      O => cntEpp_DIR(3),
      RST => RST_IBUF_0,
      SET => GND
    );
  cntEpp_DIR_6 : X_FF
    generic map(
      LOC => "SLICE_X13Y98",
      INIT => '0'
    )
    port map (
      CE => cntEpp_S11,
      CLK => NlwBufferSignal_cntEpp_DIR_6_CLK,
      I => NlwBufferSignal_cntEpp_DIR_6_IN,
      O => cntEpp_DIR(6),
      RST => RST_IBUF_0,
      SET => GND
    );
  N9_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y98",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => N9_0,
      O => N9_rt_163
    );
  cntEpp_DIR_2 : X_FF
    generic map(
      LOC => "SLICE_X13Y98",
      INIT => '0'
    )
    port map (
      CE => cntEpp_S11,
      CLK => NlwBufferSignal_cntEpp_DIR_2_CLK,
      I => N9_rt_163,
      O => cntEpp_DIR(2),
      RST => RST_IBUF_0,
      SET => GND
    );
  cntEpp_DIR_5 : X_FF
    generic map(
      LOC => "SLICE_X13Y98",
      INIT => '0'
    )
    port map (
      CE => cntEpp_S11,
      CLK => NlwBufferSignal_cntEpp_DIR_5_CLK,
      I => NlwBufferSignal_cntEpp_DIR_5_IN,
      O => cntEpp_DIR(5),
      RST => RST_IBUF_0,
      SET => GND
    );
  N10_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y98",
      INIT => X"AAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => N10_0,
      O => N10_rt_158
    );
  cntEpp_DIR_1 : X_FF
    generic map(
      LOC => "SLICE_X13Y98",
      INIT => '0'
    )
    port map (
      CE => cntEpp_S11,
      CLK => NlwBufferSignal_cntEpp_DIR_1_CLK,
      I => N10_rt_158,
      O => cntEpp_DIR(1),
      RST => RST_IBUF_0,
      SET => GND
    );
  cntEpp_DIR_4 : X_FF
    generic map(
      LOC => "SLICE_X13Y98",
      INIT => '0'
    )
    port map (
      CE => cntEpp_S11,
      CLK => NlwBufferSignal_cntEpp_DIR_4_CLK,
      I => NlwBufferSignal_cntEpp_DIR_4_IN,
      O => cntEpp_DIR(4),
      RST => RST_IBUF_0,
      SET => GND
    );
  N11_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y98",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => N11_0,
      O => N11_rt_153
    );
  cntEpp_DIR_0 : X_FF
    generic map(
      LOC => "SLICE_X13Y98",
      INIT => '0'
    )
    port map (
      CE => cntEpp_S11,
      CLK => NlwBufferSignal_cntEpp_DIR_0_CLK,
      I => N11_rt_153,
      O => cntEpp_DIR(0),
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_REG_7 : X_FF
    generic map(
      LOC => "SLICE_X18Y83",
      INIT => '0'
    )
    port map (
      CE => cntEpp_DATO_VLD_343,
      CLK => NlwBufferSignal_DATO_REG_7_CLK,
      I => NlwBufferSignal_DATO_REG_7_IN,
      O => DATO_REG(7),
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_REG_6 : X_FF
    generic map(
      LOC => "SLICE_X18Y83",
      INIT => '0'
    )
    port map (
      CE => cntEpp_DATO_VLD_343,
      CLK => NlwBufferSignal_DATO_REG_6_CLK,
      I => NlwBufferSignal_DATO_REG_6_IN,
      O => DATO_REG(6),
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_REG_5 : X_FF
    generic map(
      LOC => "SLICE_X18Y83",
      INIT => '0'
    )
    port map (
      CE => cntEpp_DATO_VLD_343,
      CLK => NlwBufferSignal_DATO_REG_5_CLK,
      I => NlwBufferSignal_DATO_REG_5_IN,
      O => DATO_REG(5),
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_REG_4 : X_FF
    generic map(
      LOC => "SLICE_X18Y83",
      INIT => '0'
    )
    port map (
      CE => cntEpp_DATO_VLD_343,
      CLK => NlwBufferSignal_DATO_REG_4_CLK,
      I => NlwBufferSignal_DATO_REG_4_IN,
      O => DATO_REG(4),
      RST => RST_IBUF_0,
      SET => GND
    );
  DIR_REG_7_DIR_REG_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => LEDS_O_6_OBUF_199,
      O => LEDS_O_6_OBUF_0
    );
  DIR_REG_7_DIR_REG_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => LEDS_O_4_OBUF_188,
      O => LEDS_O_4_OBUF_0
    );
  DIR_REG_7 : X_FF
    generic map(
      LOC => "SLICE_X19Y83",
      INIT => '0'
    )
    port map (
      CE => cntEpp_DIR_VLD_338,
      CLK => NlwBufferSignal_DIR_REG_7_CLK,
      I => NlwBufferSignal_DIR_REG_7_IN,
      O => DIR_REG(7),
      RST => RST_IBUF_0,
      SET => GND
    );
  Mmux_LEDS_O81 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y83",
      INIT => X"FC0CFC0CFC0CFC0C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => PSH_BUTTON_IBUF_0,
      ADR3 => DIR_REG(7),
      ADR1 => DATO_REG(7),
      ADR5 => '1',
      O => LEDS_O_7_OBUF_353
    );
  Mmux_LEDS_O71 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y83",
      INIT => X"AFAFA0A0"
    )
    port map (
      ADR0 => DIR_REG(6),
      ADR4 => DATO_REG(6),
      ADR2 => PSH_BUTTON_IBUF_0,
      ADR3 => '1',
      ADR1 => '1',
      O => LEDS_O_6_OBUF_199
    );
  DIR_REG_6 : X_FF
    generic map(
      LOC => "SLICE_X19Y83",
      INIT => '0'
    )
    port map (
      CE => cntEpp_DIR_VLD_338,
      CLK => NlwBufferSignal_DIR_REG_6_CLK,
      I => NlwBufferSignal_DIR_REG_6_IN,
      O => DIR_REG(6),
      RST => RST_IBUF_0,
      SET => GND
    );
  DIR_REG_5 : X_FF
    generic map(
      LOC => "SLICE_X19Y83",
      INIT => '0'
    )
    port map (
      CE => cntEpp_DIR_VLD_338,
      CLK => NlwBufferSignal_DIR_REG_5_CLK,
      I => NlwBufferSignal_DIR_REG_5_IN,
      O => DIR_REG(5),
      RST => RST_IBUF_0,
      SET => GND
    );
  DIR_REG_4 : X_FF
    generic map(
      LOC => "SLICE_X19Y83",
      INIT => '0'
    )
    port map (
      CE => cntEpp_DIR_VLD_338,
      CLK => NlwBufferSignal_DIR_REG_4_CLK,
      I => NlwBufferSignal_DIR_REG_4_IN,
      O => DIR_REG(4),
      RST => RST_IBUF_0,
      SET => GND
    );
  Mmux_LEDS_O61 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y83",
      INIT => X"AFAFA0A0AFAFA0A0"
    )
    port map (
      ADR1 => '1',
      ADR2 => PSH_BUTTON_IBUF_0,
      ADR0 => DIR_REG(5),
      ADR3 => '1',
      ADR4 => DATO_REG(5),
      ADR5 => '1',
      O => LEDS_O_5_OBUF_349
    );
  Mmux_LEDS_O51 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y83",
      INIT => X"CFC0CFC0"
    )
    port map (
      ADR3 => DATO_REG(4),
      ADR2 => PSH_BUTTON_IBUF_0,
      ADR0 => '1',
      ADR1 => DIR_REG(4),
      ADR4 => '1',
      O => LEDS_O_4_OBUF_188
    );
  DATO_REG_3 : X_FF
    generic map(
      LOC => "SLICE_X22Y83",
      INIT => '0'
    )
    port map (
      CE => cntEpp_DATO_VLD_343,
      CLK => NlwBufferSignal_DATO_REG_3_CLK,
      I => NlwBufferSignal_DATO_REG_3_IN,
      O => DATO_REG(3),
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_REG_2 : X_FF
    generic map(
      LOC => "SLICE_X22Y83",
      INIT => '0'
    )
    port map (
      CE => cntEpp_DATO_VLD_343,
      CLK => NlwBufferSignal_DATO_REG_2_CLK,
      I => NlwBufferSignal_DATO_REG_2_IN,
      O => DATO_REG(2),
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_REG_1 : X_FF
    generic map(
      LOC => "SLICE_X22Y83",
      INIT => '0'
    )
    port map (
      CE => cntEpp_DATO_VLD_343,
      CLK => NlwBufferSignal_DATO_REG_1_CLK,
      I => NlwBufferSignal_DATO_REG_1_IN,
      O => DATO_REG(1),
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_REG_0 : X_FF
    generic map(
      LOC => "SLICE_X22Y83",
      INIT => '0'
    )
    port map (
      CE => cntEpp_DATO_VLD_343,
      CLK => NlwBufferSignal_DATO_REG_0_CLK,
      I => NlwBufferSignal_DATO_REG_0_IN,
      O => DATO_REG(0),
      RST => RST_IBUF_0,
      SET => GND
    );
  cntEpp_DATO_VLD_cntEpp_DATO_VLD_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cntEpp_S11_pack_1,
      O => cntEpp_S11
    );
  cntEpp_DATO_VLD : X_FF
    generic map(
      LOC => "SLICE_X22Y100",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_cntEpp_DATO_VLD_CLK,
      I => cntEpp_S22,
      O => cntEpp_DATO_VLD_343,
      RST => RST_IBUF_0,
      SET => GND
    );
  cntEpp_S221 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y100",
      INIT => X"1111000011110000"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => DSTRB_IBUF_0,
      ADR0 => PWRITE_IBUF_0,
      ADR1 => cntEpp_Q2_342,
      ADR5 => '1',
      O => cntEpp_S22
    );
  cntEpp_S111 : X_LUT5
    generic map(
      LOC => "SLICE_X22Y100",
      INIT => X"05000500"
    )
    port map (
      ADR3 => ASTRB_IBUF_0,
      ADR2 => cntEpp_Q_341,
      ADR1 => '1',
      ADR0 => PWRITE_IBUF_0,
      ADR4 => '1',
      O => cntEpp_S11_pack_1
    );
  cntEpp_DIR_VLD : X_FF
    generic map(
      LOC => "SLICE_X22Y100",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_cntEpp_DIR_VLD_CLK,
      I => NlwBufferSignal_cntEpp_DIR_VLD_IN,
      O => cntEpp_DIR_VLD_338,
      RST => RST_IBUF_0,
      SET => GND
    );
  LEDS_O_1_OBUF_LEDS_O_1_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => LEDS_O_0_OBUF_239,
      O => LEDS_O_0_OBUF_0
    );
  Mmux_LEDS_O21 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y82",
      INIT => X"FAFA5050FAFA5050"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => PSH_BUTTON_IBUF_0,
      ADR4 => DIR_REG(1),
      ADR2 => DATO_REG(1),
      ADR5 => '1',
      O => LEDS_O_1_OBUF_330
    );
  Mmux_LEDS_O11 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y82",
      INIT => X"DD88DD88"
    )
    port map (
      ADR1 => DIR_REG(0),
      ADR3 => DATO_REG(0),
      ADR0 => PSH_BUTTON_IBUF_0,
      ADR2 => '1',
      ADR4 => '1',
      O => LEDS_O_0_OBUF_239
    );
  DIR_REG_3_DIR_REG_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => LEDS_O_2_OBUF_252,
      O => LEDS_O_2_OBUF_0
    );
  DIR_REG_3 : X_FF
    generic map(
      LOC => "SLICE_X23Y83",
      INIT => '0'
    )
    port map (
      CE => cntEpp_DIR_VLD_338,
      CLK => NlwBufferSignal_DIR_REG_3_CLK,
      I => NlwBufferSignal_DIR_REG_3_IN,
      O => DIR_REG(3),
      RST => RST_IBUF_0,
      SET => GND
    );
  DIR_REG_2 : X_FF
    generic map(
      LOC => "SLICE_X23Y83",
      INIT => '0'
    )
    port map (
      CE => cntEpp_DIR_VLD_338,
      CLK => NlwBufferSignal_DIR_REG_2_CLK,
      I => NlwBufferSignal_DIR_REG_2_IN,
      O => DIR_REG(2),
      RST => RST_IBUF_0,
      SET => GND
    );
  DIR_REG_1 : X_FF
    generic map(
      LOC => "SLICE_X23Y83",
      INIT => '0'
    )
    port map (
      CE => cntEpp_DIR_VLD_338,
      CLK => NlwBufferSignal_DIR_REG_1_CLK,
      I => NlwBufferSignal_DIR_REG_1_IN,
      O => DIR_REG(1),
      RST => RST_IBUF_0,
      SET => GND
    );
  DIR_REG_0 : X_FF
    generic map(
      LOC => "SLICE_X23Y83",
      INIT => '0'
    )
    port map (
      CE => cntEpp_DIR_VLD_338,
      CLK => NlwBufferSignal_DIR_REG_0_CLK,
      I => NlwBufferSignal_DIR_REG_0_IN,
      O => DIR_REG(0),
      RST => RST_IBUF_0,
      SET => GND
    );
  Mmux_LEDS_O41 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y83",
      INIT => X"AAAAF0F0AAAAF0F0"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => PSH_BUTTON_IBUF_0,
      ADR0 => DIR_REG(3),
      ADR2 => DATO_REG(3),
      ADR5 => '1',
      O => LEDS_O_3_OBUF_345
    );
  Mmux_LEDS_O31 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y83",
      INIT => X"FF00CCCC"
    )
    port map (
      ADR3 => DIR_REG(2),
      ADR1 => DATO_REG(2),
      ADR4 => PSH_BUTTON_IBUF_0,
      ADR0 => '1',
      ADR2 => '1',
      O => LEDS_O_2_OBUF_252
    );
  cntEpp_Q2 : X_FF
    generic map(
      LOC => "SLICE_X23Y100",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_cntEpp_Q2_CLK,
      I => NlwBufferSignal_cntEpp_Q2_IN,
      O => cntEpp_Q2_342,
      RST => RST_IBUF_0,
      SET => GND
    );
  cntEpp_Q : X_FF
    generic map(
      LOC => "SLICE_X23Y100",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_cntEpp_Q_CLK,
      I => NlwBufferSignal_cntEpp_Q_IN,
      O => cntEpp_Q_341,
      RST => RST_IBUF_0,
      SET => GND
    );
  cntEpp_CE_RD : X_FF
    generic map(
      LOC => "SLICE_X23Y101",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_cntEpp_CE_RD_CLK,
      I => cntEpp_CE_RD_rstpot_271,
      O => cntEpp_CE_RD_383,
      SET => RST_IBUF_0,
      RST => GND
    );
  cntEpp_CE_RD_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y101",
      INIT => X"F0FFF0FFF000F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR5 => cntEpp_CE_RD_383,
      ADR3 => PWRITE_IBUF_0,
      ADR2 => DSTRB_IBUF_0,
      O => cntEpp_CE_RD_rstpot_271
    );
  DATO_RD_comm_3 : X_FF
    generic map(
      LOC => "SLICE_X23Y111",
      INIT => '0'
    )
    port map (
      CE => CE_RD_comm_GND_3_o_AND_9_o_390,
      CLK => NlwBufferSignal_DATO_RD_comm_3_CLK,
      I => NlwBufferSignal_DATO_RD_comm_3_IN,
      O => DATO_RD_comm(3),
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_RD_comm_2 : X_FF
    generic map(
      LOC => "SLICE_X23Y111",
      INIT => '0'
    )
    port map (
      CE => CE_RD_comm_GND_3_o_AND_9_o_390,
      CLK => NlwBufferSignal_DATO_RD_comm_2_CLK,
      I => NlwBufferSignal_DATO_RD_comm_2_IN,
      O => DATO_RD_comm(2),
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_RD_comm_1 : X_FF
    generic map(
      LOC => "SLICE_X23Y111",
      INIT => '0'
    )
    port map (
      CE => CE_RD_comm_GND_3_o_AND_9_o_390,
      CLK => NlwBufferSignal_DATO_RD_comm_1_CLK,
      I => NlwBufferSignal_DATO_RD_comm_1_IN,
      O => DATO_RD_comm(1),
      RST => RST_IBUF_0,
      SET => GND
    );
  DATO_RD_comm_0 : X_FF
    generic map(
      LOC => "SLICE_X23Y111",
      INIT => '0'
    )
    port map (
      CE => CE_RD_comm_GND_3_o_AND_9_o_390,
      CLK => NlwBufferSignal_DATO_RD_comm_0_CLK,
      I => NlwBufferSignal_DATO_RD_comm_0_IN,
      O => DATO_RD_comm(0),
      RST => RST_IBUF_0,
      SET => GND
    );
  cntEpp_PWRITE_DSTRB_AND_5_o_inv_cntEpp_PWRITE_DSTRB_AND_5_o_inv_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cntEpp_PWRITE_PWRITE_OR_2_o,
      O => cntEpp_PWRITE_PWRITE_OR_2_o_0
    );
  cntEpp_PWRITE_DSTRB_AND_5_o_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y125",
      INIT => X"33FF33FF33FF33FF"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => PWRITE_IBUF_0,
      ADR3 => DSTRB_IBUF_0,
      ADR5 => '1',
      O => cntEpp_PWRITE_DSTRB_AND_5_o_inv
    );
  cntEpp_PWRITE_PWRITE_OR_2_o1 : X_LUT5
    generic map(
      LOC => "SLICE_X29Y125",
      INIT => X"03FF03FF"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => ASTRB_IBUF_0,
      ADR1 => PWRITE_IBUF_0,
      ADR3 => DSTRB_IBUF_0,
      O => cntEpp_PWRITE_PWRITE_OR_2_o
    );
  NlwBufferBlock_DATA_0_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => DATO_RD_comm(0),
      O => NlwBufferSignal_DATA_0_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_1_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => DATO_RD_comm(1),
      O => NlwBufferSignal_DATA_1_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_2_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => DATO_RD_comm(2),
      O => NlwBufferSignal_DATA_2_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_3_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => DATO_RD_comm(3),
      O => NlwBufferSignal_DATA_3_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_4_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => DATO_RD_comm(4),
      O => NlwBufferSignal_DATA_4_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_5_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => DATO_RD_comm(5),
      O => NlwBufferSignal_DATA_5_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_6_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => DATO_RD_comm(6),
      O => NlwBufferSignal_DATA_6_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_7_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => DATO_RD_comm(7),
      O => NlwBufferSignal_DATA_7_IOBUF_OBUFT_I
    );
  NlwBufferBlock_PWAIT_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cntEpp_PWAIT_378,
      O => NlwBufferSignal_PWAIT_OBUF_I
    );
  NlwBufferBlock_LEDS_O_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => LEDS_O_0_OBUF_0,
      O => NlwBufferSignal_LEDS_O_0_OBUF_I
    );
  NlwBufferBlock_LEDS_O_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => LEDS_O_1_OBUF_330,
      O => NlwBufferSignal_LEDS_O_1_OBUF_I
    );
  NlwBufferBlock_LEDS_O_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => LEDS_O_2_OBUF_0,
      O => NlwBufferSignal_LEDS_O_2_OBUF_I
    );
  NlwBufferBlock_LEDS_O_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => LEDS_O_3_OBUF_345,
      O => NlwBufferSignal_LEDS_O_3_OBUF_I
    );
  NlwBufferBlock_LEDS_O_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => LEDS_O_4_OBUF_0,
      O => NlwBufferSignal_LEDS_O_4_OBUF_I
    );
  NlwBufferBlock_LEDS_O_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => LEDS_O_5_OBUF_349,
      O => NlwBufferSignal_LEDS_O_5_OBUF_I
    );
  NlwBufferBlock_LEDS_O_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => LEDS_O_6_OBUF_0,
      O => NlwBufferSignal_LEDS_O_6_OBUF_I
    );
  NlwBufferBlock_LEDS_O_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => LEDS_O_7_OBUF_353,
      O => NlwBufferSignal_LEDS_O_7_OBUF_I
    );
  NlwBufferBlock_cntEpp_PWAIT_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cntEpp_PWAIT_CLK
    );
  NlwBufferBlock_cntEpp_PWAIT_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cntEpp_PWRITE_PWRITE_OR_2_o_0,
      O => NlwBufferSignal_cntEpp_PWAIT_IN
    );
  NlwBufferBlock_CLK_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP_IBUFG_0,
      O => NlwBufferSignal_CLK_BUFGP_BUFG_IN
    );
  NlwBufferBlock_DATO_RD_comm_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DATO_RD_comm_7_CLK
    );
  NlwBufferBlock_DATO_RD_comm_7_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SWITCHES_I_7_IBUF_0,
      O => NlwBufferSignal_DATO_RD_comm_7_IN
    );
  NlwBufferBlock_DATO_RD_comm_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DATO_RD_comm_6_CLK
    );
  NlwBufferBlock_DATO_RD_comm_6_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SWITCHES_I_6_IBUF_0,
      O => NlwBufferSignal_DATO_RD_comm_6_IN
    );
  NlwBufferBlock_DATO_RD_comm_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DATO_RD_comm_5_CLK
    );
  NlwBufferBlock_DATO_RD_comm_5_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SWITCHES_I_5_IBUF_0,
      O => NlwBufferSignal_DATO_RD_comm_5_IN
    );
  NlwBufferBlock_DATO_RD_comm_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DATO_RD_comm_4_CLK
    );
  NlwBufferBlock_DATO_RD_comm_4_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SWITCHES_I_4_IBUF_0,
      O => NlwBufferSignal_DATO_RD_comm_4_IN
    );
  NlwBufferBlock_cntEpp_DATO_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cntEpp_DATO_3_CLK
    );
  NlwBufferBlock_cntEpp_DATO_3_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N8_0,
      O => NlwBufferSignal_cntEpp_DATO_3_IN
    );
  NlwBufferBlock_cntEpp_DATO_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cntEpp_DATO_2_CLK
    );
  NlwBufferBlock_cntEpp_DATO_2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N9_0,
      O => NlwBufferSignal_cntEpp_DATO_2_IN
    );
  NlwBufferBlock_cntEpp_DATO_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cntEpp_DATO_1_CLK
    );
  NlwBufferBlock_cntEpp_DATO_1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N10_0,
      O => NlwBufferSignal_cntEpp_DATO_1_IN
    );
  NlwBufferBlock_cntEpp_DATO_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cntEpp_DATO_0_CLK
    );
  NlwBufferBlock_cntEpp_DATO_0_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N11_0,
      O => NlwBufferSignal_cntEpp_DATO_0_IN
    );
  NlwBufferBlock_cntEpp_DATO_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cntEpp_DATO_7_CLK
    );
  NlwBufferBlock_cntEpp_DATO_7_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N4_0,
      O => NlwBufferSignal_cntEpp_DATO_7_IN
    );
  NlwBufferBlock_cntEpp_DATO_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cntEpp_DATO_6_CLK
    );
  NlwBufferBlock_cntEpp_DATO_6_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N5_0,
      O => NlwBufferSignal_cntEpp_DATO_6_IN
    );
  NlwBufferBlock_cntEpp_DATO_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cntEpp_DATO_5_CLK
    );
  NlwBufferBlock_cntEpp_DATO_5_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N6_0,
      O => NlwBufferSignal_cntEpp_DATO_5_IN
    );
  NlwBufferBlock_cntEpp_DATO_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cntEpp_DATO_4_CLK
    );
  NlwBufferBlock_cntEpp_DATO_4_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N7_0,
      O => NlwBufferSignal_cntEpp_DATO_4_IN
    );
  NlwBufferBlock_cntEpp_DIR_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cntEpp_DIR_7_CLK
    );
  NlwBufferBlock_cntEpp_DIR_7_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N4_0,
      O => NlwBufferSignal_cntEpp_DIR_7_IN
    );
  NlwBufferBlock_cntEpp_DIR_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cntEpp_DIR_3_CLK
    );
  NlwBufferBlock_cntEpp_DIR_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cntEpp_DIR_6_CLK
    );
  NlwBufferBlock_cntEpp_DIR_6_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N5_0,
      O => NlwBufferSignal_cntEpp_DIR_6_IN
    );
  NlwBufferBlock_cntEpp_DIR_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cntEpp_DIR_2_CLK
    );
  NlwBufferBlock_cntEpp_DIR_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cntEpp_DIR_5_CLK
    );
  NlwBufferBlock_cntEpp_DIR_5_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N6_0,
      O => NlwBufferSignal_cntEpp_DIR_5_IN
    );
  NlwBufferBlock_cntEpp_DIR_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cntEpp_DIR_1_CLK
    );
  NlwBufferBlock_cntEpp_DIR_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cntEpp_DIR_4_CLK
    );
  NlwBufferBlock_cntEpp_DIR_4_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N7_0,
      O => NlwBufferSignal_cntEpp_DIR_4_IN
    );
  NlwBufferBlock_cntEpp_DIR_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cntEpp_DIR_0_CLK
    );
  NlwBufferBlock_DATO_REG_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DATO_REG_7_CLK
    );
  NlwBufferBlock_DATO_REG_7_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cntEpp_DATO(7),
      O => NlwBufferSignal_DATO_REG_7_IN
    );
  NlwBufferBlock_DATO_REG_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DATO_REG_6_CLK
    );
  NlwBufferBlock_DATO_REG_6_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cntEpp_DATO(6),
      O => NlwBufferSignal_DATO_REG_6_IN
    );
  NlwBufferBlock_DATO_REG_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DATO_REG_5_CLK
    );
  NlwBufferBlock_DATO_REG_5_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cntEpp_DATO(5),
      O => NlwBufferSignal_DATO_REG_5_IN
    );
  NlwBufferBlock_DATO_REG_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DATO_REG_4_CLK
    );
  NlwBufferBlock_DATO_REG_4_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cntEpp_DATO(4),
      O => NlwBufferSignal_DATO_REG_4_IN
    );
  NlwBufferBlock_DIR_REG_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIR_REG_7_CLK
    );
  NlwBufferBlock_DIR_REG_7_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cntEpp_DIR(7),
      O => NlwBufferSignal_DIR_REG_7_IN
    );
  NlwBufferBlock_DIR_REG_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIR_REG_6_CLK
    );
  NlwBufferBlock_DIR_REG_6_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cntEpp_DIR(6),
      O => NlwBufferSignal_DIR_REG_6_IN
    );
  NlwBufferBlock_DIR_REG_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIR_REG_5_CLK
    );
  NlwBufferBlock_DIR_REG_5_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cntEpp_DIR(5),
      O => NlwBufferSignal_DIR_REG_5_IN
    );
  NlwBufferBlock_DIR_REG_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIR_REG_4_CLK
    );
  NlwBufferBlock_DIR_REG_4_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cntEpp_DIR(4),
      O => NlwBufferSignal_DIR_REG_4_IN
    );
  NlwBufferBlock_DATO_REG_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DATO_REG_3_CLK
    );
  NlwBufferBlock_DATO_REG_3_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cntEpp_DATO(3),
      O => NlwBufferSignal_DATO_REG_3_IN
    );
  NlwBufferBlock_DATO_REG_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DATO_REG_2_CLK
    );
  NlwBufferBlock_DATO_REG_2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cntEpp_DATO(2),
      O => NlwBufferSignal_DATO_REG_2_IN
    );
  NlwBufferBlock_DATO_REG_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DATO_REG_1_CLK
    );
  NlwBufferBlock_DATO_REG_1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cntEpp_DATO(1),
      O => NlwBufferSignal_DATO_REG_1_IN
    );
  NlwBufferBlock_DATO_REG_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DATO_REG_0_CLK
    );
  NlwBufferBlock_DATO_REG_0_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cntEpp_DATO(0),
      O => NlwBufferSignal_DATO_REG_0_IN
    );
  NlwBufferBlock_cntEpp_DATO_VLD_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cntEpp_DATO_VLD_CLK
    );
  NlwBufferBlock_cntEpp_DIR_VLD_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cntEpp_DIR_VLD_CLK
    );
  NlwBufferBlock_cntEpp_DIR_VLD_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cntEpp_S11,
      O => NlwBufferSignal_cntEpp_DIR_VLD_IN
    );
  NlwBufferBlock_DIR_REG_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIR_REG_3_CLK
    );
  NlwBufferBlock_DIR_REG_3_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cntEpp_DIR_3_0,
      O => NlwBufferSignal_DIR_REG_3_IN
    );
  NlwBufferBlock_DIR_REG_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIR_REG_2_CLK
    );
  NlwBufferBlock_DIR_REG_2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cntEpp_DIR_2_0,
      O => NlwBufferSignal_DIR_REG_2_IN
    );
  NlwBufferBlock_DIR_REG_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIR_REG_1_CLK
    );
  NlwBufferBlock_DIR_REG_1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cntEpp_DIR_1_0,
      O => NlwBufferSignal_DIR_REG_1_IN
    );
  NlwBufferBlock_DIR_REG_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIR_REG_0_CLK
    );
  NlwBufferBlock_DIR_REG_0_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cntEpp_DIR_0_0,
      O => NlwBufferSignal_DIR_REG_0_IN
    );
  NlwBufferBlock_cntEpp_Q2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cntEpp_Q2_CLK
    );
  NlwBufferBlock_cntEpp_Q2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => DSTRB_IBUF_0,
      O => NlwBufferSignal_cntEpp_Q2_IN
    );
  NlwBufferBlock_cntEpp_Q_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cntEpp_Q_CLK
    );
  NlwBufferBlock_cntEpp_Q_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ASTRB_IBUF_0,
      O => NlwBufferSignal_cntEpp_Q_IN
    );
  NlwBufferBlock_cntEpp_CE_RD_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_cntEpp_CE_RD_CLK
    );
  NlwBufferBlock_DATO_RD_comm_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DATO_RD_comm_3_CLK
    );
  NlwBufferBlock_DATO_RD_comm_3_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SWITCHES_I_3_IBUF_0,
      O => NlwBufferSignal_DATO_RD_comm_3_IN
    );
  NlwBufferBlock_DATO_RD_comm_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DATO_RD_comm_2_CLK
    );
  NlwBufferBlock_DATO_RD_comm_2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SWITCHES_I_2_IBUF_0,
      O => NlwBufferSignal_DATO_RD_comm_2_IN
    );
  NlwBufferBlock_DATO_RD_comm_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DATO_RD_comm_1_CLK
    );
  NlwBufferBlock_DATO_RD_comm_1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SWITCHES_I_1_IBUF_0,
      O => NlwBufferSignal_DATO_RD_comm_1_IN
    );
  NlwBufferBlock_DATO_RD_comm_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DATO_RD_comm_0_CLK
    );
  NlwBufferBlock_DATO_RD_comm_0_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SWITCHES_I_0_IBUF_0,
      O => NlwBufferSignal_DATO_RD_comm_0_IN
    );
  NlwBlock_top_system1_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_top_system1_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;


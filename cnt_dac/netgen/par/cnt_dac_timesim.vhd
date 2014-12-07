--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: cnt_dac_timesim.vhd
-- /___/   /\     Timestamp: Sun Dec 07 00:27:10 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf cnt_dac.pcf -rpw 100 -tpw 0 -ar Structure -tm cnt_dac -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim cnt_dac.ncd cnt_dac_timesim.vhd 
-- Device	: 6slx45csg324-3 (PRODUCTION 1.23 2013-10-13)
-- Input file	: cnt_dac.ncd
-- Output file	: C:\Users\christopher\Dropbox\workspace\modelado14\cnt_dac\netgen\par\cnt_dac_timesim.vhd
-- # of Entities	: 1
-- Design Name	: cnt_dac
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

entity cnt_dac is
  port (
    CLK : in STD_LOGIC := 'X'; 
    RST : in STD_LOGIC := 'X'; 
    DATO_OK : in STD_LOGIC := 'X'; 
    SYNC : out STD_LOGIC; 
    SCLK : out STD_LOGIC; 
    D1 : out STD_LOGIC; 
    D2 : out STD_LOGIC; 
    DATO1 : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    DATO2 : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end cnt_dac;

architecture Structure of cnt_dac is
  signal Mmux_D11 : STD_LOGIC; 
  signal DATO1_6_IBUF_0 : STD_LOGIC; 
  signal DATO1_4_IBUF_0 : STD_LOGIC; 
  signal DATO1_5_IBUF_0 : STD_LOGIC; 
  signal DATO1_7_IBUF_0 : STD_LOGIC; 
  signal D1_OBUF_198 : STD_LOGIC; 
  signal DATO1_2_IBUF_0 : STD_LOGIC; 
  signal DATO1_0_IBUF_0 : STD_LOGIC; 
  signal DATO1_1_IBUF_0 : STD_LOGIC; 
  signal DATO1_3_IBUF_0 : STD_LOGIC; 
  signal Mmux_D21 : STD_LOGIC; 
  signal DATO2_6_IBUF_0 : STD_LOGIC; 
  signal DATO2_4_IBUF_0 : STD_LOGIC; 
  signal DATO2_5_IBUF_0 : STD_LOGIC; 
  signal DATO2_7_IBUF_0 : STD_LOGIC; 
  signal DATO_OK_IBUF_0 : STD_LOGIC; 
  signal state_FSM_FFd2_211 : STD_LOGIC; 
  signal state_FSM_FFd1_212 : STD_LOGIC; 
  signal DATO2_2_IBUF_0 : STD_LOGIC; 
  signal DATO2_0_IBUF_0 : STD_LOGIC; 
  signal DATO2_1_IBUF_0 : STD_LOGIC; 
  signal DATO2_3_IBUF_0 : STD_LOGIC; 
  signal CLK_BUFGP : STD_LOGIC; 
  signal D2_OBUF_218 : STD_LOGIC; 
  signal RST_IBUF_0 : STD_LOGIC; 
  signal SYNC_OBUF_221 : STD_LOGIC; 
  signal sclkPulseCounter_0_222 : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal CEcounter_224 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal Mmux_D211_226 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal Mmux_D111_228 : STD_LOGIC; 
  signal DATO_OK_IBUF_1 : STD_LOGIC; 
  signal DATO1_0_IBUF_4 : STD_LOGIC; 
  signal DATO1_1_IBUF_7 : STD_LOGIC; 
  signal DATO1_2_IBUF_10 : STD_LOGIC; 
  signal DATO1_3_IBUF_13 : STD_LOGIC; 
  signal DATO2_0_IBUF_16 : STD_LOGIC; 
  signal DATO1_4_IBUF_19 : STD_LOGIC; 
  signal DATO2_1_IBUF_22 : STD_LOGIC; 
  signal DATO1_5_IBUF_25 : STD_LOGIC; 
  signal DATO2_2_IBUF_28 : STD_LOGIC; 
  signal DATO1_6_IBUF_31 : STD_LOGIC; 
  signal DATO2_3_IBUF_34 : STD_LOGIC; 
  signal DATO1_7_IBUF_37 : STD_LOGIC; 
  signal DATO2_4_IBUF_42 : STD_LOGIC; 
  signal DATO2_5_IBUF_45 : STD_LOGIC; 
  signal DATO2_6_IBUF_48 : STD_LOGIC; 
  signal DATO2_7_IBUF_51 : STD_LOGIC; 
  signal RST_IBUF_56 : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_63 : STD_LOGIC; 
  signal CEcounter_rstpot_100 : STD_LOGIC; 
  signal N01_pack_8 : STD_LOGIC; 
  signal state_FSM_FFd2_In : STD_LOGIC; 
  signal state_FSM_FFd1_In : STD_LOGIC; 
  signal N2_pack_4 : STD_LOGIC; 
  signal state_1_X_4_o_Mux_16_o_110 : STD_LOGIC; 
  signal Mcount_muxSelect3 : STD_LOGIC; 
  signal Mcount_muxSelect2 : STD_LOGIC; 
  signal Mcount_muxSelect1 : STD_LOGIC; 
  signal Mcount_muxSelect : STD_LOGIC; 
  signal Mcount_sclkPulseCounter_0 : STD_LOGIC; 
  signal NlwBufferSignal_SCLK_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_SYNC_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_D1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_D2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CLK_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_CEcounter_CLK : STD_LOGIC; 
  signal NlwBufferSignal_state_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_state_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SYNC_CLK : STD_LOGIC; 
  signal NlwBufferSignal_muxSelect_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_muxSelect_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_muxSelect_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_muxSelect_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sclkPulseCounter_0_CLK : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal muxSelect : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  DATO_OK_IBUF : X_BUF
    generic map(
      LOC => "PAD230",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO_OK_IBUF_1,
      I => DATO_OK
    );
  ProtoComp4_IMUX : X_BUF
    generic map(
      LOC => "PAD230",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO_OK_IBUF_1,
      O => DATO_OK_IBUF_0
    );
  DATO1_0_IBUF : X_BUF
    generic map(
      LOC => "PAD209",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO1_0_IBUF_4,
      I => DATO1(0)
    );
  ProtoComp4_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD209",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO1_0_IBUF_4,
      O => DATO1_0_IBUF_0
    );
  DATO1_1_IBUF : X_BUF
    generic map(
      LOC => "PAD210",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO1_1_IBUF_7,
      I => DATO1(1)
    );
  ProtoComp4_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD210",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO1_1_IBUF_7,
      O => DATO1_1_IBUF_0
    );
  DATO1_2_IBUF : X_BUF
    generic map(
      LOC => "PAD211",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO1_2_IBUF_10,
      I => DATO1(2)
    );
  ProtoComp4_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD211",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO1_2_IBUF_10,
      O => DATO1_2_IBUF_0
    );
  DATO1_3_IBUF : X_BUF
    generic map(
      LOC => "PAD212",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO1_3_IBUF_13,
      I => DATO1(3)
    );
  ProtoComp4_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD212",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO1_3_IBUF_13,
      O => DATO1_3_IBUF_0
    );
  DATO2_0_IBUF : X_BUF
    generic map(
      LOC => "PAD221",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO2_0_IBUF_16,
      I => DATO2(0)
    );
  ProtoComp4_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD221",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO2_0_IBUF_16,
      O => DATO2_0_IBUF_0
    );
  DATO1_4_IBUF : X_BUF
    generic map(
      LOC => "PAD213",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO1_4_IBUF_19,
      I => DATO1(4)
    );
  ProtoComp4_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD213",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO1_4_IBUF_19,
      O => DATO1_4_IBUF_0
    );
  DATO2_1_IBUF : X_BUF
    generic map(
      LOC => "PAD222",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO2_1_IBUF_22,
      I => DATO2(1)
    );
  ProtoComp4_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD222",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO2_1_IBUF_22,
      O => DATO2_1_IBUF_0
    );
  DATO1_5_IBUF : X_BUF
    generic map(
      LOC => "PAD214",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO1_5_IBUF_25,
      I => DATO1(5)
    );
  ProtoComp4_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD214",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO1_5_IBUF_25,
      O => DATO1_5_IBUF_0
    );
  DATO2_2_IBUF : X_BUF
    generic map(
      LOC => "PAD223",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO2_2_IBUF_28,
      I => DATO2(2)
    );
  ProtoComp4_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD223",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO2_2_IBUF_28,
      O => DATO2_2_IBUF_0
    );
  DATO1_6_IBUF : X_BUF
    generic map(
      LOC => "PAD215",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO1_6_IBUF_31,
      I => DATO1(6)
    );
  ProtoComp4_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD215",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO1_6_IBUF_31,
      O => DATO1_6_IBUF_0
    );
  DATO2_3_IBUF : X_BUF
    generic map(
      LOC => "PAD224",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO2_3_IBUF_34,
      I => DATO2(3)
    );
  ProtoComp4_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD224",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO2_3_IBUF_34,
      O => DATO2_3_IBUF_0
    );
  DATO1_7_IBUF : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO1_7_IBUF_37,
      I => DATO1(7)
    );
  ProtoComp4_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO1_7_IBUF_37,
      O => DATO1_7_IBUF_0
    );
  SCLK_OBUF : X_OBUF
    generic map(
      LOC => "PAD232"
    )
    port map (
      I => NlwBufferSignal_SCLK_OBUF_I,
      O => SCLK
    );
  DATO2_4_IBUF : X_BUF
    generic map(
      LOC => "PAD225",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO2_4_IBUF_42,
      I => DATO2(4)
    );
  ProtoComp4_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD225",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO2_4_IBUF_42,
      O => DATO2_4_IBUF_0
    );
  DATO2_5_IBUF : X_BUF
    generic map(
      LOC => "PAD226",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO2_5_IBUF_45,
      I => DATO2(5)
    );
  ProtoComp4_IMUX_14 : X_BUF
    generic map(
      LOC => "PAD226",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO2_5_IBUF_45,
      O => DATO2_5_IBUF_0
    );
  DATO2_6_IBUF : X_BUF
    generic map(
      LOC => "PAD227",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO2_6_IBUF_48,
      I => DATO2(6)
    );
  ProtoComp4_IMUX_15 : X_BUF
    generic map(
      LOC => "PAD227",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO2_6_IBUF_48,
      O => DATO2_6_IBUF_0
    );
  DATO2_7_IBUF : X_BUF
    generic map(
      LOC => "PAD228",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATO2_7_IBUF_51,
      I => DATO2(7)
    );
  ProtoComp4_IMUX_16 : X_BUF
    generic map(
      LOC => "PAD228",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATO2_7_IBUF_51,
      O => DATO2_7_IBUF_0
    );
  SYNC_OBUF : X_OBUF
    generic map(
      LOC => "PAD229"
    )
    port map (
      I => NlwBufferSignal_SYNC_OBUF_I,
      O => SYNC
    );
  RST_IBUF : X_BUF
    generic map(
      LOC => "PAD219",
      PATHPULSE => 202 ps
    )
    port map (
      O => RST_IBUF_56,
      I => RST
    );
  ProtoComp4_IMUX_17 : X_BUF
    generic map(
      LOC => "PAD219",
      PATHPULSE => 202 ps
    )
    port map (
      I => RST_IBUF_56,
      O => RST_IBUF_0
    );
  D1_OBUF : X_OBUF
    generic map(
      LOC => "PAD231"
    )
    port map (
      I => NlwBufferSignal_D1_OBUF_I,
      O => D1
    );
  D2_OBUF : X_OBUF
    generic map(
      LOC => "PAD220"
    )
    port map (
      I => NlwBufferSignal_D2_OBUF_I,
      O => D2
    );
  CLK_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD314",
      PATHPULSE => 202 ps
    )
    port map (
      O => CLK_BUFGP_IBUFG_63,
      I => CLK
    );
  ProtoComp4_IMUX_18 : X_BUF
    generic map(
      LOC => "PAD314",
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP_IBUFG_63,
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
  Mmux_D211 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y2",
      INIT => X"FFAACCF000AACCF0"
    )
    port map (
      ADR4 => muxSelect(0),
      ADR3 => muxSelect(1),
      ADR0 => DATO2_6_IBUF_0,
      ADR5 => DATO2_4_IBUF_0,
      ADR1 => DATO2_5_IBUF_0,
      ADR2 => DATO2_7_IBUF_0,
      O => Mmux_D21
    );
  CEcounter_CEcounter_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N01_pack_8,
      O => N01
    );
  CEcounter : X_FF
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_CEcounter_CLK,
      I => CEcounter_rstpot_100,
      O => CEcounter_224,
      RST => RST_IBUF_0,
      SET => GND
    );
  CEcounter_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => X"FF00FFFFFF00F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => DATO_OK_IBUF_0,
      ADR3 => CEcounter_224,
      ADR4 => state_FSM_FFd1_212,
      ADR5 => state_FSM_FFd2_211,
      O => CEcounter_rstpot_100
    );
  Mmux_D213 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => X"5A500A005A500A00"
    )
    port map (
      ADR1 => '1',
      ADR0 => muxSelect(3),
      ADR2 => muxSelect(2),
      ADR4 => Mmux_D21,
      ADR3 => Mmux_D211_226,
      ADR5 => '1',
      O => D2_OBUF_218
    );
  state_FSM_FFd2_In1_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => X"A0A0A0A0"
    )
    port map (
      ADR1 => '1',
      ADR0 => muxSelect(3),
      ADR2 => muxSelect(2),
      ADR3 => '1',
      ADR4 => '1',
      O => N01_pack_8
    );
  Mmux_D212 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR5 => muxSelect(0),
      ADR4 => muxSelect(1),
      ADR3 => DATO2_2_IBUF_0,
      ADR2 => DATO2_0_IBUF_0,
      ADR1 => DATO2_1_IBUF_0,
      ADR0 => DATO2_3_IBUF_0,
      O => Mmux_D211_226
    );
  state_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_state_FSM_FFd2_CLK,
      I => state_FSM_FFd2_In,
      O => state_FSM_FFd2_211,
      RST => RST_IBUF_0,
      SET => GND
    );
  state_FSM_FFd2_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => X"7F7F7F7F0000FF00"
    )
    port map (
      ADR3 => DATO_OK_IBUF_0,
      ADR2 => muxSelect(0),
      ADR0 => muxSelect(1),
      ADR5 => state_FSM_FFd2_211,
      ADR1 => N01,
      ADR4 => state_FSM_FFd1_212,
      O => state_FSM_FFd2_In
    );
  state_FSM_FFd1_state_FSM_FFd1_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N2_pack_4,
      O => N2
    );
  state_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X21Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_state_FSM_FFd1_CLK,
      I => state_FSM_FFd1_In,
      O => state_FSM_FFd1_212,
      RST => RST_IBUF_0,
      SET => GND
    );
  state_FSM_FFd1_In11 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y3",
      INIT => X"8000000080000000"
    )
    port map (
      ADR2 => muxSelect(2),
      ADR1 => muxSelect(1),
      ADR4 => muxSelect(0),
      ADR0 => muxSelect(3),
      ADR3 => state_FSM_FFd2_211,
      ADR5 => '1',
      O => state_FSM_FFd1_In
    );
  state_1_X_4_o_Mux_16_o_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X21Y3",
      INIT => X"A0A00000"
    )
    port map (
      ADR2 => muxSelect(2),
      ADR1 => '1',
      ADR4 => muxSelect(0),
      ADR0 => muxSelect(3),
      ADR3 => '1',
      O => N2_pack_4
    );
  SYNC_103 : X_FF
    generic map(
      LOC => "SLICE_X21Y3",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SYNC_CLK,
      I => state_1_X_4_o_Mux_16_o_110,
      O => SYNC_OBUF_221,
      SET => RST_IBUF_0,
      RST => GND
    );
  state_1_X_4_o_Mux_16_o : X_LUT6
    generic map(
      LOC => "SLICE_X21Y3",
      INIT => X"BFBFAAAAAAFFAAFF"
    )
    port map (
      ADR3 => DATO_OK_IBUF_0,
      ADR2 => N2,
      ADR1 => muxSelect(1),
      ADR4 => SYNC_OBUF_221,
      ADR0 => state_FSM_FFd1_212,
      ADR5 => state_FSM_FFd2_211,
      O => state_1_X_4_o_Mux_16_o_110
    );
  muxSelect_3 : X_FF
    generic map(
      LOC => "SLICE_X21Y4",
      INIT => '0'
    )
    port map (
      CE => CEcounter_224,
      CLK => NlwBufferSignal_muxSelect_3_CLK,
      I => Mcount_muxSelect3,
      O => muxSelect(3),
      RST => RST_IBUF_0,
      SET => GND
    );
  Mcount_muxSelect31 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y4",
      INIT => X"55FFAA00FFFF0000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => muxSelect(2),
      ADR4 => muxSelect(3),
      ADR3 => muxSelect(1),
      ADR5 => muxSelect(0),
      O => Mcount_muxSelect3
    );
  muxSelect_2 : X_FF
    generic map(
      LOC => "SLICE_X21Y4",
      INIT => '0'
    )
    port map (
      CE => CEcounter_224,
      CLK => NlwBufferSignal_muxSelect_2_CLK,
      I => Mcount_muxSelect2,
      O => muxSelect(2),
      RST => RST_IBUF_0,
      SET => GND
    );
  Mcount_muxSelect_xor_2_11 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y4",
      INIT => X"0F0FF0F0FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => muxSelect(2),
      ADR2 => muxSelect(0),
      ADR5 => muxSelect(1),
      O => Mcount_muxSelect2
    );
  muxSelect_1 : X_FF
    generic map(
      LOC => "SLICE_X21Y4",
      INIT => '0'
    )
    port map (
      CE => CEcounter_224,
      CLK => NlwBufferSignal_muxSelect_1_CLK,
      I => Mcount_muxSelect1,
      O => muxSelect(1),
      RST => RST_IBUF_0,
      SET => GND
    );
  Mcount_muxSelect_xor_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y4",
      INIT => X"5555AAAA5555AAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => muxSelect(1),
      ADR3 => '1',
      ADR0 => muxSelect(0),
      O => Mcount_muxSelect1
    );
  muxSelect_0 : X_FF
    generic map(
      LOC => "SLICE_X21Y4",
      INIT => '0'
    )
    port map (
      CE => CEcounter_224,
      CLK => NlwBufferSignal_muxSelect_0_CLK,
      I => Mcount_muxSelect,
      O => muxSelect(0),
      RST => RST_IBUF_0,
      SET => GND
    );
  Mcount_muxSelect_xor_0_11_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y4",
      INIT => X"00000000FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => muxSelect(0),
      ADR4 => '1',
      ADR3 => '1',
      O => Mcount_muxSelect
    );
  sclkPulseCounter_0 : X_FF
    generic map(
      LOC => "SLICE_X21Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_sclkPulseCounter_0_CLK,
      I => Mcount_sclkPulseCounter_0,
      O => sclkPulseCounter_0_222,
      RST => RST_IBUF_0,
      SET => GND
    );
  Mcount_sclkPulseCounter_0_xor_0_11_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y5",
      INIT => X"00000000FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => sclkPulseCounter_0_222,
      ADR4 => '1',
      ADR3 => '1',
      O => Mcount_sclkPulseCounter_0
    );
  Mmux_D112 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y1",
      INIT => X"F5F5DD88A0A0DD88"
    )
    port map (
      ADR4 => muxSelect(0),
      ADR0 => muxSelect(1),
      ADR5 => DATO1_2_IBUF_0,
      ADR2 => DATO1_0_IBUF_0,
      ADR1 => DATO1_1_IBUF_0,
      ADR3 => DATO1_3_IBUF_0,
      O => Mmux_D111_228
    );
  Mmux_D113 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y1",
      INIT => X"0000FF00CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR5 => muxSelect(3),
      ADR4 => muxSelect(2),
      ADR1 => Mmux_D11,
      ADR3 => Mmux_D111_228,
      O => D1_OBUF_198
    );
  Mmux_D111 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y1",
      INIT => X"B8B8FFCCB8B83300"
    )
    port map (
      ADR1 => muxSelect(0),
      ADR4 => muxSelect(1),
      ADR5 => DATO1_6_IBUF_0,
      ADR0 => DATO1_4_IBUF_0,
      ADR2 => DATO1_5_IBUF_0,
      ADR3 => DATO1_7_IBUF_0,
      O => Mmux_D11
    );
  NlwBufferBlock_SCLK_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sclkPulseCounter_0_222,
      O => NlwBufferSignal_SCLK_OBUF_I
    );
  NlwBufferBlock_SYNC_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => SYNC_OBUF_221,
      O => NlwBufferSignal_SYNC_OBUF_I
    );
  NlwBufferBlock_D1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => D1_OBUF_198,
      O => NlwBufferSignal_D1_OBUF_I
    );
  NlwBufferBlock_D2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => D2_OBUF_218,
      O => NlwBufferSignal_D2_OBUF_I
    );
  NlwBufferBlock_CLK_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP_IBUFG_0,
      O => NlwBufferSignal_CLK_BUFGP_BUFG_IN
    );
  NlwBufferBlock_CEcounter_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_CEcounter_CLK
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
  NlwBufferBlock_SYNC_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SYNC_CLK
    );
  NlwBufferBlock_muxSelect_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sclkPulseCounter_0_222,
      O => NlwBufferSignal_muxSelect_3_CLK
    );
  NlwBufferBlock_muxSelect_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sclkPulseCounter_0_222,
      O => NlwBufferSignal_muxSelect_2_CLK
    );
  NlwBufferBlock_muxSelect_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sclkPulseCounter_0_222,
      O => NlwBufferSignal_muxSelect_1_CLK
    );
  NlwBufferBlock_muxSelect_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => sclkPulseCounter_0_222,
      O => NlwBufferSignal_muxSelect_0_CLK
    );
  NlwBufferBlock_sclkPulseCounter_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_sclkPulseCounter_0_CLK
    );
  NlwBlock_cnt_dac_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_cnt_dac_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;


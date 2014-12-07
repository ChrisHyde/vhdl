--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: dpram_mem_timesim.vhd
-- /___/   /\     Timestamp: Sun Dec 07 01:33:25 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf dpram_mem.pcf -rpw 100 -tpw 0 -ar Structure -tm dpram_mem -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim dpram_mem.ncd dpram_mem_timesim.vhd 
-- Device	: 6slx45csg324-3 (PRODUCTION 1.23 2013-10-13)
-- Input file	: dpram_mem.ncd
-- Output file	: C:\Users\christopher\Dropbox\workspace\modelado14\dpram_mem\netgen\par\dpram_mem_timesim.vhd
-- # of Entities	: 1
-- Design Name	: dpram_mem
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

entity dpram_mem is
  port (
    WE : in STD_LOGIC := 'X'; 
    CLK : in STD_LOGIC := 'X'; 
    RST : in STD_LOGIC := 'X'; 
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    ADDR_IN : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    ADDR_OUT : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end dpram_mem;

architecture Structure of dpram_mem is
  signal CLK_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal CLK_BUFGP : STD_LOGIC; 
  signal WE_IBUF_0 : STD_LOGIC; 
  signal ADDR_IN_7_IBUF_0 : STD_LOGIC; 
  signal ADDR_IN_6_IBUF_0 : STD_LOGIC; 
  signal ADDR_IN_5_IBUF_0 : STD_LOGIC; 
  signal ADDR_IN_4_IBUF_0 : STD_LOGIC; 
  signal ADDR_IN_3_IBUF_0 : STD_LOGIC; 
  signal ADDR_IN_2_IBUF_0 : STD_LOGIC; 
  signal ADDR_IN_1_IBUF_0 : STD_LOGIC; 
  signal ADDR_IN_0_IBUF_0 : STD_LOGIC; 
  signal DIN_7_IBUF_0 : STD_LOGIC; 
  signal DIN_6_IBUF_0 : STD_LOGIC; 
  signal DIN_5_IBUF_0 : STD_LOGIC; 
  signal DIN_4_IBUF_0 : STD_LOGIC; 
  signal DIN_3_IBUF_0 : STD_LOGIC; 
  signal DIN_2_IBUF_0 : STD_LOGIC; 
  signal DIN_1_IBUF_0 : STD_LOGIC; 
  signal DIN_0_IBUF_0 : STD_LOGIC; 
  signal ADDR_OUT_7_IBUF_0 : STD_LOGIC; 
  signal ADDR_OUT_6_IBUF_0 : STD_LOGIC; 
  signal ADDR_OUT_5_IBUF_0 : STD_LOGIC; 
  signal ADDR_OUT_4_IBUF_0 : STD_LOGIC; 
  signal ADDR_OUT_3_IBUF_0 : STD_LOGIC; 
  signal ADDR_OUT_2_IBUF_0 : STD_LOGIC; 
  signal ADDR_OUT_1_IBUF_0 : STD_LOGIC; 
  signal ADDR_OUT_0_IBUF_0 : STD_LOGIC; 
  signal DOUT_7_OBUF_208 : STD_LOGIC; 
  signal DOUT_6_OBUF_209 : STD_LOGIC; 
  signal DOUT_5_OBUF_210 : STD_LOGIC; 
  signal DOUT_4_OBUF_211 : STD_LOGIC; 
  signal DOUT_3_OBUF_212 : STD_LOGIC; 
  signal DOUT_2_OBUF_213 : STD_LOGIC; 
  signal DOUT_1_OBUF_214 : STD_LOGIC; 
  signal DOUT_0_OBUF_215 : STD_LOGIC; 
  signal Mram_mem_pos_DOBDO8 : STD_LOGIC; 
  signal Mram_mem_pos_DOBDO9 : STD_LOGIC; 
  signal Mram_mem_pos_DOBDO10 : STD_LOGIC; 
  signal Mram_mem_pos_DOBDO11 : STD_LOGIC; 
  signal Mram_mem_pos_DOBDO12 : STD_LOGIC; 
  signal Mram_mem_pos_DOBDO13 : STD_LOGIC; 
  signal Mram_mem_pos_DOBDO14 : STD_LOGIC; 
  signal Mram_mem_pos_DOBDO15 : STD_LOGIC; 
  signal Mram_mem_pos_DOPBDOP0 : STD_LOGIC; 
  signal Mram_mem_pos_DOPBDOP1 : STD_LOGIC; 
  signal Mram_mem_pos_DOPADOP0 : STD_LOGIC; 
  signal Mram_mem_pos_DOPADOP1 : STD_LOGIC; 
  signal Mram_mem_pos_DOADO0 : STD_LOGIC; 
  signal Mram_mem_pos_DOADO1 : STD_LOGIC; 
  signal Mram_mem_pos_DOADO2 : STD_LOGIC; 
  signal Mram_mem_pos_DOADO3 : STD_LOGIC; 
  signal Mram_mem_pos_DOADO4 : STD_LOGIC; 
  signal Mram_mem_pos_DOADO5 : STD_LOGIC; 
  signal Mram_mem_pos_DOADO6 : STD_LOGIC; 
  signal Mram_mem_pos_DOADO7 : STD_LOGIC; 
  signal Mram_mem_pos_DOADO8 : STD_LOGIC; 
  signal Mram_mem_pos_DOADO9 : STD_LOGIC; 
  signal Mram_mem_pos_DOADO10 : STD_LOGIC; 
  signal Mram_mem_pos_DOADO11 : STD_LOGIC; 
  signal Mram_mem_pos_DOADO12 : STD_LOGIC; 
  signal Mram_mem_pos_DOADO13 : STD_LOGIC; 
  signal Mram_mem_pos_DOADO14 : STD_LOGIC; 
  signal Mram_mem_pos_DOADO15 : STD_LOGIC; 
  signal Mram_mem_pos_DIPADIP1 : STD_LOGIC; 
  signal Mram_mem_pos_ADDRBRDADDR0 : STD_LOGIC; 
  signal Mram_mem_pos_ADDRBRDADDR1 : STD_LOGIC; 
  signal Mram_mem_pos_ADDRBRDADDR2 : STD_LOGIC; 
  signal Mram_mem_pos_DIADI8 : STD_LOGIC; 
  signal Mram_mem_pos_DIADI9 : STD_LOGIC; 
  signal Mram_mem_pos_DIADI10 : STD_LOGIC; 
  signal Mram_mem_pos_DIADI11 : STD_LOGIC; 
  signal Mram_mem_pos_DIADI12 : STD_LOGIC; 
  signal Mram_mem_pos_DIADI13 : STD_LOGIC; 
  signal Mram_mem_pos_DIADI14 : STD_LOGIC; 
  signal Mram_mem_pos_DIADI15 : STD_LOGIC; 
  signal Mram_mem_pos_DIBDI0 : STD_LOGIC; 
  signal Mram_mem_pos_DIBDI1 : STD_LOGIC; 
  signal Mram_mem_pos_DIBDI2 : STD_LOGIC; 
  signal Mram_mem_pos_DIBDI3 : STD_LOGIC; 
  signal Mram_mem_pos_DIBDI4 : STD_LOGIC; 
  signal Mram_mem_pos_DIBDI5 : STD_LOGIC; 
  signal Mram_mem_pos_DIBDI6 : STD_LOGIC; 
  signal Mram_mem_pos_DIBDI7 : STD_LOGIC; 
  signal Mram_mem_pos_DIBDI8 : STD_LOGIC; 
  signal Mram_mem_pos_DIBDI9 : STD_LOGIC; 
  signal Mram_mem_pos_DIBDI10 : STD_LOGIC; 
  signal Mram_mem_pos_DIBDI11 : STD_LOGIC; 
  signal Mram_mem_pos_DIBDI12 : STD_LOGIC; 
  signal Mram_mem_pos_DIBDI13 : STD_LOGIC; 
  signal Mram_mem_pos_DIBDI14 : STD_LOGIC; 
  signal Mram_mem_pos_DIBDI15 : STD_LOGIC; 
  signal Mram_mem_pos_DIPBDIP0 : STD_LOGIC; 
  signal Mram_mem_pos_DIPBDIP1 : STD_LOGIC; 
  signal Mram_mem_pos_ADDRAWRADDR0 : STD_LOGIC; 
  signal Mram_mem_pos_ADDRAWRADDR1 : STD_LOGIC; 
  signal Mram_mem_pos_ADDRAWRADDR2 : STD_LOGIC; 
  signal Mram_mem_pos_WEBWEU0_INT : STD_LOGIC; 
  signal Mram_mem_pos_WEBWEU1_INT : STD_LOGIC; 
  signal Mram_mem_pos_WEAWEL0_INT : STD_LOGIC; 
  signal Mram_mem_pos_WEAWEL1_INT : STD_LOGIC; 
  signal Mram_mem_pos_RSTA_INT : STD_LOGIC; 
  signal Mram_mem_pos_REGCEBREGCE_INT : STD_LOGIC; 
  signal Mram_mem_pos_CLKBRDCLK_INT : STD_LOGIC; 
  signal Mram_mem_pos_CLKAWRCLK_INT : STD_LOGIC; 
  signal Mram_mem_pos_ENAWREN_INT : STD_LOGIC; 
  signal Mram_mem_pos_REGCEA_INT : STD_LOGIC; 
  signal Mram_mem_pos_ENBRDEN_INT : STD_LOGIC; 
  signal Mram_mem_pos_RSTBRST_INT : STD_LOGIC; 
  signal DIN_0_IBUF_58 : STD_LOGIC; 
  signal DIN_1_IBUF_63 : STD_LOGIC; 
  signal DIN_2_IBUF_68 : STD_LOGIC; 
  signal ADDR_OUT_0_IBUF_73 : STD_LOGIC; 
  signal DIN_3_IBUF_76 : STD_LOGIC; 
  signal ADDR_OUT_1_IBUF_81 : STD_LOGIC; 
  signal DIN_4_IBUF_84 : STD_LOGIC; 
  signal ADDR_OUT_2_IBUF_89 : STD_LOGIC; 
  signal DIN_5_IBUF_92 : STD_LOGIC; 
  signal ADDR_OUT_3_IBUF_95 : STD_LOGIC; 
  signal DIN_6_IBUF_98 : STD_LOGIC; 
  signal ADDR_OUT_4_IBUF_101 : STD_LOGIC; 
  signal DIN_7_IBUF_104 : STD_LOGIC; 
  signal ADDR_OUT_5_IBUF_107 : STD_LOGIC; 
  signal WE_IBUF_110 : STD_LOGIC; 
  signal ADDR_OUT_6_IBUF_113 : STD_LOGIC; 
  signal ADDR_OUT_7_IBUF_116 : STD_LOGIC; 
  signal ADDR_IN_0_IBUF_119 : STD_LOGIC; 
  signal ADDR_IN_1_IBUF_122 : STD_LOGIC; 
  signal ADDR_IN_2_IBUF_125 : STD_LOGIC; 
  signal ADDR_IN_3_IBUF_128 : STD_LOGIC; 
  signal ADDR_IN_4_IBUF_131 : STD_LOGIC; 
  signal ADDR_IN_5_IBUF_134 : STD_LOGIC; 
  signal ADDR_IN_6_IBUF_137 : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_140 : STD_LOGIC; 
  signal ADDR_IN_7_IBUF_143 : STD_LOGIC; 
  signal NlwBufferSignal_CLK_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_DOUT_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DOUT_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DOUT_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DOUT_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DOUT_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DOUT_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DOUT_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DOUT_7_OBUF_I : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NlwBufferSignal_Mram_mem_pos_ADDRAWRADDR : STD_LOGIC_VECTOR ( 10 downto 3 ); 
  signal NlwBufferSignal_Mram_mem_pos_DIADI : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NlwBufferSignal_Mram_mem_pos_ADDRBRDADDR : STD_LOGIC_VECTOR ( 10 downto 3 ); 
begin
  CLK_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => NlwBufferSignal_CLK_BUFGP_BUFG_IN,
      O => CLK_BUFGP
    );
  Mram_mem_pos_WEBWEU0INV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y0",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => Mram_mem_pos_WEBWEU0_INT
    );
  Mram_mem_pos_WEBWEU1INV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y0",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => Mram_mem_pos_WEBWEU1_INT
    );
  Mram_mem_pos_WEAWEL0INV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y0",
      PATHPULSE => 202 ps
    )
    port map (
      I => WE_IBUF_0,
      O => Mram_mem_pos_WEAWEL0_INT
    );
  Mram_mem_pos_WEAWEL1INV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y0",
      PATHPULSE => 202 ps
    )
    port map (
      I => WE_IBUF_0,
      O => Mram_mem_pos_WEAWEL1_INT
    );
  Mram_mem_pos_RSTAINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y0",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => Mram_mem_pos_RSTA_INT
    );
  Mram_mem_pos_REGCEBREGCEINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y0",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => Mram_mem_pos_REGCEBREGCE_INT
    );
  Mram_mem_pos_CLKBRDCLKINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y0",
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => Mram_mem_pos_CLKBRDCLK_INT
    );
  Mram_mem_pos_CLKAWRCLKINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y0",
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => Mram_mem_pos_CLKAWRCLK_INT
    );
  Mram_mem_pos_ENAWRENINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y0",
      PATHPULSE => 202 ps
    )
    port map (
      I => '1',
      O => Mram_mem_pos_ENAWREN_INT
    );
  Mram_mem_pos_REGCEAINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y0",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => Mram_mem_pos_REGCEA_INT
    );
  Mram_mem_pos_ENBRDENINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y0",
      PATHPULSE => 202 ps
    )
    port map (
      I => '1',
      O => Mram_mem_pos_ENBRDEN_INT
    );
  Mram_mem_pos_RSTBRSTINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y0",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => Mram_mem_pos_RSTBRST_INT
    );
  Mram_mem_pos : X_RAMB8BWER
    generic map(
      DATA_WIDTH_A => 9,
      DATA_WIDTH_B => 9,
      DOA_REG => 0,
      DOB_REG => 0,
      EN_RSTRAM_A => TRUE,
      EN_RSTRAM_B => TRUE,
      RAM_MODE => "TDP",
      RST_PRIORITY_A => "CE",
      RST_PRIORITY_B => "CE",
      RSTTYPE => "SYNC",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      INIT_FILE => "NONE",
      SIM_COLLISION_CHECK => "ALL",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      LOC => "RAMB8_X1Y0"
    )
    port map (
      RSTBRST => Mram_mem_pos_RSTBRST_INT,
      ENBRDEN => Mram_mem_pos_ENBRDEN_INT,
      REGCEA => Mram_mem_pos_REGCEA_INT,
      ENAWREN => Mram_mem_pos_ENAWREN_INT,
      CLKAWRCLK => Mram_mem_pos_CLKAWRCLK_INT,
      CLKBRDCLK => Mram_mem_pos_CLKBRDCLK_INT,
      REGCEBREGCE => Mram_mem_pos_REGCEBREGCE_INT,
      RSTA => Mram_mem_pos_RSTA_INT,
      WEAWEL(1) => Mram_mem_pos_WEAWEL1_INT,
      WEAWEL(0) => Mram_mem_pos_WEAWEL0_INT,
      WEBWEU(1) => Mram_mem_pos_WEBWEU1_INT,
      WEBWEU(0) => Mram_mem_pos_WEBWEU0_INT,
      ADDRAWRADDR(12) => GND,
      ADDRAWRADDR(11) => GND,
      ADDRAWRADDR(10) => NlwBufferSignal_Mram_mem_pos_ADDRAWRADDR(10),
      ADDRAWRADDR(9) => NlwBufferSignal_Mram_mem_pos_ADDRAWRADDR(9),
      ADDRAWRADDR(8) => NlwBufferSignal_Mram_mem_pos_ADDRAWRADDR(8),
      ADDRAWRADDR(7) => NlwBufferSignal_Mram_mem_pos_ADDRAWRADDR(7),
      ADDRAWRADDR(6) => NlwBufferSignal_Mram_mem_pos_ADDRAWRADDR(6),
      ADDRAWRADDR(5) => NlwBufferSignal_Mram_mem_pos_ADDRAWRADDR(5),
      ADDRAWRADDR(4) => NlwBufferSignal_Mram_mem_pos_ADDRAWRADDR(4),
      ADDRAWRADDR(3) => NlwBufferSignal_Mram_mem_pos_ADDRAWRADDR(3),
      ADDRAWRADDR(2) => Mram_mem_pos_ADDRAWRADDR2,
      ADDRAWRADDR(1) => Mram_mem_pos_ADDRAWRADDR1,
      ADDRAWRADDR(0) => Mram_mem_pos_ADDRAWRADDR0,
      DIPBDIP(1) => Mram_mem_pos_DIPBDIP1,
      DIPBDIP(0) => Mram_mem_pos_DIPBDIP0,
      DIBDI(15) => Mram_mem_pos_DIBDI15,
      DIBDI(14) => Mram_mem_pos_DIBDI14,
      DIBDI(13) => Mram_mem_pos_DIBDI13,
      DIBDI(12) => Mram_mem_pos_DIBDI12,
      DIBDI(11) => Mram_mem_pos_DIBDI11,
      DIBDI(10) => Mram_mem_pos_DIBDI10,
      DIBDI(9) => Mram_mem_pos_DIBDI9,
      DIBDI(8) => Mram_mem_pos_DIBDI8,
      DIBDI(7) => Mram_mem_pos_DIBDI7,
      DIBDI(6) => Mram_mem_pos_DIBDI6,
      DIBDI(5) => Mram_mem_pos_DIBDI5,
      DIBDI(4) => Mram_mem_pos_DIBDI4,
      DIBDI(3) => Mram_mem_pos_DIBDI3,
      DIBDI(2) => Mram_mem_pos_DIBDI2,
      DIBDI(1) => Mram_mem_pos_DIBDI1,
      DIBDI(0) => Mram_mem_pos_DIBDI0,
      DIADI(15) => Mram_mem_pos_DIADI15,
      DIADI(14) => Mram_mem_pos_DIADI14,
      DIADI(13) => Mram_mem_pos_DIADI13,
      DIADI(12) => Mram_mem_pos_DIADI12,
      DIADI(11) => Mram_mem_pos_DIADI11,
      DIADI(10) => Mram_mem_pos_DIADI10,
      DIADI(9) => Mram_mem_pos_DIADI9,
      DIADI(8) => Mram_mem_pos_DIADI8,
      DIADI(7) => NlwBufferSignal_Mram_mem_pos_DIADI(7),
      DIADI(6) => NlwBufferSignal_Mram_mem_pos_DIADI(6),
      DIADI(5) => NlwBufferSignal_Mram_mem_pos_DIADI(5),
      DIADI(4) => NlwBufferSignal_Mram_mem_pos_DIADI(4),
      DIADI(3) => NlwBufferSignal_Mram_mem_pos_DIADI(3),
      DIADI(2) => NlwBufferSignal_Mram_mem_pos_DIADI(2),
      DIADI(1) => NlwBufferSignal_Mram_mem_pos_DIADI(1),
      DIADI(0) => NlwBufferSignal_Mram_mem_pos_DIADI(0),
      ADDRBRDADDR(12) => GND,
      ADDRBRDADDR(11) => GND,
      ADDRBRDADDR(10) => NlwBufferSignal_Mram_mem_pos_ADDRBRDADDR(10),
      ADDRBRDADDR(9) => NlwBufferSignal_Mram_mem_pos_ADDRBRDADDR(9),
      ADDRBRDADDR(8) => NlwBufferSignal_Mram_mem_pos_ADDRBRDADDR(8),
      ADDRBRDADDR(7) => NlwBufferSignal_Mram_mem_pos_ADDRBRDADDR(7),
      ADDRBRDADDR(6) => NlwBufferSignal_Mram_mem_pos_ADDRBRDADDR(6),
      ADDRBRDADDR(5) => NlwBufferSignal_Mram_mem_pos_ADDRBRDADDR(5),
      ADDRBRDADDR(4) => NlwBufferSignal_Mram_mem_pos_ADDRBRDADDR(4),
      ADDRBRDADDR(3) => NlwBufferSignal_Mram_mem_pos_ADDRBRDADDR(3),
      ADDRBRDADDR(2) => Mram_mem_pos_ADDRBRDADDR2,
      ADDRBRDADDR(1) => Mram_mem_pos_ADDRBRDADDR1,
      ADDRBRDADDR(0) => Mram_mem_pos_ADDRBRDADDR0,
      DIPADIP(1) => Mram_mem_pos_DIPADIP1,
      DIPADIP(0) => GND,
      DOADO(15) => Mram_mem_pos_DOADO15,
      DOADO(14) => Mram_mem_pos_DOADO14,
      DOADO(13) => Mram_mem_pos_DOADO13,
      DOADO(12) => Mram_mem_pos_DOADO12,
      DOADO(11) => Mram_mem_pos_DOADO11,
      DOADO(10) => Mram_mem_pos_DOADO10,
      DOADO(9) => Mram_mem_pos_DOADO9,
      DOADO(8) => Mram_mem_pos_DOADO8,
      DOADO(7) => Mram_mem_pos_DOADO7,
      DOADO(6) => Mram_mem_pos_DOADO6,
      DOADO(5) => Mram_mem_pos_DOADO5,
      DOADO(4) => Mram_mem_pos_DOADO4,
      DOADO(3) => Mram_mem_pos_DOADO3,
      DOADO(2) => Mram_mem_pos_DOADO2,
      DOADO(1) => Mram_mem_pos_DOADO1,
      DOADO(0) => Mram_mem_pos_DOADO0,
      DOPADOP(1) => Mram_mem_pos_DOPADOP1,
      DOPADOP(0) => Mram_mem_pos_DOPADOP0,
      DOPBDOP(1) => Mram_mem_pos_DOPBDOP1,
      DOPBDOP(0) => Mram_mem_pos_DOPBDOP0,
      DOBDO(15) => Mram_mem_pos_DOBDO15,
      DOBDO(14) => Mram_mem_pos_DOBDO14,
      DOBDO(13) => Mram_mem_pos_DOBDO13,
      DOBDO(12) => Mram_mem_pos_DOBDO12,
      DOBDO(11) => Mram_mem_pos_DOBDO11,
      DOBDO(10) => Mram_mem_pos_DOBDO10,
      DOBDO(9) => Mram_mem_pos_DOBDO9,
      DOBDO(8) => Mram_mem_pos_DOBDO8,
      DOBDO(7) => DOUT_7_OBUF_208,
      DOBDO(6) => DOUT_6_OBUF_209,
      DOBDO(5) => DOUT_5_OBUF_210,
      DOBDO(4) => DOUT_4_OBUF_211,
      DOBDO(3) => DOUT_3_OBUF_212,
      DOBDO(2) => DOUT_2_OBUF_213,
      DOBDO(1) => DOUT_1_OBUF_214,
      DOBDO(0) => DOUT_0_OBUF_215
    );
  DOUT_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD228"
    )
    port map (
      I => NlwBufferSignal_DOUT_0_OBUF_I,
      O => DOUT(0)
    );
  DOUT_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD229"
    )
    port map (
      I => NlwBufferSignal_DOUT_1_OBUF_I,
      O => DOUT(1)
    );
  DOUT_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD227"
    )
    port map (
      I => NlwBufferSignal_DOUT_2_OBUF_I,
      O => DOUT(2)
    );
  DIN_0_IBUF : X_BUF
    generic map(
      LOC => "PAD254",
      PATHPULSE => 202 ps
    )
    port map (
      O => DIN_0_IBUF_58,
      I => DIN(0)
    );
  ProtoComp3_IMUX : X_BUF
    generic map(
      LOC => "PAD254",
      PATHPULSE => 202 ps
    )
    port map (
      I => DIN_0_IBUF_58,
      O => DIN_0_IBUF_0
    );
  DOUT_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD231"
    )
    port map (
      I => NlwBufferSignal_DOUT_3_OBUF_I,
      O => DOUT(3)
    );
  DIN_1_IBUF : X_BUF
    generic map(
      LOC => "PAD255",
      PATHPULSE => 202 ps
    )
    port map (
      O => DIN_1_IBUF_63,
      I => DIN(1)
    );
  ProtoComp3_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD255",
      PATHPULSE => 202 ps
    )
    port map (
      I => DIN_1_IBUF_63,
      O => DIN_1_IBUF_0
    );
  DOUT_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD232"
    )
    port map (
      I => NlwBufferSignal_DOUT_4_OBUF_I,
      O => DOUT(4)
    );
  DIN_2_IBUF : X_BUF
    generic map(
      LOC => "PAD256",
      PATHPULSE => 202 ps
    )
    port map (
      O => DIN_2_IBUF_68,
      I => DIN(2)
    );
  ProtoComp3_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD256",
      PATHPULSE => 202 ps
    )
    port map (
      I => DIN_2_IBUF_68,
      O => DIN_2_IBUF_0
    );
  DOUT_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD251"
    )
    port map (
      I => NlwBufferSignal_DOUT_5_OBUF_I,
      O => DOUT(5)
    );
  ADDR_OUT_0_IBUF : X_BUF
    generic map(
      LOC => "PAD220",
      PATHPULSE => 202 ps
    )
    port map (
      O => ADDR_OUT_0_IBUF_73,
      I => ADDR_OUT(0)
    );
  ProtoComp3_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD220",
      PATHPULSE => 202 ps
    )
    port map (
      I => ADDR_OUT_0_IBUF_73,
      O => ADDR_OUT_0_IBUF_0
    );
  DIN_3_IBUF : X_BUF
    generic map(
      LOC => "PAD257",
      PATHPULSE => 202 ps
    )
    port map (
      O => DIN_3_IBUF_76,
      I => DIN(3)
    );
  ProtoComp3_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD257",
      PATHPULSE => 202 ps
    )
    port map (
      I => DIN_3_IBUF_76,
      O => DIN_3_IBUF_0
    );
  DOUT_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD252"
    )
    port map (
      I => NlwBufferSignal_DOUT_6_OBUF_I,
      O => DOUT(6)
    );
  ADDR_OUT_1_IBUF : X_BUF
    generic map(
      LOC => "PAD221",
      PATHPULSE => 202 ps
    )
    port map (
      O => ADDR_OUT_1_IBUF_81,
      I => ADDR_OUT(1)
    );
  ProtoComp3_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD221",
      PATHPULSE => 202 ps
    )
    port map (
      I => ADDR_OUT_1_IBUF_81,
      O => ADDR_OUT_1_IBUF_0
    );
  DIN_4_IBUF : X_BUF
    generic map(
      LOC => "PAD258",
      PATHPULSE => 202 ps
    )
    port map (
      O => DIN_4_IBUF_84,
      I => DIN(4)
    );
  ProtoComp3_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD258",
      PATHPULSE => 202 ps
    )
    port map (
      I => DIN_4_IBUF_84,
      O => DIN_4_IBUF_0
    );
  DOUT_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD253"
    )
    port map (
      I => NlwBufferSignal_DOUT_7_OBUF_I,
      O => DOUT(7)
    );
  ADDR_OUT_2_IBUF : X_BUF
    generic map(
      LOC => "PAD222",
      PATHPULSE => 202 ps
    )
    port map (
      O => ADDR_OUT_2_IBUF_89,
      I => ADDR_OUT(2)
    );
  ProtoComp3_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD222",
      PATHPULSE => 202 ps
    )
    port map (
      I => ADDR_OUT_2_IBUF_89,
      O => ADDR_OUT_2_IBUF_0
    );
  DIN_5_IBUF : X_BUF
    generic map(
      LOC => "PAD259",
      PATHPULSE => 202 ps
    )
    port map (
      O => DIN_5_IBUF_92,
      I => DIN(5)
    );
  ProtoComp3_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD259",
      PATHPULSE => 202 ps
    )
    port map (
      I => DIN_5_IBUF_92,
      O => DIN_5_IBUF_0
    );
  ADDR_OUT_3_IBUF : X_BUF
    generic map(
      LOC => "PAD223",
      PATHPULSE => 202 ps
    )
    port map (
      O => ADDR_OUT_3_IBUF_95,
      I => ADDR_OUT(3)
    );
  ProtoComp3_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD223",
      PATHPULSE => 202 ps
    )
    port map (
      I => ADDR_OUT_3_IBUF_95,
      O => ADDR_OUT_3_IBUF_0
    );
  DIN_6_IBUF : X_BUF
    generic map(
      LOC => "PAD260",
      PATHPULSE => 202 ps
    )
    port map (
      O => DIN_6_IBUF_98,
      I => DIN(6)
    );
  ProtoComp3_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD260",
      PATHPULSE => 202 ps
    )
    port map (
      I => DIN_6_IBUF_98,
      O => DIN_6_IBUF_0
    );
  ADDR_OUT_4_IBUF : X_BUF
    generic map(
      LOC => "PAD224",
      PATHPULSE => 202 ps
    )
    port map (
      O => ADDR_OUT_4_IBUF_101,
      I => ADDR_OUT(4)
    );
  ProtoComp3_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD224",
      PATHPULSE => 202 ps
    )
    port map (
      I => ADDR_OUT_4_IBUF_101,
      O => ADDR_OUT_4_IBUF_0
    );
  DIN_7_IBUF : X_BUF
    generic map(
      LOC => "PAD261",
      PATHPULSE => 202 ps
    )
    port map (
      O => DIN_7_IBUF_104,
      I => DIN(7)
    );
  ProtoComp3_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD261",
      PATHPULSE => 202 ps
    )
    port map (
      I => DIN_7_IBUF_104,
      O => DIN_7_IBUF_0
    );
  ADDR_OUT_5_IBUF : X_BUF
    generic map(
      LOC => "PAD225",
      PATHPULSE => 202 ps
    )
    port map (
      O => ADDR_OUT_5_IBUF_107,
      I => ADDR_OUT(5)
    );
  ProtoComp3_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD225",
      PATHPULSE => 202 ps
    )
    port map (
      I => ADDR_OUT_5_IBUF_107,
      O => ADDR_OUT_5_IBUF_0
    );
  WE_IBUF : X_BUF
    generic map(
      LOC => "PAD219",
      PATHPULSE => 202 ps
    )
    port map (
      O => WE_IBUF_110,
      I => WE
    );
  ProtoComp3_IMUX_14 : X_BUF
    generic map(
      LOC => "PAD219",
      PATHPULSE => 202 ps
    )
    port map (
      I => WE_IBUF_110,
      O => WE_IBUF_0
    );
  ADDR_OUT_6_IBUF : X_BUF
    generic map(
      LOC => "PAD226",
      PATHPULSE => 202 ps
    )
    port map (
      O => ADDR_OUT_6_IBUF_113,
      I => ADDR_OUT(6)
    );
  ProtoComp3_IMUX_15 : X_BUF
    generic map(
      LOC => "PAD226",
      PATHPULSE => 202 ps
    )
    port map (
      I => ADDR_OUT_6_IBUF_113,
      O => ADDR_OUT_6_IBUF_0
    );
  ADDR_OUT_7_IBUF : X_BUF
    generic map(
      LOC => "PAD230",
      PATHPULSE => 202 ps
    )
    port map (
      O => ADDR_OUT_7_IBUF_116,
      I => ADDR_OUT(7)
    );
  ProtoComp3_IMUX_16 : X_BUF
    generic map(
      LOC => "PAD230",
      PATHPULSE => 202 ps
    )
    port map (
      I => ADDR_OUT_7_IBUF_116,
      O => ADDR_OUT_7_IBUF_0
    );
  ADDR_IN_0_IBUF : X_BUF
    generic map(
      LOC => "PAD209",
      PATHPULSE => 202 ps
    )
    port map (
      O => ADDR_IN_0_IBUF_119,
      I => ADDR_IN(0)
    );
  ProtoComp3_IMUX_17 : X_BUF
    generic map(
      LOC => "PAD209",
      PATHPULSE => 202 ps
    )
    port map (
      I => ADDR_IN_0_IBUF_119,
      O => ADDR_IN_0_IBUF_0
    );
  ADDR_IN_1_IBUF : X_BUF
    generic map(
      LOC => "PAD210",
      PATHPULSE => 202 ps
    )
    port map (
      O => ADDR_IN_1_IBUF_122,
      I => ADDR_IN(1)
    );
  ProtoComp3_IMUX_18 : X_BUF
    generic map(
      LOC => "PAD210",
      PATHPULSE => 202 ps
    )
    port map (
      I => ADDR_IN_1_IBUF_122,
      O => ADDR_IN_1_IBUF_0
    );
  ADDR_IN_2_IBUF : X_BUF
    generic map(
      LOC => "PAD211",
      PATHPULSE => 202 ps
    )
    port map (
      O => ADDR_IN_2_IBUF_125,
      I => ADDR_IN(2)
    );
  ProtoComp3_IMUX_19 : X_BUF
    generic map(
      LOC => "PAD211",
      PATHPULSE => 202 ps
    )
    port map (
      I => ADDR_IN_2_IBUF_125,
      O => ADDR_IN_2_IBUF_0
    );
  ADDR_IN_3_IBUF : X_BUF
    generic map(
      LOC => "PAD212",
      PATHPULSE => 202 ps
    )
    port map (
      O => ADDR_IN_3_IBUF_128,
      I => ADDR_IN(3)
    );
  ProtoComp3_IMUX_20 : X_BUF
    generic map(
      LOC => "PAD212",
      PATHPULSE => 202 ps
    )
    port map (
      I => ADDR_IN_3_IBUF_128,
      O => ADDR_IN_3_IBUF_0
    );
  ADDR_IN_4_IBUF : X_BUF
    generic map(
      LOC => "PAD213",
      PATHPULSE => 202 ps
    )
    port map (
      O => ADDR_IN_4_IBUF_131,
      I => ADDR_IN(4)
    );
  ProtoComp3_IMUX_21 : X_BUF
    generic map(
      LOC => "PAD213",
      PATHPULSE => 202 ps
    )
    port map (
      I => ADDR_IN_4_IBUF_131,
      O => ADDR_IN_4_IBUF_0
    );
  ADDR_IN_5_IBUF : X_BUF
    generic map(
      LOC => "PAD214",
      PATHPULSE => 202 ps
    )
    port map (
      O => ADDR_IN_5_IBUF_134,
      I => ADDR_IN(5)
    );
  ProtoComp3_IMUX_22 : X_BUF
    generic map(
      LOC => "PAD214",
      PATHPULSE => 202 ps
    )
    port map (
      I => ADDR_IN_5_IBUF_134,
      O => ADDR_IN_5_IBUF_0
    );
  ADDR_IN_6_IBUF : X_BUF
    generic map(
      LOC => "PAD215",
      PATHPULSE => 202 ps
    )
    port map (
      O => ADDR_IN_6_IBUF_137,
      I => ADDR_IN(6)
    );
  ProtoComp3_IMUX_23 : X_BUF
    generic map(
      LOC => "PAD215",
      PATHPULSE => 202 ps
    )
    port map (
      I => ADDR_IN_6_IBUF_137,
      O => ADDR_IN_6_IBUF_0
    );
  CLK_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD314",
      PATHPULSE => 202 ps
    )
    port map (
      O => CLK_BUFGP_IBUFG_140,
      I => CLK
    );
  ProtoComp3_IMUX_24 : X_BUF
    generic map(
      LOC => "PAD314",
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP_IBUFG_140,
      O => CLK_BUFGP_IBUFG_0
    );
  ADDR_IN_7_IBUF : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      O => ADDR_IN_7_IBUF_143,
      I => ADDR_IN(7)
    );
  ProtoComp3_IMUX_25 : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      I => ADDR_IN_7_IBUF_143,
      O => ADDR_IN_7_IBUF_0
    );
  NlwBufferBlock_CLK_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP_IBUFG_0,
      O => NlwBufferSignal_CLK_BUFGP_BUFG_IN
    );
  NlwBufferBlock_Mram_mem_pos_ADDRAWRADDR_10_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ADDR_IN_7_IBUF_0,
      O => NlwBufferSignal_Mram_mem_pos_ADDRAWRADDR(10)
    );
  NlwBufferBlock_Mram_mem_pos_ADDRAWRADDR_9_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ADDR_IN_6_IBUF_0,
      O => NlwBufferSignal_Mram_mem_pos_ADDRAWRADDR(9)
    );
  NlwBufferBlock_Mram_mem_pos_ADDRAWRADDR_8_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ADDR_IN_5_IBUF_0,
      O => NlwBufferSignal_Mram_mem_pos_ADDRAWRADDR(8)
    );
  NlwBufferBlock_Mram_mem_pos_ADDRAWRADDR_7_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ADDR_IN_4_IBUF_0,
      O => NlwBufferSignal_Mram_mem_pos_ADDRAWRADDR(7)
    );
  NlwBufferBlock_Mram_mem_pos_ADDRAWRADDR_6_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ADDR_IN_3_IBUF_0,
      O => NlwBufferSignal_Mram_mem_pos_ADDRAWRADDR(6)
    );
  NlwBufferBlock_Mram_mem_pos_ADDRAWRADDR_5_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ADDR_IN_2_IBUF_0,
      O => NlwBufferSignal_Mram_mem_pos_ADDRAWRADDR(5)
    );
  NlwBufferBlock_Mram_mem_pos_ADDRAWRADDR_4_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ADDR_IN_1_IBUF_0,
      O => NlwBufferSignal_Mram_mem_pos_ADDRAWRADDR(4)
    );
  NlwBufferBlock_Mram_mem_pos_ADDRAWRADDR_3_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ADDR_IN_0_IBUF_0,
      O => NlwBufferSignal_Mram_mem_pos_ADDRAWRADDR(3)
    );
  NlwBufferBlock_Mram_mem_pos_DIADI_7_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIN_7_IBUF_0,
      O => NlwBufferSignal_Mram_mem_pos_DIADI(7)
    );
  NlwBufferBlock_Mram_mem_pos_DIADI_6_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIN_6_IBUF_0,
      O => NlwBufferSignal_Mram_mem_pos_DIADI(6)
    );
  NlwBufferBlock_Mram_mem_pos_DIADI_5_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIN_5_IBUF_0,
      O => NlwBufferSignal_Mram_mem_pos_DIADI(5)
    );
  NlwBufferBlock_Mram_mem_pos_DIADI_4_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIN_4_IBUF_0,
      O => NlwBufferSignal_Mram_mem_pos_DIADI(4)
    );
  NlwBufferBlock_Mram_mem_pos_DIADI_3_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIN_3_IBUF_0,
      O => NlwBufferSignal_Mram_mem_pos_DIADI(3)
    );
  NlwBufferBlock_Mram_mem_pos_DIADI_2_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIN_2_IBUF_0,
      O => NlwBufferSignal_Mram_mem_pos_DIADI(2)
    );
  NlwBufferBlock_Mram_mem_pos_DIADI_1_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIN_1_IBUF_0,
      O => NlwBufferSignal_Mram_mem_pos_DIADI(1)
    );
  NlwBufferBlock_Mram_mem_pos_DIADI_0_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIN_0_IBUF_0,
      O => NlwBufferSignal_Mram_mem_pos_DIADI(0)
    );
  NlwBufferBlock_Mram_mem_pos_ADDRBRDADDR_10_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ADDR_OUT_7_IBUF_0,
      O => NlwBufferSignal_Mram_mem_pos_ADDRBRDADDR(10)
    );
  NlwBufferBlock_Mram_mem_pos_ADDRBRDADDR_9_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ADDR_OUT_6_IBUF_0,
      O => NlwBufferSignal_Mram_mem_pos_ADDRBRDADDR(9)
    );
  NlwBufferBlock_Mram_mem_pos_ADDRBRDADDR_8_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ADDR_OUT_5_IBUF_0,
      O => NlwBufferSignal_Mram_mem_pos_ADDRBRDADDR(8)
    );
  NlwBufferBlock_Mram_mem_pos_ADDRBRDADDR_7_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ADDR_OUT_4_IBUF_0,
      O => NlwBufferSignal_Mram_mem_pos_ADDRBRDADDR(7)
    );
  NlwBufferBlock_Mram_mem_pos_ADDRBRDADDR_6_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ADDR_OUT_3_IBUF_0,
      O => NlwBufferSignal_Mram_mem_pos_ADDRBRDADDR(6)
    );
  NlwBufferBlock_Mram_mem_pos_ADDRBRDADDR_5_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ADDR_OUT_2_IBUF_0,
      O => NlwBufferSignal_Mram_mem_pos_ADDRBRDADDR(5)
    );
  NlwBufferBlock_Mram_mem_pos_ADDRBRDADDR_4_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ADDR_OUT_1_IBUF_0,
      O => NlwBufferSignal_Mram_mem_pos_ADDRBRDADDR(4)
    );
  NlwBufferBlock_Mram_mem_pos_ADDRBRDADDR_3_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ADDR_OUT_0_IBUF_0,
      O => NlwBufferSignal_Mram_mem_pos_ADDRBRDADDR(3)
    );
  NlwBufferBlock_DOUT_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DOUT_0_OBUF_215,
      O => NlwBufferSignal_DOUT_0_OBUF_I
    );
  NlwBufferBlock_DOUT_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DOUT_1_OBUF_214,
      O => NlwBufferSignal_DOUT_1_OBUF_I
    );
  NlwBufferBlock_DOUT_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DOUT_2_OBUF_213,
      O => NlwBufferSignal_DOUT_2_OBUF_I
    );
  NlwBufferBlock_DOUT_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DOUT_3_OBUF_212,
      O => NlwBufferSignal_DOUT_3_OBUF_I
    );
  NlwBufferBlock_DOUT_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DOUT_4_OBUF_211,
      O => NlwBufferSignal_DOUT_4_OBUF_I
    );
  NlwBufferBlock_DOUT_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DOUT_5_OBUF_210,
      O => NlwBufferSignal_DOUT_5_OBUF_I
    );
  NlwBufferBlock_DOUT_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DOUT_6_OBUF_209,
      O => NlwBufferSignal_DOUT_6_OBUF_I
    );
  NlwBufferBlock_DOUT_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DOUT_7_OBUF_208,
      O => NlwBufferSignal_DOUT_7_OBUF_I
    );
  NlwBlock_dpram_mem_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;


--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: gen_funciones_timesim.vhd
-- /___/   /\     Timestamp: Tue Dec 16 17:39:49 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf gen_funciones.pcf -rpw 100 -tpw 0 -ar Structure -tm gen_funciones -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim gen_funciones.ncd gen_funciones_timesim.vhd 
-- Device	: 6slx45csg324-3 (PRODUCTION 1.23 2013-10-13)
-- Input file	: gen_funciones.ncd
-- Output file	: C:\Users\christopher\Dropbox\workspace\modelado14\gen_funciones\netgen\par\gen_funciones_timesim.vhd
-- # of Entities	: 1
-- Design Name	: gen_funciones
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

entity gen_funciones is
  port (
    RELOJ : in STD_LOGIC := 'X'; 
    RST : in STD_LOGIC := 'X'; 
    ASTRB : in STD_LOGIC := 'X'; 
    DSTRB : in STD_LOGIC := 'X'; 
    PWRITE : in STD_LOGIC := 'X'; 
    PWAIT : out STD_LOGIC; 
    SYNC : out STD_LOGIC; 
    SCLK : out STD_LOGIC; 
    D1 : out STD_LOGIC; 
    D2 : out STD_LOGIC; 
    DATA : inout STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end gen_funciones;

architecture Structure of gen_funciones is
  signal CLK : STD_LOGIC; 
  signal U_dcm_dcm_sp_inst_ML_NEW_O : STD_LOGIC; 
  signal U_dcm_clkin1_0 : STD_LOGIC; 
  signal U_dcm_dcm_sp_inst_ML_NEW_DIVCLK : STD_LOGIC; 
  signal RST_IBUF_0 : STD_LOGIC; 
  signal U_dcm_clk0 : STD_LOGIC; 
  signal U_cnt_dpram_state_FSM_FFd1_916 : STD_LOGIC; 
  signal U_cnt_dpram_state_FSM_FFd3_In2 : STD_LOGIC; 
  signal U_cnt_dpram_WE_DP1_919 : STD_LOGIC; 
  signal U_cnt_dpram_n0117_inv : STD_LOGIC; 
  signal U_cnt_dpram_WE_DP2_922 : STD_LOGIC; 
  signal U_cnt_dac_mxstate_FSM_FFd2_927 : STD_LOGIC; 
  signal U_cnt_dac_CEcounter_928 : STD_LOGIC; 
  signal N7_0 : STD_LOGIC; 
  signal U_cnt_dpram_n0121_inv : STD_LOGIC; 
  signal U_cnt_dpram_CEcounter_935 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal U_cnt_dac_SYNC_945 : STD_LOGIC; 
  signal U_gen_dir_DATO_OK_946 : STD_LOGIC; 
  signal U_cnt_dac_SCLKaux_947 : STD_LOGIC; 
  signal U_cnt_epp_Q2_958 : STD_LOGIC; 
  signal DSTRB_IBUF_0 : STD_LOGIC; 
  signal D1_OBUF_960 : STD_LOGIC; 
  signal U_cnt_dpram_state_FSM_FFd2_969 : STD_LOGIC; 
  signal D2_OBUF_970 : STD_LOGIC; 
  signal U_cnt_epp_Q_0 : STD_LOGIC; 
  signal ASTRB_IBUF_0 : STD_LOGIC; 
  signal U_gen_dir_prescalerCounter_6_dato_ok_trigger_AND_13_o2_0 : STD_LOGIC; 
  signal U_gen_dir_prescalerCounter_6_dato_ok_trigger_AND_13_o1_981 : STD_LOGIC; 
  signal U_cnt_epp_DIR_VLD_986 : STD_LOGIC; 
  signal U_gen_dir_state_987 : STD_LOGIC; 
  signal U_cnt_epp_DATO_VLD_988 : STD_LOGIC; 
  signal U_cnt_dpram_state_FSM_FFd3_In4_991 : STD_LOGIC; 
  signal U_cnt_dpram_state_FSM_FFd3_In5_996 : STD_LOGIC; 
  signal U_cnt_dpram_state_FSM_FFd3_In6_998 : STD_LOGIC; 
  signal U_cnt_epp_S22 : STD_LOGIC; 
  signal N18_0 : STD_LOGIC; 
  signal U_cnt_dpram_state_FSM_FFd3_In7 : STD_LOGIC; 
  signal N17_0 : STD_LOGIC; 
  signal N16_0 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal U_cnt_dpram_state_FSM_FFd3_1014 : STD_LOGIC; 
  signal U_cnt_dpram_state_FSM_FFd3_In1_1015 : STD_LOGIC; 
  signal U_gen_dir_n0053_inv_0 : STD_LOGIC; 
  signal N15_0 : STD_LOGIC; 
  signal N14_0 : STD_LOGIC; 
  signal N13_0 : STD_LOGIC; 
  signal N12_0 : STD_LOGIC; 
  signal N11_0 : STD_LOGIC; 
  signal U_cnt_epp_S11 : STD_LOGIC; 
  signal U_cnt_dac_n0090_inv_0 : STD_LOGIC; 
  signal U_cnt_dpram_clearCounter_1051 : STD_LOGIC; 
  signal U_gen_dir_CE_1052 : STD_LOGIC; 
  signal PWRITE_IBUF_0 : STD_LOGIC; 
  signal U_cnt_epp_PWRITE_DSTRB_AND_5_o_inv : STD_LOGIC; 
  signal U_cnt_epp_PWRITE_PWRITE_OR_2_o_0 : STD_LOGIC; 
  signal U_gen_dir_Maccum_cnt_cy_3_Q_1056 : STD_LOGIC; 
  signal U_gen_dir_Maccum_cnt_cy_7_Q_1057 : STD_LOGIC; 
  signal U_gen_dir_Maccum_cnt_cy_11_Q_1058 : STD_LOGIC; 
  signal U_cnt_epp_PWAIT_1059 : STD_LOGIC; 
  signal U_cnt_dac_prescaler_0_1060 : STD_LOGIC; 
  signal U_cnt_dpram_state_FSM_FFd3_In9_1062 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal U_cnt_dac_endTx_1064 : STD_LOGIC; 
  signal U_cnt_dac_state_FSM_FFd2_1065 : STD_LOGIC; 
  signal U_cnt_dac_state_FSM_FFd1_1066 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal U_gen_dir_prescalerCounter_6_dato_ok_trigger_AND_13_o3 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal U_cnt_dac_Mmux_D21 : STD_LOGIC; 
  signal U_cnt_dac_Mmux_D211_1071 : STD_LOGIC; 
  signal U_cnt_dpram_Mmux_counter_7_counter_7_mux_5_OUT41 : STD_LOGIC; 
  signal U_cnt_dac_mxstate_FSM_FFd1_1073 : STD_LOGIC; 
  signal U_cnt_dac_Mmux_D11 : STD_LOGIC; 
  signal U_cnt_dac_Mmux_D111_1075 : STD_LOGIC; 
  signal U_gen_dir_Mcount_prescalerCounter_xor_0_111 : STD_LOGIC; 
  signal U_cnt_dac_Mmux_GND_26_o_muxSelect_5_mux_11_OUT111 : STD_LOGIC; 
  signal U_cnt_dac_Mmux_GND_26_o_muxSelect_5_mux_11_OUT4 : STD_LOGIC; 
  signal U_dcm_dcm_sp_inst_STATUS0 : STD_LOGIC; 
  signal U_dcm_dcm_sp_inst_STATUS1 : STD_LOGIC; 
  signal U_dcm_dcm_sp_inst_STATUS2 : STD_LOGIC; 
  signal U_dcm_dcm_sp_inst_STATUS3 : STD_LOGIC; 
  signal U_dcm_dcm_sp_inst_STATUS4 : STD_LOGIC; 
  signal U_dcm_dcm_sp_inst_STATUS5 : STD_LOGIC; 
  signal U_dcm_dcm_sp_inst_STATUS6 : STD_LOGIC; 
  signal U_dcm_dcm_sp_inst_STATUS7 : STD_LOGIC; 
  signal U_dcm_dcm_sp_inst_LOCKED : STD_LOGIC; 
  signal U_dcm_dcm_sp_inst_CLK90 : STD_LOGIC; 
  signal U_dcm_dcm_sp_inst_PSDONE : STD_LOGIC; 
  signal U_dcm_dcm_sp_inst_CLKDV : STD_LOGIC; 
  signal U_dcm_dcm_sp_inst_CLKFX180 : STD_LOGIC; 
  signal U_dcm_dcm_sp_inst_CLK270 : STD_LOGIC; 
  signal U_dcm_dcm_sp_inst_CLK180 : STD_LOGIC; 
  signal U_dcm_dcm_sp_inst_CLKFX : STD_LOGIC; 
  signal U_dcm_dcm_sp_inst_CLK2X : STD_LOGIC; 
  signal U_dcm_dcm_sp_inst_CLK2X180 : STD_LOGIC; 
  signal U_dcm_dcm_sp_inst_PSEN_INT : STD_LOGIC; 
  signal U_dcm_dcm_sp_inst_CLKFB_INT : STD_LOGIC; 
  signal U_dcm_dcm_sp_inst_CLKIN_INT : STD_LOGIC; 
  signal U_dcm_dcm_sp_inst_PSINCDEC_INT : STD_LOGIC; 
  signal U_dcm_dcm_sp_inst_RST_INT : STD_LOGIC; 
  signal U_dcm_dcm_sp_inst_PSCLK_INT : STD_LOGIC; 
  signal U_dcm_dcm_sp_inst_DSSEN : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DOBDO8 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DOBDO9 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DOBDO10 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DOBDO11 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DOBDO12 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DOBDO13 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DOBDO14 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DOBDO15 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DOPBDOP0 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DOPBDOP1 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DOPADOP0 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DOPADOP1 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DOADO0 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DOADO1 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DOADO2 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DOADO3 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DOADO4 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DOADO5 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DOADO6 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DOADO7 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DOADO8 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DOADO9 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DOADO10 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DOADO11 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DOADO12 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DOADO13 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DOADO14 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DOADO15 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DIPADIP1 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_ADDRBRDADDR0 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_ADDRBRDADDR1 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_ADDRBRDADDR2 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DIADI8 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DIADI9 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DIADI10 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DIADI11 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DIADI12 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DIADI13 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DIADI14 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DIADI15 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DIBDI0 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DIBDI1 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DIBDI2 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DIBDI3 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DIBDI4 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DIBDI5 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DIBDI6 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DIBDI7 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DIBDI8 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DIBDI9 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DIBDI10 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DIBDI11 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DIBDI12 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DIBDI13 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DIBDI14 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DIBDI15 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DIPBDIP0 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_DIPBDIP1 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_ADDRAWRADDR0 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_ADDRAWRADDR1 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_ADDRAWRADDR2 : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_WEBWEU0_INT : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_WEBWEU1_INT : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_WEAWEL0_INT : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_WEAWEL1_INT : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_RSTA_INT : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_REGCEBREGCE_INT : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_CLKBRDCLK_INT : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_CLKAWRCLK_INT : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_ENAWREN_INT : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_REGCEA_INT : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_ENBRDEN_INT : STD_LOGIC; 
  signal U_dpram_mem1_Mram_mem_pos_RSTBRST_INT : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DOBDO8 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DOBDO9 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DOBDO10 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DOBDO11 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DOBDO12 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DOBDO13 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DOBDO14 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DOBDO15 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DOPBDOP0 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DOPBDOP1 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DOPADOP0 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DOPADOP1 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DOADO0 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DOADO1 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DOADO2 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DOADO3 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DOADO4 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DOADO5 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DOADO6 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DOADO7 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DOADO8 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DOADO9 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DOADO10 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DOADO11 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DOADO12 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DOADO13 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DOADO14 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DOADO15 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DIPADIP1 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_ADDRBRDADDR0 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_ADDRBRDADDR1 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_ADDRBRDADDR2 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DIADI8 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DIADI9 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DIADI10 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DIADI11 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DIADI12 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DIADI13 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DIADI14 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DIADI15 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DIBDI0 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DIBDI1 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DIBDI2 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DIBDI3 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DIBDI4 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DIBDI5 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DIBDI6 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DIBDI7 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DIBDI8 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DIBDI9 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DIBDI10 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DIBDI11 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DIBDI12 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DIBDI13 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DIBDI14 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DIBDI15 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DIPBDIP0 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_DIPBDIP1 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_ADDRAWRADDR0 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_ADDRAWRADDR1 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_ADDRAWRADDR2 : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_WEBWEU0_INT : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_WEBWEU1_INT : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_WEAWEL0_INT : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_WEAWEL1_INT : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_RSTA_INT : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_REGCEBREGCE_INT : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_CLKBRDCLK_INT : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_CLKAWRCLK_INT : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_ENAWREN_INT : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_REGCEA_INT : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_ENBRDEN_INT : STD_LOGIC; 
  signal U_dpram_mem2_Mram_mem_pos_RSTBRST_INT : STD_LOGIC; 
  signal ProtoComp48_CYINITGND_0 : STD_LOGIC; 
  signal U_gen_dir_cnt_8_rt_191 : STD_LOGIC; 
  signal U_gen_dir_cnt_9_rt_187 : STD_LOGIC; 
  signal U_gen_dir_cnt_10_rt_183 : STD_LOGIC; 
  signal U_gen_dir_cnt_11_rt_171 : STD_LOGIC; 
  signal U_gen_dir_cnt_12_rt_218 : STD_LOGIC; 
  signal U_gen_dir_cnt_13_rt_214 : STD_LOGIC; 
  signal U_gen_dir_cnt_14_rt_210 : STD_LOGIC; 
  signal U_gen_dir_cnt_15_rt_200 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal ASTRB_IBUF_271 : STD_LOGIC; 
  signal RST_IBUF_274 : STD_LOGIC; 
  signal U_dcm_clkin1 : STD_LOGIC; 
  signal PWRITE_IBUF_284 : STD_LOGIC; 
  signal DSTRB_IBUF_287 : STD_LOGIC; 
  signal U_cnt_dac_Mcount_prescaler_0 : STD_LOGIC; 
  signal U_cnt_dac_SCLKaux_rstpot_297 : STD_LOGIC; 
  signal U_cnt_dpram_WE_DP1_rstpot_364 : STD_LOGIC; 
  signal U_cnt_dpram_WE_DP2_rstpot_359 : STD_LOGIC; 
  signal U_cnt_dpram_state_FSM_FFd3_In : STD_LOGIC; 
  signal U_cnt_dpram_state_FSM_FFd2_In : STD_LOGIC; 
  signal U_gen_dir_n0053_inv : STD_LOGIC; 
  signal U_gen_dir_state_rstpot_455 : STD_LOGIC; 
  signal U_cnt_dpram_clearCounter_rstpot_489 : STD_LOGIC; 
  signal U_cnt_dpram_clearCounter_pack_1 : STD_LOGIC; 
  signal U_cnt_dpram_CEcounter_rstpot_486 : STD_LOGIC; 
  signal U_cnt_epp_S11_pack_1 : STD_LOGIC; 
  signal U_cnt_dac_mxstate_FSM_FFd2_rt_558 : STD_LOGIC; 
  signal U_cnt_dac_endTx_pack_6 : STD_LOGIC; 
  signal U_cnt_dac_state_FSM_FFd1_In : STD_LOGIC; 
  signal U_cnt_dac_CEcounter_rstpot_549 : STD_LOGIC; 
  signal U_cnt_dac_CEcounter_pack_8 : STD_LOGIC; 
  signal U_cnt_dac_state_FSM_FFd2_In : STD_LOGIC; 
  signal U_cnt_dac_SYNC_rstpot_542 : STD_LOGIC; 
  signal U_gen_dir_prescalerCounter_6_PWR_12_o_equal_2_o : STD_LOGIC; 
  signal U_gen_dir_prescalerCounter_6_dato_ok_trigger_AND_13_o : STD_LOGIC; 
  signal N32_pack_6 : STD_LOGIC; 
  signal U_cnt_dpram_counter_7_counter_7_mux_5_OUT_7_Q : STD_LOGIC; 
  signal U_cnt_dpram_Mmux_counter_7_counter_7_mux_5_OUT41_pack_12 : STD_LOGIC; 
  signal U_cnt_dpram_counter_7_counter_7_mux_5_OUT_5_Q : STD_LOGIC; 
  signal U_cnt_dpram_counter_7_counter_7_mux_5_OUT_1_Q : STD_LOGIC; 
  signal U_cnt_dpram_counter_7_counter_7_mux_5_OUT_6_Q : STD_LOGIC; 
  signal U_cnt_dac_Mcount_muxSelectTX3 : STD_LOGIC; 
  signal U_cnt_dac_Mcount_muxSelectTX2 : STD_LOGIC; 
  signal U_cnt_dac_muxSelectTX_2_pack_6 : STD_LOGIC; 
  signal U_cnt_dac_Mcount_muxSelectTX1 : STD_LOGIC; 
  signal U_cnt_dac_Mcount_muxSelectTX : STD_LOGIC; 
  signal U_cnt_dac_muxSelectTX_0_pack_4 : STD_LOGIC; 
  signal U_cnt_dac_mxstate_FSM_FFd1_In : STD_LOGIC; 
  signal U_cnt_dac_mxstate_FSM_FFd2_In : STD_LOGIC; 
  signal U_cnt_dpram_n0121_inv_pack_8 : STD_LOGIC; 
  signal U_cnt_dpram_counter_7_counter_7_mux_5_OUT_0_Q : STD_LOGIC; 
  signal U_cnt_dpram_counter_7_counter_7_mux_5_OUT_3_Q : STD_LOGIC; 
  signal U_cnt_dpram_counter_3_pack_10 : STD_LOGIC; 
  signal U_cnt_dpram_counter_7_counter_7_mux_5_OUT_2_Q : STD_LOGIC; 
  signal U_cnt_dpram_counter_7_counter_7_mux_5_OUT_4_Q : STD_LOGIC; 
  signal U_gen_dir_Mcount_prescalerCounter5 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal U_gen_dir_Mcount_prescalerCounter6 : STD_LOGIC; 
  signal ASTRB_IBUF_rt_788 : STD_LOGIC; 
  signal U_cnt_epp_Q_787 : STD_LOGIC; 
  signal U_gen_dir_prescalerCounter_6_dato_ok_trigger_AND_13_o2_819 : STD_LOGIC; 
  signal U_gen_dir_Mcount_prescalerCounter1 : STD_LOGIC; 
  signal U_gen_dir_Mcount_prescalerCounter2 : STD_LOGIC; 
  signal U_gen_dir_Mcount_prescalerCounter : STD_LOGIC; 
  signal U_gen_dir_prescalerCounter_0_pack_11 : STD_LOGIC; 
  signal U_gen_dir_prescalerCounter_3_pack_13 : STD_LOGIC; 
  signal U_gen_dir_Mcount_prescalerCounter3 : STD_LOGIC; 
  signal U_gen_dir_Mcount_prescalerCounter4 : STD_LOGIC; 
  signal U_cnt_dac_n0090_inv : STD_LOGIC; 
  signal U_cnt_dac_GND_26_o_muxSelect_5_mux_11_OUT_1_Q : STD_LOGIC; 
  signal U_cnt_dac_GND_26_o_muxSelect_5_mux_11_OUT_2_Q : STD_LOGIC; 
  signal U_cnt_dac_GND_26_o_muxSelect_5_mux_11_OUT_0_Q : STD_LOGIC; 
  signal U_cnt_dac_muxSelect_0_pack_6 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal U_cnt_dac_GND_26_o_muxSelect_5_mux_11_OUT_3_Q : STD_LOGIC; 
  signal U_cnt_dac_GND_26_o_muxSelect_5_mux_11_OUT_4_Q : STD_LOGIC; 
  signal U_cnt_dac_GND_26_o_muxSelect_5_mux_11_OUT_5_Q : STD_LOGIC; 
  signal U_cnt_epp_PWRITE_PWRITE_OR_2_o : STD_LOGIC; 
  signal NlwBufferSignal_SP6_INS_BUFIO2FB_DCM_ML_BUFIO2FB_1_I : STD_LOGIC; 
  signal NlwBufferSignal_SP6_BUFIO_INSERT_ML_BUFIO2_0_I : STD_LOGIC; 
  signal NlwBufferSignal_U_dcm_clkout1_buf_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_cnt_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_cnt_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_Maccum_cnt_cy_3_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_Maccum_cnt_cy_3_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_Maccum_cnt_cy_3_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_Maccum_cnt_cy_3_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_cnt_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_cnt_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_cnt_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_cnt_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_Maccum_cnt_cy_7_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_Maccum_cnt_cy_7_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_Maccum_cnt_cy_7_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_Maccum_cnt_cy_7_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_cnt_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_cnt_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_cnt_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_cnt_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_cnt_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_cnt_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_cnt_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_cnt_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_cnt_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_cnt_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SYNC_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_PWAIT_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_SCLK_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_D1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_D2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_PWAIT_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_PWAIT_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dac_SCLKaux_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dac_prescaler_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_dirPrev_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_dirPrev_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_dirPrev_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_dirPrev_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_dirPrev_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_dirPrev_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_dirPrev_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_dirPrev_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_dirActual_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_dirActual_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_dirActual_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_dirActual_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_dirActual_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_dirActual_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_dirActual_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_dirActual_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_DATO_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_DATO_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_DATO_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_DATO_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_DATO_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_DATO_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_DATO_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_DATO_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_WE_DP2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_WE_DP1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_state_FSM_FFd3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_state_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_state_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_state_FSM_FFd1_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_dirPrev_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_dirPrev_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_dirPrev_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_dirPrev_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_dirPrev_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_dirPrev_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_dirPrev_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_dirPrev_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_DIR_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_DIR_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_DIR_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_DIR_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_DIR_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_DIR_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_DIR_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_DIR_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_state_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_DIR_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_DIR_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_DIR_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_DIR_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_DIR_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_DIR_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_DIR_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_DIR_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_DATO_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_DATO_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_DATO_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_DATO_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_DATO_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_DATO_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_DATO_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_DATO_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_CEcounter_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_clearCounter_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_dirActual_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_dirActual_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_dirActual_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_dirActual_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_dirActual_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_dirActual_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_dirActual_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_dirActual_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_valor_freq_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_valor_freq_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_valor_freq_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_valor_freq_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_valor_freq_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_valor_freq_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_valor_freq_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_valor_freq_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_DATO_VLD_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_DIR_VLD_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_DIR_VLD_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dac_SYNC_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dac_state_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dac_CEcounter_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dac_state_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dac_endTx_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_CE_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_DATO_OK_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_valor_freq_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_valor_freq_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_valor_freq_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_valor_freq_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_valor_freq_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_valor_freq_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_valor_freq_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_valor_freq_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_counter_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_counter_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_counter_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_counter_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dac_muxSelectTX_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dac_muxSelectTX_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dac_muxSelectTX_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dac_muxSelectTX_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dac_mxstate_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dac_mxstate_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_counter_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_counter_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_counter_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dpram_counter_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_prescalerCounter_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_prescalerCounter_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_Q2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_Q2_IN : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_epp_Q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_prescalerCounter_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_prescalerCounter_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_prescalerCounter_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_prescalerCounter_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_gen_dir_prescalerCounter_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dac_muxSelect_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dac_muxSelect_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dac_muxSelect_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dac_muxSelect_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dac_muxSelect_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U_cnt_dac_muxSelect_3_CLK : STD_LOGIC; 
  signal NLW_SP6_BUFIO_INSERT_ML_BUFIO2_0_IOCLK_UNCONNECTED : STD_LOGIC; 
  signal NLW_SP6_BUFIO_INSERT_ML_BUFIO2_0_SERDESSTROBE_UNCONNECTED : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_U_gen_dir_Maccum_cnt_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_gen_dir_Maccum_cnt_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_gen_dir_Maccum_cnt_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_gen_dir_Maccum_cnt_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_gen_dir_Maccum_cnt_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_gen_dir_Maccum_cnt_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DATO_RD_1_4_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_gen_dir_Maccum_cnt_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_gen_dir_Maccum_cnt_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_gen_dir_Maccum_cnt_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DATO_RD_1_5_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DATO_RD_1_6_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DATO_RD_1_7_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_gen_dir_Maccum_cnt_xor_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_gen_dir_Maccum_cnt_xor_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_gen_dir_Maccum_cnt_xor_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_gen_dir_Maccum_cnt_xor_15_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_gen_dir_Maccum_cnt_xor_15_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_DATO_RD_1_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DATO_RD_1_2_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DATO_RD_1_3_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal U_gen_dir_prescalerCounter : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal U_cnt_epp_DIR : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U_cnt_dac_muxSelectTX : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U_cnt_dac_muxSelect : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal U_cnt_dpram_counter : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U_cnt_dpram_dirPrev : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal DATO1 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal DATO2 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U_gen_dir_cnt : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U_cnt_dpram_dirActual : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U_cnt_epp_DATO : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U_gen_dir_valor_freq : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U_gen_dir_Maccum_cnt_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U_gen_dir_Result : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_ADDRAWRADDR : STD_LOGIC_VECTOR ( 10 downto 3 ); 
  signal NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_DIADI : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_ADDRBRDADDR : STD_LOGIC_VECTOR ( 10 downto 3 ); 
  signal NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_ADDRAWRADDR : STD_LOGIC_VECTOR ( 10 downto 3 ); 
  signal NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_DIADI : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_ADDRBRDADDR : STD_LOGIC_VECTOR ( 10 downto 3 ); 
begin
  SP6_INS_BUFIO2FB_DCM_ML_BUFIO2FB_1 : X_BUFIO2FB
    generic map(
      DIVIDE_BYPASS => TRUE,
      LOC => "BUFIO2FB_X3Y12"
    )
    port map (
      I => NlwBufferSignal_SP6_INS_BUFIO2FB_DCM_ML_BUFIO2FB_1_I,
      O => U_dcm_dcm_sp_inst_ML_NEW_O
    );
  SP6_BUFIO_INSERT_ML_BUFIO2_0 : X_BUFIO2
    generic map(
      DIVIDE => 1,
      DIVIDE_BYPASS => TRUE,
      I_INVERT => FALSE,
      USE_DOUBLER => FALSE,
      LOC => "BUFIO2_X3Y12"
    )
    port map (
      DIVCLK => U_dcm_dcm_sp_inst_ML_NEW_DIVCLK,
      I => NlwBufferSignal_SP6_BUFIO_INSERT_ML_BUFIO2_0_I,
      IOCLK => NLW_SP6_BUFIO_INSERT_ML_BUFIO2_0_IOCLK_UNCONNECTED,
      SERDESSTROBE => NLW_SP6_BUFIO_INSERT_ML_BUFIO2_0_SERDESSTROBE_UNCONNECTED
    );
  U_dcm_dcm_sp_inst_PSENINV : X_BUF
    generic map(
      LOC => "DCM_X0Y1",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => U_dcm_dcm_sp_inst_PSEN_INT
    );
  U_dcm_dcm_sp_inst_CLKFB : X_BUF
    generic map(
      LOC => "DCM_X0Y1",
      PATHPULSE => 115 ps
    )
    port map (
      I => U_dcm_dcm_sp_inst_ML_NEW_O,
      O => U_dcm_dcm_sp_inst_CLKFB_INT
    );
  U_dcm_dcm_sp_inst_CLKIN : X_BUF
    generic map(
      LOC => "DCM_X0Y1",
      PATHPULSE => 115 ps
    )
    port map (
      I => U_dcm_dcm_sp_inst_ML_NEW_DIVCLK,
      O => U_dcm_dcm_sp_inst_CLKIN_INT
    );
  U_dcm_dcm_sp_inst_PSINCDECINV : X_BUF
    generic map(
      LOC => "DCM_X0Y1",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => U_dcm_dcm_sp_inst_PSINCDEC_INT
    );
  U_dcm_dcm_sp_inst_RSTINV : X_BUF
    generic map(
      LOC => "DCM_X0Y1",
      PATHPULSE => 115 ps
    )
    port map (
      I => RST_IBUF_0,
      O => U_dcm_dcm_sp_inst_RST_INT
    );
  U_dcm_dcm_sp_inst_PSCLKINV : X_BUF
    generic map(
      LOC => "DCM_X0Y1",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => U_dcm_dcm_sp_inst_PSCLK_INT
    );
  U_dcm_dcm_sp_inst : X_DCM_SP
    generic map(
      CLKDV_DIVIDE => 2.000000,
      DLL_FREQUENCY_MODE => "LOW",
      DFS_FREQUENCY_MODE => "LOW",
      CLKIN_DIVIDE_BY_2 => FALSE,
      CLKOUT_PHASE_SHIFT => "NONE",
      CLK_FEEDBACK => "1X",
      STARTUP_WAIT => FALSE,
      DSS_MODE => "NONE",
      DUTY_CYCLE_CORRECTION => TRUE,
      DESKEW_ADJUST => "5",
      CLKFX_MULTIPLY => 4,
      CLKFX_DIVIDE => 1,
      PHASE_SHIFT => 0,
      CLKIN_PERIOD => 10.000000,
      LOC => "DCM_X0Y1"
    )
    port map (
      PSCLK => U_dcm_dcm_sp_inst_PSCLK_INT,
      RST => U_dcm_dcm_sp_inst_RST_INT,
      PSINCDEC => U_dcm_dcm_sp_inst_PSINCDEC_INT,
      CLKIN => U_dcm_dcm_sp_inst_CLKIN_INT,
      CLKFB => U_dcm_dcm_sp_inst_CLKFB_INT,
      PSEN => U_dcm_dcm_sp_inst_PSEN_INT,
      DSSEN => U_dcm_dcm_sp_inst_DSSEN,
      CLK2X180 => U_dcm_dcm_sp_inst_CLK2X180,
      CLK2X => U_dcm_dcm_sp_inst_CLK2X,
      CLKFX => U_dcm_dcm_sp_inst_CLKFX,
      CLK180 => U_dcm_dcm_sp_inst_CLK180,
      CLK270 => U_dcm_dcm_sp_inst_CLK270,
      CLK0 => U_dcm_clk0,
      CLKFX180 => U_dcm_dcm_sp_inst_CLKFX180,
      CLKDV => U_dcm_dcm_sp_inst_CLKDV,
      PSDONE => U_dcm_dcm_sp_inst_PSDONE,
      CLK90 => U_dcm_dcm_sp_inst_CLK90,
      LOCKED => U_dcm_dcm_sp_inst_LOCKED,
      STATUS(7) => U_dcm_dcm_sp_inst_STATUS7,
      STATUS(6) => U_dcm_dcm_sp_inst_STATUS6,
      STATUS(5) => U_dcm_dcm_sp_inst_STATUS5,
      STATUS(4) => U_dcm_dcm_sp_inst_STATUS4,
      STATUS(3) => U_dcm_dcm_sp_inst_STATUS3,
      STATUS(2) => U_dcm_dcm_sp_inst_STATUS2,
      STATUS(1) => U_dcm_dcm_sp_inst_STATUS1,
      STATUS(0) => U_dcm_dcm_sp_inst_STATUS0
    );
  U_dcm_clkout1_buf : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X2Y3",
      PATHPULSE => 115 ps
    )
    port map (
      I => NlwBufferSignal_U_dcm_clkout1_buf_IN,
      O => CLK
    );
  U_dpram_mem1_Mram_mem_pos_WEBWEU0INV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y39",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => U_dpram_mem1_Mram_mem_pos_WEBWEU0_INT
    );
  U_dpram_mem1_Mram_mem_pos_WEBWEU1INV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y39",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => U_dpram_mem1_Mram_mem_pos_WEBWEU1_INT
    );
  U_dpram_mem1_Mram_mem_pos_WEAWEL0INV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y39",
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_dpram_WE_DP1_919,
      O => U_dpram_mem1_Mram_mem_pos_WEAWEL0_INT
    );
  U_dpram_mem1_Mram_mem_pos_WEAWEL1INV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y39",
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_dpram_WE_DP1_919,
      O => U_dpram_mem1_Mram_mem_pos_WEAWEL1_INT
    );
  U_dpram_mem1_Mram_mem_pos_RSTAINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y39",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => U_dpram_mem1_Mram_mem_pos_RSTA_INT
    );
  U_dpram_mem1_Mram_mem_pos_REGCEBREGCEINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y39",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => U_dpram_mem1_Mram_mem_pos_REGCEBREGCE_INT
    );
  U_dpram_mem1_Mram_mem_pos_CLKBRDCLKINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y39",
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => U_dpram_mem1_Mram_mem_pos_CLKBRDCLK_INT
    );
  U_dpram_mem1_Mram_mem_pos_CLKAWRCLKINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y39",
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => U_dpram_mem1_Mram_mem_pos_CLKAWRCLK_INT
    );
  U_dpram_mem1_Mram_mem_pos_ENAWRENINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y39",
      PATHPULSE => 115 ps
    )
    port map (
      I => '1',
      O => U_dpram_mem1_Mram_mem_pos_ENAWREN_INT
    );
  U_dpram_mem1_Mram_mem_pos_REGCEAINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y39",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => U_dpram_mem1_Mram_mem_pos_REGCEA_INT
    );
  U_dpram_mem1_Mram_mem_pos_ENBRDENINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y39",
      PATHPULSE => 115 ps
    )
    port map (
      I => '1',
      O => U_dpram_mem1_Mram_mem_pos_ENBRDEN_INT
    );
  U_dpram_mem1_Mram_mem_pos_RSTBRSTINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y39",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => U_dpram_mem1_Mram_mem_pos_RSTBRST_INT
    );
  U_dpram_mem1_Mram_mem_pos : X_RAMB8BWER
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
      LOC => "RAMB8_X1Y39"
    )
    port map (
      RSTBRST => U_dpram_mem1_Mram_mem_pos_RSTBRST_INT,
      ENBRDEN => U_dpram_mem1_Mram_mem_pos_ENBRDEN_INT,
      REGCEA => U_dpram_mem1_Mram_mem_pos_REGCEA_INT,
      ENAWREN => U_dpram_mem1_Mram_mem_pos_ENAWREN_INT,
      CLKAWRCLK => U_dpram_mem1_Mram_mem_pos_CLKAWRCLK_INT,
      CLKBRDCLK => U_dpram_mem1_Mram_mem_pos_CLKBRDCLK_INT,
      REGCEBREGCE => U_dpram_mem1_Mram_mem_pos_REGCEBREGCE_INT,
      RSTA => U_dpram_mem1_Mram_mem_pos_RSTA_INT,
      WEAWEL(1) => U_dpram_mem1_Mram_mem_pos_WEAWEL1_INT,
      WEAWEL(0) => U_dpram_mem1_Mram_mem_pos_WEAWEL0_INT,
      WEBWEU(1) => U_dpram_mem1_Mram_mem_pos_WEBWEU1_INT,
      WEBWEU(0) => U_dpram_mem1_Mram_mem_pos_WEBWEU0_INT,
      ADDRAWRADDR(12) => GND,
      ADDRAWRADDR(11) => GND,
      ADDRAWRADDR(10) => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_ADDRAWRADDR(10),
      ADDRAWRADDR(9) => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_ADDRAWRADDR(9),
      ADDRAWRADDR(8) => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_ADDRAWRADDR(8),
      ADDRAWRADDR(7) => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_ADDRAWRADDR(7),
      ADDRAWRADDR(6) => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_ADDRAWRADDR(6),
      ADDRAWRADDR(5) => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_ADDRAWRADDR(5),
      ADDRAWRADDR(4) => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_ADDRAWRADDR(4),
      ADDRAWRADDR(3) => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_ADDRAWRADDR(3),
      ADDRAWRADDR(2) => U_dpram_mem1_Mram_mem_pos_ADDRAWRADDR2,
      ADDRAWRADDR(1) => U_dpram_mem1_Mram_mem_pos_ADDRAWRADDR1,
      ADDRAWRADDR(0) => U_dpram_mem1_Mram_mem_pos_ADDRAWRADDR0,
      DIPBDIP(1) => U_dpram_mem1_Mram_mem_pos_DIPBDIP1,
      DIPBDIP(0) => U_dpram_mem1_Mram_mem_pos_DIPBDIP0,
      DIBDI(15) => U_dpram_mem1_Mram_mem_pos_DIBDI15,
      DIBDI(14) => U_dpram_mem1_Mram_mem_pos_DIBDI14,
      DIBDI(13) => U_dpram_mem1_Mram_mem_pos_DIBDI13,
      DIBDI(12) => U_dpram_mem1_Mram_mem_pos_DIBDI12,
      DIBDI(11) => U_dpram_mem1_Mram_mem_pos_DIBDI11,
      DIBDI(10) => U_dpram_mem1_Mram_mem_pos_DIBDI10,
      DIBDI(9) => U_dpram_mem1_Mram_mem_pos_DIBDI9,
      DIBDI(8) => U_dpram_mem1_Mram_mem_pos_DIBDI8,
      DIBDI(7) => U_dpram_mem1_Mram_mem_pos_DIBDI7,
      DIBDI(6) => U_dpram_mem1_Mram_mem_pos_DIBDI6,
      DIBDI(5) => U_dpram_mem1_Mram_mem_pos_DIBDI5,
      DIBDI(4) => U_dpram_mem1_Mram_mem_pos_DIBDI4,
      DIBDI(3) => U_dpram_mem1_Mram_mem_pos_DIBDI3,
      DIBDI(2) => U_dpram_mem1_Mram_mem_pos_DIBDI2,
      DIBDI(1) => U_dpram_mem1_Mram_mem_pos_DIBDI1,
      DIBDI(0) => U_dpram_mem1_Mram_mem_pos_DIBDI0,
      DIADI(15) => U_dpram_mem1_Mram_mem_pos_DIADI15,
      DIADI(14) => U_dpram_mem1_Mram_mem_pos_DIADI14,
      DIADI(13) => U_dpram_mem1_Mram_mem_pos_DIADI13,
      DIADI(12) => U_dpram_mem1_Mram_mem_pos_DIADI12,
      DIADI(11) => U_dpram_mem1_Mram_mem_pos_DIADI11,
      DIADI(10) => U_dpram_mem1_Mram_mem_pos_DIADI10,
      DIADI(9) => U_dpram_mem1_Mram_mem_pos_DIADI9,
      DIADI(8) => U_dpram_mem1_Mram_mem_pos_DIADI8,
      DIADI(7) => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_DIADI(7),
      DIADI(6) => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_DIADI(6),
      DIADI(5) => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_DIADI(5),
      DIADI(4) => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_DIADI(4),
      DIADI(3) => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_DIADI(3),
      DIADI(2) => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_DIADI(2),
      DIADI(1) => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_DIADI(1),
      DIADI(0) => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_DIADI(0),
      ADDRBRDADDR(12) => GND,
      ADDRBRDADDR(11) => GND,
      ADDRBRDADDR(10) => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_ADDRBRDADDR(10),
      ADDRBRDADDR(9) => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_ADDRBRDADDR(9),
      ADDRBRDADDR(8) => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_ADDRBRDADDR(8),
      ADDRBRDADDR(7) => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_ADDRBRDADDR(7),
      ADDRBRDADDR(6) => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_ADDRBRDADDR(6),
      ADDRBRDADDR(5) => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_ADDRBRDADDR(5),
      ADDRBRDADDR(4) => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_ADDRBRDADDR(4),
      ADDRBRDADDR(3) => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_ADDRBRDADDR(3),
      ADDRBRDADDR(2) => U_dpram_mem1_Mram_mem_pos_ADDRBRDADDR2,
      ADDRBRDADDR(1) => U_dpram_mem1_Mram_mem_pos_ADDRBRDADDR1,
      ADDRBRDADDR(0) => U_dpram_mem1_Mram_mem_pos_ADDRBRDADDR0,
      DIPADIP(1) => U_dpram_mem1_Mram_mem_pos_DIPADIP1,
      DIPADIP(0) => GND,
      DOADO(15) => U_dpram_mem1_Mram_mem_pos_DOADO15,
      DOADO(14) => U_dpram_mem1_Mram_mem_pos_DOADO14,
      DOADO(13) => U_dpram_mem1_Mram_mem_pos_DOADO13,
      DOADO(12) => U_dpram_mem1_Mram_mem_pos_DOADO12,
      DOADO(11) => U_dpram_mem1_Mram_mem_pos_DOADO11,
      DOADO(10) => U_dpram_mem1_Mram_mem_pos_DOADO10,
      DOADO(9) => U_dpram_mem1_Mram_mem_pos_DOADO9,
      DOADO(8) => U_dpram_mem1_Mram_mem_pos_DOADO8,
      DOADO(7) => U_dpram_mem1_Mram_mem_pos_DOADO7,
      DOADO(6) => U_dpram_mem1_Mram_mem_pos_DOADO6,
      DOADO(5) => U_dpram_mem1_Mram_mem_pos_DOADO5,
      DOADO(4) => U_dpram_mem1_Mram_mem_pos_DOADO4,
      DOADO(3) => U_dpram_mem1_Mram_mem_pos_DOADO3,
      DOADO(2) => U_dpram_mem1_Mram_mem_pos_DOADO2,
      DOADO(1) => U_dpram_mem1_Mram_mem_pos_DOADO1,
      DOADO(0) => U_dpram_mem1_Mram_mem_pos_DOADO0,
      DOPADOP(1) => U_dpram_mem1_Mram_mem_pos_DOPADOP1,
      DOPADOP(0) => U_dpram_mem1_Mram_mem_pos_DOPADOP0,
      DOPBDOP(1) => U_dpram_mem1_Mram_mem_pos_DOPBDOP1,
      DOPBDOP(0) => U_dpram_mem1_Mram_mem_pos_DOPBDOP0,
      DOBDO(15) => U_dpram_mem1_Mram_mem_pos_DOBDO15,
      DOBDO(14) => U_dpram_mem1_Mram_mem_pos_DOBDO14,
      DOBDO(13) => U_dpram_mem1_Mram_mem_pos_DOBDO13,
      DOBDO(12) => U_dpram_mem1_Mram_mem_pos_DOBDO12,
      DOBDO(11) => U_dpram_mem1_Mram_mem_pos_DOBDO11,
      DOBDO(10) => U_dpram_mem1_Mram_mem_pos_DOBDO10,
      DOBDO(9) => U_dpram_mem1_Mram_mem_pos_DOBDO9,
      DOBDO(8) => U_dpram_mem1_Mram_mem_pos_DOBDO8,
      DOBDO(7) => DATO1(7),
      DOBDO(6) => DATO1(6),
      DOBDO(5) => DATO1(5),
      DOBDO(4) => DATO1(4),
      DOBDO(3) => DATO1(3),
      DOBDO(2) => DATO1(2),
      DOBDO(1) => DATO1(1),
      DOBDO(0) => DATO1(0)
    );
  U_dpram_mem2_Mram_mem_pos_WEBWEU0INV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y38",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => U_dpram_mem2_Mram_mem_pos_WEBWEU0_INT
    );
  U_dpram_mem2_Mram_mem_pos_WEBWEU1INV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y38",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => U_dpram_mem2_Mram_mem_pos_WEBWEU1_INT
    );
  U_dpram_mem2_Mram_mem_pos_WEAWEL0INV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y38",
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_dpram_WE_DP2_922,
      O => U_dpram_mem2_Mram_mem_pos_WEAWEL0_INT
    );
  U_dpram_mem2_Mram_mem_pos_WEAWEL1INV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y38",
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_dpram_WE_DP2_922,
      O => U_dpram_mem2_Mram_mem_pos_WEAWEL1_INT
    );
  U_dpram_mem2_Mram_mem_pos_RSTAINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y38",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => U_dpram_mem2_Mram_mem_pos_RSTA_INT
    );
  U_dpram_mem2_Mram_mem_pos_REGCEBREGCEINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y38",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => U_dpram_mem2_Mram_mem_pos_REGCEBREGCE_INT
    );
  U_dpram_mem2_Mram_mem_pos_CLKBRDCLKINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y38",
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => U_dpram_mem2_Mram_mem_pos_CLKBRDCLK_INT
    );
  U_dpram_mem2_Mram_mem_pos_CLKAWRCLKINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y38",
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => U_dpram_mem2_Mram_mem_pos_CLKAWRCLK_INT
    );
  U_dpram_mem2_Mram_mem_pos_ENAWRENINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y38",
      PATHPULSE => 115 ps
    )
    port map (
      I => '1',
      O => U_dpram_mem2_Mram_mem_pos_ENAWREN_INT
    );
  U_dpram_mem2_Mram_mem_pos_REGCEAINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y38",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => U_dpram_mem2_Mram_mem_pos_REGCEA_INT
    );
  U_dpram_mem2_Mram_mem_pos_ENBRDENINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y38",
      PATHPULSE => 115 ps
    )
    port map (
      I => '1',
      O => U_dpram_mem2_Mram_mem_pos_ENBRDEN_INT
    );
  U_dpram_mem2_Mram_mem_pos_RSTBRSTINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y38",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => U_dpram_mem2_Mram_mem_pos_RSTBRST_INT
    );
  U_dpram_mem2_Mram_mem_pos : X_RAMB8BWER
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
      LOC => "RAMB8_X1Y38"
    )
    port map (
      RSTBRST => U_dpram_mem2_Mram_mem_pos_RSTBRST_INT,
      ENBRDEN => U_dpram_mem2_Mram_mem_pos_ENBRDEN_INT,
      REGCEA => U_dpram_mem2_Mram_mem_pos_REGCEA_INT,
      ENAWREN => U_dpram_mem2_Mram_mem_pos_ENAWREN_INT,
      CLKAWRCLK => U_dpram_mem2_Mram_mem_pos_CLKAWRCLK_INT,
      CLKBRDCLK => U_dpram_mem2_Mram_mem_pos_CLKBRDCLK_INT,
      REGCEBREGCE => U_dpram_mem2_Mram_mem_pos_REGCEBREGCE_INT,
      RSTA => U_dpram_mem2_Mram_mem_pos_RSTA_INT,
      WEAWEL(1) => U_dpram_mem2_Mram_mem_pos_WEAWEL1_INT,
      WEAWEL(0) => U_dpram_mem2_Mram_mem_pos_WEAWEL0_INT,
      WEBWEU(1) => U_dpram_mem2_Mram_mem_pos_WEBWEU1_INT,
      WEBWEU(0) => U_dpram_mem2_Mram_mem_pos_WEBWEU0_INT,
      ADDRAWRADDR(12) => GND,
      ADDRAWRADDR(11) => GND,
      ADDRAWRADDR(10) => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_ADDRAWRADDR(10),
      ADDRAWRADDR(9) => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_ADDRAWRADDR(9),
      ADDRAWRADDR(8) => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_ADDRAWRADDR(8),
      ADDRAWRADDR(7) => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_ADDRAWRADDR(7),
      ADDRAWRADDR(6) => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_ADDRAWRADDR(6),
      ADDRAWRADDR(5) => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_ADDRAWRADDR(5),
      ADDRAWRADDR(4) => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_ADDRAWRADDR(4),
      ADDRAWRADDR(3) => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_ADDRAWRADDR(3),
      ADDRAWRADDR(2) => U_dpram_mem2_Mram_mem_pos_ADDRAWRADDR2,
      ADDRAWRADDR(1) => U_dpram_mem2_Mram_mem_pos_ADDRAWRADDR1,
      ADDRAWRADDR(0) => U_dpram_mem2_Mram_mem_pos_ADDRAWRADDR0,
      DIPBDIP(1) => U_dpram_mem2_Mram_mem_pos_DIPBDIP1,
      DIPBDIP(0) => U_dpram_mem2_Mram_mem_pos_DIPBDIP0,
      DIBDI(15) => U_dpram_mem2_Mram_mem_pos_DIBDI15,
      DIBDI(14) => U_dpram_mem2_Mram_mem_pos_DIBDI14,
      DIBDI(13) => U_dpram_mem2_Mram_mem_pos_DIBDI13,
      DIBDI(12) => U_dpram_mem2_Mram_mem_pos_DIBDI12,
      DIBDI(11) => U_dpram_mem2_Mram_mem_pos_DIBDI11,
      DIBDI(10) => U_dpram_mem2_Mram_mem_pos_DIBDI10,
      DIBDI(9) => U_dpram_mem2_Mram_mem_pos_DIBDI9,
      DIBDI(8) => U_dpram_mem2_Mram_mem_pos_DIBDI8,
      DIBDI(7) => U_dpram_mem2_Mram_mem_pos_DIBDI7,
      DIBDI(6) => U_dpram_mem2_Mram_mem_pos_DIBDI6,
      DIBDI(5) => U_dpram_mem2_Mram_mem_pos_DIBDI5,
      DIBDI(4) => U_dpram_mem2_Mram_mem_pos_DIBDI4,
      DIBDI(3) => U_dpram_mem2_Mram_mem_pos_DIBDI3,
      DIBDI(2) => U_dpram_mem2_Mram_mem_pos_DIBDI2,
      DIBDI(1) => U_dpram_mem2_Mram_mem_pos_DIBDI1,
      DIBDI(0) => U_dpram_mem2_Mram_mem_pos_DIBDI0,
      DIADI(15) => U_dpram_mem2_Mram_mem_pos_DIADI15,
      DIADI(14) => U_dpram_mem2_Mram_mem_pos_DIADI14,
      DIADI(13) => U_dpram_mem2_Mram_mem_pos_DIADI13,
      DIADI(12) => U_dpram_mem2_Mram_mem_pos_DIADI12,
      DIADI(11) => U_dpram_mem2_Mram_mem_pos_DIADI11,
      DIADI(10) => U_dpram_mem2_Mram_mem_pos_DIADI10,
      DIADI(9) => U_dpram_mem2_Mram_mem_pos_DIADI9,
      DIADI(8) => U_dpram_mem2_Mram_mem_pos_DIADI8,
      DIADI(7) => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_DIADI(7),
      DIADI(6) => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_DIADI(6),
      DIADI(5) => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_DIADI(5),
      DIADI(4) => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_DIADI(4),
      DIADI(3) => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_DIADI(3),
      DIADI(2) => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_DIADI(2),
      DIADI(1) => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_DIADI(1),
      DIADI(0) => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_DIADI(0),
      ADDRBRDADDR(12) => GND,
      ADDRBRDADDR(11) => GND,
      ADDRBRDADDR(10) => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_ADDRBRDADDR(10),
      ADDRBRDADDR(9) => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_ADDRBRDADDR(9),
      ADDRBRDADDR(8) => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_ADDRBRDADDR(8),
      ADDRBRDADDR(7) => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_ADDRBRDADDR(7),
      ADDRBRDADDR(6) => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_ADDRBRDADDR(6),
      ADDRBRDADDR(5) => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_ADDRBRDADDR(5),
      ADDRBRDADDR(4) => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_ADDRBRDADDR(4),
      ADDRBRDADDR(3) => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_ADDRBRDADDR(3),
      ADDRBRDADDR(2) => U_dpram_mem2_Mram_mem_pos_ADDRBRDADDR2,
      ADDRBRDADDR(1) => U_dpram_mem2_Mram_mem_pos_ADDRBRDADDR1,
      ADDRBRDADDR(0) => U_dpram_mem2_Mram_mem_pos_ADDRBRDADDR0,
      DIPADIP(1) => U_dpram_mem2_Mram_mem_pos_DIPADIP1,
      DIPADIP(0) => GND,
      DOADO(15) => U_dpram_mem2_Mram_mem_pos_DOADO15,
      DOADO(14) => U_dpram_mem2_Mram_mem_pos_DOADO14,
      DOADO(13) => U_dpram_mem2_Mram_mem_pos_DOADO13,
      DOADO(12) => U_dpram_mem2_Mram_mem_pos_DOADO12,
      DOADO(11) => U_dpram_mem2_Mram_mem_pos_DOADO11,
      DOADO(10) => U_dpram_mem2_Mram_mem_pos_DOADO10,
      DOADO(9) => U_dpram_mem2_Mram_mem_pos_DOADO9,
      DOADO(8) => U_dpram_mem2_Mram_mem_pos_DOADO8,
      DOADO(7) => U_dpram_mem2_Mram_mem_pos_DOADO7,
      DOADO(6) => U_dpram_mem2_Mram_mem_pos_DOADO6,
      DOADO(5) => U_dpram_mem2_Mram_mem_pos_DOADO5,
      DOADO(4) => U_dpram_mem2_Mram_mem_pos_DOADO4,
      DOADO(3) => U_dpram_mem2_Mram_mem_pos_DOADO3,
      DOADO(2) => U_dpram_mem2_Mram_mem_pos_DOADO2,
      DOADO(1) => U_dpram_mem2_Mram_mem_pos_DOADO1,
      DOADO(0) => U_dpram_mem2_Mram_mem_pos_DOADO0,
      DOPADOP(1) => U_dpram_mem2_Mram_mem_pos_DOPADOP1,
      DOPADOP(0) => U_dpram_mem2_Mram_mem_pos_DOPADOP0,
      DOPBDOP(1) => U_dpram_mem2_Mram_mem_pos_DOPBDOP1,
      DOPBDOP(0) => U_dpram_mem2_Mram_mem_pos_DOPBDOP0,
      DOBDO(15) => U_dpram_mem2_Mram_mem_pos_DOBDO15,
      DOBDO(14) => U_dpram_mem2_Mram_mem_pos_DOBDO14,
      DOBDO(13) => U_dpram_mem2_Mram_mem_pos_DOBDO13,
      DOBDO(12) => U_dpram_mem2_Mram_mem_pos_DOBDO12,
      DOBDO(11) => U_dpram_mem2_Mram_mem_pos_DOBDO11,
      DOBDO(10) => U_dpram_mem2_Mram_mem_pos_DOBDO10,
      DOBDO(9) => U_dpram_mem2_Mram_mem_pos_DOBDO9,
      DOBDO(8) => U_dpram_mem2_Mram_mem_pos_DOBDO8,
      DOBDO(7) => DATO2(7),
      DOBDO(6) => DATO2(6),
      DOBDO(5) => DATO2(5),
      DOBDO(4) => DATO2(4),
      DOBDO(3) => DATO2(3),
      DOBDO(2) => DATO2(2),
      DOBDO(1) => DATO2(1),
      DOBDO(0) => DATO2(0)
    );
  U_gen_dir_cnt_3 : X_FF
    generic map(
      LOC => "SLICE_X14Y75",
      INIT => '0'
    )
    port map (
      CE => U_gen_dir_CE_1052,
      CLK => NlwBufferSignal_U_gen_dir_cnt_3_CLK,
      I => U_gen_dir_Result(3),
      O => U_gen_dir_cnt(3),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_gen_dir_Maccum_cnt_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y75",
      INIT => X"0F0F0F0FF0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR5 => U_gen_dir_cnt(3),
      ADR4 => '1',
      ADR2 => U_gen_dir_valor_freq(3),
      O => U_gen_dir_Maccum_cnt_lut(3)
    );
  ProtoComp48_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X14Y75"
    )
    port map (
      O => ProtoComp48_CYINITGND_0
    );
  U_gen_dir_cnt_2 : X_FF
    generic map(
      LOC => "SLICE_X14Y75",
      INIT => '0'
    )
    port map (
      CE => U_gen_dir_CE_1052,
      CLK => NlwBufferSignal_U_gen_dir_cnt_2_CLK,
      I => U_gen_dir_Result(2),
      O => U_gen_dir_cnt(2),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_gen_dir_Maccum_cnt_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y75"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp48_CYINITGND_0,
      CO(3) => U_gen_dir_Maccum_cnt_cy_3_Q_1056,
      CO(2) => NLW_U_gen_dir_Maccum_cnt_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_U_gen_dir_Maccum_cnt_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_U_gen_dir_Maccum_cnt_cy_3_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_U_gen_dir_Maccum_cnt_cy_3_DI_3_Q,
      DI(2) => NlwBufferSignal_U_gen_dir_Maccum_cnt_cy_3_DI_2_Q,
      DI(1) => NlwBufferSignal_U_gen_dir_Maccum_cnt_cy_3_DI_1_Q,
      DI(0) => NlwBufferSignal_U_gen_dir_Maccum_cnt_cy_3_DI_0_Q,
      O(3) => U_gen_dir_Result(3),
      O(2) => U_gen_dir_Result(2),
      O(1) => U_gen_dir_Result(1),
      O(0) => U_gen_dir_Result(0),
      S(3) => U_gen_dir_Maccum_cnt_lut(3),
      S(2) => U_gen_dir_Maccum_cnt_lut(2),
      S(1) => U_gen_dir_Maccum_cnt_lut(1),
      S(0) => U_gen_dir_Maccum_cnt_lut(0)
    );
  U_gen_dir_Maccum_cnt_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y75",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => U_gen_dir_cnt(2),
      ADR3 => '1',
      ADR5 => U_gen_dir_valor_freq(2),
      O => U_gen_dir_Maccum_cnt_lut(2)
    );
  U_gen_dir_cnt_1 : X_FF
    generic map(
      LOC => "SLICE_X14Y75",
      INIT => '0'
    )
    port map (
      CE => U_gen_dir_CE_1052,
      CLK => NlwBufferSignal_U_gen_dir_cnt_1_CLK,
      I => U_gen_dir_Result(1),
      O => U_gen_dir_cnt(1),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_gen_dir_Maccum_cnt_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y75",
      INIT => X"0F0FF0F00F0FF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR4 => U_gen_dir_cnt(1),
      ADR3 => '1',
      ADR2 => U_gen_dir_valor_freq(1),
      O => U_gen_dir_Maccum_cnt_lut(1)
    );
  U_gen_dir_cnt_0 : X_FF
    generic map(
      LOC => "SLICE_X14Y75",
      INIT => '0'
    )
    port map (
      CE => U_gen_dir_CE_1052,
      CLK => NlwBufferSignal_U_gen_dir_cnt_0_CLK,
      I => U_gen_dir_Result(0),
      O => U_gen_dir_cnt(0),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_gen_dir_Maccum_cnt_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y75",
      INIT => X"55555555AAAAAAAA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => U_gen_dir_cnt(0),
      ADR4 => '1',
      ADR0 => U_gen_dir_valor_freq(0),
      O => U_gen_dir_Maccum_cnt_lut(0)
    );
  U_gen_dir_cnt_7 : X_FF
    generic map(
      LOC => "SLICE_X14Y76",
      INIT => '0'
    )
    port map (
      CE => U_gen_dir_CE_1052,
      CLK => NlwBufferSignal_U_gen_dir_cnt_7_CLK,
      I => U_gen_dir_Result(7),
      O => U_gen_dir_cnt(7),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_gen_dir_Maccum_cnt_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y76",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => U_gen_dir_cnt(7),
      ADR3 => '1',
      ADR5 => U_gen_dir_valor_freq(7),
      O => U_gen_dir_Maccum_cnt_lut(7)
    );
  U_gen_dir_cnt_6 : X_FF
    generic map(
      LOC => "SLICE_X14Y76",
      INIT => '0'
    )
    port map (
      CE => U_gen_dir_CE_1052,
      CLK => NlwBufferSignal_U_gen_dir_cnt_6_CLK,
      I => U_gen_dir_Result(6),
      O => U_gen_dir_cnt(6),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_gen_dir_Maccum_cnt_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y76"
    )
    port map (
      CI => U_gen_dir_Maccum_cnt_cy_3_Q_1056,
      CYINIT => '0',
      CO(3) => U_gen_dir_Maccum_cnt_cy_7_Q_1057,
      CO(2) => NLW_U_gen_dir_Maccum_cnt_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_U_gen_dir_Maccum_cnt_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_U_gen_dir_Maccum_cnt_cy_7_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_U_gen_dir_Maccum_cnt_cy_7_DI_3_Q,
      DI(2) => NlwBufferSignal_U_gen_dir_Maccum_cnt_cy_7_DI_2_Q,
      DI(1) => NlwBufferSignal_U_gen_dir_Maccum_cnt_cy_7_DI_1_Q,
      DI(0) => NlwBufferSignal_U_gen_dir_Maccum_cnt_cy_7_DI_0_Q,
      O(3) => U_gen_dir_Result(7),
      O(2) => U_gen_dir_Result(6),
      O(1) => U_gen_dir_Result(5),
      O(0) => U_gen_dir_Result(4),
      S(3) => U_gen_dir_Maccum_cnt_lut(7),
      S(2) => U_gen_dir_Maccum_cnt_lut(6),
      S(1) => U_gen_dir_Maccum_cnt_lut(5),
      S(0) => U_gen_dir_Maccum_cnt_lut(4)
    );
  U_gen_dir_Maccum_cnt_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y76",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U_gen_dir_cnt(6),
      ADR5 => '1',
      ADR4 => U_gen_dir_valor_freq(6),
      O => U_gen_dir_Maccum_cnt_lut(6)
    );
  U_gen_dir_cnt_5 : X_FF
    generic map(
      LOC => "SLICE_X14Y76",
      INIT => '0'
    )
    port map (
      CE => U_gen_dir_CE_1052,
      CLK => NlwBufferSignal_U_gen_dir_cnt_5_CLK,
      I => U_gen_dir_Result(5),
      O => U_gen_dir_cnt(5),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_gen_dir_Maccum_cnt_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y76",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U_gen_dir_cnt(5),
      ADR5 => '1',
      ADR4 => U_gen_dir_valor_freq(5),
      O => U_gen_dir_Maccum_cnt_lut(5)
    );
  U_gen_dir_cnt_4 : X_FF
    generic map(
      LOC => "SLICE_X14Y76",
      INIT => '0'
    )
    port map (
      CE => U_gen_dir_CE_1052,
      CLK => NlwBufferSignal_U_gen_dir_cnt_4_CLK,
      I => U_gen_dir_Result(4),
      O => U_gen_dir_cnt(4),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_gen_dir_Maccum_cnt_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y76",
      INIT => X"00FF00FFFF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U_gen_dir_cnt(4),
      ADR4 => '1',
      ADR5 => U_gen_dir_valor_freq(4),
      O => U_gen_dir_Maccum_cnt_lut(4)
    );
  U_gen_dir_cnt_11 : X_FF
    generic map(
      LOC => "SLICE_X14Y77",
      INIT => '0'
    )
    port map (
      CE => U_gen_dir_CE_1052,
      CLK => NlwBufferSignal_U_gen_dir_cnt_11_CLK,
      I => U_gen_dir_Result(11),
      O => U_gen_dir_cnt(11),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_gen_dir_cnt_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y77",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => U_gen_dir_cnt(11),
      ADR3 => '1',
      ADR5 => '1',
      O => U_gen_dir_cnt_11_rt_171
    );
  DATO_RD_1_4_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y77",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DATO_RD_1_4_D5LUT_O_UNCONNECTED
    );
  U_gen_dir_cnt_10 : X_FF
    generic map(
      LOC => "SLICE_X14Y77",
      INIT => '0'
    )
    port map (
      CE => U_gen_dir_CE_1052,
      CLK => NlwBufferSignal_U_gen_dir_cnt_10_CLK,
      I => U_gen_dir_Result(10),
      O => U_gen_dir_cnt(10),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_gen_dir_Maccum_cnt_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y77"
    )
    port map (
      CI => U_gen_dir_Maccum_cnt_cy_7_Q_1057,
      CYINIT => '0',
      CO(3) => U_gen_dir_Maccum_cnt_cy_11_Q_1058,
      CO(2) => NLW_U_gen_dir_Maccum_cnt_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_U_gen_dir_Maccum_cnt_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_U_gen_dir_Maccum_cnt_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U_gen_dir_Result(11),
      O(2) => U_gen_dir_Result(10),
      O(1) => U_gen_dir_Result(9),
      O(0) => U_gen_dir_Result(8),
      S(3) => U_gen_dir_cnt_11_rt_171,
      S(2) => U_gen_dir_cnt_10_rt_183,
      S(1) => U_gen_dir_cnt_9_rt_187,
      S(0) => U_gen_dir_cnt_8_rt_191
    );
  U_gen_dir_cnt_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y77",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => U_gen_dir_cnt(10),
      ADR3 => '1',
      ADR5 => '1',
      O => U_gen_dir_cnt_10_rt_183
    );
  DATO_RD_1_5_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y77",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DATO_RD_1_5_C5LUT_O_UNCONNECTED
    );
  U_gen_dir_cnt_9 : X_FF
    generic map(
      LOC => "SLICE_X14Y77",
      INIT => '0'
    )
    port map (
      CE => U_gen_dir_CE_1052,
      CLK => NlwBufferSignal_U_gen_dir_cnt_9_CLK,
      I => U_gen_dir_Result(9),
      O => U_gen_dir_cnt(9),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_gen_dir_cnt_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y77",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => U_gen_dir_cnt(9),
      ADR3 => '1',
      ADR5 => '1',
      O => U_gen_dir_cnt_9_rt_187
    );
  DATO_RD_1_6_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y77",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DATO_RD_1_6_B5LUT_O_UNCONNECTED
    );
  U_gen_dir_cnt_8 : X_FF
    generic map(
      LOC => "SLICE_X14Y77",
      INIT => '0'
    )
    port map (
      CE => U_gen_dir_CE_1052,
      CLK => NlwBufferSignal_U_gen_dir_cnt_8_CLK,
      I => U_gen_dir_Result(8),
      O => U_gen_dir_cnt(8),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_gen_dir_cnt_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y77",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => U_gen_dir_cnt(8),
      ADR3 => '1',
      ADR5 => '1',
      O => U_gen_dir_cnt_8_rt_191
    );
  DATO_RD_1_7_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y77",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DATO_RD_1_7_A5LUT_O_UNCONNECTED
    );
  U_gen_dir_cnt_15 : X_FF
    generic map(
      LOC => "SLICE_X14Y78",
      INIT => '0'
    )
    port map (
      CE => U_gen_dir_CE_1052,
      CLK => NlwBufferSignal_U_gen_dir_cnt_15_CLK,
      I => U_gen_dir_Result(15),
      O => U_gen_dir_cnt(15),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_gen_dir_cnt_15_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y78",
      INIT => X"FFFFFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => U_gen_dir_cnt(15),
      ADR4 => '1',
      ADR3 => '1',
      O => U_gen_dir_cnt_15_rt_200
    );
  U_gen_dir_cnt_14 : X_FF
    generic map(
      LOC => "SLICE_X14Y78",
      INIT => '0'
    )
    port map (
      CE => U_gen_dir_CE_1052,
      CLK => NlwBufferSignal_U_gen_dir_cnt_14_CLK,
      I => U_gen_dir_Result(14),
      O => U_gen_dir_cnt(14),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_gen_dir_Maccum_cnt_xor_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y78"
    )
    port map (
      CI => U_gen_dir_Maccum_cnt_cy_11_Q_1058,
      CYINIT => '0',
      CO(3) => NLW_U_gen_dir_Maccum_cnt_xor_15_CO_3_UNCONNECTED,
      CO(2) => NLW_U_gen_dir_Maccum_cnt_xor_15_CO_2_UNCONNECTED,
      CO(1) => NLW_U_gen_dir_Maccum_cnt_xor_15_CO_1_UNCONNECTED,
      CO(0) => NLW_U_gen_dir_Maccum_cnt_xor_15_CO_0_UNCONNECTED,
      DI(3) => NLW_U_gen_dir_Maccum_cnt_xor_15_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U_gen_dir_Result(15),
      O(2) => U_gen_dir_Result(14),
      O(1) => U_gen_dir_Result(13),
      O(0) => U_gen_dir_Result(12),
      S(3) => U_gen_dir_cnt_15_rt_200,
      S(2) => U_gen_dir_cnt_14_rt_210,
      S(1) => U_gen_dir_cnt_13_rt_214,
      S(0) => U_gen_dir_cnt_12_rt_218
    );
  U_gen_dir_cnt_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y78",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => U_gen_dir_cnt(14),
      ADR3 => '1',
      ADR5 => '1',
      O => U_gen_dir_cnt_14_rt_210
    );
  DATO_RD_1_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y78",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DATO_RD_1_C5LUT_O_UNCONNECTED
    );
  U_gen_dir_cnt_13 : X_FF
    generic map(
      LOC => "SLICE_X14Y78",
      INIT => '0'
    )
    port map (
      CE => U_gen_dir_CE_1052,
      CLK => NlwBufferSignal_U_gen_dir_cnt_13_CLK,
      I => U_gen_dir_Result(13),
      O => U_gen_dir_cnt(13),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_gen_dir_cnt_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y78",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => U_gen_dir_cnt(13),
      ADR3 => '1',
      ADR5 => '1',
      O => U_gen_dir_cnt_13_rt_214
    );
  DATO_RD_1_2_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y78",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DATO_RD_1_2_B5LUT_O_UNCONNECTED
    );
  U_gen_dir_cnt_12 : X_FF
    generic map(
      LOC => "SLICE_X14Y78",
      INIT => '0'
    )
    port map (
      CE => U_gen_dir_CE_1052,
      CLK => NlwBufferSignal_U_gen_dir_cnt_12_CLK,
      I => U_gen_dir_Result(12),
      O => U_gen_dir_cnt(12),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_gen_dir_cnt_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y78",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => U_gen_dir_cnt(12),
      ADR3 => '1',
      ADR5 => '1',
      O => U_gen_dir_cnt_12_rt_218
    );
  DATO_RD_1_3_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y78",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DATO_RD_1_3_A5LUT_O_UNCONNECTED
    );
  DATA_0_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD4"
    )
    port map (
      I => '0',
      O => DATA(0),
      CTL => U_cnt_epp_PWRITE_DSTRB_AND_5_o_inv
    );
  DATA_0_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD4",
      PATHPULSE => 115 ps
    )
    port map (
      O => N18,
      I => DATA(0)
    );
  ProtoComp52_IMUX : X_BUF
    generic map(
      LOC => "PAD4",
      PATHPULSE => 115 ps
    )
    port map (
      I => N18,
      O => N18_0
    );
  DATA_1_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD5"
    )
    port map (
      I => '0',
      O => DATA(1),
      CTL => U_cnt_epp_PWRITE_DSTRB_AND_5_o_inv
    );
  DATA_1_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD5",
      PATHPULSE => 115 ps
    )
    port map (
      O => N17,
      I => DATA(1)
    );
  ProtoComp52_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD5",
      PATHPULSE => 115 ps
    )
    port map (
      I => N17,
      O => N17_0
    );
  DATA_2_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD6"
    )
    port map (
      I => '0',
      O => DATA(2),
      CTL => U_cnt_epp_PWRITE_DSTRB_AND_5_o_inv
    );
  DATA_2_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD6",
      PATHPULSE => 115 ps
    )
    port map (
      O => N16,
      I => DATA(2)
    );
  ProtoComp52_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD6",
      PATHPULSE => 115 ps
    )
    port map (
      I => N16,
      O => N16_0
    );
  DATA_3_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD7"
    )
    port map (
      I => '0',
      O => DATA(3),
      CTL => U_cnt_epp_PWRITE_DSTRB_AND_5_o_inv
    );
  DATA_3_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD7",
      PATHPULSE => 115 ps
    )
    port map (
      O => N15,
      I => DATA(3)
    );
  ProtoComp52_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD7",
      PATHPULSE => 115 ps
    )
    port map (
      I => N15,
      O => N15_0
    );
  DATA_4_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD8"
    )
    port map (
      I => '0',
      O => DATA(4),
      CTL => U_cnt_epp_PWRITE_DSTRB_AND_5_o_inv
    );
  DATA_4_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD8",
      PATHPULSE => 115 ps
    )
    port map (
      O => N14,
      I => DATA(4)
    );
  ProtoComp52_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD8",
      PATHPULSE => 115 ps
    )
    port map (
      I => N14,
      O => N14_0
    );
  DATA_5_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD9"
    )
    port map (
      I => '0',
      O => DATA(5),
      CTL => U_cnt_epp_PWRITE_DSTRB_AND_5_o_inv
    );
  DATA_5_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD9",
      PATHPULSE => 115 ps
    )
    port map (
      O => N13,
      I => DATA(5)
    );
  ProtoComp52_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD9",
      PATHPULSE => 115 ps
    )
    port map (
      I => N13,
      O => N13_0
    );
  DATA_6_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD10"
    )
    port map (
      I => '0',
      O => DATA(6),
      CTL => U_cnt_epp_PWRITE_DSTRB_AND_5_o_inv
    );
  DATA_6_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD10",
      PATHPULSE => 115 ps
    )
    port map (
      O => N12,
      I => DATA(6)
    );
  ProtoComp52_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD10",
      PATHPULSE => 115 ps
    )
    port map (
      I => N12,
      O => N12_0
    );
  DATA_7_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD11"
    )
    port map (
      I => '0',
      O => DATA(7),
      CTL => U_cnt_epp_PWRITE_DSTRB_AND_5_o_inv
    );
  DATA_7_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD11",
      PATHPULSE => 115 ps
    )
    port map (
      O => N11,
      I => DATA(7)
    );
  ProtoComp52_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD11",
      PATHPULSE => 115 ps
    )
    port map (
      I => N11,
      O => N11_0
    );
  SYNC_OBUF : X_OBUF
    generic map(
      LOC => "PAD252"
    )
    port map (
      I => NlwBufferSignal_SYNC_OBUF_I,
      O => SYNC
    );
  PWAIT_OBUF : X_OBUF
    generic map(
      LOC => "PAD39"
    )
    port map (
      I => NlwBufferSignal_PWAIT_OBUF_I,
      O => PWAIT
    );
  SCLK_OBUF : X_OBUF
    generic map(
      LOC => "PAD255"
    )
    port map (
      I => NlwBufferSignal_SCLK_OBUF_I,
      O => SCLK
    );
  ASTRB_IBUF : X_BUF
    generic map(
      LOC => "PAD23",
      PATHPULSE => 115 ps
    )
    port map (
      O => ASTRB_IBUF_271,
      I => ASTRB
    );
  ProtoComp54_IMUX : X_BUF
    generic map(
      LOC => "PAD23",
      PATHPULSE => 115 ps
    )
    port map (
      I => ASTRB_IBUF_271,
      O => ASTRB_IBUF_0
    );
  RST_IBUF : X_BUF
    generic map(
      LOC => "PAD259",
      PATHPULSE => 115 ps
    )
    port map (
      O => RST_IBUF_274,
      I => RST
    );
  ProtoComp54_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD259",
      PATHPULSE => 115 ps
    )
    port map (
      I => RST_IBUF_274,
      O => RST_IBUF_0
    );
  U_dcm_clkin1_buf : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 115 ps
    )
    port map (
      O => U_dcm_clkin1,
      I => RELOJ
    );
  ProtoComp54_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 115 ps
    )
    port map (
      I => U_dcm_clkin1,
      O => U_dcm_clkin1_0
    );
  D1_OBUF : X_OBUF
    generic map(
      LOC => "PAD251"
    )
    port map (
      I => NlwBufferSignal_D1_OBUF_I,
      O => D1
    );
  D2_OBUF : X_OBUF
    generic map(
      LOC => "PAD256"
    )
    port map (
      I => NlwBufferSignal_D2_OBUF_I,
      O => D2
    );
  PWRITE_IBUF : X_BUF
    generic map(
      LOC => "PAD41",
      PATHPULSE => 115 ps
    )
    port map (
      O => PWRITE_IBUF_284,
      I => PWRITE
    );
  ProtoComp54_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD41",
      PATHPULSE => 115 ps
    )
    port map (
      I => PWRITE_IBUF_284,
      O => PWRITE_IBUF_0
    );
  DSTRB_IBUF : X_BUF
    generic map(
      LOC => "PAD24",
      PATHPULSE => 115 ps
    )
    port map (
      O => DSTRB_IBUF_287,
      I => DSTRB
    );
  ProtoComp54_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD24",
      PATHPULSE => 115 ps
    )
    port map (
      I => DSTRB_IBUF_287,
      O => DSTRB_IBUF_0
    );
  U_cnt_epp_PWAIT : X_FF
    generic map(
      LOC => "OLOGIC_X25Y119",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U_cnt_epp_PWAIT_CLK,
      I => NlwBufferSignal_U_cnt_epp_PWAIT_IN,
      O => U_cnt_epp_PWAIT_1059,
      SET => GND,
      RST => RST_IBUF_0
    );
  U_cnt_dac_SCLKaux : X_FF
    generic map(
      LOC => "SLICE_X1Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U_cnt_dac_SCLKaux_CLK,
      I => U_cnt_dac_SCLKaux_rstpot_297,
      O => U_cnt_dac_SCLKaux_947,
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dac_SCLKaux_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X1Y2",
      INIT => X"5555AAAA5555AAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => U_cnt_dac_SCLKaux_947,
      ADR3 => '1',
      ADR0 => U_cnt_dac_prescaler_0_1060,
      O => U_cnt_dac_SCLKaux_rstpot_297
    );
  U_cnt_dac_prescaler_0 : X_FF
    generic map(
      LOC => "SLICE_X1Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U_cnt_dac_prescaler_0_CLK,
      I => U_cnt_dac_Mcount_prescaler_0,
      O => U_cnt_dac_prescaler_0_1060,
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dac_Mcount_prescaler_0_xor_0_11_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y2",
      INIT => X"00000000FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => U_cnt_dac_prescaler_0_1060,
      ADR4 => '1',
      ADR3 => '1',
      O => U_cnt_dac_Mcount_prescaler_0
    );
  U_cnt_dpram_dirPrev_3 : X_FF
    generic map(
      LOC => "SLICE_X6Y97",
      INIT => '0'
    )
    port map (
      CE => U_cnt_dpram_state_FSM_FFd1_916,
      CLK => NlwBufferSignal_U_cnt_dpram_dirPrev_3_CLK,
      I => NlwBufferSignal_U_cnt_dpram_dirPrev_3_IN,
      O => U_cnt_dpram_dirPrev(3),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dpram_state_FSM_FFd3_In6 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y97",
      INIT => X"0FAF00AACFEFCCEE"
    )
    port map (
      ADR4 => U_cnt_dpram_dirActual(2),
      ADR2 => U_cnt_dpram_dirPrev(2),
      ADR1 => U_cnt_dpram_dirActual(3),
      ADR5 => U_cnt_dpram_dirPrev(3),
      ADR0 => U_cnt_dpram_dirActual(1),
      ADR3 => U_cnt_dpram_dirPrev(1),
      O => U_cnt_dpram_state_FSM_FFd3_In7
    );
  U_cnt_dpram_dirPrev_2 : X_FF
    generic map(
      LOC => "SLICE_X6Y97",
      INIT => '0'
    )
    port map (
      CE => U_cnt_dpram_state_FSM_FFd1_916,
      CLK => NlwBufferSignal_U_cnt_dpram_dirPrev_2_CLK,
      I => NlwBufferSignal_U_cnt_dpram_dirPrev_2_IN,
      O => U_cnt_dpram_dirPrev(2),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dpram_dirPrev_1 : X_FF
    generic map(
      LOC => "SLICE_X6Y97",
      INIT => '0'
    )
    port map (
      CE => U_cnt_dpram_state_FSM_FFd1_916,
      CLK => NlwBufferSignal_U_cnt_dpram_dirPrev_1_CLK,
      I => NlwBufferSignal_U_cnt_dpram_dirPrev_1_IN,
      O => U_cnt_dpram_dirPrev(1),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dpram_dirPrev_0 : X_FF
    generic map(
      LOC => "SLICE_X6Y97",
      INIT => '0'
    )
    port map (
      CE => U_cnt_dpram_state_FSM_FFd1_916,
      CLK => NlwBufferSignal_U_cnt_dpram_dirPrev_0_CLK,
      I => NlwBufferSignal_U_cnt_dpram_dirPrev_0_IN,
      O => U_cnt_dpram_dirPrev(0),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dpram_dirActual_3 : X_FF
    generic map(
      LOC => "SLICE_X7Y97",
      INIT => '0'
    )
    port map (
      CE => U_cnt_dpram_n0117_inv,
      CLK => NlwBufferSignal_U_cnt_dpram_dirActual_3_CLK,
      I => NlwBufferSignal_U_cnt_dpram_dirActual_3_IN,
      O => U_cnt_dpram_dirActual(3),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dpram_dirActual_2 : X_FF
    generic map(
      LOC => "SLICE_X7Y97",
      INIT => '0'
    )
    port map (
      CE => U_cnt_dpram_n0117_inv,
      CLK => NlwBufferSignal_U_cnt_dpram_dirActual_2_CLK,
      I => NlwBufferSignal_U_cnt_dpram_dirActual_2_IN,
      O => U_cnt_dpram_dirActual(2),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dpram_state_FSM_FFd3_In5 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y97",
      INIT => X"33F3BBFB00F0AAFA"
    )
    port map (
      ADR5 => U_cnt_dpram_dirPrev(3),
      ADR1 => U_cnt_dpram_dirActual(3),
      ADR0 => U_cnt_dpram_dirPrev(4),
      ADR3 => U_cnt_dpram_dirActual(2),
      ADR4 => U_cnt_dpram_dirActual(4),
      ADR2 => U_cnt_dpram_dirPrev(2),
      O => U_cnt_dpram_state_FSM_FFd3_In6_998
    );
  U_cnt_dpram_dirActual_1 : X_FF
    generic map(
      LOC => "SLICE_X7Y97",
      INIT => '0'
    )
    port map (
      CE => U_cnt_dpram_n0117_inv,
      CLK => NlwBufferSignal_U_cnt_dpram_dirActual_1_CLK,
      I => NlwBufferSignal_U_cnt_dpram_dirActual_1_IN,
      O => U_cnt_dpram_dirActual(1),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dpram_state_FSM_FFd3_In8_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y97",
      INIT => X"AA220A0255110501"
    )
    port map (
      ADR0 => U_cnt_dpram_dirActual(0),
      ADR5 => U_cnt_dpram_dirPrev(0),
      ADR2 => U_cnt_dpram_dirPrev(1),
      ADR4 => U_cnt_dpram_dirActual(1),
      ADR3 => U_cnt_dpram_dirPrev(7),
      ADR1 => U_cnt_dpram_dirActual(7),
      O => N27
    );
  U_cnt_dpram_dirActual_0 : X_FF
    generic map(
      LOC => "SLICE_X7Y97",
      INIT => '0'
    )
    port map (
      CE => U_cnt_dpram_n0117_inv,
      CLK => NlwBufferSignal_U_cnt_dpram_dirActual_0_CLK,
      I => NlwBufferSignal_U_cnt_dpram_dirActual_0_IN,
      O => U_cnt_dpram_dirActual(0),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_epp_DATO_3 : X_FF
    generic map(
      LOC => "SLICE_X8Y93",
      INIT => '0'
    )
    port map (
      CE => U_cnt_epp_S22,
      CLK => NlwBufferSignal_U_cnt_epp_DATO_3_CLK,
      I => NlwBufferSignal_U_cnt_epp_DATO_3_IN,
      O => U_cnt_epp_DATO(3),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_epp_DATO_2 : X_FF
    generic map(
      LOC => "SLICE_X8Y93",
      INIT => '0'
    )
    port map (
      CE => U_cnt_epp_S22,
      CLK => NlwBufferSignal_U_cnt_epp_DATO_2_CLK,
      I => NlwBufferSignal_U_cnt_epp_DATO_2_IN,
      O => U_cnt_epp_DATO(2),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_epp_DATO_1 : X_FF
    generic map(
      LOC => "SLICE_X8Y93",
      INIT => '0'
    )
    port map (
      CE => U_cnt_epp_S22,
      CLK => NlwBufferSignal_U_cnt_epp_DATO_1_CLK,
      I => NlwBufferSignal_U_cnt_epp_DATO_1_IN,
      O => U_cnt_epp_DATO(1),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_epp_DATO_0 : X_FF
    generic map(
      LOC => "SLICE_X8Y93",
      INIT => '0'
    )
    port map (
      CE => U_cnt_epp_S22,
      CLK => NlwBufferSignal_U_cnt_epp_DATO_0_CLK,
      I => NlwBufferSignal_U_cnt_epp_DATO_0_IN,
      O => U_cnt_epp_DATO(0),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dpram_WE_DP2 : X_FF
    generic map(
      LOC => "SLICE_X8Y96",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U_cnt_dpram_WE_DP2_CLK,
      I => U_cnt_dpram_WE_DP2_rstpot_359,
      O => U_cnt_dpram_WE_DP2_922,
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dpram_WE_DP2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X8Y96",
      INIT => X"FFF20F00FFF00F00"
    )
    port map (
      ADR4 => U_cnt_dpram_state_FSM_FFd1_916,
      ADR5 => U_cnt_epp_DIR(1),
      ADR0 => U_cnt_dpram_state_FSM_FFd3_In2,
      ADR3 => U_cnt_dpram_WE_DP2_922,
      ADR1 => U_cnt_epp_DIR(0),
      ADR2 => U_cnt_dpram_n0117_inv,
      O => U_cnt_dpram_WE_DP2_rstpot_359
    );
  U_cnt_dpram_WE_DP1 : X_FF
    generic map(
      LOC => "SLICE_X8Y96",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U_cnt_dpram_WE_DP1_CLK,
      I => U_cnt_dpram_WE_DP1_rstpot_364,
      O => U_cnt_dpram_WE_DP1_919,
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dpram_WE_DP1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X8Y96",
      INIT => X"FFFF3333CCEC0000"
    )
    port map (
      ADR4 => U_cnt_dpram_state_FSM_FFd1_916,
      ADR0 => U_cnt_epp_DIR(0),
      ADR2 => U_cnt_dpram_state_FSM_FFd3_In2,
      ADR5 => U_cnt_dpram_WE_DP1_919,
      ADR3 => U_cnt_epp_DIR(1),
      ADR1 => U_cnt_dpram_n0117_inv,
      O => U_cnt_dpram_WE_DP1_rstpot_364
    );
  U_cnt_dpram_state_FSM_FFd3_U_cnt_dpram_state_FSM_FFd3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_gen_dir_n0053_inv,
      O => U_gen_dir_n0053_inv_0
    );
  U_cnt_dpram_state_FSM_FFd3 : X_FF
    generic map(
      LOC => "SLICE_X8Y97",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U_cnt_dpram_state_FSM_FFd3_CLK,
      I => U_cnt_dpram_state_FSM_FFd3_In,
      O => U_cnt_dpram_state_FSM_FFd3_1014,
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dpram_state_FSM_FFd3_In9 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y97",
      INIT => X"CCFFCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => U_cnt_dpram_state_FSM_FFd2_969,
      ADR5 => U_cnt_dpram_state_FSM_FFd3_1014,
      ADR1 => U_cnt_dpram_state_FSM_FFd3_In1_1015,
      ADR4 => U_cnt_dpram_state_FSM_FFd3_In9_1062,
      O => U_cnt_dpram_state_FSM_FFd3_In
    );
  U_cnt_dpram_state_FSM_FFd3_In8 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y97",
      INIT => X"FFFFFFFFFFFFEFFF"
    )
    port map (
      ADR2 => U_cnt_epp_DATO_VLD_988,
      ADR3 => N27,
      ADR5 => U_cnt_dpram_state_FSM_FFd3_In7,
      ADR0 => U_cnt_dpram_state_FSM_FFd3_In4_991,
      ADR1 => U_cnt_dpram_state_FSM_FFd3_In5_996,
      ADR4 => U_cnt_dpram_state_FSM_FFd3_In6_998,
      O => U_cnt_dpram_state_FSM_FFd3_In9_1062
    );
  U_cnt_dpram_state_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X8Y97",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U_cnt_dpram_state_FSM_FFd2_CLK,
      I => U_cnt_dpram_state_FSM_FFd2_In,
      O => U_cnt_dpram_state_FSM_FFd2_969,
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dpram_state_FSM_FFd2_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y97",
      INIT => X"00F0000000F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => U_cnt_epp_DATO_VLD_988,
      ADR3 => U_cnt_dpram_state_FSM_FFd2_969,
      ADR2 => U_cnt_dpram_state_FSM_FFd3_1014,
      ADR5 => '1',
      O => U_cnt_dpram_state_FSM_FFd2_In
    );
  U_gen_dir_n0053_inv1 : X_LUT5
    generic map(
      LOC => "SLICE_X8Y97",
      INIT => X"AAAA0000"
    )
    port map (
      ADR1 => '1',
      ADR0 => U_gen_dir_state_987,
      ADR4 => U_cnt_epp_DATO_VLD_988,
      ADR3 => '1',
      ADR2 => '1',
      O => U_gen_dir_n0053_inv
    );
  U_cnt_dpram_state_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X8Y97",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U_cnt_dpram_state_FSM_FFd1_CLK,
      I => NlwBufferSignal_U_cnt_dpram_state_FSM_FFd1_IN,
      O => U_cnt_dpram_state_FSM_FFd1_916,
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dpram_dirPrev_7 : X_FF
    generic map(
      LOC => "SLICE_X8Y98",
      INIT => '0'
    )
    port map (
      CE => U_cnt_dpram_state_FSM_FFd1_916,
      CLK => NlwBufferSignal_U_cnt_dpram_dirPrev_7_CLK,
      I => NlwBufferSignal_U_cnt_dpram_dirPrev_7_IN,
      O => U_cnt_dpram_dirPrev(7),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dpram_n0117_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y98",
      INIT => X"0000000003030303"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR5 => U_cnt_dpram_state_FSM_FFd3_1014,
      ADR2 => U_cnt_dpram_state_FSM_FFd2_969,
      ADR1 => U_cnt_dpram_state_FSM_FFd1_916,
      O => U_cnt_dpram_n0117_inv
    );
  U_cnt_dpram_dirPrev_6 : X_FF
    generic map(
      LOC => "SLICE_X8Y98",
      INIT => '0'
    )
    port map (
      CE => U_cnt_dpram_state_FSM_FFd1_916,
      CLK => NlwBufferSignal_U_cnt_dpram_dirPrev_6_CLK,
      I => NlwBufferSignal_U_cnt_dpram_dirPrev_6_IN,
      O => U_cnt_dpram_dirPrev(6),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dpram_state_FSM_FFd3_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y98",
      INIT => X"6600000000000000"
    )
    port map (
      ADR2 => '1',
      ADR4 => U_cnt_epp_DIR_VLD_986,
      ADR1 => U_cnt_epp_DIR(1),
      ADR0 => U_cnt_epp_DIR(0),
      ADR5 => U_cnt_dpram_state_FSM_FFd3_In2,
      ADR3 => U_cnt_dpram_n0117_inv,
      O => U_cnt_dpram_state_FSM_FFd3_In1_1015
    );
  U_cnt_dpram_dirPrev_5 : X_FF
    generic map(
      LOC => "SLICE_X8Y98",
      INIT => '0'
    )
    port map (
      CE => U_cnt_dpram_state_FSM_FFd1_916,
      CLK => NlwBufferSignal_U_cnt_dpram_dirPrev_5_CLK,
      I => NlwBufferSignal_U_cnt_dpram_dirPrev_5_IN,
      O => U_cnt_dpram_dirPrev(5),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dpram_dirPrev_4 : X_FF
    generic map(
      LOC => "SLICE_X8Y98",
      INIT => '0'
    )
    port map (
      CE => U_cnt_dpram_state_FSM_FFd1_916,
      CLK => NlwBufferSignal_U_cnt_dpram_dirPrev_4_CLK,
      I => NlwBufferSignal_U_cnt_dpram_dirPrev_4_IN,
      O => U_cnt_dpram_dirPrev(4),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dpram_state_FSM_FFd3_In4 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y98",
      INIT => X"5D0CFFFF5D0C5D0C"
    )
    port map (
      ADR3 => U_cnt_dpram_dirPrev(6),
      ADR0 => U_cnt_dpram_dirActual(6),
      ADR1 => U_cnt_dpram_dirPrev(7),
      ADR2 => U_cnt_dpram_dirActual(7),
      ADR5 => U_cnt_dpram_dirPrev(5),
      ADR4 => U_cnt_dpram_dirActual(5),
      O => U_cnt_dpram_state_FSM_FFd3_In5_996
    );
  U_cnt_epp_DIR_3 : X_FF
    generic map(
      LOC => "SLICE_X8Y99",
      INIT => '0'
    )
    port map (
      CE => U_cnt_epp_S11,
      CLK => NlwBufferSignal_U_cnt_epp_DIR_3_CLK,
      I => NlwBufferSignal_U_cnt_epp_DIR_3_IN,
      O => U_cnt_epp_DIR(3),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_epp_DIR_2 : X_FF
    generic map(
      LOC => "SLICE_X8Y99",
      INIT => '0'
    )
    port map (
      CE => U_cnt_epp_S11,
      CLK => NlwBufferSignal_U_cnt_epp_DIR_2_CLK,
      I => NlwBufferSignal_U_cnt_epp_DIR_2_IN,
      O => U_cnt_epp_DIR(2),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dpram_state_FSM_FFd3_In21 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y99",
      INIT => X"0000000200000000"
    )
    port map (
      ADR0 => U_cnt_epp_DIR(7),
      ADR4 => U_cnt_epp_DIR(6),
      ADR5 => U_cnt_epp_DIR(5),
      ADR3 => U_cnt_epp_DIR(2),
      ADR2 => U_cnt_epp_DIR(4),
      ADR1 => U_cnt_epp_DIR(3),
      O => U_cnt_dpram_state_FSM_FFd3_In2
    );
  U_cnt_epp_DIR_1 : X_FF
    generic map(
      LOC => "SLICE_X8Y99",
      INIT => '0'
    )
    port map (
      CE => U_cnt_epp_S11,
      CLK => NlwBufferSignal_U_cnt_epp_DIR_1_CLK,
      I => NlwBufferSignal_U_cnt_epp_DIR_1_IN,
      O => U_cnt_epp_DIR(1),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_epp_DIR_0 : X_FF
    generic map(
      LOC => "SLICE_X8Y99",
      INIT => '0'
    )
    port map (
      CE => U_cnt_epp_S11,
      CLK => NlwBufferSignal_U_cnt_epp_DIR_0_CLK,
      I => NlwBufferSignal_U_cnt_epp_DIR_0_IN,
      O => U_cnt_epp_DIR(0),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_gen_dir_n0050_inv_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y100",
      INIT => X"FFFFFFFDFFFFFFFF"
    )
    port map (
      ADR5 => U_cnt_epp_DIR(5),
      ADR4 => U_cnt_epp_DIR(3),
      ADR1 => U_cnt_epp_DIR(2),
      ADR3 => U_cnt_epp_DIR(1),
      ADR2 => U_cnt_epp_DIR(0),
      ADR0 => U_cnt_epp_DIR(4),
      O => N5
    );
  U_gen_dir_state : X_FF
    generic map(
      LOC => "SLICE_X8Y100",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U_gen_dir_state_CLK,
      I => U_gen_dir_state_rstpot_455,
      O => U_gen_dir_state_987,
      RST => RST_IBUF_0,
      SET => GND
    );
  U_gen_dir_state_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X8Y100",
      INIT => X"00000080FFFF0080"
    )
    port map (
      ADR1 => U_cnt_epp_DIR(7),
      ADR0 => U_cnt_epp_DIR(6),
      ADR2 => U_cnt_epp_DIR_VLD_986,
      ADR4 => U_gen_dir_state_987,
      ADR3 => N5,
      ADR5 => U_cnt_epp_DATO_VLD_988,
      O => U_gen_dir_state_rstpot_455
    );
  U_cnt_epp_DIR_7 : X_FF
    generic map(
      LOC => "SLICE_X8Y101",
      INIT => '0'
    )
    port map (
      CE => U_cnt_epp_S11,
      CLK => NlwBufferSignal_U_cnt_epp_DIR_7_CLK,
      I => NlwBufferSignal_U_cnt_epp_DIR_7_IN,
      O => U_cnt_epp_DIR(7),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_epp_DIR_6 : X_FF
    generic map(
      LOC => "SLICE_X8Y101",
      INIT => '0'
    )
    port map (
      CE => U_cnt_epp_S11,
      CLK => NlwBufferSignal_U_cnt_epp_DIR_6_CLK,
      I => NlwBufferSignal_U_cnt_epp_DIR_6_IN,
      O => U_cnt_epp_DIR(6),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_epp_DIR_5 : X_FF
    generic map(
      LOC => "SLICE_X8Y101",
      INIT => '0'
    )
    port map (
      CE => U_cnt_epp_S11,
      CLK => NlwBufferSignal_U_cnt_epp_DIR_5_CLK,
      I => NlwBufferSignal_U_cnt_epp_DIR_5_IN,
      O => U_cnt_epp_DIR(5),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_epp_DIR_4 : X_FF
    generic map(
      LOC => "SLICE_X8Y101",
      INIT => '0'
    )
    port map (
      CE => U_cnt_epp_S11,
      CLK => NlwBufferSignal_U_cnt_epp_DIR_4_CLK,
      I => NlwBufferSignal_U_cnt_epp_DIR_4_IN,
      O => U_cnt_epp_DIR(4),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_epp_DATO_7 : X_FF
    generic map(
      LOC => "SLICE_X9Y93",
      INIT => '0'
    )
    port map (
      CE => U_cnt_epp_S22,
      CLK => NlwBufferSignal_U_cnt_epp_DATO_7_CLK,
      I => NlwBufferSignal_U_cnt_epp_DATO_7_IN,
      O => U_cnt_epp_DATO(7),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_epp_DATO_6 : X_FF
    generic map(
      LOC => "SLICE_X9Y93",
      INIT => '0'
    )
    port map (
      CE => U_cnt_epp_S22,
      CLK => NlwBufferSignal_U_cnt_epp_DATO_6_CLK,
      I => NlwBufferSignal_U_cnt_epp_DATO_6_IN,
      O => U_cnt_epp_DATO(6),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_epp_DATO_5 : X_FF
    generic map(
      LOC => "SLICE_X9Y93",
      INIT => '0'
    )
    port map (
      CE => U_cnt_epp_S22,
      CLK => NlwBufferSignal_U_cnt_epp_DATO_5_CLK,
      I => NlwBufferSignal_U_cnt_epp_DATO_5_IN,
      O => U_cnt_epp_DATO(5),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_epp_DATO_4 : X_FF
    generic map(
      LOC => "SLICE_X9Y93",
      INIT => '0'
    )
    port map (
      CE => U_cnt_epp_S22,
      CLK => NlwBufferSignal_U_cnt_epp_DATO_4_CLK,
      I => NlwBufferSignal_U_cnt_epp_DATO_4_IN,
      O => U_cnt_epp_DATO(4),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dpram_CEcounter_U_cnt_dpram_CEcounter_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_dpram_clearCounter_pack_1,
      O => U_cnt_dpram_clearCounter_1051
    );
  U_cnt_dpram_CEcounter : X_FF
    generic map(
      LOC => "SLICE_X9Y97",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U_cnt_dpram_CEcounter_CLK,
      I => U_cnt_dpram_CEcounter_rstpot_486,
      O => U_cnt_dpram_CEcounter_935,
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dpram_CEcounter_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X9Y97",
      INIT => X"5555050055550500"
    )
    port map (
      ADR1 => '1',
      ADR0 => U_cnt_dpram_state_FSM_FFd1_916,
      ADR3 => U_cnt_dpram_state_FSM_FFd2_969,
      ADR4 => U_cnt_dpram_CEcounter_935,
      ADR2 => U_cnt_dpram_state_FSM_FFd3_1014,
      ADR5 => '1',
      O => U_cnt_dpram_CEcounter_rstpot_486
    );
  U_cnt_dpram_clearCounter_rstpot : X_LUT5
    generic map(
      LOC => "SLICE_X9Y97",
      INIT => X"FCC0FCC0"
    )
    port map (
      ADR1 => U_cnt_dpram_clearCounter_1051,
      ADR0 => '1',
      ADR3 => U_cnt_dpram_state_FSM_FFd2_969,
      ADR4 => '1',
      ADR2 => U_cnt_dpram_state_FSM_FFd3_1014,
      O => U_cnt_dpram_clearCounter_rstpot_489
    );
  U_cnt_dpram_clearCounter : X_FF
    generic map(
      LOC => "SLICE_X9Y97",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U_cnt_dpram_clearCounter_CLK,
      I => U_cnt_dpram_clearCounter_rstpot_489,
      O => U_cnt_dpram_clearCounter_pack_1,
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dpram_dirActual_7 : X_FF
    generic map(
      LOC => "SLICE_X9Y98",
      INIT => '0'
    )
    port map (
      CE => U_cnt_dpram_n0117_inv,
      CLK => NlwBufferSignal_U_cnt_dpram_dirActual_7_CLK,
      I => NlwBufferSignal_U_cnt_dpram_dirActual_7_IN,
      O => U_cnt_dpram_dirActual(7),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dpram_dirActual_6 : X_FF
    generic map(
      LOC => "SLICE_X9Y98",
      INIT => '0'
    )
    port map (
      CE => U_cnt_dpram_n0117_inv,
      CLK => NlwBufferSignal_U_cnt_dpram_dirActual_6_CLK,
      I => NlwBufferSignal_U_cnt_dpram_dirActual_6_IN,
      O => U_cnt_dpram_dirActual(6),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dpram_dirActual_5 : X_FF
    generic map(
      LOC => "SLICE_X9Y98",
      INIT => '0'
    )
    port map (
      CE => U_cnt_dpram_n0117_inv,
      CLK => NlwBufferSignal_U_cnt_dpram_dirActual_5_CLK,
      I => NlwBufferSignal_U_cnt_dpram_dirActual_5_IN,
      O => U_cnt_dpram_dirActual(5),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dpram_dirActual_4 : X_FF
    generic map(
      LOC => "SLICE_X9Y98",
      INIT => '0'
    )
    port map (
      CE => U_cnt_dpram_n0117_inv,
      CLK => NlwBufferSignal_U_cnt_dpram_dirActual_4_CLK,
      I => NlwBufferSignal_U_cnt_dpram_dirActual_4_IN,
      O => U_cnt_dpram_dirActual(4),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dpram_state_FSM_FFd3_In3 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y98",
      INIT => X"3B0AFFFF3B0A3B0A"
    )
    port map (
      ADR0 => U_cnt_dpram_dirActual(5),
      ADR2 => U_cnt_dpram_dirPrev(5),
      ADR3 => U_cnt_dpram_dirActual(6),
      ADR5 => U_cnt_dpram_dirActual(4),
      ADR1 => U_cnt_dpram_dirPrev(6),
      ADR4 => U_cnt_dpram_dirPrev(4),
      O => U_cnt_dpram_state_FSM_FFd3_In4_991
    );
  U_gen_dir_valor_freq_7 : X_FF
    generic map(
      LOC => "SLICE_X11Y78",
      INIT => '0'
    )
    port map (
      CE => U_gen_dir_n0053_inv_0,
      CLK => NlwBufferSignal_U_gen_dir_valor_freq_7_CLK,
      I => NlwBufferSignal_U_gen_dir_valor_freq_7_IN,
      O => U_gen_dir_valor_freq(7),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_gen_dir_valor_freq_6 : X_FF
    generic map(
      LOC => "SLICE_X11Y78",
      INIT => '0'
    )
    port map (
      CE => U_gen_dir_n0053_inv_0,
      CLK => NlwBufferSignal_U_gen_dir_valor_freq_6_CLK,
      I => NlwBufferSignal_U_gen_dir_valor_freq_6_IN,
      O => U_gen_dir_valor_freq(6),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_gen_dir_valor_freq_5 : X_FF
    generic map(
      LOC => "SLICE_X11Y78",
      INIT => '0'
    )
    port map (
      CE => U_gen_dir_n0053_inv_0,
      CLK => NlwBufferSignal_U_gen_dir_valor_freq_5_CLK,
      I => NlwBufferSignal_U_gen_dir_valor_freq_5_IN,
      O => U_gen_dir_valor_freq(5),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_gen_dir_valor_freq_4 : X_FF
    generic map(
      LOC => "SLICE_X11Y78",
      INIT => '0'
    )
    port map (
      CE => U_gen_dir_n0053_inv_0,
      CLK => NlwBufferSignal_U_gen_dir_valor_freq_4_CLK,
      I => NlwBufferSignal_U_gen_dir_valor_freq_4_IN,
      O => U_gen_dir_valor_freq(4),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_epp_DATO_VLD_U_cnt_epp_DATO_VLD_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_S11_pack_1,
      O => U_cnt_epp_S11
    );
  U_cnt_epp_DATO_VLD : X_FF
    generic map(
      LOC => "SLICE_X11Y111",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U_cnt_epp_DATO_VLD_CLK,
      I => U_cnt_epp_S22,
      O => U_cnt_epp_DATO_VLD_988,
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_epp_S221 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y111",
      INIT => X"0022002200220022"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR0 => DSTRB_IBUF_0,
      ADR1 => PWRITE_IBUF_0,
      ADR3 => U_cnt_epp_Q2_958,
      ADR5 => '1',
      O => U_cnt_epp_S22
    );
  U_cnt_epp_S111 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y111",
      INIT => X"00003030"
    )
    port map (
      ADR2 => ASTRB_IBUF_0,
      ADR4 => U_cnt_epp_Q_0,
      ADR0 => '1',
      ADR1 => PWRITE_IBUF_0,
      ADR3 => '1',
      O => U_cnt_epp_S11_pack_1
    );
  U_cnt_epp_DIR_VLD : X_FF
    generic map(
      LOC => "SLICE_X11Y111",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U_cnt_epp_DIR_VLD_CLK,
      I => NlwBufferSignal_U_cnt_epp_DIR_VLD_IN,
      O => U_cnt_epp_DIR_VLD_986,
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dac_SYNC_U_cnt_dac_SYNC_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_dac_CEcounter_pack_8,
      O => U_cnt_dac_CEcounter_928
    );
  U_cnt_dac_SYNC_U_cnt_dac_SYNC_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_dac_endTx_pack_6,
      O => U_cnt_dac_endTx_1064
    );
  U_cnt_dac_SYNC : X_FF
    generic map(
      LOC => "SLICE_X15Y62",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U_cnt_dac_SYNC_CLK,
      I => U_cnt_dac_SYNC_rstpot_542,
      O => U_cnt_dac_SYNC_945,
      SET => RST_IBUF_0,
      RST => GND
    );
  U_cnt_dac_SYNC_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X15Y62",
      INIT => X"FAFAF0F0FFFFF5F5"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => U_cnt_dac_state_FSM_FFd2_1065,
      ADR4 => U_cnt_dac_SYNC_945,
      ADR5 => U_gen_dir_DATO_OK_946,
      ADR2 => U_cnt_dac_state_FSM_FFd1_1066,
      O => U_cnt_dac_SYNC_rstpot_542
    );
  U_cnt_dac_state_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X15Y62",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U_cnt_dac_state_FSM_FFd2_CLK,
      I => U_cnt_dac_state_FSM_FFd2_In,
      O => U_cnt_dac_state_FSM_FFd2_1065,
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dac_state_FSM_FFd2_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y62",
      INIT => X"0500F5F00500F5F0"
    )
    port map (
      ADR1 => '1',
      ADR3 => U_gen_dir_DATO_OK_946,
      ADR0 => U_cnt_dac_state_FSM_FFd1_1066,
      ADR2 => U_cnt_dac_state_FSM_FFd2_1065,
      ADR4 => U_cnt_dac_endTx_1064,
      ADR5 => '1',
      O => U_cnt_dac_state_FSM_FFd2_In
    );
  U_cnt_dac_CEcounter_rstpot : X_LUT5
    generic map(
      LOC => "SLICE_X15Y62",
      INIT => X"DCD8DCD8"
    )
    port map (
      ADR1 => U_cnt_dac_CEcounter_928,
      ADR3 => U_gen_dir_DATO_OK_946,
      ADR0 => U_cnt_dac_state_FSM_FFd1_1066,
      ADR2 => U_cnt_dac_state_FSM_FFd2_1065,
      ADR4 => '1',
      O => U_cnt_dac_CEcounter_rstpot_549
    );
  U_cnt_dac_CEcounter : X_FF
    generic map(
      LOC => "SLICE_X15Y62",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U_cnt_dac_CEcounter_CLK,
      I => U_cnt_dac_CEcounter_rstpot_549,
      O => U_cnt_dac_CEcounter_pack_8,
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dac_state_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X15Y62",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U_cnt_dac_state_FSM_FFd1_CLK,
      I => U_cnt_dac_state_FSM_FFd1_In,
      O => U_cnt_dac_state_FSM_FFd1_1066,
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dac_state_FSM_FFd1_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y62",
      INIT => X"8888888888888888"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => U_cnt_dac_endTx_1064,
      ADR0 => U_cnt_dac_state_FSM_FFd2_1065,
      ADR5 => '1',
      O => U_cnt_dac_state_FSM_FFd1_In
    );
  U_cnt_dac_mxstate_FSM_FFd2_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y62",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => U_cnt_dac_mxstate_FSM_FFd2_927,
      ADR2 => '1',
      ADR4 => '1',
      O => U_cnt_dac_mxstate_FSM_FFd2_rt_558
    );
  U_cnt_dac_endTx : X_FF
    generic map(
      LOC => "SLICE_X15Y62",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U_cnt_dac_endTx_CLK,
      I => U_cnt_dac_mxstate_FSM_FFd2_rt_558,
      O => U_cnt_dac_endTx_pack_6,
      RST => RST_IBUF_0,
      SET => GND
    );
  U_gen_dir_CE_U_gen_dir_CE_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N32_pack_6,
      O => N32
    );
  U_gen_dir_prescalerCounter_6_dato_ok_trigger_AND_13_o2 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y76",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR2 => U_gen_dir_cnt(4),
      ADR0 => U_gen_dir_cnt(5),
      ADR4 => U_gen_dir_cnt(2),
      ADR1 => U_gen_dir_cnt(3),
      ADR5 => U_gen_dir_cnt(15),
      ADR3 => U_gen_dir_cnt(1),
      O => U_gen_dir_prescalerCounter_6_dato_ok_trigger_AND_13_o3
    );
  U_gen_dir_CE : X_FF
    generic map(
      LOC => "SLICE_X15Y76",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U_gen_dir_CE_CLK,
      I => U_gen_dir_prescalerCounter_6_PWR_12_o_equal_2_o,
      O => U_gen_dir_CE_1052,
      RST => RST_IBUF_0,
      SET => GND
    );
  U_gen_dir_prescalerCounter_6_PWR_12_o_equal_2_o_6_1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y76",
      INIT => X"4400000044000000"
    )
    port map (
      ADR2 => '1',
      ADR0 => U_gen_dir_prescalerCounter(0),
      ADR3 => U_gen_dir_prescalerCounter(2),
      ADR1 => U_gen_dir_prescalerCounter(6),
      ADR4 => U_gen_dir_prescalerCounter_6_dato_ok_trigger_AND_13_o2_0,
      ADR5 => '1',
      O => U_gen_dir_prescalerCounter_6_PWR_12_o_equal_2_o
    );
  U_gen_dir_prescalerCounter_6_dato_ok_trigger_AND_13_o3_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y76",
      INIT => X"FF55FF55"
    )
    port map (
      ADR1 => '1',
      ADR0 => U_gen_dir_prescalerCounter(0),
      ADR3 => U_gen_dir_prescalerCounter(2),
      ADR2 => '1',
      ADR4 => '1',
      O => N32_pack_6
    );
  U_gen_dir_prescalerCounter_6_dato_ok_trigger_AND_13_o3_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y76",
      INIT => X"FFFFFFFF00FF01FF"
    )
    port map (
      ADR3 => U_gen_dir_prescalerCounter(0),
      ADR2 => U_gen_dir_cnt(9),
      ADR0 => U_gen_dir_cnt(8),
      ADR1 => U_gen_dir_cnt(7),
      ADR4 => U_gen_dir_cnt(6),
      ADR5 => U_gen_dir_prescalerCounter(2),
      O => N31
    );
  U_gen_dir_DATO_OK : X_FF
    generic map(
      LOC => "SLICE_X15Y76",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U_gen_dir_DATO_OK_CLK,
      I => U_gen_dir_prescalerCounter_6_dato_ok_trigger_AND_13_o,
      O => U_gen_dir_DATO_OK_946,
      RST => RST_IBUF_0,
      SET => GND
    );
  U_gen_dir_prescalerCounter_6_dato_ok_trigger_AND_13_o4 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y76",
      INIT => X"00000F0001000B00"
    )
    port map (
      ADR2 => U_gen_dir_prescalerCounter(6),
      ADR4 => N32,
      ADR5 => U_gen_dir_prescalerCounter_6_dato_ok_trigger_AND_13_o3,
      ADR3 => U_gen_dir_prescalerCounter_6_dato_ok_trigger_AND_13_o2_0,
      ADR0 => U_gen_dir_prescalerCounter_6_dato_ok_trigger_AND_13_o1_981,
      ADR1 => N31,
      O => U_gen_dir_prescalerCounter_6_dato_ok_trigger_AND_13_o
    );
  U_gen_dir_prescalerCounter_6_dato_ok_trigger_AND_13_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y77",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR2 => U_gen_dir_cnt(13),
      ADR3 => U_gen_dir_cnt(14),
      ADR4 => U_gen_dir_cnt(11),
      ADR0 => U_gen_dir_cnt(12),
      ADR5 => U_gen_dir_cnt(0),
      ADR1 => U_gen_dir_cnt(10),
      O => U_gen_dir_prescalerCounter_6_dato_ok_trigger_AND_13_o1_981
    );
  U_gen_dir_valor_freq_3 : X_FF
    generic map(
      LOC => "SLICE_X15Y78",
      INIT => '0'
    )
    port map (
      CE => U_gen_dir_n0053_inv_0,
      CLK => NlwBufferSignal_U_gen_dir_valor_freq_3_CLK,
      I => NlwBufferSignal_U_gen_dir_valor_freq_3_IN,
      O => U_gen_dir_valor_freq(3),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_gen_dir_valor_freq_2 : X_FF
    generic map(
      LOC => "SLICE_X15Y78",
      INIT => '0'
    )
    port map (
      CE => U_gen_dir_n0053_inv_0,
      CLK => NlwBufferSignal_U_gen_dir_valor_freq_2_CLK,
      I => NlwBufferSignal_U_gen_dir_valor_freq_2_IN,
      O => U_gen_dir_valor_freq(2),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_gen_dir_valor_freq_1 : X_FF
    generic map(
      LOC => "SLICE_X15Y78",
      INIT => '0'
    )
    port map (
      CE => U_gen_dir_n0053_inv_0,
      CLK => NlwBufferSignal_U_gen_dir_valor_freq_1_CLK,
      I => NlwBufferSignal_U_gen_dir_valor_freq_1_IN,
      O => U_gen_dir_valor_freq(1),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_gen_dir_valor_freq_0 : X_FF
    generic map(
      LOC => "SLICE_X15Y78",
      INIT => '0'
    )
    port map (
      CE => U_gen_dir_n0053_inv_0,
      CLK => NlwBufferSignal_U_gen_dir_valor_freq_0_CLK,
      I => NlwBufferSignal_U_gen_dir_valor_freq_0_IN,
      O => U_gen_dir_valor_freq(0),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dpram_Mmux_counter_7_counter_7_mux_5_OUT81_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y78",
      INIT => X"F0F0F0F000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR5 => U_cnt_dpram_counter(3),
      ADR2 => U_cnt_dpram_counter(6),
      O => N29
    );
  U_cnt_dac_Mmux_D212 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y76",
      INIT => X"FFF0CACA0F00CACA"
    )
    port map (
      ADR4 => U_cnt_dac_muxSelectTX(0),
      ADR2 => U_cnt_dac_muxSelectTX(1),
      ADR3 => DATO2(2),
      ADR5 => DATO2(0),
      ADR1 => DATO2(1),
      ADR0 => DATO2(3),
      O => U_cnt_dac_Mmux_D211_1071
    );
  U_cnt_dac_Mmux_D213 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y76",
      INIT => X"00AAFF0000AA0000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => U_cnt_dac_muxSelectTX(3),
      ADR4 => U_cnt_dac_muxSelectTX(2),
      ADR0 => U_cnt_dac_Mmux_D21,
      ADR5 => U_cnt_dac_Mmux_D211_1071,
      O => D2_OBUF_970
    );
  U_cnt_dac_Mmux_D211 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y76",
      INIT => X"CACACACAFFF00F00"
    )
    port map (
      ADR5 => U_cnt_dac_muxSelectTX(0),
      ADR2 => U_cnt_dac_muxSelectTX(1),
      ADR0 => DATO2(6),
      ADR1 => DATO2(4),
      ADR4 => DATO2(5),
      ADR3 => DATO2(7),
      O => U_cnt_dac_Mmux_D21
    );
  U_cnt_dpram_counter_7_U_cnt_dpram_counter_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_dpram_Mmux_counter_7_counter_7_mux_5_OUT41_pack_12,
      O => U_cnt_dpram_Mmux_counter_7_counter_7_mux_5_OUT41
    );
  U_cnt_dpram_counter_7 : X_FF
    generic map(
      LOC => "SLICE_X16Y78",
      INIT => '0'
    )
    port map (
      CE => U_cnt_dpram_n0121_inv,
      CLK => NlwBufferSignal_U_cnt_dpram_counter_7_CLK,
      I => U_cnt_dpram_counter_7_counter_7_mux_5_OUT_7_Q,
      O => U_cnt_dpram_counter(7),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dpram_Mmux_counter_7_counter_7_mux_5_OUT81 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y78",
      INIT => X"BFFF000040000000"
    )
    port map (
      ADR4 => U_cnt_dpram_CEcounter_935,
      ADR1 => N29,
      ADR3 => U_cnt_dpram_counter(5),
      ADR5 => U_cnt_dpram_counter(7),
      ADR2 => U_cnt_dpram_counter(4),
      ADR0 => U_cnt_dpram_Mmux_counter_7_counter_7_mux_5_OUT41,
      O => U_cnt_dpram_counter_7_counter_7_mux_5_OUT_7_Q
    );
  U_cnt_dpram_counter_6 : X_FF
    generic map(
      LOC => "SLICE_X16Y78",
      INIT => '0'
    )
    port map (
      CE => U_cnt_dpram_n0121_inv,
      CLK => NlwBufferSignal_U_cnt_dpram_counter_6_CLK,
      I => U_cnt_dpram_counter_7_counter_7_mux_5_OUT_6_Q,
      O => U_cnt_dpram_counter(6),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dpram_Mmux_counter_7_counter_7_mux_5_OUT71 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y78",
      INIT => X"FF0000007F008000"
    )
    port map (
      ADR3 => U_cnt_dpram_CEcounter_935,
      ADR1 => U_cnt_dpram_counter(3),
      ADR2 => U_cnt_dpram_counter(5),
      ADR4 => U_cnt_dpram_counter(6),
      ADR0 => U_cnt_dpram_counter(4),
      ADR5 => U_cnt_dpram_Mmux_counter_7_counter_7_mux_5_OUT41,
      O => U_cnt_dpram_counter_7_counter_7_mux_5_OUT_6_Q
    );
  U_cnt_dpram_counter_1 : X_FF
    generic map(
      LOC => "SLICE_X16Y78",
      INIT => '0'
    )
    port map (
      CE => U_cnt_dpram_n0121_inv,
      CLK => NlwBufferSignal_U_cnt_dpram_counter_1_CLK,
      I => U_cnt_dpram_counter_7_counter_7_mux_5_OUT_1_Q,
      O => U_cnt_dpram_counter(1),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dpram_Mmux_counter_7_counter_7_mux_5_OUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y78",
      INIT => X"0FF000000FF00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => U_cnt_dpram_CEcounter_935,
      ADR2 => U_cnt_dpram_counter(1),
      ADR3 => U_cnt_dpram_counter(0),
      ADR5 => '1',
      O => U_cnt_dpram_counter_7_counter_7_mux_5_OUT_1_Q
    );
  U_cnt_dpram_Mmux_counter_7_counter_7_mux_5_OUT411 : X_LUT5
    generic map(
      LOC => "SLICE_X16Y78",
      INIT => X"5FFF5FFF"
    )
    port map (
      ADR1 => '1',
      ADR0 => U_cnt_dpram_counter(2),
      ADR4 => '1',
      ADR2 => U_cnt_dpram_counter(1),
      ADR3 => U_cnt_dpram_counter(0),
      O => U_cnt_dpram_Mmux_counter_7_counter_7_mux_5_OUT41_pack_12
    );
  U_cnt_dpram_counter_5 : X_FF
    generic map(
      LOC => "SLICE_X16Y78",
      INIT => '0'
    )
    port map (
      CE => U_cnt_dpram_n0121_inv,
      CLK => NlwBufferSignal_U_cnt_dpram_counter_5_CLK,
      I => U_cnt_dpram_counter_7_counter_7_mux_5_OUT_5_Q,
      O => U_cnt_dpram_counter(5),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dpram_Mmux_counter_7_counter_7_mux_5_OUT61 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y78",
      INIT => X"F7F7000008080000"
    )
    port map (
      ADR3 => '1',
      ADR4 => U_cnt_dpram_CEcounter_935,
      ADR0 => U_cnt_dpram_counter(4),
      ADR5 => U_cnt_dpram_counter(5),
      ADR1 => U_cnt_dpram_counter(3),
      ADR2 => U_cnt_dpram_Mmux_counter_7_counter_7_mux_5_OUT41,
      O => U_cnt_dpram_counter_7_counter_7_mux_5_OUT_5_Q
    );
  U_cnt_dac_muxSelectTX_3_U_cnt_dac_muxSelectTX_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_dac_muxSelectTX_2_pack_6,
      O => U_cnt_dac_muxSelectTX(2)
    );
  U_cnt_dac_muxSelectTX_3_U_cnt_dac_muxSelectTX_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_dac_muxSelectTX_0_pack_4,
      O => U_cnt_dac_muxSelectTX(0)
    );
  U_cnt_dac_muxSelectTX_3 : X_FF
    generic map(
      LOC => "SLICE_X17Y63",
      INIT => '0'
    )
    port map (
      CE => U_cnt_dac_n0090_inv_0,
      CLK => NlwBufferSignal_U_cnt_dac_muxSelectTX_3_CLK,
      I => U_cnt_dac_Mcount_muxSelectTX3,
      O => U_cnt_dac_muxSelectTX(3),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dac_Mcount_muxSelectTX_xor_3_11 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y63",
      INIT => X"7F0080007F008000"
    )
    port map (
      ADR3 => U_cnt_dac_CEcounter_928,
      ADR2 => U_cnt_dac_muxSelectTX(0),
      ADR0 => U_cnt_dac_muxSelectTX(1),
      ADR4 => U_cnt_dac_muxSelectTX(3),
      ADR1 => U_cnt_dac_muxSelectTX(2),
      ADR5 => '1',
      O => U_cnt_dac_Mcount_muxSelectTX3
    );
  U_cnt_dac_Mcount_muxSelectTX_xor_2_11 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y63",
      INIT => X"6C006C00"
    )
    port map (
      ADR3 => U_cnt_dac_CEcounter_928,
      ADR2 => U_cnt_dac_muxSelectTX(0),
      ADR0 => U_cnt_dac_muxSelectTX(1),
      ADR4 => '1',
      ADR1 => U_cnt_dac_muxSelectTX(2),
      O => U_cnt_dac_Mcount_muxSelectTX2
    );
  U_cnt_dac_muxSelectTX_2 : X_FF
    generic map(
      LOC => "SLICE_X17Y63",
      INIT => '0'
    )
    port map (
      CE => U_cnt_dac_n0090_inv_0,
      CLK => NlwBufferSignal_U_cnt_dac_muxSelectTX_2_CLK,
      I => U_cnt_dac_Mcount_muxSelectTX2,
      O => U_cnt_dac_muxSelectTX_2_pack_6,
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dac_muxSelectTX_1 : X_FF
    generic map(
      LOC => "SLICE_X17Y63",
      INIT => '0'
    )
    port map (
      CE => U_cnt_dac_n0090_inv_0,
      CLK => NlwBufferSignal_U_cnt_dac_muxSelectTX_1_CLK,
      I => U_cnt_dac_Mcount_muxSelectTX1,
      O => U_cnt_dac_muxSelectTX(1),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dac_Mcount_muxSelectTX_xor_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y63",
      INIT => X"3030C0C03030C0C0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => U_cnt_dac_CEcounter_928,
      ADR4 => U_cnt_dac_muxSelectTX(1),
      ADR1 => U_cnt_dac_muxSelectTX(0),
      ADR5 => '1',
      O => U_cnt_dac_Mcount_muxSelectTX1
    );
  U_cnt_dac_Mcount_muxSelectTX_xor_0_11 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y63",
      INIT => X"30303030"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => U_cnt_dac_CEcounter_928,
      ADR3 => '1',
      ADR1 => U_cnt_dac_muxSelectTX(0),
      O => U_cnt_dac_Mcount_muxSelectTX
    );
  U_cnt_dac_muxSelectTX_0 : X_FF
    generic map(
      LOC => "SLICE_X17Y63",
      INIT => '0'
    )
    port map (
      CE => U_cnt_dac_n0090_inv_0,
      CLK => NlwBufferSignal_U_cnt_dac_muxSelectTX_0_CLK,
      I => U_cnt_dac_Mcount_muxSelectTX,
      O => U_cnt_dac_muxSelectTX_0_pack_4,
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dac_mxstate_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X17Y64",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U_cnt_dac_mxstate_FSM_FFd2_CLK,
      I => U_cnt_dac_mxstate_FSM_FFd2_In,
      O => U_cnt_dac_mxstate_FSM_FFd2_927,
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dac_mxstate_FSM_FFd2_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y64",
      INIT => X"3FFF4000FFFF0000"
    )
    port map (
      ADR5 => U_cnt_dac_muxSelectTX(0),
      ADR3 => U_cnt_dac_muxSelectTX(1),
      ADR2 => U_cnt_dac_muxSelectTX(2),
      ADR4 => U_cnt_dac_mxstate_FSM_FFd2_927,
      ADR1 => U_cnt_dac_muxSelectTX(3),
      ADR0 => U_cnt_dac_mxstate_FSM_FFd1_1073,
      O => U_cnt_dac_mxstate_FSM_FFd2_In
    );
  U_cnt_dac_mxstate_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X17Y64",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U_cnt_dac_mxstate_FSM_FFd1_CLK,
      I => U_cnt_dac_mxstate_FSM_FFd1_In,
      O => U_cnt_dac_mxstate_FSM_FFd1_1073,
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dac_mxstate_FSM_FFd1_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y64",
      INIT => X"FFFFFFFC80000000"
    )
    port map (
      ADR4 => U_cnt_dac_muxSelectTX(0),
      ADR2 => U_cnt_dac_muxSelectTX(1),
      ADR3 => U_cnt_dac_muxSelectTX(2),
      ADR5 => U_cnt_dac_mxstate_FSM_FFd1_1073,
      ADR1 => U_cnt_dac_muxSelectTX(3),
      ADR0 => U_cnt_dac_mxstate_FSM_FFd2_927,
      O => U_cnt_dac_mxstate_FSM_FFd1_In
    );
  U_cnt_dac_Mmux_D112 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y77",
      INIT => X"FAFADD885050DD88"
    )
    port map (
      ADR0 => U_cnt_dac_muxSelectTX(0),
      ADR4 => U_cnt_dac_muxSelectTX(1),
      ADR1 => DATO1(2),
      ADR5 => DATO1(0),
      ADR2 => DATO1(1),
      ADR3 => DATO1(3),
      O => U_cnt_dac_Mmux_D111_1075
    );
  U_cnt_dac_Mmux_D113 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y77",
      INIT => X"00CCFF0000CC0000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => U_cnt_dac_muxSelectTX(3),
      ADR4 => U_cnt_dac_muxSelectTX(2),
      ADR1 => U_cnt_dac_Mmux_D11,
      ADR5 => U_cnt_dac_Mmux_D111_1075,
      O => D1_OBUF_960
    );
  U_cnt_dac_Mmux_D111 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y77",
      INIT => X"FFAAD8D85500D8D8"
    )
    port map (
      ADR0 => U_cnt_dac_muxSelectTX(0),
      ADR4 => U_cnt_dac_muxSelectTX(1),
      ADR1 => DATO1(6),
      ADR5 => DATO1(4),
      ADR3 => DATO1(5),
      ADR2 => DATO1(7),
      O => U_cnt_dac_Mmux_D11
    );
  U_cnt_dpram_counter_4_U_cnt_dpram_counter_4_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_dpram_counter_3_pack_10,
      O => U_cnt_dpram_counter(3)
    );
  U_cnt_dpram_counter_4_U_cnt_dpram_counter_4_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_dpram_n0121_inv_pack_8,
      O => U_cnt_dpram_n0121_inv
    );
  U_cnt_dpram_counter_4 : X_FF
    generic map(
      LOC => "SLICE_X17Y78",
      INIT => '0'
    )
    port map (
      CE => U_cnt_dpram_n0121_inv,
      CLK => NlwBufferSignal_U_cnt_dpram_counter_4_CLK,
      I => U_cnt_dpram_counter_7_counter_7_mux_5_OUT_4_Q,
      O => U_cnt_dpram_counter(4),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dpram_Mmux_counter_7_counter_7_mux_5_OUT51 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y78",
      INIT => X"78F00000F0F00000"
    )
    port map (
      ADR4 => U_cnt_dpram_CEcounter_935,
      ADR0 => U_cnt_dpram_counter(2),
      ADR1 => U_cnt_dpram_counter(0),
      ADR2 => U_cnt_dpram_counter(4),
      ADR3 => U_cnt_dpram_counter(1),
      ADR5 => U_cnt_dpram_counter(3),
      O => U_cnt_dpram_counter_7_counter_7_mux_5_OUT_4_Q
    );
  U_cnt_dpram_counter_2 : X_FF
    generic map(
      LOC => "SLICE_X17Y78",
      INIT => '0'
    )
    port map (
      CE => U_cnt_dpram_n0121_inv,
      CLK => NlwBufferSignal_U_cnt_dpram_counter_2_CLK,
      I => U_cnt_dpram_counter_7_counter_7_mux_5_OUT_2_Q,
      O => U_cnt_dpram_counter(2),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dpram_Mmux_counter_7_counter_7_mux_5_OUT31 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y78",
      INIT => X"7878000078780000"
    )
    port map (
      ADR3 => '1',
      ADR4 => U_cnt_dpram_CEcounter_935,
      ADR0 => U_cnt_dpram_counter(0),
      ADR2 => U_cnt_dpram_counter(2),
      ADR1 => U_cnt_dpram_counter(1),
      ADR5 => '1',
      O => U_cnt_dpram_counter_7_counter_7_mux_5_OUT_2_Q
    );
  U_cnt_dpram_Mmux_counter_7_counter_7_mux_5_OUT42 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y78",
      INIT => X"7F800000"
    )
    port map (
      ADR3 => U_cnt_dpram_counter(3),
      ADR4 => U_cnt_dpram_CEcounter_935,
      ADR0 => U_cnt_dpram_counter(0),
      ADR2 => U_cnt_dpram_counter(2),
      ADR1 => U_cnt_dpram_counter(1),
      O => U_cnt_dpram_counter_7_counter_7_mux_5_OUT_3_Q
    );
  U_cnt_dpram_counter_3 : X_FF
    generic map(
      LOC => "SLICE_X17Y78",
      INIT => '0'
    )
    port map (
      CE => U_cnt_dpram_n0121_inv,
      CLK => NlwBufferSignal_U_cnt_dpram_counter_3_CLK,
      I => U_cnt_dpram_counter_7_counter_7_mux_5_OUT_3_Q,
      O => U_cnt_dpram_counter_3_pack_10,
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dpram_counter_0 : X_FF
    generic map(
      LOC => "SLICE_X17Y78",
      INIT => '0'
    )
    port map (
      CE => U_cnt_dpram_n0121_inv,
      CLK => NlwBufferSignal_U_cnt_dpram_counter_0_CLK,
      I => U_cnt_dpram_counter_7_counter_7_mux_5_OUT_0_Q,
      O => U_cnt_dpram_counter(0),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dpram_Mmux_counter_7_counter_7_mux_5_OUT11 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y78",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U_cnt_dpram_counter(0),
      ADR4 => U_cnt_dpram_CEcounter_935,
      ADR5 => '1',
      O => U_cnt_dpram_counter_7_counter_7_mux_5_OUT_0_Q
    );
  U_cnt_dpram_n0121_inv1 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y78",
      INIT => X"FFFFF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_cnt_dpram_clearCounter_1051,
      ADR3 => '1',
      ADR4 => U_cnt_dpram_CEcounter_935,
      O => U_cnt_dpram_n0121_inv_pack_8
    );
  U_gen_dir_Mcount_prescalerCounter_xor_6_1 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y66"
    )
    port map (
      IA => N34,
      IB => N35,
      O => U_gen_dir_Mcount_prescalerCounter6,
      SEL => U_gen_dir_prescalerCounter(6)
    );
  U_gen_dir_Mcount_prescalerCounter_xor_6_1_F : X_LUT6
    generic map(
      LOC => "SLICE_X22Y66",
      INIT => X"8000000000000000"
    )
    port map (
      ADR4 => U_gen_dir_prescalerCounter(0),
      ADR0 => U_gen_dir_prescalerCounter(5),
      ADR1 => U_gen_dir_prescalerCounter(4),
      ADR5 => U_gen_dir_prescalerCounter(3),
      ADR3 => U_gen_dir_prescalerCounter(1),
      ADR2 => U_gen_dir_prescalerCounter(2),
      O => N34
    );
  U_gen_dir_prescalerCounter_6 : X_FF
    generic map(
      LOC => "SLICE_X22Y66",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U_gen_dir_prescalerCounter_6_CLK,
      I => U_gen_dir_Mcount_prescalerCounter6,
      O => U_gen_dir_prescalerCounter(6),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_gen_dir_Mcount_prescalerCounter_xor_6_1_G : X_LUT6
    generic map(
      LOC => "SLICE_X22Y66",
      INIT => X"7FFFFFFFFFFFFFFD"
    )
    port map (
      ADR2 => U_gen_dir_prescalerCounter(0),
      ADR4 => U_gen_dir_prescalerCounter(4),
      ADR5 => U_gen_dir_prescalerCounter(3),
      ADR1 => U_gen_dir_prescalerCounter(1),
      ADR0 => U_gen_dir_prescalerCounter(2),
      ADR3 => U_gen_dir_prescalerCounter(5),
      O => N35
    );
  U_gen_dir_prescalerCounter_5 : X_FF
    generic map(
      LOC => "SLICE_X22Y66",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U_gen_dir_prescalerCounter_5_CLK,
      I => U_gen_dir_Mcount_prescalerCounter5,
      O => U_gen_dir_prescalerCounter(5),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_gen_dir_Mcount_prescalerCounter_xor_5_11 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y66",
      INIT => X"7F80FF00FF00FF00"
    )
    port map (
      ADR5 => U_gen_dir_prescalerCounter(0),
      ADR1 => U_gen_dir_prescalerCounter(1),
      ADR0 => U_gen_dir_prescalerCounter(2),
      ADR3 => U_gen_dir_prescalerCounter(5),
      ADR2 => U_gen_dir_prescalerCounter(3),
      ADR4 => U_gen_dir_prescalerCounter(4),
      O => U_gen_dir_Mcount_prescalerCounter5
    );
  U_cnt_epp_Q2_U_cnt_epp_Q2_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_Q_787,
      O => U_cnt_epp_Q_0
    );
  U_cnt_epp_Q2 : X_FF
    generic map(
      LOC => "SLICE_X22Y111",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U_cnt_epp_Q2_CLK,
      I => NlwBufferSignal_U_cnt_epp_Q2_IN,
      O => U_cnt_epp_Q2_958,
      RST => RST_IBUF_0,
      SET => GND
    );
  ASTRB_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X22Y111",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => ASTRB_IBUF_0,
      O => ASTRB_IBUF_rt_788
    );
  U_cnt_epp_Q : X_FF
    generic map(
      LOC => "SLICE_X22Y111",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U_cnt_epp_Q_CLK,
      I => ASTRB_IBUF_rt_788,
      O => U_cnt_epp_Q_787,
      RST => RST_IBUF_0,
      SET => GND
    );
  U_gen_dir_prescalerCounter_4_U_gen_dir_prescalerCounter_4_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_gen_dir_prescalerCounter_3_pack_13,
      O => U_gen_dir_prescalerCounter(3)
    );
  U_gen_dir_prescalerCounter_4_U_gen_dir_prescalerCounter_4_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_gen_dir_prescalerCounter_0_pack_11,
      O => U_gen_dir_prescalerCounter(0)
    );
  U_gen_dir_prescalerCounter_4_U_gen_dir_prescalerCounter_4_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_gen_dir_prescalerCounter_6_dato_ok_trigger_AND_13_o2_819,
      O => U_gen_dir_prescalerCounter_6_dato_ok_trigger_AND_13_o2_0
    );
  U_gen_dir_prescalerCounter_4 : X_FF
    generic map(
      LOC => "SLICE_X23Y66",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U_gen_dir_prescalerCounter_4_CLK,
      I => U_gen_dir_Mcount_prescalerCounter4,
      O => U_gen_dir_prescalerCounter(4),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_gen_dir_Mcount_prescalerCounter_xor_4_11 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y66",
      INIT => X"7FFF80007FFF8000"
    )
    port map (
      ADR2 => U_gen_dir_prescalerCounter(0),
      ADR3 => U_gen_dir_prescalerCounter(1),
      ADR0 => U_gen_dir_prescalerCounter(2),
      ADR4 => U_gen_dir_prescalerCounter(4),
      ADR1 => U_gen_dir_prescalerCounter(3),
      ADR5 => '1',
      O => U_gen_dir_Mcount_prescalerCounter4
    );
  U_gen_dir_Mcount_prescalerCounter_xor_3_11 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y66",
      INIT => X"6CCC6CCC"
    )
    port map (
      ADR2 => U_gen_dir_prescalerCounter(0),
      ADR3 => U_gen_dir_prescalerCounter(1),
      ADR0 => U_gen_dir_prescalerCounter(2),
      ADR4 => '1',
      ADR1 => U_gen_dir_prescalerCounter(3),
      O => U_gen_dir_Mcount_prescalerCounter3
    );
  U_gen_dir_prescalerCounter_3 : X_FF
    generic map(
      LOC => "SLICE_X23Y66",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U_gen_dir_prescalerCounter_3_CLK,
      I => U_gen_dir_Mcount_prescalerCounter3,
      O => U_gen_dir_prescalerCounter_3_pack_13,
      RST => RST_IBUF_0,
      SET => GND
    );
  U_gen_dir_prescalerCounter_2 : X_FF
    generic map(
      LOC => "SLICE_X23Y66",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U_gen_dir_prescalerCounter_2_CLK,
      I => U_gen_dir_Mcount_prescalerCounter2,
      O => U_gen_dir_prescalerCounter(2),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_gen_dir_Mcount_prescalerCounter_xor_2_11 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y66",
      INIT => X"3F3CC0C03F3CC0C0"
    )
    port map (
      ADR0 => '1',
      ADR2 => U_gen_dir_prescalerCounter(1),
      ADR1 => U_gen_dir_prescalerCounter(0),
      ADR4 => U_gen_dir_prescalerCounter(2),
      ADR3 => U_gen_dir_Mcount_prescalerCounter_xor_0_111,
      ADR5 => '1',
      O => U_gen_dir_Mcount_prescalerCounter2
    );
  U_gen_dir_Mcount_prescalerCounter_xor_0_11 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y66",
      INIT => X"33303333"
    )
    port map (
      ADR0 => '1',
      ADR2 => U_gen_dir_prescalerCounter(1),
      ADR1 => U_gen_dir_prescalerCounter(0),
      ADR4 => U_gen_dir_prescalerCounter(2),
      ADR3 => U_gen_dir_Mcount_prescalerCounter_xor_0_111,
      O => U_gen_dir_Mcount_prescalerCounter
    );
  U_gen_dir_prescalerCounter_0 : X_FF
    generic map(
      LOC => "SLICE_X23Y66",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U_gen_dir_prescalerCounter_0_CLK,
      I => U_gen_dir_Mcount_prescalerCounter,
      O => U_gen_dir_prescalerCounter_0_pack_11,
      RST => RST_IBUF_0,
      SET => GND
    );
  U_gen_dir_Mcount_prescalerCounter_xor_0_1111 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y66",
      INIT => X"FFFFFAFFFFFFFAFF"
    )
    port map (
      ADR1 => '1',
      ADR0 => U_gen_dir_prescalerCounter(5),
      ADR4 => U_gen_dir_prescalerCounter(4),
      ADR3 => U_gen_dir_prescalerCounter(6),
      ADR2 => U_gen_dir_prescalerCounter(3),
      ADR5 => '1',
      O => U_gen_dir_Mcount_prescalerCounter_xor_0_111
    );
  U_gen_dir_prescalerCounter_6_dato_ok_trigger_AND_13_o21 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y66",
      INIT => X"00000101"
    )
    port map (
      ADR1 => U_gen_dir_prescalerCounter(1),
      ADR0 => U_gen_dir_prescalerCounter(5),
      ADR4 => U_gen_dir_prescalerCounter(4),
      ADR3 => '1',
      ADR2 => U_gen_dir_prescalerCounter(3),
      O => U_gen_dir_prescalerCounter_6_dato_ok_trigger_AND_13_o2_819
    );
  U_gen_dir_prescalerCounter_1 : X_FF
    generic map(
      LOC => "SLICE_X23Y66",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U_gen_dir_prescalerCounter_1_CLK,
      I => U_gen_dir_Mcount_prescalerCounter1,
      O => U_gen_dir_prescalerCounter(1),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_gen_dir_Mcount_prescalerCounter_xor_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y66",
      INIT => X"00FF00FFFF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => U_gen_dir_prescalerCounter(1),
      ADR4 => '1',
      ADR3 => U_gen_dir_prescalerCounter(0),
      O => U_gen_dir_Mcount_prescalerCounter1
    );
  U_cnt_dac_muxSelect_2_U_cnt_dac_muxSelect_2_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N7,
      O => N7_0
    );
  U_cnt_dac_muxSelect_2_U_cnt_dac_muxSelect_2_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_dac_muxSelect_0_pack_6,
      O => U_cnt_dac_muxSelect(0)
    );
  U_cnt_dac_muxSelect_2_U_cnt_dac_muxSelect_2_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_dac_n0090_inv,
      O => U_cnt_dac_n0090_inv_0
    );
  U_cnt_dac_Mmux_GND_26_o_muxSelect_5_mux_11_OUT1111 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y55",
      INIT => X"55FFFFFF55FFFFFF"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => U_cnt_dac_muxSelect(3),
      ADR3 => U_cnt_dac_muxSelect(4),
      ADR4 => U_cnt_dac_muxSelect(5),
      ADR5 => '1',
      O => U_cnt_dac_Mmux_GND_26_o_muxSelect_5_mux_11_OUT111
    );
  U_cnt_dac_Mmux_GND_26_o_muxSelect_5_mux_11_OUT6_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y55",
      INIT => X"88888888"
    )
    port map (
      ADR2 => '1',
      ADR1 => U_cnt_dac_muxSelect(2),
      ADR0 => U_cnt_dac_muxSelect(3),
      ADR3 => '1',
      ADR4 => '1',
      O => N7
    );
  U_cnt_dac_muxSelect_2 : X_FF
    generic map(
      LOC => "SLICE_X24Y55",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U_cnt_dac_muxSelect_2_CLK,
      I => U_cnt_dac_GND_26_o_muxSelect_5_mux_11_OUT_2_Q,
      O => U_cnt_dac_muxSelect(2),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dac_Mmux_GND_26_o_muxSelect_5_mux_11_OUT31 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y55",
      INIT => X"7060808070608080"
    )
    port map (
      ADR2 => U_cnt_dac_CEcounter_928,
      ADR0 => U_cnt_dac_muxSelect(0),
      ADR3 => U_cnt_dac_Mmux_GND_26_o_muxSelect_5_mux_11_OUT111,
      ADR4 => U_cnt_dac_muxSelect(2),
      ADR1 => U_cnt_dac_muxSelect(1),
      ADR5 => '1',
      O => U_cnt_dac_GND_26_o_muxSelect_5_mux_11_OUT_2_Q
    );
  U_cnt_dac_Mmux_GND_26_o_muxSelect_5_mux_11_OUT11 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y55",
      INIT => X"50405050"
    )
    port map (
      ADR2 => U_cnt_dac_CEcounter_928,
      ADR0 => U_cnt_dac_muxSelect(0),
      ADR3 => U_cnt_dac_Mmux_GND_26_o_muxSelect_5_mux_11_OUT111,
      ADR4 => U_cnt_dac_muxSelect(2),
      ADR1 => U_cnt_dac_muxSelect(1),
      O => U_cnt_dac_GND_26_o_muxSelect_5_mux_11_OUT_0_Q
    );
  U_cnt_dac_muxSelect_0 : X_FF
    generic map(
      LOC => "SLICE_X24Y55",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U_cnt_dac_muxSelect_0_CLK,
      I => U_cnt_dac_GND_26_o_muxSelect_5_mux_11_OUT_0_Q,
      O => U_cnt_dac_muxSelect_0_pack_6,
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dac_muxSelect_1 : X_FF
    generic map(
      LOC => "SLICE_X24Y55",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U_cnt_dac_muxSelect_1_CLK,
      I => U_cnt_dac_GND_26_o_muxSelect_5_mux_11_OUT_1_Q,
      O => U_cnt_dac_muxSelect(1),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dac_Mmux_GND_26_o_muxSelect_5_mux_11_OUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y55",
      INIT => X"3030C0C03030C0C0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => U_cnt_dac_CEcounter_928,
      ADR4 => U_cnt_dac_muxSelect(1),
      ADR1 => U_cnt_dac_muxSelect(0),
      ADR5 => '1',
      O => U_cnt_dac_GND_26_o_muxSelect_5_mux_11_OUT_1_Q
    );
  U_cnt_dac_n0090_inv1 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y55",
      INIT => X"0F0F3F3F"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => U_cnt_dac_CEcounter_928,
      ADR4 => U_cnt_dac_muxSelect(1),
      ADR1 => U_cnt_dac_muxSelect(0),
      O => U_cnt_dac_n0090_inv
    );
  U_cnt_dac_muxSelect_5 : X_FF
    generic map(
      LOC => "SLICE_X25Y55",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U_cnt_dac_muxSelect_5_CLK,
      I => U_cnt_dac_GND_26_o_muxSelect_5_mux_11_OUT_5_Q,
      O => U_cnt_dac_muxSelect(5),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dac_Mmux_GND_26_o_muxSelect_5_mux_11_OUT6 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y55",
      INIT => X"4CCC8000C4CC0000"
    )
    port map (
      ADR1 => U_cnt_dac_CEcounter_928,
      ADR3 => U_cnt_dac_muxSelect(4),
      ADR5 => U_cnt_dac_muxSelect(0),
      ADR4 => U_cnt_dac_muxSelect(5),
      ADR2 => U_cnt_dac_muxSelect(1),
      ADR0 => N7_0,
      O => U_cnt_dac_GND_26_o_muxSelect_5_mux_11_OUT_5_Q
    );
  U_cnt_dac_muxSelect_4 : X_FF
    generic map(
      LOC => "SLICE_X25Y55",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U_cnt_dac_muxSelect_4_CLK,
      I => U_cnt_dac_GND_26_o_muxSelect_5_mux_11_OUT_4_Q,
      O => U_cnt_dac_muxSelect(4),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dac_Mmux_GND_26_o_muxSelect_5_mux_11_OUT5 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y55",
      INIT => X"3FDFC00000000000"
    )
    port map (
      ADR5 => U_cnt_dac_CEcounter_928,
      ADR1 => U_cnt_dac_muxSelect(1),
      ADR0 => U_cnt_dac_muxSelect(5),
      ADR4 => U_cnt_dac_muxSelect(4),
      ADR3 => U_cnt_dac_muxSelect(0),
      ADR2 => N7_0,
      O => U_cnt_dac_GND_26_o_muxSelect_5_mux_11_OUT_4_Q
    );
  U_cnt_dac_Mmux_GND_26_o_muxSelect_5_mux_11_OUT41 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y55",
      INIT => X"6AA26AAA6AAA6AAA"
    )
    port map (
      ADR0 => U_cnt_dac_muxSelect(3),
      ADR2 => U_cnt_dac_muxSelect(0),
      ADR4 => U_cnt_dac_muxSelect(5),
      ADR3 => U_cnt_dac_muxSelect(1),
      ADR5 => U_cnt_dac_muxSelect(4),
      ADR1 => U_cnt_dac_muxSelect(2),
      O => U_cnt_dac_Mmux_GND_26_o_muxSelect_5_mux_11_OUT4
    );
  U_cnt_dac_muxSelect_3 : X_FF
    generic map(
      LOC => "SLICE_X25Y55",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U_cnt_dac_muxSelect_3_CLK,
      I => U_cnt_dac_GND_26_o_muxSelect_5_mux_11_OUT_3_Q,
      O => U_cnt_dac_muxSelect(3),
      RST => RST_IBUF_0,
      SET => GND
    );
  U_cnt_dac_Mmux_GND_26_o_muxSelect_5_mux_11_OUT42 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y55",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => U_cnt_dac_CEcounter_928,
      ADR4 => U_cnt_dac_Mmux_GND_26_o_muxSelect_5_mux_11_OUT4,
      O => U_cnt_dac_GND_26_o_muxSelect_5_mux_11_OUT_3_Q
    );
  U_cnt_epp_PWRITE_DSTRB_AND_5_o_inv_U_cnt_epp_PWRITE_DSTRB_AND_5_o_inv_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_PWRITE_PWRITE_OR_2_o,
      O => U_cnt_epp_PWRITE_PWRITE_OR_2_o_0
    );
  U_cnt_epp_PWRITE_DSTRB_AND_5_o_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y125",
      INIT => X"F3F3F3F3F3F3F3F3"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => DSTRB_IBUF_0,
      ADR1 => PWRITE_IBUF_0,
      ADR5 => '1',
      O => U_cnt_epp_PWRITE_DSTRB_AND_5_o_inv
    );
  U_cnt_epp_PWRITE_PWRITE_OR_2_o1 : X_LUT5
    generic map(
      LOC => "SLICE_X29Y125",
      INIT => X"0F3F0F3F"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => ASTRB_IBUF_0,
      ADR2 => DSTRB_IBUF_0,
      ADR1 => PWRITE_IBUF_0,
      O => U_cnt_epp_PWRITE_PWRITE_OR_2_o
    );
  NlwBufferBlock_SP6_INS_BUFIO2FB_DCM_ML_BUFIO2FB_1_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_SP6_INS_BUFIO2FB_DCM_ML_BUFIO2FB_1_I
    );
  NlwBufferBlock_SP6_BUFIO_INSERT_ML_BUFIO2_0_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_dcm_clkin1_0,
      O => NlwBufferSignal_SP6_BUFIO_INSERT_ML_BUFIO2_0_I
    );
  NlwBufferBlock_U_dcm_clkout1_buf_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_dcm_clk0,
      O => NlwBufferSignal_U_dcm_clkout1_buf_IN
    );
  NlwBufferBlock_U_dpram_mem1_Mram_mem_pos_ADDRAWRADDR_10_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_dpram_counter(7),
      O => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_ADDRAWRADDR(10)
    );
  NlwBufferBlock_U_dpram_mem1_Mram_mem_pos_ADDRAWRADDR_9_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_dpram_counter(6),
      O => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_ADDRAWRADDR(9)
    );
  NlwBufferBlock_U_dpram_mem1_Mram_mem_pos_ADDRAWRADDR_8_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_dpram_counter(5),
      O => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_ADDRAWRADDR(8)
    );
  NlwBufferBlock_U_dpram_mem1_Mram_mem_pos_ADDRAWRADDR_7_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_dpram_counter(4),
      O => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_ADDRAWRADDR(7)
    );
  NlwBufferBlock_U_dpram_mem1_Mram_mem_pos_ADDRAWRADDR_6_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_dpram_counter(3),
      O => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_ADDRAWRADDR(6)
    );
  NlwBufferBlock_U_dpram_mem1_Mram_mem_pos_ADDRAWRADDR_5_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_dpram_counter(2),
      O => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_ADDRAWRADDR(5)
    );
  NlwBufferBlock_U_dpram_mem1_Mram_mem_pos_ADDRAWRADDR_4_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_dpram_counter(1),
      O => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_ADDRAWRADDR(4)
    );
  NlwBufferBlock_U_dpram_mem1_Mram_mem_pos_ADDRAWRADDR_3_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_dpram_counter(0),
      O => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_ADDRAWRADDR(3)
    );
  NlwBufferBlock_U_dpram_mem1_Mram_mem_pos_DIADI_7_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DATO(7),
      O => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_DIADI(7)
    );
  NlwBufferBlock_U_dpram_mem1_Mram_mem_pos_DIADI_6_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DATO(6),
      O => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_DIADI(6)
    );
  NlwBufferBlock_U_dpram_mem1_Mram_mem_pos_DIADI_5_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DATO(5),
      O => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_DIADI(5)
    );
  NlwBufferBlock_U_dpram_mem1_Mram_mem_pos_DIADI_4_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DATO(4),
      O => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_DIADI(4)
    );
  NlwBufferBlock_U_dpram_mem1_Mram_mem_pos_DIADI_3_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DATO(3),
      O => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_DIADI(3)
    );
  NlwBufferBlock_U_dpram_mem1_Mram_mem_pos_DIADI_2_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DATO(2),
      O => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_DIADI(2)
    );
  NlwBufferBlock_U_dpram_mem1_Mram_mem_pos_DIADI_1_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DATO(1),
      O => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_DIADI(1)
    );
  NlwBufferBlock_U_dpram_mem1_Mram_mem_pos_DIADI_0_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DATO(0),
      O => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_DIADI(0)
    );
  NlwBufferBlock_U_dpram_mem1_Mram_mem_pos_ADDRBRDADDR_10_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_gen_dir_cnt(15),
      O => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_ADDRBRDADDR(10)
    );
  NlwBufferBlock_U_dpram_mem1_Mram_mem_pos_ADDRBRDADDR_9_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_gen_dir_cnt(14),
      O => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_ADDRBRDADDR(9)
    );
  NlwBufferBlock_U_dpram_mem1_Mram_mem_pos_ADDRBRDADDR_8_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_gen_dir_cnt(13),
      O => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_ADDRBRDADDR(8)
    );
  NlwBufferBlock_U_dpram_mem1_Mram_mem_pos_ADDRBRDADDR_7_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_gen_dir_cnt(12),
      O => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_ADDRBRDADDR(7)
    );
  NlwBufferBlock_U_dpram_mem1_Mram_mem_pos_ADDRBRDADDR_6_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_gen_dir_cnt(11),
      O => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_ADDRBRDADDR(6)
    );
  NlwBufferBlock_U_dpram_mem1_Mram_mem_pos_ADDRBRDADDR_5_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_gen_dir_cnt(10),
      O => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_ADDRBRDADDR(5)
    );
  NlwBufferBlock_U_dpram_mem1_Mram_mem_pos_ADDRBRDADDR_4_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_gen_dir_cnt(9),
      O => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_ADDRBRDADDR(4)
    );
  NlwBufferBlock_U_dpram_mem1_Mram_mem_pos_ADDRBRDADDR_3_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_gen_dir_cnt(8),
      O => NlwBufferSignal_U_dpram_mem1_Mram_mem_pos_ADDRBRDADDR(3)
    );
  NlwBufferBlock_U_dpram_mem2_Mram_mem_pos_ADDRAWRADDR_10_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_dpram_counter(7),
      O => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_ADDRAWRADDR(10)
    );
  NlwBufferBlock_U_dpram_mem2_Mram_mem_pos_ADDRAWRADDR_9_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_dpram_counter(6),
      O => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_ADDRAWRADDR(9)
    );
  NlwBufferBlock_U_dpram_mem2_Mram_mem_pos_ADDRAWRADDR_8_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_dpram_counter(5),
      O => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_ADDRAWRADDR(8)
    );
  NlwBufferBlock_U_dpram_mem2_Mram_mem_pos_ADDRAWRADDR_7_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_dpram_counter(4),
      O => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_ADDRAWRADDR(7)
    );
  NlwBufferBlock_U_dpram_mem2_Mram_mem_pos_ADDRAWRADDR_6_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_dpram_counter(3),
      O => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_ADDRAWRADDR(6)
    );
  NlwBufferBlock_U_dpram_mem2_Mram_mem_pos_ADDRAWRADDR_5_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_dpram_counter(2),
      O => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_ADDRAWRADDR(5)
    );
  NlwBufferBlock_U_dpram_mem2_Mram_mem_pos_ADDRAWRADDR_4_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_dpram_counter(1),
      O => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_ADDRAWRADDR(4)
    );
  NlwBufferBlock_U_dpram_mem2_Mram_mem_pos_ADDRAWRADDR_3_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_dpram_counter(0),
      O => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_ADDRAWRADDR(3)
    );
  NlwBufferBlock_U_dpram_mem2_Mram_mem_pos_DIADI_7_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DATO(7),
      O => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_DIADI(7)
    );
  NlwBufferBlock_U_dpram_mem2_Mram_mem_pos_DIADI_6_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DATO(6),
      O => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_DIADI(6)
    );
  NlwBufferBlock_U_dpram_mem2_Mram_mem_pos_DIADI_5_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DATO(5),
      O => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_DIADI(5)
    );
  NlwBufferBlock_U_dpram_mem2_Mram_mem_pos_DIADI_4_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DATO(4),
      O => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_DIADI(4)
    );
  NlwBufferBlock_U_dpram_mem2_Mram_mem_pos_DIADI_3_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DATO(3),
      O => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_DIADI(3)
    );
  NlwBufferBlock_U_dpram_mem2_Mram_mem_pos_DIADI_2_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DATO(2),
      O => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_DIADI(2)
    );
  NlwBufferBlock_U_dpram_mem2_Mram_mem_pos_DIADI_1_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DATO(1),
      O => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_DIADI(1)
    );
  NlwBufferBlock_U_dpram_mem2_Mram_mem_pos_DIADI_0_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DATO(0),
      O => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_DIADI(0)
    );
  NlwBufferBlock_U_dpram_mem2_Mram_mem_pos_ADDRBRDADDR_10_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_gen_dir_cnt(15),
      O => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_ADDRBRDADDR(10)
    );
  NlwBufferBlock_U_dpram_mem2_Mram_mem_pos_ADDRBRDADDR_9_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_gen_dir_cnt(14),
      O => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_ADDRBRDADDR(9)
    );
  NlwBufferBlock_U_dpram_mem2_Mram_mem_pos_ADDRBRDADDR_8_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_gen_dir_cnt(13),
      O => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_ADDRBRDADDR(8)
    );
  NlwBufferBlock_U_dpram_mem2_Mram_mem_pos_ADDRBRDADDR_7_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_gen_dir_cnt(12),
      O => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_ADDRBRDADDR(7)
    );
  NlwBufferBlock_U_dpram_mem2_Mram_mem_pos_ADDRBRDADDR_6_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_gen_dir_cnt(11),
      O => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_ADDRBRDADDR(6)
    );
  NlwBufferBlock_U_dpram_mem2_Mram_mem_pos_ADDRBRDADDR_5_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_gen_dir_cnt(10),
      O => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_ADDRBRDADDR(5)
    );
  NlwBufferBlock_U_dpram_mem2_Mram_mem_pos_ADDRBRDADDR_4_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_gen_dir_cnt(9),
      O => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_ADDRBRDADDR(4)
    );
  NlwBufferBlock_U_dpram_mem2_Mram_mem_pos_ADDRBRDADDR_3_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_gen_dir_cnt(8),
      O => NlwBufferSignal_U_dpram_mem2_Mram_mem_pos_ADDRBRDADDR(3)
    );
  NlwBufferBlock_U_gen_dir_cnt_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_gen_dir_cnt_3_CLK
    );
  NlwBufferBlock_U_gen_dir_cnt_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_gen_dir_cnt_2_CLK
    );
  NlwBufferBlock_U_gen_dir_Maccum_cnt_cy_3_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_gen_dir_cnt(0),
      O => NlwBufferSignal_U_gen_dir_Maccum_cnt_cy_3_DI_0_Q
    );
  NlwBufferBlock_U_gen_dir_Maccum_cnt_cy_3_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_gen_dir_cnt(1),
      O => NlwBufferSignal_U_gen_dir_Maccum_cnt_cy_3_DI_1_Q
    );
  NlwBufferBlock_U_gen_dir_Maccum_cnt_cy_3_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_gen_dir_cnt(2),
      O => NlwBufferSignal_U_gen_dir_Maccum_cnt_cy_3_DI_2_Q
    );
  NlwBufferBlock_U_gen_dir_Maccum_cnt_cy_3_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_gen_dir_cnt(3),
      O => NlwBufferSignal_U_gen_dir_Maccum_cnt_cy_3_DI_3_Q
    );
  NlwBufferBlock_U_gen_dir_cnt_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_gen_dir_cnt_1_CLK
    );
  NlwBufferBlock_U_gen_dir_cnt_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_gen_dir_cnt_0_CLK
    );
  NlwBufferBlock_U_gen_dir_cnt_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_gen_dir_cnt_7_CLK
    );
  NlwBufferBlock_U_gen_dir_cnt_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_gen_dir_cnt_6_CLK
    );
  NlwBufferBlock_U_gen_dir_Maccum_cnt_cy_7_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_gen_dir_cnt(4),
      O => NlwBufferSignal_U_gen_dir_Maccum_cnt_cy_7_DI_0_Q
    );
  NlwBufferBlock_U_gen_dir_Maccum_cnt_cy_7_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_gen_dir_cnt(5),
      O => NlwBufferSignal_U_gen_dir_Maccum_cnt_cy_7_DI_1_Q
    );
  NlwBufferBlock_U_gen_dir_Maccum_cnt_cy_7_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_gen_dir_cnt(6),
      O => NlwBufferSignal_U_gen_dir_Maccum_cnt_cy_7_DI_2_Q
    );
  NlwBufferBlock_U_gen_dir_Maccum_cnt_cy_7_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_gen_dir_cnt(7),
      O => NlwBufferSignal_U_gen_dir_Maccum_cnt_cy_7_DI_3_Q
    );
  NlwBufferBlock_U_gen_dir_cnt_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_gen_dir_cnt_5_CLK
    );
  NlwBufferBlock_U_gen_dir_cnt_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_gen_dir_cnt_4_CLK
    );
  NlwBufferBlock_U_gen_dir_cnt_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_gen_dir_cnt_11_CLK
    );
  NlwBufferBlock_U_gen_dir_cnt_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_gen_dir_cnt_10_CLK
    );
  NlwBufferBlock_U_gen_dir_cnt_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_gen_dir_cnt_9_CLK
    );
  NlwBufferBlock_U_gen_dir_cnt_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_gen_dir_cnt_8_CLK
    );
  NlwBufferBlock_U_gen_dir_cnt_15_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_gen_dir_cnt_15_CLK
    );
  NlwBufferBlock_U_gen_dir_cnt_14_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_gen_dir_cnt_14_CLK
    );
  NlwBufferBlock_U_gen_dir_cnt_13_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_gen_dir_cnt_13_CLK
    );
  NlwBufferBlock_U_gen_dir_cnt_12_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_gen_dir_cnt_12_CLK
    );
  NlwBufferBlock_SYNC_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_dac_SYNC_945,
      O => NlwBufferSignal_SYNC_OBUF_I
    );
  NlwBufferBlock_PWAIT_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_PWAIT_1059,
      O => NlwBufferSignal_PWAIT_OBUF_I
    );
  NlwBufferBlock_SCLK_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_dac_SCLKaux_947,
      O => NlwBufferSignal_SCLK_OBUF_I
    );
  NlwBufferBlock_D1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => D1_OBUF_960,
      O => NlwBufferSignal_D1_OBUF_I
    );
  NlwBufferBlock_D2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => D2_OBUF_970,
      O => NlwBufferSignal_D2_OBUF_I
    );
  NlwBufferBlock_U_cnt_epp_PWAIT_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_epp_PWAIT_CLK
    );
  NlwBufferBlock_U_cnt_epp_PWAIT_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_PWRITE_PWRITE_OR_2_o_0,
      O => NlwBufferSignal_U_cnt_epp_PWAIT_IN
    );
  NlwBufferBlock_U_cnt_dac_SCLKaux_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dac_SCLKaux_CLK
    );
  NlwBufferBlock_U_cnt_dac_prescaler_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dac_prescaler_0_CLK
    );
  NlwBufferBlock_U_cnt_dpram_dirPrev_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dpram_dirPrev_3_CLK
    );
  NlwBufferBlock_U_cnt_dpram_dirPrev_3_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DIR(3),
      O => NlwBufferSignal_U_cnt_dpram_dirPrev_3_IN
    );
  NlwBufferBlock_U_cnt_dpram_dirPrev_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dpram_dirPrev_2_CLK
    );
  NlwBufferBlock_U_cnt_dpram_dirPrev_2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DIR(2),
      O => NlwBufferSignal_U_cnt_dpram_dirPrev_2_IN
    );
  NlwBufferBlock_U_cnt_dpram_dirPrev_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dpram_dirPrev_1_CLK
    );
  NlwBufferBlock_U_cnt_dpram_dirPrev_1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DIR(1),
      O => NlwBufferSignal_U_cnt_dpram_dirPrev_1_IN
    );
  NlwBufferBlock_U_cnt_dpram_dirPrev_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dpram_dirPrev_0_CLK
    );
  NlwBufferBlock_U_cnt_dpram_dirPrev_0_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DIR(0),
      O => NlwBufferSignal_U_cnt_dpram_dirPrev_0_IN
    );
  NlwBufferBlock_U_cnt_dpram_dirActual_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dpram_dirActual_3_CLK
    );
  NlwBufferBlock_U_cnt_dpram_dirActual_3_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DIR(3),
      O => NlwBufferSignal_U_cnt_dpram_dirActual_3_IN
    );
  NlwBufferBlock_U_cnt_dpram_dirActual_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dpram_dirActual_2_CLK
    );
  NlwBufferBlock_U_cnt_dpram_dirActual_2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DIR(2),
      O => NlwBufferSignal_U_cnt_dpram_dirActual_2_IN
    );
  NlwBufferBlock_U_cnt_dpram_dirActual_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dpram_dirActual_1_CLK
    );
  NlwBufferBlock_U_cnt_dpram_dirActual_1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DIR(1),
      O => NlwBufferSignal_U_cnt_dpram_dirActual_1_IN
    );
  NlwBufferBlock_U_cnt_dpram_dirActual_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dpram_dirActual_0_CLK
    );
  NlwBufferBlock_U_cnt_dpram_dirActual_0_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DIR(0),
      O => NlwBufferSignal_U_cnt_dpram_dirActual_0_IN
    );
  NlwBufferBlock_U_cnt_epp_DATO_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_epp_DATO_3_CLK
    );
  NlwBufferBlock_U_cnt_epp_DATO_3_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N15_0,
      O => NlwBufferSignal_U_cnt_epp_DATO_3_IN
    );
  NlwBufferBlock_U_cnt_epp_DATO_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_epp_DATO_2_CLK
    );
  NlwBufferBlock_U_cnt_epp_DATO_2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N16_0,
      O => NlwBufferSignal_U_cnt_epp_DATO_2_IN
    );
  NlwBufferBlock_U_cnt_epp_DATO_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_epp_DATO_1_CLK
    );
  NlwBufferBlock_U_cnt_epp_DATO_1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N17_0,
      O => NlwBufferSignal_U_cnt_epp_DATO_1_IN
    );
  NlwBufferBlock_U_cnt_epp_DATO_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_epp_DATO_0_CLK
    );
  NlwBufferBlock_U_cnt_epp_DATO_0_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N18_0,
      O => NlwBufferSignal_U_cnt_epp_DATO_0_IN
    );
  NlwBufferBlock_U_cnt_dpram_WE_DP2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dpram_WE_DP2_CLK
    );
  NlwBufferBlock_U_cnt_dpram_WE_DP1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dpram_WE_DP1_CLK
    );
  NlwBufferBlock_U_cnt_dpram_state_FSM_FFd3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dpram_state_FSM_FFd3_CLK
    );
  NlwBufferBlock_U_cnt_dpram_state_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dpram_state_FSM_FFd2_CLK
    );
  NlwBufferBlock_U_cnt_dpram_state_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dpram_state_FSM_FFd1_CLK
    );
  NlwBufferBlock_U_cnt_dpram_state_FSM_FFd1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_dpram_state_FSM_FFd2_969,
      O => NlwBufferSignal_U_cnt_dpram_state_FSM_FFd1_IN
    );
  NlwBufferBlock_U_cnt_dpram_dirPrev_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dpram_dirPrev_7_CLK
    );
  NlwBufferBlock_U_cnt_dpram_dirPrev_7_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DIR(7),
      O => NlwBufferSignal_U_cnt_dpram_dirPrev_7_IN
    );
  NlwBufferBlock_U_cnt_dpram_dirPrev_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dpram_dirPrev_6_CLK
    );
  NlwBufferBlock_U_cnt_dpram_dirPrev_6_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DIR(6),
      O => NlwBufferSignal_U_cnt_dpram_dirPrev_6_IN
    );
  NlwBufferBlock_U_cnt_dpram_dirPrev_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dpram_dirPrev_5_CLK
    );
  NlwBufferBlock_U_cnt_dpram_dirPrev_5_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DIR(5),
      O => NlwBufferSignal_U_cnt_dpram_dirPrev_5_IN
    );
  NlwBufferBlock_U_cnt_dpram_dirPrev_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dpram_dirPrev_4_CLK
    );
  NlwBufferBlock_U_cnt_dpram_dirPrev_4_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DIR(4),
      O => NlwBufferSignal_U_cnt_dpram_dirPrev_4_IN
    );
  NlwBufferBlock_U_cnt_epp_DIR_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_epp_DIR_3_CLK
    );
  NlwBufferBlock_U_cnt_epp_DIR_3_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N15_0,
      O => NlwBufferSignal_U_cnt_epp_DIR_3_IN
    );
  NlwBufferBlock_U_cnt_epp_DIR_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_epp_DIR_2_CLK
    );
  NlwBufferBlock_U_cnt_epp_DIR_2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N16_0,
      O => NlwBufferSignal_U_cnt_epp_DIR_2_IN
    );
  NlwBufferBlock_U_cnt_epp_DIR_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_epp_DIR_1_CLK
    );
  NlwBufferBlock_U_cnt_epp_DIR_1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N17_0,
      O => NlwBufferSignal_U_cnt_epp_DIR_1_IN
    );
  NlwBufferBlock_U_cnt_epp_DIR_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_epp_DIR_0_CLK
    );
  NlwBufferBlock_U_cnt_epp_DIR_0_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N18_0,
      O => NlwBufferSignal_U_cnt_epp_DIR_0_IN
    );
  NlwBufferBlock_U_gen_dir_state_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_gen_dir_state_CLK
    );
  NlwBufferBlock_U_cnt_epp_DIR_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_epp_DIR_7_CLK
    );
  NlwBufferBlock_U_cnt_epp_DIR_7_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N11_0,
      O => NlwBufferSignal_U_cnt_epp_DIR_7_IN
    );
  NlwBufferBlock_U_cnt_epp_DIR_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_epp_DIR_6_CLK
    );
  NlwBufferBlock_U_cnt_epp_DIR_6_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N12_0,
      O => NlwBufferSignal_U_cnt_epp_DIR_6_IN
    );
  NlwBufferBlock_U_cnt_epp_DIR_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_epp_DIR_5_CLK
    );
  NlwBufferBlock_U_cnt_epp_DIR_5_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N13_0,
      O => NlwBufferSignal_U_cnt_epp_DIR_5_IN
    );
  NlwBufferBlock_U_cnt_epp_DIR_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_epp_DIR_4_CLK
    );
  NlwBufferBlock_U_cnt_epp_DIR_4_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N14_0,
      O => NlwBufferSignal_U_cnt_epp_DIR_4_IN
    );
  NlwBufferBlock_U_cnt_epp_DATO_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_epp_DATO_7_CLK
    );
  NlwBufferBlock_U_cnt_epp_DATO_7_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N11_0,
      O => NlwBufferSignal_U_cnt_epp_DATO_7_IN
    );
  NlwBufferBlock_U_cnt_epp_DATO_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_epp_DATO_6_CLK
    );
  NlwBufferBlock_U_cnt_epp_DATO_6_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N12_0,
      O => NlwBufferSignal_U_cnt_epp_DATO_6_IN
    );
  NlwBufferBlock_U_cnt_epp_DATO_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_epp_DATO_5_CLK
    );
  NlwBufferBlock_U_cnt_epp_DATO_5_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N13_0,
      O => NlwBufferSignal_U_cnt_epp_DATO_5_IN
    );
  NlwBufferBlock_U_cnt_epp_DATO_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_epp_DATO_4_CLK
    );
  NlwBufferBlock_U_cnt_epp_DATO_4_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N14_0,
      O => NlwBufferSignal_U_cnt_epp_DATO_4_IN
    );
  NlwBufferBlock_U_cnt_dpram_CEcounter_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dpram_CEcounter_CLK
    );
  NlwBufferBlock_U_cnt_dpram_clearCounter_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dpram_clearCounter_CLK
    );
  NlwBufferBlock_U_cnt_dpram_dirActual_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dpram_dirActual_7_CLK
    );
  NlwBufferBlock_U_cnt_dpram_dirActual_7_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DIR(7),
      O => NlwBufferSignal_U_cnt_dpram_dirActual_7_IN
    );
  NlwBufferBlock_U_cnt_dpram_dirActual_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dpram_dirActual_6_CLK
    );
  NlwBufferBlock_U_cnt_dpram_dirActual_6_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DIR(6),
      O => NlwBufferSignal_U_cnt_dpram_dirActual_6_IN
    );
  NlwBufferBlock_U_cnt_dpram_dirActual_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dpram_dirActual_5_CLK
    );
  NlwBufferBlock_U_cnt_dpram_dirActual_5_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DIR(5),
      O => NlwBufferSignal_U_cnt_dpram_dirActual_5_IN
    );
  NlwBufferBlock_U_cnt_dpram_dirActual_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dpram_dirActual_4_CLK
    );
  NlwBufferBlock_U_cnt_dpram_dirActual_4_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DIR(4),
      O => NlwBufferSignal_U_cnt_dpram_dirActual_4_IN
    );
  NlwBufferBlock_U_gen_dir_valor_freq_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_gen_dir_valor_freq_7_CLK
    );
  NlwBufferBlock_U_gen_dir_valor_freq_7_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DATO(7),
      O => NlwBufferSignal_U_gen_dir_valor_freq_7_IN
    );
  NlwBufferBlock_U_gen_dir_valor_freq_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_gen_dir_valor_freq_6_CLK
    );
  NlwBufferBlock_U_gen_dir_valor_freq_6_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DATO(6),
      O => NlwBufferSignal_U_gen_dir_valor_freq_6_IN
    );
  NlwBufferBlock_U_gen_dir_valor_freq_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_gen_dir_valor_freq_5_CLK
    );
  NlwBufferBlock_U_gen_dir_valor_freq_5_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DATO(5),
      O => NlwBufferSignal_U_gen_dir_valor_freq_5_IN
    );
  NlwBufferBlock_U_gen_dir_valor_freq_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_gen_dir_valor_freq_4_CLK
    );
  NlwBufferBlock_U_gen_dir_valor_freq_4_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DATO(4),
      O => NlwBufferSignal_U_gen_dir_valor_freq_4_IN
    );
  NlwBufferBlock_U_cnt_epp_DATO_VLD_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_epp_DATO_VLD_CLK
    );
  NlwBufferBlock_U_cnt_epp_DIR_VLD_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_epp_DIR_VLD_CLK
    );
  NlwBufferBlock_U_cnt_epp_DIR_VLD_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_S11,
      O => NlwBufferSignal_U_cnt_epp_DIR_VLD_IN
    );
  NlwBufferBlock_U_cnt_dac_SYNC_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dac_SYNC_CLK
    );
  NlwBufferBlock_U_cnt_dac_state_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dac_state_FSM_FFd2_CLK
    );
  NlwBufferBlock_U_cnt_dac_CEcounter_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dac_CEcounter_CLK
    );
  NlwBufferBlock_U_cnt_dac_state_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dac_state_FSM_FFd1_CLK
    );
  NlwBufferBlock_U_cnt_dac_endTx_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dac_endTx_CLK
    );
  NlwBufferBlock_U_gen_dir_CE_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_gen_dir_CE_CLK
    );
  NlwBufferBlock_U_gen_dir_DATO_OK_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_gen_dir_DATO_OK_CLK
    );
  NlwBufferBlock_U_gen_dir_valor_freq_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_gen_dir_valor_freq_3_CLK
    );
  NlwBufferBlock_U_gen_dir_valor_freq_3_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DATO(3),
      O => NlwBufferSignal_U_gen_dir_valor_freq_3_IN
    );
  NlwBufferBlock_U_gen_dir_valor_freq_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_gen_dir_valor_freq_2_CLK
    );
  NlwBufferBlock_U_gen_dir_valor_freq_2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DATO(2),
      O => NlwBufferSignal_U_gen_dir_valor_freq_2_IN
    );
  NlwBufferBlock_U_gen_dir_valor_freq_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_gen_dir_valor_freq_1_CLK
    );
  NlwBufferBlock_U_gen_dir_valor_freq_1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DATO(1),
      O => NlwBufferSignal_U_gen_dir_valor_freq_1_IN
    );
  NlwBufferBlock_U_gen_dir_valor_freq_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_gen_dir_valor_freq_0_CLK
    );
  NlwBufferBlock_U_gen_dir_valor_freq_0_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_cnt_epp_DATO(0),
      O => NlwBufferSignal_U_gen_dir_valor_freq_0_IN
    );
  NlwBufferBlock_U_cnt_dpram_counter_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dpram_counter_7_CLK
    );
  NlwBufferBlock_U_cnt_dpram_counter_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dpram_counter_6_CLK
    );
  NlwBufferBlock_U_cnt_dpram_counter_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dpram_counter_1_CLK
    );
  NlwBufferBlock_U_cnt_dpram_counter_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dpram_counter_5_CLK
    );
  NlwBufferBlock_U_cnt_dac_muxSelectTX_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dac_muxSelectTX_3_CLK
    );
  NlwBufferBlock_U_cnt_dac_muxSelectTX_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dac_muxSelectTX_2_CLK
    );
  NlwBufferBlock_U_cnt_dac_muxSelectTX_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dac_muxSelectTX_1_CLK
    );
  NlwBufferBlock_U_cnt_dac_muxSelectTX_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dac_muxSelectTX_0_CLK
    );
  NlwBufferBlock_U_cnt_dac_mxstate_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dac_mxstate_FSM_FFd2_CLK
    );
  NlwBufferBlock_U_cnt_dac_mxstate_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dac_mxstate_FSM_FFd1_CLK
    );
  NlwBufferBlock_U_cnt_dpram_counter_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dpram_counter_4_CLK
    );
  NlwBufferBlock_U_cnt_dpram_counter_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dpram_counter_2_CLK
    );
  NlwBufferBlock_U_cnt_dpram_counter_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dpram_counter_3_CLK
    );
  NlwBufferBlock_U_cnt_dpram_counter_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dpram_counter_0_CLK
    );
  NlwBufferBlock_U_gen_dir_prescalerCounter_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_gen_dir_prescalerCounter_6_CLK
    );
  NlwBufferBlock_U_gen_dir_prescalerCounter_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_gen_dir_prescalerCounter_5_CLK
    );
  NlwBufferBlock_U_cnt_epp_Q2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_epp_Q2_CLK
    );
  NlwBufferBlock_U_cnt_epp_Q2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => DSTRB_IBUF_0,
      O => NlwBufferSignal_U_cnt_epp_Q2_IN
    );
  NlwBufferBlock_U_cnt_epp_Q_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_epp_Q_CLK
    );
  NlwBufferBlock_U_gen_dir_prescalerCounter_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_gen_dir_prescalerCounter_4_CLK
    );
  NlwBufferBlock_U_gen_dir_prescalerCounter_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_gen_dir_prescalerCounter_3_CLK
    );
  NlwBufferBlock_U_gen_dir_prescalerCounter_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_gen_dir_prescalerCounter_2_CLK
    );
  NlwBufferBlock_U_gen_dir_prescalerCounter_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_gen_dir_prescalerCounter_0_CLK
    );
  NlwBufferBlock_U_gen_dir_prescalerCounter_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_gen_dir_prescalerCounter_1_CLK
    );
  NlwBufferBlock_U_cnt_dac_muxSelect_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dac_muxSelect_2_CLK
    );
  NlwBufferBlock_U_cnt_dac_muxSelect_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dac_muxSelect_0_CLK
    );
  NlwBufferBlock_U_cnt_dac_muxSelect_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dac_muxSelect_1_CLK
    );
  NlwBufferBlock_U_cnt_dac_muxSelect_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dac_muxSelect_5_CLK
    );
  NlwBufferBlock_U_cnt_dac_muxSelect_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dac_muxSelect_4_CLK
    );
  NlwBufferBlock_U_cnt_dac_muxSelect_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK,
      O => NlwBufferSignal_U_cnt_dac_muxSelect_3_CLK
    );
  NlwBlock_gen_funciones_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_gen_funciones_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;


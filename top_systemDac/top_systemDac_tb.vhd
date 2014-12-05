--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:56:42 12/01/2014
-- Design Name:   
-- Module Name:   C:/Users/christopher/Dropbox/workspace/modelado14/cnt_dac/cnt_dac_tb.vhd
-- Project Name:  cnt_dac
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: cnt_dac
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
use ieee.numeric_std.all;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY top_systemDac_tb IS
END top_systemDac_tb;
 
ARCHITECTURE behavior OF top_systemDac_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    component cnt_dac
  port (
    CLK     : in  std_logic;
    RST     : in  std_logic;
    DATO1   : in  std_logic_vector(7 downto 0);
    DATO2   : in  std_logic_vector(7 downto 0);
    DATO_OK : in  std_logic;
    SYNC    : out std_logic;
    SCLK    : out std_logic;
    D1      : out std_logic;
    D2      : out std_logic);
end component ;


component DAC121S101
   port (
    VOUT : out real range 0.0 to 3.5;
    SYNC : in  std_logic;
    SCLK : in  std_logic;
    DIN  : in  std_logic);
end component ;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '1';
   signal DATO1 : std_logic_vector(7 downto 0);
   signal DATO2 : std_logic_vector(7 downto 0);
   signal DATO_OK : std_logic := '0';

 	--Outputs
   signal VOUT1 : real;
   signal VOUT2 : real;
	
	
signal SYNC_comm		: std_logic;
signal SCLK_comm		: std_logic;
signal D1_comm	      : std_logic;
signal D2_comm	      : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;

 
BEGIN

cntdac:cnt_dac
	port map(		
		CLK=>CLK ,
		RST=>RST ,
		DATO1=>DATO1 ,
		DATO2=>DATO2 ,
		DATO_OK=>DATO_OK,
		SYNC=>SYNC_comm ,
		SCLK=>SCLK_comm,
		D1=>D1_comm,
		D2=>D2_comm
		); 
		
DAC1: DAC121S101
   port map (
    VOUT =>VOUT1,
    SYNC =>SYNC_comm,
    SCLK =>SCLK_comm,
    DIN  => D1_comm);
		
DAC2: DAC121S101
   port map (
    VOUT =>VOUT2,
    SYNC =>SYNC_comm,
    SCLK =>SCLK_comm,
    DIN=> D2_comm
	 );
	  

 clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
  rst_process :process
   begin
		
		wait for 100 ns;
		rst <= '0';
   end process;

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 800 ns;
      DATO1 <=std_logic_vector(to_unsigned(5, 8));
      DATO2 <=std_logic_vector(to_unsigned(10, 8));	
      DATO_OK<='1';
		wait for 10 ns;	
       DATO_OK<='0';
		 wait for 800 ns;
      DATO1 <=std_logic_vector(to_unsigned(30, 8));
      DATO2 <=std_logic_vector(to_unsigned(40, 8));	
      DATO_OK<='1';
		wait for 10 ns;	
       DATO_OK<='0';
		 wait for 800 ns;
      DATO1 <=std_logic_vector(to_unsigned(85, 8));
      DATO2 <=std_logic_vector(to_unsigned(95, 8));	
      DATO_OK<='1';
		wait for 10 ns;	
       DATO_OK<='0';
		 
   end process;

END;

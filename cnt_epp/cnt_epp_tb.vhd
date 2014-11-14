-------------- ------------------------------------------------------------------
-- Company: UAH
-- Engineer:Christopher T. Hyde
--
-- Create Date:   13:36:15 11/10/2014
-- Design Name:   
-- Module Name:  cnt_epp_tb.vhd
-- Project Name:  cnt_epp
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: cnt_epp
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 

--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY cnt_epp_tb IS
END cnt_epp_tb;
 
ARCHITECTURE rtl OF cnt_epp_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT cnt_epp
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
         ASTRB : IN  std_logic;
         DSTRB : IN  std_logic;
         DATA : INOUT  std_logic_vector(7 downto 0);
         PWRITE : IN  std_logic;
         PWAIT : OUT  std_logic;
         DATO_RD : IN  std_logic_vector(7 downto 0);
         CE_RD : OUT  std_logic;
         DIR : OUT  std_logic_vector(7 downto 0);
         DIR_VLD : OUT  std_logic;
         DATO : OUT  std_logic_vector(7 downto 0);
         DATO_VLD : OUT  std_logic
        );
    END COMPONENT;
	 
	 
		COMPONENT epp_device
			port (
			 DATA   : inout std_logic_vector(7 downto 0);
			 PWRITE : out   std_logic;
			 DSTRB   : out   std_logic;
			 ASTRB   : out   std_logic;
			 PWAIT  : in    std_logic);
		END COMPONENT;

		signal ASTRB_comm:std_logic;
		signal DSTRB_comm:std_logic;
		signal PWRITE_comm:std_logic;
		signal PWAIT_comm:std_logic;
		signal DATA_comm:std_logic_vector(7 downto 0);
		
		--cnt_epp
		
		signal 	DATO_RD_comm :std_logic_vector(7 downto 0):=x"AA";
      signal 	CE_RD :std_logic;
      signal 	DIR :std_logic_vector(7 downto 0);
      signal   DIR_VLD : std_logic;
      signal   DATO :std_logic_vector(7 downto 0);
      signal   DATO_VLD :std_logic;


   -- Clock period definitions
   constant CLK_period : time := 10 ns;
	signal clk : std_logic;
   signal rst : std_logic:='1';
 
BEGIN
 

		
	-- Instantiate the Unit Under Test (UUT)
   uut: cnt_epp PORT MAP (
          CLK => CLK,
          RST => RST,
          ASTRB => ASTRB_comm,
          DSTRB => DSTRB_comm,
          DATA => DATA_comm,
          PWRITE => PWRITE_comm,
          PWAIT => PWAIT_comm,
          DATO_RD => DATO_RD_comm,
          CE_RD => CE_RD,
          DIR => DIR,
          DIR_VLD => DIR_VLD,
          DATO => DATO,
          DATO_VLD => DATO_VLD
        );
		  
 
 	eppDevice:epp_device
	  port map(
		DATA=>DATA_comm,
		PWRITE=>PWRITE_comm,
		DSTRB=>DSTRB_comm,
		ASTRB=>ASTRB_comm,
		PWAIT=>PWAIT_comm
		);

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 
   RST_process :process
   begin	
		wait for 5 ns;
		RST <= '0';		
   end process;


END rtl;

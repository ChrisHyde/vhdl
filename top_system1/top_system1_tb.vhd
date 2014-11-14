--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:29:49 11/14/2014
-- Design Name:   
-- Module Name:   C:/Users/christopher/Dropbox/workspace/modelado14/top_system1/top_system1_tb.vhd
-- Project Name:  top_system1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: top_system1
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
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY top_system1_tb IS
END top_system1_tb;
 
ARCHITECTURE behavior OF top_system1_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top_system1
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
         ASTRB : IN  std_logic;
         DSTRB : IN  std_logic;
         DATA : INOUT  std_logic_vector(7 downto 0);
         PWRITE : IN  std_logic;
         PWAIT : OUT  std_logic;
         SWITCHES_I : IN  std_logic_vector(7 downto 0);
         PSH_BUTTON : IN  std_logic;
         LEDS_O : OUT  std_logic_vector(7 downto 0)
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
		


   signal SWITCHES_I_comm : std_logic_vector(7 downto 0) := x"CA";
   signal PSH_BUTTON_comm : std_logic := '0';
   signal LEDS_O_comm : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
	signal CLK : std_logic;
   signal RST : std_logic:='1';
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top_system1 PORT MAP (
          CLK => CLK,
          RST => RST,
          ASTRB => ASTRB_comm,
          DSTRB => DSTRB_comm,
          DATA => DATA_comm,
          PWRITE => PWRITE_comm,
          PWAIT => PWAIT_comm,
          SWITCHES_I => SWITCHES_I_comm,
          PSH_BUTTON => PSH_BUTTON_comm,
          LEDS_O => LEDS_O_comm
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
	
	PSH_BUTTON_process :process
   begin
		PSH_BUTTON_comm <= '0';
		wait for 400ns;
		PSH_BUTTON_comm <= '1';
		wait for 400ns;
   end process;
 

END;

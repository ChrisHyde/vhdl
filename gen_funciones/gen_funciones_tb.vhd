--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:17:28 12/07/2014
-- Design Name:   
-- Module Name:   C:/Users/christopher/Dropbox/workspace/modelado14/gen_funciones/gen_funciones_tb.vhd
-- Project Name:  gen_funciones
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: gen_funciones
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
 
ENTITY gen_funciones_tb IS
END gen_funciones_tb;
 
ARCHITECTURE behavior OF gen_funciones_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT gen_funciones
    PORT(
         RELOJ : IN  std_logic;
         RST : IN  std_logic;
         ASTRB : IN  std_logic;
         DSTRB : IN  std_logic;
         DATA : INOUT  std_logic_vector(7 downto 0);
         PWRITE : IN  std_logic;
         PWAIT : OUT  std_logic;
         SYNC : OUT  std_logic;
         SCLK : OUT  std_logic;
         D1 : OUT  std_logic;
         D2 : OUT  std_logic
        );
    END COMPONENT;
	 
	 COMPONENT epp_device1
			port (
			 DATA   : inout std_logic_vector(7 downto 0);
			 PWRITE : out   std_logic;
			 DSTRB   : out   std_logic;
			 ASTRB   : out   std_logic;
			 PWAIT  : in    std_logic);
		END COMPONENT;
    

   --Inputs
   signal RELOJ : std_logic := '0';
   signal RST : std_logic := '1';
   signal ASTRB_comm:std_logic;
		signal DSTRB_comm:std_logic;
		signal PWRITE_comm:std_logic;
		signal PWAIT_comm:std_logic;
		signal DATA_comm:std_logic_vector(7 downto 0);
		
		--cnt_epp
		
		signal 	DATO_RD_comm :std_logic_vector(7 downto 0);

   signal SYNC : std_logic;
   signal SCLK : std_logic;
   signal D1 : std_logic;
   signal D2 : std_logic;

   -- Clock period definitions
   constant RELOJ_period : time := 10 ns;


 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: gen_funciones PORT MAP (
          RELOJ => RELOJ,
          RST => RST,
          ASTRB => ASTRB_comm,
          DSTRB => DSTRB_comm,
          DATA => DATA_comm,
          PWRITE => PWRITE_comm,
          PWAIT => PWAIT_comm,
          SYNC => SYNC,
          SCLK => SCLK,
          D1 => D1,
          D2 => D2
        );
 	eppDevice:epp_device1
	  port map(
		DATA=>DATA_comm,
		PWRITE=>PWRITE_comm,
		DSTRB=>DSTRB_comm,
		ASTRB=>ASTRB_comm,
		PWAIT=>PWAIT_comm
		);


    RELOJ_process :process
   begin
		RELOJ <= '0';
		wait for RELOJ_period/2;
		RELOJ <= '1';
		wait for RELOJ_period/2;
   end process;
 
   RST_process :process
   begin	
		wait for 5 ns;
		RST <= '0';		
   end process;

END;

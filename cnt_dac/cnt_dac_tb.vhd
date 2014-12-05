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
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY cnt_dac_tb IS
END cnt_dac_tb;
 
ARCHITECTURE behavior OF cnt_dac_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT cnt_dac
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
         DATO1 : IN  std_logic_vector(7 downto 0);
         DATO2 : IN  std_logic_vector(7 downto 0);
         DATO_OK : IN  std_logic;
         SYNC : OUT  std_logic;
         SCLK : OUT  std_logic;
         D1 : OUT  std_logic;
         D2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '1';
   signal DATO1 : std_logic_vector(7 downto 0) :=x"99";
   signal DATO2 : std_logic_vector(7 downto 0) :=x"55";
   signal DATO_OK : std_logic := '0';

 	--Outputs
   signal SYNC : std_logic;
   signal SCLK : std_logic;
   signal D1 : std_logic;
   signal D2 : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: cnt_dac PORT MAP (
          CLK => CLK,
          RST => RST,
          DATO1 => DATO1,
          DATO2 => DATO2,
          DATO_OK => DATO_OK,
          SYNC => SYNC,
          SCLK => SCLK,
          D1 => D1,
          D2 => D2
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
      DATO_OK<='1';
		wait for 20 ns;	
       DATO_OK<='0';
   end process;

END;

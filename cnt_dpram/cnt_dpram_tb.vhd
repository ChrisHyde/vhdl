--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:51:32 12/05/2014
-- Design Name:   
-- Module Name:   C:/Users/christopher/Dropbox/workspace/modelado14/cnt_dpram/cnt_dpram_tb.vhd
-- Project Name:  cnt_dpram
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: cnt_dpram
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
 
ENTITY cnt_dpram_tb IS
END cnt_dpram_tb;
 
ARCHITECTURE behavior OF cnt_dpram_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT cnt_dpram
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
         DIR : IN  std_logic_vector(7 downto 0);
         DIR_VLD : IN  std_logic;
         DATO : IN  std_logic_vector(7 downto 0);
         DATO_VLD : IN  std_logic;
         ADDRESS : OUT  std_logic_vector(7 downto 0);
         DATA : OUT  std_logic_vector(7 downto 0);
         WE_DP1 : OUT  std_logic;
         WE_DP2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '1';
   signal DIR : std_logic_vector(7 downto 0) := (others => '0');
   signal DIR_VLD : std_logic := '0';
   signal DATO : std_logic_vector(7 downto 0) := (others => '0');
   signal DATO_VLD : std_logic := '0';

 	--Outputs
   signal ADDRESS : std_logic_vector(7 downto 0);
   signal DATA : std_logic_vector(7 downto 0);
   signal WE_DP1 : std_logic;
   signal WE_DP2 : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: cnt_dpram PORT MAP (
          CLK => CLK,
          RST => RST,
          DIR => DIR,
          DIR_VLD => DIR_VLD,
          DATO => DATO,
          DATO_VLD => DATO_VLD,
          ADDRESS => ADDRESS,
          DATA => DATA,
          WE_DP1 => WE_DP1,
          WE_DP2 => WE_DP2
        );

   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 
   RST_process :process
   begin	
		wait for 20 ns;
		RST <= '0';		
   end process;
	
	
	
		DATO_process :process
		 begin
		 if(rst='1')then
     DATO<=(others=>'0');
	  wait for 500 ns;
	  end if;	
		
		DATO <= x"55";
		DATO_VLD<='1';
		wait for 10 ns;
		DATO_VLD<='0';
		wait for 490 ns;
		DATO_VLD<='1';
		DATO <= x"69";
		wait for 10 ns;
		DATO_VLD<='0';
		wait for 490 ns;
		DATO_VLD<='1';
		DATO <= x"85";
      wait for 10 ns;
		DATO_VLD<='0';
		wait for 490 ns;
		DATO_VLD<='1';
		DATO <= x"42";
      wait for 10 ns;
		DATO_VLD<='0';
		wait for 490 ns;
		DATO_VLD<='1';
		DATO <= x"65";
      wait for 10 ns;
		DATO_VLD<='0';
		wait for 490 ns;
		DATO_VLD<='1';
		DATO <= x"00";
      wait for 10 ns;	
		wait;		
   end process;
	
	DIR_VLD_process :process
  
  begin
     if(rst='1')then
     DIR<=(others=>'0');
	  wait for 250 ns;
	  end if;
	  
		DIR <= x"a2";
		DIR_VLD<='1';
		wait for 10 ns;
		DIR_VLD<='0';
		wait for 490 ns;
		DIR_VLD<='1';
		DIR <= x"a1";
		wait for 10 ns;
		DIR_VLD<='0';
		wait for 490 ns;
		DIR_VLD<='1';
		DIR <= x"a1";
      wait for 10 ns;
		DIR_VLD<='0';
		wait for 490 ns;
		DIR_VLD<='1';
		DIR <= x"a2";
      wait for 10 ns;
		DIR_VLD<='0';
		wait for 490 ns;
		DIR_VLD<='1';
		DIR <= x"a1";
      wait for 10 ns;
		DIR_VLD<='0';
		wait for 490 ns;
		DIR_VLD<='1';
		DIR <= x"a1";
      wait for 10 ns;	
		wait;		
   end process;
	


END;

--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:26:55 12/05/2014
-- Design Name:   
-- Module Name:   C:/Users/christopher/Dropbox/workspace/modelado14/dpram_mem/dpram_mem_tb.vhd
-- Project Name:  dpram_mem
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: dpram_mem
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
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY dpram_mem_tb IS
END dpram_mem_tb;
 
ARCHITECTURE behavior OF dpram_mem_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dpram_mem
    PORT(
         DIN : IN  std_logic_vector(7 downto 0);
         ADDR_IN : IN  std_logic_vector(7 downto 0);
         ADDR_OUT : IN  std_logic_vector(7 downto 0);
         DOUT : OUT  std_logic_vector(7 downto 0);
         WE : IN  std_logic;
         CLK : IN  std_logic;
         RST : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal DIN : std_logic_vector(7 downto 0) := (others => '0');
   signal ADDR_IN : std_logic_vector(7 downto 0) := (others => '0');
   signal ADDR_OUT : std_logic_vector(7 downto 0) := (others => '0');
   signal WE : std_logic := '0';
   signal CLK : std_logic := '0';
   signal RST : std_logic := '1';
	
	signal pulseCounter: integer range 1 to 5;

 	--Outputs
   signal DOUT : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dpram_mem PORT MAP (
          DIN => DIN,
          ADDR_IN => ADDR_IN,
          ADDR_OUT => ADDR_OUT,
          DOUT => DOUT,
          WE => WE,
          CLK => CLK,
          RST => RST
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
			
			we_process :process
				begin
				we<='1';
				wait for 10 ns;
				we<='0';
				wait for 10 ns;			 
			end process;
			
			din_process:process (we,rst)
		    begin
				if (rst='1') then
					DIN <= x"09";
				elsif (we'event and we='1')then					
				DIN<=std_logic_vector(unsigned(DIN) + x"01");
				end if;
								
			end process;
			
				addressIn_process:process (we,rst)
		    begin
				if (rst='1') then
					ADDR_IN <= x"00";
				elsif (we'event and we='1')then					
				ADDR_IN<=std_logic_vector(unsigned(ADDR_IN) + x"01");
				end if;								
			end process;
			
			addressOut_process:process (clk,rst)
		    begin
				if (rst='1') then
					ADDR_OUT <= x"00";
				elsif (clk'event and clk='0')then	
							if(pulseCounter = 5)then
							pulseCounter <= 1;
                        ADDR_OUT<=std_logic_vector(unsigned(ADDR_OUT) + x"01");
						   else
							pulseCounter<=pulseCounter+1;
							end if;
				end if;								
			end process;
			

END;

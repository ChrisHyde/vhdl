library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity dpram_mem is
  port (
    DIN      : in  std_logic_vector(7 downto 0);
    ADDR_IN  : in  std_logic_vector(7 downto 0);
	 ADDR_OUT : in  std_logic_vector(7 downto 0);
    DOUT     : out std_logic_vector(7 downto 0);
    WE       : in  std_logic;
    CLK      : in  std_logic;
    RST      : in  std_logic);
   
end entity;

architecture rtl of dpram_mem is
 
type memory is array (256 downto 0) of std_logic_vector(7 downto 0); 
signal mem_pos: memory;
begin  
		process(clk)  
			begin 
				if (clk'event and clk = '1') then 
						if (WE = '1') then 
						  mem_pos(to_integer(unsigned(ADDR_IN))) <= DIN;
						end if; 
					end if; 
		end process; 
		
		process(clk)  
			begin 
				if (clk'event and clk = '1') then 				
						 DOUT <= mem_pos(to_integer(unsigned(ADDR_OUT))); 
						end if; 				
		end process; 
				
end rtl;
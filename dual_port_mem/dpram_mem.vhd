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
 
 
begin
 
  
end rtl;

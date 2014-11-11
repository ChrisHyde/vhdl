library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity gen_dir is
  port (
    CLK      : in  std_logic;
    RST      : in  std_logic;
    DIR      : in  std_logic_vector (7 downto 0);
    DIR_VLD  : in  std_logic;
    DATO     : in  std_logic_vector (7 downto 0);
    DATO_VLD : in  std_logic;
    ADDR_OUT : out std_logic_vector(7 downto 0);
    DATO_OK  : out std_logic);
end gen_dir;

architecture rtl of gen_dir is
  constant dir_frec : std_logic_vector( 7 downto 0) := x"F0";
  
begin
    
end rtl;

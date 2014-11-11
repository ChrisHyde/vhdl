library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cnt_dpram is
  port (
    CLK      : in  std_logic;
    RST      : in  std_logic;
    DIR      : in  std_logic_vector (7 downto 0);
    DIR_VLD  : in  std_logic;
    DATO     : in  std_logic_vector (7 downto 0);
    DATO_VLD : in  std_logic;
    ADDRESS  : out std_logic_vector(7 downto 0);
    DATA     : out std_logic_vector(7 downto 0);
    WE_DP1   : out std_logic;
    WE_DP2   : out std_logic);
end cnt_dpram;

architecture RTL of cnt_dpram is
  constant dir_dpram1 : std_logic_vector( 7 downto 0) := x"A1";
  constant dir_dpram2 : std_logic_vector( 7 downto 0) := x"A2";
 
begin  -- RTL

  
  
end RTL;

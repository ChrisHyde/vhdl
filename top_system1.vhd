library ieee;
use ieee.std_logic_1164.all;

entity top_system1 is
  port(
    CLK    : in    std_logic;
    RST    : in    std_logic;
    ASTRB   : in    std_logic;
    DSTRB   : in    std_logic;
    DATA   : inout std_logic_vector(7 downto 0);
    PWRITE : in    std_logic;
    PWAIT  : out   std_logic;
    SWITCHES_I : in  std_logic_vector(7 downto 0);
    PSH_BUTTON:in    std_logic;
    LEDS_O     : out std_logic_vector (7 downto 0));          
end top_system1;

architecture rtl of top_system1 is
signal DIR, , DATO, , DATO_RD   : std_logic_vector (7 downto 0);
signal DIR_VLD, DATO_VLD, CE_RD : std_logic;
begin  -- rtl

  
  DUT:entity work.cnt_epp
    port map (
        CLK      => CLK,
        RST      => RST,
        ASTRB    => ASTRB,
        DSTRB    => DSTRB,
        DATA     => DATA,
        PWRITE   => PWRITE,
        PWAIT    => PWAIT,
        DATO_RD  => DATO_RD,
        CE_RD    => CE_RD,
        DIR      => DIR,
        DIR_VLD  => DIR_VLD,
        DATO     => DATO,
        DATO_VLD => DATO_VLD);



  
end rtl;

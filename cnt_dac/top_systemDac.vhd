----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:20:46 11/13/2014 
-- Design Name: 
-- Module Name:    top_system1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_systemDac is
port (
    CLK     : in  std_logic;
    RST     : in  std_logic;
    DATO1   : in  std_logic_vector(7 downto 0);
    DATO2   : in  std_logic_vector(7 downto 0);
    DATO_OK : in  std_logic;
    VOUT1   : out real;
	 VOUT2   : out real 
     );

end top_systemDac;

architecture Behavioral of top_systemDac is

component cnt_dac
  port (
    CLK     : in  std_logic;
    RST     : in  std_logic;
    DATO1   : in  std_logic_vector(7 downto 0);
    DATO2   : in  std_logic_vector(7 downto 0);
    DATO_OK : in  std_logic;
    SYNC    : out std_logic;
    SCLK    : out std_logic;
    D1      : out std_logic;
    D2      : out std_logic);
end component ;


component DAC121S101
   port (
    VOUT : out real range 0.0 to 3.5;
    SYNC : in  std_logic;
    SCLK : in  std_logic;
    DIN  : in  std_logic);
end component ;


signal SYNC_comm		: std_logic;
signal SCLK_comm		: std_logic;
signal D1_comm	      : std_logic;
signal D2_comm	      : std_logic;


begin

cntdac:cnt_dac
	port map(		
		CLK=>CLK ,
		RST=>RST ,
		DATO1=>DATO1 ,
		DATO2=>DATO2 ,
		DATO_OK=>DATO_OK,
		SYNC=>SYNC_comm ,
		SCLK=>SCLK_comm,
		D1=>D1_comm,
		D2=>D2_comm
		); 
		
DAC1: DAC121S101
   port map (
    VOUT =>VOUT1,
    SYNC =>SYNC_comm,
    SCLK =>SCLK_comm,
    DIN  => D1_comm);
		
DAC2: DAC121S101
   port map (
    VOUT =>VOUT2,
    SYNC =>SYNC_comm,
    SCLK =>SCLK_comm,
    DIN=> D2_comm
	 );


end Behavioral;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:44:15 11/04/2014 
-- Design Name: 
-- Module Name:    cnt_epp - Behavioral 
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

entity cnt_epp is
 port (
 CLK : 		in 	std_logic;
 RST : 		in 	std_logic;
 ASTRB: 		in 	std_logic;
 DSTRB: 		in 	std_logic;
 DATA: 		inout std_logic_vector(7 downto 0);
 PWRIT: 		in 	std_logic;
 PWAIT: 		out 	std_logic;
 DATO_RD:	in 	std_logic_vector(7 downto 0);
 CE_RD: 		out 	std_logic;
 DIR: 		out 	std_logic_vector(7 downto 0);
 DIR_VLD:	out 	std_logic;
 DATO: 		out 	std_logic_vector(7 downto 0);
 DATO_VLD: 	out 	std_logic);
end cnt_epp;

architecture Behavioral of cnt_epp is

begin


end Behavioral;


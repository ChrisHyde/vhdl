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

entity top_system1 is
port (
    CLK      	: in    std_logic;
    RST      	: in    std_logic;
    ASTRB    	: in    std_logic;
    DSTRB    	: in    std_logic;
    DATA     	: inout std_logic_vector(7 downto 0);
    PWRITE   	: in    std_logic;
    PWAIT      : out   std_logic;
    SWITCHES_I : in    std_logic_vector(7 downto 0);
	 PSH_BUTTON : in    std_logic;
	 LEDS_O		: out   std_logic_vector(7 downto 0)
     );

end top_system1;

architecture Behavioral of top_system1 is

component cnt_epp
 port (
    CLK      : in    std_logic;
    RST      : in    std_logic;
    ASTRB    : in    std_logic;
    DSTRB    : in    std_logic;
    DATA     : inout std_logic_vector(7 downto 0);
    PWRITE   : in    std_logic;
    PWAIT    : out   std_logic;
    DATO_RD  : in    std_logic_vector(7 downto 0);
    CE_RD    : out   std_logic;
    DIR      : out   std_logic_vector (7 downto 0);
    DIR_VLD  : out   std_logic;
    DATO     : out   std_logic_vector (7 downto 0);
    DATO_VLD : out   std_logic);
end component ;


signal DATO_RD_comm	: std_logic_vector(7 downto 0);
signal CE_RD_comm		: std_logic;
signal DIR_comm      : std_logic_vector (7 downto 0);
signal DIR_VLD_comm	: std_logic;
signal DATO_comm		: std_logic_vector (7 downto 0);
signal DATO_VLD_comm : std_logic;

signal DIR_REG			: std_logic_vector (7 downto 0);
signal DATO_REG		: std_logic_vector (7 downto 0);

begin

cntEpp:cnt_epp
	port map(		
		CLK=>CLK ,
		RST=>RST ,
		ASTRB=>ASTRB ,
		DSTRB=>DSTRB ,
		DATA=>DATA ,
		PWRITE=>PWRITE ,
		PWAIT=>PWAIT,
		DATO_RD=>DATO_RD_comm,
		CE_RD=>CE_RD_comm,
		DIR=>DIR_comm,
		DIR_VLD=>DIR_VLD_comm,
		DATO=>DATO_comm,
		DATO_VLD=>DATO_VLD_comm	
		); 
		

  AddrBiestableD:process (CLK,RST,DIR_VLD_comm)
    begin
	 if (RST='1') then
	      DIR_REG <= (others=>'0');
	 elsif (CLK'event and CLK='1')then
			if (DIR_VLD_comm='1') then
		   DIR_REG <= DIR_comm;	     
         end if;			
    end if;
   end process;	

  DataBiestableD:process (CLK,RST,DATO_VLD_comm)
    begin
	 if (RST='1') then
	      DATO_REG <= (others=>'0');
	 elsif (CLK'event and CLK='1')then
			if (DATO_VLD_comm='1') then
		   DATO_REG <= DATO_comm;	     
         end if;			
    end if;
   end process;		


--Leds Mux	
 
	LEDS_O <= DATO_REG when (PSH_BUTTON='0') else DIR_REG;
				  
				 
				 
  CE_RDbiestableD:process (CLK,RST)
    begin
	 if (RST='1') then
	      DATO_RD_comm <= (others=>'0');
	 elsif (CLK'event and CLK='1')then
			if (CE_RD_comm='1' and DIR_comm=x"32") then
		   DATO_RD_comm <= SWITCHES_I;	     
         end if;			
    end if;
   end process;
		

end Behavioral;


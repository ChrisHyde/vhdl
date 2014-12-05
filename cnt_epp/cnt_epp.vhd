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
end ;

architecture rtl of cnt_epp is

   signal S1:std_logic; 
	signal S11:std_logic;
	signal Q:std_logic;
	
	signal S2:std_logic; 
	signal S22:std_logic;
	signal Q2:std_logic; 
	
	
begin

------------------ADDRESS---------------------------------
   AddrBiestableD1:process (CLK,RST)
    begin
	 if (RST='1') then
	      Q <= '0';
	 elsif (CLK'event and CLK='1')then	    
		   Q <= ASTRB;	      
    end if;
   end process;


   S1<= ASTRB and not Q;
	S11<=S1 and not PWRITE;
	
	
	AddrBiestableD2:process (CLK,RST)
    begin
	 if (RST='1') then
	      DIR_VLD <= '0';
	 elsif (CLK'event and CLK='1')then	    
		   DIR_VLD <= S11;	      
    end if;
   end process;
	
	
  AddrBiestableD3:process (CLK,RST,S11)
    begin
	 if (RST='1') then
	      DIR <= (others=>'0');
	 elsif (CLK'event and CLK='1')then
			if (S11='1') then
		   DIR <= DATA;	     
         end if;			
    end if;
   end process;
	

------------------END ADDRESS----------------------------



-----------------DATA------------------------------------
	   DataBiestableD1:process (CLK,RST)
    begin
	 if (RST='1') then
	      Q2 <= '0';
	 elsif (CLK'event and CLK='1')then	    
		   Q2 <= DSTRB;	      
    end if;
   end process;
	
	
	 S2<= DSTRB and not Q2;
	S22<=S2 and not PWRITE;

DataBiestableD2:process (CLK,RST)
    begin
	 if (RST='1') then
	      DATO_VLD <= '0';
	 elsif (CLK'event and CLK='1')then	    
		   DATO_VLD <= S22;	      
    end if;
   end process;
	
	
  DataBiestableD3:process (CLK,RST,S22)
    begin
	 if (RST='1') then
	      DATO <= (others=>'0');
	 elsif (CLK'event and CLK='1')then
			if (S22='1') then
		   DATO <= DATA;	     
         end if;			
    end if;
   end process;
	
--------------------END DATA----------------------------

--tristate buffer
DATA<= DATO_RD when ((PWRITE= '1') and (DSTRB='1')) else (others=>'Z');




  PWAITbiestableD:process (CLK,RST,ASTRB,DSTRB,PWRITE)
    begin
	 if (RST='1') then
	      PWAIT <= '0';
	 elsif (CLK'event and CLK='1')then
	     if ((PWRITE='0') and (ASTRB='0')) or  ((PWRITE='0') and (DSTRB='0')) or ((PWRITE='1') and (DSTRB='0')) then
		    	 PWAIT <= '1';
			else
			PWAIT <= '0';
		  end if;
    end if;
   end process;
	
	
  CE_RDbiestableD:process (CLK,RST,PWRITE)
    begin
	 if (RST='1') then
	      CE_RD <= '1';
	 elsif (CLK'event and CLK='1')then
		if (PWRITE='1') then
			CE_RD <= DSTRB;  
		end if;			
    end if;
   end process;
end rtl;


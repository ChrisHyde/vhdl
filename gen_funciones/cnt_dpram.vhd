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
  

  
type state_type is (
s0,  --HOLDING STATE
s1,  --WAIT DATA STATE
s2,  --CLOCK ENABLE STATE
s3,  --CLEAR STATE
s4   --WE_DP ENABLE STATE 
); 

signal state: 	state_type;  --current and next state declaration.
  
signal dirActual: std_logic_vector(7 downto 0); 
signal dirPrev: 	std_logic_vector(7 downto 0); 
signal CEcounter: std_logic;
signal clearCounter: std_logic;
signal addressTX: std_logic_vector(7 downto 0);
signal counter: std_logic_vector(7 downto 0);
 
begin  -- RTL

   DATA<=DATO;

		counter_proc:process(clk,rst,CEcounter,clearCounter)
		  begin
		    if (rst='1')then			   
				 counter<=(others=>'0');
		    elsif (clk'event and clk = '1') then
			    if(CEcounter='1') then
				      if(counter=x"FF")then
						  counter<=x"00";
						else
					    counter<=std_logic_vector(unsigned(counter) + 1); 
                  end if;						 
				 elsif(clearCounter='1') then
				    counter<=(others=>'0');					 
				 end if;
		    end if;
			
		end process;

ADDRESS<=counter;

	  fsm_proc:process(clk, rst,DIR_VLD,DIR,DATO_VLD,DATO)
		begin
			if(rst = '1') then
				state <= s0;
				CEcounter<='0';
				we_dp1<='0';
				we_dp2<='0';
				dirPrev<=(others=>'0');
				dirActual<=(others=>'0');
				clearCounter<='0';
				
		   elsif (clk'event and clk = '1') then	
	    	 case state is
			      
					WHEN s0 =>					  
					  we_dp1<='0';
				     we_dp2<='0';
					  clearCounter<='0';
					  dirActual<=DIR;
					   if(DIR_VLD= '1' and (DIR=dir_dpram1 or DIR=dir_dpram2))then						    
					       state<=s1;							 
					   end if;
						
					WHEN s1 =>	
					  
					   if (DATO_VLD= '1' and dirActual=dirPrev)then
							 state<=s2;
						elsif(DATO_VLD= '1' and dirActual/=dirPrev) then
							 state<=s3;
                  end if;
						 
				   WHEN s2 =>	
					
						CEcounter<='1';
						state<=s4;
						
					WHEN s3 =>				   
						
						clearCounter<='1';
						state<=s4;
					
					WHEN s4 =>
					
					   if(DIR=dir_dpram1)then
					     we_dp1<='1';
						elsif (DIR=dir_dpram2) then
				        we_dp2<='1';
						end if;						 
						 dirPrev<=DIR;
						 CEcounter<='0';
						 clearCounter<='0';
						 state<=s0;
									 
		   end case;
	     end if;
      end process;	  
end RTL;

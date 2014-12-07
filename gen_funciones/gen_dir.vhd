library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity gen_dir is

 generic ( N : integer := 68 );  
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
   
	
  type state_type is (
s0,  --HOLDING STATE
s1   --WAIT DATA STATE  
); 
signal state: 	state_type;  --current and next state declaration.
signal valor_freq: std_logic_vector( 7 downto 0);
signal cnt: std_logic_vector( 15 downto 0);
signal valor_freq_comm: std_logic_vector( 15 downto 0);
signal CE:  std_logic;
signal prescalerCounter:  unsigned(6 downto 0); --7 bits to cover generic 68 counter
signal dato_ok_trigger:  std_logic;

begin

	 prescaler_proc:process (CLK,RST)
    begin
	 if (RST='1') then
	      CE <= '0';
			prescalerCounter<=(others=>'0');
	 elsif (CLK'event and CLK='1')then	
				CE <= '0';
	        prescalerCounter<=prescalerCounter+1;
			  if (prescalerCounter = N)then
			    CE <= '1';
			    prescalerCounter<=(others=>'0');
           end if;              			  
	        
			   
     end if;
	  
end process;	



fsm_proc:process(clk, rst,valor_freq,DIR_VLD,DIR,DATO_VLD)
		begin
			if(rst = '1') then
				state <= s0;
				valor_freq<=(others=>'0');
		   elsif (clk'event and clk = '1') then	
	    	 case state is
			      
					WHEN s0 =>			
					
					   if(DIR_VLD= '1' and DIR=dir_frec)then						    
					       state<=s1;							 
					   end if;
						
					WHEN s1 =>	
					  
					   if (DATO_VLD= '1')then
						    valor_freq<=DATO;
							 state<=s0;						
                  end if;
		   end case;
	     end if;
      end process;	


              valor_freq_comm<=std_logic_vector(unsigned(valor_freq) + unsigned(cnt));

		
		
	 registro:process (clk,rst,valor_freq_comm,CE)
    begin
	 if (rst='1') then
	      cnt <= (others=>'0');
	 elsif (clk'event and clk='1')then	    
		     if (CE = '1')then
			    cnt<=valor_freq_comm;	
           end if;
     end if;
end process;


 dato_ok_trigger<='1' when (cnt /= x"0000") else ('0');

ADDR_OUT<=cnt(15 downto 8);


	 data_ok_proc:process (clk,rst,prescalerCounter,dato_ok_trigger)
    begin
	 if (rst='1') then
		DATO_OK<='0';
	 elsif (clk'event and clk='1')then	    	    
		     if (prescalerCounter = 1 and dato_ok_trigger='1')then 
			    DATO_OK<='1';
				else
				DATO_OK<='0';
				end if;
     end if;
end process;



end rtl;

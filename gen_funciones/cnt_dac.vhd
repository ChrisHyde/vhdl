library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cnt_dac is
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
end cnt_dac;

architecture RTL of cnt_dac is
  
type state_type is (
s0, --HOLDING STATE
s1, --TRANSMISSION STATE
s2 --WAITING STATE
); 

signal state: 				state_type;  --current and next state declaration.

type mux_fsm is (
mx0, --HOLDING STATE
mx1,mx2
); 

signal mxstate: 				mux_fsm;  --current and next state declaration.

signal SCLKaux: 			std_logic;
signal muxSelect: 		integer range 0 to 3;
signal muxSelectTX:     unsigned (3 downto 0);
signal CEcounter: 		std_logic;
signal DATO_1_16bits:  	std_logic_vector(15 downto 0);
signal DATO_2_16bits:  	std_logic_vector(15 downto 0);
signal endTx: 			  	std_logic;
constant countLimit : integer:=64;

constant sclkPulseValue : unsigned:="1";

signal sclkPulseCounter: integer range 0 to 1;


signal prescaler : unsigned(0 downto 0);

BEGIN
DATO_1_16bits<="0000"&DATO1&"0000";
DATO_2_16bits<="0000"&DATO2&"0000";


 gen_clk : process (clk, rst)
  begin  -- process gen_clk
    if rst = '1' then
      SCLKaux   <= '0';
      prescaler   <= (others => '0');
   elsif (clk'event and clk='1') then   -- rising clock edge
      if prescaler = X"1" then     
        prescaler   <= (others => '0');
        SCLKaux   <= not SCLKaux;
      else
        prescaler <= prescaler + "1";
      end if;
    end if;
  end process gen_clk;

SCLK <= SCLKaux;
	
--	   counter:process(rst,CEcounter,clk)
--		begin
--		   if(rst = '1') then
--			  muxSelect <= 0;	
--			  muxSelectTX<=(others=>'0');			  
--			  elsif (clk'event and clk='1') then
--			         if (CEcounter='1') then					
--             	        if(muxSelect mod (4) = 0)then
--							      muxSelectTX<=muxSelectTX+1;
--							  end if;							 
--							  if (muxSelect = countLimit ) then
--						         muxSelect <= 0;
--						     else							    
--									muxSelect <= muxSelect+1;	
--							  end if;					
--						else							 
--						   muxSelectTX<=(others=>'0');
--							muxSelect <= 0;	
--					   end if;	 
--			end if;			
--		end process;
--		
		
		
--			   counter:process(rst,CEcounter,clk)
--		begin
--		   if(rst = '1') then
--			  muxSelect <= 0;	
--			  muxSelectTX<=(others=>'0');			  
--			  elsif (clk'event and clk='1') then
--			         if (CEcounter='1') then	
--                      if (muxSelect<3)then						
--                       muxSelectTX<=(others=>'0');	 
--							 elsif (muxSelect mod (4) = 0)then
--							        muxSelectTX<=muxSelectTX+1;
--							 end if;							 
--							 if (muxSelect = countLimit ) then
--						         muxSelect <= 0;
--						     else							    
--									muxSelect <= muxSelect+1;	
--							  end if;					
--						else							 
--						   muxSelectTX<=(others=>'0');
--							muxSelect <= 0;	
--					   end if;	 
--			end if;			
--		end process;
		
		
		counter:process(rst,CEcounter,clk)
		begin
		   if(rst = '1') then
			  muxSelect <= 0;	
			  muxSelectTX<=(others=>'0');			  
			  elsif (clk'event and clk='1') then
			         if (CEcounter='1') then	                
							  if (muxSelect = 3 ) then
							        muxSelect <= 0;
							        muxSelectTX<=muxSelectTX+1;
							 else
							      muxSelect <= muxSelect+1;	
							 end if;							 
							 				
						else							 
						   muxSelectTX<=(others=>'0');
							muxSelect <= 0;	
					   end if;	 
			end if;			
		end process;
		
		
	
mux:process (muxSelectTX,DATO_1_16bits,DATO_2_16bits,clk,rst)
		begin
		 
				case muxSelectTX is
					when x"0"=> D1 <= DATO_1_16bits(15);
									D2 <= DATO_2_16bits(15);
									
					when x"1"=> D1 <= DATO_1_16bits(14);
									D2 <= DATO_2_16bits(14);
									
					when x"2" => D1 <= DATO_1_16bits(13);
									D2 <= DATO_2_16bits(13);
					
					when x"3" => D1 <= DATO_1_16bits(12);
									D2 <= DATO_2_16bits(12);
					
					when x"4" => D1 <= DATO_1_16bits(11);
									D2 <= DATO_2_16bits(11);
					
					when x"5" => D1 <= DATO_1_16bits(10);
									D2 <= DATO_2_16bits(10);
					
					when x"6" => D1 <= DATO_1_16bits(9);
									D2 <= DATO_2_16bits(9);
					
					when x"7" => D1 <= DATO_1_16bits(8);
									D2 <= DATO_2_16bits(8);
					
					when x"8" => D1 <= DATO_1_16bits(7);
									D2 <= DATO_2_16bits(7);
					
					when x"9" => D1 <= DATO_1_16bits(6);
									D2 <= DATO_2_16bits(6);
					
					when x"A"=> D1 <= DATO_1_16bits(5);
					     		   D2 <= DATO_2_16bits(5);
				  	
					when x"B"=> D1 <= DATO_1_16bits(4);
									D2 <= DATO_2_16bits(4);
					
					when x"C"=> D1 <= DATO_1_16bits(3);
									D2 <= DATO_2_16bits(3);
									
					when x"D"=> D1 <= DATO_1_16bits(2);
									D2 <= DATO_2_16bits(2);
									
					when x"E"=> D1 <= DATO_1_16bits(1);
									D2 <= DATO_2_16bits(1);
					
					when x"F"=> D1 <= DATO_1_16bits(0);
									D2 <= DATO_2_16bits(0);		
												
																		
					when others => D1 <= '0';
										D2 <= '0';
				end case;

		end process;
	
	
	  fsm_proc:process(clk, rst,endTx,DATO_OK)
		begin
			if(rst = '1') then
				state <= S0;
				 SYNC<='1';	
				 CEcounter<='0';
		elsif (clk'event and clk = '1') then	
	    	 case state is
			      when s0 =>
					  if (DATO_OK='0') then
					      SYNC<='1';	
							CEcounter<='0';								
					      --state <= s0;
					  else --if DATO_OK=1
					    state <= s1;
						  	
					  end if;
					when s1 =>		
                   CEcounter<='1';
                 SYNC<='0';						 
						 --.state <= s1;						 
						    if(endTx = '1') then
							 CEcounter<='0';	
							  SYNC<='1';
                     	state <= s2;				  
						  end if;
						 
				   when s2 =>	
					 SYNC<='1';	
					 state <= s0;				 
		   end case;
	 end if;
end process;	

--endTx <= '1' when (muxSelectTX = countLimit) else '0';

--	  fsmMux_proc:process(clk, rst, muxSelectTX)
--		begin
--			if(rst = '1') then
--				  endTx <= '0';
--		elsif (clk'event and clk = '1') then
--				if (muxSelectTX=x"F") then
--					endTx <= '1';
--				else
--					endTx <= '0';
--				end if;
--		end if;



	  fsmMux_proc:process(clk, rst,muxSelectTX)
		begin
			if(rst = '1') then
				  endTx <= '0';
				  mxstate <= mx0;
		elsif (clk'event and clk = '1') then	
	    	 case mxstate is
			      when mx0 =>
					      endTx <= '0'; 
					     	if (muxSelectTX=x"F") then
							  mxstate <= mx1;
							end if;
					when mx1 =>	
                    if (muxSelectTX=x"F") then
							  mxstate <= mx2;
							  else
							  mxstate <= mx0;	
							end if;				
					when mx2 =>	                    
							  mxstate <= mx0;
							  endTx <= '1'; 
										 			 
		   end case;
	 end if;
end process;	





--	  fsmMux_proc:process(clk, rst,muxSelectTX)
--		begin
--			if(rst = '1') then
--				  endTx <= '0';
--				  mxstate <= mx0;
--		elsif (clk'event and clk = '1') then	
--	    	 case mxstate is
--			      when mx0 =>
--					      endTx <= '0'; 
--					     	if (muxSelectTX=x"F") then
--							  mxstate <= mx1;
--							end if;
--					when mx1 =>		
--                    
--						  if (muxSelectTX=x"0") then
--						     endTx <= '1';
--							  mxstate <= mx0;
--							end if;				 			 
--		   end case;
--	 end if;
--end process;	


end RTL;

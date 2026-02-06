library ieee;
use ieee.std_logic_1164.all;

entity UpDnCntr is
	port(
		CLK    : in  std_logic;             
        	nLOAD     : in  std_logic;              
        	nCTEN     : in  std_logic;             
        	UPDN : in  std_logic; 
       	 	D      : in  std_logic_vector(3 downto 0);
       	 	Qout      : buffer std_logic_vector(3 downto 0);
        	nRCO : out std_logic;            
        	MAX_MIN : out std_logic            
	);
end entity UpDnCntr;

architecture LogicOperation of UpDnCntr is 
	component JKFlipFlop is
  	port (
    		CLK  : in std_logic;  
    		J   : in std_logic; 
    		K    : in std_logic;  
    		nPRE : in std_logic;  
    		nCLR : in std_logic;  
    		Q  : buffer std_logic; 
    		nQ  : buffer std_logic
  	);
	end component JKFlipFlop;

	
	function UpDown(A, B, C, D : in std_logic)
		return std_logic is
		begin
			return ( (A and B) or (C and D) );
	end function UpDown;

	signal Qwire : std_logic_vector(3 downto 0) := "0000";
	signal nQwire : std_logic_vector(3 downto 0) := "1111";
	signal nPREwire, nCLRwire : std_logic_vector(3 downto 0);
	signal nCTENwire : std_logic;
	signal MAX_MINwire : std_logic;
	signal Jwire : std_logic_vector(3 downto 0);
	signal Kwire : std_logic_vector(3 downto 0);
	signal T_Up, T_Dn : std_logic_vector(3 downto 0);

	begin
		Qout(0) <= Qwire(0); Qout(1) <= Qwire(1); Qout(2) <= Qwire(2); Qout(3) <= Qwire(3);
    		nQwire <= not Qwire;
		
		nCTENwire <= (not nCTEN) and nLOAD;

		process(nLOAD, D)
    			begin
        			if nLOAD = '0' then -- Active low load
            				for i in 0 to 3 loop
                				if D(i) = '1' then
                    					nPREwire(i) <= '0'; -- Preset when D=1
                    					nCLRwire(i) <= '1';
                				else
                    					nPREwire(i) <= '1';
                  	 				nCLRwire(i) <= '0'; -- Clear when D=0
                				end if;
            				end loop;
       				else
           	 			nPREwire <= (others => '1'); -- Disable PRE/CLR during counting
            				nCLRwire <= (others => '1');
        			end if;
    		end process;
		
		-- Q0 Toggle: Always
    		T_Up(0) <= '1';
    		T_Dn(0) <= '1';

    -- Q1 Toggle: Normal binary T_n, but DECADE correction must be applied
    		T_Up(1) <= Qwire(0) and not (Qwire(3) and not Qwire(2)); -- Prevent toggle from 9 to 10
    		T_Dn(1) <= nQwire(0); 

    	-- Q2 Toggle
    		T_Up(2) <= Qwire(1) and Qwire(0); 
    		T_Dn(2) <= nQwire(1) and nQwire(0) and not Qwire(3); -- Corrects 0 to 9 transition

    -- Q3 Toggle (MSB)
    		T_Up(3) <= Qwire(2) and Qwire(1) and Qwire(0); -- Normal binary T_n
    		T_Dn(3) <= nQwire(2) and nQwire(1) and nQwire(0); -- Normal binary T_n
		--process(UPDN, Qout, nCTENwire)
		--begin
			--if nCTENwire = '0' then

		process(Jwire, Kwire, nCTENwire, UPDN, T_Up, T_Dn)
    			begin
				for i in 0 to 3 loop
        				Jwire(i) <= nCTENwire and UpDown(UPDN, T_Up(i), not UPDN, T_Dn(i));
        				Kwire(i) <= Jwire(i); -- J equals K for this structure
    				end loop;
		end process;
				--Jwire(0) <= nCTENwire;  Kwire(0) <= nCTENwire;
				---J1Up <= UPDN and Qout(0); J1Dn <= not UPDN and not Qout(0);
				--UpDn1: Jwire(1) <= nCTENwire and (UpDown(UPDN, Qout(0), not UPDN, not Qout(0)));
				--UpDn2: Jwire(2) <= nCTENwire and (UpDown(J1Up, Qout(1), J1Dn, not Qout(1)));
				--UpDn3: Jwire(3) <= nCTENwire and (UpDown(J1Up and Qout(1), Qout(2), J1Dn and not Qout(1), not Qout(2)));
			--else
					--Jwire(0) <= '0'; 
					--Jwire(1) <= '0'; 
					--Jwire(2) <= '0'; Jwire(3) <= '0';
					
			--end if;
		--end process;
		FF0: JKFlipFlop port map (CLK => CLK, J => Jwire(0), K => Kwire(0), nPRE => nPREwire(0), nCLR => nCLRwire(0), Q => Qwire(0), nQ => nQwire(0));
    		FF1: JKFlipFlop port map (CLK => CLK, J => Jwire(1), K => Kwire(1), nPRE => nPREwire(1), nCLR => nCLRwire(1), Q => Qwire(1), nQ => nQwire(1));
    		FF2: JKFlipFlop port map (CLK => CLK, J => Jwire(2), K => Kwire(2), nPRE => nPREwire(2), nCLR => nCLRwire(2), Q => Qwire(2), nQ => nQwire(2));
    		FF3: JKFlipFlop port map (CLK => CLK, J => Jwire(3), K => Kwire(3), nPRE => nPREwire(3), nCLR => nCLRwire(3), Q => Qwire(3), nQ => nQwire(3));
		
    		Qout <= Qwire;
    		
    		MAX_MINwire <= '1' when 
								((UPDN = '1' and Qwire = "1001") or (UPDN = '0' and Qwire = "0000")) 
                			else '0';
                
    		MAX_MIN <= MAX_MINwire;

    		nRCO <= '0' when 
						MAX_MINwire = '1' and nCTEN = '0' -- When MAX/MIN is active HIGH AND counting is enabled (CTEN='0')
              		else '1';
end architecture LogicOperation;
	
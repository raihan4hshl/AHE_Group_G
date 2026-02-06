library ieee;
use ieee.std_logic_1164.all;

entity UpDnCntr_TB is
end entity UpDnCntr_TB;

architecture Behavioral of UpDnCntr_TB is
component UpDnCntr is 
        port (
            	CLK    : in  std_logic;             
        	nLOAD     : in  std_logic;              
        	nCTEN     : in  std_logic;             
        	UPDN : in  std_logic; 
       	 	D      : in  std_logic_vector(3 downto 0);
       	 	Qout      : buffer std_logic_vector(3 downto 0);
        	nRCO : out std_logic;            
        	MAX_MIN : out std_logic 
        );
    end component;

    signal CLK_sig   : std_logic := '0';
    signal LOAD_sig  : std_logic := '1';
    signal CTEN_sig  : std_logic := '1';
    signal DI_U_sig  : std_logic := '1';
    signal D_sig     : std_logic_vector(3 downto 0) := "0000";
    signal Q_sig     : std_logic_vector(3 downto 0);
    signal RCO_sig   : std_logic;
    signal MAX_MIN_sig : std_logic;

    constant CLK_PERIOD : time := 20 ns;

begin
    uut: UpDnCntr
        port map (
            CLK    => CLK_sig,
            nLOAD   => LOAD_sig,
            nCTEN   => CTEN_sig,
            UPDN   => DI_U_sig,
            D      => D_sig,
            Qout      => Q_sig,
            nRCO    => RCO_sig,
            MAX_MIN => MAX_MIN_sig
        );

    CLK_process : process
    begin
        loop
            CLK_sig <= '0';
            wait for CLK_PERIOD / 2;
            CLK_sig <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process CLK_process;

    Stimulus_process : process
    begin
        wait for CLK_PERIOD / 4; 
        D_sig   <= "0111"; 
        LOAD_sig <= '0';
        wait for CLK_PERIOD;
        LOAD_sig <= '1';    

        -- B. Count Up Sequence (7 -> 8 -> 9 -> 0 -> 1 -> 2)
        -- CTEN = 0 (Count Enable), DI/U = 1 (Up)
        CTEN_sig <= '0';
        DI_U_sig <= '1';
        
        -- Wait for 6 NEGATIVE clock edges (to count 7, 8, 9, 0, 1, 2)
        for i in 1 to 6 loop
            wait until falling_edge(CLK_sig);
        end loop; 
        
        -- C. Inhibit (Hold at 2)
        -- CTEN = 1 (Count Disabled)
        CTEN_sig <= '1'; 
        wait for 4 * CLK_PERIOD;
        
        -- D. Count Down Sequence (2 -> 1 -> 0 -> 9 -> 8 -> 7)
        -- CTEN = 0 (Count Enable), DI/U = 0 (Down)
        CTEN_sig <= '0';
        DI_U_sig <= '0';
        
        -- Wait for 6 NEGATIVE clock edges (to count 2, 1, 0, 9, 8, 7)
        for i in 1 to 6 loop
            wait until falling_edge(CLK_sig);
        end loop; 
        
        -- End of Test
        CTEN_sig <= '1'; 
        wait for CLK_PERIOD;
        
        report "Simulation Finished" severity NOTE;
        wait;
    end process Stimulus_process;

end architecture Behavioral;

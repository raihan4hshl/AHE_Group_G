----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/06/2025 03:09:25 PM
-- Design Name: 
-- Module Name: SevenSegmentDisplay - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
use IEEE.std_logic_unsigned.all;

entity seven_segment_display_VHDL is
    Port (
        clock_100Mhz   : in  STD_LOGIC;                   -- 100 MHz system clock on Nexys A7-100T
        reset          : in  STD_LOGIC;                   -- synchronous reset
        Seg1, Seg2, Seg3, Seg4 : in STD_LOGIC_VECTOR(6 downto 0); -- segment patterns from external logic
        Anode_Activate : out STD_LOGIC_VECTOR(3 downto 0);        -- anode enable signals
        LED_out        : out STD_LOGIC_VECTOR(6 downto 0)         -- segment output to 7-seg display
    );
end seven_segment_display_VHDL;

architecture Behavioral of seven_segment_display_VHDL is

    -- internal signals
    signal one_second_counter     : STD_LOGIC_VECTOR (27 downto 0);
    signal one_second_enable      : std_logic;
    signal displayed_number       : STD_LOGIC_VECTOR (15 downto 0);
    signal refresh_counter        : STD_LOGIC_VECTOR (19 downto 0);
    signal LED_activating_counter : std_logic_vector(1 downto 0);

begin

    --------------------------------------------------------------------------
    -- REFRESH COUNTER: creates a ~10.5 ms refresh period for multiplexing
    --------------------------------------------------------------------------
    process(clock_100Mhz, reset)
    begin 
        if (reset = '1') then
            refresh_counter <= (others => '0');
        elsif (rising_edge(clock_100Mhz)) then
            refresh_counter <= refresh_counter + 1;
        end if;
    end process;

    LED_activating_counter <= refresh_counter(19 downto 18);

    --------------------------------------------------------------------------
    -- 4-to-1 MUX for selecting which digit is active
    -- Each active anode gets its corresponding segment input
    --------------------------------------------------------------------------
    process(LED_activating_counter)
    begin
        case LED_activating_counter is
            when "00" =>
                Anode_Activate <= "0111"; -- Activate digit 1
                LED_out <= Seg1;           -- Segments for digit 1
            when "01" =>
                Anode_Activate <= "1011"; -- Activate digit 2
                LED_out <= Seg2;           -- Segments for digit 2
            when "10" =>
                Anode_Activate <= "1101"; -- Activate digit 3
                LED_out <= Seg3;           -- Segments for digit 3
            when "11" =>
                Anode_Activate <= "1110"; -- Activate digit 4
                LED_out <= Seg4;           -- Segments for digit 4
            when others =>
                Anode_Activate <= "1111";  -- all digits off
                LED_out <= (others => '1'); -- all segments off
        end case;
    end process;

    --------------------------------------------------------------------------
    -- ONE SECOND CLOCK ENABLE GENERATION
    --------------------------------------------------------------------------
    process(clock_100Mhz, reset)
    begin
        if (reset = '1') then
            one_second_counter <= (others => '0');
        elsif (rising_edge(clock_100Mhz)) then
            if (one_second_counter >= x"5F5E0FF") then  -- ≈1 second @100 MHz
                one_second_counter <= (others => '0');
            else
                one_second_counter <= one_second_counter + "0000001";
            end if;
        end if;
    end process;

    one_second_enable <= '1' when one_second_counter = x"5F5E0FF" else '0';

    --------------------------------------------------------------------------
    -- DISPLAYED NUMBER COUNTER (16-bit hexadecimal counter)
    --------------------------------------------------------------------------
    process(clock_100Mhz, reset)
    begin
        if (reset = '1') then
            displayed_number <= (others => '0');
        elsif (rising_edge(clock_100Mhz)) then
            if (one_second_enable = '1') then
                displayed_number <= displayed_number + x"0001";
            end if;
        end if;
    end process;

end Behavioral;

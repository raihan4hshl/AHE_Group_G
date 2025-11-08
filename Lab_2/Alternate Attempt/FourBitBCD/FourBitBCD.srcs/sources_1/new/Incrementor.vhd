----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/30/2025 04:52:52 PM
-- Design Name: 
-- Module Name: Incrementor - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

entity Incrementor is
    Port (
        bcd_in  : in  std_logic_vector(3 downto 0); -- current BCD value
        inc     : in  std_logic;                     -- increment input
        bcd_out : out std_logic_vector(3 downto 0); -- next BCD value
        carry   : out std_logic                      -- carry output
    );
end Incrementor;

architecture Behavioral of Incrementor is
    signal temp : unsigned(3 downto 0);
begin
    process(bcd_in, inc)
        variable val : unsigned(3 downto 0);
    begin
        val := unsigned(bcd_in);

        if inc = '1' then
            if val = 9 then
                temp <= (others => '0');  -- rollover to 0
                carry <= '1';
            else
                temp <= val + 1;          -- increment
                carry <= '0';
            end if;
        else
            temp <= val;                  -- no increment
            carry <= '0';
        end if;

        bcd_out <= std_logic_vector(temp);
    end process;
end Behavioral;

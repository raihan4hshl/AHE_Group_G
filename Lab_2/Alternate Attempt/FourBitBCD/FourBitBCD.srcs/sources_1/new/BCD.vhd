----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/30/2025 04:14:40 PM
-- Design Name: 
-- Module Name: BCD - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity BCD_With_Carry is
    Port (
        bcd_in   : in  std_logic_vector(3 downto 0);
        bcd_out  : out std_logic_vector(3 downto 0);
        carry    : out std_logic
    );
end BCD_With_Carry;

architecture Behavioral of BCD_With_Carry is
begin
    process(bcd_in)
    begin
        if bcd_in = "1001" then           -- if input = 9
            bcd_out <= "0000";            -- roll over to 0
            carry   <= '1';               -- generate carry
        elsif bcd_in <= "1000" then       -- if input = 0-8
            bcd_out <= bcd_in + 1;        -- increment
            carry   <= '0';
        else                              -- invalid BCD (10-15)
            bcd_out <= "0000";
            carry   <= '0';
        end if;
    end process;
end Behavioral;
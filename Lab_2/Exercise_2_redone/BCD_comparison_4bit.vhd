library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bcd_corrector is
    Port (
        Sum_in    : in  STD_LOGIC_VECTOR(3 downto 0); -- raw binary sum
        Carry_in  : in  STD_LOGIC;                    -- carry from binary adder (A+B+Cin)
        Ones_out  : out STD_LOGIC_VECTOR(3 downto 0); -- corrected ones digit (0..9)
        Tens_out  : out STD_LOGIC                     -- tens digit (0 or 1)
    );
end bcd_corrector;

architecture Behavioral of bcd_corrector is
    signal sum_plus6 : STD_LOGIC_VECTOR(3 downto 0);
    signal cout_plus6 : STD_LOGIC;
    signal need_corr  : STD_LOGIC;
begin
    need_corr <= Carry_in or
                 ( Sum_in(3) and (Sum_in(2) or Sum_in(1)) ) or
                 ( Sum_in(2) and Sum_in(1) );

    add6: entity work.rca_4bit
        port map (
            A => Sum_in,
            B => "0110",
            Cin => '0',
            Sum => sum_plus6,
            Cout => cout_plus6
        );

    Ones_out <= sum_plus6 when need_corr = '1' else Sum_in;
    Tens_out <= cout_plus6 when need_corr = '1' else '0';
end Behavioral;

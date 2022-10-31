library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test_bench is
--  Port ( );
end test_bench;

architecture Behavioral of test_bench is

signal a1, b1: std_logic_vector (2 downto 0);
signal pulsador: std_logic_vector (1 downto 0);
signal leds: std_logic_vector (3 downto 0);
signal display: std_logic_vector(6 downto 0);
signal common: std_logic_vector(7 downto 0);

begin

UUT:entity work.adder3bits_deco
port map ( 
    a1 => a1, b1 => b1, pulsador => pulsador, leds => leds, display => display, common => common );

stim_proc: process begin

pulsador <= "00";
a1 <= "001";
b1 <= "011";

wait for 20ns;

a1 <= "111";
b1 <= "011";
pulsador <= "01";

wait;
end process;

end;

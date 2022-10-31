library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adder3bits_deco is
    Port ( a1, b1: in std_logic_vector ( 2 downto 0 );
          pulsador: in std_logic_vector(1 downto 0);
          leds: out std_logic_vector(3 downto 0);
          display: out std_logic_vector(6 downto 0);
          common: out std_logic_vector(7 downto 0));
end adder3bits_deco;

architecture Behavioral of adder3bits_deco is

signal sig_deco: std_logic_vector (3 downto 0);
signal sig_suma: std_logic_vector (2 downto 0);
signal carry: std_logic;

begin

s1:entity work.adder3bits
port map ( 
    a => a1, b => b1, out_adder => sig_suma, cout_end => carry );
 
s2:entity work.bcdDecoder
port map ( 
    in_deco => sig_deco, display => display, common => common );

sig_deco <= carry & sig_suma WHEN pulsador = "00" ELSE
            '0' & a1 WHEN pulsador = "01" ELSE
            '0' & b1 WHEN pulsador = "10" ELSE
            carry & sig_suma WHEN pulsador = "11" ELSE
            "0000";


leds <= carry & sig_suma;

end Behavioral;

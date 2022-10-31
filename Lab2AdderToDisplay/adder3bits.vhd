library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adder3bits is
    Port ( a, b: in std_logic_vector(2 downto 0);
         out_adder: out std_logic_vector(2 downto 0);
         cout_end: out std_logic );
end adder3bits;

architecture Behavioral of adder3bits is

signal sig_Cout1, sig_Cout2: std_logic;

begin

F1:entity work.fullAdder
port map (
  a => a(0),b => b(0), s => out_adder(0), cin => '0', cout => sig_Cout1);

F2:entity work.fullAdder
port map (
  a => a(1),b => b(1), s => out_adder(1), cin => sig_Cout1, cout => sig_Cout2);
  
F3:entity work.fullAdder
port map (
  a => a(2),b => b(2), s => out_adder(2), cin => sig_Cout2, cout => cout_end);       
  
end Behavioral;

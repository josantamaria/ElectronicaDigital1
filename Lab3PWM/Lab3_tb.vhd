library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Lab3_tb is
--  Port ( );
end Lab3_tb;

architecture Behavioral of Lab3_tb is

signal clk, rst, pulse : std_logic:='0';
signal pulsador        : std_logic_vector(1 downto 0);

begin

UUT:entity work.ex_div
port map ( 
    clk => clk, rst => rst, pulse => pulse, pulsador => pulsador);

stimulo_clk: process begin     
clk <= '0';
wait for 5 ns;
clk <= '1';
wait for 5 ns;
end process;

stim_proc: process begin

rst <= '0';
pulsador <= "00";

wait for 20ns;

rst <= '0';
pulsador <= "01";

wait for 20ns;

rst <= '0';
pulsador <= "10";

wait for 20ns;

rst <= '0';
pulsador <= "11";

wait for 20ns;

rst <= '1';
pulsador <= "00";

wait;
end process;

end;

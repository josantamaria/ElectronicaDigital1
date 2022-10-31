library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test_bench is
--  Port ( );
end test_bench;

architecture Behavioral of test_bench is

signal clk     :   std_logic:='0' ;
signal rst     :   std_logic:='0' ;
signal start   :   std_logic:='0' ;
signal led     :   std_logic:='0' ;
signal display :   std_logic_vector(6 downto 0);
signal common  :   std_logic_vector(7 downto 0);

begin

UUT:entity work.fsm 
port map(
    clk => clk, rst => rst, display => display, common => common, led => led, start => start);

stimulo_clk: process begin     
clk <= '0';
wait for 5 ns;
clk <= '1';
wait for 5 ns;
end process;
				
stim_proc: process begin
wait for 20 ns;
rst<='0';
start<='0';
wait for 20 ns;
rst<='1';
start<='0';
wait for 20 ns;
rst<='0';
start<='0';
wait for 20 ns;
rst<='0';
start<='1';
wait;
end process;
end;
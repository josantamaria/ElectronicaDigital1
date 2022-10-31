library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity counterComplete is
    port (clk, rst :  in std_logic;
         display   : out std_logic_vector(6 downto 0);
         common    : out std_logic_vector(7 downto 0);
         led       : out std_logic); 
end counterComplete;

architecture Behavioral of counterComplete is

signal enable: std_logic;
signal sig_deco: std_logic_vector(3 downto 0);

begin

s1:entity work.enable
port map ( 
    clk => clk, rst => rst, en => enable);
 
s2:entity work.counter
port map ( 
    clk => enable, rst => rst, number => sig_deco);

s3:entity work.deco
port map ( 
    in_deco => sig_deco, display => display, common => common);
    
led <= '1' when rst = '1' else
       '0';    
    
end Behavioral;

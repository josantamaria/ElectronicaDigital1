library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity ex_div is
    port (clk, rst :  in std_logic;
        pulsador: in std_logic_vector(1 downto 0);
        led, led_rst, pulse: out std_logic);
end ex_div;

architecture Behavioral of ex_div is

signal dd, qq : std_logic_vector(28 downto 0) := (others => '0');
signal ovf    : std_logic;

begin

mux_add  : 
    dd <= qq + 1  when ovf = '0' else
        (others=>'0'); 

-- ? [Hz]
ovf_com  :		-- Hace que la salida sea 0, nuevamente por pasar de 50M		
    ovf <= '1' when qq = x"2FAF080" else -- 50[M]
        '0';

-- Flip-Flop
process (clk, rst)
begin  
   if rst = '1' then
      qq <= (others => '0');
   elsif (clk'event and clk = '1') then
      qq <= dd;
   else
      qq <= qq;
   end if;
end process;
		
-- output
pulse <= '1' WHEN ( qq < x"989680"  and pulsador = "00" ) ELSE -- 20% 10M
         '1' WHEN ( qq < x"1312D00" and pulsador = "01" ) ELSE -- 40% 20M
         '1' WHEN ( qq < x"1C9C380" and pulsador = "10" ) ELSE -- 60% 30M
         '1' WHEN ( qq < x"2625A00" and pulsador = "11" ) ELSE -- 80% 40M
         '0';

led   <= '1' WHEN ( qq < x"989680"  and pulsador = "00" ) ELSE -- 20% 10M
         '1' WHEN ( qq < x"1312D00" and pulsador = "01" ) ELSE -- 40% 20M
         '1' WHEN ( qq < x"1C9C380" and pulsador = "10" ) ELSE -- 60% 30M
         '1' WHEN ( qq < x"2625A00" and pulsador = "11" ) ELSE -- 80% 40M
         '0';     

led_rst <= '1' WHEN rst = '1' ELSE
           '0';     
     
end Behavioral;
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity counter is
    port (clk, rst :  in std_logic;
         number    : out std_logic_vector(3 downto 0));
end counter;

architecture Behavioral of counter is

-- counter signals
signal dd, qq : std_logic_vector(4 downto 0) := (others => '0');
signal ovf    : std_logic;

begin

mux_add  : 
    dd <= qq + 1  when ovf = '0' else
        (others=>'0'); 

-- ? [Hz]
ovf_com  :		-- Hace que la salida sea 0, nuevamente por pasar de 10		
    ovf <= '1' when qq = x"50" else -- 10
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
number <= "0000" WHEN qq = x"0" ELSE -- 0
          "0001" WHEN qq = x"1" ELSE -- 1
          "0010" WHEN qq = x"2" ELSE -- 2
          "0011" WHEN qq = x"3" ELSE -- 3
          "0100" WHEN qq = x"4" ELSE -- 4
          "0101" WHEN qq = x"5" ELSE -- 5
          "0110" WHEN qq = x"6" ELSE -- 6
          "0111" WHEN qq = x"7" ELSE -- 7
          "1000" WHEN qq = x"8" ELSE -- 8
          "1001" WHEN qq = x"9" ELSE -- 9
          "0000";

end Behavioral;
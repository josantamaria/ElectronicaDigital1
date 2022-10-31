library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity enable is
    port (clk, rst :  in std_logic;
          en       : out std_logic);
end enable;

architecture Behavioral of enable is

signal dd, qq : std_logic_vector(28 downto 0) := (others => '0');
signal ovf    : std_logic;

begin

mux_add  : 
    dd <= qq + 1  when ovf = '0' else
        (others=>'0'); 

-- ? [Hz]
ovf_com  : -- Hace que la salida sea 0, nuevamente por pasar de 100M		
    ovf <= '1' when qq = x"5F5E100" else -- 100[M]
    --ovf <= '1' when qq = x"0000100" else -- 100[M]
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
    en <= '1' WHEN qq = x"5F5E0FF" ELSE --Genera un pulso de 10ns cuando pasa por 1000ms - 10ns 
   -- en <= '1' WHEN qq = x"00000FF" ELSE
         '0';
 
end Behavioral;
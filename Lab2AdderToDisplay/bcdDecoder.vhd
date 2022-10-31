library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bcdDecoder is
    Port( in_deco: in std_logic_vector(3 downto 0);
           display: out std_logic_vector(6 downto 0);
           common: out std_logic_vector(7 downto 0));    
end bcdDecoder;

architecture Behavioral of bcdDecoder is

begin

--          abcdefg 
display <= "0000001" WHEN  in_deco = "0000" ELSE  -- 0
           "1001111" WHEN  in_deco = "0001" ELSE  -- 1
           "0010010" WHEN  in_deco = "0010" ELSE  -- 2
           "0000110" WHEN  in_deco = "0011" ELSE  -- 3
           "1001100" WHEN  in_deco = "0100" ELSE  -- 4
           "0100100" WHEN  in_deco = "0101" ELSE  -- 5
           "0100000" WHEN  in_deco = "0110" ELSE  -- 6
           "0001111" WHEN  in_deco = "0111" ELSE  -- 7
           "0000000" WHEN  in_deco = "1000" ELSE  -- 8
           "0001100" WHEN  in_deco = "1001" ELSE  -- 9
           "0001000" WHEN  in_deco = "1010" ELSE  -- A
           "1100000" WHEN  in_deco = "1011" ELSE  -- B
           "0110001" WHEN  in_deco = "1100" ELSE  -- C
           "1000010" WHEN  in_deco = "1101" ELSE  -- D
           "0110000" WHEN  in_deco = "1110" ELSE  -- E
           "0111000" WHEN  in_deco = "1111" ELSE  -- F            
           "0000001";

--common <= "00000001";
common <= "11111110";

end Behavioral;


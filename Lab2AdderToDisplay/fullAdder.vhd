library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fullAdder is
    Port (a, b, cin: in std_logic;
    s, cout : out std_logic);
end fullAdder;

architecture Behavioral of fullAdder is

begin

s <= a xor b xor cin ;
cout <= (a and b) or (cin and(a xor b));

end Behavioral;


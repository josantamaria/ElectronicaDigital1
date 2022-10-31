library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adderv1 is
   Port (a, b, cin: in std_logic;
      s, cout : out std_logic);
end adderv1;

architecture Behavioral of adderv1 is

begin
s <= a xor b xor cin ;
cout <= (a and b) or (cin and(a xor b));

end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adderv1_tb is
end adderv1_tb;

architecture Behavioral of adderv1_tb is

component adderv1 is
Port (a, b, cin: in std_logic;
      s, cout : out std_logic);
end component adderv1;

--Inputs
signal a : std_logic := '0';
signal b : std_logic := '0';
signal cin : std_logic := '0';

--Outputs
signal s: std_logic;
signal cout: std_logic;

begin
uut: adderv1 port map (
a => a,
b => b,
cin => cin,
s => s,
cout => cout);

-- Stimulus procces
stim_proc: process 
begin
-- hold reset state for 100 ns 
wait for 10 ns;

-- insert stimulus here
a <= '0'; b <= '0'; cin <= '0';
wait for 10 ns;

a <= '0'; b <= '0'; cin <= '1';
wait for 10 ns;

a <= '1'; b <= '0'; cin <= '0';
wait for 10 ns;

a <= '1'; b <= '1'; cin <= '1';
wait for 10 ns;

wait;
end process;

end;
-- end Behavioral;









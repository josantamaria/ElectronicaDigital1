library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity fsm is
	port(   clk, rst, start:  in std_logic;
			display        : out std_logic_vector(6 downto 0);
			common         : out std_logic_vector(7 downto 0);
			sonido         : out std_logic;
			led            : out std_logic
	);
end fsm; 

architecture Behavioral of fsm is

signal enable: std_logic;

type states is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9);
signal present_state, next_state: states;

begin

--===================
-- Declaraciones fuera de la fms
--===================

a1:entity work.enable
port map ( 
    clk => clk, rst => rst, en => enable);

led <= '1' when rst = '1' else
       '0';
       
common <= "01111111";

--===================
-- Present State
--===================
process(clk, rst)
  begin
  if rst = '1' then
    present_state <= s0;
  elsif (clk'event and clk='1') then
    if enable='1' then
	   present_state <= next_state;
    else		
	   present_state <= present_state;
	 end if;
  end if;
end process;

		
--===================
-- Next state logic
--===================
process(present_state, start) -- start
  begin 
  case present_state is 
    when s0 =>
	   if (start = '1') then -- start
		   next_state <= s1;
		else 
		   next_state <= s0;
		end if;

    when s1 =>
	      next_state <= s0;

    when s2 =>
	      next_state <= s3;

    when s3 =>
	      next_state <= s4;

    when s4 =>
	      next_state <= s5;

    when s5 =>
	      next_state <= s6;

    when s6 =>
	      next_state <= s7;

    when s7 =>
	      next_state <= s8;

    when s8 =>
	      next_state <= s9;
	
	when s9 =>
	      next_state <= s0;      
			
  end case;
end process;
	
--===================	
-- Output logic
--===================
process(present_state)
  begin
  case present_state is
    when s0 =>
	   display <= "0000001"; -- 0
	   sonido  <= '0';

    when s1 =>
	   display <= "1001111"; -- 1
       sonido  <= '1';

    when s2 =>
	   display <= "0010010"; -- 2

    when s3 =>
	   display <= "0000110"; -- 3

    when s4 =>
	   display <= "1001100"; -- 4

    when s5 =>
	   display <= "0100100"; -- 5

    when s6 =>
	   display <= "0100000"; -- 6

    when s7 =>
	   display <= "0001111"; -- 7

    when s8 =>
	   display <= "0000000"; -- 8
	 
	when s9 =>
	   display <= "0001100"; -- 9  
						
  end case;
end process;

		  
end Behavioral;


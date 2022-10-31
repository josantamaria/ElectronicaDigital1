----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/23/2022 05:52:42 PM
-- Design Name: 
-- Module Name: Adder4bit - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Adder4bit is
 Port ( a,b: in std_logic_vector(3 downto 0);
       leds: out std_logic_vector(3 downto 0);
       cout1: out std_logic );
end Adder4bit;

architecture Behavioral of Adder4bit is

signal C1,C2,C3: std_logic;

begin

F1:entity work.adderv1

port map (
  a => a(0),b => b(0), s => leds(0), cin => '0', cout => C1
);

F2:entity work.adderv1
port map (
  a => a(1),b => b(1), s => leds(1), cin => C1, cout => C2);
  
F3:entity work.adderv1
port map (
  a => a(2),b => b(2), s => leds(2), cin => C2, cout => C3);
  
F4:entity work.adderv1
port map (a => a(3),b => b(3), s => leds(3), cin => C3, cout => cout1);       
  
		



end Behavioral;

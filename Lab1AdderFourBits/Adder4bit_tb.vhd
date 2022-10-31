----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/23/2022 06:15:42 PM
-- Design Name: 
-- Module Name: Adder4bit_tb - Behavioral
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

entity Adder4bit_tb is
--  Port ( );
end Adder4bit_tb;

architecture Behavior of Adder4bit_tb is

signal a,b: std_logic_vector(3 downto 0);
signal leds: std_logic_vector(3 downto 0);
signal cout1: std_logic; 

begin

UUT: entity work.Adder4bit
port map(a => a, b => b, leds => leds, cout1 => cout1);

stim_proc: process begin

a <= "0001";
b <= "0001";

wait for 20ns;

a <= "0001";
b <= "0011";

wait for 20ns;

a <= "0111";
b <= "0011";

wait for 20ns;

a <= "1001";
b <= "1000";

wait for 20ns;

a <= "0100";
b <= "0011";

wait;
end process;

end;

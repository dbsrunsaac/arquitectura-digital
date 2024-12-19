library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity andGate is
Port (A, B : in STD_LOGIC;
Y : out STD_LOGIC);
end entity;

architecture Behavioral of andGate is
begin
Y <= A and B;
end Behavioral;
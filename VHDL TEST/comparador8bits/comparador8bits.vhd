library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity comparador8Bits is
    Port (
        A, B : in STD_LOGIC_VECTOR (7 downto 0);
        igual, Amayor, Amenor: out std_logic
    );
end entity;

architecture Behavioral of comparador8Bits is
begin
    process(A, B)
    begin
        if A = B then
            igual <= '1';
            Amayor <= '0';
            Amenor <= '0';
        elsif A < B then
            igual <= '0';
            Amenor <= '1';
            Amayor <= '0';
        else
            igual <= '0';
            Amenor <= '0';
            Amayor <= '1';
        end if;
    end process;
end architecture;

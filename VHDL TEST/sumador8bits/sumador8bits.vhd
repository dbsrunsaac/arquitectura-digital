library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sumador8bits is
    Port (
        A : in STD_LOGIC_VECTOR (7 downto 0);
        B : in STD_LOGIC_VECTOR (7 downto 0);
        SUM : out STD_LOGIC_VECTOR (7 downto 0)
    );
end entity;

architecture Behavioral of sumador8bits is
begin
    process(A, B)
    begin
        SUM <= A + B;
    end process;
end architecture;

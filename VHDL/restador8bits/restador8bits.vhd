library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity restador8Bits is
    Port (
        A : in std_logic_vector (7 downto 0);
        B : in std_logic_vector (7 downto 0);
        diferencia : out std_logic_vector (7 downto 0);
        desbordamiento : out std_logic
    );
end entity;

architecture Behavioral of restador8Bits is
    signal tempA : std_logic_vector (8 downto 0);
    signal tempB : std_logic_vector (8 downto 0);
    signal resta_temporal : std_logic_vector (8 downto 0);
begin
    process(A, B)
    begin
        tempA <= '0' & A; -- Extender A a 9 bits
        tempB <= '0' & B; -- Extender B a 9 bits

        resta_temporal <= tempB - tempA;

        diferencia <= resta_temporal(7 downto 0); -- Resultado de 8 bits
		  
        -- Verificar desbordamiento
        if (A(7) = '0' and B(7) = '1' and resta_temporal(8) = '1') or
           (A(7) = '1' and B(7) = '0' and resta_temporal(8) = '0') then
            desbordamiento <= '1';
        else
            desbordamiento <= '0';
        end if;
    end process;
end architecture;

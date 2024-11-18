library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity divisor8Bits is
    Port (
        A : in std_logic_vector (7 downto 0); -- Dividendo
        B : in std_logic_vector (7 downto 0); -- Divisor
        cociente : out std_logic_vector (7 downto 0);
        residuo : out std_logic_vector (7 downto 0)
    );
end entity;

architecture Behavioral of divisor8Bits is
    signal temp_cociente : unsigned (7 downto 0);
	 signal temp_residuo : unsigned (7 downto 0);
	 signal tempA :  unsigned (7 downto 0);
	 signal tempB : unsigned (7 downto 0);
begin
    process(A, B)
    begin
		  tempA <= unsigned(A);
		  tempB <= unsigned(B);
		  
		  -- Verifica que no se realice una división por cero
        if tempB /= 0 then
            temp_cociente <= tempA / tempB;
            temp_residuo <= tempA mod tempB;
        else
            temp_cociente <= (others => '0');
            temp_residuo <= (others => '0');
        end if;
    end process;
    
    cociente <= std_logic_vector(temp_cociente);
    residuo <= std_logic_vector(temp_residuo);
end architecture;


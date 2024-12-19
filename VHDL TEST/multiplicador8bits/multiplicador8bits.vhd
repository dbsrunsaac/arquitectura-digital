library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity multiplicador8bits is
    Port (
        A, B : in std_logic_vector (7 downto 0);
		  en : in std_logic;
		  final : out std_logic;
        producto : out std_logic_vector (15 downto 0)
    );
end entity;

architecture Behavioral of multiplicador8bits is
begin
    process(A, B)
    begin
        if en = '1' then
			producto <= A * B;
			final <= '1';
		  else
			final <= '0';
			producto <= (others => '0');
		  end if;
    end process;
end architecture;

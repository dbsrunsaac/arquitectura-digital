library ieee;

use ieee.std_logic_1164.all;

entity mux8bits is 
port(
	A, B : in std_logic_vector(7 downto 0);
	selector : in std_logic;
	C : out std_logic_vector(7 downto 0)
);
end entity;

architecture Arch of mux8bits is
begin
	process(selector) 
	begin
		if selector = '0' then
			C <= A;
		else
			C <= B;
		end if;
	end process;
end architecture;
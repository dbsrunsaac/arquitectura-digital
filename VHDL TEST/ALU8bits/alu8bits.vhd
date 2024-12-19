library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity alu8bits is
port(
	A, B : in std_logic_vector(	 downto 0);
	selector : in std_logic_vector(2 downto 0);
	C : out std_logic_vector(	 downto 0)
);
end entity;

architecture arch of alu8bits is
begin
	process(selector)
	begin
		case selector is
			when "000" =>
				C <= A + B;
			when "001" =>
				C <= A - B;
			when "010" =>
				C <= A * B;
			when others =>
				C <= others => '0';
		end case;
	end process;

end architecture;
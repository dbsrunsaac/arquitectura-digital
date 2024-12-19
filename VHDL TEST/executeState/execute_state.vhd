library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity Execute_State is
Port (
	opcode : in std_logic_vector(2 downto 0);
	operand : in std_logic_vector(4 downto 0);
	result : out std_logic_vector(7 downto 0);
	exec_done : out std_logic
);
end Execute_State;

architecture Behavioral of Execute_State is
begin
	process(opcode, operand)
	begin
		case opcode is
		when "000" => result <= std_logic_vector(resize(unsigned(operand) + 1,8));
		when "001" => result <= std_logic_vector(resize(unsigned(operand) - 1, 8));
		when others => result <= (others => '0');
		end case;
		exec_done <= '1';
	end process;
end Behavioral;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decode_State is
Port (
	instr_in : in std_logic_vector(7 downto 0);
	opcode : out std_logic_vector(2 downto 0);
	operand : out std_logic_vector(4 downto 0)
);
end Decode_State;
architecture Behavioral of Decode_State is
begin
	process(instr_in)
	begin
		opcode <= instr_in(7 downto 5);
		operand <= instr_in(4 downto 0);
	end process;
end Behavioral;
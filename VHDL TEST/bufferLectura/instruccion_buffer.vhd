library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Instruccion_Buffer is
Port (
	clk : in std_logic;
	instr_in : in std_logic_vector(7 downto 0);
	load : in std_logic;
	instr_out : out std_logic_vector(7 downto 0)
);
end Instruccion_Buffer;

architecture Behavioral of Instruccion_Buffer is
	signal trans: std_logic_vector(7 downto 0) := (others => '0');
begin
process(clk)
begin
	if rising_edge(clk) then
		if load = '1' then
			trans <= instr_in;
		end if;
	end if;
	end process;
	instr_out <= trans;
end Behavioral;
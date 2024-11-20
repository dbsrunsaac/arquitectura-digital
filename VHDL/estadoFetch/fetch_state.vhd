library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity Fetch_State is
Port (
	clk : in std_logic;
	reset : in std_logic;
	addr_out : out std_logic_vector(4 downto 0);
	fetch_done : out std_logic
);
end Fetch_State;

architecture Behavioral of Fetch_State is
	signal addr: std_logic_vector(4 downto 0) := "00000";
begin
	process(clk, reset)
	begin
		if reset = '1' then
			addr <= "00000";
			fetch_done <= '0';
		elsif rising_edge(clk) then
			addr <= addr + 1;
			fetch_done <= '1';
		end if;
	end process;
	addr_out <= addr;
end Behavioral;
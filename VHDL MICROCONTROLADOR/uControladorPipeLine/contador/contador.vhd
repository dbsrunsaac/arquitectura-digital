-- contador
library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;

entity contador is
port(
	clk : in std_logic;
	en : in std_logic;
	cnt_out : out std_logic_vector(7 downto 0)
);
end entity;

architecture arch of contador is
signal cnt_temp : std_logic_vector(7 downto 0);
begin
	process (clk, en, cnt_temp)
	begin
		if (en = '1') then
			if( clk'event and clk = '1' ) then
				cnt_temp <= cnt_temp + 1;
				cnt_out <= cnt_temp;
			end if;
		end if;
	end process;
	
end architecture;
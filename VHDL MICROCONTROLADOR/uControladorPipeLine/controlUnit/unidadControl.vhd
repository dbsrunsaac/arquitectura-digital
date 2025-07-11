library ieee;
use ieee.std_logic_1164.all;

entity unidadControl is 
port(
	clk: in std_logic;
	x, y : out std_logic
);
end entity;

architecture arch of unidadControl is

-- señales para la maquina de estados: Moore

type states is (A, B, C, D);
signal est_prev, est_sig : states;

begin
	process (est_prev, est_sig) 
	begin
		case est_prev is
			when A => 
				x <= '0'; y <= '0';
				est_sig <= B;
			when B => 
				x <= '0'; y <= '1';
				est_sig <= C;
			when C =>
				x <= '1'; y <= '0';
				est_sig <= D;
			when D => <
				x <= '1'; y <= '1';
				est_sig <= A;
		end case;
	end process;
	
	process (clk) 
	begin
		if (clk'event and clk='1') then
			est_prev <= est_sig;
		end if;
	end process;
	
end architecture;
library ieee;
use ieee.std_logic_1164.all;

entity unidadControl is 
port(
	clk, x1, x2 : in std_logic;
	f : out std_logic
);
end entity;

architecture arch of unidadControl is

-- señales para la maquina de estados: Moore

type states is (A, B, C, D, E);
signal est_prev, est_sig : states;

begin
	process(clk, est_prev, est_sig)
	begin
		case est_prev is
			when A => f <= '0'; 
			
				if (x1 = '0' and x2 = '0') then est_sig <= B;
					elsif (x1 = '1' and x2 = '1') then est_sig <= B;
				else 
					est_sig <= A;
				end if;
			
			when B => f <= '0'; 
			
				if (x1 = '0' and x2 = '0') then est_sig <= C;
					elsif (x1 = '1' and x2 = '1') then est_sig <= C;
				else 
					est_sig <= A;
				end if;
				
			when C => f <= '0'; 
			
				if (x1 = '0' and x2 = '0') then est_sig <= D;
					elsif (x1 = '1' and x2 = '1') then est_sig <= D;
				else 
					est_sig <= A;
				end if;
			
			when D => f <= '0'; 
			
				if (x1 = '0' and x2 = '0') then est_sig <= E;
					elsif (x1 = '1' and x2 = '1') then est_sig <= E;
				else 
					est_sig <= A;
				end if;
			
			when E => f <= '1'; 
			
				if (x1 = '0' and x2 = '0') then est_sig <= E;
					elsif (x1 = '1' and x2 = '1') then est_sig <= E;
				else 
					est_sig <= A;
				end if;
		end case;
	end process;
	
	process(clk) 
	begin
		
		if (clk'event and clk='1') then
			est_prev <= est_sig;
		end if;
	end process;
end architecture;
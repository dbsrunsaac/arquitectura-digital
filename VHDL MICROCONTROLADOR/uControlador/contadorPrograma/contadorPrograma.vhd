library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity contadorPrograma is
Port (
	Clock : in STD_LOGIC; -- Señal de reloj
	Reset : in STD_LOGIC; -- Señal de reinicio
	PCWrite : in STD_LOGIC; -- Señal para habilitar la escritura en el PC
	JumpAddress : in STD_LOGIC_VECTOR(7 downto 0); -- Dirección para operaciones de salto
	PCOut : out STD_LOGIC_VECTOR(7 downto 0) -- Dirección actual del PC
);
end entity;

architecture Arch of contadorPrograma is
signal PC : STD_LOGIC_VECTOR(7 downto 0) := (others => '0'); -- Registro del PC inicializado en 0
begin
	process(Clock, Reset)
	begin
		if Reset = '1' then
			PC <= (others => '0'); -- Reiniciar PC a 0
		elsif rising_edge(Clock) then
			if PCWrite = '1' then
				PC <= JumpAddress; -- Cargar dirección de salto
			else
				PC <= PC + 1; -- Incrementar PC para la siguiente instrucción
			end if;
		end if;
	end process;
	PCOut <= PC; -- Salida del PC
end architecture;
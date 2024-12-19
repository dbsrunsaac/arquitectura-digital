library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity registroInstruccion is
Port (
	Clock : in STD_LOGIC; -- Señal de reloj
	Reset : in STD_LOGIC; -- Señal de reinicio
	IRWrite : in STD_LOGIC; -- Señal para habilitar escritura en el IR
	InstrIn : in STD_LOGIC_VECTOR(7 downto 0); -- Instrucción desde la memoria
	InstrOut : out STD_LOGIC_VECTOR(7 downto 0) -- Instrucción almacenada
);
end entity;

architecture arch of registroInstruccion is
signal IR : STD_LOGIC_VECTOR(7 downto 0) := (others => '0'); -- Registro de instrucciones
begin
	process(Clock, Reset)
	begin
	if Reset = '1' then
		IR <= (others => '0'); -- Reiniciar el registro a 0
	elsif rising_edge(Clock) then
		if IRWrite = '1' then
			IR <= InstrIn; -- Cargar instrucción desde la memoria
		end if;
	end if;
	end process;
	InstrOut <= IR; -- Salida del registro de instrucciones
end architecture;
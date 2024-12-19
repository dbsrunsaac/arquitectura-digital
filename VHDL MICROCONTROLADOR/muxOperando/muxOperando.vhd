library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity muxOperando is
Port (
	Input1 : in STD_LOGIC_VECTOR(15 downto 0); -- Entrada 1: Valor del Banco de Registros
	Input2 : in STD_LOGIC_VECTOR(15 downto 0); -- Entrada 2: Valor inmediato de la instrucción
	selector : in STD_LOGIC; -- Señal de selección
	Output : out STD_LOGIC_VECTOR(15 downto 0) -- Salida: Operando seleccionado
);
end entity;

architecture Behavioral of muxOperando is
begin
	process(Input1, Input2, selector)
	begin
		if selector = '0' then
			Output <= Input1; -- Seleccionar valor del Banco de Registros
		else
			Output <= Input2; -- Seleccionar valor inmediato
		end if;
	end process;
end architecture;
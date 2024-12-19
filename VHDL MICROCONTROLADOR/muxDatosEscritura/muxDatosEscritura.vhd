library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity muxDatosEscritura is
Port (
	Input1 : in STD_LOGIC_VECTOR(7 downto 0); -- Entrada 1: Resultado de la ALU
	Input2 : in STD_LOGIC_VECTOR(7 downto 0); -- Entrada 2: Datos leídos de la memoria
	selector : in STD_LOGIC; -- Señal de selección
	Output : out STD_LOGIC_VECTOR(7 downto 0) -- Salida: Datos seleccionados
);
end entity;

architecture Arch of muxDatosEscritura is
begin
	process(Input1, Input2, selector)
	begin
		if selector = '0' then
			Output <= Input1; -- Seleccionar datos de la ALU
		else
			Output <= Input2; -- Seleccionar datos de la memoria
		end if;
	end process;
end architecture;
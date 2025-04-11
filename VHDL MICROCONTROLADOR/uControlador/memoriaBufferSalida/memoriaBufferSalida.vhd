library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.numeric_std.ALL;

entity memoriaBufferSalida is
Port (
	Address : in STD_LOGIC_VECTOR(7 downto 0); -- Dirección de memoria
	DataIn : in STD_LOGIC_VECTOR(7 downto 0); -- Datos de entrada (escritura)
	DataOut : out STD_LOGIC_VECTOR(7 downto 0); -- Datos de salida (lectura)
	MemRead : in STD_LOGIC; -- Señal para habilitar lectura
	MemWrite : in STD_LOGIC; -- Señal para habilitar escritura
	Clock : in STD_LOGIC -- Señal de reloj
);
end entity;

architecture Arch of memoriaBufferSalida is
	type Memory_Array is array (0 to 255) of STD_LOGIC_VECTOR(7 downto 0);
	--signal Memory : Memory_Array := (others => (others => '0')); -- Memoria inicializada en 0
	signal Memory : Memory_Array := (
		0 => "00010001", 1 => "00000001", 2 => "00000000", 3 => "00000000", 4 => "00000000", 5 => "00000000", 6 => "00000000", 7 => "00000000",
		8 => "00000000", 9 => "00000000", 10 => "00000000", 11 => "00000000", 12 => "00000000", 13 => "00000000", 14 => "00000000", 15 => "00000000",
		16 => "00000000",
		others => "00000000" -- Resto de valores en cero 
	);
	signal BufferData : STD_LOGIC_VECTOR(7 downto 0); -- Buffer de salida
begin
	process(Clock)
	begin
	if rising_edge(Clock) then
		if MemRead = '1' then
			BufferData <= Memory(to_integer(unsigned(Address)));
		end if;
		if MemWrite = '1' then
			Memory(to_integer(unsigned(Address))) <= DataIn;
		end if;
	end if;
	end process;
	DataOut <= BufferData; -- Buffer conectado a la salida de datos
end architecture;
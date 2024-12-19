library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity bancoRegistros is
Port (
	Clock : in STD_LOGIC; -- Señal de reloj
	Reset : in STD_LOGIC; -- Señal de reinicio
	RegWrite : in STD_LOGIC; -- Señal para habilitar escritura en registros
	ReadReg1 : in STD_LOGIC_VECTOR(3 downto 0); -- Dirección del primer registro a leer
	ReadReg2 : in STD_LOGIC_VECTOR(3 downto 0); -- Dirección del segundo registro a leer
	WriteReg : in STD_LOGIC_VECTOR(3 downto 0); -- Dirección del registro a escribir
	WriteData : in STD_LOGIC_VECTOR(15 downto 0); -- Datos a escribir en el registro
	ReadData1 : out STD_LOGIC_VECTOR(15 downto 0); -- Datos leídos del primer registro
	ReadData2 : out STD_LOGIC_VECTOR(15 downto 0) -- Datos leídos del segundo registro
);
end entity;

architecture Arch of bancoRegistros is
	type Register_File is array (0 to 15) of STD_LOGIC_VECTOR(15 downto 0);
	signal Registers : Register_File := (others => (others => '0')); -- Inicializar registros en 0
begin
	-- Proceso para lectura de registros
	process(ReadReg1, ReadReg2, Registers)
		begin
		ReadData1 <= Registers(to_integer(unsigned(ReadReg1)));
		ReadData2 <= Registers(to_integer(unsigned(ReadReg2)));
	end process;
	-- Proceso para escritura en registros
	process(Clock, Reset)
	begin
		if Reset = '1' then
			Registers <= (others => (others => '0')); -- Reiniciar todos los registros a 0
		elsif rising_edge(Clock) then
			if RegWrite = '1' then
				Registers(to_integer(unsigned(WriteReg))) <= WriteData; -- Escribir datos en el registro
			end if;
		end if;
	end process;
end architecture;
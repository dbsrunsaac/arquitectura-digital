-- Librerías necesarias para el uso de señales y tipos de datos estándar
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Declaración de la entidad del multiplexor
entity Mux2to1 is
    Port ( A : in STD_LOGIC;       -- Entrada A
           B : in STD_LOGIC;       -- Entrada B
           Sel : in STD_LOGIC;     -- Selección (0 para A, 1 para B)
           Y : out STD_LOGIC);     -- Salida Y
end entity;

-- Implementación del multiplexor
architecture Arch of Mux2to1 is
begin
    -- Proceso para seleccionar la salida en función de 'Sel'
    process(A, B, Sel)
    begin
        if Sel = '0' then
            Y <= A;                -- Si Sel es 0, salida igual a A
        else
            Y <= B;                -- Si Sel es 1, salida igual a B
        end if;
    end process;
end architecture;
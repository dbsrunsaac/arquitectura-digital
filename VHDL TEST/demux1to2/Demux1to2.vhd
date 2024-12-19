library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Declaración de la entidad del demultiplexor
entity Demux1to2 is
    Port ( A : in STD_LOGIC;       -- Entrada
           Sel : in STD_LOGIC;     -- Selección (0 para Y0, 1 para Y1)
           Y0 : out STD_LOGIC;     -- Salida Y0
           Y1 : out STD_LOGIC);    -- Salida Y1
end Demux1to2;

-- Implementación del demultiplexor
architecture Behavioral of Demux1to2 is
begin
    -- Proceso para asignar la entrada a una de las salidas
    process(A, Sel)
    begin
        if Sel = '0' then
            Y0 <= A;               -- Si Sel es 0, A se asigna a Y0
            Y1 <= '0';
        else
            Y0 <= '0';
            Y1 <= A;               -- Si Sel es 1, A se asigna a Y1
        end if;
    end process;
end Behavioral;
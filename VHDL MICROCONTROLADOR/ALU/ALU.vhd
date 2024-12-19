library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU is
Port (
	A : in STD_LOGIC_VECTOR(7 downto 0); -- Operando A
	B : in STD_LOGIC_VECTOR(7 downto 0); -- Operando B
	ALUOp : in STD_LOGIC_VECTOR(3 downto 0); -- Señal de operación desde Unidad de Control
	Resultado : out STD_LOGIC_VECTOR(15 downto 0); -- Resultado de la operación
	Zero : out STD_LOGIC -- Señal de Zero (resultado cero)
);
end entity;

architecture arch of ALU is
	signal Resultado_Internal : STD_LOGIC_VECTOR(15 downto 0); -- Señal interna
begin
	process(A, B, ALUOp)
	begin
		case ALUOp is
		when "0001" => -- ADD 
			Resultado_Internal <= "00000000" & std_logic_vector(unsigned(A) + unsigned(B));
		when "0010" => -- SUB
			Resultado_Internal <= "00000000" & std_logic_vector(unsigned(A) - unsigned(B));
		when "0011" => -- MUL
			Resultado_Internal <= std_logic_vector(unsigned(A) * unsigned(B));
		when "0100" => -- AND
			Resultado_Internal <= "00000000" & A and "00000000" & B;
		when "0101" => -- OR
			Resultado_Internal <= "00000000" & A or "00000000" & B;
		when "0110" => -- XOR
			Resultado_Internal <= "00000000" & A xor "00000000" & B;
		when "1000" => -- LSL (Desplazamiento a la izquierda)
			Resultado_Internal <= std_logic_vector(shift_left(unsigned("00000000" & A), 1));
		when "1001" => -- LSR (Desplazamiento a la derecha)
			Resultado_Internal <=  std_logic_vector(shift_right(unsigned("00000000" & A), 1));
		when others =>
			Resultado_Internal <= (others => '0'); -- Operación no definida
		end case;
		-- Señal de Zero
		if Resultado_Internal = "0000000000000000" then
			Zero <= '1';
		else
			Zero <= '0';
		end if;
	end process;
	-- Asignar la señal interna a la salida
	Resultado <= Resultado_Internal;
end architecture;
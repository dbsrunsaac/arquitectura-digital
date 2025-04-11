library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity unidadControl is
Port (
	Clock : in STD_LOGIC; -- Señal de reloj
	Reset : in STD_LOGIC; -- Señal de reinicio
	Opcode : in STD_LOGIC_VECTOR(3 downto 0); -- Código de operación (bits [15:12] de la instrucción)
	RegDest : in STD_LOGIC_VECTOR(3 downto 0); -- Registro destino (bits [11:8])
	SrcReg1 : in STD_LOGIC_VECTOR(3 downto 0); -- Registro fuente 1 (bits [7:4])
	SrcReg2_Imm : in STD_LOGIC_VECTOR(3 downto 0); -- Registro fuente 2 o valor inmediato (bits [3:0])
	Zero : in STD_LOGIC; -- Señal de la ALU que indica resultado cero
	RegWrite : out STD_LOGIC; -- Habilita escritura en registros
	ALUOp : out STD_LOGIC_VECTOR(3 downto 0); -- Define operación de la ALU
	MemRead : out STD_LOGIC; -- Habilita lectura en memoria
	MemWrite : out STD_LOGIC; -- Habilita escritura en memoria
	PCWrite : out STD_LOGIC; -- Permite actualizar el PC
	IRWrite : out STD_LOGIC; -- Habilita escritura en el IR
	SelMuxDatos : out STD_LOGIC; -- Selección para MUX de Datos de Escritura 
	SelMuxOp : out STD_LOGIC; -- Selección para MUX de Operandos
	ReadReg1 : out STD_LOGIC_VECTOR(3 downto 0); -- Dirección de registro fuente 1
	ReadReg2 : out STD_LOGIC_VECTOR(3 downto 0); -- Dirección de registro fuente 2
	WriteReg : out STD_LOGIC_VECTOR(3 downto 0) -- Dirección de registro destino
);
end entity;

architecture arch of unidadControl is
begin
	process(Clock, Reset)
	begin
		if Reset = '1' then
			RegWrite <= '0';
			ALUOp <= "0000";
			MemRead <= '0';
			MemWrite <= '0';
			PCWrite <= '0';
			IRWrite <= '0';
			SelMuxDatos <= '0';
			SelMuxOp <= '0';
			ReadReg1 <= (others => '0');
			ReadReg2 <= (others => '0');
			WriteReg <= (others => '0');
	
		elsif rising_edge(Clock) then
	-- Decodificación del Opcode
			case Opcode is
			when "0001" => -- ADD
				RegWrite <= '1';
				ALUOp <= "0001";
				SelMuxOp <= '0'; -- Operando desde Banco de Registros
				ReadReg1 <= SrcReg1;
				ReadReg2 <= SrcReg2_Imm;
				WriteReg <= RegDest;
			when "0010" => -- SUB
				RegWrite <= '1';
				ALUOp <= "0010";
				SelMuxOp <= '0';
				ReadReg1 <= SrcReg1;
				ReadReg2 <= SrcReg2_Imm;
				WriteReg <= RegDest;
			when "0111" => -- MOV
				RegWrite <= '1';
				SelMuxDatos <= '1'; -- Fuente: Memoria
				WriteReg <= RegDest;
			when "1011" => -- BEQ
				if Zero = '1' then
					PCWrite <= '1';
				end if;
			when "1100" => -- BNE
				if Zero = '0' then
					PCWrite <= '1';	
				end if;
			when "0000" => -- NOP
				null;
			when others =>
				null;
			end case;
		end if;
	end process;
end architecture;
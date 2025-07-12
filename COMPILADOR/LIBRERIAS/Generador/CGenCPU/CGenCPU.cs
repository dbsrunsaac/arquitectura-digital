using System;
using System.Collections.Generic;
using System.IO;

namespace CGenCPU
{
    public class GenCPU
    {
        // Atributos
        private Dictionary<string, string> aInstrucciones;

        // Constructor
        public GenCPU()
        {
            aInstrucciones = new Dictionary<string, string>
            {
                { "NOP", "00000000" },
                { "LOAD", "00000001" },
                { "STORE", "00000010" },
                { "MOV", "00000011" },
                { "JMP", "00000100" },
                { "ADD", "00000101" },
                { "SUB", "00000110" },
                { "MUL", "00000111" },
                { "AND", "00001001" },
                { "OR", "00001010" },
                { "XOR", "00001011" },
                { "CMP", "00001100" },
                { "ZERO", "00001101" },
                { "OVERFLOW", "00001110" },
                { "IN", "00001111"},
                { "OUT", "00010000" }
            };
        }

        // Propiedades
        public Dictionary<string, string> Instrucciones
        {
            get { return aInstrucciones; }
            set { aInstrucciones = value; }
        }

        // Método para convertir un número a binario de 8 bits
        private string ConvertirNumeroABinario(int numero)
        {
            return Convert.ToString(numero, 2).PadLeft(8, '0');
        }

        // Método para convertir una cadena binaria a decimal
        private Int16 ConvertirBinarioADecimal(string binario)
        {
            return Convert.ToInt16(binario, 2);
        }

        // Método para procesar una línea de instrucción y convertirla a un valor decimal
        private Int16 ProcesarLinea(string linea)
        {
            string[] partes = linea.Trim().Split(' ');
            string instruccion = partes[0].ToUpper();

            if (!aInstrucciones.ContainsKey(instruccion))
            {
                throw new Exception($"Instrucción no reconocida: {instruccion}");
            }

            string codigoBinario = aInstrucciones[instruccion];
            string operandoBinario = "00000000";

            // Si hay un operando, convertirlo a binario de 4 bits y concatenarlo
            if (partes.Length > 1)
            {
                if (int.TryParse(partes[1], out int operando))
                {
                    operandoBinario = ConvertirNumeroABinario(operando);
                }
                else
                {
                    throw new Exception($"Operando no válido para la instrucción {instruccion}: {partes[1]}");
                }
            }

            string binarioCompleto = codigoBinario + operandoBinario;
            
            // Retorna una cadena de 16bits
            return ConvertirBinarioADecimal(binarioCompleto);
        }

        // Método para generar código binario desde un archivo CLI
        public byte[] GenerarCodigoBinarioDesdeCLI(string rutaCLI)
        {
            string[] lineas = File.ReadAllLines(rutaCLI);
            if (lineas.Length < 1)
            {
                throw new Exception("El archivo CLI debe contener al menos una instrucción.");
            }

            using (MemoryStream ms = new MemoryStream())
            using (BinaryWriter bw = new BinaryWriter(ms))
            {
                foreach (string linea in lineas)
                {
                    Int16 valorDecimal = ProcesarLinea(linea);
                    bw.Write(valorDecimal);
                }

                bw.Flush();
                return ms.ToArray();
            }
        }
    }
}

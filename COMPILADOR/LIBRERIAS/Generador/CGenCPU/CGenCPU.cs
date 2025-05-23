﻿using System;
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
                { "NOP", "0000" },
                { "ADD", "0001" },
                { "SUB", "0010" },
                { "MUL", "0011" },
                { "AND", "0100" },
                { "OR", "0101" },
                { "XOR", "0110" },
                { "MOV", "0111" },
                { "LSL", "1000" },
                { "LSR", "1001" },
                { "B", "1010" },
                { "BEQ", "1011" },
                { "BNE", "1100" },
                { "LDA", "1101" },
                { "OUTA", "1110"}
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
        private byte ConvertirBinarioADecimal(string binario)
        {
            return Convert.ToByte(binario, 2);
        }

        // Método para procesar una línea de instrucción y convertirla a un valor decimal
        private byte ProcesarLinea(string linea)
        {
            string[] partes = linea.Trim().Split(' ');
            string instruccion = partes[0].ToUpper();

            if (!aInstrucciones.ContainsKey(instruccion))
            {
                throw new Exception($"Instrucción no reconocida: {instruccion}");
            }

            string codigoBinario = aInstrucciones[instruccion];
            string operandoBinario = "0000";

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
            return ConvertirBinarioADecimal(binarioCompleto);
        }

        // Método para generar código binario desde un archivo CLI
        public byte[] GenerarCodigoBinarioDesdeCLI(string rutaCLI)
        {
            try
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
                        byte valorDecimal = ProcesarLinea(linea);
                        bw.Write(valorDecimal);
                    }

                    bw.Flush();
                    return ms.ToArray();
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error al generar el código binario: " + ex.Message);
            }
        }
    }
}

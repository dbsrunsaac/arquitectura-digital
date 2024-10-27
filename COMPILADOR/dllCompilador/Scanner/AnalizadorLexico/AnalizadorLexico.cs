using System;
using System.Collections.Generic;

namespace AnalizadorLexico
{
    public class CScanner
    {
        // Definición de los estados de la FSM (Máquina de Estados Finitos)
        private enum Estado
        {
            Inicio,         // Estado inicial de la FSM
            Identificador,  // Estado para reconocer identificadores y palabras clave
            Numero,         // Estado para reconocer números
            Operador,       // Estado para reconocer operadores
            Simbolo,        // Estado para reconocer símbolos como paréntesis y llaves
            Comentario,     // Estado para ignorar comentarios de una línea
            Cadena,         // Estado para reconocer cadenas de texto
            Error,          // Estado para manejar errores léxicos
            Fin             // Estado final cuando se ha procesado toda la entrada
        }

        // Definición de los tipos de tokens
        public enum TokenType
        {
            Pc,   // Pc PalabraClave
            Id,   // Id Identificador
            Nm,   // Nm Numero
            Op,   // Op Operador
            Sm,   // Sm Simbolo
            Cd,   // Cd Cadena
            Cmt,  // Cmt Comentario
            Ds,   // Ds Desconocido
            Fn    // Fn Fin de Archivo
        }

        // Conjuntos de palabras clave, operadores y símbolos
        private static readonly HashSet<string> PalabrasClave = new HashSet<string>
        {
            "if", "else", "while", "def", "return", "and", "or", "not", "print", "input", "True", "False"
        };

        private static readonly HashSet<string> Operadores = new HashSet<string>
        {
            "+", "-", "*", "/", "%", "=", "==", "!=", ">", "<", ">=", "<="
        };

        private static readonly HashSet<char> Simbolos = new HashSet<char>
        {
            '(', ')', '{', '}', ':', ','
        };

        // Atributos de la clase
        private readonly string aEntrada;   // Código fuente a analizar (Ingreso del todo el código generado)
        private int aIndice;                // Índice actual en el código fuente ?
        private Estado aEstadoActual;       // Estado actual de la FSM (enum, definido antes)
        private int aLineaActual;           // Número de línea actual en el código fuente 

        // Constructor
        public CScanner(string entrada)
        {
            aEntrada = entrada; // La clase de inicializa con el código fuente generado
            aIndice = 0; 
            aEstadoActual = Estado.Inicio; 
            aLineaActual = 1; // Linea de Inicio
        }

        // Método para analizar el código fuente

        // Tokeniza cada palabra del código fuente junto con su palabra asociada
        /*
         * Pc : def
         * Id : sumar
         * Sm : (
         * Id : a
         * Op : +
         */
        public List<(TokenType, string)> Analizar() // Lista de Tokens (enum) 
        {
            List<(TokenType, string)> tokens = new List<(TokenType, string)>();
            string tokenActual = string.Empty;

            while (aEstadoActual != Estado.Fin)
            {
                char caracterActual = ObtenerSiguienteCaracter();

                // Procesamiento de estados
                switch (aEstadoActual)
                {
                    case Estado.Inicio:
                        ProcesarEstadoInicio(caracterActual, ref tokenActual, tokens);
                        break;

                    case Estado.Comentario:
                        ProcesarEstadoComentario(caracterActual, ref tokenActual, tokens);
                        break;

                    case Estado.Cadena:
                        ProcesarEstadoCadena(caracterActual, ref tokenActual, tokens);
                        break;

                    case Estado.Identificador:
                        ProcesarEstadoIdentificador(caracterActual, ref tokenActual, tokens);
                        break;

                    case Estado.Numero:
                        ProcesarEstadoNumero(caracterActual, ref tokenActual, tokens);
                        break;

                    case Estado.Operador:
                        ProcesarEstadoOperador(caracterActual, ref tokenActual, tokens);
                        break;

                    case Estado.Error:
                        aEstadoActual = Estado.Fin;
                        break;
                }
            }

            // Añadir token de fin de archivo
            tokens.Add((TokenType.Fn, "EOF"));
            return tokens;
        }

        // Método para obtener el siguiente carácter de la entrada (mediante recorrido)
        private char ObtenerSiguienteCaracter()
        {
            if (aIndice < aEntrada.Length)
            {
                return aEntrada[aIndice++];
            }
            else
            {
                aEstadoActual = Estado.Fin; // Transición al estado Fin cuando se termina la entrada
                return '\0';
            }
        }

        // Método para retractar el índice de la entrada
        private void Retractar()
        {
            if (aIndice > 0)
            {
                aIndice--;
            }
        }

        // Método para verificar si el carácter es el inicio de un operador
        private bool EsInicioOperador(char c)
        {
            return "+-*/%=!><".Contains(c);
        }

        // Método para verificar si el carácter es parte de un operador
        private bool EsParteOperador(char c)
        {
            return "=<>".Contains(c);
        }

        // Método para procesar el estado de inicio
        private void ProcesarEstadoInicio(char caracterActual, ref string tokenActual, List<(TokenType, string)> tokens)
        {
            // Válida si existe un espacio en blanco y un salto de línea e incrementa 
            if (char.IsWhiteSpace(caracterActual))
            {
                if (caracterActual == '\n')
                {
                    aLineaActual++;
                }
                // Manejo de espacios en blanco y líneas en blanco
            }
            else if (caracterActual == '#')
            {
                // Transición al estado Comentario
                aEstadoActual = Estado.Comentario;
                tokenActual += caracterActual;
            }
            else if (caracterActual == '"')
            {
                // Transición al estado Cadena
                aEstadoActual = Estado.Cadena;
            }
            else if (char.IsLetter(caracterActual))
            {
                // char nos permite saber si se tiene una letra, para pasar al esta Identificador
                // Transición al estado Identificador
                aEstadoActual = Estado.Identificador;
                tokenActual += caracterActual;
            }
            else if (char.IsDigit(caracterActual))
            {
                // Transición al estado Numero
                aEstadoActual = Estado.Numero;
                tokenActual += caracterActual;
            }
            else if (Simbolos.Contains(caracterActual))
            {
                // Manejo directo de símbolos
                tokens.Add((TokenType.Sm, caracterActual.ToString()));
            }
            else if (EsInicioOperador(caracterActual))
            {
                // Transición al estado Operador
                aEstadoActual = Estado.Operador;
                tokenActual += caracterActual;
            }
            else
            {
                // Transición al estado Error en caso de carácter inesperado
                aEstadoActual = Estado.Error;
                Console.WriteLine($"Error léxico en la línea {aLineaActual}: Caracter inesperado '{caracterActual}'");
            }
        }

        // Método para procesar el estado de comentario
        private void ProcesarEstadoComentario(char caracterActual, ref string tokenActual, List<(TokenType, string)> tokens)
        {
            // \n (conjunto de carácteres que definen un salto de línea)
            if (caracterActual == '\n')
            {
                aLineaActual++; // Luego de cada salto de línea
                // Agregar token de comentario
                tokens.Add((TokenType.Cmt, tokenActual));
                tokenActual = string.Empty;
                // Transición de regreso al estado Inicio al final del comentario
                aEstadoActual = Estado.Inicio;
            }
            else
            {
                // Construcción del token de comentario
                tokenActual += caracterActual;
            }
        }

        // Método para procesar el estado de cadena
        private void ProcesarEstadoCadena(char caracterActual, ref string tokenActual, List<(TokenType, string)> tokens)
        {
            if (caracterActual == '\\')
            {
                tokenActual += caracterActual;
                caracterActual = ObtenerSiguienteCaracter();
            }

            if (caracterActual == '"')
            {
                // Agregar token de cadena
                tokens.Add((TokenType.Cd, tokenActual));
                tokenActual = string.Empty;
                // Transición de regreso al estado Inicio
                aEstadoActual = Estado.Inicio;
            }
            else
            {
                // Construcción del token de cadena
                tokenActual += caracterActual;
            }
        }

        // Método para procesar el estado de identificador
        private void ProcesarEstadoIdentificador(char caracterActual, ref string tokenActual, List<(TokenType, string)> tokens)
        {
            if (char.IsLetterOrDigit(caracterActual) || caracterActual == '_')
            {
                // Continuar construyendo el identificador
                tokenActual += caracterActual;
            }
            else
            {
                // Determinar tipo de identificador y agregar token
                TokenType tipo = DeterminarTipoDeIdentificador(tokenActual);
                tokens.Add((tipo, tokenActual));
                tokenActual = string.Empty;
                // Transición de regreso al estado Inicio
                aEstadoActual = Estado.Inicio;
                // Retroceder para reanalizar el carácter actual en el estado Inicio
                Retractar();
            }
        }

        // Método para determinar el tipo de identificador
        private TokenType DeterminarTipoDeIdentificador(string identificador)
        {
            if (PalabrasClave.Contains(identificador))
            {
                return TokenType.Pc; // Identificar como palabra clave
            }

            return TokenType.Id; // Identificar como identificador
        }

        // Método para procesar el estado de número
        private void ProcesarEstadoNumero(char caracterActual, ref string tokenActual, List<(TokenType, string)> tokens)
        {
            if (char.IsDigit(caracterActual))
            {
                // Continuar construyendo el número
                tokenActual += caracterActual;
            }
            else
            {
                // Agregar token de número
                tokens.Add((TokenType.Nm, tokenActual));
                tokenActual = string.Empty;
                // Transición de regreso al estado Inicio
                aEstadoActual = Estado.Inicio;
                // Retroceder para reanalizar el carácter actual en el estado Inicio
                Retractar();
            }
        }

        // Método para procesar el estado de operador
        private void ProcesarEstadoOperador(char caracterActual, ref string tokenActual, List<(TokenType, string)> tokens)
        {
            if (EsParteOperador(caracterActual))
            {
                tokenActual += caracterActual;
                if (Operadores.Contains(tokenActual))
                {
                    // Agregar token de operador
                    tokens.Add((TokenType.Op, tokenActual));
                    tokenActual = string.Empty;
                    // Transición de regreso al estado Inicio
                    aEstadoActual = Estado.Inicio;
                }
            }
            else
            {
                if (Operadores.Contains(tokenActual))
                {
                    // Agregar token de operador
                    tokens.Add((TokenType.Op, tokenActual));
                }
                else
                {
                    // Transición al estado Error en caso de operador inválido
                    aEstadoActual = Estado.Error;
                    Console.WriteLine($"Error léxico en la línea {aLineaActual}: Operador inválido '{tokenActual}'");
                }
                tokenActual = string.Empty;
                // Transición de regreso al estado Inicio
                aEstadoActual = Estado.Inicio;
                // Retroceder para reanalizar el carácter actual en el estado Inicio
                Retractar();
            }
        }
    }
}



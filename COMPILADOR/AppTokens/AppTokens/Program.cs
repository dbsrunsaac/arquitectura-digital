using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppTokens
{
    // Clase para representar un token
    public class Token
    {
        // Atributo para el tipo de token (Variable, Operador, Asignación, etc.)
        private string aTokenType;

        // Atributo para el valor del token (como el valor de la variable o el operador)
        private string aValue;

        // Constructor para inicializar el token con su tipo y valor
        public Token(string tokenType, string value)
        {
            aTokenType = tokenType;  // Asignar el tipo de token (como "Vr" para variable)
            aValue = value;          // Asignar el valor del token (como "a", "+", etc.)
        }

        // Propiedad para obtener el tipo del token
        public string ATokenType
        {
            get { return aTokenType; }
        }

        // Propiedad para obtener el valor del token
        public string AValue
        {
            get { return aValue; }
        }

        // Método personalizado para obtener la representación del token
        public string GetTokenInfo()
        {
            return $"{aTokenType}: {aValue}";
        }
    }

    // Clase para representar el analizador léxico (tokenizador)
    public class Lexer
    {
        // Lista de tokens generados
        private List<Token> aTokens;

        // Constructor para inicializar la lista de tokens
        public Lexer()
        {
            aTokens = new List<Token>();
        }

        // Método para tokenizar la expresión utilizando una máquina de estados
        public void Tokenize(string input)
        {
            int state = 0;  // Estado inicial de la máquina de estados
            string currentToken = "";  // Para almacenar caracteres del token actual

            // Recorrer cada carácter de la entrada
            foreach (char c in input)
            {
                switch (state)
                {
                    // Estado 0: Operaciones ("+", "-", "*", "/", "!")
                    case 0:
                        if (c == '+' || c == '-' || c == '*' || c == '/' || c == '!')
                        {
                            // Agregar el token de operación
                            aTokens.Add(new Token("Op", c.ToString()));
                            // Permanecer en el estado 0, ya que las operaciones son de un solo carácter
                        }
                        else if (char.IsLetter(c))
                        {
                            // Si el carácter es una letra, empezar a formar un token de tipo variable
                            currentToken += c;
                            state = 1;  // Transición al estado 1 (reconocimiento de variables)
                        }
                        else if (c == '=')
                        {
                            // Si el carácter es '=', es una asignación

                            state = 2;  // Transición al estado 2 (asignaciones)
                        }
                        else if (c == '(' || c == ')')
                        {
                            state = 3;
                            currentToken = c.ToString();
                            break;
                        }
                        else if (char.IsWhiteSpace(c))
                        {
                            // Ignorar los espacios en blanco
                            // Permanecer en el estado 0
                        }
                        else
                        {
                            // Si se encuentra un carácter no reconocido, lanzar una excepción
                            throw new Exception("Carácter no reconocido: " + c);
                        }
                        break;

                    // Estado 1: Reconocimiento de variables (letras o dígitos)
                    case 1:
                        if (char.IsLetterOrDigit(c))
                        {
                            // Si el carácter es una letra o un dígito, continuar formando el token
                            currentToken += c;
                        }
                        else
                        {
                            // Si el carácter no es letra ni dígito, terminar el token actual (variable)
                            aTokens.Add(new Token("Vr", currentToken));
                            currentToken = "";  // Reiniciar el token actual
                            state = 0;  // Volver al estado 0 para seguir procesando

                            // Volver a procesar el carácter actual desde el estado inicial si no es un espacio
                            if (!char.IsWhiteSpace(c))
                            {
                                Tokenize(c.ToString());  // Procesar el carácter actual en el estado 0
                            }
                        }
                        break;

                    // Estado 2: Asignación ("=")
                    case 2:
                        // Agregar el token de asignación
                        aTokens.Add(new Token("As", "="));
                        state = 0;  // Volver al estado 0 para seguir procesando

                        // Volver a procesar el carácter actual desde el estado 0 si no es un espacio
                        if (!char.IsWhiteSpace(c))
                        {
                            Tokenize(c.ToString());  // Procesar el carácter actual en el estado 0
                        }
                        break;
                    case 3:
                        // Agregar el token de simbolo
                        aTokens.Add(new Token("Sb", currentToken ));
                        currentToken = "";
                        state = 0;

                        // Volver a procesar el carácter actual desde el estado 0 si no es un espacio
                        if (!char.IsWhiteSpace(c))
                        {
                            Tokenize(c.ToString());  // Procesar el carácter actual en el estado 0
                        }
                        break;
                }
            }

            // Si queda un token sin agregar al final, agregarlo
            if (state == 1 && currentToken.Length > 0)
            {
                aTokens.Add(new Token("Vr", currentToken));
            }
        }


        // Método para guardar los tokens en un archivo de texto
        public void SaveTokensToFile(string filePath)
        {
            using (StreamWriter writer = new StreamWriter(filePath))
            {
                foreach (Token token in aTokens)
                {
                    writer.WriteLine(token.GetTokenInfo());
                }
            }
        }

        // Método para mostrar los tokens en pantalla
        public void DisplayTokens()
        {
            Console.WriteLine("Tokens generados:");
            foreach (Token token in aTokens)
            {
                Console.WriteLine(token.GetTokenInfo());
            }
        }
    }
    internal class Program
    {
        static void Main(string[] args)
        {
            // Crear una instancia del Lexer
            Lexer lexer = new Lexer();

            // La expresión a tokenizar
            string expression = "Suma = ( a + b ) * c";

            // Tokenizar la expresión
            lexer.Tokenize(expression);

            // Mostrar los tokens en pantalla
            lexer.DisplayTokens();

            // Guardar los tokens en un archivo de texto
            string filePath = "tokens.txt";
            lexer.SaveTokensToFile(filePath);

            // Mensaje para indicar que los tokens fueron guardados
            Console.WriteLine($"\nTokens guardados en el archivo: {filePath}");

            Console.ReadKey();
        }
    }
}
using System;
using System.Collections.Generic;
using AnalizadorLexico;
using AnalizadorSintactico;

class Program
{
    static void Main(string[] args)
    {
        Console.WriteLine("Introduce el código fuente a analizar (finaliza con una línea en blanco):");
        string codigoFuente = "";
        string? linea;

        while ((linea = Console.ReadLine()) != null && linea != "")
        {
            codigoFuente += linea + "\n";
        }

        if (string.IsNullOrEmpty(codigoFuente))
        {
            Console.WriteLine("No se ha ingresado ningún código fuente.");
            return;
        }

        var scanner = new CScanner(codigoFuente);
        List<(CScanner.TokenType, string)> tokens = scanner.Analizar();

        Console.WriteLine("\nTokens generados:");
        foreach (var token in tokens)
        {
            Console.WriteLine($"{token.Item1}: {token.Item2}");
        }

        List<(string, string)> tokensParaParser = new List<(string, string)>();
        foreach (var token in tokens)
        {
            tokensParaParser.Add((token.Item1.ToString(), token.Item2));
        }

        var parser = new Parser(tokensParaParser, "log.txt");
        NodoPrograma programa = null;
        try
        {
            programa = parser.Parsear();
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Error durante el análisis sintáctico: {ex.Message}");
            return;
        }

        Console.WriteLine("\nÁrbol Sintáctico Generado:");
        MostrarArbol(programa, 0);
    }

    static void MostrarArbol(NodoAST nodo, int nivel)
    {
        if (nodo == null)
        {
            return;
        }

        Console.WriteLine(new string(' ', nivel * 2) + nodo.GetType().Name);

        if (nodo is NodoPrograma programa)
        {
            foreach (var instruccion in programa.aInstrucciones)
            {
                MostrarArbol(instruccion, nivel + 1);
            }
        }
        else if (nodo is NodoOperacion operacion)
        {
            MostrarArbol(operacion.aIzquierda, nivel + 1);
            Console.WriteLine(new string(' ', (nivel + 1) * 2) + operacion.aOperador);
            MostrarArbol(operacion.aDerecha, nivel + 1);
        }
        else if (nodo is NodoFuncion funcion)
        {
            Console.WriteLine(new string(' ', (nivel + 1) * 2) + "Nombre: " + funcion.aNombre);
            Console.WriteLine(new string(' ', (nivel + 1) * 2) + "Parametros: " + string.Join(", ", funcion.aParametros));
            MostrarArbol(funcion.aCuerpo, nivel + 1);
        }
        else if (nodo is NodoIf nodoIf)
        {
            Console.WriteLine(new string(' ', (nivel + 1) * 2) + "Condicion:");
            MostrarArbol(nodoIf.Condicion, nivel + 2);
            Console.WriteLine(new string(' ', (nivel + 1) * 2) + "CuerpoIf:");
            MostrarArbol(nodoIf.CuerpoIf, nivel + 2);
            if (nodoIf.CuerpoElse != null)
            {
                Console.WriteLine(new string(' ', (nivel + 1) * 2) + "CuerpoElse:");
                MostrarArbol(nodoIf.CuerpoElse, nivel + 2);
            }
        }
        else if (nodo is NodoWhile nodoWhile)
        {
            Console.WriteLine(new string(' ', (nivel + 1) * 2) + "Condicion:");
            MostrarArbol(nodoWhile.Condicion, nivel + 2);
            Console.WriteLine(new string(' ', (nivel + 1) * 2) + "Cuerpo:");
            MostrarArbol(nodoWhile.Cuerpo, nivel + 2);
        }
        else if (nodo is NodoAsignacion asignacion)
        {
            MostrarArbol(asignacion.aIdentificador, nivel + 1);
            MostrarArbol(asignacion.aValor, nivel + 1);
        }
        else if (nodo is NodoReturn nodoReturn)
        {
            MostrarArbol(nodoReturn.aValorRetorno, nivel + 1);
        }
        else if (nodo is NodoPrint nodoPrint)
        {
            foreach (var valor in nodoPrint.aValores)
            {
                MostrarArbol(valor, nivel + 1);
            }
        }
        else if (nodo is NodoIdentificador identificador)
        {
            Console.WriteLine(new string(' ', (nivel + 1) * 2) + identificador.aNombre);
        }
        else if (nodo is NodoNumero numero)
        {
            Console.WriteLine(new string(' ', (nivel + 1) * 2) + numero.aValor);
        }
    }
}

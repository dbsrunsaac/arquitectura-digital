using System;
using System.Collections.Generic;
using System.IO;
using AnalizadorLexico;


class Program
{
    static void Main(string[] args)
    {
        string codigoPrograma;

        // codigoFuente = Console.ReadLine();
        codigoPrograma = "# Función saludo, retorna un string, tiene un parámetro asignado\r\ndef saludar(nombre):\r\n    return \"Bienvenido\" + nombre\r\n\r\n\r\n";

        CScanner scanner = new CScanner(codigoPrograma);

        // Recuperando los tokens a partir de la función Analizar la cual hace uso de la FSM
        List<(CScanner.TokenType, string)> tokens = scanner.Analizar();

        Console.WriteLine(codigoPrograma);
        foreach ( var token in tokens)
        {
            Console.WriteLine($"{token.Item1} : {token.Item2}");
        }

        Console.ReadKey();

    }
}
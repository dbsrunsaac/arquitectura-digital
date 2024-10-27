// See https://aka.ms/new-console-template for more information
using AnalizadorLexico;



class Program
{
    static void Main(string[] args)
    {
        string codigoFuente;

        codigoFuente = Console.ReadLine();
        CScanner scanner = new CScanner(codigoFuente);

        Console.WriteLine("Hola Bremdow");
        Console.ReadKey();
    }
}



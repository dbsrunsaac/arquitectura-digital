using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Timers;

namespace cadenasTexto
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string suma = "456+234";
            string operador = "";
            int n1, n2;
            n1 = 0;
            n2 = 0;
            for(int i = 0; i < suma.Length; i++)
            {
                if(suma[i] == '+')
                {
                    operador = suma[i].ToString();
                    n1 = int.Parse(suma.Substring(0,i));
                    n2 = int.Parse(suma.Substring(i + 1, suma.Length - i-1));
                    break;
                }
            }
            Console.WriteLine(operador);
            Console.WriteLine(n1);
            Console.WriteLine(n2);
            Console.ReadKey();
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CPersona
{
    internal class Program
    {
        class CPersona
        {
            public int id;
            public string nombre;
            public string direccion;

            CPersona(int pId, string pNombre, string pDireccion)
            {
                id = pId;
                nombre = pNombre;
                direccion = pDireccion;
            }

            public void saludar()
            {
                Console.WriteLine(id + nombre + direccion);
            }
            
        }


        static void Main(string[] args)
        {

        }
    }
}

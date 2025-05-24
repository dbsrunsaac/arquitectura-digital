using System;
using System.Security.Cryptography.X509Certificates;
namespace CHumano
{
    public class CPersona
    {
        public int dni;
        public string nombre;
        public string direccion;

        public CPersona(int pDNI, string pNombre, string pDireccion)
        {
            dni = pDNI;
            nombre = pNombre;
            direccion = pDireccion;
        }

        public CPersona()
        {
        }

        public string saludar()
        {
            return nombre;
        }

        public void sumar()
        {
            int n1 = 1;
            int n2 = 2;
            Console.WriteLine("La suma es: " + (n1 + n2));
        }
    }
}

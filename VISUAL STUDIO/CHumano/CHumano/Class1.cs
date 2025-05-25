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
    }
}

namespace CSerVivo
{
    public class CPerro
    {
        string nombre;
        int edad;
        string raza;

        // Constructor
        public CPerro(string pNombre, int pEdad, string pRaza)
        {
            nombre = pNombre;
            edad = pEdad;
            raza = pRaza;
        }

        // Métodos
        public string saludar()
        {
            return nombre + " dice guau, guau";
        }
    }
}

namespace CMatematica
{
    public static class COperaciones
    {
        static COperaciones() { }
        public static double sumar(double n1, double n2)
        {
            return n1 + n2;
        }
        public static double restar(double n1, double n2)
        {
            return n1 - n2;
        }

        public static double producto(double n1, double n2)
        {
            return n1 * n2;
        }

        public static string division(double n1, double n2)
        {
            string resultado;
            resultado = !(n2 == 0) ? (n1 / n2).ToString() : "La div es Indef.";
            return resultado;
        }

        public static string pot(double n1, double n2)
        {
            string resultado;

            if (n1 == 0 && n2 == 0)
            {
                resultado = "Error en el cálculo";
            }
            else
            {
                for (int i = 0; i < n2 - 1; i++)
                {
                    n1 *= n1;
                }
                resultado = n1.ToString();
            }
            return resultado;
        }

        public static string sqrt(double n1)
        {
            string resultado;
            resultado = !(n1 < 0) ? Math.Sqrt(n1).ToString() : "Raiz no definida para números negativos";
            return resultado;
        }
    }
}

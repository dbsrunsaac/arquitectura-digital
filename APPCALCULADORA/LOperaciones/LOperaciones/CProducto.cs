using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LOperaciones
{
    public class CProducto : COperaciones
    {
        public CProducto(double pOperando1, double pOperando2) : base(pOperando1, pOperando2)
        {

        }

        public override double operarNumeros()
        {
            aResultado = aOperando1 * aOperando2;
            return aResultado;
        }

    }
}

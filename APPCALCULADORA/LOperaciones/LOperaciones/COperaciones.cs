using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace LOperaciones
{
    public class COperaciones
    {
        protected double aOperando1;
        protected double aOperando2;
        protected double aResultado;

        public COperaciones(double pOperando1, double pOperando2)
        {
            aOperando1 = pOperando1;
            aOperando2 = pOperando2;
            aResultado = 0;
        }

        public double operando1
        {
            set { aOperando1 = value; }
            get { return aOperando1; }
        }

        public virtual double operando2
        {
            set { aOperando2 = value; }
            get { return aOperando2;}
        }

        public virtual double operarNumeros()
        {
            return aResultado;
        }
    }
}

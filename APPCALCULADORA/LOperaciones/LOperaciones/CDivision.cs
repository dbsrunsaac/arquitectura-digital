using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LOperaciones
{
    public class CDivision : COperaciones
    {
        string aMensaje;
        public CDivision(double pOperando1, double pOperando2) : base(pOperando1, pOperando2)
        {
            aMensaje = "";
        }
        
        public string mensaje
        {
            get { return aMensaje; }
            set { aMensaje = value; }
        }
        public override double operando2 {
            set
            {
                if (value != 0) {
                    aOperando2 = value;
                }
                else
                {
                    aMensaje = "Error al dividir";
                    aOperando2 = 1;
                }
            }
            get
            {
                return aOperando2;
            }
        }
        public override double operarNumeros()
        {
            aResultado = aOperando1 / aOperando2;
            return aResultado;
        }
    }
}

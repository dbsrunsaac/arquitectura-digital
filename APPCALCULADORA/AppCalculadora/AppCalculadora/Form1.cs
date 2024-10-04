using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using LOperaciones;

namespace AppCalculadora
{
    public partial class frmCalculadora : Form
    {
        CSuma sum1 = new CSuma(2, 1);
        CResta rest1 = new CResta(12, 12);
        CProducto prod1 = new CProducto(1, 1);
        CDivision div1 = new CDivision(1, 1);

        public frmCalculadora()
        {
            InitializeComponent();
        }

        private void txtResultado_TextChanged(object sender, EventArgs e)
        {

        }

        private void btnProducto_Click(object sender, EventArgs e)
        {
            prod1.operando1 = double.Parse(txtOperando1.Text);
            prod1.operando2 = double.Parse(txtOperando2.Text);
            txtResultado.Text = prod1.operarNumeros().ToString();
        }

        private void btnRestar_Click(object sender, EventArgs e)
        {
            rest1.operando1 = double.Parse(txtOperando1.Text);
            rest1.operando2 = double.Parse(txtOperando2.Text);
            txtResultado.Text = rest1.operarNumeros().ToString();
        }

        private void btnDivision_Click(object sender, EventArgs e)
        {
            double oper2 = double.Parse(txtOperando2.Text);
            div1.operando1 = double.Parse(txtOperando1.Text);
            div1.operando2 = oper2;
            if ( oper2 != 0)
            {
                txtResultado.Text = div1.operarNumeros().ToString();
            }
            else
            {
                txtResultado.Text = div1.mensaje;
                txtResultado.ForeColor = Color.Red;
            }
            
        }

        private void btnSumar_Click(object sender, EventArgs e)
        {

        }

        private void btnSumar_Click_1(object sender, EventArgs e)
        {
            sum1.operando1 = double.Parse(txtOperando1.Text);
            sum1.operando2 = double.Parse(txtOperando2.Text);
            txtResultado.Text = sum1.operarNumeros().ToString();
        }

    }
}


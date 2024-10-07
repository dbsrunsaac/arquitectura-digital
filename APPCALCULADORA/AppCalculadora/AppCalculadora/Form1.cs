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

        }

        private void btnRestar_Click(object sender, EventArgs e)
        {
  
        }

        private void btnDivision_Click(object sender, EventArgs e)
        {
            
        }

        private void btnSumar_Click(object sender, EventArgs e)
        {

        }

        private void btnSumar_Click_1(object sender, EventArgs e)
        {
   
        }

        private void frmCalculadora_Load(object sender, EventArgs e)
        {

        }
    }
}


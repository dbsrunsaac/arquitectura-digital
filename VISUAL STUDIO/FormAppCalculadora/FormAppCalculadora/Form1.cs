// Librerias
using System;
using CMatematica;
using System.Windows.Forms;


namespace FormAppCalculadora
{
    public partial class frmCalculadora : Form
    {
        bool frmCerrado = false;
        string textoDisplay = "";

        // private Timer timer1;
        public frmCalculadora()
        {
            InitializeComponent();
        }

        private void frmCalculadora_load(object sender, EventArgs e)
        {
            /*timer1 = new Timer();
            timer1.Interval = 1000;
            timer1.Tick += mostrarHora;
            timer1.Start();
            
            while (!frmCerrado) ;

            timer1.Stop();
            timer1.Dispose();*/
            mostrarHora();
        }

        private void mostrarHora()
        {
            DateTime now = DateTime.Now;
            lblTime.Text = "Hora: " + now.ToString("HH:mm:ss");
        }

        private void frmCalculadora_FormClosing(object sender, FormClosingEventArgs e)
        {
            frmCerrado = true;
        }

        private void btn1_Click(object sender, EventArgs e)
        {
            textoDisplay += "1";
            txtDisplay.Text = textoDisplay;
        }

        private void btn2_Click(object sender, EventArgs e)
        {
            textoDisplay += "2";
            txtDisplay.Text = textoDisplay;
        }

        private void btn3_Click(object sender, EventArgs e)
        {
            textoDisplay += "3";
            txtDisplay.Text = textoDisplay;
        }

        private void btn4_Click(object sender, EventArgs e)
        {
            textoDisplay += "4";
            txtDisplay.Text = textoDisplay;
        }

        private void btn5_Click(object sender, EventArgs e)
        {
            textoDisplay += "5";
            txtDisplay.Text = textoDisplay;
        }

        private void btn6_Click(object sender, EventArgs e)
        {
            textoDisplay += "6";
            txtDisplay.Text = textoDisplay;
        }

        private void btn7_Click(object sender, EventArgs e)
        {
            textoDisplay += "7";
            txtDisplay.Text = textoDisplay;
        }

        private void btn8_Click(object sender, EventArgs e)
        {
            textoDisplay += "8";
            txtDisplay.Text = textoDisplay;
        }

        private void btn9_Click(object sender, EventArgs e)
        {
            textoDisplay += "9";
            txtDisplay.Text = textoDisplay;
        }

        private void btn0_Click(object sender, EventArgs e)
        {
            textoDisplay += "0";
            txtDisplay.Text = textoDisplay;
        }
        private void btnPotencia_Click(object sender, EventArgs e)
        {
            textoDisplay += "**";
            txtDisplay.Text = textoDisplay;
        }

        private void btnSqrt_Click(object sender, EventArgs e)
        {
            textoDisplay += "sqrt";
            txtDisplay.Text = textoDisplay;
        }

        private void btnSuma_Click(object sender, EventArgs e)
        {
            textoDisplay += "+";
            txtDisplay.Text = textoDisplay;
        }

        private void btnResta_Click(object sender, EventArgs e)
        {
            textoDisplay += "-";
            txtDisplay.Text = textoDisplay;
        }

        private void btnProducto_Click(object sender, EventArgs e)
        {
            textoDisplay += "x";
            txtDisplay.Text = textoDisplay;
        }

        private void btnDivision_Click(object sender, EventArgs e)
        {
            textoDisplay += "/";
            txtDisplay.Text = textoDisplay;
        }

        private void btnIgual_Click(object sender, EventArgs e)
        {
            string salidas = "";
            string[] operaciones = new string[]{"+", "-", "x", "/", "**", "sqrt"};
            double resultado = 0;
            string operacion = "";

            for (int i = 0; i < textoDisplay.Length; i++)
            {

                switch (textoDisplay[i])
                {
                    case '+':
                        double n1 = double.Parse(textoDisplay.Substring(0, i));
                        double n2 = double.Parse(textoDisplay.Substring(i + 1, textoDisplay.Length - i - 1));
                        resultado = COperaciones.sumar(n1, n2);
                        return;
                    default:
                        salidas = "Define una operación";
                        resultado = 0;
                        break;
                }
                
            }
            lblTest.Text = salidas;
            txtDisplay.Text = resultado.ToString();
            textoDisplay = "";
        }

        private void btnAllClear_Click(object sender, EventArgs e)
        {
            textoDisplay = "";
            txtDisplay.Text = textoDisplay;
            
        }
    }
}

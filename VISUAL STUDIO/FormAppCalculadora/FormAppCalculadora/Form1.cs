// Librerias
using System;
using CMatematica;
using System.Windows.Forms;
using System.DirectoryServices.ActiveDirectory;


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
            textoDisplay += "^";
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
            string resultado = "";
            string operacion = "";
            double n1, n2;
            n1 = 0;
            n2 = 0;

            for (int i = 0; i < textoDisplay.Length; i++)
            {

                if (textoDisplay[i] == '+')
                {
                    n1 = double.Parse(textoDisplay.Substring(0, i));
                    n2 = double.Parse(textoDisplay.Substring(i + 1, textoDisplay.Length - i - 1));
                    operacion = "+";
                    resultado = COperaciones.sumar(n1, n2).ToString();
                    break;
                }
                else if (textoDisplay[i] == '-')
                {
                    n1 = double.Parse(textoDisplay.Substring(0, i));
                    n2 = double.Parse(textoDisplay.Substring(i + 1, textoDisplay.Length - i - 1));
                    operacion = "-";
                    resultado = COperaciones.restar(n1, n2).ToString();
                    break;
                }
                else if (textoDisplay[i] == '/')
                {
                    n1 = double.Parse(textoDisplay.Substring(0, i));
                    n2 = double.Parse(textoDisplay.Substring(i + 1, textoDisplay.Length - i - 1));
                    operacion = "/";
                    resultado = COperaciones.division(n1, n2);
                    break;
                }
                else if (textoDisplay[i] == 'x')
                {
                    n1 = double.Parse(textoDisplay.Substring(0, i));
                    n2 = double.Parse(textoDisplay.Substring(i + 1, textoDisplay.Length - i - 1));
                    operacion = "x";
                    resultado = COperaciones.producto(n1, n2).ToString();
                    break;
                }
                else if (textoDisplay[i] == '^')
                {
                    n1 = double.Parse(textoDisplay.Substring(0, i));
                    n2 = double.Parse(textoDisplay.Substring(i + 1, textoDisplay.Length - i - 1));
                    operacion = "x";
                    resultado = COperaciones.pot(n1, n2);
                    break;
                }

            }
            lblTest.Text = "La operación es: " + operacion;
            txtDisplay.Text = resultado;
            textoDisplay = "";
        }

        private void btnAllClear_Click(object sender, EventArgs e)
        {
            textoDisplay = "";
            txtDisplay.Text = textoDisplay;
        }

        private void btnBorrar_Click(object sender, EventArgs e)
        {
            if(textoDisplay.Length != 0)
            {
                textoDisplay = textoDisplay.Remove(textoDisplay.Length - 1, 1);
                txtDisplay.Text = textoDisplay;
            }
            else
            {
                lblTest.Text = "Nada que borrar";
            }
            
        }
    }
}

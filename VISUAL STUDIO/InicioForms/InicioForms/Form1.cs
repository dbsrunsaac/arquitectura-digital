using CHumano;

namespace InicioForms
{
    public partial class Form1 : Form
    {
        CPersona p1 = new CPersona();
        public Form1()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void btnIniciarDia_Click(object sender, EventArgs e)
        {
            p1.nombre = txtNombrePersona.Text;
            lblSaludo.Text = "Este es un maravilloso día para emprender, sigue avanzando " + p1.nombre;
        }
    }
}

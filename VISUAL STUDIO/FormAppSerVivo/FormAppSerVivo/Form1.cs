using CSerVivo;

namespace FormAppSerVivo
{
    public partial class Form1 : Form
    {
        CPerro simba = new CPerro("Simba", 6, "Cooker");
        public Form1()
        {
            InitializeComponent();
        }

        private void btnSaludar_Click(object sender, EventArgs e)
        {
            txtSaludar.Text = simba.saludar();
        }
    }
}

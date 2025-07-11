using System;
using System.Collections.Generic;
using System.IO;
using System.Windows.Forms;
using QuickGraph;
using QuickGraph.Graphviz;
using AnalizadorLexico; // Scanner -> Genera Tokens
using AnalizadorSintactico; // Parse -> Genera el AST
using AnalizadorSemantico; // Verifica el c�digo

using CSintetizador; // Estructura del c�digo ASM
using CGenCPU; // Genera el c�digo BIN

namespace CLETI
{
    public partial class Form1 : Form
    {
        private List<(CScanner.TokenType, string)> tokens; // Declarar como variable de instancia

        public Form1()
        {
            InitializeComponent();
        }

        private void BtnCompilar_Click(object sender, EventArgs e)
        {
            string codigoFuente = TxtCodigo.Text;

            if (string.IsNullOrEmpty(codigoFuente))
            {
                MessageBox.Show("No se ha ingresado ning�n c�digo fuente.");
                return;
            }

            var scanner = new CScanner(codigoFuente);
            tokens = scanner.Analizar(); // Guardar tokens en la variable de instancia

            TxtSalida.Clear();

            List<(string, string)> tokensParaParser = new List<(string, string)>();
            foreach (var token in tokens)
            {
                tokensParaParser.Add((token.Item1.ToString(), token.Item2));
            }

            var parser = new Parser(tokensParaParser, "parser_log.txt");
            NodoPrograma programa = null;
            try
            {
                programa = parser.Parsear();
            }
            catch (Exception ex)
            {
                TxtSalida.AppendText($"Error durante el an�lisis sint�ctico: {ex.Message}\n");
                return;
            }

            // An�lisis sem�ntico
            AnalizadorSeman semantico = new AnalizadorSeman();
            semantico.Analizar(programa);

            // Mostrar y guardar tabla de s�mbolos
            var tablaSimbolos = semantico.ObtenerTablaSimbolos();
            TxtSalida.AppendText("\nTabla de S�mbolos:\n");
            using (StreamWriter sw = new StreamWriter("tabla_simbolos.txt"))
            {
                foreach (var simbolo in tablaSimbolos)
                {
                    TxtSalida.AppendText($"{simbolo.Key}: {simbolo.Value}\n");
                    sw.WriteLine($"{simbolo.Key}: {simbolo.Value}");
                }
            }

            // Mostrar y guardar errores sem�nticos
            var errores = semantico.ObtenerErrores();
            if (errores.Count > 0)
            {
                TxtSalida.AppendText("\nErrores sem�nticos:\n");
                using (StreamWriter sw = new StreamWriter("errores_semanticos.txt"))
                {
                    foreach (var error in errores)
                    {
                        TxtSalida.AppendText($"{error}\n");
                        sw.WriteLine(error);
                    }
                }
            }
            else
            {
                TxtSalida.AppendText("\nNo se encontraron errores sem�nticos.\n");
            }

            var sintetizador = new Sintetizador();
            programa.Aceptar(sintetizador);

            string codigoEnsamblador = sintetizador.ObtenerCodigo();
            TxtSalida.AppendText("\nC�digo ensamblador generado:\n");
            TxtEnsamblador.Text = codigoEnsamblador;

            // Guardar el c�digo ensamblador en un archivo
            File.WriteAllText("codigo_ensamblador.asm", codigoEnsamblador);
        }

        private void BtnLimpiar_Click(object sender, EventArgs e)
        {
            TxtCodigo.Clear();
            TxtSalida.Clear();
            TxtEnsamblador.Clear();
        }

        private void nuevoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            TxtCodigo.Clear();
            TxtSalida.Clear();
            TxtEnsamblador.Clear();
        }

        private void abrirToolStripMenuItem_Click(object sender, EventArgs e)
        {
            using (OpenFileDialog openFileDialog = new OpenFileDialog())
            {
                openFileDialog.Filter = "Small Python files (*.spy)|*.spy|All files (*.*)|*.*";
                if (openFileDialog.ShowDialog() == DialogResult.OK)
                {
                    string filePath = openFileDialog.FileName;
                    string fileContent = File.ReadAllText(filePath);
                    TxtCodigo.Text = fileContent;
                }
            }
        }

        private void guardarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            using (SaveFileDialog saveFileDialog = new SaveFileDialog())
            {
                saveFileDialog.Filter = "CLI files (*.CLI)|*.CLI|All files (*.*)|*.*";
                if (saveFileDialog.ShowDialog() == DialogResult.OK)
                {
                    string filePath = saveFileDialog.FileName;
                    File.WriteAllText(filePath, TxtEnsamblador.Text);
                }
            }
        }

        private void cerrarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void guardarCodigoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            using (SaveFileDialog saveFileDialog = new SaveFileDialog())
            {
                saveFileDialog.Filter = "Small Python files (*.spy)|*.spy|All files (*.*)|*.*";
                if (saveFileDialog.ShowDialog() == DialogResult.OK)
                {
                    string filePath = saveFileDialog.FileName;
                    File.WriteAllText(filePath, TxtCodigo.Text);
                }
            }
        }

        private void compilarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            BtnCompilar_Click(sender, e);
        }

        private void verArbolSinctaticoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            // Obtener el AST del c�digo fuente
            string codigoFuente = TxtCodigo.Text;
            var scanner = new CScanner(codigoFuente);
            List<(CScanner.TokenType, string)> tokens = scanner.Analizar();

            List<(string, string)> tokensParaParser = new List<(string, string)>();
            foreach (var token in tokens)
            {
                tokensParaParser.Add((token.Item1.ToString(), token.Item2));
            }

            var parser = new Parser(tokensParaParser, "parser_log.txt");
            NodoPrograma programa = parser.Parsear();

            // Crear y mostrar el formulario AST
            AST frmAst = new AST(programa);
            frmAst.Show();
        }

        private void verTokensToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (tokens != null)
            {
                Token tokenForm = new Token(tokens);
                tokenForm.Show();
            }
            else
            {
                MessageBox.Show("No se han generado tokens. Compile el c�digo fuente primero.");
            }
        }

        private void btnGen_Click(object sender, EventArgs e)
        {
            try
            {
                // Mostrar cuadro de di�logo para seleccionar archivo CLI
                using (OpenFileDialog openFileDialog = new OpenFileDialog())
                {
                    openFileDialog.Filter = "Archivos CLI (*.CLI)|*.CLI|Todos los archivos (*.*)|*.*";
                    openFileDialog.Title = "Seleccionar archivo CLI";

                    if (openFileDialog.ShowDialog() == DialogResult.OK)
                    {
                        string rutaCLI = openFileDialog.FileName;
                        string nombreArchivoBin = Path.ChangeExtension(rutaCLI, ".BIN");

                        GenCPU procesador = new GenCPU();
                        byte[] codigoBinario = procesador.GenerarCodigoBinarioDesdeCLI(rutaCLI);

                        File.WriteAllBytes(nombreArchivoBin, codigoBinario);
                        MessageBox.Show("Archivo binario guardado correctamente en: " + nombreArchivoBin, "Informaci�n", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void menuStrip1_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {

        }

        private void TxtEnsamblador_TextChanged(object sender, EventArgs e)
        {

        }

        private void herramientasToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }
    }
}

using System;
using System.Collections.Generic;
using System.IO;
using System.Windows.Forms;

// using QuickGraph;
// using QuickGraph.Graphviz;

using AnalizadorLexico; // Scanner -> Genera Tokens
using AnalizadorSintactico; // Parse -> Genera el AST
using AnalizadorSemantico; // Verifica el código

using CSintetizador; // Estructura del código ASM
using CGenCPU; // Genera el código BIN


namespace AppFormPipeBits
{
    public partial class frmPipeBits : Form
    {
        private List<(CScanner.TokenType, string)> tokens; // Declarar como variable de instancia
        public frmPipeBits()
        {
            InitializeComponent();
        }

        private void btnCompilar_Click(object sender, EventArgs e)
        {
            string codigoFuente = rtxtCodigo.Text;

            if (string.IsNullOrEmpty(codigoFuente))
            {
                MessageBox.Show("No se ha ingresado ningún código fuente.");
                return;
            }

            var scanner = new CScanner(codigoFuente);
            tokens = scanner.Analizar(); // Guardar tokens en la variable de instancia

            rtxtSalida.Clear();

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
                rtxtSalida.AppendText($"Error durante el análisis sintáctico: {ex.Message}\n");
                return;
            }

            // Análisis semántico
            AnalizadorSeman semantico = new AnalizadorSeman();
            semantico.Analizar(programa);

            // Mostrar y guardar tabla de símbolos
            var tablaSimbolos = semantico.ObtenerTablaSimbolos();
            rtxtSalida.AppendText("\nTabla de Símbolos:\n");
            using (StreamWriter sw = new StreamWriter("tabla_simbolos.txt"))
            {
                foreach (var simbolo in tablaSimbolos)
                {
                    rtxtSalida.AppendText($"{simbolo.Key}: {simbolo.Value}\n");
                    sw.WriteLine($"{simbolo.Key}: {simbolo.Value}");
                }
            }

            // Mostrar y guardar errores semánticos
            var errores = semantico.ObtenerErrores();
            if (errores.Count > 0)
            {
                rtxtSalida.AppendText("\nErrores semánticos:\n");
                using (StreamWriter sw = new StreamWriter("errores_semanticos.txt"))
                {
                    foreach (var error in errores)
                    {
                        rtxtSalida.AppendText($"{error}\n");
                        sw.WriteLine(error);
                    }
                }
            }
            else
            {
                rtxtSalida.AppendText("\nNo se encontraron errores semánticos.\n");
            }

            var sintetizador = new Sintetizador();
            programa.Aceptar(sintetizador);

            string codigoEnsamblador = sintetizador.ObtenerCodigo();
            rtxtSalida.AppendText("\nCódigo ensamblador generado:\n");
            rtxtEnsamblador.Text = codigoEnsamblador;

            // Guardar el código ensamblador en un archivo
            File.WriteAllText("codigo_ensamblador.asm", codigoEnsamblador);
        }

        private void btnLimpiar_Click(object sender, EventArgs e)
        {
            rtxtCodigo.Clear();
            rtxtSalida.Clear();
            rtxtEnsamblador.Clear();
        }

        private void btnGenerar_Click(object sender, EventArgs e)
        {
            using (SaveFileDialog saveFileDialog = new SaveFileDialog())
            {
                saveFileDialog.Filter = "CLI files (*.CLI)|*.CLI|All files (*.*)|*.*";
                if (saveFileDialog.ShowDialog() == DialogResult.OK)
                {
                    string filePath = saveFileDialog.FileName;
                    File.WriteAllText(filePath, rtxtEnsamblador.Text);

                    // Convertir archivo .CLI a .BIN
                    string nombreArchivoBin = Path.ChangeExtension(filePath, ".BIN");

                    GenCPU procesador = new GenCPU();
                    byte[] codigoBinario = procesador.GenerarCodigoBinarioDesdeCLI(filePath);

                    File.WriteAllBytes(nombreArchivoBin, codigoBinario);
                    MessageBox.Show("Archivo binario guardado correctamente en: " + nombreArchivoBin, "Información", MessageBoxButtons.OK, MessageBoxIcon.Information);

                }
            }



        }

        private void nuevoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            btnLimpiar_Click(sender, e);
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
                    rtxtCodigo.Text = fileContent;
                }
            }
        }

        private void guardarCódigoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            using (SaveFileDialog saveFileDialog = new SaveFileDialog())
            {
                saveFileDialog.Filter = "Small Python files (*.spy)|*.spy|All files (*.*)|*.*";
                if (saveFileDialog.ShowDialog() == DialogResult.OK)
                {
                    string filePath = saveFileDialog.FileName;
                    File.WriteAllText(filePath, rtxtCodigo.Text);
                }
            }
        }

        private void cerrarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void compilarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            btnCompilar_Click(sender, e);
        }

        private void limpiarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            btnLimpiar_Click(sender, e);
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
                MessageBox.Show("No se han generado tokens. Compile el código fuente primero.");
            }
        }
    }
}

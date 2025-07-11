namespace AppFormPipeBits
{
    partial class frmPipeBits
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmPipeBits));
            flowLayoutPanel1 = new FlowLayoutPanel();
            menuStrip1 = new MenuStrip();
            archivoToolStripMenuItem = new ToolStripMenuItem();
            nuevoToolStripMenuItem = new ToolStripMenuItem();
            abrirToolStripMenuItem = new ToolStripMenuItem();
            guardarCódigoToolStripMenuItem = new ToolStripMenuItem();
            cerrarToolStripMenuItem = new ToolStripMenuItem();
            herramientasToolStripMenuItem = new ToolStripMenuItem();
            compilarToolStripMenuItem = new ToolStripMenuItem();
            limpiarToolStripMenuItem = new ToolStripMenuItem();
            verTokensToolStripMenuItem = new ToolStripMenuItem();
            verArbolSintácticoToolStripMenuItem = new ToolStripMenuItem();
            configuraciónToolStripMenuItem = new ToolStripMenuItem();
            preferenciasToolStripMenuItem = new ToolStripMenuItem();
            ayudaToolStripMenuItem = new ToolStripMenuItem();
            acercaDeToolStripMenuItem = new ToolStripMenuItem();
            flowLayoutPanel2 = new FlowLayoutPanel();
            btnCompilar = new Button();
            btnLimpiar = new Button();
            btnGenerar = new Button();
            label1 = new Label();
            rtxtCodigo = new RichTextBox();
            label2 = new Label();
            flowLayoutPanel3 = new FlowLayoutPanel();
            label3 = new Label();
            tabControl1 = new TabControl();
            tabPage1 = new TabPage();
            rtxtSalida = new RichTextBox();
            tabPage2 = new TabPage();
            rtxtEnsamblador = new RichTextBox();
            flowLayoutPanel1.SuspendLayout();
            menuStrip1.SuspendLayout();
            flowLayoutPanel2.SuspendLayout();
            flowLayoutPanel3.SuspendLayout();
            tabControl1.SuspendLayout();
            tabPage1.SuspendLayout();
            tabPage2.SuspendLayout();
            SuspendLayout();
            // 
            // flowLayoutPanel1
            // 
            flowLayoutPanel1.BackColor = Color.FromArgb(139, 157, 195);
            flowLayoutPanel1.Controls.Add(menuStrip1);
            flowLayoutPanel1.Location = new Point(-1, 0);
            flowLayoutPanel1.Name = "flowLayoutPanel1";
            flowLayoutPanel1.Size = new Size(466, 40);
            flowLayoutPanel1.TabIndex = 0;
            // 
            // menuStrip1
            // 
            menuStrip1.AutoSize = false;
            menuStrip1.Dock = DockStyle.None;
            menuStrip1.Items.AddRange(new ToolStripItem[] { archivoToolStripMenuItem, herramientasToolStripMenuItem, configuraciónToolStripMenuItem, ayudaToolStripMenuItem });
            menuStrip1.Location = new Point(0, 0);
            menuStrip1.Name = "menuStrip1";
            menuStrip1.Size = new Size(429, 40);
            menuStrip1.TabIndex = 0;
            menuStrip1.Text = "menuStrip1";
            // 
            // archivoToolStripMenuItem
            // 
            archivoToolStripMenuItem.DropDownItems.AddRange(new ToolStripItem[] { nuevoToolStripMenuItem, abrirToolStripMenuItem, guardarCódigoToolStripMenuItem, cerrarToolStripMenuItem });
            archivoToolStripMenuItem.Name = "archivoToolStripMenuItem";
            archivoToolStripMenuItem.Size = new Size(60, 36);
            archivoToolStripMenuItem.Text = "Archivo";
            // 
            // nuevoToolStripMenuItem
            // 
            nuevoToolStripMenuItem.Name = "nuevoToolStripMenuItem";
            nuevoToolStripMenuItem.Size = new Size(158, 22);
            nuevoToolStripMenuItem.Text = "Nuevo";
            nuevoToolStripMenuItem.Click += nuevoToolStripMenuItem_Click;
            // 
            // abrirToolStripMenuItem
            // 
            abrirToolStripMenuItem.Name = "abrirToolStripMenuItem";
            abrirToolStripMenuItem.Size = new Size(158, 22);
            abrirToolStripMenuItem.Text = "Abrir";
            abrirToolStripMenuItem.Click += abrirToolStripMenuItem_Click;
            // 
            // guardarCódigoToolStripMenuItem
            // 
            guardarCódigoToolStripMenuItem.Name = "guardarCódigoToolStripMenuItem";
            guardarCódigoToolStripMenuItem.Size = new Size(158, 22);
            guardarCódigoToolStripMenuItem.Text = "Guardar Código";
            guardarCódigoToolStripMenuItem.Click += guardarCódigoToolStripMenuItem_Click;
            // 
            // cerrarToolStripMenuItem
            // 
            cerrarToolStripMenuItem.Name = "cerrarToolStripMenuItem";
            cerrarToolStripMenuItem.Size = new Size(158, 22);
            cerrarToolStripMenuItem.Text = "Cerrar";
            cerrarToolStripMenuItem.Click += cerrarToolStripMenuItem_Click;
            // 
            // herramientasToolStripMenuItem
            // 
            herramientasToolStripMenuItem.DropDownItems.AddRange(new ToolStripItem[] { compilarToolStripMenuItem, limpiarToolStripMenuItem, verTokensToolStripMenuItem, verArbolSintácticoToolStripMenuItem });
            herramientasToolStripMenuItem.Name = "herramientasToolStripMenuItem";
            herramientasToolStripMenuItem.Size = new Size(90, 36);
            herramientasToolStripMenuItem.Text = "Herramientas";
            // 
            // compilarToolStripMenuItem
            // 
            compilarToolStripMenuItem.Name = "compilarToolStripMenuItem";
            compilarToolStripMenuItem.Size = new Size(177, 22);
            compilarToolStripMenuItem.Text = "Compilar";
            compilarToolStripMenuItem.Click += compilarToolStripMenuItem_Click;
            // 
            // limpiarToolStripMenuItem
            // 
            limpiarToolStripMenuItem.Name = "limpiarToolStripMenuItem";
            limpiarToolStripMenuItem.Size = new Size(177, 22);
            limpiarToolStripMenuItem.Text = "Limpiar";
            limpiarToolStripMenuItem.Click += limpiarToolStripMenuItem_Click;
            // 
            // verTokensToolStripMenuItem
            // 
            verTokensToolStripMenuItem.Name = "verTokensToolStripMenuItem";
            verTokensToolStripMenuItem.Size = new Size(177, 22);
            verTokensToolStripMenuItem.Text = "Ver Tokens";
            verTokensToolStripMenuItem.Click += verTokensToolStripMenuItem_Click;
            // 
            // verArbolSintácticoToolStripMenuItem
            // 
            verArbolSintácticoToolStripMenuItem.Name = "verArbolSintácticoToolStripMenuItem";
            verArbolSintácticoToolStripMenuItem.Size = new Size(177, 22);
            verArbolSintácticoToolStripMenuItem.Text = "Ver Arbol Sintáctico";
            // 
            // configuraciónToolStripMenuItem
            // 
            configuraciónToolStripMenuItem.DropDownItems.AddRange(new ToolStripItem[] { preferenciasToolStripMenuItem });
            configuraciónToolStripMenuItem.Name = "configuraciónToolStripMenuItem";
            configuraciónToolStripMenuItem.Size = new Size(95, 36);
            configuraciónToolStripMenuItem.Text = "Configuración";
            // 
            // preferenciasToolStripMenuItem
            // 
            preferenciasToolStripMenuItem.Name = "preferenciasToolStripMenuItem";
            preferenciasToolStripMenuItem.Size = new Size(138, 22);
            preferenciasToolStripMenuItem.Text = "Preferencias";
            // 
            // ayudaToolStripMenuItem
            // 
            ayudaToolStripMenuItem.DropDownItems.AddRange(new ToolStripItem[] { acercaDeToolStripMenuItem });
            ayudaToolStripMenuItem.Name = "ayudaToolStripMenuItem";
            ayudaToolStripMenuItem.Size = new Size(53, 36);
            ayudaToolStripMenuItem.Text = "Ayuda";
            // 
            // acercaDeToolStripMenuItem
            // 
            acercaDeToolStripMenuItem.Name = "acercaDeToolStripMenuItem";
            acercaDeToolStripMenuItem.Size = new Size(126, 22);
            acercaDeToolStripMenuItem.Text = "Acerca de";
            // 
            // flowLayoutPanel2
            // 
            flowLayoutPanel2.BackColor = Color.FromArgb(139, 157, 195);
            flowLayoutPanel2.Controls.Add(btnCompilar);
            flowLayoutPanel2.Controls.Add(btnLimpiar);
            flowLayoutPanel2.Controls.Add(btnGenerar);
            flowLayoutPanel2.Location = new Point(505, 1);
            flowLayoutPanel2.Name = "flowLayoutPanel2";
            flowLayoutPanel2.Size = new Size(210, 40);
            flowLayoutPanel2.TabIndex = 1;
            // 
            // btnCompilar
            // 
            btnCompilar.BackColor = Color.Transparent;
            btnCompilar.BackgroundImage = (Image)resources.GetObject("btnCompilar.BackgroundImage");
            btnCompilar.BackgroundImageLayout = ImageLayout.Zoom;
            btnCompilar.FlatAppearance.BorderSize = 0;
            btnCompilar.FlatStyle = FlatStyle.Flat;
            btnCompilar.Location = new Point(3, 3);
            btnCompilar.Name = "btnCompilar";
            btnCompilar.Size = new Size(54, 28);
            btnCompilar.TabIndex = 2;
            btnCompilar.UseVisualStyleBackColor = false;
            btnCompilar.Click += btnCompilar_Click;
            // 
            // btnLimpiar
            // 
            btnLimpiar.BackColor = Color.Transparent;
            btnLimpiar.BackgroundImage = (Image)resources.GetObject("btnLimpiar.BackgroundImage");
            btnLimpiar.BackgroundImageLayout = ImageLayout.Zoom;
            btnLimpiar.FlatAppearance.BorderSize = 0;
            btnLimpiar.FlatStyle = FlatStyle.Flat;
            btnLimpiar.Location = new Point(63, 3);
            btnLimpiar.Name = "btnLimpiar";
            btnLimpiar.Size = new Size(54, 28);
            btnLimpiar.TabIndex = 3;
            btnLimpiar.UseVisualStyleBackColor = false;
            btnLimpiar.Click += btnLimpiar_Click;
            // 
            // btnGenerar
            // 
            btnGenerar.BackColor = Color.Transparent;
            btnGenerar.BackgroundImage = (Image)resources.GetObject("btnGenerar.BackgroundImage");
            btnGenerar.BackgroundImageLayout = ImageLayout.Zoom;
            btnGenerar.FlatAppearance.BorderSize = 0;
            btnGenerar.FlatStyle = FlatStyle.Flat;
            btnGenerar.Location = new Point(123, 3);
            btnGenerar.Name = "btnGenerar";
            btnGenerar.Size = new Size(54, 28);
            btnGenerar.TabIndex = 4;
            btnGenerar.UseVisualStyleBackColor = false;
            btnGenerar.Click += btnGenerar_Click;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Microsoft Sans Serif", 14.25F);
            label1.Location = new Point(10, 56);
            label1.Name = "label1";
            label1.Size = new Size(197, 24);
            label1.TabIndex = 2;
            label1.Text = "Código - Micro Python";
            // 
            // rtxtCodigo
            // 
            rtxtCodigo.Location = new Point(10, 92);
            rtxtCodigo.Name = "rtxtCodigo";
            rtxtCodigo.Size = new Size(697, 432);
            rtxtCodigo.TabIndex = 3;
            rtxtCodigo.Text = "";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Font = new Font("Microsoft Sans Serif", 14.25F);
            label2.Location = new Point(12, 533);
            label2.Name = "label2";
            label2.Size = new Size(220, 24);
            label2.TabIndex = 4;
            label2.Text = "Resultados Ensamblador";
            // 
            // flowLayoutPanel3
            // 
            flowLayoutPanel3.Controls.Add(label3);
            flowLayoutPanel3.Dock = DockStyle.Bottom;
            flowLayoutPanel3.Location = new Point(0, 789);
            flowLayoutPanel3.Name = "flowLayoutPanel3";
            flowLayoutPanel3.Size = new Size(716, 22);
            flowLayoutPanel3.TabIndex = 5;
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.BackColor = Color.Transparent;
            label3.FlatStyle = FlatStyle.Flat;
            label3.Location = new Point(3, 0);
            label3.Name = "label3";
            label3.Size = new Size(36, 15);
            label3.TabIndex = 0;
            label3.Text = "Hora:";
            // 
            // tabControl1
            // 
            tabControl1.Controls.Add(tabPage1);
            tabControl1.Controls.Add(tabPage2);
            tabControl1.Location = new Point(12, 560);
            tabControl1.Name = "tabControl1";
            tabControl1.SelectedIndex = 0;
            tabControl1.Size = new Size(695, 223);
            tabControl1.TabIndex = 6;
            // 
            // tabPage1
            // 
            tabPage1.Controls.Add(rtxtSalida);
            tabPage1.Location = new Point(4, 24);
            tabPage1.Name = "tabPage1";
            tabPage1.Padding = new Padding(3);
            tabPage1.Size = new Size(687, 195);
            tabPage1.TabIndex = 0;
            tabPage1.Text = "Salida";
            tabPage1.UseVisualStyleBackColor = true;
            // 
            // rtxtSalida
            // 
            rtxtSalida.Location = new Point(3, 3);
            rtxtSalida.Name = "rtxtSalida";
            rtxtSalida.Size = new Size(681, 189);
            rtxtSalida.TabIndex = 0;
            rtxtSalida.Text = "";
            // 
            // tabPage2
            // 
            tabPage2.Controls.Add(rtxtEnsamblador);
            tabPage2.Location = new Point(4, 24);
            tabPage2.Name = "tabPage2";
            tabPage2.Padding = new Padding(3);
            tabPage2.Size = new Size(687, 195);
            tabPage2.TabIndex = 1;
            tabPage2.Text = "Ensamblador";
            tabPage2.UseVisualStyleBackColor = true;
            // 
            // rtxtEnsamblador
            // 
            rtxtEnsamblador.Location = new Point(3, 3);
            rtxtEnsamblador.Name = "rtxtEnsamblador";
            rtxtEnsamblador.Size = new Size(681, 189);
            rtxtEnsamblador.TabIndex = 1;
            rtxtEnsamblador.Text = "";
            // 
            // frmPipeBits
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.FromArgb(223, 227, 238);
            ClientSize = new Size(716, 811);
            Controls.Add(tabControl1);
            Controls.Add(flowLayoutPanel3);
            Controls.Add(label2);
            Controls.Add(rtxtCodigo);
            Controls.Add(label1);
            Controls.Add(flowLayoutPanel2);
            Controls.Add(flowLayoutPanel1);
            MainMenuStrip = menuStrip1;
            Name = "frmPipeBits";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "PipeBits";
            flowLayoutPanel1.ResumeLayout(false);
            menuStrip1.ResumeLayout(false);
            menuStrip1.PerformLayout();
            flowLayoutPanel2.ResumeLayout(false);
            flowLayoutPanel3.ResumeLayout(false);
            flowLayoutPanel3.PerformLayout();
            tabControl1.ResumeLayout(false);
            tabPage1.ResumeLayout(false);
            tabPage2.ResumeLayout(false);
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private FlowLayoutPanel flowLayoutPanel1;
        private MenuStrip menuStrip1;
        private ToolStripMenuItem archivoToolStripMenuItem;
        private ToolStripMenuItem nuevoToolStripMenuItem;
        private ToolStripMenuItem abrirToolStripMenuItem;
        private ToolStripMenuItem guardarCódigoToolStripMenuItem;
        private ToolStripMenuItem cerrarToolStripMenuItem;
        private ToolStripMenuItem herramientasToolStripMenuItem;
        private ToolStripMenuItem compilarToolStripMenuItem;
        private ToolStripMenuItem limpiarToolStripMenuItem;
        private ToolStripMenuItem verTokensToolStripMenuItem;
        private ToolStripMenuItem verArbolSintácticoToolStripMenuItem;
        private ToolStripMenuItem configuraciónToolStripMenuItem;
        private ToolStripMenuItem preferenciasToolStripMenuItem;
        private ToolStripMenuItem ayudaToolStripMenuItem;
        private ToolStripMenuItem acercaDeToolStripMenuItem;
        private FlowLayoutPanel flowLayoutPanel2;
        private Button btnCompilar;
        private Button btnLimpiar;
        private Button btnGenerar;
        private Label label1;
        private RichTextBox rtxtCodigo;
        private Label label2;
        private FlowLayoutPanel flowLayoutPanel3;
        private Label label3;
        private TabControl tabControl1;
        private TabPage tabPage1;
        private TabPage tabPage2;
        private RichTextBox rtxtSalida;
        private RichTextBox rtxtEnsamblador;
    }
}

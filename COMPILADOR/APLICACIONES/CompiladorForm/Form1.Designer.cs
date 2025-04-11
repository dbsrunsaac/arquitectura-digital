namespace CLETI
{
    partial class Form1
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
            menuStrip1 = new MenuStrip();
            archivoToolStripMenuItem = new ToolStripMenuItem();
            nuevoToolStripMenuItem = new ToolStripMenuItem();
            abrirToolStripMenuItem = new ToolStripMenuItem();
            guardarToolStripMenuItem = new ToolStripMenuItem();
            cerrarToolStripMenuItem = new ToolStripMenuItem();
            guardarCodigoToolStripMenuItem = new ToolStripMenuItem();
            herramienToolStripMenuItem = new ToolStripMenuItem();
            compilarToolStripMenuItem = new ToolStripMenuItem();
            verTokensToolStripMenuItem = new ToolStripMenuItem();
            verArbolSinctaticoToolStripMenuItem = new ToolStripMenuItem();
            ayudaToolStripMenuItem = new ToolStripMenuItem();
            aercaDeToolStripMenuItem = new ToolStripMenuItem();
            TxtCodigo = new TextBox();
            LblSalida = new Label();
            label1 = new Label();
            TxtSalida = new TextBox();
            LbLASM = new Label();
            TxtEnsamblador = new TextBox();
            BtnCompilar = new Button();
            BtnLimpiar = new Button();
            btnGen = new Button();
            menuStrip1.SuspendLayout();
            SuspendLayout();
            // 
            // menuStrip1
            // 
            menuStrip1.ImageScalingSize = new Size(20, 20);
            menuStrip1.Items.AddRange(new ToolStripItem[] { archivoToolStripMenuItem, herramienToolStripMenuItem, ayudaToolStripMenuItem });
            menuStrip1.Location = new Point(0, 0);
            menuStrip1.Name = "menuStrip1";
            menuStrip1.Padding = new Padding(7, 3, 0, 3);
            menuStrip1.Size = new Size(1146, 30);
            menuStrip1.TabIndex = 0;
            menuStrip1.Text = "menuStrip1";
            menuStrip1.ItemClicked += menuStrip1_ItemClicked;
            // 
            // archivoToolStripMenuItem
            // 
            archivoToolStripMenuItem.DropDownItems.AddRange(new ToolStripItem[] { nuevoToolStripMenuItem, abrirToolStripMenuItem, guardarToolStripMenuItem, cerrarToolStripMenuItem, guardarCodigoToolStripMenuItem });
            archivoToolStripMenuItem.Name = "archivoToolStripMenuItem";
            archivoToolStripMenuItem.Size = new Size(73, 24);
            archivoToolStripMenuItem.Text = "Archivo";
            // 
            // nuevoToolStripMenuItem
            // 
            nuevoToolStripMenuItem.Name = "nuevoToolStripMenuItem";
            nuevoToolStripMenuItem.Size = new Size(198, 26);
            nuevoToolStripMenuItem.Text = "Nuevo";
            nuevoToolStripMenuItem.Click += nuevoToolStripMenuItem_Click;
            // 
            // abrirToolStripMenuItem
            // 
            abrirToolStripMenuItem.Name = "abrirToolStripMenuItem";
            abrirToolStripMenuItem.Size = new Size(198, 26);
            abrirToolStripMenuItem.Text = "Abrir";
            abrirToolStripMenuItem.Click += abrirToolStripMenuItem_Click;
            // 
            // guardarToolStripMenuItem
            // 
            guardarToolStripMenuItem.Name = "guardarToolStripMenuItem";
            guardarToolStripMenuItem.Size = new Size(198, 26);
            guardarToolStripMenuItem.Text = "Guardar";
            guardarToolStripMenuItem.Click += guardarToolStripMenuItem_Click;
            // 
            // cerrarToolStripMenuItem
            // 
            cerrarToolStripMenuItem.Name = "cerrarToolStripMenuItem";
            cerrarToolStripMenuItem.Size = new Size(198, 26);
            cerrarToolStripMenuItem.Text = "Cerrar";
            cerrarToolStripMenuItem.Click += cerrarToolStripMenuItem_Click;
            // 
            // guardarCodigoToolStripMenuItem
            // 
            guardarCodigoToolStripMenuItem.Name = "guardarCodigoToolStripMenuItem";
            guardarCodigoToolStripMenuItem.Size = new Size(198, 26);
            guardarCodigoToolStripMenuItem.Text = "Guardar Codigo";
            guardarCodigoToolStripMenuItem.Click += guardarCodigoToolStripMenuItem_Click;
            // 
            // herramienToolStripMenuItem
            // 
            herramienToolStripMenuItem.DropDownItems.AddRange(new ToolStripItem[] { compilarToolStripMenuItem, verTokensToolStripMenuItem, verArbolSinctaticoToolStripMenuItem });
            herramienToolStripMenuItem.Name = "herramienToolStripMenuItem";
            herramienToolStripMenuItem.Size = new Size(112, 24);
            herramienToolStripMenuItem.Text = "Herramientas";
            // 
            // compilarToolStripMenuItem
            // 
            compilarToolStripMenuItem.Name = "compilarToolStripMenuItem";
            compilarToolStripMenuItem.Size = new Size(223, 26);
            compilarToolStripMenuItem.Text = "Compilar";
            compilarToolStripMenuItem.Click += compilarToolStripMenuItem_Click;
            // 
            // verTokensToolStripMenuItem
            // 
            verTokensToolStripMenuItem.Name = "verTokensToolStripMenuItem";
            verTokensToolStripMenuItem.Size = new Size(223, 26);
            verTokensToolStripMenuItem.Text = "Ver Tokens";
            verTokensToolStripMenuItem.Click += verTokensToolStripMenuItem_Click;
            // 
            // verArbolSinctaticoToolStripMenuItem
            // 
            verArbolSinctaticoToolStripMenuItem.Name = "verArbolSinctaticoToolStripMenuItem";
            verArbolSinctaticoToolStripMenuItem.Size = new Size(223, 26);
            verArbolSinctaticoToolStripMenuItem.Text = "Ver Arbol Sinctatico";
            verArbolSinctaticoToolStripMenuItem.Click += verArbolSinctaticoToolStripMenuItem_Click;
            // 
            // ayudaToolStripMenuItem
            // 
            ayudaToolStripMenuItem.DropDownItems.AddRange(new ToolStripItem[] { aercaDeToolStripMenuItem });
            ayudaToolStripMenuItem.Name = "ayudaToolStripMenuItem";
            ayudaToolStripMenuItem.Size = new Size(65, 24);
            ayudaToolStripMenuItem.Text = "Ayuda";
            // 
            // aercaDeToolStripMenuItem
            // 
            aercaDeToolStripMenuItem.Name = "aercaDeToolStripMenuItem";
            aercaDeToolStripMenuItem.Size = new Size(151, 26);
            aercaDeToolStripMenuItem.Text = "Aerca de";
            // 
            // TxtCodigo
            // 
            TxtCodigo.Location = new Point(17, 87);
            TxtCodigo.Margin = new Padding(3, 4, 3, 4);
            TxtCodigo.Multiline = true;
            TxtCodigo.Name = "TxtCodigo";
            TxtCodigo.ScrollBars = ScrollBars.Vertical;
            TxtCodigo.Size = new Size(466, 244);
            TxtCodigo.TabIndex = 1;
            // 
            // LblSalida
            // 
            LblSalida.Font = new Font("Segoe UI", 12F, FontStyle.Bold, GraphicsUnit.Point);
            LblSalida.Location = new Point(17, 336);
            LblSalida.Name = "LblSalida";
            LblSalida.Size = new Size(241, 32);
            LblSalida.TabIndex = 2;
            LblSalida.Text = "Salida";
            // 
            // label1
            // 
            label1.Font = new Font("Segoe UI", 12F, FontStyle.Bold, GraphicsUnit.Point);
            label1.Location = new Point(22, 47);
            label1.Name = "label1";
            label1.Size = new Size(122, 27);
            label1.TabIndex = 3;
            label1.Text = "Codigo:";
            // 
            // TxtSalida
            // 
            TxtSalida.Location = new Point(22, 373);
            TxtSalida.Margin = new Padding(3, 4, 3, 4);
            TxtSalida.Multiline = true;
            TxtSalida.Name = "TxtSalida";
            TxtSalida.ScrollBars = ScrollBars.Vertical;
            TxtSalida.Size = new Size(461, 204);
            TxtSalida.TabIndex = 4;
            // 
            // LbLASM
            // 
            LbLASM.Font = new Font("Segoe UI", 12F, FontStyle.Bold, GraphicsUnit.Point);
            LbLASM.Location = new Point(509, 143);
            LbLASM.Name = "LbLASM";
            LbLASM.Size = new Size(203, 27);
            LbLASM.TabIndex = 5;
            LbLASM.Text = "Ensamblador";
            // 
            // TxtEnsamblador
            // 
            TxtEnsamblador.Location = new Point(509, 174);
            TxtEnsamblador.Margin = new Padding(3, 4, 3, 4);
            TxtEnsamblador.Multiline = true;
            TxtEnsamblador.Name = "TxtEnsamblador";
            TxtEnsamblador.ScrollBars = ScrollBars.Vertical;
            TxtEnsamblador.Size = new Size(455, 403);
            TxtEnsamblador.TabIndex = 6;
            TxtEnsamblador.TextChanged += TxtEnsamblador_TextChanged;
            // 
            // BtnCompilar
            // 
            BtnCompilar.BackColor = Color.CornflowerBlue;
            BtnCompilar.Font = new Font("Segoe UI", 12F, FontStyle.Bold, GraphicsUnit.Point);
            BtnCompilar.ForeColor = Color.White;
            BtnCompilar.Location = new Point(509, 87);
            BtnCompilar.Margin = new Padding(3, 4, 3, 4);
            BtnCompilar.Name = "BtnCompilar";
            BtnCompilar.Size = new Size(141, 40);
            BtnCompilar.TabIndex = 7;
            BtnCompilar.Text = "COMPILAR";
            BtnCompilar.UseVisualStyleBackColor = false;
            BtnCompilar.Click += BtnCompilar_Click;
            // 
            // BtnLimpiar
            // 
            BtnLimpiar.BackColor = Color.FromArgb(255, 128, 128);
            BtnLimpiar.Font = new Font("Segoe UI", 12F, FontStyle.Bold, GraphicsUnit.Point);
            BtnLimpiar.ForeColor = Color.White;
            BtnLimpiar.Location = new Point(656, 87);
            BtnLimpiar.Margin = new Padding(3, 4, 3, 4);
            BtnLimpiar.Name = "BtnLimpiar";
            BtnLimpiar.Size = new Size(113, 40);
            BtnLimpiar.TabIndex = 8;
            BtnLimpiar.Text = "LIMPIAR";
            BtnLimpiar.UseVisualStyleBackColor = false;
            BtnLimpiar.Click += BtnLimpiar_Click;
            // 
            // btnGen
            // 
            btnGen.BackColor = Color.FromArgb(0, 192, 0);
            btnGen.Font = new Font("Segoe UI", 12F, FontStyle.Bold, GraphicsUnit.Point);
            btnGen.ForeColor = Color.White;
            btnGen.Location = new Point(775, 87);
            btnGen.Margin = new Padding(3, 4, 3, 4);
            btnGen.Name = "btnGen";
            btnGen.Size = new Size(113, 41);
            btnGen.TabIndex = 9;
            btnGen.Text = "GENERAR";
            btnGen.UseVisualStyleBackColor = false;
            btnGen.Click += btnGen_Click;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1146, 595);
            Controls.Add(btnGen);
            Controls.Add(BtnLimpiar);
            Controls.Add(BtnCompilar);
            Controls.Add(TxtEnsamblador);
            Controls.Add(LbLASM);
            Controls.Add(TxtSalida);
            Controls.Add(label1);
            Controls.Add(LblSalida);
            Controls.Add(TxtCodigo);
            Controls.Add(menuStrip1);
            MainMenuStrip = menuStrip1;
            Margin = new Padding(3, 4, 3, 4);
            Name = "Form1";
            Text = "CLETI";
            Load += Form1_Load;
            menuStrip1.ResumeLayout(false);
            menuStrip1.PerformLayout();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private MenuStrip menuStrip1;
        private ToolStripMenuItem archivoToolStripMenuItem;
        private ToolStripMenuItem nuevoToolStripMenuItem;
        private ToolStripMenuItem abrirToolStripMenuItem;
        private ToolStripMenuItem guardarToolStripMenuItem;
        private ToolStripMenuItem cerrarToolStripMenuItem;
        private ToolStripMenuItem herramienToolStripMenuItem;
        private ToolStripMenuItem compilarToolStripMenuItem;
        private ToolStripMenuItem verTokensToolStripMenuItem;
        private ToolStripMenuItem ayudaToolStripMenuItem;
        private ToolStripMenuItem aercaDeToolStripMenuItem;
        private TextBox TxtCodigo;
        private Label LblSalida;
        private Label label1;
        private TextBox TxtSalida;
        private Label LbLASM;
        private TextBox TxtEnsamblador;
        private Button BtnCompilar;
        private Button BtnLimpiar;
        private ToolStripMenuItem guardarCodigoToolStripMenuItem;
        private ToolStripMenuItem verArbolSinctaticoToolStripMenuItem;
        private Button btnGen;
    }
}
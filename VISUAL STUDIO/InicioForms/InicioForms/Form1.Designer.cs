namespace InicioForms
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            btnIniciarDia = new Button();
            label1 = new Label();
            lblSaludo = new Label();
            txtNombrePersona = new TextBox();
            label2 = new Label();
            SuspendLayout();
            // 
            // btnIniciarDia
            // 
            btnIniciarDia.BackgroundImage = (Image)resources.GetObject("btnIniciarDia.BackgroundImage");
            btnIniciarDia.BackgroundImageLayout = ImageLayout.Zoom;
            btnIniciarDia.Cursor = Cursors.Hand;
            btnIniciarDia.FlatStyle = FlatStyle.Flat;
            btnIniciarDia.Font = new Font("Candara", 14.25F, FontStyle.Bold, GraphicsUnit.Point, 0);
            btnIniciarDia.ImageAlign = ContentAlignment.MiddleRight;
            btnIniciarDia.Location = new Point(22, 123);
            btnIniciarDia.Name = "btnIniciarDia";
            btnIniciarDia.RightToLeft = RightToLeft.No;
            btnIniciarDia.Size = new Size(284, 55);
            btnIniciarDia.TabIndex = 0;
            btnIniciarDia.Text = "Iniciar el día";
            btnIniciarDia.TextAlign = ContentAlignment.MiddleLeft;
            btnIniciarDia.UseVisualStyleBackColor = true;
            btnIniciarDia.Click += btnIniciarDia_Click;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Segoe UI", 12F);
            label1.Location = new Point(22, 22);
            label1.Name = "label1";
            label1.Size = new Size(192, 21);
            label1.TabIndex = 1;
            label1.Text = "Presiona para iniciar el día";
            label1.Click += label1_Click;
            // 
            // lblSaludo
            // 
            lblSaludo.AutoSize = true;
            lblSaludo.Font = new Font("Segoe UI", 15F);
            lblSaludo.Location = new Point(22, 191);
            lblSaludo.Name = "lblSaludo";
            lblSaludo.Size = new Size(0, 28);
            lblSaludo.TabIndex = 2;
            // 
            // txtNombrePersona
            // 
            txtNombrePersona.Location = new Point(154, 82);
            txtNombrePersona.Name = "txtNombrePersona";
            txtNombrePersona.Size = new Size(152, 23);
            txtNombrePersona.TabIndex = 3;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Font = new Font("Segoe UI", 10F);
            label2.Location = new Point(22, 83);
            label2.Name = "label2";
            label2.Size = new Size(126, 19);
            label2.TabIndex = 4;
            label2.Text = "Ingresa tu nombre:";
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 450);
            Controls.Add(label2);
            Controls.Add(txtNombrePersona);
            Controls.Add(lblSaludo);
            Controls.Add(label1);
            Controls.Add(btnIniciarDia);
            Name = "Form1";
            Text = "Form1";
            Load += Form1_Load;
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Button btnIniciarDia;
        private Label label1;
        private Label lblSaludo;
        private TextBox txtNombrePersona;
        private Label label2;
    }
}

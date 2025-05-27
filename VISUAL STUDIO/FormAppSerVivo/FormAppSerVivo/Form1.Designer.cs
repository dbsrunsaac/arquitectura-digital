namespace FormAppSerVivo
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
            btnSaludar = new Button();
            pictureBox1 = new PictureBox();
            txtSaludar = new TextBox();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).BeginInit();
            SuspendLayout();
            // 
            // btnSaludar
            // 
            btnSaludar.FlatStyle = FlatStyle.Flat;
            btnSaludar.Font = new Font("Segoe UI", 12F);
            btnSaludar.Location = new Point(79, 363);
            btnSaludar.Name = "btnSaludar";
            btnSaludar.Size = new Size(170, 49);
            btnSaludar.TabIndex = 0;
            btnSaludar.Text = "Saludar";
            btnSaludar.UseVisualStyleBackColor = true;
            btnSaludar.Click += btnSaludar_Click;
            // 
            // pictureBox1
            // 
            pictureBox1.Image = (Image)resources.GetObject("pictureBox1.Image");
            pictureBox1.Location = new Point(79, 54);
            pictureBox1.Name = "pictureBox1";
            pictureBox1.Size = new Size(170, 303);
            pictureBox1.TabIndex = 1;
            pictureBox1.TabStop = false;
            // 
            // txtSaludar
            // 
            txtSaludar.Font = new Font("Segoe UI", 15F);
            txtSaludar.Location = new Point(255, 148);
            txtSaludar.Multiline = true;
            txtSaludar.Name = "txtSaludar";
            txtSaludar.Size = new Size(259, 40);
            txtSaludar.TabIndex = 2;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 450);
            Controls.Add(txtSaludar);
            Controls.Add(pictureBox1);
            Controls.Add(btnSaludar);
            Name = "Form1";
            Text = "Form1";
            ((System.ComponentModel.ISupportInitialize)pictureBox1).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Button btnSaludar;
        private PictureBox pictureBox1;
        private TextBox txtSaludar;
    }
}

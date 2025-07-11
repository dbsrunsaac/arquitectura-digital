namespace AppFormPipeBits
{
    partial class Token
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
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
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            rtxtTokens = new RichTextBox();
            label1 = new Label();
            SuspendLayout();
            // 
            // rtxtTokens
            // 
            rtxtTokens.Dock = DockStyle.Bottom;
            rtxtTokens.Location = new Point(0, 49);
            rtxtTokens.Name = "rtxtTokens";
            rtxtTokens.Size = new Size(474, 404);
            rtxtTokens.TabIndex = 0;
            rtxtTokens.Text = "";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Microsoft Sans Serif", 14.25F);
            label1.Location = new Point(5, 18);
            label1.Name = "label1";
            label1.Size = new Size(185, 24);
            label1.TabIndex = 1;
            label1.Text = "Tokens Encontrados";
            // 
            // Token
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.FromArgb(223, 227, 238);
            ClientSize = new Size(474, 453);
            Controls.Add(label1);
            Controls.Add(rtxtTokens);
            Name = "Token";
            Text = "Tokens";
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private RichTextBox rtxtTokens;
        private Label label1;
    }
}
namespace CLETI
{
    partial class AST
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;
        private PictureBox PtbAST;
        private Panel panel1;

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
            panel1 = new Panel();
            PtbAST = new PictureBox();
            panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)PtbAST).BeginInit();
            SuspendLayout();
            // 
            // panel1
            // 
            panel1.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            panel1.AutoScroll = true;
            panel1.Controls.Add(PtbAST);
            panel1.Location = new Point(14, 14);
            panel1.Margin = new Padding(4, 3, 4, 3);
            panel1.Name = "panel1";
            panel1.Size = new Size(887, 620);
            panel1.TabIndex = 1;
            panel1.Paint += panel1_Paint;
            // 
            // PtbAST
            // 
            PtbAST.Location = new Point(4, 3);
            PtbAST.Margin = new Padding(4, 3, 4, 3);
            PtbAST.Name = "PtbAST";
            PtbAST.Size = new Size(760, 537);
            PtbAST.SizeMode = PictureBoxSizeMode.AutoSize;
            PtbAST.TabIndex = 0;
            PtbAST.TabStop = false;
            // 
            // AST
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(915, 647);
            Controls.Add(panel1);
            Margin = new Padding(4, 3, 4, 3);
            Name = "AST";
            Text = "AST";
            Load += AST_Load;
            panel1.ResumeLayout(false);
            panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)PtbAST).EndInit();
            ResumeLayout(false);
        }

        #endregion
    }
}

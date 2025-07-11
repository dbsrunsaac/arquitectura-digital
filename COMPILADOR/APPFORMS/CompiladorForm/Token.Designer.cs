namespace CLETI
{
    partial class Token
    {
        private System.ComponentModel.IContainer components = null;
        private TextBox TxtToken;

        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        private void InitializeComponent()
        {
            TxtToken = new TextBox();
            SuspendLayout();
            // 
            // TxtToken
            // 
            TxtToken.Dock = DockStyle.Fill;
            TxtToken.Location = new Point(0, 0);
            TxtToken.Multiline = true;
            TxtToken.Name = "TxtToken";
            TxtToken.ScrollBars = ScrollBars.Vertical;
            TxtToken.Size = new Size(284, 261);
            TxtToken.TabIndex = 0;
            TxtToken.WordWrap = false;
            TxtToken.ReadOnly = true;
            // 
            // Token
            // 
            AutoScaleDimensions = new SizeF(6F, 13F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(284, 261);
            Controls.Add(TxtToken);
            Name = "Token";
            Text = "TOKENS";
            ResumeLayout(false);
            PerformLayout();
        }
    }
}

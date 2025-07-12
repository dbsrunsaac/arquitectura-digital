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
            TxtToken.Margin = new Padding(4, 3, 4, 3);
            TxtToken.Multiline = true;
            TxtToken.Name = "TxtToken";
            TxtToken.ReadOnly = true;
            TxtToken.ScrollBars = ScrollBars.Vertical;
            TxtToken.Size = new Size(331, 301);
            TxtToken.TabIndex = 0;
            TxtToken.WordWrap = false;
            TxtToken.TextChanged += TxtToken_TextChanged;
            // 
            // Token
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(331, 301);
            Controls.Add(TxtToken);
            Margin = new Padding(4, 3, 4, 3);
            Name = "Token";
            Text = "TOKENS";
            ResumeLayout(false);
            PerformLayout();
        }
    }
}

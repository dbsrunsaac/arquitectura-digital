namespace AppCalculadora
{
    partial class frmCalculadora
    {
        /// <summary>
        /// Variable del diseñador necesaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén usando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido de este método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.btnSumar = new System.Windows.Forms.Button();
            this.txtResultado = new System.Windows.Forms.TextBox();
            this.btnRestar = new System.Windows.Forms.Button();
            this.btnProducto = new System.Windows.Forms.Button();
            this.btnDivision = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.txtOperando1 = new System.Windows.Forms.TextBox();
            this.txtOperando2 = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // btnSumar
            // 
            this.btnSumar.BackColor = System.Drawing.Color.Red;
            this.btnSumar.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSumar.ForeColor = System.Drawing.Color.White;
            this.btnSumar.Location = new System.Drawing.Point(354, 151);
            this.btnSumar.Name = "btnSumar";
            this.btnSumar.Size = new System.Drawing.Size(104, 58);
            this.btnSumar.TabIndex = 0;
            this.btnSumar.Text = "+";
            this.btnSumar.UseVisualStyleBackColor = false;
            this.btnSumar.Click += new System.EventHandler(this.btnSumar_Click_1);
            // 
            // txtResultado
            // 
            this.txtResultado.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(192)))), ((int)(((byte)(0)))));
            this.txtResultado.Location = new System.Drawing.Point(126, 35);
            this.txtResultado.Multiline = true;
            this.txtResultado.Name = "txtResultado";
            this.txtResultado.Size = new System.Drawing.Size(332, 72);
            this.txtResultado.TabIndex = 1;
            this.txtResultado.TextChanged += new System.EventHandler(this.txtResultado_TextChanged);
            // 
            // btnRestar
            // 
            this.btnRestar.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnRestar.Location = new System.Drawing.Point(354, 215);
            this.btnRestar.Name = "btnRestar";
            this.btnRestar.Size = new System.Drawing.Size(104, 58);
            this.btnRestar.TabIndex = 2;
            this.btnRestar.Text = "-";
            this.btnRestar.UseVisualStyleBackColor = true;
            this.btnRestar.Click += new System.EventHandler(this.btnRestar_Click);
            // 
            // btnProducto
            // 
            this.btnProducto.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnProducto.Location = new System.Drawing.Point(354, 279);
            this.btnProducto.Name = "btnProducto";
            this.btnProducto.Size = new System.Drawing.Size(104, 58);
            this.btnProducto.TabIndex = 3;
            this.btnProducto.Text = "x";
            this.btnProducto.UseVisualStyleBackColor = true;
            this.btnProducto.Click += new System.EventHandler(this.btnProducto_Click);
            // 
            // btnDivision
            // 
            this.btnDivision.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnDivision.Location = new System.Drawing.Point(354, 343);
            this.btnDivision.Name = "btnDivision";
            this.btnDivision.Size = new System.Drawing.Size(104, 58);
            this.btnDivision.TabIndex = 4;
            this.btnDivision.Text = "/";
            this.btnDivision.UseVisualStyleBackColor = true;
            this.btnDivision.Click += new System.EventHandler(this.btnDivision_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(123, 16);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(69, 16);
            this.label1.TabIndex = 5;
            this.label1.Text = "Resultado";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(351, 132);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(85, 16);
            this.label2.TabIndex = 6;
            this.label2.Text = "Operaciones";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(123, 132);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(62, 16);
            this.label3.TabIndex = 7;
            this.label3.Text = "Numeros";
            // 
            // txtOperando1
            // 
            this.txtOperando1.ForeColor = System.Drawing.SystemColors.MenuHighlight;
            this.txtOperando1.Location = new System.Drawing.Point(126, 151);
            this.txtOperando1.Multiline = true;
            this.txtOperando1.Name = "txtOperando1";
            this.txtOperando1.Size = new System.Drawing.Size(91, 72);
            this.txtOperando1.TabIndex = 8;
            // 
            // txtOperando2
            // 
            this.txtOperando2.ForeColor = System.Drawing.SystemColors.MenuHighlight;
            this.txtOperando2.Location = new System.Drawing.Point(126, 229);
            this.txtOperando2.Multiline = true;
            this.txtOperando2.Name = "txtOperando2";
            this.txtOperando2.Size = new System.Drawing.Size(91, 72);
            this.txtOperando2.TabIndex = 9;
            // 
            // frmCalculadora
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(647, 517);
            this.Controls.Add(this.txtOperando2);
            this.Controls.Add(this.txtOperando1);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnDivision);
            this.Controls.Add(this.btnProducto);
            this.Controls.Add(this.btnRestar);
            this.Controls.Add(this.txtResultado);
            this.Controls.Add(this.btnSumar);
            this.Name = "frmCalculadora";
            this.Text = "Calculadora";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnSumar;
        private System.Windows.Forms.TextBox txtResultado;
        private System.Windows.Forms.Button btnRestar;
        private System.Windows.Forms.Button btnProducto;
        private System.Windows.Forms.Button btnDivision;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtOperando1;
        private System.Windows.Forms.TextBox txtOperando2;
    }
}


using AnalizadorLexico;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AppFormPipeBits
{
    public partial class Token : Form
    {
        public Token(List<(CScanner.TokenType, string)> tokens)
        {
            InitializeComponent();
            MostrarTokens(tokens);
        }

        private void MostrarTokens(List<(CScanner.TokenType, string)> tokens)
        {
            rtxtTokens.Clear();
            foreach (var token in tokens)
            {
                rtxtTokens.AppendText($"{token.Item1}: {token.Item2}\n");
            }
        }
    }
}

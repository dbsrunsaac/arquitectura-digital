using System;
using System.Collections.Generic;
using System.Windows.Forms;
using AnalizadorLexico;

namespace CLETI
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
            TxtToken.Clear();
            foreach (var token in tokens)
            {
                TxtToken.AppendText($"{token.Item1}: {token.Item2}\n");
            }
        }
    }
}

using System;
using System.Drawing;
using System.IO;
using System.Windows.Forms;
using AnalizadorSintactico;
using QuickGraph;
using QuickGraph.Graphviz;
using QuickGraph.Graphviz.Dot;

namespace CLETI
{
    public partial class AST : Form
    {
        private readonly NodoPrograma _programa;

        public AST(NodoPrograma programa)
        {
            InitializeComponent();
            _programa = programa;
            MostrarAST();
        }

        private void MostrarAST()
        {
            var graph = new AdjacencyGraph<NodoAST, Edge<NodoAST>>();
            AgregarNodosYAristas(graph, _programa);

            var graphviz = new GraphvizAlgorithm<NodoAST, Edge<NodoAST>>(graph);
            graphviz.FormatVertex += FormatVertex;

            string dotOutput = graphviz.Generate();
            string dotFilePath = Path.Combine(Directory.GetCurrentDirectory(), "ast.dot");
            string pngFilePath = Path.Combine(Directory.GetCurrentDirectory(), "ast.png");

            // Guardar el archivo .dot
            File.WriteAllText(dotFilePath, dotOutput);

            // Generar el archivo .png usando Graphviz
            var startInfo = new System.Diagnostics.ProcessStartInfo("dot")
            {
                Arguments = $"-Tpng \"{dotFilePath}\" -o \"{pngFilePath}\"",
                CreateNoWindow = true,
                UseShellExecute = false,
                RedirectStandardOutput = true,
                RedirectStandardError = true
            };

            using (var process = new System.Diagnostics.Process())
            {
                process.StartInfo = startInfo;
                process.Start();
                process.WaitForExit();
            }

            // Mostrar el archivo .png en el PictureBox
            if (File.Exists(pngFilePath))
            {
                using (var img = Image.FromFile(pngFilePath))
                {
                    PtbAST.Image = new Bitmap(img);
                }
            }
            else
            {
                MessageBox.Show("No se pudo generar la imagen del AST.");
            }
        }

        private void FormatVertex(object sender, FormatVertexEventArgs<NodoAST> e)
        {
            if (e.Vertex is NodoIdentificador nodoIdentificador)
            {
                e.VertexFormatter.Label = $"Id: {nodoIdentificador.aNombre}";
            }
            else if (e.Vertex is NodoNumero nodoNumero)
            {
                e.VertexFormatter.Label = $"Num: {nodoNumero.aValor}";
            }
            else if (e.Vertex is NodoOperacion nodoOperacion)
            {
                e.VertexFormatter.Label = $"Op: {nodoOperacion.aOperador}";
            }
            else if (e.Vertex is NodoAsignacion nodoAsignacion)
            {
                e.VertexFormatter.Label = $"Asign: {nodoAsignacion.aIdentificador.aNombre}";
            }
            else if (e.Vertex is NodoPrint nodoPrint)
            {
                e.VertexFormatter.Label = "Print";
            }
            else if (e.Vertex is NodoPrograma)
            {
                e.VertexFormatter.Label = "Programa";
            }
            else
            {
                e.VertexFormatter.Label = e.Vertex.GetType().Name;
            }
        }

        private void AgregarNodosYAristas(AdjacencyGraph<NodoAST, Edge<NodoAST>> graph, NodoAST nodo)
        {
            if (nodo == null) return;

            if (!graph.ContainsVertex(nodo))
            {
                graph.AddVertex(nodo);
            }

            switch (nodo)
            {
                case NodoPrograma nodoPrograma:
                    foreach (var hijo in nodoPrograma.aInstrucciones)
                    {
                        if (hijo != null)
                        {
                            if (!graph.ContainsVertex(hijo))
                            {
                                graph.AddVertex(hijo);
                            }
                            if (!graph.ContainsEdge(nodo, hijo))
                            {
                                graph.AddEdge(new Edge<NodoAST>(nodo, hijo));
                            }
                            AgregarNodosYAristas(graph, hijo);
                        }
                    }
                    break;
                case NodoOperacion nodoOperacion:
                    if (nodoOperacion.aIzquierda != null)
                    {
                        if (!graph.ContainsVertex(nodoOperacion.aIzquierda))
                        {
                            graph.AddVertex(nodoOperacion.aIzquierda);
                        }
                        if (!graph.ContainsEdge(nodo, nodoOperacion.aIzquierda))
                        {
                            graph.AddEdge(new Edge<NodoAST>(nodo, nodoOperacion.aIzquierda));
                        }
                        AgregarNodosYAristas(graph, nodoOperacion.aIzquierda);
                    }
                    if (nodoOperacion.aDerecha != null)
                    {
                        if (!graph.ContainsVertex(nodoOperacion.aDerecha))
                        {
                            graph.AddVertex(nodoOperacion.aDerecha);
                        }
                        if (!graph.ContainsEdge(nodo, nodoOperacion.aDerecha))
                        {
                            graph.AddEdge(new Edge<NodoAST>(nodo, nodoOperacion.aDerecha));
                        }
                        AgregarNodosYAristas(graph, nodoOperacion.aDerecha);
                    }
                    break;
                case NodoIf nodoIf:
                    if (nodoIf.Condicion != null)
                    {
                        if (!graph.ContainsVertex(nodoIf.Condicion))
                        {
                            graph.AddVertex(nodoIf.Condicion);
                        }
                        if (!graph.ContainsEdge(nodo, nodoIf.Condicion))
                        {
                            graph.AddEdge(new Edge<NodoAST>(nodo, nodoIf.Condicion));
                        }
                        AgregarNodosYAristas(graph, nodoIf.Condicion);
                    }
                    if (nodoIf.CuerpoIf != null)
                    {
                        if (!graph.ContainsVertex(nodoIf.CuerpoIf))
                        {
                            graph.AddVertex(nodoIf.CuerpoIf);
                        }
                        if (!graph.ContainsEdge(nodo, nodoIf.CuerpoIf))
                        {
                            graph.AddEdge(new Edge<NodoAST>(nodo, nodoIf.CuerpoIf));
                        }
                        AgregarNodosYAristas(graph, nodoIf.CuerpoIf);
                    }
                    if (nodoIf.CuerpoElse != null)
                    {
                        if (!graph.ContainsVertex(nodoIf.CuerpoElse))
                        {
                            graph.AddVertex(nodoIf.CuerpoElse);
                        }
                        if (!graph.ContainsEdge(nodo, nodoIf.CuerpoElse))
                        {
                            graph.AddEdge(new Edge<NodoAST>(nodo, nodoIf.CuerpoElse));
                        }
                        AgregarNodosYAristas(graph, nodoIf.CuerpoElse);
                    }
                    break;
                case NodoWhile nodoWhile:
                    if (nodoWhile.Condicion != null)
                    {
                        if (!graph.ContainsVertex(nodoWhile.Condicion))
                        {
                            graph.AddVertex(nodoWhile.Condicion);
                        }
                        if (!graph.ContainsEdge(nodo, nodoWhile.Condicion))
                        {
                            graph.AddEdge(new Edge<NodoAST>(nodo, nodoWhile.Condicion));
                        }
                        AgregarNodosYAristas(graph, nodoWhile.Condicion);
                    }
                    if (nodoWhile.Cuerpo != null)
                    {
                        if (!graph.ContainsVertex(nodoWhile.Cuerpo))
                        {
                            graph.AddVertex(nodoWhile.Cuerpo);
                        }
                        if (!graph.ContainsEdge(nodo, nodoWhile.Cuerpo))
                        {
                            graph.AddEdge(new Edge<NodoAST>(nodo, nodoWhile.Cuerpo));
                        }
                        AgregarNodosYAristas(graph, nodoWhile.Cuerpo);
                    }
                    break;
                case NodoAsignacion nodoAsignacion:
                    if (nodoAsignacion.aIdentificador != null)
                    {
                        if (!graph.ContainsVertex(nodoAsignacion.aIdentificador))
                        {
                            graph.AddVertex(nodoAsignacion.aIdentificador);
                        }
                        if (!graph.ContainsEdge(nodo, nodoAsignacion.aIdentificador))
                        {
                            graph.AddEdge(new Edge<NodoAST>(nodo, nodoAsignacion.aIdentificador));
                        }
                        AgregarNodosYAristas(graph, nodoAsignacion.aIdentificador);
                    }
                    if (nodoAsignacion.aValor != null)
                    {
                        if (!graph.ContainsVertex(nodoAsignacion.aValor))
                        {
                            graph.AddVertex(nodoAsignacion.aValor);
                        }
                        if (!graph.ContainsEdge(nodo, nodoAsignacion.aValor))
                        {
                            graph.AddEdge(new Edge<NodoAST>(nodo, nodoAsignacion.aValor));
                        }
                        AgregarNodosYAristas(graph, nodoAsignacion.aValor);
                    }
                    break;
                case NodoPrint nodoPrint:
                    foreach (var valor in nodoPrint.aValores)
                    {
                        if (valor != null)
                        {
                            if (!graph.ContainsVertex(valor))
                            {
                                graph.AddVertex(valor);
                            }
                            if (!graph.ContainsEdge(nodo, valor))
                            {
                                graph.AddEdge(new Edge<NodoAST>(nodo, valor));
                            }
                            AgregarNodosYAristas(graph, valor);
                        }
                    }
                    break;
                default:
                    break;
            }
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void AST_Load(object sender, EventArgs e)
        {

        }
    }
}

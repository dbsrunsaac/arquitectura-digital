using System;
using System.Collections.Generic;
using System.IO;
using AnalizadorSintactico;

namespace AnalizadorSemantico
{
    public class ErrorSemantico
    {
        public string Mensaje { get; set; }

        public ErrorSemantico(string mensaje)
        {
            Mensaje = mensaje;
        }

        public override string ToString()
        {
            return Mensaje;
        }
    }

    public class AnalizadorSeman
    {
        private Dictionary<string, string> aTablaSimbolos;
        private List<ErrorSemantico> aErrores;

        public AnalizadorSeman()
        {
            aTablaSimbolos = new Dictionary<string, string>();
            aErrores = new List<ErrorSemantico>();
        }

        public List<ErrorSemantico> ObtenerErrores()
        {
            return aErrores;
        }

        public Dictionary<string, string> ObtenerTablaSimbolos()
        {
            return aTablaSimbolos;
        }

        public void Analizar(NodoPrograma nodo)
        {
            RecorrerNodo(nodo);
        }

        private void RecorrerNodo(NodoAST nodo)
        {
            if (nodo is NodoPrograma nodoPrograma)
            {
                if (nodoPrograma.aInstrucciones != null)
                {
                    foreach (var instruccion in nodoPrograma.aInstrucciones)
                    {
                        if (instruccion != null)
                        {
                            instruccion.Aceptar(new AnalizadorSemanticoVisitor(aTablaSimbolos, aErrores));
                        }
                    }
                }
            }
            else
            {
                nodo.Aceptar(new AnalizadorSemanticoVisitor(aTablaSimbolos, aErrores));
            }
        }

        public void GuardarAST(NodoPrograma nodo, string rutaArchivo)
        {
            using (StreamWriter escritor = new StreamWriter(rutaArchivo))
            {
                GuardarASTVisitor visitor = new GuardarASTVisitor(escritor);
                nodo.Aceptar(visitor);
                visitor.Close();
            }
        }
    }

    public class AnalizadorSemanticoVisitor : IVisitor
    {
        private Dictionary<string, string> aTablaSimbolos;
        private List<ErrorSemantico> aErrores;

        public AnalizadorSemanticoVisitor(Dictionary<string, string> tablaSimbolos, List<ErrorSemantico> errores)
        {
            aTablaSimbolos = tablaSimbolos;
            aErrores = errores;
        }

        public void Visit(NodoPrograma nodo)
        {
            if (nodo.aInstrucciones != null)
            {
                foreach (var instruccion in nodo.aInstrucciones)
                {
                    if (instruccion != null)
                    {
                        instruccion.Aceptar(this);
                    }
                }
            }
        }

        public void Visit(NodoIdentificador nodo)
        {
            if (!aTablaSimbolos.ContainsKey(nodo.aNombre))
            {
                aErrores.Add(new ErrorSemantico($"Identificador no declarado: {nodo.aNombre}"));
            }
            else
            {
                Console.WriteLine($"Identificador '{nodo.aNombre}' encontrado con tipo '{aTablaSimbolos[nodo.aNombre]}'");
            }
        }

        public void Visit(NodoNumero nodo)
        {
            // Los números no requieren verificación de declaración
        }

        public void Visit(NodoCadena nodo)
        {
            // Las cadenas no requieren verificación de declaración
        }

        public void Visit(NodoOperacion nodo)
        {
            nodo.aIzquierda?.Aceptar(this);
            nodo.aDerecha?.Aceptar(this);

            var tipoIzquierdo = ObtenerTipo(nodo.aIzquierda);
            var tipoDerecho = ObtenerTipo(nodo.aDerecha);

            Console.WriteLine($"Operación: {nodo.aOperador}, Tipo izquierdo: {tipoIzquierdo}, Tipo derecho: {tipoDerecho}");

            if (tipoIzquierdo != tipoDerecho)
            {
                aErrores.Add(new ErrorSemantico("Tipos incompatibles para la operación"));
            }
        }

        public void Visit(NodoAsignacion nodo)
        {
            nodo.aValor.Aceptar(this);

            var tipoValor = ObtenerTipo(nodo.aValor);
            aTablaSimbolos[nodo.aIdentificador.aNombre] = tipoValor;
            Console.WriteLine($"Asignación: '{nodo.aIdentificador.aNombre}' con tipo '{tipoValor}'");
        }

        public void Visit(NodoPrint nodo)
        {
            foreach (var valor in nodo.aValores)
            {
                valor.Aceptar(this);
            }
        }

        public void Visit(NodoIf nodo)
        {
            nodo.Condicion?.Aceptar(this);
            nodo.CuerpoIf?.Aceptar(this);
            nodo.CuerpoElse?.Aceptar(this);
        }

        public void Visit(NodoWhile nodo)
        {
            nodo.Condicion?.Aceptar(this);
            nodo.Cuerpo?.Aceptar(this);
        }

        public void Visit(NodoFuncion nodo)
        {
            if (!aTablaSimbolos.ContainsKey(nodo.aNombre))
            {
                aTablaSimbolos[nodo.aNombre] = "funcion:int";
                Console.WriteLine($"Función '{nodo.aNombre}' registrada con tipo 'funcion:int'");
            }

            foreach (var parametro in nodo.aParametros)
            {
                if (!aTablaSimbolos.ContainsKey(parametro))
                {
                    aTablaSimbolos[parametro] = "variable";
                }
                Console.WriteLine($"Parámetro '{parametro}' registrado como 'variable'");
            }

            nodo.aCuerpo.Aceptar(this);
        }

        public void Visit(NodoReturn nodo)
        {
            nodo.aValorRetorno?.Aceptar(this);
        }

        private string ObtenerTipo(NodoAST nodo)
        {
            if (nodo is NodoIdentificador identificador)
            {
                var tipo = aTablaSimbolos.ContainsKey(identificador.aNombre) ? aTablaSimbolos[identificador.aNombre] : "desconocido";
                Console.WriteLine($"ObtenerTipo - NodoIdentificador: {identificador.aNombre} -> {tipo}");
                return tipo;
            }
            if (nodo is NodoNumero)
            {
                Console.WriteLine($"ObtenerTipo - NodoNumero -> int");
                return "int";
            }
            if (nodo is NodoCadena)
            {
                Console.WriteLine($"ObtenerTipo - NodoCadena -> string");
                return "string";
            }
            if (nodo is NodoOperacion operacion)
            {
                var tipoIzquierdo = ObtenerTipo(operacion.aIzquierda);
                var tipoDerecho = ObtenerTipo(operacion.aDerecha);
                if (tipoIzquierdo != tipoDerecho)
                {
                    Console.WriteLine($"ObtenerTipo - NodoOperacion: {operacion.aOperador} -> desconocido");
                    return "desconocido";
                }
                return tipoIzquierdo;
            }
            if (nodo is NodoFuncion nodoFunc)
            {
                if (aTablaSimbolos.ContainsKey(nodoFunc.aNombre))
                {
                    if (aTablaSimbolos[nodoFunc.aNombre] == "funcion:int")
                    {
                        return "int";
                    }
                }
            }
            Console.WriteLine($"ObtenerTipo - Desconocido");
            return "desconocido";
        }
    }

    public class GuardarASTVisitor : IVisitor
    {
        private StreamWriter aEscritor;

        public GuardarASTVisitor(StreamWriter escritor)
        {
            aEscritor = escritor;
        }

        public void Visit(NodoPrograma nodo)
        {
            aEscritor.WriteLine("Programa:");
            if (nodo.aInstrucciones != null)
            {
                foreach (var instruccion in nodo.aInstrucciones)
                {
                    if (instruccion != null)
                    {
                        instruccion.Aceptar(this);
                    }
                    else
                    {
                        aEscritor.WriteLine("Instrucción nula encontrada en el programa.");
                    }
                }
            }
            else
            {
                aEscritor.WriteLine("El nodo programa no tiene instrucciones.");
            }
        }

        public void Visit(NodoIdentificador nodo)
        {
            aEscritor.WriteLine($"Identificador: {nodo.aNombre}");
        }

        public void Visit(NodoNumero nodo)
        {
            aEscritor.WriteLine($"Número: {nodo.aValor}");
        }

        public void Visit(NodoCadena nodo)
        {
            aEscritor.WriteLine($"Cadena: {nodo.aValor}");
        }

        public void Visit(NodoOperacion nodo)
        {
            aEscritor.WriteLine($"Operación: {nodo.aOperador}");
            nodo.aIzquierda?.Aceptar(this);
            nodo.aDerecha?.Aceptar(this);
        }

        public void Visit(NodoFuncion nodo)
        {
            aEscritor.WriteLine($"Función: {nodo.aNombre}");
            aEscritor.WriteLine($"Parámetros: {string.Join(", ", nodo.aParametros)}");
            nodo.aCuerpo.Aceptar(this);
        }

        public void Visit(NodoReturn nodo)
        {
            aEscritor.WriteLine("Return:");
            nodo.aValorRetorno.Aceptar(this);
        }

        public void Visit(NodoAsignacion nodo)
        {
            aEscritor.WriteLine("Asignación:");
            nodo.aIdentificador.Aceptar(this);
            nodo.aValor.Aceptar(this);
        }

        public void Visit(NodoPrint nodo)
        {
            aEscritor.WriteLine("Print:");
            foreach (var valor in nodo.aValores)
            {
                valor.Aceptar(this);
            }
        }

        public void Visit(NodoIf nodo)
        {
            aEscritor.WriteLine("If:");
            nodo.Condicion.Aceptar(this);
            nodo.CuerpoIf.Aceptar(this);
            if (nodo.CuerpoElse != null)
            {
                aEscritor.WriteLine("Else:");
                nodo.CuerpoElse.Aceptar(this);
            }
        }

        public void Visit(NodoWhile nodo)
        {
            aEscritor.WriteLine("While:");
            nodo.Condicion.Aceptar(this);
            nodo.Cuerpo.Aceptar(this);
        }

        public void Close()
        {
            aEscritor.Close();
        }
    }
}

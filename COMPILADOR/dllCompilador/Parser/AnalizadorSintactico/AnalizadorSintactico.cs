using System;
using System.Collections.Generic;
using System.IO;

namespace AnalizadorSintactico
{
    // Permite para recorrer los nodos (visitar los NODOS)
    public abstract class NodoAST
    {
        public abstract void Aceptar(IVisitor visitor);
    }

    public class NodoPrograma : NodoAST 
    {
        public List<NodoAST> aInstrucciones { get; set; } = new List<NodoAST>();

        public NodoPrograma(List<NodoAST> instrucciones)
        {
            aInstrucciones = instrucciones;
        }

        public override void Aceptar(IVisitor visitor)
        {
            visitor.Visit(this);
        }
    }

    public class NodoIdentificador : NodoAST
    {
        public string aNombre { get; set; }

        public NodoIdentificador(string nombre)
        {
            aNombre = nombre;
        }

        public override void Aceptar(IVisitor visitor)
        {
            visitor.Visit(this);
        }
    }

    public class NodoNumero : NodoAST
    {
        public string aValor { get; set; }

        public NodoNumero(string valor)
        {
            aValor = valor;
        }

        public override void Aceptar(IVisitor visitor)
        {
            visitor.Visit(this);
        }
    }

    public class NodoCadena : NodoAST
    {
        public string aValor { get; set; }

        public NodoCadena(string valor)
        {
            aValor = valor;
        }

        public override void Aceptar(IVisitor visitor)
        {
            visitor.Visit(this);
        }
    }

    public class NodoOperacion : NodoAST
    {
        public string aOperador { get; set; }
        public NodoAST aIzquierda { get; set; }
        public NodoAST aDerecha { get; set; }

        public NodoOperacion(string operador, NodoAST izquierda, NodoAST derecha)
        {
            aOperador = operador;
            aIzquierda = izquierda;
            aDerecha = derecha;
        }

        public override void Aceptar(IVisitor visitor)
        {
            visitor.Visit(this);
        }
    }

    public class NodoFuncion : NodoAST
    {
        public string aNombre { get; set; }
        public List<string> aParametros { get; set; }
        public NodoAST aCuerpo { get; set; }

        public NodoFuncion(string nombre, List<string> parametros, NodoAST cuerpo)
        {
            aNombre = nombre;
            aParametros = parametros;
            aCuerpo = cuerpo;
        }

        public override void Aceptar(IVisitor visitor)
        {
            visitor.Visit(this);
        }
    }

    public class NodoReturn : NodoAST
    {
        public NodoAST aValorRetorno { get; set; }

        public NodoReturn(NodoAST valorRetorno)
        {
            aValorRetorno = valorRetorno;
        }

        public override void Aceptar(IVisitor visitor)
        {
            visitor.Visit(this);
        }
    }

    public class NodoAsignacion : NodoAST
    {
        public NodoIdentificador aIdentificador { get; set; }
        public NodoAST aValor { get; set; }

        public NodoAsignacion(NodoIdentificador identificador, NodoAST valor)
        {
            aIdentificador = identificador;
            aValor = valor;
        }

        public override void Aceptar(IVisitor visitor)
        {
            visitor.Visit(this);
        }
    }

    public class NodoPrint : NodoAST
    {
        public List<NodoAST> aValores { get; set; }

        public NodoPrint(List<NodoAST> valores)
        {
            aValores = valores;
        }

        public override void Aceptar(IVisitor visitor)
        {
            visitor.Visit(this);
        }
    }

    public class NodoIf : NodoAST
    {
        public NodoAST Condicion { get; set; }
        public NodoAST CuerpoIf { get; set; }
        public NodoAST CuerpoElse { get; set; }

        public NodoIf(NodoAST condicion, NodoAST cuerpoIf, NodoAST cuerpoElse)
        {
            Condicion = condicion;
            CuerpoIf = cuerpoIf;
            CuerpoElse = cuerpoElse;
        }

        public override void Aceptar(IVisitor visitor)
        {
            visitor.Visit(this);
        }
    }

    public class NodoWhile : NodoAST
    {
        public NodoAST Condicion { get; set; }
        public NodoAST Cuerpo { get; set; }

        public NodoWhile(NodoAST condicion, NodoAST cuerpo)
        {
            Condicion = condicion;
            Cuerpo = cuerpo;
        }

        public override void Aceptar(IVisitor visitor)
        {
            visitor.Visit(this);
        }
    }

    public interface IVisitor
    {
        void Visit(NodoPrograma nodo);
        void Visit(NodoIdentificador nodo);
        void Visit(NodoNumero nodo);
        void Visit(NodoCadena nodo);
        void Visit(NodoOperacion nodo);
        void Visit(NodoFuncion nodo);
        void Visit(NodoReturn nodo);
        void Visit(NodoAsignacion nodo);
        void Visit(NodoPrint nodo);
        void Visit(NodoIf nodo);
        void Visit(NodoWhile nodo);
    }

    public class Parser
    {
        private readonly List<(string, string)> aTokens;
        private int aIndiceActual = 0;
        private StreamWriter aLogger;

        public Parser(List<(string, string)> tokens, string rutaLogger)
        {
            aTokens = tokens;
            aLogger = new StreamWriter(rutaLogger);
        }

        public NodoPrograma Parsear()
        {
            NodoPrograma programa = new NodoPrograma(new List<NodoAST>());

            while (aIndiceActual < aTokens.Count)
            {
                var token = aTokens[aIndiceActual];
                if (token.Item1 == "Cmt" || token.Item1 == "Fn")
                {
                    aIndiceActual++;
                    continue; // Ignorar comentarios y fin de archivo
                }

                var declaracion = ParsearDeclaracion();
                if (declaracion != null)
                {
                    programa.aInstrucciones.Add(declaracion);
                }
            }

            aLogger.Close();
            return programa;
        }

        private void Log(string mensaje)
        {
            aLogger.WriteLine(mensaje);
            aLogger.Flush();
            Console.WriteLine(mensaje);
        }

        private NodoAST ParsearDeclaracion()
        {
            var tokenActual = aTokens[aIndiceActual];
            Log($"ParsearDeclaracion: {tokenActual.Item1} {tokenActual.Item2}");

            try
            {
                if (tokenActual.Item1 == "Pc" && tokenActual.Item2 == "def")
                {
                    return ParsearDeclaracionFuncion();
                }
                else if (tokenActual.Item1 == "Pc" && tokenActual.Item2 == "return")
                {
                    return ParsearReturn();
                }
                else if (tokenActual.Item1 == "Pc" && tokenActual.Item2 == "print")
                {
                    return ParsearPrint();
                }
                else if (tokenActual.Item1 == "Pc" && tokenActual.Item2 == "if")
                {
                    return ParsearIf();
                }
                else if (tokenActual.Item1 == "Pc" && tokenActual.Item2 == "while")
                {
                    return ParsearWhile();
                }
                else if (tokenActual.Item1 == "Id")
                {
                    if (aTokens[aIndiceActual + 1].Item1 == "Op" && aTokens[aIndiceActual + 1].Item2 == "=")
                    {
                        return ParsearAsignacion();
                    }
                    else if (aTokens[aIndiceActual + 1].Item1 == "Sm" && aTokens[aIndiceActual + 1].Item2 == "(")
                    {
                        return ParsearLlamadaFuncion();
                    }
                    return ParsearExpresion();
                }
            }
            catch (Exception ex)
            {
                Log($"Error durante el análisis sintáctico: {ex.Message}");
            }

            aIndiceActual++;
            return null; // Ignorar tokens inesperados
        }

        private NodoAST ParsearDeclaracionFuncion()
        {
            aIndiceActual++;
            string nombreFuncion = aTokens[aIndiceActual++].Item2;
            List<string> parametros = new List<string>();

            if (aTokens[aIndiceActual++].Item2 != "(")
            {
                throw new Exception("Se esperaba '('");
            }

            while (aTokens[aIndiceActual].Item2 != ")")
            {
                parametros.Add(aTokens[aIndiceActual++].Item2);
                if (aTokens[aIndiceActual].Item2 == ",")
                {
                    aIndiceActual++;
                }
                else if (aTokens[aIndiceActual].Item2 != ")")
                {
                    throw new Exception($"Se esperaba ')' pero se encontró '{aTokens[aIndiceActual].Item2}'");
                }
            }
            aIndiceActual++;

            if (aTokens[aIndiceActual++].Item2 != ":")
            {
                throw new Exception("Se esperaba ':' después de la declaración de parámetros");
            }

            NodoAST cuerpoFuncion = ParsearBloque();

            return new NodoFuncion(nombreFuncion, parametros, cuerpoFuncion);
        }

        private NodoAST ParsearReturn()
        {
            aIndiceActual++;
            NodoAST valorRetorno = ParsearExpresion();
            return new NodoReturn(valorRetorno);
        }

        private NodoAST ParsearPrint()
        {
            aIndiceActual++;

            if (aTokens[aIndiceActual++].Item2 != "(")
            {
                throw new Exception("Se esperaba '(' después de 'print'");
            }

            List<NodoAST> valoresImpresion = new List<NodoAST>();

            while (aTokens[aIndiceActual].Item2 != ")")
            {
                if (aTokens[aIndiceActual].Item1 == "Cd")
                {
                    valoresImpresion.Add(new NodoCadena(aTokens[aIndiceActual++].Item2));
                }
                else if (aTokens[aIndiceActual].Item1 == "Id")
                {
                    valoresImpresion.Add(new NodoIdentificador(aTokens[aIndiceActual++].Item2));
                }
                else
                {
                    valoresImpresion.Add(ParsearExpresion());
                }
                if (aTokens[aIndiceActual].Item2 == ",")
                {
                    aIndiceActual++;
                }
                else if (aTokens[aIndiceActual].Item2 != ")")
                {
                    throw new Exception($"Se esperaba ')' pero se encontró '{aTokens[aIndiceActual].Item2}'");
                }
            }
            aIndiceActual++;

            return new NodoPrint(valoresImpresion);
        }

        private NodoAST ParsearIf()
        {
            aIndiceActual++;
            NodoAST condicion = ParsearExpresion();

            if (aTokens[aIndiceActual++].Item2 != ":")
            {
                throw new Exception("Se esperaba ':' después de la condición if");
            }

            NodoAST cuerpoIf = ParsearBloque();
            NodoAST cuerpoElse = null;

            if (aIndiceActual < aTokens.Count && aTokens[aIndiceActual].Item2 == "else")
            {
                aIndiceActual++;
                if (aTokens[aIndiceActual++].Item2 != ":")
                {
                    throw new Exception("Se esperaba ':' después de else");
                }
                cuerpoElse = ParsearBloque();
            }

            return new NodoIf(condicion, cuerpoIf, cuerpoElse);
        }

        private NodoAST ParsearAsignacion()
        {
            NodoIdentificador identificador = new NodoIdentificador(aTokens[aIndiceActual++].Item2);

            if (aTokens[aIndiceActual++].Item2 != "=")
            {
                throw new Exception("Se esperaba '=' en la asignación");
            }

            NodoAST valor = ParsearExpresion();

            return new NodoAsignacion(identificador, valor);
        }

        private NodoAST ParsearExpresion()
        {
            NodoAST izquierda = ParsearTermino();

            while (aIndiceActual < aTokens.Count && (aTokens[aIndiceActual].Item2 == "+" || aTokens[aIndiceActual].Item2 == "-" || aTokens[aIndiceActual].Item2 == "and" || aTokens[aIndiceActual].Item2 == "or"))
            {
                string operador = aTokens[aIndiceActual++].Item2;
                NodoAST derecha = ParsearTermino();
                izquierda = new NodoOperacion(operador, izquierda, derecha);
            }

            return izquierda;
        }

        private NodoAST ParsearTermino()
        {
            NodoAST izquierda = ParsearFactor();

            while (aIndiceActual < aTokens.Count && (aTokens[aIndiceActual].Item2 == "*" || aTokens[aIndiceActual].Item2 == "/" || aTokens[aIndiceActual].Item2 == "%" || aTokens[aIndiceActual].Item2 == "==" || aTokens[aIndiceActual].Item2 == "!=" || aTokens[aIndiceActual].Item2 == ">" || aTokens[aIndiceActual].Item2 == "<" || aTokens[aIndiceActual].Item2 == ">=" || aTokens[aIndiceActual].Item2 == "<="))
            {
                string operador = aTokens[aIndiceActual++].Item2;
                NodoAST derecha = ParsearFactor();
                izquierda = new NodoOperacion(operador, izquierda, derecha);
            }

            return izquierda;
        }

        private NodoAST ParsearFactor()
        {
            var token = aTokens[aIndiceActual++];
            Log($"ParsearFactor: {token.Item1} {token.Item2}");

            if (token.Item1 == "Nm")
            {
                return new NodoNumero(token.Item2);
            }
            else if (token.Item1 == "Id")
            {
                if (aIndiceActual < aTokens.Count && aTokens[aIndiceActual].Item2 == "(")
                {
                    aIndiceActual--;
                    return ParsearLlamadaFuncion();
                }
                return new NodoIdentificador(token.Item2);
            }
            else if (token.Item1 == "Pc" && token.Item2 == "input")
            {
                if (aTokens[aIndiceActual++].Item2 != "(")
                {
                    throw new Exception("Se esperaba '(' después de 'input'");
                }

                NodoAST argumento = ParsearExpresion();

                if (aTokens[aIndiceActual++].Item2 != ")")
                {
                    throw new Exception("Se esperaba ')' después del argumento de 'input'");
                }

                return new NodoOperacion("input", argumento, null);
            }
            else if (token.Item2 == "(")
            {
                NodoAST expresion = ParsearExpresion();
                if (aTokens[aIndiceActual].Item2 != ")")
                {
                    throw new Exception($"Se esperaba ')' pero se encontró '{aTokens[aIndiceActual].Item2}'");
                }
                aIndiceActual++;
                return expresion;
            }
            else if (token.Item1 == "Cd")
            {
                return new NodoCadena(token.Item2);
            }
            else if (token.Item1 == "Pc" && token.Item2 == "not")
            {
                NodoAST expresion = ParsearFactor();
                return new NodoOperacion("not", expresion, null);
            }
            else
            {
                throw new Exception($"Token inesperado: {token.Item1} {token.Item2}");
            }
        }

        private NodoAST ParsearLlamadaFuncion()
        {
            string nombreFuncion = aTokens[aIndiceActual++].Item2;

            if (aTokens[aIndiceActual++].Item2 != "(")
            {
                throw new Exception("Se esperaba '(' en la llamada a función");
            }

            List<NodoAST> argumentos = new List<NodoAST>();

            while (aTokens[aIndiceActual].Item2 != ")")
            {
                argumentos.Add(ParsearExpresion());
                if (aTokens[aIndiceActual].Item2 == ",")
                {
                    aIndiceActual++;
                }
                else if (aTokens[aIndiceActual].Item2 != ")")
                {
                    throw new Exception($"Se esperaba ')' pero se encontró '{aTokens[aIndiceActual].Item2}'");
                }
            }
            aIndiceActual++;

            return new NodoOperacion(nombreFuncion, null, null)
            {
                aIzquierda = new NodoPrograma(argumentos)
            };
        }

        private NodoAST ParsearBloque()
        {
            List<NodoAST> instrucciones = new List<NodoAST>();

            while (aIndiceActual < aTokens.Count && aTokens[aIndiceActual].Item2 != "}" && aTokens[aIndiceActual].Item2 != "else")
            {
                instrucciones.Add(ParsearDeclaracion());
            }

            if (aIndiceActual < aTokens.Count && aTokens[aIndiceActual].Item2 == "}")
            {
                aIndiceActual++;
            }

            return new NodoPrograma(instrucciones);
        }

        private NodoAST ParsearWhile()
        {
            aIndiceActual++;
            NodoAST condicion = ParsearExpresion();

            if (aTokens[aIndiceActual++].Item2 != ":")
            {
                throw new Exception("Se esperaba ':' después de la condición while");
            }

            NodoAST cuerpo = ParsearBloque();
            return new NodoWhile(condicion, cuerpo);
        }
    }
}

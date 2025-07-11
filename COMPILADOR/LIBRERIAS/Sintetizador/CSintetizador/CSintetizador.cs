using System;
using System.Collections.Generic;
using System.Text;
using AnalizadorSintactico;

namespace CSintetizador
{
    public class Sintetizador : IVisitor
    {
        private StringBuilder aCodigoGenerado;
        private Dictionary<string, string> aSimbolos;
        private int contadorEtiquetas = 0;

        public Sintetizador() // Constructor
        {
            aCodigoGenerado = new StringBuilder();
            aSimbolos = new Dictionary<string, string>();
        }

        public string ObtenerCodigo()
        {
            // Añadir la instrucción inicial y final
            StringBuilder codigoCompleto = new StringBuilder();
            codigoCompleto.AppendLine("NOP");
            codigoCompleto.Append(aCodigoGenerado);
            codigoCompleto.AppendLine("LDA 0");
            codigoCompleto.AppendLine("MOVA");
            codigoCompleto.AppendLine("JPI 0");
            return codigoCompleto.ToString();
        }

        private void GenerarCodigo(string linea)
        {
            aCodigoGenerado.AppendLine(linea);
        }

        public void Visit(NodoPrograma nodo)
        {
            if (nodo.aInstrucciones != null)
            {
                foreach (var instruccion in nodo.aInstrucciones)
                {
                    instruccion?.Aceptar(this);
                }
            }
        }

        public void Visit(NodoIdentificador nodo) { }

        public void Visit(NodoNumero nodo) { }

        public void Visit(NodoCadena nodo) { }

        public void Visit(NodoOperacion nodo)
        {
            nodo.aIzquierda?.Aceptar(this);
            string izquierda = ObtenerValor(nodo.aIzquierda);

            nodo.aDerecha?.Aceptar(this);
            string derecha = ObtenerValor(nodo.aDerecha);

            switch (nodo.aOperador)
            {
                case "+":
                    GenerarSuma(izquierda, derecha);
                    break;
                case "-":
                    GenerarResta(izquierda, derecha);
                    break;
                case "*":
                    GenerarMultiplicacion(izquierda, derecha);
                    break;
                case "and":
                    GenerarAnd(izquierda, derecha);
                    break;
                case "or":
                    GenerarOr(izquierda, derecha);
                    break;
                case "not":
                    GenerarNot(izquierda);
                    break;
                case "==":
                    GenerarIgual(izquierda, derecha);
                    break;
                case "!=":
                    GenerarDiferente(izquierda, derecha);
                    break;
                case ">":
                    GenerarMayor(izquierda, derecha);
                    break;
                case "<":
                    GenerarMenor(izquierda, derecha);
                    break;
                case ">=":
                    GenerarMayorIgual(izquierda, derecha);
                    break;
                case "<=":
                    GenerarMenorIgual(izquierda, derecha);
                    break;
                default:
                    throw new NotSupportedException($"Operador no soportado: {nodo.aOperador}");
            }
        }

        public void Visit(NodoFuncion nodo) { }

        public void Visit(NodoReturn nodo)
        {
            nodo.aValorRetorno?.Aceptar(this);
            string valor = ObtenerValor(nodo.aValorRetorno);
            GenerarCodigo($"LDA {valor}");
            GenerarCodigo("MOV");
            GenerarCodigo("NOP");
        }

        public void Visit(NodoAsignacion nodo)
        {
            nodo.aValor.Aceptar(this);
            string valor = ObtenerValor(nodo.aValor);

            if (nodo.aValor is NodoNumero)
            {
                aSimbolos[nodo.aIdentificador.aNombre] = valor;
                // No generar código aquí
            }
            else if (nodo.aValor is NodoOperacion)
            {
                // Ya procesamos la operación en el Visit(NodoOperacion)
                aSimbolos[nodo.aIdentificador.aNombre] = ""; // Usar el registro de datos D para operaciones
            }
        }

        public void Visit(NodoPrint nodo)
        {
            foreach (var valor in nodo.aValores)
            {
                if (valor is NodoIdentificador identificador)
                {
                    string val = ObtenerValor(identificador);                   
                    GenerarCodigo($"OUTA");
                }
            }
        }

        public void Visit(NodoIf nodo)
        {
            string etiquetaElse = GenerarEtiqueta();
            string etiquetaEndIf = GenerarEtiqueta();

            nodo.Condicion.Aceptar(this);
            GenerarCodigo("BEQ " + etiquetaElse);
            nodo.CuerpoIf.Aceptar(this);
            GenerarCodigo("B " + etiquetaEndIf);
            GenerarCodigo(etiquetaElse + ":");
            nodo.CuerpoElse?.Aceptar(this);
            GenerarCodigo(etiquetaEndIf + ":");
        }

        public void Visit(NodoWhile nodo)
        {
            string etiquetaInicio = GenerarEtiqueta();
            string etiquetaFin = GenerarEtiqueta();

            GenerarCodigo(etiquetaInicio + ":");
            nodo.Condicion.Aceptar(this);
            GenerarCodigo("BEQ " + etiquetaFin);
            nodo.Cuerpo.Aceptar(this);
            GenerarCodigo("B " + etiquetaInicio);
            GenerarCodigo(etiquetaFin + ":");
        }

        private void GenerarSuma(string izquierda, string derecha)
        {
            GenerarCodigo($"LDA {izquierda}");
            GenerarCodigo("NOP");
            GenerarCodigo($"ADD {derecha}");
        }

        private void GenerarResta(string izquierda, string derecha)
        {
            GenerarCodigo($"LDA {izquierda}");
            GenerarCodigo("NOP");
            GenerarCodigo($"SUB {derecha}");
        }

        private void GenerarMultiplicacion(string izquierda, string derecha)
        {
            GenerarCodigo($"LDA {izquierda}");
            GenerarCodigo("NOP");
            GenerarCodigo($"MUL {derecha}");
        }

        private void GenerarIgual(string izquierda, string derecha)
        {
            string etiquetaFin = GenerarEtiqueta();
            GenerarCodigo($"LDA {izquierda}");
            GenerarCodigo($"NAND {derecha}");
            GenerarCodigo("ADD 1");
            GenerarCodigo("MOVD");
            GenerarCodigo("NOP");
            GenerarCodigo("LDRD");
            GenerarCodigo($"ADD {derecha}");
            GenerarCodigo($"JPZ {etiquetaFin}");
            GenerarCodigo(etiquetaFin + ":");
        }

        private void GenerarDiferente(string izquierda, string derecha)
        {
            string etiquetaFin = GenerarEtiqueta();
            GenerarCodigo($"LDA {izquierda}");
            GenerarCodigo($"NAND {derecha}");
            GenerarCodigo("ADD 1");
            GenerarCodigo("MOVD");
            GenerarCodigo("NOP");
            GenerarCodigo("LDRD");
            GenerarCodigo($"ADD {derecha}");
            GenerarCodigo($"JPC {etiquetaFin}");
            GenerarCodigo(etiquetaFin + ":");
        }

        private void GenerarMayor(string izquierda, string derecha)
        {
            string etiquetaFin = GenerarEtiqueta();
            GenerarCodigo($"LDA {izquierda}");
            GenerarCodigo($"NAND {derecha}");
            GenerarCodigo("ADD 1");
            GenerarCodigo("MOVD");
            GenerarCodigo("NOP");
            GenerarCodigo("LDRD");
            GenerarCodigo($"ADD {derecha}");
            GenerarCodigo($"JPC {etiquetaFin}");
            GenerarCodigo(etiquetaFin + ":");
        }

        private void GenerarMenor(string izquierda, string derecha)
        {
            string etiquetaFin = GenerarEtiqueta();
            GenerarCodigo($"LDA {derecha}");
            GenerarCodigo($"NAND {izquierda}");
            GenerarCodigo("ADD 1");
            GenerarCodigo("MOVD");
            GenerarCodigo("NOP");
            GenerarCodigo("LDRD");
            GenerarCodigo($"ADD {izquierda}");
            GenerarCodigo($"JPZ {etiquetaFin}");
            GenerarCodigo(etiquetaFin + ":");
        }

        private void GenerarMayorIgual(string izquierda, string derecha)
        {
            string etiquetaFin = GenerarEtiqueta();
            GenerarCodigo($"LDA {izquierda}");
            GenerarCodigo($"NAND {derecha}");
            GenerarCodigo("ADD 1");
            GenerarCodigo("MOVD");
            GenerarCodigo("NOP");
            GenerarCodigo("LDRD");
            GenerarCodigo($"ADD {derecha}");
            GenerarCodigo($"JPZ {etiquetaFin}");
            GenerarCodigo($"JPC {etiquetaFin}");
            GenerarCodigo(etiquetaFin + ":");
        }

        private void GenerarMenorIgual(string izquierda, string derecha)
        {
            string etiquetaFin = GenerarEtiqueta();
            GenerarCodigo($"LDA {derecha}");
            GenerarCodigo($"NAND {izquierda}");
            GenerarCodigo("ADD 1");
            GenerarCodigo("MOVD");
            GenerarCodigo("NOP");
            GenerarCodigo("LDRD");
            GenerarCodigo($"ADD {izquierda}");
            GenerarCodigo($"JPZ {etiquetaFin}");
            GenerarCodigo($"JPC {etiquetaFin}");
            GenerarCodigo(etiquetaFin + ":");
        }

        private void GenerarAnd(string izquierda, string derecha)
        {
            GenerarCodigo($"LDA {izquierda}");
            GenerarCodigo("MOVD");
            GenerarCodigo("NOP");
            GenerarCodigo($"NAND {derecha}");
        }

        private void GenerarOr(string izquierda, string derecha)
        {
            GenerarCodigo($"LDA {izquierda}");
            GenerarCodigo("MOVD");
            GenerarCodigo("NOP");
            GenerarCodigo($"LDA {derecha}");
            GenerarCodigo("NAND D");
        }

        private void GenerarNot(string valor)
        {
            GenerarCodigo($"LDA {valor}");
            GenerarCodigo("NAND A");
        }

        private string GenerarEtiqueta()
        {
            return "etiqueta" + contadorEtiquetas++;
        }

        private string ObtenerValor(NodoAST nodo)
        {
            if (nodo is NodoNumero numero)
            {
                return numero.aValor;
            }
            else if (nodo is NodoIdentificador identificador)
            {
                if (aSimbolos.ContainsKey(identificador.aNombre))
                {
                    return aSimbolos[identificador.aNombre];
                }
                else
                {
                    return identificador.aNombre;
                }
            }
            else if (nodo is NodoOperacion)
            {
                return "D"; // Usar el registro de datos D
            }
            else
            {
                throw new InvalidCastException("Tipo de nodo no soportado en la asignación.");
            }
        }
    }
}

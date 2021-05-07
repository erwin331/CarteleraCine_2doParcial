using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CarteleraCine_2doParcial
{
    public class Peliculas
    {
        List<string> Pelis = new List<string>();
        
        string genero;
        string estudio;

        
        public string Genero { get => genero; set => genero = value; }
        public string Estudio { get => estudio; set => estudio = value; }
        public List<string> Pelis1 { get => Pelis; set => Pelis = value; }

        public  Peliculas(string Genero, List<string> Pelis1, string Estudio)
        {
            this.Genero = Genero;
            this.Pelis1 = Pelis1;
            this.Estudio = Estudio;
        }
    }

}
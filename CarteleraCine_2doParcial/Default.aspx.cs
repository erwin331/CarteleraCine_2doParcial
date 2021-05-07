using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarteleraCine_2doParcial
{
    public partial class _Default : Page

    {
        static List<Peliculas> unis = new List<Peliculas>();
        static List<string> alumnos = new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Visible = false;
            Label3.Visible = false;
            LoadList();
        }

        void LoadList()
        {
            try
            {
                string path = Server.MapPath("Actores.json");
                StreamReader sr = File.OpenText(path);
                string json = sr.ReadToEnd();
                unis = JsonConvert.DeserializeObject<List<Peliculas>>(json);
                sr.Close();
            }
            catch
            {

            }
        }

        void SaveList()
        {
            string path = Server.MapPath("Actores.json");
            string json = JsonConvert.SerializeObject(unis);

            StreamWriter sw = new StreamWriter(new FileStream(path, FileMode.Truncate, FileAccess.Write));
            sw.Write(json);
            sw.Close();
        }

        void RefreshShow()
        {
            TextBox3.Text = "";

            for (int i = 0; i < alumnos.Count; i++)
            {
                TextBox3.Text += alumnos[i] + "\n";
            }

            TextBox3.Text = TextBox3.Text.Trim('\n');
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bool ban = false;
            int idxu = unis.FindIndex(u => u.Genero == TextBox2.Text);
            int idxe = unis.FindIndex(u => u.Estudio == TextBox3.Text);

            if (idxu == -1) ban = false;
            else
            {
                int idxa = unis[idxu].Pelis1.FindIndex(a => a == TextBox1.Text);

                if (idxa == -1) ban = false;
                else ban = true;
            }

            if (TextBox2.Text != "" && !ban)
            {
                TextBox1.Enabled = false;
                Label2.Visible = false;
                alumnos.Add(TextBox2.Text);
                TextBox2.Text = "";
                RefreshShow();
            }
            else
            {
                if (ban)
                {
                    Label2.Text = "Esta pelicula ya existe!";
                    Label2.Visible = true;
                }
                else
                {
                    Label2.Text = "Debe Ingresar una válida";
                    Label2.Visible = true;
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                int idx = unis.FindIndex(u => u.Pelis1==FindIndex(a => a == TextBox1.Text));
                if (idx == -1)
                {
                    Label2.Visible = false;
                    Label3.Visible = false;
                    TextBox3.Text = "";

                    unis.Add(new Peliculas(TextBox1.Text, alumnos.ToList()));

                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    alumnos.Clear();

                    SaveList();
                }
                else
                {
                    Label2.Visible = false;
                    Label3.Visible = false;
                    TextBox3.Text = "";

                    unis[idx].Pelis1.AddRange(alumnos.ToList());

                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    alumnos.Clear();

                    SaveList();
                }

                TextBox1.Enabled = true;
            }
            else Label3.Visible = true;
        }

        private List<string> FindIndex(Func<object, bool> p)
        {
            throw new NotImplementedException();
        }
    }
}
    

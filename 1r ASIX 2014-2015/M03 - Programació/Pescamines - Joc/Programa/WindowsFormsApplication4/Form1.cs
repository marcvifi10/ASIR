using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApplication4
{
    public partial class Form1 : Form
    {
        Button[,] tb;//taula de botons. disponible en tot el codi del formulari
        int nFiles;
        int nCols;

        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            //quan es carrega el formulari. En aquest cas creem la taula de botons
            nFiles = 5;
            nCols = 10;

            tb = creaTaulaBotons(nFiles, nCols);
        
        }

        Button [,] creaTaulaBotons(int files, int columnes)
        {
            //per crear una taula de botons hem de fer el new de cada botó i afegir-lo als controls del formulari
            Button[,] t = new Button[files, columnes];
            for (int i = 0; i < files; i++)
                for (int j = 0; j < columnes; j++)
                {
                    //creem el botó i, j
                    t[i, j] = new Button();

                    t[i, j].Location = new System.Drawing.Point(j*50, i*50);
                    t[i, j].Name = "boto" + i/10 + i%10 + j/10 + j%10; //en format 2 xifres
                    t[i, j].Size = new System.Drawing.Size(50, 50);
                    t[i, j].TabIndex = 0;
                    t[i, j].Text = "";
                    t[i, j].BackColor = System.Drawing.Color.White;
                    t[i, j].MouseDown += new System.Windows.Forms.MouseEventHandler(this.boto_Click);//associem el mètode boto_click com a resposta al clickar

                    this.Controls.Add(t[i, j]);//l'afegim
                }
            this.Size = new Size(columnes*50 + 18, files*50 + 40);//canviem la mida del formulari

            return t;
        }

        private void boto_Click(object sender, EventArgs e)
        {
            Button b = (Button)sender;//instanciem el botó
            MouseEventArgs me = (MouseEventArgs)e;//instanciem el mouse event            
            MessageBox.Show("Botó " + b.Name.Substring(4, 2)+ "," +b.Name.Substring(6,2) + " - botó " + me.Button );//Sabrem quin botó han clickat

            if (me.Button == MouseButtons.Right) //Han clickat amb el dret
            {
                b.Text = "D";//li posem una D
                if (b.Image == null) b.Image = Image.FromFile(@"bandera.png");
                else b.Image = null;
            }
            else if (me.Button == MouseButtons.Left)
            {
                b.Image = null;
                b.Text = "E";
                b.Enabled = false; //el "desactivem"
            }            
        }
    }
}

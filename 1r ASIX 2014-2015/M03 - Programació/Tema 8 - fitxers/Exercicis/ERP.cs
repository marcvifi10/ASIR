using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data;
using System.Data.OleDb;


namespace ConsoleApplication19
{
    class Program
    {
        static void Main(string[] args)
        {
            int op;
            string connectionString;

            do
            {
                Console.WriteLine("1. Ver stocks");
                Console.WriteLine("2.  ....");
                Console.WriteLine("99. Salir");
                op = Convert.ToInt32(Console.ReadLine());
                switch (op)
                {
                    case 1: // mostrar pantalla la BD

                        connectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:/Users/Marc/Desktop/ERP/Botiga1.accdb;Persist Security Info=False;";
                        OleDbConnection connexio = new OleDbConnection(connectionString);
                        connexio.Open();

                        OleDbDataAdapter da = new OleDbDataAdapter("Select Model, Marca, Descripció, Preu, Unitats from Botiga", connexio);

                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        Console.WriteLine("-------------------------------------------------------------------");
                        Console.WriteLine("MODEL     | MODEL     | DESCRIPCIÓ     | PREU     | UNITATS     |");
                        Console.WriteLine("-------------------------------------------------------------------");


                        for (int fila = 0; fila < ds.Tables[0].Rows.Count; fila++)
                        {
                            Console.Write("Model: " + ds.Tables[0].Rows[fila][0].ToString());
                            Console.Write(" Marca: " + ds.Tables[0].Rows[fila][1].ToString());
                            Console.WriteLine(" Descripció: " + ds.Tables[0].Rows[fila][3].ToString());
                            Console.WriteLine(" Preu: " + ds.Tables[0].Rows[fila][4].ToString());
                            Console.WriteLine(" Unitats: " + ds.Tables[0].Rows[fila][5].ToString());
                        }

                        connexio.Close();

                        break;
                }
            } while (op != 99);

        }
    }
}



      




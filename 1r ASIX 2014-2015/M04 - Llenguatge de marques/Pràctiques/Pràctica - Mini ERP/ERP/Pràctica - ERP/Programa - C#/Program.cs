using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data;
using System.Data.OleDb;

using System.Xml;
using System.Xml.Schema;

using System.IO;
using System.Collections;

namespace stock
{
    class Program
    {
        private static bool esvalid = true;

        static void Main(string[] args)
        {
            int op;
            string connectionString;
            OleDbConnection connexio;

            do
            {
                Console.WriteLine("1. Veure stock");
                Console.WriteLine("2. Fer comanda");
                Console.WriteLine("3. Rebre albara");
                Console.WriteLine("99. Salir");
                op = Convert.ToInt32(Console.ReadLine());
                switch (op)
                {
                 case 1: // mostrar pantalla la BD
                  connectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=Botiga1.accdb;Persist Security Info=False;";
                  connexio = new OleDbConnection(connectionString);
                  connexio.Open();
                  OleDbDataAdapter da = new OleDbDataAdapter("Select id, Model, Marca, Descripció, Preu, qta from Botiga", connexio);
                  DataSet ds = new DataSet();
                  da.Fill(ds);
                  DataSet ds = new DataSet();
                        da.Fill(ds);
                        Console.WriteLine("|---------------------------------------------------------------------|");
                        Console.WriteLine("| ID |    MODEL      |    MARCA    |    DESCRIPCIÓ    |  PREU  |  QTA |");
                        Console.WriteLine("|---------------------------------------------------------------------|");
                  for (int fila = 0; fila < ds.Tables[0].Rows.Count; fila++)
                        {
                            Console.Write("|{0,6}", ds.Tables[0].Rows[fila][1].ToString());
                            Console.Write("|{0,15}", ds.Tables[0].Rows[fila][2].ToString());
                            Console.Write("|{0,13}", ds.Tables[0].Rows[fila][3].ToString());
                            Console.Write("|{0,18}", ds.Tables[0].Rows[fila][4].ToString());
                            Console.Write("|{0,8}", ds.Tables[0].Rows[fila][5].ToString());
                            Console.Write("|{0,6}|", ds.Tables[0].Rows[fila][6].ToString());
                            Console.Write("\n|-------------------------------------------------------------------|\n");
                        }
                                     connexio.Close();

                            break;
                   
                    case 2://fer comanda
                        StreamWriter sw = new StreamWriter("dtd/XML.xml");
                        sw.WriteLine("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
                                                sw.WriteLine("<!DOCTYPE albara SYSTEM \"tennis.dtd\">");
                        sw.WriteLine("<tennis>");
                        Console.WriteLine("Entra id de la bamba: ");
                        int id, quantitat = Convert.ToInt32(Console.ReadLine());
                        while (File.Exists(id))
                        {
                            Console.WriteLine("Entra quant");
                            quantitat = Convert.ToInt32( Console.ReadLine());
                            sw.WriteLine("\t<bamba>");
                            sw.WriteLine("\t\t<id>" + id + "</id>");
                            sw.WriteLine("\t\t<model>" + model + "</model>");
                            sw.WriteLine("\t\t<marca>" + marca + "</marca>");
                            sw.WriteLine("\t\t<descripcio>" + descripcio + "</descripcio>");
                            sw.WriteLine("\t\t<preu>" + preu + "</preu>");
                            sw.WriteLine("\t\t<QTA>" + QTA + "</QTA>");
                            sw.WriteLine("\t</bamba>");
                            //posar-lo en un arxiu XML

                            Console.WriteLine("Entra id: ");
                            id = Convert.ToInt32(Console.ReadLine());
                        }
                        //tancar
                        sw.WriteLine("</tennis>");
                        sw.Close();
                        break;
                    case 3://rebre albara
                        string albara = "dtd/albara.xml";
                        //   if (!File.Exists(albara)) albara = albara + ".xml";
                        if (File.Exists(albara))
                        {
                            XmlReaderSettings settings = new XmlReaderSettings();
                            settings.DtdProcessing = DtdProcessing.Parse;
                            settings.ValidationType = ValidationType.DTD;
                            settings.ValidationEventHandler += new ValidationEventHandler(metodeerrorvalidacio);

                            XmlReader reader = XmlReader.Create(albara, settings);

                            while (reader.Read()) ;

                            if (esvalid)
                            {
                                Console.WriteLine("Forma alabarà ok.");

                                connectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=Botiga1.accdb;Persist Security Info=False;";
                                connexio = new OleDbConnection(connectionString);
                                connexio.Open();

                                XmlDocument doc = new XmlDocument();

                                doc.Load("dtd/albara.xml"); //obrim el XML per llegir

                                XmlNodeList dadesArrel = doc.GetElementsByTagName("albara");//etiqueta arrel

                                XmlNodeList articles = ((XmlElement)dadesArrel[0]).GetElementsByTagName("tennis");

                                XmlNodeList idXML, QTAXML;
                                //int id, quantitat;
                                foreach (XmlElement article in articles)
                                {
                                    idXML = tennis.GetElementsByTagName("id");
                                    QTAXML = tennis.GetElementsByTagName("QTA");

                                    idXML = Convert.String(idXML[0].InnerText);
                                    QTAXML = Convert.ToInt32(QTAXML[0].InnerText);
                                    Console.WriteLine(ModelXML + " ; " + QTAXML);

                                    //modificar la base dades
                                    OleDbCommand cmd = new OleDbCommand();
                                    cmd.Connection = connexio;

                                    cmd.CommandText = "UPDATE tennis SET QTA = QTA + " + QTA + " WHERE id = " + id + ";";
                                    cmd.ExecuteNonQuery();

                                }

                                connexio.Close();

                            }
                            else Console.WriteLine(" El document albara NO es valid");

                        }
                        break;

                     case 4:
                          string Botiga1 = "C:/dtd/persona";
                          if (!File.Exists(nomArxiu))
                       break;

                }
            } while (op != 99);

        }
        public static void metodeerrorvalidacio(object sender, ValidationEventArgs args)
        {
            esvalid = false;
            Console.WriteLine("esdeveniment de validadio " + args.Message);
        }
    }
}





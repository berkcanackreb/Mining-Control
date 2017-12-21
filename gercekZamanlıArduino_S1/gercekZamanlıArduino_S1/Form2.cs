using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data;
using MySql.Data.MySqlClient;
using System.IO;
using System.IO.Ports;

namespace gercekZamanlıArduino_S1
{
    public partial class Form2 : Form
    {
        string[] port = SerialPort.GetPortNames();
        public Form2()
        {
            InitializeComponent();
        }
        veriTabani vb = new veriTabani();
        DataTable table1 = new DataTable();
        DataTable table2 = new DataTable();
        private void Form2_Load(object sender, EventArgs e)
        {
            vb.baglan.Open();
            serialPort1.Close();
            label7.Text = "Bağlantı Kapalı";
        }
        private void button1_Click(object sender, EventArgs e)
        {
            timer1.Start();
            if (serialPort1.IsOpen == false)
            {
                serialPort1.PortName = "COM3";
                serialPort1.BaudRate = 9600;
                try
                {
                    serialPort1.Open();
                    label7.Text = "Bağlantı Açık";
                }
                catch (Exception hata)
                {
                    MessageBox.Show("Buton Hata: " + hata.Message);

                }
            }
            else
            {
                label7.Text = "Bağlantı Zaten Kuruldu";
            }
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            try
            {
                string sonuc = serialPort1.ReadLine();
                string[] veriler = sonuc.Split('|');
                textBox1.Text = veriler[0];
                textBox2.Text = veriler[1];
               MySqlCommand komutEkle = new MySqlCommand("insert into isi(id,isi_sensor,tarih) values (null,'" + veriler[0] + "','" + DateTime.Now.ToString() + "')", vb.baglan);
               komutEkle.ExecuteNonQuery();
               MySqlCommand komutEkle2 = new MySqlCommand("insert into metan_gazi(id,gaz_sensor,tarih) values (null,'" + veriler[1] + "','" + DateTime.Now.ToString() + "')", vb.baglan);
               komutEkle2.ExecuteNonQuery();

                string iste1 = "select * from isi";
                MySqlDataAdapter adapter = new MySqlDataAdapter(iste1, vb.baglan);
                adapter.Fill(table1);
                dataGridView1.DataSource = table1;
                string iste2 = "select * from metan_gazi";
                MySqlDataAdapter adapter2 = new MySqlDataAdapter(iste2, vb.baglan);
                adapter2.Fill(table2);
                dataGridView2.DataSource = table2;

                serialPort1.DiscardInBuffer();
            }
            catch (Exception ex)
            {
                timer1.Stop();
                MessageBox.Show("Timer " + ex.Message);


            }
         }
        private void Form2_FormClosed(object sender, FormClosedEventArgs e)
            {
                if (serialPort1.IsOpen == true)
                {
                    serialPort1.Close();
                }
            }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
    } 

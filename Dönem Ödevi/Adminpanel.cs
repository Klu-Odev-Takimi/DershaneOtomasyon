using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Dönem_Ödevi
{
    public partial class Adminpanel : Form
    {

        string anasyfrnk;
        string kytrnk;
        string ogrrnk;
        string cksrnk;
        string butonrnk= "Color.FromArgb(31, 40, 50)";


        public Adminpanel()
        {
            InitializeComponent();
        }

       

       

       

        private void button1_Click(object sender, EventArgs e)
        {
            button1.BackColor = Color.FromArgb(31, 40, 50);
            button7.BackColor = Color.FromArgb(41, 53, 65);
            button2.BackColor = Color.FromArgb(41, 53, 65);
            button3.BackColor = Color.FromArgb(41, 53, 65);
            button4.BackColor = Color.FromArgb(41, 53, 65);
            label3.Text = "Öğrenci Kayıtları";

        }

        private void button2_Click(object sender, EventArgs e)
        {
            button2.BackColor = Color.FromArgb(31, 40, 50);
            button1.BackColor = Color.FromArgb(41, 53, 65);
            button7.BackColor = Color.FromArgb(41, 53, 65);
            button3.BackColor = Color.FromArgb(41, 53, 65);
            button4.BackColor = Color.FromArgb(41, 53, 65);
            label3.Text = "Personel Kayıtları";
        }

        private void button7_Click(object sender, EventArgs e)
        {
            button7.BackColor = Color.FromArgb(31, 40, 50);
            button1.BackColor = Color.FromArgb(41, 53, 65);
            button2.BackColor = Color.FromArgb(41, 53, 65);
            button3.BackColor = Color.FromArgb(41, 53, 65);
            button4.BackColor = Color.FromArgb(41, 53, 65);
            label3.Text = "Anasayfa";

        }

        private void button3_Click(object sender, EventArgs e)
        {
            button3.BackColor = Color.FromArgb(31, 40, 50);
            button1.BackColor = Color.FromArgb(41, 53, 65);
            button7.BackColor = Color.FromArgb(41, 53, 65);
            button2.BackColor = Color.FromArgb(41, 53, 65);
            button4.BackColor = Color.FromArgb(41, 53, 65);
            label3.Text = "Ders Programı";

        }

        private void button4_Click(object sender, EventArgs e)
        {
            button4.BackColor = Color.FromArgb(31, 40, 50);
            button1.BackColor = Color.FromArgb(41, 53, 65);
            button7.BackColor = Color.FromArgb(41, 53, 65);
            button3.BackColor = Color.FromArgb(41, 53, 65);
            button2.BackColor = Color.FromArgb(41, 53, 65);
            

        }

        private void button5_Click(object sender, EventArgs e)
        {
            this.Close();
            Application.Exit();
        }

        private void button6_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }
    }
}

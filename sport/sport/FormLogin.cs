using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Net.Mime.MediaTypeNames;

namespace sport
{
    public partial class FormLogin : Form

    {
        private static string sqlcon = @"Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=SprotGPO;Data Source=MEPHI3-MSSQL";
    
        int id = 0;
       int counter = 0;
        int role = 0;
        string text;
        int gem = 10;
        SqlConnection sqlConnect = new SqlConnection(sqlcon);

        public FormLogin()
        {
            InitializeComponent();
        }

        private void FormLogin_Load(object sender, EventArgs e)
        {

        }
        private Bitmap CreateImage(int Winth, int Height)
        {
           
           
                Random rnd = new Random();
                Bitmap result = new Bitmap(Width, Height);
                int Xpos = rnd.Next(0, Width - 20);
                int Ypos = rnd.Next(15, Height - 15);

                Brush[] colors = { Brushes.Black }; //Цвет букв
                Graphics g = Graphics.FromImage((System.Drawing.Image)result);
                g.Clear(Color.Gray);
                text = String.Empty;
                string ALF = "1234567890QWERTYUIOPASDFGHJKLZXCVBNM";
                for (int i = 0; i < 5; ++i)
                    text += ALF[rnd.Next(ALF.Length)];
                ///текст капчи
                g.DrawString(text,
                              new Font("Arial", 30),
                              colors[rnd.Next(colors.Length)],// Пишем текст капчи
                              new PointF(Xpos, Ypos));



                

                return result;
            

        }
        private void buttonLogin_Click(object sender, EventArgs e)
        {
            sqlConnect.Open();
            SqlCommand logRequest = new SqlCommand();
            logRequest.CommandType = CommandType.StoredProcedure;

            logRequest.CommandText = "login";
            logRequest.Parameters.AddWithValue("@login", textBoxLogin.Text);
            logRequest.Parameters.AddWithValue("@Password", textBoxPassword.Text);
            logRequest.Connection = sqlConnect;

            SqlDataReader sqlReader = logRequest.ExecuteReader();
            if (sqlReader.HasRows)
            {
                SqlCommand logRequst = new SqlCommand($"Select * from [dbo].[User] Where Login ='{textBoxLogin.Text}'");
                logRequst.Connection = sqlConnect;

                while (sqlReader.Read())
                {
                    id = Convert.ToInt32(sqlReader["Id_user"].ToString());
                    role = Convert.ToInt32(sqlReader["Role"].ToString());
                }
                if (pictureBoxQapcha.Visible == false)
                {
                    if (role == 1)
                    {
                        this.Hide();

                        FormMenu form = new FormMenu(id);
                        form.ShowDialog();
                    }
                    if (role == 2 || role == 3)
                    {
                        this.Hide();

                        FormMenu form = new FormMenu(id);
                        form.ShowDialog();
                    }



                }
                if (pictureBoxQapcha.Visible == true && Text == textBoxQapcha.Text)
                {
                    if (role == 1)
                    {
                        this.Hide();

                        FormMenu form = new FormMenu(id);
                        form.ShowDialog();
                    }
                    if (role == 2 || role == 3)
                    {
                        this.Hide();

                        FormMenu form = new FormMenu(id);
                        form.ShowDialog();
                    }

                }
                else
                {
                    if (text != textBoxQapcha.Text&& pictureBoxQapcha.Visible == true)
                    {
                        MessageBox.Show("Введите капчу");
                      
                    }
                }
            }
            else
            {
                MessageBox.Show("Неверный логин или пароль");
                if (counter >= 3)
                {
                    buttonLogin.Location = new Point(130, 215);
                    buttonGuest.Location = new Point(130, 244);
                    pictureBoxQapcha.Image = this.CreateImage(pictureBoxQapcha.Width, pictureBoxQapcha.Height);
                    pictureBoxQapcha.Visible = true;
                    textBoxQapcha.Visible = true;
                    buttonUpdate.Visible = true;
                    buttonLogin.Enabled = false;
                    buttonGuest.Enabled = false;
                    timer.Enabled = true;
                    MessageBox.Show("Следующая попытка через 10 секунд");

                }
                
                counter++;
            }
            sqlConnect.Close();

            
           
        }

        private void timer_Tick(object sender, EventArgs e)
        {
            
                if (gem > 0)
                {
                    gem--;

                }
                if (gem == 0)
                {
                    buttonLogin.Enabled = true;
                    buttonGuest.Enabled = true;
                    timer.Enabled = false;
                    gem = 10;
                }
            

        }

        private void buttonUpdate_Click(object sender, EventArgs e)
        {
            pictureBoxQapcha.Image = this.CreateImage(pictureBoxQapcha.Width, pictureBoxQapcha.Height);
            textBoxQapcha.Clear();
        }
    }
}

      

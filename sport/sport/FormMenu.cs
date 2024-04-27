using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace sport
{
    public partial class FormMenu : Form
    {
        private static string sqlcon = @"Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=SprotGPO;Data Source=MEPHI3-MSSQL";

        int id;
        SqlConnection sqlConnect = new SqlConnection(sqlcon);
        public FormMenu(int id1)
        {
            id = id1;
            InitializeComponent();
        }

        private void FormMenu_Load(object sender, EventArgs e)
        {
            SqlCommand logRequst = new SqlCommand();
            sqlConnect.Open();
            logRequst.CommandText = $"SELECT * FROM [dbo].[Product_user]";
            logRequst.Connection = sqlConnect;
            SqlDataAdapter adapter = new SqlDataAdapter(logRequst);
            DataSet dataSet = new DataSet();
            adapter.Fill(dataSet);
            dataGridViewProduct.DataSource = dataSet.Tables[0];
            logRequst.CommandText = ($"Select * from [dbo].[User] Where Id_user ='{id}'");

            SqlDataReader rd = logRequst.ExecuteReader();
            rd.Read();
            labelName.Text = rd.GetString(1) + " " + rd.GetString(2) + " " + rd.GetString(3);
            sqlConnect.Close();
        }

        private void dataGridViewProduct_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            SqlCommand logRequst = new SqlCommand();
            sqlConnect.Open();
            string article = dataGridViewProduct.CurrentRow.Cells[3].Value.ToString();



            logRequst.CommandType = CommandType.StoredProcedure;

            logRequst.CommandText = "select_product";
            logRequst.Parameters.AddWithValue("@article", article);
            logRequst.Connection = sqlConnect;
            SqlDataReader rd = logRequst.ExecuteReader();

            if (rd.HasRows)
            {


                while (rd.Read())
                {
                    labelNameProduct.Text = rd.GetString(1);
                    labelProduct.Text = rd.GetString(7);
                    labelPrice.Text = rd.GetString(2);
                    labelDiscount.Text = rd.GetString(6);
                    labelCreater.Text = rd.GetString(3);
                }


                
            }
            sqlConnect.Close();
        }

        private void comboBoxFilter_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (comboBoxFilter.SelectedIndex == 0)
            {
                (dataGridViewProduct.DataSource as DataTable).DefaultView.RowFilter = $" [Скидка] >0 and [Скидка]  <10  ";
            }
            if (comboBoxFilter.SelectedIndex == 1)
            {
                (dataGridViewProduct.DataSource as DataTable).DefaultView.RowFilter = $" [Скидка] >=10 and [Скидка]  <15  ";
            }
            if (comboBoxFilter.SelectedIndex == 2)
            {
                (dataGridViewProduct.DataSource as DataTable).DefaultView.RowFilter = $" [Скидка] >=15   ";
            }
        }

        private void textBoxFilter_TextChanged(object sender, EventArgs e)
        {
            (dataGridViewProduct.DataSource as DataTable).DefaultView.RowFilter = $"[Название] LIKE '%{textBoxFilter.Text}%' ";
        }
    }
}

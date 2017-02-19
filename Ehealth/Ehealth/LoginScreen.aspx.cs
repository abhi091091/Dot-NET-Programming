using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Ehealth
{
    public partial class LoginScreen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["ehealth"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("select userid,passowrd from login", conn);
                conn.Open();
                GridView1.DataSource = cmd.ExecuteReader();
                GridView1.DataBind();
            }
        }

        protected void Button_submit_Click(object sender, EventArgs e)
        {
            //string CS =  ConfigurationManager.ConnectionStrings["ehealth"].ConnectionString;

            //SqlConnection conn = new SqlConnection(CS);

            //SqlConnection conn = new SqlConnection(@"Data Source=BEAST\MSSQLHARI;Initial Catalog=EHealth;Integrated Security=True");
            //SqlDataAdapter sda = new SqlDataAdapter("select count(*) from login where userid='" + TextBox_userid.Text + "' and passowrd='" + TextBox_pwd.Text + "'", conn);
            //DataTable dt = new DataTable();
            //sda.Fill(dt);
            //if (dt.Rows[0][0].ToString() == "1")
            //{
            //    Response.Redirect("PatientHomePage.aspx");


            //}

            //else
            //{
            //    Response.Redirect("LoginScreen.aspx");               
            //}





        }

        
    }
}
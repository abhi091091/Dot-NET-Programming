using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace Ehealth
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["ehealth"].ConnectionString;


            using (SqlConnection conn = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("select * from login where userid like '" + TextBox1.Text + "%'",conn);
                conn.Open();

                
                
                GridView1.DataSource = cmd.ExecuteReader();
                GridView1.DataBind();
                //int totalrows = (int)cmd.ExecuteScalar();



               // Response.Write("Total rows are : " + totalrows.ToString());



            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["ehealth"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("select * from login; select * from category; select * from products", conn);
                conn.Open();

                using (SqlDataReader rdr = cmd.ExecuteReader())
                {
                    login.DataSource = rdr;
                    login.DataBind();

                    while (rdr.NextResult())
                    {
                        category.DataSource = rdr;
                        category.DataBind();

                        products.DataSource = rdr;
                    }
                    //while (rdr.NextResult())
                    //{
                    //    products.DataSource = rdr;
                    //    products.DataBind();
                    //}
                }
                //int totalrows = (int)cmd.ExecuteScalar();



                // Response.Write("Total rows are : " + totalrows.ToString());



            }
        }
    }
}
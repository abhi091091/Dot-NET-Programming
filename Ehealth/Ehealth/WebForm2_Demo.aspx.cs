using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Ehealth
{
    public partial class WebForm2_Demo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Cache["Data"] == null)
                {
                string CS = ConfigurationManager.ConnectionStrings["ehealth"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(CS))
                {
                    //SqlDataAdapter da = new SqlDataAdapter("datasetsp", conn);
                    //da.SelectCommand.CommandType = CommandType.StoredProcedure;

                    SqlDataAdapter da = new SqlDataAdapter("select * from login", conn);


                    DataSet ds = new DataSet();
                    da.Fill(ds);

                    //ds.Tables[0].TableName = "products";
                    //ds.Tables[1].TableName = "category";

                    Cache["Data"] = ds;

                    GridView1.DataSource = ds;
                    GridView1.DataBind();

                    //GridView1.DataSource = ds.Tables["products"];
                    //GridView1.DataBind();


                    //GridView2.DataSource = ds.Tables["category"];
                    //GridView2.DataBind();
                }

                txtLabel.Text = "Data is loaded from Database";
            }
            else
            {
                GridView1.DataSource = (DataSet) Cache["Data"];
                GridView1.DataBind();

                txtLabel.Text = "Data is loaded from Cache";
            }
        }

        protected void Load_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["ehealth"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(CS))
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from students where ID = " + TextBox_sid.Text, conn);

                DataSet ds = new DataSet();
                da.Fill(ds, "dataset_table");

                
                

                if (ds.Tables["dataset_table"].Rows.Count >0 )
                {
                    // DataRow dr = new DataRow();

                     DataRow dr= ds.Tables["dataset_table"].Rows[0];


                    DropDownList_g.SelectedValue = dr["Gender"].ToString();
                    TextBox_na.Text =  dr["Name"].ToString();
                    TextBox_ma.Text =  dr["Totalmarks"].ToString();



                }

                else
                {
                    Label_up.ForeColor = System.Drawing.Color.Red;
                    Label_up.Text = "The student id " + TextBox_sid.Text + "does not exist";

                }


            }


        }
    }
}
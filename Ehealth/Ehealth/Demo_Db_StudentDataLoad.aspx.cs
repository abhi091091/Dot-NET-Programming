using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Ehealth
{
    public partial class Demo_Db_StudentDataLoad : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Demo_Db_StudentDataLoad_Load_Click(object sender, EventArgs e)
        {

            string CS = ConfigurationManager.ConnectionStrings["ehealth"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(CS))
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from students where ID = " + Demo_Db_StudentDataLoad_ID.Text, conn);

                DataSet ds = new DataSet();

                da.Fill(ds, "students");

                if (ds.Tables["students"].Rows.Count > 0)
                {
                    DataRow dr = ds.Tables["students"].Rows[0];

                    Demo_Db_StudentDataLoad_Name.Text = dr["Name"].ToString();
                    Demo_Db_StudentDataLoad_Gender.SelectedValue = dr["Gender"].ToString();
                    Demo_Db_StudentDataLoad_TotalMarks.Text = dr["Totalmarks"].ToString();


                    Demo_Db_StudentDataLoad_label.ForeColor = System.Drawing.Color.Green;
                    Demo_Db_StudentDataLoad_label.Text = "Record Found";

                }
                else
                {


                    Demo_Db_StudentDataLoad_label.ForeColor = System.Drawing.Color.Red;
                    Demo_Db_StudentDataLoad_label.Text = "No records were found with the ID : " + Demo_Db_StudentDataLoad_ID.Text;

                }

                ViewState["dataset"] = ds;
            }


        }

        protected void Demo_Db_StudentDataLoad_Update_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["ehealth"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(CS))
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from students where ID = " + Demo_Db_StudentDataLoad_ID.Text, conn);
                SqlCommandBuilder builder = new SqlCommandBuilder(da);

                DataSet ds = (DataSet)ViewState["dataset"];

                if (ds.Tables["students"].Rows.Count > 0)
                {
                    DataRow dr = ds.Tables["students"].Rows[0];

                    dr["Name"] = Demo_Db_StudentDataLoad_Name.Text;
                    dr["Gender"] = Demo_Db_StudentDataLoad_Gender.SelectedValue;
                    dr["Totalmarks"] = Demo_Db_StudentDataLoad_TotalMarks.Text;

                    int updated = da.Update(ds, "students");

                    Demo_Db_StudentDataLoad_label.Text = updated + "row(s) is updated";
                    Demo_Db_StudentDataLoad_label.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    Demo_Db_StudentDataLoad_label.Text = "No rows to update";
                    Demo_Db_StudentDataLoad_label.ForeColor = System.Drawing.Color.Red;
                }
            }
        }

        protected void Demo_Db_StudentDataLoad_Clear_Click(object sender, EventArgs e)
        {
            Demo_Db_StudentDataLoad_ID.Text = null;
            Demo_Db_StudentDataLoad_Name.Text = null;
            Demo_Db_StudentDataLoad_Gender.Text = null;
            Demo_Db_StudentDataLoad_TotalMarks.Text = null;
            Demo_Db_StudentDataLoad_label.Text = null;
        }
    }
}
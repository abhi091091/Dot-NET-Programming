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
    public partial class WebForm_DemoStudnetPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Load_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["ehealth"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(cs))
            {string sqlquery = "select * from students where ID = " + TextBox_studentid.Text;
                SqlDataAdapter da = new SqlDataAdapter(sqlquery, conn);
                DataSet ds = new DataSet();
                da.Fill(ds, "fill_students");
                ViewState["sql_query"] = sqlquery;
                ViewState["dataset"] = ds;
                if(ds.Tables["fill_students"].Rows.Count > 0)
                { DataRow dr = ds.Tables["fill_students"].Rows[0];

                    DropDownList_gender.SelectedValue = dr["Gender"].ToString();
                    TextBox_name.Text = (string)dr["Name"];
                    TextBox_marks.Text = dr["Totalmarks"].ToString();
                }   else
                {
                    Label_update.ForeColor = System.Drawing.Color.Red;
                    Label_update.Text = "The students is not available with ID : " + TextBox_studentid.Text;
                    DropDownList_gender.SelectedValue = null;
                    TextBox_name.Text = null;
                    TextBox_marks.Text = null;
                }        

            }
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["ehealth"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(CS))
            {SqlDataAdapter da = new SqlDataAdapter((string) ViewState["sql_query"], conn);
                SqlCommandBuilder builder = new SqlCommandBuilder(da);
                DataSet ds = (DataSet) ViewState["dataset"];
                if(ds.Tables["fill_students"].Rows.Count > 0)
                {
                    DataRow dr = ds.Tables["fill_students"].Rows[0];
                    dr["Gender"] = DropDownList_gender.SelectedValue;
                    dr["Name"] = TextBox_name.Text;
                    dr["Totalmarks"] = TextBox_marks.Text;
                } else
                {Label_update.Text = "No rows to update";
                    Label_update.ForeColor = System.Drawing.Color.Red;
                }

                int updatedrows = da.Update(ds,"fill_students");

                if(updatedrows > 0)
                {
                    Label_update.Text = updatedrows + "row(s) are updated";
                    Label_update.ForeColor = System.Drawing.Color.Green;
                }
            }
        }

        protected void GridView_disconnected_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GridView_disconnected_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void GridView_disconnected_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

        }

        protected void GridView_disconnected_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void Button_getdatafromdb_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["ehealth"].ConnectionString;
            SqlConnection conn = new SqlConnection(CS);

        }


        //private void getdatafromdb()
        //{


        //        string CS = ConfigurationManager.ConnectionStrings["ehealth"].ConnectionString;

        //        using (SqlConnection conn = new SqlConnection(CS))
        //        {
        //            string sqlquery = "select * from students";
        //            SqlDataAdapter da = new SqlDataAdapter(sqlquery, conn);

        //            DataSet ds = new DataSet();
        //            da.Fill(ds, "students");

        //        SqlCommandBuilder builder = new SqlCommandBuilder(da);
        //        da.Update(ds, "students");


        //            //DataColumn[] column = new DataColumn[1];
        //            ds.Tables["students"].PrimaryKey = new DataColumn[] { ds.Tables["students"].Columns["ID"] };
        //            Cache["Dataset"] = ds;
        //            //Cache.Insert("Dataset", ds, null, DateTime.UtcNow.AddHours(24), System.Web.Caching.Cache.NoSlidingExpiration);


        //            GridView_conncected_datasource.DataSource = ds;
        //            GridView_conncected_datasource.DataBind();
        //            Label_connected_datasource.ForeColor = System.Drawing.Color.Red;
        //            Label_connected_datasource.Text = "Data loaded from Database";


        //    }

        //}

        //private void getdatafromcache()
        //{
        //    if (Cache["Dataset"] != null)
        //        {
        //        //    Cache.Remove("Datset");

        //        //    Label_connected_datasource.ForeColor = System.Drawing.Color.Red;
        //        //    Label_connected_datasource.Text = "Cache Removed";
        //        DataSet ds = (DataSet)Cache["Dataset"];
        //    GridView_conncected_datasource.DataSource = ds;
        //    GridView_conncected_datasource.DataBind();
        //}
        //}



    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Ehealth
{
    public partial class RegistrationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button_register_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=BEAST\MSSQLHARI;Initial Catalog=EHealth;Integrated Security=True");
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into register (firstname,lastname,gender,address,mobile,email,username,password,confirmpwd) values (' " + TextBox_fname.Text + "',' " + TextBox_lname.Text + "',' " + RadioButtonList1.Text + "',' " + TextBox_addr.Text + "',' " + TextBox_mobile.Text + "',' " + TextBox_email.Text + "',' " + TextBox_uname.Text + "',' " + TextBox_pwd.Text + "',' " + TextBox_cnfrmpwd.Text + "' )", conn);
            cmd.ExecuteNonQuery();
            conn.Close();

            Label1.Visible = true;

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
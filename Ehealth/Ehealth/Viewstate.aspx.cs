using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ehealth
{
    public partial class Viewstate : System.Web.UI.Page
    {
        int click = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                TextBox1.Text = "0";
             
            }

            Response.Write("Applications active are : " + Application["app_start"]);
            Response.Write("Sessions active are : " + Application["session_start"]);
        }

        protected void Button_click_Click(object sender, EventArgs e)
        {

            if (ViewState["Store"] != null)
            {
                click = (int)ViewState["Store"];

                click = click + 1;
            }
                TextBox1.Text = Convert.ToString(click);
                ViewState["Store"] = click;
            
        }
    }
}
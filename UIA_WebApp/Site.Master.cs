using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UIA_WebApp
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["New"] != null)
            {
                userLabel1.Text = "";
                userLabel1.Text += Session["New"].ToString();
                GuestBtnsVisible.Visible = false;
                LogOutBtnVisible.Visible = true;
                AccountBtnsVisible.Visible = true;
            }
            else
            {
                userLabel1.Text += "Guest";
                GuestBtnsVisible.Visible = true;
                LogOutBtnVisible.Visible = false;
                AccountBtnsVisible.Visible = false;
            }
        }

        protected void LogOut_Button_Click(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}
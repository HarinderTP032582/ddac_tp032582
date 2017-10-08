using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace UIA_WebApp
{
    public partial class AccountActivation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string constr = ConfigurationManager.ConnectionStrings["UIA_DatabaseConnectionString"].ConnectionString;
                string activationCode = !string.IsNullOrEmpty(Request.QueryString["ActivationCode"]) ? Request.QueryString["ActivationCode"] : Guid.Empty.ToString();
                string accid = string.Empty;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd1 = new SqlCommand("DELETE FROM Activation_Codes WHERE ActivationCode = '@ActivationCode'", con))
                    {
                        using (SqlDataAdapter sda1 = new SqlDataAdapter())
                        {
                            cmd1.CommandType = CommandType.Text;
                            cmd1.Parameters.AddWithValue("@ActivationCode", activationCode);
                            cmd1.Connection = con;
                            con.Open();

                            string getAccID = "SELECT Account_ID FROM Activation_Codes WHERE ActivationCode ='"+activationCode+"'";
                            SqlCommand cmd = new SqlCommand(getAccID, con);
                            SqlDataReader reader = cmd.ExecuteReader();
                            while (reader.Read())
                            {
                                accid = reader[0].ToString();
                            }

                            int rowsAffected = cmd1.ExecuteNonQuery();
                            con.Close();
                            if (rowsAffected == 1)
                            {
                                ltMessage.Text = "Activation successful.";
                            }
                            else
                            {
                                ltMessage.Text = "Invalid Activation code.";
                            }
                        }
                    }
                    using (SqlCommand cmd2 = new SqlCommand("UPDATE Account set Activated=@activationBit where Account_ID ='"+accid+"'", con))
                    {
                        using (SqlDataAdapter sda2 = new SqlDataAdapter())
                        {
                            cmd2.CommandType = CommandType.Text;
                            cmd2.Parameters.AddWithValue("@activationBit", 1);
                            cmd2.Connection = con;
                            con.Open();
                            int rowsAffected = cmd2.ExecuteNonQuery();
                            con.Close();
                            if (rowsAffected == 1)
                            {
                                ltMessage.Text = "Update Account Activation Successfully.";
                            }
                            else
                            {
                                ltMessage.Text = "Failed to Update Account Activated.";
                            }
                        }
                    }
                }
            }
        }
    }
}
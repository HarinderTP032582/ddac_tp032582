using System;
using System.IO;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;
using System.Net.Mail;
using System.Net;

namespace UIA_WebApp
{
    public partial class InfantPassengerDetails : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            InfantNoLabel1.Text = Request.Form[InfantNoLabel1.UniqueID];

            TitleDDList.Text = Request.Form[TitleDDList.UniqueID];
            FirstNameTBox.Text = Request.Form[FirstNameTBox.UniqueID];
            LastNameTBox.Text = Request.Form[LastNameTBox.UniqueID];
            DOBTBox.Text = Request.Form[DOBTBox.UniqueID];
            PassportNoTBox.Text = Request.Form[PassportNoTBox.UniqueID];
            GenderDDList.Text = Request.Form[GenderDDList.UniqueID];
            PassportCountryDDList.Text = Request.Form[PassportCountryDDList.UniqueID];
            PassportExpiryTBox.Text = Request.Form[PassportExpiryTBox.UniqueID];

            int k = 1;


            if (Session["Passenger_Infant"].ToString() != null)
            {
                InfantNoLabel1.Text = Session["Infant_Label"].ToString();
                k++;
            }
        }

        protected void addBookBtn_Click(object sender, EventArgs e)
        {
            Random r = new Random();
            int passenger_id = r.Next(0, 1000);

            try
            {
                string constr = ConfigurationManager.ConnectionStrings["UIA_DatabaseConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("INSERT INTO Passengers (Passenger_ID, Passenger_Type, Passenger_Title, Passenger_FirstName, Passenger_LastName, Passenger_DOB, Passenger_PassportNumber, Passenger_Gender, Passport_Country, Passport_ExpiryDate) " +
                        "values(@passID, @passType, @title, @firstname, @lastname, @dob, @passportNo, @gender, @passportcountry, @passportexpiry)"))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {
                            cmd.Connection = con;
                            con.Open();
                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.AddWithValue("@passID", passenger_id.ToString());
                            cmd.Parameters.AddWithValue("@passType", Session["Passenger_Infant"].ToString());
                            cmd.Parameters.AddWithValue("@title", TitleDDList.SelectedItem.ToString());
                            cmd.Parameters.AddWithValue("@firstname", FirstNameTBox.Text.ToString());
                            cmd.Parameters.AddWithValue("@lastname", LastNameTBox.Text.ToString());
                            cmd.Parameters.AddWithValue("@dob", DOBTBox.Text.ToString());
                            cmd.Parameters.AddWithValue("@passportNo", Convert.ToInt32(PassportNoTBox.Text.ToString()));
                            cmd.Parameters.AddWithValue("@gender", GenderDDList.SelectedItem.ToString());
                            cmd.Parameters.AddWithValue("@passportcountry", PassportCountryDDList.SelectedItem.ToString());
                            cmd.Parameters.AddWithValue("@passportexpiry", PassportExpiryTBox.Text.ToString());
                            con.Close();
                        }
                    }
                }
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Alert", "alert(The " + this.InfantNoLabel1.Text + " is successfully registered!);", true);
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }
    }
}
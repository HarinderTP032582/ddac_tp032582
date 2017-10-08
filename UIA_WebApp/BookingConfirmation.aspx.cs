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
using System.Threading;

namespace UIA_WebApp
{
    public partial class BookingConfirmation : System.Web.UI.Page
    {
        //private const string VIEWSTATEKEY_ADULT = "AdultPassengerDetailsCount";
        //private const string VIEWSTATEKEY_CHILD = "ChildPassengerDetailsCount";
        //private const string VIEWSTATEKEY_INFANT = "InfantPassengerDetailsCount";
        protected void Page_Load(object sender, EventArgs e)
        {
            int adults = Convert.ToInt32(Session["Adults"].ToString());
            int childs = Convert.ToInt32(Session["Childs"].ToString());
            int infants = Convert.ToInt32(Session["Infants"].ToString());

            string no_adults = Session["Adults"].ToString();
            string no_childs = Session["Childs"].ToString();
            string no_infants = Session["Infants"].ToString();

            string email = Session["New"].ToString();
            emailTBox1_1.Text = email;

            int totalcount = adults + childs + infants;
            countPassenger1.Text = "Passenger " + totalcount.ToString() + "#";

            if (Session["passengerCount"] == null)//this avoid resetting of the session on postback
            {
                Session["passengerCount"] = totalcount;
            }

            int countlabel = Convert.ToInt32(countPassenger1.Text.Replace("Passenger ", null).Replace("#", null).ToString());

            if (countlabel == 0)
            {
                addBookBtn.Enabled = false;
            }

        }

        protected void CheckBoxRequired_ServerValidate(object sender, ServerValidateEventArgs e)
        {
            e.IsValid = agreeCheckBox.Checked;
        }

        private static Random random = new Random();
        public static string RandomString(int length)
        {
            const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            return new string(Enumerable.Repeat(chars, length)
              .Select(s => s[random.Next(s.Length)]).ToArray());
        }

        protected void addBookBtn_Click(object sender, EventArgs e)
        {
            Int32 pass_count = Convert.ToInt32(Session["passengerCount"].ToString());
            if (pass_count > 0)
            {
                countPassenger1.Text = "Passenger " + (pass_count - 1).ToString() + "#";
                pass_count = pass_count - 1;
            }
            Session["passengerCount"] = pass_count;

            int adults = Convert.ToInt32(Session["Adults"].ToString());
            int childs = Convert.ToInt32(Session["Childs"].ToString());
            int infants = Convert.ToInt32(Session["Infants"].ToString());

            string a_title = string.Empty;
            string a_fname = string.Empty;
            string a_lname = string.Empty;
            string a_dob = string.Empty;
            string a_passportnum = string.Empty;
            string a_gender = string.Empty;
            string a_passportcountry = string.Empty;
            string a_passportexpiry = string.Empty;

            string c_title = string.Empty;
            string c_fname = string.Empty;
            string c_lname = string.Empty;
            string c_dob = string.Empty;
            string c_passportnum = string.Empty;
            string c_gender = string.Empty;
            string c_passportcountry = string.Empty;
            string c_passportexpiry = string.Empty;

            string i_title = string.Empty;
            string i_fname = string.Empty;
            string i_lname = string.Empty;
            string i_dob = string.Empty;
            string i_passportnum = string.Empty;
            string i_gender = string.Empty;
            string i_passportcountry = string.Empty;
            string i_passportexpiry = string.Empty;

            Random r = new Random();
            int passenger_id = r.Next(0, 1000);
            int booking_id = r.Next(0, 1000);




            int countlabel = Convert.ToInt32(countPassenger1.Text.Replace("Passenger ", null).Replace("#", null).ToString());

            if (countlabel == 0)
            {
                addBookBtn.Enabled = false;
            }

            try
            {
                string constr = ConfigurationManager.ConnectionStrings["UIA_DatabaseConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand("INSERT INTO Passengers (Passenger_ID, Passenger_Type, Passenger_Title, Passenger_FirstName, Passenger_LastName, Passenger_DOB, Passenger_PassportNumber, Passenger_Gender, Passport_Country, Passport_ExpiryDate) " +
                        "values(@passID, @passType, @title, @firstname, @lastname, @dob, @passportNo, @gender, @passportcountry, @passportexpiry)"))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {
                            cmd.Connection = con;

                            cmd.Parameters.AddWithValue("@passID", passenger_id.ToString());
                            cmd.Parameters.AddWithValue("@passType", passengerTypeDDList1.SelectedItem.ToString());
                            cmd.Parameters.AddWithValue("@title", TitleDDList.SelectedItem.ToString());
                            cmd.Parameters.AddWithValue("@firstname", FirstNameTBox.Text.ToString());
                            cmd.Parameters.AddWithValue("@lastname", LastNameTBox.Text.ToString());
                            cmd.Parameters.AddWithValue("@dob", DOBTBox.Text.ToString());
                            cmd.Parameters.AddWithValue("@passportNo", Convert.ToInt32(PassportNoTBox.Text.ToString()));
                            cmd.Parameters.AddWithValue("@gender", GenderDDList.SelectedItem.ToString());
                            cmd.Parameters.AddWithValue("@passportcountry", PassportCountryDDList.SelectedItem.ToString());
                            cmd.Parameters.AddWithValue("@passportexpiry", PassportExpiryTBox.Text.ToString());
                            cmd.ExecuteNonQuery();
                        }
                    }
                    con.Close();
                }

                using (SqlConnection con1 = new SqlConnection(constr))
                {
                    con1.Open();
                    using (SqlCommand cmd1 = new SqlCommand("INSERT INTO Bookings (Booking_ID, PassengerDetails_ID, Depart_ID, Return_ID, Ticket_Price, Payment_Method, Seat_ID, Email) " +
                        "values(@bookID, @passDetailsID, @departflightDetailsID, @returnflightDetailsID, @ticketprice, @paymethod, @seatID, @emailadd)"))
                    {
                        using (SqlDataAdapter sda1 = new SqlDataAdapter())
                        {
                            cmd1.Connection = con1;

                            cmd1.Parameters.AddWithValue("@bookID", booking_id.ToString());
                            cmd1.Parameters.AddWithValue("@passDetailsID", passenger_id.ToString());
                            cmd1.Parameters.AddWithValue("@departflightDetailsID", Session["Departure_Flight_ID"].ToString());
                            cmd1.Parameters.AddWithValue("@returnflightDetailsID", Session["Return_Flight_ID"].ToString());
                            cmd1.Parameters.AddWithValue("@ticketprice", Session["Total_Ticket_Price"].ToString());
                            cmd1.Parameters.AddWithValue("@paymethod", PaymentMethodRBList.SelectedItem.ToString());
                            cmd1.Parameters.AddWithValue("@seatID", RandomString(6));
                            cmd1.Parameters.AddWithValue("@emailadd", emailTBox1_1.Text.ToString());
                            cmd1.ExecuteNonQuery();
                        }
                    }
                    con1.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }

            ScriptManager.RegisterStartupScript(this, typeof(Page), "Register", "alert('" + countPassenger1.Text + ", " + FirstNameTBox.Text.ToString() + " " + LastNameTBox.Text.ToString() + " has been added into the database successfully');", true);
            FirstNameTBox.Text = null;
            LastNameTBox.Text = null;
            DOBTBox = null;
            PassportNoTBox = null;
            PassportExpiryTBox = null;
        }

        protected void confirmBookBtn1_Click(object sender, EventArgs e)
        {
            if (addBookBtn.Enabled == false)
            {
                Response.Redirect("BookingSuccess.aspx");
            }
            else
            {
                confirmBookBtn1.Enabled = false;
            }
        }
    }
}
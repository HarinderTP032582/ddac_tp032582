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
    public partial class ViewBookings : System.Web.UI.Page
    {
        StringBuilder table = new StringBuilder();
        protected void Page_Load(object sender, EventArgs e)
        {
            string email = Session["New"].ToString();

            if(!Page.IsPostBack)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["UIA_DatabaseConnectionString"].ToString();
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "SELECT * FROM Bookings WHERE Email ='" + email + "'";
                cmd.Connection = con;
                SqlDataReader rd = cmd.ExecuteReader();
                table.Append("<table border='1'>");
                table.Append("<tr><th>Booking ID</th><th>Passenger Details ID</th><th>Flight Departure ID</th><th>Flight Return ID</th><th>Total Ticket Price</th><th>Payment Method</th><th>Random Seat ID</th><th>E-mail</th>");
                table.Append("</tr>");

                if(rd.HasRows)
                {
                    while(rd.Read())
                    {
                        table.Append("<tr>");
                        table.Append("<td>" + rd[0] + "</td>");
                        table.Append("<td>" + rd[1] + "</td>");
                        table.Append("<td>" + rd[2] + "</td>");
                        table.Append("<td>" + rd[3] + "</td>");
                        table.Append("<td>" + rd[4] + "</td>");
                        table.Append("<td>" + rd[5] + "</td>");
                        table.Append("<td>" + rd[6] + "</td>");
                        table.Append("<td>" + rd[7] + "</td>");
                        table.Append("</tr>");
                    }
                }
                table.Append("</table>");
                PopulateTablePlaceHolder.Controls.Add(new Literal { Text = table.ToString() });
                rd.Close();
            }
        }
    }
}
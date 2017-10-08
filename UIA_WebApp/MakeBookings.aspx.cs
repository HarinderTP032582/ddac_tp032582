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

namespace UIA_WebApp
{
    public partial class MakeBookings : System.Web.UI.Page
    {
        string CtrlName;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                if (flightTypesRBList1.SelectedItem.Text == "Round Trip")
                {
                    ArrivalPlaceHolder.Visible = true;
                }
                else if (flightTypesRBList1.SelectedItem.Text == "One Way")
                {
                    ArrivalPlaceHolder.Visible = false;
                }


                CtrlName = hidSourceID.Value;
            }
        }

        protected void AnyButton_OnClick(object sender, EventArgs e)
        {
            List<string> myItems;
            string countryText = (sender as Button).Text.ToString();
            string airportName = string.Empty;
            airportBtn1.Text = "";
            airportBtn2.Text = "";
            airportBtn3.Text = "";
            airportBtn4.Text = "";

            airportBtn1.Visible = false;
            airportBtn2.Visible = false;
            airportBtn3.Visible = false;
            airportBtn4.Visible = false;

            string constr = ConfigurationManager.ConnectionStrings["UIA_DatabaseConnectionString"].ConnectionString;
            try
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT Airport_Name FROM Airports WHERE Country='" + countryText + "'", con))
                    {
                        con.Open();
                        using (SqlDataReader reader1 = cmd.ExecuteReader())
                        {
                            myItems = new List<string>();
                            while (reader1.Read())
                            {
                                myItems.Add(reader1[0].ToString());
                            }
                            con.Close();
                        }
                    }
                }
                for (int i = 0; i < myItems.Count; i++)
                {
                    if (i == 0)
                    {
                        if (airportBtn1.Text != myItems[0])
                        {
                            airportBtn1.Text = myItems[0];
                            airportBtn1.Visible = true;
                        }
                        i++;
                    }
                }
                for (int i = 0; i < myItems.Count; i++)
                {

                    if (i == 1)
                    {
                        if (airportBtn2.Text != myItems[1])
                        {
                            airportBtn2.Visible = true;
                            airportBtn2.Text = myItems[1];
                        }
                        i++;
                    }
                }
                for (int i = 0; i < myItems.Count; i++)
                {
                    if (i == 2)
                    {
                        airportBtn3.Text = myItems[2];
                        airportBtn3.Visible = true;
                        i++;
                    }
                }
                for (int i = 0; i < myItems.Count; i++)
                {
                    if (i == 3)
                    {
                        airportBtn4.Text = myItems[3];
                        airportBtn4.Visible = true;
                        i++;
                    }
                }
                countryNameLabel1.Text = countryText;
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", "<script>$('#airportModal').modal('show');</script>", false);
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }

        protected void AirportButton_OnClick(object sender, EventArgs e)
        {
            string airportText = (sender as Button).Text.ToString();
            if (CtrlName == openDepartBtn2.ClientID)
            {
                departTBox1.Text = airportText;               
            }
            else if (CtrlName == openArrivalBtn2.ClientID)
            {
                arrivalTBox1.Text = airportText;
            }
        }

        protected void departRValid1_PreRender(object sender, EventArgs e)
        {
            departRValid1.MinimumValue = DateTime.Now.Date.ToString("dd-MM-yy");
            departRValid1.MaximumValue = DateTime.Now.Date.AddYears(5).ToString("dd-MM-yy");
        }

        protected void returnRValid1_PreRender(object sender, EventArgs e)
        {
            returnDateRValid.MinimumValue = DateTime.Now.Date.ToString("dd-MM-yy");
            returnDateRValid.MaximumValue = DateTime.Now.Date.AddYears(5).ToString("dd-MM-yy");
        }

        protected void searchBtn1_Click(object sender, EventArgs e)
        {
            Session["SelectedDepart"] = departTBox1.Text;
            Session["SelectedArrival"] = arrivalTBox1.Text;

            Session["DepartDate"] = departDateTBox1.Text;
            Session["ReturnDate"] = returnDateTBox1.Text;

            Session["Adults"] = adultDDList1.SelectedItem.ToString();
            Session["Childs"] = childDDList1.SelectedItem.ToString();
            Session["Infants"] = infantDDList1.SelectedItem.ToString();

            Session["RoundTrip"] = flightTypesRBList1.SelectedItem.Text.ToString();
            
            if (Session["SelectedDepart"] != null && Session["SelectedArrival"] != null)
            {
                Response.Redirect("FlightSelection.aspx");
            }
            else
            {
                String csname1 = "PopupScript";
                Type cstype = this.GetType();
                ClientScriptManager cs = Page.ClientScript;
                String cstext1 = "alert('Please select Departure Airport and Arrival Airport!');";
                cs.RegisterStartupScript(cstype, csname1, cstext1, true);
            }
        }
    }

}
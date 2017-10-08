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
    public partial class FlightSelection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int adult_ticket_price = 0;
            int child_ticket_price = 0;
            double infant_ticket_price = 0;
            int total_ticket_price1 = 0;

            string departure_airport = Session["SelectedDepart"].ToString();
            string return_airport = Session["SelectedArrival"].ToString();

            string departure_date = Session["DepartDate"].ToString();
            string return_date = Session["ReturnDate"].ToString();

            int adults = Convert.ToInt32(Session["Adults"].ToString());
            int childs = Convert.ToInt32(Session["Childs"].ToString());
            int infants = Convert.ToInt32(Session["Infants"].ToString());

            string trip_type = Session["RoundTrip"].ToString();

            string no_adults = Session["Adults"].ToString();
            string no_childs = Session["Childs"].ToString();
            string no_infants = Session["Infants"].ToString();

            departLabel2.Text = departure_airport;
            returnLabel2.Text = return_airport;

            departNameLabel1.Text = departure_airport;
            arrivalNameLabel1.Text = return_airport;

            string constr = ConfigurationManager.ConnectionStrings["UIA_DatabaseConnectionString"].ConnectionString;
            try
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT * FROM Flights WHERE Departure_Date ='" + departure_date + "'", con))
                    {
                        con.Open();
                        using (SqlDataReader reader1 = cmd.ExecuteReader())
                        {
                            while (reader1.Read())
                            {
                                string flightid = reader1[0].ToString();
                                string depart_air = reader1[1].ToString();
                                string depart_dat = reader1[2].ToString();
                                string depart_tim = reader1[3].ToString();
                                string arrival_air = reader1[4].ToString();
                                string arrival_dat = reader1[5].ToString();
                                string arrival_tim = reader1[6].ToString();
                                string duration = reader1[7].ToString();
                                string aircraft_modal = reader1[8].ToString();

                                departTimeLabel1.Text = depart_tim;
                                departDateLabel1.Text = depart_dat;
                                arrivalTimeLabel1.Text = arrival_tim;
                                arrivalDateLabel1.Text = arrival_dat;
                                totaldurationLabel1.Text = duration;

                                departTimeLabel3.Text = depart_tim;
                                departDateLabel4.Text = depart_dat;
                                arrivalTimeLabel3.Text = arrival_tim;
                                arrivalDateLabel4.Text = arrival_dat;
                                totaldurationLabel3.Text = duration;
                                flightIDLabel1.Text = flightid;
                                Session["Departure_Flight_ID"] = flightid;
                            }
                            con.Close();
                        }
                    }

                    using (SqlCommand cmd1 = new SqlCommand("SELECT * FROM Flights WHERE Arrival_Date ='" + return_date + "'", con))
                    {
                        con.Open();
                        using (SqlDataReader reader2 = cmd1.ExecuteReader())
                        {
                            while (reader2.Read())
                            {
                                string flightid1 = reader2[0].ToString();
                                string depart_air1 = reader2[1].ToString();
                                string depart_dat1 = reader2[2].ToString();
                                string depart_tim1 = reader2[3].ToString();
                                string arrival_air1 = reader2[4].ToString();
                                string arrival_dat1 = reader2[5].ToString();
                                string arrival_tim1 = reader2[6].ToString();
                                string duration1 = reader2[7].ToString();
                                string aircraft_modal1 = reader2[8].ToString();

                                departTimeLabel2.Text = depart_tim1;
                                departDateLabel3.Text = depart_dat1;
                                arrivalTimeLabel2.Text = arrival_tim1;
                                arrivalDateLabel3.Text = arrival_dat1;
                                totaldurationLabel2.Text = duration1;

                                departTimeLabel4.Text = depart_tim1;
                                departDateLabel5.Text = depart_dat1;
                                arrivalTimeLabel4.Text = arrival_tim1;
                                arrivalDateLabel5.Text = arrival_dat1;
                                totaldurationLabel4.Text = duration1;
                                flightIDLabel2.Text = flightid1;
                                Session["Return_Flight_ID"] = flightid1;
                            }
                            con.Close();
                        }
                    }
                    if(return_date == null)
                    {
                        Session["Return_Flight_ID"] = "";
                    }

                    using (SqlCommand cmd2 = new SqlCommand("SELECT * FROM Flight_Prices WHERE FlightDetails_ID ='" + flightIDLabel1.Text + "' AND Class_Name ='"+ economyLabel1.Text + "'", con))
                    {
                        con.Open();
                        using (SqlDataReader reader3 = cmd2.ExecuteReader())
                        {
                            while (reader3.Read())
                            {
                                string priceid1 = reader3[0].ToString();
                                string flight_detailsid1 = reader3[1].ToString();
                                string class_name1 = reader3[2].ToString();
                                string flight_price1 = reader3[3].ToString();

                                economyPriceRB1.Text = flight_price1 + " UAH";
                                Session["Depart_PriceClass1"] = flight_price1;
                            }
                            con.Close();
                        }
                    }

                    using (SqlCommand cmd3 = new SqlCommand("SELECT * FROM Flight_Prices WHERE FlightDetails_ID ='" + flightIDLabel1.Text + "' AND Class_Name ='" + premiumEClassLabel1.Text + "'", con))
                    {
                        con.Open();
                        using (SqlDataReader reader4 = cmd3.ExecuteReader())
                        {
                            while (reader4.Read())
                            {
                                string priceid2 = reader4[0].ToString();
                                string flight_detailsid2 = reader4[1].ToString();
                                string class_name2 = reader4[2].ToString();
                                string flight_price2 = reader4[3].ToString();

                                premEcoPriceRB1.Text = flight_price2 + " UAH";
                                Session["Depart_PriceClass2"] = flight_price2;
                            }
                            con.Close();
                        }
                    }

                    using (SqlCommand cmd4 = new SqlCommand("SELECT * FROM Flight_Prices WHERE FlightDetails_ID ='" + flightIDLabel1.Text + "' AND Class_Name ='" + businessLabel1.Text + "'", con))
                    {
                        con.Open();
                        using (SqlDataReader reader5 = cmd4.ExecuteReader())
                        {
                            while (reader5.Read())
                            {
                                string priceid3 = reader5[0].ToString();
                                string flight_detailsid3 = reader5[1].ToString();
                                string class_name3 = reader5[2].ToString();
                                string flight_price3 = reader5[3].ToString();

                                businessPriceRB1.Text = flight_price3 + " UAH";
                                Session["Depart_PriceClass3"] = flight_price3;
                            }
                            con.Close();
                        }
                    }

                    using (SqlCommand cmd5 = new SqlCommand("SELECT * FROM Flight_Prices WHERE FlightDetails_ID ='" + flightIDLabel2.Text + "' AND Class_Name ='" + economyLabel1.Text + "'", con))
                    {
                        con.Open();
                        using (SqlDataReader reader4 = cmd5.ExecuteReader())
                        {
                            while (reader4.Read())
                            {
                                string priceid4 = reader4[0].ToString();
                                string flight_detailsid1 = reader4[1].ToString();
                                string class_name4 = reader4[2].ToString();
                                string flight_price1 = reader4[3].ToString();

                                economyPriceRB2.Text = flight_price1 + " UAH";
                                Session["Return_PriceClass1"] = flight_price1;
                            }
                            con.Close();
                        }
                    }

                    using (SqlCommand cmd6 = new SqlCommand("SELECT * FROM Flight_Prices WHERE FlightDetails_ID ='" + flightIDLabel2.Text + "' AND Class_Name ='" + premiumEClassLabel1.Text + "'", con))
                    {
                        con.Open();
                        using (SqlDataReader reader5 = cmd6.ExecuteReader())
                        {
                            while (reader5.Read())
                            {
                                string priceid2 = reader5[0].ToString();
                                string flight_detailsid2 = reader5[1].ToString();
                                string class_name5 = reader5[2].ToString();
                                string flight_price2 = reader5[3].ToString();

                                premEcoPriceRB2.Text = flight_price2 + " UAH";
                                Session["Return_PriceClass2"] = flight_price2;
                            }
                            con.Close();
                        }
                    }

                    using (SqlCommand cmd7 = new SqlCommand("SELECT * FROM Flight_Prices WHERE FlightDetails_ID ='" + flightIDLabel2.Text + "' AND Class_Name ='" + businessLabel1.Text + "'", con))
                    {
                        con.Open();
                        using (SqlDataReader reader6 = cmd7.ExecuteReader())
                        {
                            while (reader6.Read())
                            {
                                string priceid3 = reader6[0].ToString();
                                string flight_detailsid3 = reader6[1].ToString();
                                string class_name6 = reader6[2].ToString();
                                string flight_price3 = reader6[3].ToString();

                                businessPriceRB2.Text = flight_price3 + " UAH";
                                Session["Return_PriceClass3"] = flight_price3;
                            }
                            con.Close();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }

            departLabel3.Text = departure_airport;
            returnLabel3.Text = return_airport;

            departDateLabel2.Text = departure_date;

            if(trip_type == "One Way")
            {
                returnDatePlaceHolder.Visible = false;
                returnTitlePlaceHolder.Visible = false;
                returnTablePlaceHolder.Visible = false;
                returnDetailsPlaceHolder.Visible = false;
            }
            else if(trip_type == "Round Trip")
            {
                returnDatePlaceHolder.Visible = true;
                returnTitlePlaceHolder.Visible = true;
                returnTablePlaceHolder.Visible = true;
                returnDetailsPlaceHolder.Visible = true;

                returnLabel6.Text = return_airport;
                departLabel6.Text = departure_airport;

                departNameLabel2.Text = return_airport;
                arrivalNameLabel2.Text = departure_airport;

                departNameLabel4.Text = return_airport;
                arrivalNameLabel4.Text = departure_airport;

                returnDateLabel2.Text = return_date;
            }


            if (no_adults == null)
            {
                AdultLabelPlaceHolder.Visible = false;
            }

            if (no_childs == null)
            {
                ChildLabelPlaceHolder.Visible = false;
            }

            if (no_infants == null)
            {
                InfantLabelPlaceHolder.Visible = false;
            }


            if (no_adults != null)
            {
                adultLabel1.Text = no_adults+"x Adult";
            }

            if(no_childs != null)
            {
                childLabel1.Text = no_childs + "x Child";
            }

            if(no_infants != null)
            {
                infantLabel1.Text = no_infants + "x Infant";
            }

            if (Page.IsPostBack)
            {
                if (economyPriceRB1.Checked)
                {
                    
                    string dep_ecoprice1 = economyPriceRB1.Text.Substring(0, Session["Depart_PriceClass1"].ToString().Length);
                    int dep_ecoprice2 = Convert.ToInt32(dep_ecoprice1);
                    if(Convert.ToInt32(no_adults) > 0)
                    {
                        AdultLabelPlaceHolder.Visible = true;
                        adult_ticket_price += (dep_ecoprice2 * Convert.ToInt32(no_adults));
                        adultPriceLabel1.Text = adult_ticket_price.ToString();
                        classNameLabel1.Text = classNameLabel1.Text.Replace("|Economy Class", "").Replace("|Premium Economy Class", "").Replace("|Business Class","") + ("|")+("Economy Class");
                    }
                    else
                    {
                        AdultLabelPlaceHolder.Visible = false;
                    }
                    
                    if(Convert.ToInt32(no_childs) > 0)
                    {
                        ChildLabelPlaceHolder.Visible = true;
                        child_ticket_price += ((dep_ecoprice2 * Convert.ToInt32(no_childs))/2);
                        childPriceLabel1.Text = child_ticket_price.ToString();
                        classNameLabel2.Text = classNameLabel2.Text.Replace("|Economy Class", "").Replace("|Premium Economy Class", "").Replace("|Business Class", "") + ("|") + ("Economy Class");
                    }
                    else
                    {
                        ChildLabelPlaceHolder.Visible = false;
                    }

                    if (Convert.ToInt32(no_infants) > 0)
                    {
                        InfantLabelPlaceHolder.Visible = true;
                        infant_ticket_price += ((0.1) * (dep_ecoprice2 * Convert.ToInt32(no_infants)));
                        infantPriceLabel1.Text = infant_ticket_price.ToString();
                        classNameLabel3.Text = classNameLabel3.Text.Replace("|Economy Class", "").Replace("|Premium Economy Class", "").Replace("|Business Class", "") + ("|") + ("Economy Class");
                    }
                    else
                    {
                        InfantLabelPlaceHolder.Visible = false;
                    }

                }
                else if(premEcoPriceRB1.Checked)
                {
                    string dep_premecoprice1 = premEcoPriceRB1.Text.Substring(0, Session["Depart_PriceClass2"].ToString().Length);
                    int dep_premecoprice2 = Convert.ToInt32(dep_premecoprice1);
                    if (Convert.ToInt32(no_adults) > 0)
                    {
                        AdultLabelPlaceHolder.Visible = true;
                        adult_ticket_price += (dep_premecoprice2 * Convert.ToInt32(no_adults));
                        adultPriceLabel1.Text = adult_ticket_price.ToString();
                        classNameLabel1.Text = classNameLabel1.Text.Replace("|Economy Class", "").Replace("|Premium Economy Class", "").Replace("|Business Class", "") + ("|") + ("Premium Economy Class");
                    }
                    else
                    {
                        AdultLabelPlaceHolder.Visible = false;
                    }

                    if (Convert.ToInt32(no_childs) > 0)
                    {
                        ChildLabelPlaceHolder.Visible = true;
                        child_ticket_price += ((dep_premecoprice2 * Convert.ToInt32(no_childs)) / 2);
                        childPriceLabel1.Text = child_ticket_price.ToString();
                        classNameLabel2.Text = classNameLabel2.Text.Replace("|Economy Class", "").Replace("|Premium Economy Class", "").Replace("|Business Class", "") + ("|") + ("Premium Economy Class");
                    }
                    else
                    {
                        ChildLabelPlaceHolder.Visible = false;
                    }

                    if (Convert.ToInt32(no_infants) > 0)
                    {
                        InfantLabelPlaceHolder.Visible = true;
                        infant_ticket_price += ((0.1) * (dep_premecoprice2 * Convert.ToInt32(no_infants)));
                        infantPriceLabel1.Text = infant_ticket_price.ToString();
                        classNameLabel3.Text = classNameLabel3.Text.Replace("|Economy Class", "").Replace("|Premium Economy Class", "").Replace("|Business Class", "") + ("|") + ("Premium Economy Class");
                    }
                    else
                    {
                        InfantLabelPlaceHolder.Visible = false;
                    }
                }
                else if (businessPriceRB1.Checked)
                {
                    string dep_businessprice1 = businessPriceRB1.Text.Substring(0, Session["Depart_PriceClass3"].ToString().Length);
                    int dep_businessprice2 = Convert.ToInt32(dep_businessprice1);
                    if (Convert.ToInt32(no_adults) > 0)
                    {
                        AdultLabelPlaceHolder.Visible = true;
                        adult_ticket_price += (dep_businessprice2 * Convert.ToInt32(no_adults));
                        adultPriceLabel1.Text = adult_ticket_price.ToString();
                        classNameLabel1.Text = classNameLabel1.Text.Replace("|Economy Class", "").Replace("|Premium Economy Class", "").Replace("|Business Class", "") + ("|") + ("Business Class");
                    }
                    else
                    {
                        AdultLabelPlaceHolder.Visible = false;
                    }

                    if (Convert.ToInt32(no_childs) > 0)
                    {
                        ChildLabelPlaceHolder.Visible = true;
                        child_ticket_price += ((dep_businessprice2 * Convert.ToInt32(no_childs)) / 2);
                        childPriceLabel1.Text = child_ticket_price.ToString();
                        classNameLabel2.Text = classNameLabel2.Text.Replace("|Economy Class", "").Replace("|Premium Economy Class", "").Replace("|Business Class", "") + ("|") + ("Business Class");
                    }
                    else
                    {
                        ChildLabelPlaceHolder.Visible = false;
                    }

                    if (Convert.ToInt32(no_infants) > 0)
                    {
                        InfantLabelPlaceHolder.Visible = true;
                        infant_ticket_price += ((0.1) * (dep_businessprice2 * Convert.ToInt32(no_infants)));
                        infantPriceLabel1.Text = infant_ticket_price.ToString();
                        classNameLabel3.Text = classNameLabel3.Text.Replace("|Economy Class", "").Replace("|Premium Economy Class", "").Replace("|Business Class", "") + ("|") + ("Business Class");
                    }
                    else
                    {
                        InfantLabelPlaceHolder.Visible = false;
                    }
                }

                if (economyPriceRB2.Checked)
                {

                    string return_ecoprice1 = economyPriceRB2.Text.Substring(0, Session["Return_PriceClass1"].ToString().Length);
                    int return_ecoprice2 = Convert.ToInt32(return_ecoprice1);
                    if (Convert.ToInt32(no_adults) > 0)
                    {
                        AdultLabelPlaceHolder.Visible = true;
                        adult_ticket_price += (return_ecoprice2 * Convert.ToInt32(no_adults));
                        adultPriceLabel1.Text = adult_ticket_price.ToString();
                        returnClassLabel1.Text = classNameLabel1.Text.Replace("|Economy Class", "").Replace("|Premium Economy Class", "").Replace("|Business Class", "") + ("|") + ("Economy Class");
                    }
                    else
                    {
                        AdultLabelPlaceHolder.Visible = false;
                    }

                    if (Convert.ToInt32(no_childs) > 0)
                    {
                        ChildLabelPlaceHolder.Visible = true;
                        child_ticket_price += ((return_ecoprice2 * Convert.ToInt32(no_childs)) / 2);
                        childPriceLabel1.Text = child_ticket_price.ToString();
                        returnClassLabel2.Text = classNameLabel2.Text.Replace("|Economy Class", "").Replace("|Premium Economy Class", "").Replace("|Business Class", "") + ("|") + ("Economy Class");
                    }
                    else
                    {
                        ChildLabelPlaceHolder.Visible = false;
                    }

                    if (Convert.ToInt32(no_infants) > 0)
                    {
                        InfantLabelPlaceHolder.Visible = true;
                        infant_ticket_price += ((0.1) * (return_ecoprice2 * Convert.ToInt32(no_infants)));
                        infantPriceLabel1.Text = infant_ticket_price.ToString();
                        returnClassLabel3.Text = classNameLabel3.Text.Replace("|Economy Class", "").Replace("|Premium Economy Class", "").Replace("|Business Class", "") + ("|") + ("Economy Class");
                    }
                    else
                    {
                        InfantLabelPlaceHolder.Visible = false;
                    }
                }

                else if (premEcoPriceRB2.Checked)
                {
                    string return_premecoprice1 = premEcoPriceRB2.Text.Substring(0, Session["Return_PriceClass2"].ToString().Length);
                    int return_premecoprice2 = Convert.ToInt32(return_premecoprice1);
                    if (Convert.ToInt32(no_adults) > 0)
                    {
                        AdultLabelPlaceHolder.Visible = true;
                        adult_ticket_price += (return_premecoprice2 * Convert.ToInt32(no_adults));
                        adultPriceLabel1.Text = adult_ticket_price.ToString();
                        returnClassLabel1.Text = classNameLabel1.Text.Replace("|Economy Class", "").Replace("|Premium Economy Class", "").Replace("|Business Class", "") + ("|") + ("Premium Economy Class");
                    }
                    else
                    {
                        AdultLabelPlaceHolder.Visible = false;
                    }

                    if (Convert.ToInt32(no_childs) > 0)
                    {
                        ChildLabelPlaceHolder.Visible = true;
                        child_ticket_price += ((return_premecoprice2 * Convert.ToInt32(no_childs)) / 2);
                        childPriceLabel1.Text = child_ticket_price.ToString();
                        returnClassLabel2.Text = classNameLabel2.Text.Replace("|Economy Class", "").Replace("|Premium Economy Class", "").Replace("|Business Class", "") + ("|") + ("Premium Economy Class");
                    }
                    else
                    {
                        ChildLabelPlaceHolder.Visible = false;
                    }

                    if (Convert.ToInt32(no_infants) > 0)
                    {
                        InfantLabelPlaceHolder.Visible = true;
                        infant_ticket_price += ((0.1) * (return_premecoprice2 * Convert.ToInt32(no_infants)));
                        infantPriceLabel1.Text = infant_ticket_price.ToString();
                        returnClassLabel3.Text = classNameLabel3.Text.Replace("|Economy Class", "").Replace("|Premium Economy Class", "").Replace("|Business Class", "") + ("|") + ("Premium Economy Class");
                    }
                    else
                    {
                        InfantLabelPlaceHolder.Visible = false;
                    }
                }
                else if (businessPriceRB2.Checked)
                {
                    string return_businessprice1 = businessPriceRB1.Text.Substring(0, Session["Return_PriceClass3"].ToString().Length);
                    int return_businessprice2 = Convert.ToInt32(return_businessprice1);
                    if (Convert.ToInt32(no_adults) > 0)
                    {
                        AdultLabelPlaceHolder.Visible = true;
                        adult_ticket_price += (return_businessprice2 * Convert.ToInt32(no_adults));
                        adultPriceLabel1.Text = adult_ticket_price.ToString();
                        returnClassLabel1.Text = classNameLabel1.Text.Replace("|Economy Class", "").Replace("|Premium Economy Class", "").Replace("|Business Class", "") + ("|") + ("Business Class");
                    }
                    else
                    {
                        AdultLabelPlaceHolder.Visible = false;
                    }

                    if (Convert.ToInt32(no_childs) > 0)
                    {
                        ChildLabelPlaceHolder.Visible = true;
                        child_ticket_price += ((return_businessprice2 * Convert.ToInt32(no_childs)) / 2);
                        childPriceLabel1.Text = child_ticket_price.ToString();
                        returnClassLabel2.Text = classNameLabel2.Text.Replace("|Economy Class", "").Replace("|Premium Economy Class", "").Replace("|Business Class", "") + ("|") + ("Business Class");
                    }
                    else
                    {
                        ChildLabelPlaceHolder.Visible = false;
                    }

                    if (Convert.ToInt32(no_infants) > 0)
                    {
                        InfantLabelPlaceHolder.Visible = true;
                        infant_ticket_price += ((0.1) * (return_businessprice2 * Convert.ToInt32(no_infants)));
                        infantPriceLabel1.Text = infant_ticket_price.ToString();
                        returnClassLabel3.Text = classNameLabel3.Text.Replace("|Economy Class", "").Replace("|Premium Economy Class", "").Replace("|Business Class", "") + ("|") + ("Business Class");
                    }
                    else
                    {
                        InfantLabelPlaceHolder.Visible = false;
                    }
                }

                if(adult_ticket_price != 0)
                {
                    total_ticket_price1 += Convert.ToInt32(adultPriceLabel1.Text);
                    totalPriceLabel1.Text = total_ticket_price1.ToString();
                }

                if(child_ticket_price != 0)
                {
                    total_ticket_price1 += Convert.ToInt32(childPriceLabel1.Text);
                    totalPriceLabel1.Text = total_ticket_price1.ToString();
                }

                if(infant_ticket_price != 0)
                {
                    total_ticket_price1 += Convert.ToInt32(infantPriceLabel1.Text);
                    totalPriceLabel1.Text = total_ticket_price1.ToString();
                }
            }
        }

        protected void confirmTicketBtn1_Click(object sender, EventArgs e)
        {
            Session["Total_Ticket_Price"] = totalPriceLabel1.Text;
            Response.Redirect("BookingConfirmation.aspx");
        }
    }
}
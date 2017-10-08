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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UIA_DatabaseConnectionString"].ConnectionString);
                conn.Open();
                string checkuser = "select count(*) from Account where Email='"+newEmailTBox.Text+"'";
                SqlCommand com = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if(temp == 1)
                {
                    Response.Write("E-mail already EXISTS");
                }
                conn.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int userId = 0;
            try
            {
                Guid acc_id = Guid.NewGuid();
                Guid prof_id = Guid.NewGuid();
                string activationCode = Guid.NewGuid().ToString();
                string constr = ConfigurationManager.ConnectionStrings["UIA_DatabaseConnectionString"].ConnectionString;
                //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UIA_DatabaseConnectionString"].ConnectionString);
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("Insert_New_Account"))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {
                            cmd.Connection = con;
                            con.Open();
                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.AddWithValue("@Accid", acc_id.ToString());
                            cmd.Parameters.AddWithValue("@Email", newEmailTBox.Text);
                            cmd.Parameters.AddWithValue("@Password", Encryption(newPasswordTBox2.Text));

                            cmd.Parameters.AddWithValue("@Profid", prof_id.ToString());
                            //cmd.Parameters.AddWithValue("@Accid", acc_id.ToString());
                            cmd.Parameters.AddWithValue("@Fname", newFNameTBox.Text);
                            cmd.Parameters.AddWithValue("@Lname", newLNameTBox.Text);
                            cmd.Parameters.AddWithValue("@AddressAs", newAddressAsDDList.SelectedItem.ToString());
                            cmd.Parameters.AddWithValue("@dob", dobTBox1.Text);
                            cmd.Parameters.AddWithValue("@country", countryDDList1.SelectedItem.ToString());

                            cmd.Parameters.AddWithValue("@code", activationCode);
                            
                            userId = Convert.ToInt32(cmd.ExecuteScalar() != DBNull.Value ? cmd.ExecuteScalar():0);
                            con.Close();
                        }
                    }
                }
                string message = string.Empty;
                switch (userId)
                {
                    case -1:
                        message = "Username already exists.\\nPlease choose a different username.";
                        break;
                    default:
                        message = "Registration successful. Activation email has been sent.";
                        SendActivationEmail(userId);
                        break;
                }
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);

                //conn.Open();
                //string insertQuery1 = "insert into Account (Account_ID, Email, Passw) values (@accID, @email, @password)";
                //string insertQuery2 = "insert into User_Profile (Profile_ID, Account_ID, FirstName, LastName, AddressedAs, DOB, Country) values (@profID, @accID, @fname, @lname, @addressas, @dob, @country)";
                //SqlCommand com1 = new SqlCommand(insertQuery1, conn);
                //SqlCommand com2 = new SqlCommand(insertQuery2, conn);
                //Random rnd = new Random();
                //int acc_id = rnd.Next(1, 100);
                //int prof_id = rnd.Next(1, 100);
                //Guid acc_id = Guid.NewGuid();
                //Guid prof_id = Guid.NewGuid();
                //string accid = String.Format("ACC{0}", acc_id.ToString());
                //string profid = String.Format("PRO{0}", prof_id.ToString());
                //com1.Parameters.AddWithValue("@accID", acc_id.ToString());
                //com1.Parameters.AddWithValue("@email", newEmailTBox.Text);
                //com1.Parameters.AddWithValue("@password", Encryption(newPasswordTBox2.Text));

                //com2.Parameters.AddWithValue("@profID", prof_id.ToString());
                //com2.Parameters.AddWithValue("@accID", acc_id.ToString());
                //com2.Parameters.AddWithValue("@fname", newFNameTBox.Text);
                //com2.Parameters.AddWithValue("@lname", newLNameTBox.Text);
                //com2.Parameters.AddWithValue("@addressas", newAddressAsDDList.SelectedItem.ToString());
                //com2.Parameters.AddWithValue("@dob", dobTBox1.Text);
                //com2.Parameters.AddWithValue("@country", countryDDList1.SelectedItem.ToString());

                //com1.ExecuteNonQuery();
                //com2.ExecuteNonQuery();
                //userId = Convert.ToInt32(cmd.ExecuteScalar());
                //Response.Redirect("About.aspx");
                //Response.Write("Registration is successful");
                //conn.Close();
            }
            catch(Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }

        private void SendActivationEmail(int userId)
        {
            string accountid = string.Empty;
            string activate_code = string.Empty;
            string constr = ConfigurationManager.ConnectionStrings["UIA_DatabaseConnectionString"].ConnectionString;
            try
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT Account_ID FROM Account WHERE Email ='"+newEmailTBox.Text+"'", con))
                    {
                        //cmd.CommandType = CommandType.Text;
                        //cmd.Connection = con;
                        con.Open();
                        using (SqlDataReader reader1 = cmd.ExecuteReader())
                        {
                            while(reader1.Read())
                            {
                                accountid = reader1[0].ToString();
                            }
                            con.Close();
                        }
                    }
                    using (SqlCommand cmd1 = new SqlCommand("SELECT ActivationCode FROM Activation_Codes WHERE Account_ID ='"+accountid+"'", con))
                    {
                        con.Open();
                        using (SqlDataReader reader2 = cmd1.ExecuteReader())
                        {
                            while (reader2.Read())
                            {
                                activate_code = reader2[0].ToString();
                            }
                            con.Close();
                        }
                    }
                }
            }
            catch(Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
            
                
            using (MailMessage mm = new MailMessage("uiasender02102017@gmail.com", newEmailTBox.Text))
            {
                mm.Subject = "Account Activation"; 
                string body = "Hello " + newEmailTBox.Text.Trim() + ",";
                body += "<br /><br />Please click the following link to activate your account";
                body += "<br /><a href = 'AccountActivation.aspx?ActivationCode="+activate_code+"'>Click here to activate your account.</a>";
                body += "<br /><br />Thanks";
                mm.Body = body;
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential("uiasender02102017@gmail.com", "Potato123");
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);
            }
        }

        private string Encryption(string clearText)
        {
            string EncryptionKey = "MAKV2SPBNI99212";
            byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(clearBytes, 0, clearBytes.Length);
                        cs.Close();
                    }
                    clearText = Convert.ToBase64String(ms.ToArray());
                }
            }
            return clearText;
        }
    }
}
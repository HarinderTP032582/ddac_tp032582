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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["UIA_DatabaseConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM Account WHERE Email='" + emailTBox2.Text + "'"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        con.Open();
                        int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                        if(temp == 1)
                        {
                            using (SqlCommand cmd1 = new SqlCommand("SELECT Passw FROM Account WHERE Email='" + emailTBox2.Text + "'"))
                            {
                                using (SqlDataAdapter sda1 = new SqlDataAdapter())
                                {
                                    cmd1.Connection = con;
                                    string password = Decryption(cmd1.ExecuteScalar().ToString());
                                    if (password == passwTBox3.Text)
                                    {
                                        Session["New"] = emailTBox2.Text;
                                        string message1 = "Password is correct!";
                                        Response.Write("<script>alert('" + message1 + "')</script>");
                                        Response.Redirect("Default.aspx");
                                        con.Close();
                                    }
                                    else
                                    {
                                        string message2 = "Password is incorrect!";
                                        Response.Write("<script>alert('" + message2 + "')</script>");
                                        con.Close();
                                    }
                                }
                            }
                        }
                        else
                        {
                            string message3 = "E-mail Address is incorrect or cannot be found!";
                            Response.Write("<script>alert('" + message3 + "')</script>");
                        }
                        con.Close();
                    }
                }
            }
        }

        private string Decryption(string cipherText)
        {
            string EncryptionKey = "MAKV2SPBNI99212";
            byte[] cipherBytes = Convert.FromBase64String(cipherText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(cipherBytes, 0, cipherBytes.Length);
                        cs.Close();
                    }
                    cipherText = Encoding.Unicode.GetString(ms.ToArray());
                }
            }
            return cipherText;
        }
    }
}
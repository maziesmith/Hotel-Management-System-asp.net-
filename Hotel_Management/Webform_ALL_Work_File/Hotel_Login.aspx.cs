using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Hotel_Management.Webform_ALL_Work_File
{
    public partial class Hotel_Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(local);Initial Catalog=Hotel_Client_Management_system;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlDataAdapter da = new SqlDataAdapter("select * from registration where email='" + Email.Text + "'and password='" + Passsword.Text + "'and author='" + RadioButtonAuthor.Text + "'", con);
            Session["email"] = Email.Text;
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count == 0)
            {
                Label1.Text = "Invalid Details";
            }
            else
            {
                if (RadioButtonAuthor.Text == "Admin" && Email.Text == "tanvir.bitto@gmail.com" && Passsword.Text == "bitto")
                {
                    Response.Redirect("Client_Datapage.aspx");
                }
               
              else if(RadioButtonAuthor.Text == "Client") {


                    
                    Response.Redirect("roomservice.aspx");



                }
            }
        }

    }
}
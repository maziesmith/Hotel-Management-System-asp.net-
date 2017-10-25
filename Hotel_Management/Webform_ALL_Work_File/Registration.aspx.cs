using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Configuration;


namespace Hotel_Management.Webform_ALL_Work_File
{


    public partial class Registration : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection("Data Source=(local);Initial Catalog=Hotel_Client_Management_system;Integrated Security=True");
        string clientid = "Client No ";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


                uniqueID();

            }

        }

        private void uniqueID()
        {


            con.Open();
            SqlCommand cmd = new SqlCommand("select Count (id) from registration", con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());

            con.Close();
            i++;
            id.Text = clientid + i.ToString();



        }



        protected void Button1_Click(object sender, EventArgs e)
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("insert into registration values('" + id.Text + "','" + TextBoxname.Text + "','" + TextBoxemail.Text + "','" + TextBoxaddress.Text + "','" + TextBoxphone.Text + "','" + TextBoxpassword.Text + "','" + RadioButtonauthor.Text + "')", con);
            cmd.ExecuteNonQuery();

            con.Close();


            Label1.Text = "Submit Succefully.Thank You";


        }
    }
}
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
    public partial class Rent_randomnumber : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection("Data Source=(local);Initial Catalog=Hotel_Client_Management_system;Integrated Security=True");
        string gmail;
        string rentid = "Rent No ";

      


        protected void Page_Load(object sender, EventArgs e)
        {
            Rent.Text = Session["value"].ToString();
            gmail = Session["email"].ToString();


           

            if (!IsPostBack)
            {


                uniqueID();

            }
        }



        private void uniqueID()
        {


            con.Open();
            SqlCommand cmd = new SqlCommand("select Count (TransectionID) from rent_transection", con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());

            con.Close();
            i++;
            TransectionID.Text = rentid + i.ToString();



        }






        protected void Sumbit_Click(object sender, EventArgs e)
        {
            con.Open();
            string roomnoid = Session["roomnoid"].ToString();
            SqlCommand cmd = new SqlCommand("insert into rent_transection values('" + TransectionID.Text + "','" + gmail + "','" + Rent.Text + "','" + TransectionNo.Text + "')", con);
            

            string transectionid = Session["transectionid"].ToString();

            if (TransectionNo.Text == transectionid)
            {
                Label2.Text = "Your Booking is Successfull";
                cmd.ExecuteNonQuery();
                con.Close();
            }

            else {

                Label2.Text = "Your Booking is Not Successfull";
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Client_all_grid.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Text;
using System.Net;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Data;


namespace Hotel_Management.Webform_ALL_Work_File
{
    public partial class roomservice : System.Web.UI.Page
    {
        
      
        SqlConnection con = new SqlConnection("Data Source=(local);Initial Catalog=Hotel_Client_Management_system;Integrated Security=True");
        Random rnd = new Random();
        string gmail_email;
        string gmail_Body;
        string roomid = "Room No ID-";



        protected void Page_Load(object sender, EventArgs e)
        {
            
            gmail_email = Session["email"].ToString();



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
            roomnoid.Text = roomid + i.ToString();



        }






        protected void Button1_Click(object sender, EventArgs e)
        {

            con.Open();
           
            gmail_Body = rnd.Next(100000000, 1000000000).ToString();

            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
            smtp.EnableSsl = true;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new NetworkCredential("tanvir.bitto@gmail.com", "");
            MailMessage mail = new MailMessage("tanvir.bitto@gmail.com", gmail_email, "Your transetion id is ", gmail_Body);
            smtp.Send(mail);


            Session["transectionid"] = gmail_Body;



            SqlCommand cmd = new System.Data.SqlClient.SqlCommand("insert into roomservice values('" + roomnoid.Text + "','" + Roomnumber.Text + "','" + Roomtype.Text + "','" + RoomQuantity.Text + "','" + Codate.Text + "','" + Redate.Text + "','" + Quantityofdate.Text + "','" + Quantityofpeople.Text + "','" + gmail_Body + "')", con);
            cmd.ExecuteNonQuery();

            con.Close();

            int ac = 5000;
            int non_ac = 3500;
            int roomquantity = Convert.ToInt32(RoomQuantity.Text);
            int quantityofdate = Convert.ToInt32(Quantityofdate.Text);
            int quantityofpeople = Convert.ToInt32(Quantityofpeople.Text);

            if (Roomtype.Text == "AC")

            {

                int room_rent_1st = (ac * roomquantity);
                int room_rent_2nd = (room_rent_1st * quantityofdate);
                String room_rent_final = (room_rent_2nd * quantityofpeople).ToString();
                Session["value"] = Label1.Text = room_rent_final;
            }
            if (Roomtype.Text == "Non-AC")
            {

                int room_rent_1st = (non_ac * roomquantity);
                int room_rent_2nd = (room_rent_1st * quantityofdate);
                String room_rent_final = (room_rent_2nd * quantityofpeople).ToString();
                Session["value"] = Label1.Text = room_rent_final;
            }

            Session["roomnoid"] = roomnoid.Text;

            Response.Redirect("Rent_randomnumber.aspx");


        }

       

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Codate.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }

        protected void Rdate_Click(object sender, EventArgs e)
        {
            Calendar2.Visible = true;
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            Redate.Text = Calendar2.SelectedDate.ToShortDateString();
            Calendar2.Visible = false;
        }

        protected void Comingdate_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
        }
    }
        
    }



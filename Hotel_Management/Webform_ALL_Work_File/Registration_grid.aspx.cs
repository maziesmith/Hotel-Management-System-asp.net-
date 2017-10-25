using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Hotel_Management.Gridview
{
    public partial class Registration_grid : System.Web.UI.Page
    {
         protected void Page_Load(object sender, EventArgs e)
        {

            GridView1.Visible = true;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}
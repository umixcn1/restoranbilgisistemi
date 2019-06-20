using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace OnlineLokanta.pages

{

    public partial class siparis : System.Web.UI.Page {

            
    
        string connStr = WebConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       
        protected void yerat_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("insert Table values(@kisiAdi,@kisiSayi,@tarihSec,@saatSec,@masaSec)", conn);
            cmd.Parameters.AddWithValue("@kisiAdi", TextBox1.Text);
            cmd.Parameters.AddWithValue("@kisiSayi", TextBox2.Text);

            cmd.Parameters.AddWithValue("@tarihSec", Calendar1.SelectedDate);
            cmd.Parameters.AddWithValue("@saatSec", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("masaSec", RadioButtonList1.SelectedValue);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();


            conn.Open();

        }
    }
}
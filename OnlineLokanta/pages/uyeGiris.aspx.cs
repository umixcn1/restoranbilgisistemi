using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;


namespace OnlineLokanta.pages
{
    public partial class uyeGiris : System.Web.UI.Page
    {
        SqlConnection strConn = new SqlConnection(WebConfigurationManager.ConnectionStrings["DBConn"].ConnectionString);
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KullaniciAdi"] != null)
            {
                Response.Redirect("~/pages/index.aspx");
            }
        }

        protected void ButtonGiris_Click(object sender, EventArgs e)
        {

           


            cmd = new SqlCommand("sp_UyeGirisi", strConn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@ePosta", TextBoxEposta.Text);
            cmd.Parameters.AddWithValue("@sifre", TextBoxSifre.Text);
            strConn.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
               
                    Session["KullaniciAdi"] = TextBoxEposta.Text;
                    Response.Redirect("~/pages/index.aspx");
                
            }
            else
            {
                LabelMsj.Text = "Eposta veya şifre hatalı!!!";
            }
            dr.Close();
            strConn.Close();
        }
    }
}
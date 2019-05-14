using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;


namespace OnlineLokanta.pages
{
    public partial class uyeKayit : System.Web.UI.Page
    {
        string connStr = WebConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KullaniciAdi"] != null)
            {
                Response.Redirect("~/pages/index.aspx");
            }
        }

        protected void btnKayitOl_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection(connStr);

            SqlCommand cmd = new SqlCommand("sp_UyeEkle", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@kisiAdi", TextBoxAd.Text);
            cmd.Parameters.AddWithValue("@kisiSoyadi", TextBoxSoyad.Text);
            cmd.Parameters.AddWithValue("@dogumTarihi", Convert.ToDateTime(TextBoxDogumTarihi.Text));
            cmd.Parameters.AddWithValue("@ePosta", TextBoxEposta.Text);
            cmd.Parameters.AddWithValue("@sifre", TextBoxSifre.Text);
            cmd.Parameters.AddWithValue("@cinsiyet", RadioButtonListCinsiyet.SelectedValue);
            cmd.Parameters.AddWithValue("@sehir", DropDownListSehir.SelectedValue);
            cmd.Parameters.AddWithValue("@yetkiID", 0);
            cmd.Parameters.AddWithValue("@telefon", txtTelefon.Text);

            if (FileUploadProfil.HasFile)
            {
                cmd.Parameters.AddWithValue("@profilResmi", "~/UserImages/" + FileUploadProfil.FileName);
            }
            else
            {
                cmd.Parameters.AddWithValue("@profilResmi", "NULL");
            }

            if (conn.State == ConnectionState.Closed)
                conn.Open();

            int i = cmd.ExecuteNonQuery();
            if (i == 1)
            {
                if (FileUploadProfil.HasFile)
                    FileUploadProfil.SaveAs(Server.MapPath("~/UserImages/" + FileUploadProfil.FileName));
                lblMsj.Text = "Üye bilgileri başarıyla kaydoldu";
            }
            else
                lblMsj.Text = "Kayıt esnasında Hata!";

            conn.Close();
        }
    }
}
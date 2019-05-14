using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineLokanta.MasterPage
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KullaniciAdi"] != null)
            {
                pnlUyeGiris.Visible = false;
                pnlUye.Visible = true;
                txtUye.Text=Session["KullaniciAdi"].ToString();
                txtUye.ReadOnly = true;
            }
            else
            {
                pnlUye.Visible = false;
            }
        }

        protected void btnCikis_Click(object sender, EventArgs e)
        {
            Session["KullaniciAdi"] = null;
            Response.Redirect("../pages/index.aspx");
        }
    }
}
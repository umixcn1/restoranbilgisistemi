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
    public partial class siparis : System.Web.UI.Page
            
    {
        string connStr = WebConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void yerat_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("sp_re", conn);
        }
    }
}
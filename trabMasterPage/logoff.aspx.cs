using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace trabMasterPage
{
    public partial class logoff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Convert.ToInt32(Session["logado"]) == 1)
            {
                Session.Abandon();
                Response.Redirect("~/logoff.aspx");
            }

            
        }


    }
}
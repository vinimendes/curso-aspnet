using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace trabMasterPage
{
    public partial class Inicio : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToInt32(Session["logado"]) == 1)
            {
                linkLogin.Visible = false;
                linkLogoff.Visible = true;
                linkNovo.Visible = true;
                linkServ.Visible = true;


                


            } else
            {
                linkLogin.Visible = true;
                linkLogoff.Visible = false;
            }
        }
    }
}

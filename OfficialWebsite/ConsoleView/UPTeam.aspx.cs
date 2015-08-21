using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OfficialWebsite.ConsoleView
{
    public partial class UPTeam : System.Web.UI.Page
    {
        protected string Teamid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Teamid = Request.QueryString["id"];
                
            }
        }
        
    }
}
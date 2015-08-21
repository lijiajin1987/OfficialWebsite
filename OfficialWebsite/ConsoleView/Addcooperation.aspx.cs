using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OfficialWebsite.ConsoleView
{
    public partial class Addcooperation : System.Web.UI.Page
    {
        protected string cid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cid = Request.QueryString["cid"];
            }
        }
    }
}
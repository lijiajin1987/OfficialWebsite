﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OfficialWebsite.ConsoleView
{
    public partial class UpHomeContent : System.Web.UI.Page
    {
        protected string cid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.cid = Request.QueryString["id"];
            }
        }
    }
}
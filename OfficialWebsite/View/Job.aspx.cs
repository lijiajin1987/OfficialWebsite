using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBaseControl;
using System.Data;
namespace OfficialWebsite.View
{
    public partial class Job : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.BindData();
            }
        }
        private void BindData()
        {
            ow_jobControl ow_jobControl = new ow_jobControl();
            DataTable table = null;
            table = ow_jobControl.GetTable(1, "ID");
            if (table != null && table.Rows.Count > 0)
            {
                this.repeaterJob.DataSource = table.DefaultView;
                this.repeaterJob.DataBind();
            }
        }
    }
}
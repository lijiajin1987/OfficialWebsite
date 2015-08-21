using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBaseControl;
using System.Data;
namespace OfficialWebsite.ConsoleView
{
    public partial class HomeContent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //SaveUploadedFile(Request.Files);
                this.BindData();
            }
        }
        private void BindData()
        {
            ow_HomeContentControl ow_cooperationControl = new ow_HomeContentControl();
            DataTable table = null;
            table = ow_cooperationControl.GetTable(1, "id");
            if (table != null && table.Rows.Count > 0)
            {
                this.repdata.DataSource = table.DefaultView;
                this.repdata.DataBind();
            }
        }
    }
}
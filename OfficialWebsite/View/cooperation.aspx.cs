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
    public partial class cooperation : System.Web.UI.Page
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
            ow_cooperationControl ow_cooperationControl = new ow_cooperationControl();
            DataTable table = null;
            table = ow_cooperationControl.GetTable(1, "ID");
            if (table != null && table.Rows.Count > 0)
            {
                this.repeatercooperation.DataSource = table.DefaultView;
                this.repeatercooperation.DataBind();
            }
        }
    }
}
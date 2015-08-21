using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBaseControl;
using System.Data;
using System.Configuration;
namespace OfficialWebsite.View
{
    public partial class Team : System.Web.UI.Page
    {
        Configuration Configuration = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Configuration = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration(Request.ApplicationPath);
                try
                {
                    AppSettingsSection appseting = (AppSettingsSection)Configuration.GetSection("appSettings");      //修改设置
                    this.pteamTitle.InnerHtml = appseting.Settings["txtTeamTitle"].Value;
                }
                catch (Exception)
                {


                }
                this.BindData();
            }
        }
        private void BindData()
        {
            ow_teamControl ow_teamControl = new ow_teamControl();
            DataTable table = null;
            table = ow_teamControl.GetTable(1, "ID");
            if (table != null && table.Rows.Count > 0)
            {
                this.repeaterTeam.DataSource = table.DefaultView;
                this.repeaterTeam.DataBind();
            }
        }
    }
}
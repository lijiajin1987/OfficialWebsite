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
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.BindData();
                Configuration Configuration = null;
                Configuration = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration(Request.ApplicationPath);
                AppSettingsSection appseting = (AppSettingsSection)Configuration.GetSection("appSettings");      //修改设置
                try
                {
                    this.Androidlink.HRef = appseting.Settings["txtiosapplink"].Value;
                    this.ioslink.HRef = appseting.Settings["txtapklink"].Value;
                }
                catch (Exception)
                {
                }
                
            }
        }
        private void BindData()
        {
            ow_HomeContentControl ow_HomeContentControl = new ow_HomeContentControl();
            DataTable table = ow_HomeContentControl.GetTable(1, "");
            if (table!=null)
            {
                this.RepeaterHome.DataSource = table.DefaultView;
                this.RepeaterHome.DataBind();
            }
        }
    }
}
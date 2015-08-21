using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
namespace OfficialWebsite.View
{
    
    public partial class Site1 : System.Web.UI.MasterPage
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
                    this.owkeywords.Content = appseting.Settings["Keywords"].Value;
                    this.owdescription.Content= appseting.Settings["Description"].Value;
                    this.OWTitle.InnerHtml = appseting.Settings["OW_Title"].Value;
                    this.LOGOimg.Src = appseting.Settings["LOGOimg"].Value;
                }
                catch (Exception)
                {
                }
            }
        }
    }
}
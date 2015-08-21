using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
namespace OfficialWebsite.ConsoleView
{
    public partial class Home : System.Web.UI.Page
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
                    this.txtiosapplink.Text = appseting.Settings["txtiosapplink"].Value;
                    this.txtapklink.Text = appseting.Settings["txtapklink"].Value;
                }
                catch (Exception)
                {
                    
                    
                }
            }
            
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Configuration = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration(Request.ApplicationPath);
            //操作appSettings
            AppSettingsSection appseting = (AppSettingsSection)Configuration.GetSection("appSettings");      //修改设置
            try
            {
                appseting.Settings["txtiosapplink"].Value = this.txtiosapplink.Text;
            }
            catch (Exception)
            {

                appseting.Settings.Add("txtiosapplink", this.txtiosapplink.Text);
            }
            try
            {
                appseting.Settings["txtapklink"].Value = this.txtapklink.Text;
            }
            catch (Exception)
            {

                appseting.Settings.Add("txtapklink", this.txtapklink.Text);
            }
            Configuration.Save();
            
        }
    }
}
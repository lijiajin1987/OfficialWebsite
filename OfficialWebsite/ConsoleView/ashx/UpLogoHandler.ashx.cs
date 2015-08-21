using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
namespace OfficialWebsite.ConsoleView.ashx
{
    /// <summary>
    /// UpLogoHandler 的摘要说明
    /// </summary>
    public class UpLogoHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string Result = "yes";
            
            //Keywords OW_Title Description LOGOimg
            string Keywords = context.Request["Keywords"];
            string OW_Title = context.Request["OW_Title"];
            string Description = context.Request["Description"];
            string LOGOimg = context.Request["LOGOimg"];
            string json = "";
            Configuration Configuration = null;
            //Keywords OW_Title Description LOGOimg
            Configuration = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration(context.Request.ApplicationPath);
            //操作appSettings
            AppSettingsSection appseting = (AppSettingsSection)Configuration.GetSection("appSettings");      //修改设置
            if (context.Request["tag"] == "set")
            {
                try
                {
                    appseting.Settings["Keywords"].Value = Keywords;
                }
                catch (Exception)
                {

                    appseting.Settings.Add("Keywords", Keywords);
                }
                try
                {
                    appseting.Settings["OW_Title"].Value = OW_Title;
                }
                catch (Exception)
                {

                    appseting.Settings.Add("OW_Title", OW_Title);
                }
                try
                {
                    appseting.Settings["Description"].Value = Description;
                }
                catch (Exception)
                {

                    appseting.Settings.Add("Description", Description);
                }
                try
                {
                    appseting.Settings["LOGOimg"].Value = LOGOimg;
                }
                catch (Exception)
                {

                    appseting.Settings.Add("LOGOimg", LOGOimg);
                }
                Configuration.Save();
                json = "{\"Result\":\"" + Result + "\"}";
            }
            else
            {
                Keywords = appseting.Settings["Keywords"].Value;
                OW_Title = appseting.Settings["OW_Title"].Value;
                Description = appseting.Settings["Description"].Value;
                LOGOimg = appseting.Settings["LOGOimg"].Value;
                json = "{\"Keywords\":\"" + Keywords + "\",\"OW_Title\":\"" + OW_Title + "\",\"Description\":\"" + Description + "\",\"LOGOimg\":\"" + LOGOimg + "\",\"Result\":\"" + Result + "\"}";
            }
            
            context.Response.ContentType = "text/plain";
            context.Response.Write(json);
        }


        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}
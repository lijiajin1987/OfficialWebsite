using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DataBaseControl;
namespace OfficialWebsite.ConsoleView.ashx
{
    /// <summary>
    /// LoginHandler 的摘要说明
    /// </summary>
    public class LoginHandler : IHttpHandler
    {


        public void ProcessRequest(HttpContext context)
        {
            int tag=0;
            string username = context.Request["username"];
            string pwd = context.Request["pwd"];
            ow_accountControl ow_accountControl = new DataBaseControl.ow_accountControl();
            if (ow_accountControl.Login(username, pwd))
            {
                tag = 1;
            }
            
            context.Response.ContentType = "text/plain";
            context.Response.Write("{\"username\":\"" + tag .ToString()+ "\"}");
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
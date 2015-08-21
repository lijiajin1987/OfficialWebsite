using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using DataBaseControl;
namespace OfficialWebsite.ConsoleView.ashx
{
    /// <summary>
    /// delTeamHandler 的摘要说明
    /// </summary>
    public class delTeamHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            ow_teamControl ow_teamControl = new DataBaseControl.ow_teamControl();
            DataTable table = null;
            string id = context.Request["teamid"];
            table = ow_teamControl.GetTable(1, id);
            string json = "";
            if (table != null && table.Rows.Count > 0)
            {
                table.Columns["ID"].Prefix = "where";
                ow_teamControl.Update("ID", table, 2);
                json = "yes";
            }
            else
            {
                json = "no";
            }
            
            context.Response.ContentType = "text/plain";
            context.Response.Write("{\"Result\":\"" + json + "\"}");
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
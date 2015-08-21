using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DataBaseControl;
using System.Data;
namespace OfficialWebsite.ConsoleView.ashx
{
    /// <summary>
    /// GetAboutHandler 的摘要说明
    /// </summary>
    public class GetAboutHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            DataTable table=null;
            string jsondata = "";
            DataBaseControl.ow_articleControl ow_articleControl = new DataBaseControl.ow_articleControl();
            try
            {
                table = ow_articleControl.GetTable(1);
                jsondata = table.Rows[0]["Content"].ToString();
            }
            catch (Exception ex)
            {
                jsondata = ex.Message;
            }
            //jsondata += "其实是有数据滴";
            context.Response.ContentType = "text/plain";
            context.Response.Write(jsondata);
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
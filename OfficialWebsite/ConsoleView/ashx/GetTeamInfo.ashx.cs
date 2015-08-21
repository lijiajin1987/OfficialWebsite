using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DataBaseControl;
using System.Data;
namespace OfficialWebsite.ConsoleView.ashx
{
    /// <summary>
    /// GetTeamInfo 的摘要说明
    /// </summary>
    public class GetTeamInfo : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            ow_teamControl ow_teamControl = new DataBaseControl.ow_teamControl();
            DataTable table = null;
            string id = context.Request["Tag"];
            string txtLeadername = "";
            string txtIntroduction = "";
            string imgHeadPortrait = "";
            if (!string.IsNullOrEmpty(id))
            {
                table = ow_teamControl.GetTable(1, id);
                if (table!=null&&table.Rows.Count>0)
                {
                    txtLeadername = table.Rows[0]["Title"].ToString();
                    txtIntroduction = table.Rows[0]["Introduction"].ToString();
                    imgHeadPortrait = table.Rows[0]["Img"].ToString();
                }
            }
            string json = "{\"txtLeadername\":\"" + txtLeadername + "\",\"txtIntroduction\":\"" + txtIntroduction + "\",\"imgHeadPortrait\":\"" + imgHeadPortrait + "\"}";
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
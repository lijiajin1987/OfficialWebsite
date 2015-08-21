using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
namespace OfficialWebsite.ConsoleView.ashx
{
    /// <summary>
    /// UpAboutHandler 的摘要说明
    /// </summary>
    public class UpAboutHandler : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            DataTable table = null;
            string jsondata="";
            DataBaseControl.ow_articleControl ow_articleControl = new DataBaseControl.ow_articleControl();
            try
            {
                table = ow_articleControl.GetTable(1);
            }
            catch (Exception ex)
            {
                jsondata=ex.Message;
            }
            if (table != null && table.Rows.Count > 0)
            {
                //更新
                
                table.Rows[0]["Content"] = context.Request["Content"];
                table.Columns["ID"].Prefix = "where";
                ow_articleControl.Update("ID", table, 1);

            }
            else 
            {
                DataBaseControl.ow_articletypeControl ow_articletypeControl = new DataBaseControl.ow_articletypeControl();
                DataTable table1 = ow_articletypeControl.GetTable(1, " TypeName ='关于我们'");
                DataRow dr = table.NewRow();
                dr["Title"] = "关于我们";
                dr["Content"] = context.Request["Content"].ToString();
                dr["ArticleType"] = table1.Rows[0]["ID"];
                dr["CreateDate"] = DateTime.Now.ToString("f");
                dr["UpdateDate"] = DateTime.Now.ToString("f");
                dr["IsDisplay"] = 0;
                table.Rows.Add(dr);
                ow_articleControl.Update("ID", table,0);
                //新增
            }
            context.Response.ContentType = "text/plain";
            context.Response.Write("{\"Result\":\""+jsondata+"\"}");
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
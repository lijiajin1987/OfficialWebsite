using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using DataBaseControl;
using System.IO;
namespace OfficialWebsite.ConsoleView.ashx
{
    /// <summary>
    /// UpTeamInfoHandler 的摘要说明
    /// </summary>
    public class UpTeamInfoHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            ow_teamControl ow_teamControl = new DataBaseControl.ow_teamControl();
            DataTable table = null;
            DataRow dr = null ;
            string Result = "yes";
            string txtLeadername = context.Request["txtLeadername"];//名字
            string txtIntroduction = context.Request["txtIntroduction"];//介绍
            string imgHeadPortrait = context.Request["imgHeadPortrait"];//图片
            string id = context.Request["teamid"];
            
            if (string.IsNullOrEmpty(id))
            {
                //新增 
                table = ow_teamControl.GetTable(0, "");
                if (table != null)
                {
                    dr = table.NewRow();
                    dr["Title"] = txtLeadername;
                    dr["Introduction"] = txtIntroduction;
                    dr["Img"] = imgHeadPortrait;
                    dr["createdatetime"] = DateTime.Now.ToString("f") ;
                    dr["updatetime"] = DateTime.Now.ToString("f");
                    table.Rows.Add(dr);
                    ow_teamControl.Update("ID", table, 0);
                }
            }
            else 
            {
                //修改 
                table = ow_teamControl.GetTable(1, id);
                if (table != null&&table.Rows.Count>0)
                {
                    dr = table.Rows[0];
                    dr["Title"] = txtLeadername;
                    dr["Introduction"] = txtIntroduction;
                    dr["Img"] = imgHeadPortrait;
                    //dr["createdatetime"] = txtLeadername;
                    dr["updatetime"] = DateTime.Now.ToString("f");
                    //table.Rows.Add(dr);
                    table.Columns["ID"].Prefix = "where";
                    ow_teamControl.Update("ID", table,1);
                }
            }
            context.Response.ContentType = "text/plain";
            context.Response.Write("{\"Result\":\"" + Result + "\",\"imgHeadPortrait\":\"" + imgHeadPortrait + "\"}");
        }

        private string ChangImgname(string oldfilename,string newfilename)
        {
            
            return "";
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
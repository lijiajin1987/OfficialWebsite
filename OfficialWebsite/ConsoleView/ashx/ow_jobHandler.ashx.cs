using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using DataBaseControl;
namespace OfficialWebsite.ConsoleView.ashx
{
    /// <summary>
    /// ow_jobHandler 的摘要说明
    /// </summary>
    public class ow_jobHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            ow_jobControl ow_jobControl = new DataBaseControl.ow_jobControl();
            DataTable table = null;
            //DataRow dr=null;
            string ID = "";
            string JobTitle = "";
            string WorkingAddress = "";
            string JobResponsibilities = "";
            string JobRequirements = "";
            string MailBox = "";
            string Result = "";
            if (!string.IsNullOrEmpty(context.Request.QueryString["jobid"]))
            {   
                //此处执行删除
                ID = context.Request.QueryString["jobid"];
                table = ow_jobControl.GetTable(1, ID);
                if (table != null && table.Rows.Count > 0)
                {
                    table.Columns["ID"].Prefix = "where";
                    ow_jobControl.Update("ID", table, 2);
                    Result = "yes";
                }
                else
                {
                    Result = "no";
                }
            }
            else 
            {
                JobTitle = context.Request["JobTitle"];//职位名称
                WorkingAddress = context.Request["WorkingAddress"];//工作地点
                JobResponsibilities = context.Request["JobResponsibilities"];//岗位职责
                JobRequirements = context.Request["JobRequirements"];//岗位要求
                MailBox = context.Request["MailBox"];//投递邮箱
                ID = context.Request["ID"];//ID
                if (string.IsNullOrEmpty(ID))
                {
                    //如果没有id 就是新增
                    table = this.updatejob(context, 0);
                    if (table != null && table.Rows.Count > 0)
                    {
                        JobTitle = table.Rows[0]["JobTitle"].ToString();//职位名称
                        WorkingAddress = table.Rows[0]["WorkingAddress"].ToString();//工作地点
                        JobResponsibilities = table.Rows[0]["JobResponsibilities"].ToString();//岗位职责
                        JobRequirements = table.Rows[0]["JobRequirements"].ToString();//岗位要求
                        MailBox = table.Rows[0]["MailBox"].ToString();//投递邮箱
                        Result = "yes";
                    }
                }
                else if (!string.IsNullOrEmpty(ID) && string.IsNullOrEmpty(JobTitle) && string.IsNullOrEmpty(WorkingAddress) && string.IsNullOrEmpty(JobResponsibilities) && string.IsNullOrEmpty(JobRequirements) && string.IsNullOrEmpty(MailBox))
                {
                    //有id其他都是空-查询
                    table = getjob(ID);
                    if (table!=null&&table.Rows.Count>0)
                    {
                        JobTitle = table.Rows[0]["JobTitle"].ToString();//职位名称
                        WorkingAddress = table.Rows[0]["WorkingAddress"].ToString();//工作地点
                        JobResponsibilities = table.Rows[0]["JobResponsibilities"].ToString();//岗位职责
                        JobRequirements = table.Rows[0]["JobRequirements"].ToString();//岗位要求
                        MailBox = table.Rows[0]["MailBox"].ToString();//投递邮箱
                        Result = "yes";
                    }
                }
                else if (!string.IsNullOrEmpty(ID) && !string.IsNullOrEmpty(JobTitle) && !string.IsNullOrEmpty(WorkingAddress) && !string.IsNullOrEmpty(JobResponsibilities) && !string.IsNullOrEmpty(JobRequirements) && !string.IsNullOrEmpty(MailBox))
                {
                    //修改
                    table = this.updatejob(context,1);
                    if (table != null && table.Rows.Count > 0)
                    {
                        JobTitle = table.Rows[0]["JobTitle"].ToString();//职位名称
                        WorkingAddress = table.Rows[0]["WorkingAddress"].ToString();//工作地点
                        JobResponsibilities = table.Rows[0]["JobResponsibilities"].ToString();//岗位职责
                        JobRequirements = table.Rows[0]["JobRequirements"].ToString();//岗位要求
                        MailBox = table.Rows[0]["MailBox"].ToString();//投递邮箱
                        Result = "yes";
                    }
                }
            }
            string json = "";
            if (!string.IsNullOrEmpty(context.Request["JobResponsibilitiestext"]))
            {
                json = JobResponsibilities;
            }
            else if (!string.IsNullOrEmpty(context.Request["JobRequirementstext"]))
            {
                json = JobRequirements;
            }
            else
            {
                json = "{\"JobTitle\":\"" + JobTitle + "\",\"WorkingAddress\":\"" + WorkingAddress + "\",\"MailBox\":\"" + MailBox + "\",\"Result\":\"" + Result + "\"}";
                //json = "{\"JobTitle\":\"" + JobTitle + "\",\"WorkingAddress\":\"" + WorkingAddress + "\",\"JobResponsibilities\":\"" + JobResponsibilities + "\",\"JobRequirements\":\"" + JobRequirements + "\",\"MailBox\":\"" + MailBox + "\",\"Result\":\"" + Result + "\"}";
            }
            //json = "{\"JobTitle\":\"" + JobTitle + "\",\"WorkingAddress\":\"" + WorkingAddress + "\",\"MailBox\":\"" + MailBox + "\",\"Result\":\"" + Result + "\"}";
            
            context.Response.ContentType = "text/plain";
            context.Response.Write(json);
        }
        private DataTable getjob(string id)
        {
            ow_jobControl ow_jobControl = new DataBaseControl.ow_jobControl();
            DataTable table = null;
            table = ow_jobControl.GetTable(1, id);
            return table;
        }
        /// <summary>
        /// 增加和修改
        /// </summary>
        /// <param name="context">HttpContext</param>
        /// <param name="tag">0-增加,1-修改</param>
        /// <returns></returns>
        private DataTable updatejob(HttpContext context,int tag) 
        {
            string JobTitle = context.Request["JobTitle"];//职位名称
            string WorkingAddress = context.Request["WorkingAddress"];//工作地点
            string JobResponsibilities = context.Request["JobResponsibilities"];//岗位职责
            string JobRequirements = context.Request["JobRequirements"];//岗位要求
            string MailBox = context.Request["MailBox"];//投递邮箱
            string ID = context.Request["ID"];//ID
            DataTable table = null;
            DataRow dr = null;
            ow_jobControl ow_jobcontrol = new DataBaseControl.ow_jobControl();
            table = ow_jobcontrol.GetTable(1, ID);
            
            if (table != null)
            {
                if (table.Rows.Count > 0)
                {
                    dr = table.Rows[0];
                }
                else
                {
                    dr = table.NewRow();
                    table.Rows.Add(dr);
                }
                dr["JobTitle"] = JobTitle;
                dr["WorkingAddress"] = WorkingAddress;
                dr["JobResponsibilities"] = JobResponsibilities;
                dr["JobRequirements"] = JobRequirements;
                dr["CreateDate"] = tag == 0 ? DateTime.Now.ToString("f") : dr["CreateDate"];
                dr["UpdateDate"] = DateTime.Now.ToString("f");
                dr["MailBox"] = MailBox;
                table.Columns["ID"].Prefix = "where";
                ow_jobcontrol.Update("ID", table, tag);
            }
            return table;
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
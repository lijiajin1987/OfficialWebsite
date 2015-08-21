using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DataBaseControl;
using System.IO;
using System.Data;
namespace OfficialWebsite.ConsoleView.ashx
{
    /// <summary>
    /// UpdateHomeContentHandler 的摘要说明
    /// </summary>
    public class UpdateHomeContentHandler : IHttpHandler
    {
        string json = "";
        ow_HomeContentControl ow_HomeContentControl = new DataBaseControl.ow_HomeContentControl();
        DataTable table = null;
        DataRow dr = null;
        string Result = "yes";
        string tag ="";//标记
        string oneline = "";//第一行
        string twoline = "";//第二行
        string img = "";//图片
        string id = "";
        public void ProcessRequest(HttpContext context)
        {
            Result = "yes";
            tag = "";//标记
            oneline = "";//第一行
            twoline = "";//第二行
            img = "";//图片
            id = "";
            if (!string.IsNullOrEmpty(context.Request["GetID"]))//查询
            {
                this.id = context.Request["GetID"];
                try
                {
                    this.Get();
                    this.Result = "yes";
                    
                }
                catch (Exception e)
                {
                    this.Result = "error-"+e.Message;
                    //throw;
                }
            }
            else if (string.IsNullOrEmpty(context.Request["ID"])&&string.IsNullOrEmpty(context.Request["Delid"])) //新增
            {
                this.tag = context.Request["tag"];
                this.oneline = context.Request["oneline"];
                this.twoline = context.Request["twoline"];
                this.img = context.Request["img"];
                if (!string.IsNullOrEmpty(this.tag )&&!string.IsNullOrEmpty(this.oneline )&&!string.IsNullOrEmpty(this.twoline )&&!string.IsNullOrEmpty(this.img ))
                {
                    try
                    {
                        this.Add();
                        this.Result = "yes";
                    }
                    catch (Exception e)
                    {

                        this.Result = "error-" + e.Message;
                    }
                }
            }
            else if (!string.IsNullOrEmpty(context.Request["ID"])&&!string.IsNullOrEmpty(context.Request["tag"]) && !string.IsNullOrEmpty(context.Request["oneline"]) && !string.IsNullOrEmpty(context.Request["twoline"]))//修改
            {//修改
                this.tag = context.Request["tag"];
                this.oneline = context.Request["oneline"];
                this.twoline = context.Request["twoline"];
                this.img = context.Request["img"];
                this.id = context.Request["ID"];

                try
                {
                    this.Up();
                    this.Result = "yes";
                }
                catch (Exception e)
                {

                    this.Result = "error-" + e.Message;
                }
            }
            else if (!string.IsNullOrEmpty(context.Request["Delid"]))
            {
                this.id = context.Request["Delid"];
                try
                {
                    this.Del();
                    this.Result = "yes";
                }
                catch (Exception e)
                {

                    this.Result = e.Message;
                }
            }
            json = "{\"tag\":\"" + tag + "\",\"oneline\":\"" + oneline + "\",\"twoline\":\"" + twoline + "\",\"img\":\"" + img + "\",\"id\":\"" + id + "\",\"Result\":\"" + Result + "\"}";
            context.Response.ContentType = "text/plain";
            context.Response.Write(json);
        }
        #region 增删改查业务逻辑
        private void Get()
        {
            this.table=ow_HomeContentControl.GetTable(1,id);
            if (this.table!=null&&this.table.Rows.Count>0)
            {
                this.tag = table.Rows[0]["tag"].ToString();
                this.oneline =table.Rows[0]["oneline"].ToString();
                this.twoline = table.Rows[0]["twoline"].ToString();
                this.img = table.Rows[0]["img"].ToString();
                this.id = table.Rows[0]["id"].ToString();
            }
        }
        private void Del() 
        {
            this.Get();
            this.table.Columns["id"].Prefix = "where";
            ow_HomeContentControl.Update("id",this.table,2);
        }
        private void Up() 
        {
            this.table = ow_HomeContentControl.GetTable(1, id);
            if (this.table!=null&&this.table.Rows.Count>0)
            {
                this.dr = this.table.Rows[0];
                this.dr["tag"] = this.tag;
                this.dr["oneline"] = this.oneline;
                this.dr["twoline"] = this.twoline;
                this.dr["img"] = this.img;
                this.dr["Updatedate"] = DateTime.Now.ToString("f");
                this.table.Columns["id"].Prefix = "where";
                ow_HomeContentControl.Update("id", this.table,1);
            }
            
        }
        private void Add() 
        {
            this.table = ow_HomeContentControl.GetTable(0, id);
            if (this.table != null)
            {
                this.dr = this.table.NewRow();
                this.dr["tag"] = this.tag;
                this.dr["oneline"] = this.oneline;
                this.dr["twoline"] = this.twoline;
                this.dr["img"] = this.img;
                this.dr["createdate"] = DateTime.Now.ToString("f");
                this.dr["Updatedate"] = DateTime.Now.ToString("f");
                this.table.Columns["id"].Prefix = "where";
                this.table.Rows.Add(this.dr);
                ow_HomeContentControl.Update("id", this.table, 0);
            }
        }
        #endregion
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}
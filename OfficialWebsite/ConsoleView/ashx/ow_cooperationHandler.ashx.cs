using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using DataBaseControl;
namespace OfficialWebsite.ConsoleView.ashx
{
    /// <summary>
    /// ow_cooperationHandler 合作功能编辑
    /// </summary>
    public class ow_cooperationHandler : IHttpHandler
    {
        ow_cooperationControl ow_cooperationControl = new DataBaseControl.ow_cooperationControl();
        string ID = "";
        string CooperationItem = "";//合作项目
        string ContactPerson = "";//联系人
        string Mailbox = "";//邮箱
        string Telephone = "";//电话
        string QQ = "";//QQ
        string ICON = "";//合作者头像
        string Result = "";//结果
        DataTable table = null;
        DataRow dr = null;
        public void ProcessRequest(HttpContext context)
        {
            string json="";
            #region 判断增删该查
            ID = context.Request["ID"];
            CooperationItem = context.Request["CooperationItem"];
            ContactPerson = context.Request["ContactPerson"];
            Mailbox = context.Request["Mailbox"];
            Telephone = context.Request["Telephone"];
            QQ = context.Request["QQ"];
            ICON = context.Request["ICON"];
            if (!string.IsNullOrEmpty(context.Request.QueryString["deleteid"]))
            {
                ID = context.Request.QueryString["deleteid"];
                this.delete();
                this.Result = "yes";
                //删除
            }
            else if (!string.IsNullOrEmpty(ID) && string.IsNullOrEmpty(CooperationItem) && string.IsNullOrEmpty(ContactPerson) && string.IsNullOrEmpty(Mailbox) && string.IsNullOrEmpty(Telephone) && string.IsNullOrEmpty(QQ) && string.IsNullOrEmpty(ICON))
            {
                //查询
                this.get();
                this.Result = "yes";
            }
            else if (string.IsNullOrEmpty(ID) && !string.IsNullOrEmpty(CooperationItem) && !string.IsNullOrEmpty(ContactPerson) && !string.IsNullOrEmpty(Mailbox) && !string.IsNullOrEmpty(Telephone) && !string.IsNullOrEmpty(QQ) && !string.IsNullOrEmpty(ICON))
            {
                //新增
                this.insert();
                this.Result = "yes";
            }
            else if (!string.IsNullOrEmpty(ID) && !string.IsNullOrEmpty(CooperationItem) && !string.IsNullOrEmpty(ContactPerson) && !string.IsNullOrEmpty(Mailbox) && !string.IsNullOrEmpty(Telephone) && !string.IsNullOrEmpty(QQ) && !string.IsNullOrEmpty(ICON))
            {
                //修改
                this.update();
                this.Result = "yes";
            }
            #endregion
            json = "{\"ID\":\"" + ID + "\",\"CooperationItem\":\"" + CooperationItem + "\",\"ContactPerson\":\"" + ContactPerson + "\",\"Mailbox\":\"" + Mailbox + "\",\"Telephone\":\"" + Telephone + "\",\"QQ\":\"" + QQ + "\",\"ICON\":\"" + ICON + "\",\"Result\":\"" + Result + "\"}";
            context.Response.ContentType = "text/plain";
            context.Response.Write(json);
        }

        #region 功能操作逻辑
        private void delete()
        {
            table = ow_cooperationControl.GetTable(1, ID);
            if (table != null && table.Rows.Count > 0)
            {
                table.Columns["ID"].Prefix = "where";
                ow_cooperationControl.Update("ID", table, 2);
                Result = "yes";
            }
            else
            {
                Result = "no";
            }
        }
        private void get()
        {
            DataTable table = null;
            table = ow_cooperationControl.GetTable(1, ID);
            if (table != null && table.Rows.Count > 0)
            {
                //ID = table.Rows[0]["JobTitle"].ToString();
                CooperationItem = table.Rows[0]["CooperationItem"].ToString();
                ContactPerson = table.Rows[0]["ContactPerson"].ToString();
                Mailbox = table.Rows[0]["Mailbox"].ToString();
                Telephone = table.Rows[0]["Telephone"].ToString();
                QQ = table.Rows[0]["QQ"].ToString();
                ICON = table.Rows[0]["ICON"].ToString();
                Result = "yes";
            }
        }
        private void insert()
        {
            table = ow_cooperationControl.GetTable(0, ID);

            if (table != null)
            {
                dr = table.NewRow();
                table.Rows.Add(dr);
                dr["CooperationItem"] = CooperationItem;
                dr["ContactPerson"] = ContactPerson;
                dr["Telephone"] = Telephone;
                dr["Mailbox"] = Mailbox;//Mailbox
                dr["QQ"] = QQ;
                dr["ICON"] = ICON;
                dr["CreateDate"] = DateTime.Now.ToString("f");
                dr["UpdateDate"] = DateTime.Now.ToString("f");
                table.Columns["ID"].Prefix = "where";
                ow_cooperationControl.Update("ID", table,0);
            }
        }
        private void update()
        {
            table = ow_cooperationControl.GetTable(1, ID);

            if (table != null&&table.Rows.Count>0)
            {
                dr = table.Rows[0];
                dr["CooperationItem"] = CooperationItem;
                dr["ContactPerson"] = ContactPerson;
                dr["Telephone"] = Telephone;
                dr["Mailbox"] = Mailbox;//Mailbox
                dr["QQ"] = QQ;
                dr["ICON"] = ICON;
                //dr["CreateDate"] = DateTime.Now.ToString("f");
                dr["UpdateDate"] = DateTime.Now.ToString("f");
                table.Columns["ID"].Prefix = "where";
                ow_cooperationControl.Update("ID", table, 1);
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
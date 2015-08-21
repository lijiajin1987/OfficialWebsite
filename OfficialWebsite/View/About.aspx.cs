using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBaseControl;
using System.Data;
namespace OfficialWebsite.View
{
    
    public partial class About : System.Web.UI.Page
    {
        protected  string AboutArticle = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //this.GetAboutArticle();
            }
        }
        /// <summary>
        /// 获取关于我们文章
        /// </summary>
        private void GetAboutArticle()
        {
            DataTable table = null;
            DataBaseControl.ow_articleControl ow_articleControl = new DataBaseControl.ow_articleControl();
            try
            {
                table = ow_articleControl.GetTable(1);
                AboutArticle = table.Rows[0]["Content"].ToString();
            }
            catch (Exception ex)
            {
            }
        }
    }
}
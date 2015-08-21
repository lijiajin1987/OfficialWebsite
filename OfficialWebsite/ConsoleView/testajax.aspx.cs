using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
namespace OfficialWebsite.ConsoleView
{
    public partial class testajax : System.Web.UI.Page
    {
        //DataBaseControl.Class1 c = new DataBaseControl.Class1();
        [WebMethod]
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        [WebMethod]
        public static string GetValueAjax(string wysiwyg)
        {
            
            return wysiwyg;
        }
    }
}
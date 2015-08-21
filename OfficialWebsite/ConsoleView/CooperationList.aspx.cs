using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using DataBaseControl;
using System.Data;
namespace OfficialWebsite.ConsoleView
{
    public partial class CooperationList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //SaveUploadedFile(Request.Files);
                this.BindData();
            }
        }
        private void BindData()
        {
            ow_cooperationControl ow_cooperationControl = new ow_cooperationControl();
            DataTable table = null;
            table = ow_cooperationControl.GetTable(1, "ID");
            if (table != null && table.Rows.Count > 0)
            {
                this.repdata.DataSource = table.DefaultView;
                this.repdata.DataBind();
            }
        }
        public void SaveUploadedFile(HttpFileCollection httpFileCollection)
        {
            bool isSavedSuccessfully = true;
            string fName = "";
            foreach (string fileName in httpFileCollection)
            {
                HttpPostedFile file = httpFileCollection.Get(fileName);
                //Save file content goes here
                fName = file.FileName;
                if (file != null && file.ContentLength > 0)
                {

                    var originalDirectory = new DirectoryInfo(string.Format("{0}Images\\WallImages", Server.MapPath(@"\")));

                    string pathString = System.IO.Path.Combine(originalDirectory.ToString(), "imagepath");

                    var fileName1 = Path.GetFileName(file.FileName);


                    bool isExists = System.IO.Directory.Exists(pathString);

                    if (!isExists)
                        System.IO.Directory.CreateDirectory(pathString);

                    var path = string.Format("{0}\\{1}", pathString, file.FileName);
                    file.SaveAs(path);

                }

            }

            //if (isSavedSuccessfully)
            //{
            //    return Json(new { Message = fName });
            //}
            //else
            //{
            //    return Json(new { Message = "Error in saving file" });
            //}
        }
    }
}
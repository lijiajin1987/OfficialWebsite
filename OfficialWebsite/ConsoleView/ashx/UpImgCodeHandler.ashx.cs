using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web;
using System.IO;
namespace OfficialWebsite.ConsoleView.ashx
{
    /// <summary>
    /// UpImgCodeHandler 的摘要说明
    /// </summary>
    public class UpImgCodeHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            HttpFileCollection httpFileCollection = context.Request.Files;
            string fName = "";
            string jsondata = "../Images/Code/";
            string filename = context.Request["filename"] + ".jpg";
            try
            {
                foreach (string fileName in httpFileCollection)
                {

                    HttpPostedFile file = httpFileCollection.Get(fileName);
                    //Save file content goes here
                    fName = file.FileName;
                    if (file != null && file.ContentLength > 0)
                    {

                        var originalDirectory = new DirectoryInfo(string.Format("{0}Images", context.Server.MapPath("~/")));

                        string pathString = System.IO.Path.Combine(originalDirectory.ToString(), "Code");

                        var fileName1 = Path.GetFileName(file.FileName);


                        bool isExists = System.IO.Directory.Exists(pathString);

                        if (!isExists)
                            System.IO.Directory.CreateDirectory(pathString);
                        FileInfo fileinfo = new FileInfo(file.FileName);
                        //string filename = System.DateTime.Now.ToString("yyyyMMddHHmmssffff") + ".jpg";
                        var path = string.Format("{0}\\{1}", pathString, filename);
                        file.SaveAs(path);
                        jsondata += filename;
                    }
                }
            }
            catch (Exception ex)
            {
                jsondata = ex.Message;
                //throw;
            }
            
            context.Response.ContentType = "text/plain";
            //context.Response.Write(jsondata);
            context.Response.Write("{\"imgpath\":\"" + jsondata + "\"}");
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
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace ImageGroupUploadWebApp
{
    /// <summary>
    /// UploadHandler 的摘要说明
    /// </summary>
    [System.Web.Services.WebService(Namespace = "http://tempuri.org/")]
    [System.Web.Services.WebServiceBinding(ConformsTo = System.Web.Services.WsiProfiles.BasicProfile1_1)]
    public class UploadHandler : IHttpHandler, System.Web.SessionState.IRequiresSessionState
    {
        string FileID = "";
        IGUEntities db = new IGUEntities();

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            context.Response.Charset = "utf-8";

            HttpPostedFile file = context.Request.Files["Filedata"];
            string uploadPath = context.Server.MapPath("~/UpLoadFiles/IGU/");
            string FileParentID = context.Request["ParentID"].Replace("'", "");

            if (file != null)
            {
                FileID = Guid.NewGuid().ToString();
                string FileType = file.FileName.Substring(file.FileName.LastIndexOf('.') + 1).ToLower();
                string FileName = file.FileName.Substring(0, file.FileName.LastIndexOf('.'));

                string filePath = DateTime.Now.ToString("yyyyMMdd") + "/";

                uploadPath += filePath;

                if (!Directory.Exists(uploadPath))
                {
                    Directory.CreateDirectory(uploadPath);
                }

                uploadPath += FileID + "." + FileType;
                filePath += FileID + "." + FileType;
                file.SaveAs(uploadPath);

                SDMS_IGU model = new SDMS_IGU();
                model.ID = Guid.NewGuid();
                model.IGUID = new Guid(FileParentID);
                model.ImagePath = filePath;
                model.CreatedDate = DateTime.Now;
                db.SDMS_IGU.Add(model);
                db.SaveChanges();

                FileID = "/UpLoadFiles/IGU/" + DateTime.Now.ToString("yyyyMMdd") + "/" + FileID + "." + FileType;
            }
            context.Response.Write(FileID);
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
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestMutipartFormData
{
    public partial class Multipartformdata : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Read file data
            FileStream fs = new FileStream("c:\\people.doc", FileMode.Open, FileAccess.Read);
            byte[] data = new byte[fs.Length];
            fs.Read(data,0, data.Length);
            fs.Close();

            // Generate post objects
            Dictionary<string, object> postParameters = new Dictionary<string, object>();
            postParameters.Add("filename", "People.doc");
            postParameters.Add("fileformat", "doc");
            postParameters.Add("file", new FormUpload.FileParameter(data, "People.doc", "application/msword"));

            // Create request and receive response
            string postURL = "http://localhost";
            string userAgent = "Someone";
            HttpWebResponse webResponse = FormUpload.MultipartFormDataPost(postURL, userAgent, postParameters);

            // Process response
            StreamReader responseReader = new StreamReader(webResponse.GetResponseStream());
            string fullResponse = responseReader.ReadToEnd();
            webResponse.Close();
            Response.Write(fullResponse);
        }


       
    }
}
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Net.Http;
using System.Net.Http.Headers;

namespace TestMutipartFormData
{
    public partial class FormUploadTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string url = "http://2.235.241.7:8080/bank-report-entries/2/upload";
            ////string CT = "image/jpeg";
            //string IdBank = "2";
            //string fullPath = @"C:\GIT_LUCA\re2017\Re2017Software\Checking3-19.csv";
            //FormUpload2.FileParameter f = new FormUpload2.FileParameter(File.ReadAllBytes(fullPath), "Checking3-19.csv", "multipart/form-data");
            //Dictionary<string, object> d = new Dictionary<string, object>();
            //d.Add(IdBank, f);
            ////d.Add(CT, f);
            ////d.Add(name, f);
            //string ua = "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.2 (KHTML, like Gecko) Chrome/15.0.874.121 Safari/535.2";
            //FormUpload2.MultipartFormDataPost(url, ua, d);

            //---------------
            //string url2 = "http://2.235.241.7:8080/bank-report-entries/2/upload";
            //string fullPath2 = @"C:\GIT_LUCA\re2017\Re2017Software\Checking3-19.csv";
            //Task<HttpResponseMessage> tskRM= UploadImage(url2, File.ReadAllBytes(fullPath2));
            //HttpResponseMessage RM= tskRM.Result;


            //GetRq("http://2.235.241.7:8080/banks");
            Task<string> tsk = GetRequest2("http://2.235.241.7:8080/banks");
            string banks = tsk.Result;
          //string banks=  GetRequest2("http://2.235.241.7:8080/banks").Result;
            //GetRequest("http://2.235.241.7:8080/banks");
        }
        async static void GetRequest(string Url)
        {

            using (HttpClient client = new HttpClient())
            {
                using (HttpResponseMessage response = await client.GetAsync(Url))
                {
                    using (HttpContent content = response.Content)
                    {
                        string mycont = await content.ReadAsStringAsync();
                        //Console.Write(mycont);
                        string a = mycont;
                    }
                }
            }
        }
        private async Task<string> GetRequest2(string Url)
        {

            using (HttpClient client = new HttpClient())
            {
                using (HttpResponseMessage response = await client.GetAsync(Url))
                {
                    using (HttpContent content = response.Content)
                    {
                        string mycont = await content.ReadAsStringAsync();
                        //Console.Write(mycont);
                      return mycont;
                    }
                }
            }
        }
        void GetRq(string Url)
        {
            GetRequest(Url);
        }
        async public Task<HttpResponseMessage> UploadImage(string url, byte[] ImageData)
        {
            HttpClient client = new HttpClient();
            var requestContent = new MultipartFormDataContent();
            //    here you can specify boundary if you need---^
            HttpContent stringContent = new StringContent("2");
            var imageContent = new ByteArrayContent(ImageData);
            imageContent.Headers.ContentType =
                MediaTypeHeaderValue.Parse("image/jpeg");

            requestContent.Add(stringContent, "bankId", "2");
            requestContent.Add(imageContent, "file", "image.jpg");

            return await client.PostAsync(url, requestContent);
        }
    }
}
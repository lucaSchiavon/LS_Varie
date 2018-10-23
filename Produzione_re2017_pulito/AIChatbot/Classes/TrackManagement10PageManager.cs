using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Ls.Prj.Entity;
using System.Data.SqlClient;
using AutoMapper;
using Ls.Prj.DTO;
using System.Threading.Tasks;
using System.Net.Http;
using System.Net.Http.Headers;
using Ls.Prj.Utility;
using Newtonsoft.Json;
using System.Globalization;
using System.Web.Script.Serialization;

namespace AIChatbot.Classes
{
     public  class TrackManagement10PageManager
    {

      


         HttpClient client = new HttpClient();

       public TrackManagement10PageManager()
        {
           
            client.BaseAddress = new Uri("http://www.recipepuppy.com/api/");
            
            client.DefaultRequestHeaders.Accept.Clear();
            //text/javascript
            //client.DefaultRequestHeaders.Accept.Add(
            //   new MediaTypeWithQualityHeaderValue("text/javascript"));
            client.DefaultRequestHeaders.Accept.Add(
                new MediaTypeWithQualityHeaderValue("application/json"));
        }


        //public ContainerDTO GetFaq()
        //{

        //    ContainerDTO ObjContainer = null;

        //    ObjContainer = GetAsyncFaq("Faq").Result;


        //    return ObjContainer;

        //}
        public RecipeDTO GetRecipe()
        {

            RecipeDTO ObjContainer = null;

            //ObjContainer = GetAsyncFaq("Faq").Result;
            ObjContainer = GetAsyncRecipe("?i=onions,garlic&q=omelet&p=3").Result;

            return ObjContainer;

        }


        //public async Task<ContainerDTO> GetAsyncFaq(string path)
        //{
        //    ContainerDTO ObjEvento = null;
        //    HttpResponseMessage response = await client.GetAsync(path, HttpCompletionOption.ResponseHeadersRead).ConfigureAwait(false);
        //    if (response.IsSuccessStatusCode)
        //    {
        //        ObjEvento = await response.Content.ReadAsAsync<ContainerDTO>();
               

        //    }
        //    return ObjEvento;
        //}

        public async Task<RecipeDTO> GetAsyncRecipe(string path)
        {
            //RecipeDTO ObjEvento = null;
            // HttpResponseMessage response = await client.GetAsync(path, HttpCompletionOption.ResponseHeadersRead).ConfigureAwait(false);
            string response = await client.GetStringAsync(path).ConfigureAwait(false);
            JavaScriptSerializer js = new JavaScriptSerializer();
            RecipeDTO blogObject = js.Deserialize<RecipeDTO>(response);
            //if (response.IsSuccessStatusCode)
            //{
            //    ObjEvento = await response.Content.ReadAsAsync<RecipeDTO>();


            //}
            return blogObject;
        }

    }

    
    
}
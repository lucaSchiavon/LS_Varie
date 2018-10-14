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

namespace Re2017.Classes
{
     public  class TrackManagement4PageManager
    {

      


         HttpClient client = new HttpClient();

       public TrackManagement4PageManager()
        {
            //client.BaseAddress = new Uri("http://webappvetrocar-preprod.azurewebsites.net/api/v1/");
            client.BaseAddress = new Uri("http://re2017server.sytes.net/");
            
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Accept.Add(
                new MediaTypeWithQualityHeaderValue("application/json"));
        }


        //public ContainerDTO GetFaq()
        //{

        //    ContainerDTO ObjContainer = null;

        //    ObjContainer = GetAsyncFaq("Faq").Result;


        //    return ObjContainer;

        //}
        public List<EventTypeDTO> GetFaq()
        {

            List<EventTypeDTO> ObjContainer = null;

            //ObjContainer = GetAsyncFaq("Faq").Result;
            ObjContainer = GetAsyncFaq("event-types").Result;

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

        public async Task<List<EventTypeDTO>> GetAsyncFaq(string path)
        {
            List<EventTypeDTO> ObjEvento = null;
            HttpResponseMessage response = await client.GetAsync(path, HttpCompletionOption.ResponseHeadersRead).ConfigureAwait(false);
            if (response.IsSuccessStatusCode)
            {
                ObjEvento = await response.Content.ReadAsAsync<List<EventTypeDTO>>();


            }
            return ObjEvento;
        }

    }

    
    
}
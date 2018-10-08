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
     public  class TrackManagement3PageManager
    {

      


         HttpClient client = new HttpClient();

       public TrackManagement3PageManager()
        {
            //client.BaseAddress = new Uri("https://apiapp.swoords.com/api/Utenti/");
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Accept.Add(
                new MediaTypeWithQualityHeaderValue("application/json"));
        }


        public Utente GetUser(int IdUser)
        {

            Utente ObjUtente = null;

            ObjUtente = GetAsyncUser("https://apiapp.swoords.com/api/Utenti/GetUser?IdUser=" + IdUser).Result;

            return ObjUtente;

        }

        public async Task<Utente> GetAsyncUser(string path)
        {
            Utente ObjEvento = null;
            HttpResponseMessage response = await client.GetAsync(path, HttpCompletionOption.ResponseHeadersRead).ConfigureAwait(false);
            if (response.IsSuccessStatusCode)
            {
                ObjEvento = await response.Content.ReadAsAsync<Utente>();
                ObjEvento.Nickname = response.StatusCode.ToString();


            }
            return ObjEvento;
        }
        public ContainerDTO GetLogin(string Email, string Password)
        {

            ContainerDTO ObjUtente = null;
                //login tramite email e password
                //usa un'altra collazione per la comparazione case sensitive
                ObjUtente = GetAsyncLogin("https://apiapp.swoords.com/api/Utenti/GetLogin?Email=" + Email + "&Password=" + Password).Result;

         



            return ObjUtente;

        }
        public async Task<ContainerDTO> GetAsyncLogin(string path)
        {
            ContainerDTO ObjEvento = null;
            HttpResponseMessage response = await client.GetAsync(path, HttpCompletionOption.ResponseHeadersRead).ConfigureAwait(false);
            if (response.IsSuccessStatusCode)
            {
                ObjEvento = await response.Content.ReadAsAsync<ContainerDTO>();
            


            }
            return ObjEvento;
        }
    }

    
    
}
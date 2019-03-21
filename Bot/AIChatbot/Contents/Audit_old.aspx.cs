using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using AIChatbot.Classes;
using Ls.Prj.Entity;
using System.Text;
using Ls.Prj.DTO;
using Ls.Prj.EFRepository;
using System.Data.Entity;
using Ls.Prj.Utility;

namespace AQuest.ChatBotGsk.PigeonCms.pgn_content.Contents
{
    public partial class Audit_Old : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //registra in fondo alla pagina lo script js per le funzionalità jquery della tabella
                AppendJqeryScriptForTable();
                ////***********
                //AuditPageManager ObjPageManager = new AuditPageManager();
                //UserEFRepository ObjUserEFRepository = new UserEFRepository("");
                //Int32 idUser =Convert.ToInt32(HttpContext.Current.Request.Cookies["IdUser"].Value);
                //List<User> Usr = ObjUserEFRepository.Context.Users.Where(s => s.Id == idUser).ToList();


                //for (int i = 0; i < 40000; i++)
                //{
                //    ObjPageManager.InsertAudit(Usr.FirstOrDefault(), "cookies provide a means in Web applications to store user-specific information, such as history or user preferences. A cookie is a small bit of text that accompanies requests and responses as they go between the Web server and client. The cookie contains information that the Web application can read whenever the user visits the site " + i);
                //}

               
                ////***********
                //carica tabella
                LoadList();
                
            }
            catch (Exception ex)
            {
                PrintError(ex);
            }

        }

        protected void BtnClose_Click(object sender, EventArgs e)
        {
            DivError.Attributes.Add("Class", "ParentDivDeleting Disattivato");
            //DivDelete.Attributes.Add("Class", "ParentDivDeleting Disattivato");
        }


        #region routine private alla pagina
        public void PrintError(Exception ex)
        {
            LitError.Text = "An unhandled error occurred:<br>" + ex.Message;
            DivError.Attributes.Add("Class", "ParentDivDeleting Attivo");
        }
     
        private void AppendJqeryScriptForTable()
        {
            //registra in fondo alla pagina lo script js per le funzionalità jquery della tabella
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append(@"<script language='javascript'>");
            sb.Append(@"$(document).ready(function() { $('#dataTables-example').DataTable({responsive: true});});");
            sb.Append(@"</script>");

            if (!ClientScript.IsClientScriptBlockRegistered("JSScriptBlock"))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "JSScriptBlock",
                sb.ToString());
            }

        }
        private void LoadList()
        {
            AuditPageManager ObjPageManager = new AuditPageManager();
           
            List<AuditDTO> LstDto  = ObjPageManager.GetAudits(); 
            StringBuilder Sb = new StringBuilder();

            foreach (AuditDTO CurrDto in LstDto)
            {
               
                Sb.Append("<tr class='odd gradeA'>");

                Sb.Append("<td>" + CurrDto.AuditUser + "</td>");
                Sb.Append("<td>" + CurrDto.Role + "</td>");
                Sb.Append("<td>" + CurrDto.ModTime.ToString("dd/MM/yyyy HH:mm:ss") + "</td>");
                Sb.Append("<td>" + CurrDto.Description + "</td>");

                //Sb.Append("<td class='center'>");
                //Sb.Append("<a class='btn btn-primary' href='UserDetail.aspx?Id=" + CurrUsrDto.IdUser + "'><i class='fa fa-edit'></i> Update</a> ");
                //Sb.Append("<a class='btn btn-danger' href='javascript:ShowDelForm(" + CurrUsrDto.IdUser + ");'><i class='fa fa-times'></i> Delete</a>");
                //Sb.Append("</td>");

                Sb.Append("</tr>");


            }

            LitContentTable.Text = Sb.ToString() ;         
        }

        #endregion

       
    }


}
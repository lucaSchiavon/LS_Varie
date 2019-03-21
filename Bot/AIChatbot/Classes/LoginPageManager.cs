using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Ls.Prj.Entity;
using Ls.Prj.EFRepository;
using System.Data.SqlClient;
using Ls.Prj.Utility;

namespace AIChatbot.Classes
{
    public class LoginPageManager
    {
        public bool ValidateUser(string UserName,string Password)
        {
           // string PwdDecripted = Ls.Prj.Utility.SG.Algoritm.Cipher.Decrypt(Password, Utility.GetPrivSimKey("CriptographyKey"));
            string PwdEncripted = Ls.Prj.Utility.SG.Algoritm.Cipher.Encrypt(Password, Utility.GetPrivSimKey("CriptographyKey"));
            using (UserEFRepository UsrRep = new UserEFRepository(UserName))
            {
                
                //User Usr = UsrRep.Context.Users
                //             .Where(s => s.UserId == UserName && s.Pwd == Password)
                //             .FirstOrDefault<User>();
                User Usr = UsrRep.Context.Users
                         .Where(s => s.UserId == UserName && s.Pwd == PwdEncripted)
                         .FirstOrDefault<User>();

                if (Usr != null)
                {
                    HttpContext.Current.Response.Cookies["IdUser"].Value = Usr.IdUser.ToString();
                }
                

                if (Usr != null)
                {
                    return true;
                }
                else
                {
                    return false;
                }
             
            }



           
        }
        public void Test(string UserName)
        {
            

            TypeEFRepository oBJTypeEFRepository = new TypeEFRepository(UserName);
            List<Ls.Prj.Entity.Type> Lst1 = oBJTypeEFRepository.GetAll().ToList();



            RoleEFRepository oBJRoleEFRepository = new RoleEFRepository(UserName);
            List<Ls.Prj.Entity.Role> Lst3 = oBJRoleEFRepository.GetAll().ToList();

            ImageEFRepository oBJImageEFRepository = new ImageEFRepository(UserName);
            List<Ls.Prj.Entity.Image> Lst4 = oBJImageEFRepository.GetAll().ToList();

            TagEFRepository oBTagEFRepository = new TagEFRepository(UserName);
            List<Ls.Prj.Entity.Tag> Lst5 = oBTagEFRepository.GetAll().ToList();

            AuditEFRepository oBJAuditEFRepository = new AuditEFRepository(UserName);
            List<Ls.Prj.Entity.Audit> Lst8 = oBJAuditEFRepository.GetAll().ToList();

            UserEFRepository oBJUserEFRepository = new UserEFRepository(UserName);
            List<Ls.Prj.Entity.User> Lst2 = oBJUserEFRepository.GetAll().ToList();



            DocumentEFRepository oBJDocumentEFRepository = new DocumentEFRepository(UserName);
            List<Ls.Prj.Entity.Document> Lst10 = oBJDocumentEFRepository.GetAll().ToList();

            ChapterEFRepository oBJChapterEFRepository = new ChapterEFRepository(UserName);
            List<Ls.Prj.Entity.Chapter> Lst9 = oBJChapterEFRepository.GetAll().ToList();
        }
    }
}
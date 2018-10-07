using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace TestMutipartFormData
{
    public partial class SimpleMultipart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var cors = new EnableCorsAttribute("http://srv02:2300", "*", "*");
            config.EnableCors(cors);
        }
    }
}
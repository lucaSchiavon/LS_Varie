﻿using AIChatbot.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AQuest.ChatBotGsk.PigeonCms.pgn_content.ascx
{
    public partial class Header : AICBBaseCtl //System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (LoginUsr !=null)
            {
                LblUsername.Text ="Hy " + LoginUsr.Name + "!";
            }
        }
    }
}
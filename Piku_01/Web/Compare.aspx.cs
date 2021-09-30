using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Piku_01.Models;

namespace Piku_01.Web
{
    public partial class Compare : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string text = Request.QueryString["id"];
            Cont.C(text);
            

            if (member.Data.Count < 2)
            {
                member.temp.Insert(0, new member() { id = 0, name = member.Data[0].name });
                Response.Redirect("Finally.aspx");
            }
            Response.Redirect("Home.aspx");
        }

        
    }
}
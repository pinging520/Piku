using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Piku_01.Models;

namespace Piku_01.Web
{
    public partial class Finally : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ListView1.DataSource = member.temp;
            ListView1.DataBind();
        }
    }
}
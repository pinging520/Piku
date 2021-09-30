using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using Piku_01.Models;

namespace Piku_01.Web
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ListView2.DataSource = member.newitem;
            ListView2.DataBind();
            
            ListView1.DataSource = member.ShowData;
            ListView1.DataBind();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" || string.IsNullOrWhiteSpace(TextBox1.Text)==false)
            {
                member.ShowData.Add(new member() { id = member.ShowData.Count, name = TextBox1.Text });
                ListView1.DataSource = member.ShowData;
                ListView1.DataBind();
                TextBox1.Text = "";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            start();
            ListView2.DataSource = member.newitem;
            ListView2.DataBind();
        }

        public void start() 
        {
            member.Data.AddRange(member.ShowData);

            if (member.newitem.Count != 0)
            {
                member.newitem.Clear();
            }
            Cont.num = 1;
            for (int i = 0; i < 2; i++)
            {
                member.newitem.Add(new member() {id = member.Data[i].id,name = member.Data[i].name });
            }
        }
    }
}
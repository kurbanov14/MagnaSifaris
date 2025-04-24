using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MagnaSifaris
{
    public partial class sifaristest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
       
            Button1.Click += new EventHandler(Button1_Click);
            Button2.Click += new EventHandler(Button2_Click);
            Button3.Click += new EventHandler(Button3_Click);
            Button4.Click += new EventHandler(Button4_Click);
            Button5.Click += new EventHandler(Button5_Click);
            Button6.Click += new EventHandler(Button6_Click);


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("pencere1.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("pencere2.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("pencere3.aspx");
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("pencere4.aspx");
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("pencere5.aspx");
        }
        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Qapi.aspx");
        }

    }
}
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


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("pencere2.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("pencere3.aspx");
        }

    }
}
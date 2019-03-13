using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PreOrder : System.Web.UI.Page
{
    CCustomer theCustomer = new CCustomer();
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["pinNumber"] = theCustomer.RandomNumber(1, 1000);
        Session["setFlag"] = 1;
        Response.Redirect("~/newOrder.aspx");
    }
}
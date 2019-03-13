using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Order_specialtyitems : System.Web.UI.Page
{
    //CCustomer theCustomer;
    COrder theOrder = new COrder();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        theOrder.add_foodItem(LinkButton3.Text);
        Label2.Text = theOrder.get_foodItem();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        theOrder.add_foodItem(LinkButton2.Text);
        Label2.Text = theOrder.get_foodItem();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        theOrder.add_foodItem(LinkButton1.Text);
        Label2.Text = theOrder.get_foodItem();
    }
}
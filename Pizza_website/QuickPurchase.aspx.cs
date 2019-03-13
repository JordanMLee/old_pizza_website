using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QuickPurchase : System.Web.UI.Page
{
    COrder theorder = new COrder();
    


    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Visible = false;
        Label3.Visible = false;
        cmBtn.Visible = false;
        
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        //Session["count"] = TextBox1.Text;
        //Server.Transfer("Confirmation.aspx");
        theorder.add_pizza_count(TextBox1.Text);
        string sCounter = theorder.get_pizza_count();
       
        if (sCounter != "")
        {
 int Counter = Convert.ToInt16(sCounter);
            if (Counter == 1)
            {
                Label3.Visible = true;
                Label3.Text = sCounter + " pepperoni pizza";
            }
            else if (Counter == 0)
            {
                Label3.Visible = true;
                Label3.Text = "Error..you have not selected a valid number of pizzas";
                cmBtn.Visible = false;
            }

            else
            {
                Label3.Visible = true;
                Label3.Text = sCounter + " pepperoni pizzas";

            }

            if (Counter > 6)
            {
                Label2.Visible = true;
                Label2.Text = "For Pizza orders larger than 6 please call us";
                cmBtn.Visible = false;
            }
            else if (Counter <= 6)
            {
                Label2.Visible = false;
                cmBtn.Visible = true;
            }
        }
        else
        {
            Label3.Visible = true;
            cmBtn.Visible = false;
            Label3.Text = "Please select pizzas";
        }


    }
    protected void Button10_Click(object sender, EventArgs e)
    {

    }
    protected void Button10_Click1(object sender, EventArgs e)
    {
        Label2.Visible = false;
        Label3.Visible = false;
        cmBtn.Visible = false;
        TextBox1.Text = "";
    }
}
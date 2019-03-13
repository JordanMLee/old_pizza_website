using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Confirmation : System.Web.UI.Page
{
    COrder theorder = new COrder();

    protected void Page_Load(object sender, EventArgs e)
    {
        string dev = Session["devdate"].ToString();
        DateTime dev2 = Convert.ToDateTime(dev);
        
        dev2 = DateTime.Now.AddMinutes(45);
        string dev3 = dev2.ToString();
   //     string stminutes;
     
   //   string rawhours = Now.Hour.ToString();

   //string rawminutes = Now.Minute.ToString();
   //int minutes16 = Convert.ToInt16(rawminutes);
  

   //if (minutes16 < 10)
   //{
   //    stminutes = minutes16.ToString();
   //    stminutes = "0" + stminutes;

   //}
   //else
   //{
   //    stminutes = minutes16.ToString();
   //}
        
  //Label2.Text = Session["devdate"].ToString();
   //Label2.Text = rawhours + ":" + stminutes;
        Label2.Text = dev3;

    }
}
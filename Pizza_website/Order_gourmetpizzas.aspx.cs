using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb; //DB Step 1

public partial class Order_gourmetpizzas : System.Web.UI.Page
{
    public string pinNumber = "0";
      
    OleDbConnection conn; //connects program to DB
    public string connString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source = |DataDirectory|\\Customerdb.accdb; Persist Security Info=False"; //DB info so program can connect to it
   
    COrder theOrder = new COrder();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToInt16(Session["setFlag"]) == 1)
            pinNumber = Session["pinNumber"].ToString();
        else
            pinNumber = "Not Set";
            
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
       
        theOrder.add_foodItem(LinkButton1.Text);
        string pizza = theOrder.get_foodItem();
        
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it
        DateTime now = DateTime.Now;
        //DB Step 4: Execute the query 
        OleDbCommand cmd = new OleDbCommand("INSERT INTO Items(ItemID, ItemName, ItemPrice, CustomerID) VALUES(' " + 456 + "','" + pizza + "','" + 45 + "','" + Session["pinNumber"] + "')", conn);
        cmd.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn.Close();
        

        
        
        
        
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        theOrder.add_foodItem(LinkButton2.Text);
        string pizza = theOrder.get_foodItem();

        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it
        DateTime now = DateTime.Now;
        //DB Step 4: Execute the query to 
        //OleDbCommand cmd = new OleDbCommand("INSERT INTO Items(ItemID, ItemName, ItemPrice, CustomerID, Size) VALUES(' " + 432 + "','" + pizza + "','" + 47 + "','" + Session["pinNumber"] + "','" + RadioButtonList1.SelectedValue + "')", conn);
        OleDbCommand cmd = new OleDbCommand("INSERT INTO Items(ItemID, ItemName, ItemPrice, CustomerID) VALUES(' " + 432 + "','" + pizza + "','" + 47 + "','" + Session["pinNumber"] + "')", conn);
        cmd.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn.Close();
    }
}
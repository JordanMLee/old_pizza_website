using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Order_calzones : System.Web.UI.Page
{
    public string pinNumber = "0";

    OleDbConnection conn;
    public string connString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source = |DataDirectory|\\Customerdb.accdb; Persist Security Info=False"; //DB info so program can connect to it
    
    
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToInt16(Session["setFlag"]) == 1)
            pinNumber = Session["pinNumber"].ToString();
        else
            pinNumber = "Not Set";
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it
        
        //DB Step 4: Execute the query 
        OleDbCommand cmd = new OleDbCommand("INSERT INTO Items(ItemID, ItemName, ItemPrice, CustomerID) VALUES(' " + 825 + "','" +friedCheeseC.Text+ "','" + 7 + "','" + Session["pinNumber"] + "')", conn);
        cmd.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn.Close();
    }
    protected void friedBChickenC_Click(object sender, EventArgs e)
    {
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it

        //DB Step 4: Execute the query 
        OleDbCommand cmd = new OleDbCommand("INSERT INTO Items(ItemID, ItemName, ItemPrice, CustomerID) VALUES(' " + 826 + "','" + friedBChickenC.Text + "','" + 8 + "','" + Session["pinNumber"] + "')", conn);
        cmd.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn.Close();
    }
    protected void meatballCalzone_Click(object sender, EventArgs e)
    {
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it

        //DB Step 4: Execute the query 
        OleDbCommand cmd = new OleDbCommand("INSERT INTO Items(ItemID, ItemName, ItemPrice, CustomerID) VALUES(' " + 827 + "','" + meatballCalzone.Text + "','" + 8 + "','" + Session["pinNumber"] + "')", conn);
        cmd.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn.Close();
    }
    protected void SausageCalzone_Click(object sender, EventArgs e)
    {
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it

        //DB Step 4: Execute the query 
        OleDbCommand cmd = new OleDbCommand("INSERT INTO Items(ItemID, ItemName, ItemPrice, CustomerID) VALUES(' " + 828 + "','" + SausageCalzone.Text + "','" + 7 + "','" + Session["pinNumber"] + "')", conn);
        cmd.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn.Close();
    }
    protected void PepperoniC_Click(object sender, EventArgs e)
    {
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it

        //DB Step 4: Execute the query 
        OleDbCommand cmd = new OleDbCommand("INSERT INTO Items(ItemID, ItemName, ItemPrice, CustomerID) VALUES(' " + 830 + "','" + PepperoniC.Text + "','" + 8 + "','" + Session["pinNumber"] + "')", conn);
        cmd.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn.Close();
    }
}
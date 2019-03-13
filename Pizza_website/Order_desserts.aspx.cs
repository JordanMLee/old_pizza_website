using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Order_desserts : System.Web.UI.Page
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
    protected void Canoli_Click(object sender, EventArgs e)
    {
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it

        //DB Step 4: Execute the query 
        OleDbCommand cmd = new OleDbCommand("INSERT INTO Items(ItemID, ItemName, ItemPrice, CustomerID) VALUES(' " + 725 + "','" + Canoli.Text + "','" + 2 + "','" + Session["pinNumber"] + "')", conn);
        cmd.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn.Close();
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it

        //DB Step 4: Execute the query 
        OleDbCommand cmd = new OleDbCommand("INSERT INTO Items(ItemID, ItemName, ItemPrice, CustomerID) VALUES(' " + 715 + "','" + LinkButton3.Text + "','" + 4 + "','" + Session["pinNumber"] + "')", conn);
        cmd.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn.Close();
    }
}
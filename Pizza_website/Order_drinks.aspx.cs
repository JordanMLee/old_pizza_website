using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Order_drinks : System.Web.UI.Page
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
    protected void Pepsi_Click(object sender, EventArgs e)
    {
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it

        //DB Step 4: Execute the query 
        OleDbCommand cmd = new OleDbCommand("INSERT INTO Items(ItemID, ItemName, ItemPrice, CustomerID) VALUES(' " + 70 + "','" + Pepsi.Text + "','" + Convert.ToInt16(RadioButtonList1.SelectedValue) + "','" + Session["pinNumber"] + "')", conn);
        cmd.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn.Close();
    }
    protected void Coke_Click(object sender, EventArgs e)
    {
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it

        //DB Step 4: Execute the query 
        OleDbCommand cmd = new OleDbCommand("INSERT INTO Items(ItemID, ItemName, ItemPrice, CustomerID) VALUES(' " + 71 + "','" + Coke.Text + "','" + Convert.ToInt16(RadioButtonList1.SelectedValue) + "','" + Session["pinNumber"] + "')", conn);
        cmd.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn.Close();
    }
    protected void Sprite_Click(object sender, EventArgs e)
    {
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it

        //DB Step 4: Execute the query 
        OleDbCommand cmd = new OleDbCommand("INSERT INTO Items(ItemID, ItemName, ItemPrice, CustomerID) VALUES(' " + 72 + "','" + Sprite.Text + "','" + Convert.ToInt16(RadioButtonList1.SelectedValue) + "','" + Session["pinNumber"] + "')", conn);
        cmd.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn.Close();
    }
    protected void fanta_Click(object sender, EventArgs e)
    {
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it

        //DB Step 4: Execute the query 
        OleDbCommand cmd = new OleDbCommand("INSERT INTO Items(ItemID, ItemName, ItemPrice, CustomerID) VALUES(' " + 73 + "','" + fanta.Text + "','" + Convert.ToInt16(RadioButtonList1.SelectedValue) + "','" + Session["pinNumber"] + "')", conn);
        cmd.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn.Close();
    }
    protected void SamuelAdams0_Click(object sender, EventArgs e)
    {
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it

        //DB Step 4: Execute the query 
        OleDbCommand cmd = new OleDbCommand("INSERT INTO Items(ItemID, ItemName, ItemPrice, CustomerID) VALUES(' " + 74 + "','" + SamuelAdams0.Text + "','" + 4 + "','" + Session["pinNumber"] + "')", conn);
        cmd.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn.Close();
    }
    protected void Guinness0_Click(object sender, EventArgs e)
    {
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it

        //DB Step 4: Execute the query 
        OleDbCommand cmd = new OleDbCommand("INSERT INTO Items(ItemID, ItemName, ItemPrice, CustomerID) VALUES(' " + 75 + "','" + Guinness0.Text + "','" + 4 + "','" + Session["pinNumber"] + "')", conn);
        cmd.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn.Close();
    }
    protected void CoronaLight0_Click(object sender, EventArgs e)
    {
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it

        //DB Step 4: Execute the query 
        OleDbCommand cmd = new OleDbCommand("INSERT INTO Items(ItemID, ItemName, ItemPrice, CustomerID) VALUES(' " + 76 + "','" + CoronaLight0.Text + "','" + 4 + "','" + Session["pinNumber"] + "')", conn);
        cmd.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn.Close();
    }
    protected void Pinot0_Click(object sender, EventArgs e)
    {
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it

        //DB Step 4: Execute the query 
        OleDbCommand cmd = new OleDbCommand("INSERT INTO Items(ItemID, ItemName, ItemPrice, CustomerID) VALUES(' " + 77 + "','" + Pinot0.Text + "','" + Convert.ToInt16(RadioButtonList2.SelectedValue) + "','" + Session["pinNumber"] + "')", conn);
        cmd.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn.Close();
    }
    protected void grigio0_Click(object sender, EventArgs e)
    {
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it

        //DB Step 4: Execute the query 
        OleDbCommand cmd = new OleDbCommand("INSERT INTO Items(ItemID, ItemName, ItemPrice, CustomerID) VALUES(' " + 78 + "','" + grigio0.Text + "','" + Convert.ToInt16(RadioButtonList2.SelectedValue) + "','" + Session["pinNumber"] + "')", conn);
        cmd.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn.Close();
    }
    protected void Chardonnay0_Click(object sender, EventArgs e)
    {
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it

        //DB Step 4: Execute the query 
        OleDbCommand cmd = new OleDbCommand("INSERT INTO Items(ItemID, ItemName, ItemPrice, CustomerID) VALUES(' " + 79 + "','" + Chardonnay0.Text + "','" + Convert.ToInt16(RadioButtonList2.SelectedValue) + "','" + Session["pinNumber"] + "')", conn);
        cmd.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn.Close();
    }
    protected void AppleJuice_Click(object sender, EventArgs e)
    {
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it

        //DB Step 4: Execute the query .
        OleDbCommand cmd = new OleDbCommand("INSERT INTO Items(ItemID, ItemName, ItemPrice, CustomerID) VALUES(' " + 80 + "','" + AppleJuice.Text + "','" + 3 + "','" + Session["pinNumber"] + "')", conn);
        cmd.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn.Close();
    }
    protected void VitaminWater_Click(object sender, EventArgs e)
    {
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it

        //DB Step 4: Execute the query 
        OleDbCommand cmd = new OleDbCommand("INSERT INTO Items(ItemID, ItemName, ItemPrice, CustomerID) VALUES(' " + 81 + "','" + VitaminWater.Text + "','" + 3 + "','" + Session["pinNumber"] + "')", conn);
        cmd.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn.Close();
    }
    protected void Coffee_Click(object sender, EventArgs e)
    {
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it

        //DB Step 4: Execute the query 
        OleDbCommand cmd = new OleDbCommand("INSERT INTO Items(ItemID, ItemName, ItemPrice, CustomerID) VALUES(' " + 82 + "','" + Coffee.Text + "','" + 3 + "','" + Session["pinNumber"] + "')", conn);
        cmd.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn.Close();
    }
    protected void Milk_Click(object sender, EventArgs e)
    {
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it

        //DB Step 4: Execute the query 
        OleDbCommand cmd = new OleDbCommand("INSERT INTO Items(ItemID, ItemName, ItemPrice, CustomerID) VALUES(' " + 83 + "','" + Milk.Text + "','" + 3 + "','" + Session["pinNumber"] + "')", conn);
        cmd.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn.Close();
    }
    protected void Bud0_Click(object sender, EventArgs e)
    {

    }
}
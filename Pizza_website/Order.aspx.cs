using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb; //DB Step 1

public partial class Order : System.Web.UI.Page
{
    public string pinNumber = "0";
//    //DB Step 2: "Global" Variables
OleDbConnection conn; //connects program to DB
string connString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source = |DataDirectory|\\Customerdb.accdb; Persist Security Info=False";
//string query; //string to hold SQL query
//OleDbDataReader rdr; //temporary holding place for data from DB

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToInt16(Session["setFlag"]) == 1)
            pinNumber = Session["pinNumber"].ToString();
        else
            pinNumber = "Not Set";
    
        

    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        //    //DB Step 3: Connect to Database
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it
        DateTime now = DateTime.Now;
        //DB Step 4: Execute the query to add demerits into database
        OleDbCommand cmd = new OleDbCommand("INSERT INTO OrderTable(OrderDate, orderNum, CustomerID, subTotal) VALUES(' " + now + "','"+ 23+"','" + Session["pinNumber"] + "','" + 12 +"')", conn);
        cmd.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn.Close();

        //Move to another web page on success!
        
    }
}
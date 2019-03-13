using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography; // For MD5 Method
using System.Data.OleDb;

public partial class ViewCart : System.Web.UI.Page
{



    double total=0;
    OleDbConnection conn; //connects program to DB
    public string connString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source = |DataDirectory|\\Customerdb.accdb; Persist Security Info=False"; //DB info so program can connect to it  
    public bool admin = false;
    string query; //string to hold SQL query
    OleDbDataReader rdr; //temporary holding place for data from DB

    OleDbConnection conn2; //connects program to DB
    public string connString2 = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source = |DataDirectory|\\Customerdb.accdb; Persist Security Info=False"; //DB info so program can connect to it  

    protected void Page_Load(object sender, EventArgs e)
    {
       
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then open it
        query = "SELECT * FROM newOrderTable";

        OleDbCommand cmd = new OleDbCommand(query, conn); //actually apply query to DB
        using (conn)
        {
            //execute the qeury and store the results in our OleDbDataReader        
            rdr = cmd.ExecuteReader();
            //read all entries and populate our label's and buttons        
            while (rdr.Read())
            {
                     total += Convert.ToDouble(rdr["ItemPrice"]);
            }
        }
        conn.Close();
        
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        DateTime now = DateTime.Now;
        conn2 = new OleDbConnection(connString2);
        conn2.Open();

      
        //DB Step 4: Execute the query 
        OleDbCommand cmd2 = new OleDbCommand("INSERT INTO OrderTable(OrderDate,CustomerID, SubTotal, orderDelivery) VALUES(' " + now + "','" + Session["pinNumber"] + "','" + total + "','" + Calendar1.SelectedDate + "')", conn);
        cmd2.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn2.Close();
        

    }
    protected void AccessDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    //Show Add new record
    protected void AddNewRecord(object sender, EventArgs e)
    {
    }
  
    protected void Button10_Click(object sender, EventArgs e)
    {
        
            
    }





    protected void Button11_Click(object sender, EventArgs e)
    {
        
            conn = new OleDbConnection(connString); //code that actually executes link
            conn.Open(); //and then opens it
            
            //DB Step 4: Execute the query 
            OleDbCommand cmd = new OleDbCommand("DELETE * FROM Items", conn);
            cmd.ExecuteNonQuery();

            //DB Step 5: Close Connection to DB
            conn.Close();

        
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {

    }
}
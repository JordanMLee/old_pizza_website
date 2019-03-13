using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Homepage : System.Web.UI.Page
{
    OleDbConnection conn;
    public string connString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source = |DataDirectory|\\Customerdb.accdb; Persist Security Info=False"; //DB info so program can connect to it
    public CCustomer thecustomer = new CCustomer();
    string query; //string to hold SQL query
OleDbDataReader rdr; //temporary holding place for data from DB

   
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new OleDbConnection(connString); //code that actually executes link
            conn.Open(); //and then open it
            query = "SELECT * FROM CommentsTable";
     
       OleDbCommand cmd = new OleDbCommand(query, conn); //actually apply query to DB
            using (conn)
            {
                //execute the qeury and store the results in our OleDbDataReader        
                rdr = cmd.ExecuteReader();
                //read all entries and populate our label's and buttons        
                while (rdr.Read())
                {
                    if (rdr["testID"].ToString() == "A")
                        Label2.Text = rdr["Comments"].ToString();

                   // Label2.Text = rdr["Comments"].ToString();
                }
            }
            conn.Close(); //Always want to close connection to outside files
        
     




        

        
       
    }




    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it

        //DB Step 4: Execute the query 
        OleDbCommand cmd = new OleDbCommand("INSERT INTO CommentsTable(Comments) VALUES(' " + TextBox1.Text +"')", conn);
        cmd.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn.Close();
        TextBox1.Text = "";
    }
}
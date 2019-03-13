using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class _Default : System.Web.UI.Page
{
    //OleDbConnection conn;
    public string connString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source = |DataDirectory|\\Customerdb.accdb; Persist Security Info=False"; //DB info so program can connect to it
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button9_Click(object sender, EventArgs e)
    {
         OleDbConnection conn = new OleDbConnection(connString);
        
       
        OleDbCommand cmd = new OleDbCommand();
        cmd.Connection = conn;

        string sql;
        sql = "SELECT * FROM AdminTable WHERE passwd ='" + TextBox1.Text + "'";
        cmd.CommandText = sql;
        conn.Open();

        OleDbDataReader dr=   cmd.ExecuteReader();
        
        
        if (dr.Read())
        {
            Response.Redirect("ViewCart.aspx");
        }
        else
            Response.Redirect("CheckOut.aspx");
    }
}
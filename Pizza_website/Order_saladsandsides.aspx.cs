using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Order_saladsandsides : System.Web.UI.Page
{
    public string pinNumber = "0";
    OleDbConnection conn;
    public string connString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source = |DataDirectory|\\Customerdb.accdb; Persist Security Info=False";
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToInt16(Session["setFlag"]) == 1)
            pinNumber = Session["pinNumber"].ToString();
        else
            pinNumber = "Not Set";
    }
    protected void CaesarSalad_Click(object sender, EventArgs e)
    {
        conn = new OleDbConnection(connString);
        conn.Open();
        OleDbCommand cmd = new OleDbCommand("INSERT INTO Items(ItemID, ItemName, ItemPrice, CustomerID) VALUES(' " + 200 + "','" + CaesarSalad.Text + "','" + 6 + "','" + Session["pinNumber"] + "')", conn);
        conn.Close();
    }
}
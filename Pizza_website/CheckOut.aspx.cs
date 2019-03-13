using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class CheckOut : System.Web.UI.Page
{
    int total = 3;
    public string pinNumber = "0";
    OleDbConnection conn;
    OleDbConnection conn2;
    string connString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source = |DataDirectory|\\Customerdb.accdb; Persist Security Info=False";
    string connString2 = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source = |DataDirectory|\\Customerdb.accdb; Persist Security Info=False";
    

    protected void Page_Load(object sender, EventArgs e)
    {
         if (Convert.ToInt16(Session["setFlag"]) == 1)
            pinNumber = Session["pinNumber"].ToString();
        else
            pinNumber = "Not Set";
         
        DateTime now = DateTime.Now;
        string txt = now.ToString();
        TextBox1.Text = txt;

        
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        DateTime now = DateTime.Now;
        Session["devdate"] = TextBox1.Text;
        conn = new OleDbConnection(connString);
        conn2 = new OleDbConnection(connString2);
        conn.Open();
        //conn2.Open();
        OleDbCommand cmd = new OleDbCommand("INSERT INTO CustomerTable(FirstName, LastName, AddressOne, AddressTwo, City, State, ZipCode, CreditCardNumber, CreditCardType, CreditCardName, CreditCardExpiration, CreditCardCRC, CustomerID) VALUES(' " + FirstName.Text + "','"+ LastName.Text +"','" + Address1.Text + "','"+ Address2.Text +"','"+City.Text+"','"+State.Text+"','"+ZipCode.Text+"','"+CreditCardNumber.Text+"','"+RadioButtonList1.SelectedValue+"','"+NameOnCard.Text+"','"+ExpirationDate.Text+"','"+CRC.Text+"','" + Session["pinNumber"] +"')", conn);
        
        cmd.ExecuteNonQuery();
        //OleDbCommand cmd2 = new OleDbCommand("INSERT INTO OrderTable(OrderDate, orderNum, CustomerID, subTotal, orderDelivery) VALUES(' " + now + "','" + 4 + "','" + Session["pinNumber"] + "','" + total + "','" + TextBox1.Text + "')", conn2);
        //cmd2.ExecuteNonQuery();
        conn.Close();
       //conn2.Close();
        Response.Redirect("~/Confirmation.aspx");

    }
protected void  btnReset_Click(object sender, EventArgs e)
{
    Response.Redirect("~/CheckOut.aspx");
}
}
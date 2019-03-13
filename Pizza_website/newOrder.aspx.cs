using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class newOrder : System.Web.UI.Page
{
    double priceCheese = 0;
    public bool admin = false;
    public string pinNumber = "0";
    OleDbConnection conn;
    public string connString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source = |DataDirectory|\\Customerdb.accdb; Persist Security Info=False"; //DB info so program can connect to it
    string query; //string to hold SQL query
    OleDbDataReader rdr; //temporary holding place for data from DB

    protected void Page_Load(object sender, EventArgs e)
    {
        Label14.Visible = false;
        if (Convert.ToInt16(Session["setFlag"]) == 1)
            pinNumber = Session["pinNumber"].ToString();
        else
            pinNumber = "Not Set";
        //==============================================================================================
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then open it
        query = "SELECT * FROM MenuTable";

        OleDbCommand cmd = new OleDbCommand(query, conn); //actually apply query to DB
        using (conn)
        {
            //execute the qeury and store the results in our OleDbDataReader        
            rdr = cmd.ExecuteReader();
            //read all entries and populate our label's and buttons        
            while (rdr.Read())
            {
                //Bind prices from database to webform labels
                //Cheese Pizza
                if (rdr["ItemName"].ToString() == "Cheese Pizza" && rdr["ItemSize"].ToString()== "Small")
                    CPsmallPrice.Text = rdr["ItemPrice"].ToString();
                if (rdr["ItemName"].ToString() == "Cheese Pizza" && rdr["ItemSize"].ToString() == "Large")
                    CPlargePrice.Text = rdr["ItemPrice"].ToString();
                //pepperoni pizza
                if (rdr["ItemName"].ToString() == "Pepperoni Pizza" && rdr["ItemSize"].ToString() == "Small")
                    PPSmallPrice.Text = rdr["ItemPrice"].ToString();
                if (rdr["ItemName"].ToString() == "Pepperoni Pizza" && rdr["ItemSize"].ToString() == "Large")
                    PPLargePrice.Text = rdr["ItemPrice"].ToString();
                //meat lovers pizza
                if (rdr["ItemName"].ToString() == "Meat Lovers Pizza" && rdr["ItemSize"].ToString() == "Small")
                    MLSmallPrice.Text = rdr["ItemPrice"].ToString();
                if (rdr["ItemName"].ToString() == "Meat Lovers Pizza" && rdr["ItemSize"].ToString() == "Large")
                    MLLargePrice.Text = rdr["ItemPrice"].ToString();
                //veggie lovers pizza
                if (rdr["ItemName"].ToString() == "Veggie Lovers Pizza" && rdr["ItemSize"].ToString() == "Small")
                    VLSmallPrice.Text = rdr["ItemPrice"].ToString();
                if (rdr["ItemName"].ToString() == "Veggie Lovers Pizza" && rdr["ItemSize"].ToString() == "Large")
                    VLLargePrice.Text = rdr["ItemPrice"].ToString();
                //cheese calzones
                if (rdr["ItemName"].ToString() == "Cheese Calzone" && rdr["ItemSize"].ToString() == "Small")
                    CCSmallPrice.Text = rdr["ItemPrice"].ToString();
                if (rdr["ItemName"].ToString() == "Cheese Calzone" && rdr["ItemSize"].ToString() == "Large")
                    CCLargePrice.Text = rdr["ItemPrice"].ToString();
                //pepperoni calzones
                if (rdr["ItemName"].ToString() == "Pepperoni Calzone" && rdr["ItemSize"].ToString() == "Small")
                    PCSmallPrice.Text = rdr["ItemPrice"].ToString();
                if (rdr["ItemName"].ToString() == "Pepperoni Calzone" && rdr["ItemSize"].ToString() == "Large")
                    PCLargePrice.Text = rdr["ItemPrice"].ToString();
                //sausage calzones
                if (rdr["ItemName"].ToString() == "Sausage Calzone" && rdr["ItemSize"].ToString() == "Small")
                    SCSmallPrice.Text = rdr["ItemPrice"].ToString();
                if (rdr["ItemName"].ToString() == "Sausage Calzone" && rdr["ItemSize"].ToString() == "Large")
                    SCLargePrice.Text = rdr["ItemPrice"].ToString();
                //veggie calzones
                if (rdr["ItemName"].ToString() == "Veggie Calzone" && rdr["ItemSize"].ToString() == "Small")
                    VCSmallPrice.Text = rdr["ItemPrice"].ToString();
                if (rdr["ItemName"].ToString() == "Veggie Calzone" && rdr["ItemSize"].ToString() == "Large")
                    VCLargePrice.Text = rdr["ItemPrice"].ToString();
                //Coke
                if (rdr["ItemName"].ToString() == "Coke" && rdr["ItemSize"].ToString() == "Small")
                    CokeSmallPrice.Text = rdr["ItemPrice"].ToString();
                if (rdr["ItemName"].ToString() == "Coke" && rdr["ItemSize"].ToString() == "Large")
                    CokeLargePrice.Text = rdr["ItemPrice"].ToString();
                //Fanta
                if (rdr["ItemName"].ToString() == "Fanta" && rdr["ItemSize"].ToString() == "Small")
                    FantaSmallPrice.Text = rdr["ItemPrice"].ToString();
                if (rdr["ItemName"].ToString() == "Fanta" && rdr["ItemSize"].ToString() == "Large")
                    FantaLargePrice.Text = rdr["ItemPrice"].ToString();
                //CJ
                if (rdr["ItemName"].ToString() == "Cranberry Juice" && rdr["ItemSize"].ToString() == "Small")
                    CJSmallPrice.Text = rdr["ItemPrice"].ToString();
                if (rdr["ItemName"].ToString() == "Cranberry Juice" && rdr["ItemSize"].ToString() == "Large")
                    CJLargePrice.Text = rdr["ItemPrice"].ToString();
                //Sprite
                if (rdr["ItemName"].ToString() == "Sprite" && rdr["ItemSize"].ToString() == "Small")
                    SpriteSmallPrice.Text = rdr["ItemPrice"].ToString();
                if (rdr["ItemName"].ToString() == "Sprite" && rdr["ItemSize"].ToString() == "Large")
                    SpriteLargePrice.Text = rdr["ItemPrice"].ToString();
                
            }
        }
        conn.Close(); //Always want to close connection to outside files
  
        //=================================================================================
    }

    protected void CheesePizza_Click(object sender, EventArgs e)
    {
        string chpizza = CheeseCalzoneList.Text.ToString();
        Label16.Text = chpizza;
        if (CheeseCalzoneList.SelectedValue.ToString() == "Small")
        {
            
            double smallPrice = Convert.ToDouble(CPsmallPrice.Text);
            priceCheese = smallPrice;
        }
        else if (CheeseCalzoneList.SelectedValue.ToString() == "Large")
        {
            double largePrice = Convert.ToDouble(CPlargePrice.Text);
            priceCheese = largePrice;
        }
        


        
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it

        //DB Step 4: Execute the query 
        OleDbCommand cmd = new OleDbCommand("INSERT INTO newOrderTable(ItemName,ItemSize, ItemPrice, CustomerID) VALUES(' "  + CheesePizza.Text + "','" + CheesePizzaList.SelectedValue + "','" + 14 + "','"   + Session["pinNumber"] + "')", conn);
        cmd.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn.Close();
        Label15.Text = "Added "+ CheesePizzaList.SelectedValue.ToString() + " " + CheesePizza.Text.ToString() + " to cart";
    }

    protected void PepperoniPizza_Click(object sender, EventArgs e)
    {
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it

        //DB Step 4: Execute the query 
        OleDbCommand cmd = new OleDbCommand("INSERT INTO newOrderTable(ItemName,ItemSize, ItemPrice, CustomerID) VALUES(' " + PepperoniPizza.Text + "','" + PepperoniPizzaList.SelectedValue + "','" + 15 + "','" + Session["pinNumber"] + "')", conn);
        cmd.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn.Close();
        Label15.Text = "Added " + PepperoniPizzaList.SelectedValue.ToString() + " " + PepperoniPizza.Text.ToString() + " to cart";
    }
    protected void MeatLoversPizza_Click(object sender, EventArgs e)
    {
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it

        //DB Step 4: Execute the query 
        OleDbCommand cmd = new OleDbCommand("INSERT INTO newOrderTable(ItemName,ItemSize, ItemPrice, CustomerID) VALUES(' " + MeatLoversPizza.Text + "','" + MeatLoversList.SelectedValue + "','" + 16 + "','" + Session["pinNumber"] + "')", conn);
        cmd.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn.Close();
        Label15.Text = "Added " + MeatLoversList.SelectedValue.ToString() + " " + MeatLoversPizza.Text.ToString() + " to cart";
    }
    protected void VeggieLovers_Click(object sender, EventArgs e)
    {
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it

        //DB Step 4: Execute the query 
        OleDbCommand cmd = new OleDbCommand("INSERT INTO newOrderTable(ItemName,ItemSize, ItemPrice, CustomerID) VALUES(' " + VeggieLovers.Text + "','" + VeggieLoversList.SelectedValue + "','" + 14 + "','" + Session["pinNumber"] + "')", conn);
        cmd.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn.Close();
        Label15.Text = "Added " + VeggieLoversList.SelectedValue.ToString() + " " + VeggieLovers.Text.ToString() + " to cart";
    }
    protected void CheeseCalzone_Click(object sender, EventArgs e)
    {
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it

        //DB Step 4: Execute the query 
        OleDbCommand cmd = new OleDbCommand("INSERT INTO newOrderTable(ItemName,ItemSize, ItemPrice, CustomerID) VALUES(' " + CheeseCalzone.Text + "','" + CheeseCalzoneList.SelectedValue + "','" + 10 + "','" + Session["pinNumber"] + "')", conn);
        cmd.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn.Close();
        Label15.Text = "Added " + CheeseCalzoneList.SelectedValue.ToString() + " " + CheeseCalzone.Text.ToString() + " to cart";
    }
    protected void PepperoniCalzone_Click(object sender, EventArgs e)
    {
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it

        //DB Step 4: Execute the query 
        OleDbCommand cmd = new OleDbCommand("INSERT INTO newOrderTable(ItemName,ItemSize, ItemPrice, CustomerID) VALUES(' " + PepperoniCalzone.Text + "','" + PepperoniCalzoneList.SelectedValue + "','" + 10 + "','" + Session["pinNumber"] + "')", conn);
        cmd.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn.Close();
        Label15.Text = "Added " + PepperoniCalzoneList.SelectedValue.ToString() + " " + PepperoniCalzone.Text.ToString() + " to cart";
    }
    protected void SausageCalzone_Click(object sender, EventArgs e)
    {
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it

        //DB Step 4: Execute the query 
        OleDbCommand cmd = new OleDbCommand("INSERT INTO newOrderTable(ItemName,ItemSize, ItemPrice, CustomerID) VALUES(' " + SausageCalzone.Text + "','" + SausageCalzoneList.SelectedValue + "','" + 11 + "','" + Session["pinNumber"] + "')", conn);
        cmd.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn.Close();
        Label15.Text = "Added " + SausageCalzoneList.SelectedValue.ToString() + " " + SausageCalzone.Text.ToString() + " to cart";
    }
    protected void VeggieCalzone_Click(object sender, EventArgs e)
    {
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it

        //DB Step 4: Execute the query 
        OleDbCommand cmd = new OleDbCommand("INSERT INTO newOrderTable(ItemName,ItemSize, ItemPrice, CustomerID) VALUES(' " + VeggieCalzone.Text + "','" + VeggieCalzoneList.SelectedValue + "','" + 13 + "','" + Session["pinNumber"] + "')", conn);
        cmd.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn.Close();
        Label15.Text = "Added " + VeggieCalzoneList.SelectedValue.ToString() + " " + VeggieCalzone.Text.ToString() + " to cart";
    }
    protected void Coke_Click(object sender, EventArgs e)
    {
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it

        //DB Step 4: Execute the query 
        OleDbCommand cmd = new OleDbCommand("INSERT INTO newOrderTable(ItemName,ItemSize, ItemPrice, CustomerID) VALUES(' " + Coke.Text + "','" + CokeList.SelectedValue + "','" + 2 + "','" + Session["pinNumber"] + "')", conn);
        cmd.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn.Close();
        Label15.Text = "Added " + CokeList.SelectedValue.ToString() + " " + Coke.Text.ToString() + " to cart";
    }
    protected void Fanta_Click(object sender, EventArgs e)
    {
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it

        //DB Step 4: Execute the query 
        OleDbCommand cmd = new OleDbCommand("INSERT INTO newOrderTable(ItemName,ItemSize, ItemPrice, CustomerID) VALUES(' " + Fanta.Text + "','" + FantaList.SelectedValue + "','" + 2 + "','" + Session["pinNumber"] + "')", conn);
        cmd.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn.Close();
        Label15.Text = "Added " + FantaList.SelectedValue.ToString() + " " + Fanta.Text.ToString() + " to cart";
    }
    protected void CranberryJuice_Click(object sender, EventArgs e)
    {
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it

        //DB Step 4: Execute the query 
        OleDbCommand cmd = new OleDbCommand("INSERT INTO newOrderTable(ItemName,ItemSize, ItemPrice, CustomerID) VALUES(' " + CranberryJuice.Text + "','" + CJList.SelectedValue + "','" + 2 + "','" + Session["pinNumber"] + "')", conn);
        cmd.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn.Close();
        Label15.Text = "Added " + CJList.SelectedValue.ToString() + " " + CranberryJuice.Text.ToString() + " to cart";
    }
    protected void Sprite_Click(object sender, EventArgs e)
    {
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it

        //DB Step 4: Execute the query 
        OleDbCommand cmd = new OleDbCommand("INSERT INTO newOrderTable(ItemName,ItemSize, ItemPrice, CustomerID) VALUES(' " + Sprite.Text + "','" + SpriteList.SelectedValue + "','" + 2 + "','" + Session["pinNumber"] + "')", conn);
        cmd.ExecuteNonQuery();

        //DB Step 5: Close Connection to DB
        conn.Close();
        Label15.Text = "Added " + SpriteList.SelectedValue.ToString() + " " + Sprite.Text.ToString() + " to cart";
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        if (AdminTextbox.Text == "password")
        {
            admin = true;

            Label14.Visible = false;
            Response.Redirect("~/AdminPage.aspx");
            
        }
        else if (AdminTextbox.Text != "password")
        {
            admin = false;
            Label14.Visible = true;
            

        }
    }
    protected void cpsmall_TextChanged(object sender, EventArgs e)
    {
       
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        //Response.Redirect("~/ViewCart.aspx?Parameter=" + Session["pinNumber"]);
        Response.Redirect("~/ViewCart.aspx");
    }
}
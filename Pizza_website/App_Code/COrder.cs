using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for COrder
/// This class contains the items ordered by the customer
/// </summary>
public class COrder
{
    public string _foodItem; //name of the item selected
    public int _orderNum;  //number of the order
    public double _price; //price for selected item
    public double _subTotal;  //sub-total for the order

    public string _pizza_count;

	public COrder()
	{
		//
		// TODO: Add constructor logic here

		//
	}
    //==================================
    public void add_pizza_count(string pizza_count)
    {
        _pizza_count = pizza_count;
    }
    public string get_pizza_count()
    {
        return _pizza_count;
    }
    //====================================

    public void add_foodItem(string foodItem)
    {
        _foodItem = foodItem;
    }
    //returns the date
    public string get_foodItem()
    {
        return _foodItem;
    }//end getfoodItem

    //returns the order number
    public int get_orderNum()
    {
        return _orderNum;
    }// end getorder

    //returns the price of a item
    public double get_price()
    {
        return _price;
    }//end getprice

    //returns the total of the order
    public double get_subTotal()
    {
        return _subTotal;
    }//end get subTotal

    //Destructor
    ~COrder()
    {
    }//end destructor
}
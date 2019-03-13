using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CCustomer
/// </summary>
public class CCustomer
{
    public COrder _customerOrder;
    
	public CCustomer()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public COrder get_customerOrder()
    {
        return _customerOrder;
    }


    public int RandomNumber(int min, int max)
    {
        Random random = new Random();
        return random.Next(min, max);
    }


}
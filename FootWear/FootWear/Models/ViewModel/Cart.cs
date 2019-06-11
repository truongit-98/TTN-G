using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FootWear.Models.Entity;
namespace FootWear.Models
{
    public class Cart
    {
        MyDB db = new MyDB();
        public Cart(int ID)
        {
            iID = ID;
            SHORE sh = db.SHORES.Single(n => n.ID == iID);
            sName = sh.NAME;
            sImg = sh.IMG;
            dPrice = decimal.Parse(sh.PRICE.ToString());
            iQuantity = 1;
        }

        public int iID { get; set; }

        public string sName { get; set; }

        public string sImg { get; set; }

        public decimal dPrice { get; set; }

        public int iQuantity { get; set; }

        public decimal dTotal
        {
            get { return iQuantity * dPrice; }
        }
       
    }
}
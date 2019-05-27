using FootWear.Models.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FootWear.Models.Entity;


namespace FootWear.Models.Functions
{
  
    public class CustomerOrderDAO
    {
        MyDB db = new MyDB();
        public List<CustomerOrder> ListBy(int id_customer)
        {
            var lst = from a in db.ORDER_DETAIL
                      join b in db.SHORES on a.ID equals b.ID
                      join c in db.ORDERs on a.ID_ORDER equals c.ID_ORDER
                      join d in db.CUSTOMERs on c.ID_CUSTOMER equals d.ID_CUSTOMER
                      where id_customer == c.ID_ORDER 
                      select new CustomerOrder()
                      {
                          ID_ORDER = a.ID_ORDER,
                          DATE_OD = c.DATE_OD,
                          NAME = b.NAME,
                          NUMBER = a.NUMBER,
                          PRICE = a.PRICE
                      };
            
              return lst.ToList();  
        }
    }
}
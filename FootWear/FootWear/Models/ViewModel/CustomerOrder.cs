using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FootWear.Models.ViewModel
{
    public class CustomerOrder
    {
        public int ID_ORDER { get; set; }
        public DateTime? DATE_OD { get; set; }
        public string NAME { get; set; }
        public int? NUMBER { get; set; }
        public decimal? PRICE { get; set; }

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FootWear.Models.Entity;

namespace FootWear.Controllers
{
    public class sortMenController : Controller
    {

        MyDB db = new MyDB();
        public PartialViewResult Size()
        {
            return PartialView(db.C_SIZE.OrderBy(n => n.ID_SIZE).Where(n => n.ID_SIZE > 6).ToList());
        }
        public PartialViewResult brand()
        {
            return PartialView(db.BRANDs.OrderBy(n => n.BRAND_NAME).ToList());
        }
        public PartialViewResult Style()
        {
            return PartialView(db.TYPEs.OrderBy(n => n.TYPE_NAME).ToList());
        }
        public PartialViewResult Color()
        {
            return PartialView(db.COLORs.OrderBy(n => n.COLOR_NAME).ToList());
        }

    }
}
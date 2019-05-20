using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FootWear.Models.Entity;

namespace FootWear.Controllers
{
    public class BrandController : Controller
    {

        MyDB db = new MyDB();
        // GET: Brand
        public ActionResult Index()
        {
            List<BRAND> lstbrand = db.BRANDs.ToList();
            return View(lstbrand);
        }

        public ActionResult BrandDetail(int ID_BRAND)
        {
            BRAND br = db.BRANDs.SingleOrDefault(n => n.ID_BRAND == ID_BRAND);
            List<SHORE> lstShoes = db.SHORES.Where(n => n.ID_BRAND == ID_BRAND).ToList();
            return View(lstShoes);
        }


    }
}
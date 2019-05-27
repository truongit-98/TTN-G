using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FootWear.Models.Entity;
using FootWear.Models.Functions;

namespace FootWear.Controllers
{
    public class ProductDetailController : Controller
    {
        MyDB db = new MyDB();
        // GET: ProductDetail
        public ActionResult ProductDetail(int ID)
        {
            SHORE sh = db.SHORES.SingleOrDefault(n => n.ID == ID);
            if (sh == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(sh);
        }
    }
}
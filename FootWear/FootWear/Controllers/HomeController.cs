using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FootWear.Models.Entity;
using PagedList;
using PagedList.Mvc;
namespace FootWear.Controllers
{
    public class HomeController : Controller
    {
        MyDB db = new MyDB();
        public ActionResult Index()
        {
            var lst = db.SHORES.Take(20).ToList().OrderByDescending(n => n.PRICE);
            return View(lst);
        }
        public ActionResult AllProduct(int? page)
        {
            int pageSize = 20;
            int pageNumber = (page ?? 1);
            var lst = db.SHORES.ToList().OrderBy(n => n.ID).ToPagedList(pageNumber, pageSize);
            return View(lst);
        }
    }
}
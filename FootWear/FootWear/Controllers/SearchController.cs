using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FootWear.Models.Entity;
using FootWear.Models.Functions;
using PagedList;
using PagedList.Mvc;

namespace FootWear.Controllers
{
    public class SearchController : Controller
    {
        // GET: Search

        MyDB db = new MyDB();
        // GET: Search
        public PartialViewResult Search()
        {
            return PartialView();
        }
        
        [HttpPost]
        public ActionResult ViewSearch(FormCollection f, int? page)
        {
            string sKey = f["txtSearch"].ToString();
            ViewBag.Key = sKey;
            List<SHORE> lstsp = db.SHORES.Where(n => n.NAME.Contains(sKey)).ToList();
            //phân trang
            int pageNumber = page ?? 1;
            int pageSize = 12;

            if (lstsp.Count == 0 || sKey == "")
            {
                ViewBag.TB = "Product not found!";
                return View(db.SHORES.OrderBy(n => n.NAME).ToPagedList(pageNumber, pageSize));
            }
            ViewBag.TB = "Find " + lstsp.Count + " products for keywords : " + sKey;
            return View(lstsp.OrderBy(n => n.NAME).ToPagedList(pageNumber, pageSize));
        }
        [HttpGet]
        public ActionResult ViewSearch(int? page, string sKey)
        {
            List<SHORE> lstsp = db.SHORES.Where(n => n.NAME.Contains(sKey)).ToList();
            //phân trang
            int pageNumber = page ?? 1;
            int pageSize = 12;
            if (lstsp.Count == 0||sKey=="")
            {
                ViewBag.TB = "Product not found!";
                return View(db.SHORES.OrderBy(n => n.NAME).ToPagedList(pageNumber, pageSize));
            }
            ViewBag.TB = "Find " + lstsp.Count + " products for keywords : " + sKey;
            return View(lstsp.OrderBy(n => n.NAME).ToPagedList(pageNumber, pageSize));
        }

    }
}
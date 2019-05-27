using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FootWear.Models.Entity;

namespace FootWear.Areas.Admin.Controllers
{
    public class LoginController : Controller
    {
        // GET: Admin/Login
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Index(ADMIN ad)
        {
            MyDB db = new MyDB();
            if (ModelState.IsValid)
            {
                var model = db.ADMINs.Where(n => n.AD_NAME.Contains(ad.AD_NAME) && n.AD_PASS.Contains(ad.AD_PASS) ).ToList();
                if (model.Count == 0)
                {
                    ViewBag.Error = "use or password fail !!";
                    return View();
                }
                else
                {
                    return RedirectToAction("Index","BrandAd");
                }
            }
            return View();
        }
    }
}
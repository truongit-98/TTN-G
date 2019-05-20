using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FootWear.Models.Entity;
using FootWear.Models.Functions;
namespace FootWear.Areas.Admin.Controllers
{
    public class BrandAdController : Controller
    {
        // GET: Admin/BrandAd
        public ActionResult Index()
        {
            var lst = new BrandF().BRANDs.ToList();
            return View(lst);
        }

       

        // GET: Admin/BrandAd/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/BrandAd/Create
        [HttpPost]
        public ActionResult Create(string BRAND_NAME, BRAND br)
        {
            try
            {
                int i = 0;
                MyDB db = new MyDB();
                var query = db.BRANDs.Where(n => n.BRAND_NAME == BRAND_NAME).ToList();
                foreach (var item in query)
                {
                    i++;
                }
                if (i == 0)
                {
                    BrandF a = new BrandF();
                    a.AddBrand(br);
                    return RedirectToAction("Index");
                }
                return View();
            }
            catch
            {
               return View("Index");
            }
        }

        // GET: Admin/BrandAd/Edit/5
        public ActionResult Edit(int id)
        {

            return View();
        }

        // POST: Admin/BrandAd/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, BRAND br)
        {
            try
            {
                BrandF a = new BrandF();
                a.EditBrand(id,br);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/BrandAd/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/BrandAd/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, BRAND br)
        {
            try
            {
                int i = 0;
                MyDB db = new MyDB();
                var query = db.BRANDs.Where(n => n.ID_BRAND == id).ToList();
                foreach (var item in query)
                {
                    i++;
                }
                if (i != 0)
                {
                    BrandF a = new BrandF();
                    a.DeleteBrand(id);
                    return RedirectToAction("Index");
                }
                return View();
            }
            catch
            {
                return View("Index");
            }
        }
    }
}

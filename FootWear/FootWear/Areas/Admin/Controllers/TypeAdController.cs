using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FootWear.Models.Entity;
using FootWear.Models.Functions;
namespace FootWear.Areas.Admin.Controllers
{
    //[Authorize]
    public class TypeAdController : BaseController
    {
        MyDB db = new MyDB();
        // GET: Admin/TYPEAd
        public ActionResult Index()
        {
            var lst = new TypeF().TYPEs.ToList();
            return View(lst);
        }



        // GET: Admin/TYPEAd/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/TYPEAd/Create
        [HttpPost]
        public ActionResult Create(string TYPE_NAME, TYPE br)
        {
            try
            {
                int i = 0;
                MyDB db = new MyDB();
                var query = db.TYPEs.Where(n => n.TYPE_NAME == TYPE_NAME).ToList();
                foreach (var item in query)
                {
                    i++;
                }
                if (i == 0)
                {
                    TypeF a = new TypeF();
                    a.AddTYPE(br);
                    return RedirectToAction("Index");
                }
                return View();
            }
            catch
            {
                return View("Index");
            }
        }

        // GET: Admin/TYPEAd/Edit/5
        public ActionResult Edit(int id)
        {
            TYPE br = db.TYPEs.SingleOrDefault(n => n.ID_TYPE == id);
            return View(br);
        }

        // POST: Admin/TYPEAd/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, TYPE br)
        {
            try
            {
                TypeF a = new TypeF();
                a.EditTYPE(id, br);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/TYPEAd/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/TYPEAd/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, TYPE br)
        {
            try
            {
                int i = 0;
                
                var query = db.TYPEs.Where(n => n.ID_TYPE == id).ToList();
                foreach (var item in query)
                {
                    i++;
                }
                if (i != 0)
                {
                    TypeF a = new TypeF();
                    a.DeleteTYPE(id);
                    return RedirectToAction("Index");
                }
                return View();
            }
            catch
            {
                return View("Index");
            }
        }

        public ActionResult Details(int id)
        {
            //var lst = db.SHORES.SqlQuery(" SELECT * FROM dbo.SHORES WHERE ID_BRAND = @ma", new SqlParameter("ma", id)).ToList();
            var lst = new ShoesF().SHORES.Where(n => n.ID_TYPE == id).ToList();
            return View(lst);
        }
    }
}

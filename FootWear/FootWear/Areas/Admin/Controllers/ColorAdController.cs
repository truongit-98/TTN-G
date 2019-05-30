using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FootWear.Models.Entity;
using FootWear.Models.Functions;
namespace FootWear.Areas.Admin.Controllers
{
    
    public class ColorAdController : BaseController
    {
        MyDB db = new MyDB();
        // GET: Admin/Color
        public ActionResult Index()
        {
            var lst = new ColorF().COLORs.ToList();
            return View(lst);
        }

        
        // GET: Admin/Color/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Color/Create
        [HttpPost]
        public ActionResult Create(COLOR color)
        {
            try
            {
                int i = 0;
                MyDB db = new MyDB();
                var query = db.COLORs.Where(n => n.COLOR_NAME == color.COLOR_NAME).ToList();
                foreach (var item in query)
                {
                    i++;
                }
                if (i == 0)
                {
                    ColorF a = new ColorF();
                    a.AddColor(color);
                    return RedirectToAction("Index");
                }
                return View();
            }
            catch
            {
                return View("Index");
            }
        }

        // GET: Admin/Color/Edit/5
        public ActionResult Edit(int id)
        {
            COLOR br = db.COLORs.SingleOrDefault(n => n.ID_COLOR == id);
            return View(br);
        }

        // POST: Admin/Color/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, COLOR color)
        {
            try
            {
                ColorF a = new ColorF();
                a.EditColor(id,color);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/Color/Delete/5
        public ActionResult Delete(int id)
        {
            COLOR br = db.COLORs.SingleOrDefault(n => n.ID_COLOR == id);
            return View(br);
        }

        // POST: Admin/Color/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, COLOR color)
        {
            try
            {
                int i = 0;
                MyDB db = new MyDB();
                var query = db.COLORs.Where(n => n.ID_COLOR == id).ToList();
                foreach (var item in query)
                {
                    i++;
                }
                if (i != 0)
                {
                    ColorF a = new ColorF();
                    a.DeleteColor(id);
                    return RedirectToAction("Index");
                }
                return View();
            }
            catch
            {
                return View("Index");
            }
        }

        public ActionResult Detail(int id)
        {
            //var lst = db.SHORES.SqlQuery(" SELECT * FROM dbo.SHORES WHERE ID_BRAND = @ma", new SqlParameter("ma", id)).ToList();
            var lst = new ShoesF().SHORES.Where(n => n.ID_TYPE == id).ToList();
            return View(lst);
        }
    }
}

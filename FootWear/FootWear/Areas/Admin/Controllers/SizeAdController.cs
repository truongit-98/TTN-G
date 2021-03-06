﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FootWear.Models.Entity;
using FootWear.Models.Functions;
namespace FootWear.Areas.Admin.Controllers
{
    //[Authorize]
    public class SizeAdController : BaseController 
    {

        MyDB db = new MyDB();
        // GET: Admin/BrandAd
        public ActionResult Index()
        {
            var lst = new SizeF().C_SIZEs.ToList();
            return View(lst);
        }



        // GET: Admin/BrandAd/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/BrandAd/Create
        [HttpPost]
        public ActionResult Create(string SIZE_NAME, C_SIZE sz)
        {
            try
            {
                int i = 0;
                
                var query = db.C_SIZE.Where(n => n.SIZE_NAME == SIZE_NAME).ToList();
                foreach (var item in query)
                {
                    i++;
                }
                if (i == 0)
                {
                    SizeF a = new SizeF();
                    a.AddC_SIZE(sz);
                    return RedirectToAction("Index");
                }
                ViewBag.ThongBao = " size already exists !! ";
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
            C_SIZE br = db.C_SIZE.SingleOrDefault(n => n.ID_SIZE == id);
            return View(br);
        }

        // POST: Admin/BrandAd/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, C_SIZE sz)
        {
            try
            {
                SizeF a = new SizeF();
                a.EditC_SIZE(id, sz);
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
            C_SIZE br = db.C_SIZE.SingleOrDefault(n => n.ID_SIZE == id);
            return View(br);
            
        }

        // POST: Admin/BrandAd/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, C_SIZE br)
        {
            try
            {
                int i = 0;
                MyDB db = new MyDB();
                var query = db.C_SIZE.Where(n => n.ID_SIZE == id).ToList();
                foreach (var item in query)
                {
                    i++;
                }
                if (i != 0)
                {
                    SizeF a = new SizeF();
                    a.DeleteSize(id);
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
            var lst = new ShoesF().SHORES.Where(n => n.ID_SIZE == id).ToList();
            return View(lst);
        }
    }
}

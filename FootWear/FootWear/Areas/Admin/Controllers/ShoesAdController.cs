using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FootWear.Models.Entity;
using FootWear.Models.Functions;
using PagedList;
using PagedList.Mvc;
namespace FootWear.Areas.Admin.Controllers
{
    public class ShoesAdController : Controller
    {
        // GET: Admin/Shose
        public ActionResult Index(int? page)
        {
            int pageSize = 20;
            int pageNumber =(page ?? 1);
            var lst = new ShoesF().SHORES.ToList().OrderBy(n => n.ID).ToPagedList(pageNumber, pageSize);
            return View(lst);
        }



        // GET: Admin/Shose/Create
        public ActionResult Create()
        {
            MyDB db = new MyDB();

            ViewBag.ID_BRAND = new SelectList(db.BRANDs.OrderBy(n => n.BRAND_NAME).ToList(), "ID_BRAND", "BRAND_NAME");
            ViewBag.ID_COLOR = new SelectList(db.COLORs.OrderBy(n => n.COLOR_NAME).ToList(), "ID_COLOR", "COLOR_NAME");
            ViewBag.ID_TYPE = new SelectList(db.TYPEs.OrderBy(n => n.TYPE_NAME).ToList(), "ID_TYPE", "TYPE_NAME");
            ViewBag.ID_SIZE = new SelectList(db.C_SIZE.OrderBy(n => n.SIZE_NAME).ToList(), "ID_SIZE", "SIZE_NAME");
            return View();
        }

        // POST: Admin/Shose/Create
        [HttpPost]
        public ActionResult Create(SHORE shoes, HttpPostedFileBase fileUpLoad)
        {
            try
            {
                MyDB db = new MyDB();
                ViewBag.ID_BRAND = new SelectList(db.BRANDs.OrderBy(n => n.BRAND_NAME).ToList(), "ID_BRAND", "BRAND_NAME");
                ViewBag.ID_COLOR = new SelectList(db.COLORs.OrderBy(n => n.COLOR_NAME).ToList(), "ID_COLOR", "COLOR_NAME");
                ViewBag.ID_TYPE = new SelectList(db.TYPEs.OrderBy(n => n.TYPE_NAME).ToList(), "ID_TYPE", "TYPE_NAME");
                ViewBag.ID_SIZE = new SelectList(db.C_SIZE.OrderBy(n => n.SIZE_NAME).ToList(), "ID_SIZE", "SIZE_NAME");
                if (fileUpLoad == null)
                {
                    ViewBag.ThongBao = "Chọn hình ảnh!!1";
                    return View();
                }
                if (ModelState.IsValid)
                {
                    //lưu tên file 
                    var fileName = Path.GetFileName(fileUpLoad.FileName);
                    //lưu đường dẫn
                    var path = Path.Combine(Server.MapPath("~/Content/images"), fileName);
                    //kiem tra ton tai chua?
                    if (System.IO.File.Exists(path))
                    {
                        ViewBag.ThongBao = "hình ảnh đã tồn tại";

                    }
                    else
                    {
                        fileUpLoad.SaveAs(path);

                        shoes.IMG = fileUpLoad.FileName;
                        int i = 0;
                      
                        var query = db.SHORES.Where(n => n.NAME == shoes.NAME).ToList();
                        foreach (var item in query)
                        {
                            i++;
                        }
                        if (i == 0)
                        {
                            ShoesF a = new ShoesF();
                            a.AddSHORE(shoes);
                            return RedirectToAction("Index");
                        }
                        else return View();
                    } 
                }
                return View();
            }
            catch
            {
                return View("Index");
            }
        }

        // GET: Admin/Shose/Edit/5
        public ActionResult Edit(int id)
        {
            MyDB db = new MyDB();
            ViewBag.ID_BRAND = new SelectList(db.BRANDs.OrderBy(n => n.BRAND_NAME).ToList(), "ID_BRAND", "BRAND_NAME");
            ViewBag.ID_COLOR = new SelectList(db.COLORs.OrderBy(n => n.COLOR_NAME).ToList(), "ID_COLOR", "COLOR_NAME");
            ViewBag.ID_TYPE = new SelectList(db.TYPEs.OrderBy(n => n.TYPE_NAME).ToList(), "ID_TYPE", "TYPE_NAME");
            ViewBag.ID_SIZE = new SelectList(db.C_SIZE.OrderBy(n => n.SIZE_NAME).ToList(), "ID_SIZE", "SIZE_NAME");
            return View();
        }

        // POST: Admin/Shose/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, SHORE shoes, HttpPostedFileBase fileUpLoad)
        {
            
            try
            {
                MyDB db = new MyDB();
                ViewBag.ID_BRAND = new SelectList(db.BRANDs.OrderBy(n => n.BRAND_NAME).ToList(), "ID_BRAND", "BRAND_NAME");
                ViewBag.ID_COLOR = new SelectList(db.COLORs.OrderBy(n => n.COLOR_NAME).ToList(), "ID_COLOR", "COLOR_NAME");
                ViewBag.ID_TYPE = new SelectList(db.TYPEs.OrderBy(n => n.TYPE_NAME).ToList(), "ID_TYPE", "TYPE_NAME");
                ViewBag.ID_SIZE = new SelectList(db.C_SIZE.OrderBy(n => n.SIZE_NAME).ToList(), "ID_SIZE", "SIZE_NAME");
                if (fileUpLoad == null)
                {
                    ViewBag.ThongBao = "Chọn hình ảnh!!1";
                    return View();
                }
                if (ModelState.IsValid)
                {
                    //lưu tên file 
                    var fileName = Path.GetFileName(fileUpLoad.FileName);
                    //lưu đường dẫn
                    var path = Path.Combine(Server.MapPath("~/Content/images"), fileName);
                    //kiem tra ton tai chua?
                    if (System.IO.File.Exists(path))
                    {
                        ViewBag.ThongBao = "hình ảnh đã tồn tại";

                    }
                    else
                    {
                        fileUpLoad.SaveAs(path);

                        shoes.IMG = fileUpLoad.FileName;
                        
               
                            ShoesF a = new ShoesF();
                            a.EditSHORE(id, shoes);
                            return RedirectToAction("Index");
                     }
                       
                    
                }
                return View();
            }
            catch
            {
                return View();
            }
        }
            
        

        // GET: Admin/Shose/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/Shose/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                int i = 0;
                MyDB db = new MyDB();
                var query = db.SHORES.Where(n => n.ID == id).ToList();
                foreach (var item in query)
                {
                    i++;
                }
                if (i != 0)
                {
                    ShoesF a = new ShoesF();
                    a.DeleteSHORE(id);
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

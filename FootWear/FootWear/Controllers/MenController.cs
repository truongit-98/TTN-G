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
    public class MenController : Controller
    {
        MyDB db = new MyDB();
        // GET: Men
        public ActionResult Index(int? page)
        {
            int pageNumber = page ?? 1;
            int pageSize = 15;
            return View(db.SHORES.Where(n => n.C_SIZE.ID_SIZE > 6).OrderBy(n => n.NAME).ToPagedList(pageNumber, pageSize));
        }
        
        public ActionResult viewSize(int ID_SIZE)
        {
            C_SIZE siz = db.C_SIZE.SingleOrDefault(n => n.ID_SIZE == ID_SIZE);
            ViewBag.siz = db.C_SIZE.SingleOrDefault(n => n.ID_SIZE == siz.ID_SIZE).SIZE_NAME;
            if (siz == null)
            {
                Response.StatusCode = 404;
                ViewBag.Notify = "Size not found!";
                return null;
            }
            //truy xuất danh sách sp theo hãng
            List<SHORE> lstSanPham = db.SHORES.Where(n => n.ID_SIZE == ID_SIZE && n.C_SIZE.ID_SIZE > 6).OrderBy(n => n.NAME).ToList();           
            return View(lstSanPham);
        }
        
        public ActionResult viewBrand(int ID_BRAND)
        {
            BRAND br = db.BRANDs.SingleOrDefault(n => n.ID_BRAND == ID_BRAND);
            ViewBag.br = db.BRANDs.SingleOrDefault(n => n.ID_BRAND == br.ID_BRAND).BRAND_NAME;
            if (br == null)
            {
                Response.StatusCode = 404;
                ViewBag.Notify = "Brand not found!";
                return null;
            }
            //truy xuất danh sách sp theo hãng
            List<SHORE> lstSanPham = db.SHORES.Where(n => n.ID_BRAND == ID_BRAND && n.C_SIZE.ID_SIZE > 6).OrderBy(n => n.NAME).ToList();           
            return View(lstSanPham);
        }
        
        public ActionResult viewStyle(int ID_TYPE)
        {
            TYPE typ = db.TYPEs.SingleOrDefault(n => n.ID_TYPE == ID_TYPE);
            ViewBag.typ = db.TYPEs.SingleOrDefault(n => n.ID_TYPE == typ.ID_TYPE).TYPE_NAME;
            if (typ == null)
            {
                Response.StatusCode = 404;
                ViewBag.Notify = "Style not found!";
                return null;
            }
            //truy xuất danh sách sp theo hãng
            List<SHORE> lstSanPham = db.SHORES.Where(n => n.ID_TYPE == ID_TYPE && n.C_SIZE.ID_SIZE > 6).OrderBy(n => n.NAME).ToList();           
            return View(lstSanPham);
        }
        
        public ActionResult viewColor(int ID_COLOR)
        {
            COLOR col = db.COLORs.SingleOrDefault(n => n.ID_COLOR == ID_COLOR);
            ViewBag.col = db.COLORs.SingleOrDefault(n => n.ID_COLOR == col.ID_COLOR).COLOR_NAME;
            if (col == null)
            {
                Response.StatusCode = 404;
                ViewBag.Notify = "Color not found!";
                return null;
            }
            //truy xuất danh sách sp theo hãng
            List<SHORE> lstSanPham = db.SHORES.Where(n => n.ID_COLOR == ID_COLOR && n.C_SIZE.ID_SIZE > 6).OrderBy(n => n.NAME).ToList();           
            return View(lstSanPham);
        }
    }
}
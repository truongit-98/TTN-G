using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FootWear.Models.Entity;
namespace FootWear.Controllers
{
    public class UserController : Controller
    {
        MyDB db = new MyDB();
        public PartialViewResult UserPar()
        {
            return PartialView();
        }
        [HttpGet]
        public ActionResult SignUp()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult SignUp(CUSTOMER cust)
        {
            if (ModelState.IsValid)
            {
                //Thêm vào CUSTOMER
                db.CUSTOMERs.Add(cust);
                //Lưu vào sql
                db.SaveChanges();
            }
            return RedirectToAction("Index", "Home");
        }

        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(FormCollection f)
        {
            string sUser = f["txtUser"].ToString();
            string sPass = f.Get("txtPass").ToString();
            ViewBag.name = sUser;
            CUSTOMER cust = db.CUSTOMERs.SingleOrDefault(n => n.USERNAME == sUser && n.PASS == sPass);
            if (cust != null)
            {
                ViewBag.ThongBao = "Logged in successfully!";
                Session["User"] = cust;
                return RedirectToAction("Index", "Home");
            }
            ViewBag.ThongBao = "Login failed!";

            return RedirectToAction("Index", "Home");

        }

        public ActionResult LogOut()
        {
            Session["User"] = null;
            return RedirectToAction("Index", "Home");
        }
    }
}
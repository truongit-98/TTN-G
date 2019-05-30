using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FootWear.Models.Entity;
using FootWear.Models.ViewModel;

namespace FootWear.Areas.Admin.Controllers
{
    public class LoginController : Controller
    {
        // GET: Admin/Login
       
        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(FormCollection f)
        {
            MyDB dB = new MyDB();
            //string sUser = f["txtUser"].ToString();
            //string sPass = f.Get("txtPass").ToString();
            //ViewBag.name = sUser;

            SessionNamePassAd.name = f["txtUser"].ToString();
            SessionNamePassAd.pass = f["txtPass"].ToString();
            ADMIN cust = dB.ADMINs.SingleOrDefault(n => n.AD_NAME == SessionNamePassAd.name && n.AD_PASS == SessionNamePassAd.pass);
            if (cust != null)
            {
                Session["User"] = SessionNamePassAd.name;
                return RedirectToAction("Index", "ShoesAd");
            }

            //ADMIN cust = dB.ADMINs.SingleOrDefault(n => n.AD_NAME == sUser && n.AD_PASS == sPass);
            //if (cust != null)
            //{
            //    ViewBag.ThongBao = "Logged in successfully!";
            //    Session["User"] = cust;
            //    ViewBag.ThongTin = sUser;
            //    return RedirectToAction("Index", "ShoesAd");
            //}

            ViewBag.ThongBao = "Login failed!";
            return RedirectToAction("Login", "Login");
        }

        public ActionResult LogOut()
        {
            Session["User"] = null;
            return RedirectToAction("Login", "Login");

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FootWear.Models.Entity;
using FootWear.Models.Functions;
namespace FootWear.Areas.Admin.Controllers
{
    public class CustomerAdController : Controller
    {
        // GET: Admin/CUSTOMERAd
        public ActionResult Index()
        {
            var lst = new CustomerF().CUSTOMERs.ToList();
            return View(lst);
        }



        // GET: Admin/CUSTOMERAd/Create
        public ActionResult Create()
        {
            
         
            return View();
        }

        // POST: Admin/CUSTOMERAd/Create
        [HttpPost]
        public ActionResult Create(string CUSTOMER_NAME, CUSTOMER br)
        {
            try
            {
                int i = 0;
                MyDB db = new MyDB();
                var query = db.CUSTOMERs.Where(n => n.CUSTOMER_NAME == CUSTOMER_NAME).ToList();
                foreach (var item in query)
                {
                    i++;
                }
                if (i == 0)
                {
                    CustomerF a = new CustomerF();
                    a.AddCUSTOMER(br);
                    return RedirectToAction("Index");
                }
                return View();
            }
            catch
            {
                return View("Index");
            }
        }

        // GET: Admin/CUSTOMERAd/Edit/5
        public ActionResult Edit(int id)
        {

            return View();
        }

        // POST: Admin/CUSTOMERAd/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, CUSTOMER br)
        {
            try
            {
                CustomerF a = new CustomerF();
                a.EditCUSTOMER(id, br);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //public actionresult details(int id)
        //{
        //    return view();
        //}

        //[httppost]
        //public actionresult details(int id, order od)
        //{

        //    return view();

        //}


        // GET: Admin/CUSTOMERAd/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/CUSTOMERAd/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, CUSTOMER br)
        {
            try
            {
                int i = 0;
                MyDB db = new MyDB();
                var query = db.CUSTOMERs.Where(n => n.ID_CUSTOMER == id).ToList();
                foreach (var item in query)
                {
                    i++;
                }
                if (i != 0)
                {
                    CustomerF a = new CustomerF();
                    a.DeleteCUSTOMER(id);
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

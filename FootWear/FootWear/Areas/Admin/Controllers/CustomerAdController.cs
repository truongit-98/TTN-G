using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FootWear.Models.Entity;
using FootWear.Models.Functions;
using PagedList;
using PagedList.Mvc;
namespace FootWear.Areas.Admin.Controllers
{
    //[Authorize]
    public class CustomerAdController : BaseController
    {
        // GET: Admin/CUSTOMERAd

        MyDB db = new MyDB();
        public ActionResult Index(int ? page)
        {
            int pageSize = 15;
            int pageNumber = (page ?? 1);
            var lst = new CustomerF().CUSTOMERs.ToList().OrderBy(n => n.ID_CUSTOMER).ToPagedList(pageNumber, pageSize);
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
            CUSTOMER br = db.CUSTOMERs.SingleOrDefault(n => n.ID_CUSTOMER == id);
            return View(br);
            
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

        public ActionResult Details(int id)
        {
            if (ModelState.IsValid)
            {
                var lst = new CustomerOrderDAO().ListBy(id);
                return View(lst);
            }
            return View("Index");
            
        }

        //[HttpPost]
        //public ActionResult Details(int id, ORDER od)
        //{

        //    return View();

        //}


        // GET: Admin/CUSTOMERAd/Delete/5
        public ActionResult Delete(int id)
        {
            CUSTOMER br = db.CUSTOMERs.SingleOrDefault(n => n.ID_CUSTOMER == id);
            return View(br);
           
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

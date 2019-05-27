using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FootWear.Models;
using FootWear.Models.Entity;
namespace FootWear.Controllers
{
    public class CartController : Controller
    {
        MyDB db = new MyDB();
        // GET: Cart
        public List<Cart> GetCart()
        {
            List<Cart> lstCart = Session["Cart"] as List<Cart>;
            if (lstCart == null)
            {
                lstCart = new List<Cart>();
                Session["Cart"] = lstCart;
            }
            return lstCart;
        }
        public ActionResult AddCart(int iID, string sUrl)
        {
            SHORE sh = db.SHORES.SingleOrDefault(n => n.ID == iID);
            if (sh == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            List<Cart> lstCart = GetCart();
            Cart cart = lstCart.Find(n => n.iID == iID);
            if (cart == null)
            {
                cart = new Cart(iID);
                lstCart.Add(cart);
                return Redirect(sUrl);
            }
            else
            {
                cart.iQuantity++;
                return Redirect(sUrl);
            }
        }
        public ActionResult UpdateCart(int iID, FormCollection f)
        {
            //Kiểm tra mash
            SHORE sh = db.SHORES.SingleOrDefault(n => n.ID == iID);
            //Nếu get sai mash thì trả về 404
            if (sh == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            //Lấy giỏ hàng ra từ sesstion
            List<Cart> lstCart = GetCart();
            //kiểm tra sản phẩm có tồn tại trong sesstion[Cart]
            Cart gh = lstCart.SingleOrDefault(n => n.iID == iID);
            //nếu tồn tại thì cho sửa sl
            if (gh != null)
            {
                gh.iQuantity = int.Parse(f["txtQuantity"].ToString());
            }
            return RedirectToAction("Cart");
        }
        public RedirectToRouteResult SuaSL(int iID, int sl)
        {

            List<Cart> cart = Session["Cart"] as List<Cart>;
            Cart item = cart.FirstOrDefault(n => n.iID == iID);
            if (item != null)
            {
                item.iQuantity = int.Parse(sl.ToString());
            }
            return RedirectToAction("Cart");
        }
        //xóa giỏ hàng
        public ActionResult DeleteCart(int iID)
        {
            SHORE sh = db.SHORES.SingleOrDefault(n => n.ID == iID);
            //Nếu get sai mash thì trả về 404
            if (sh == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            //Lấy giỏ hàng ra từ sesstion
            List<Cart> lstCart = GetCart();
            //kiểm tra sản phẩm có tồn tại trong sesstion[Cart]
            Cart gh = lstCart.SingleOrDefault(n => n.iID == iID);
            //nếu tồn tại thì cho sửa sl
            if (gh != null)
            {
                lstCart.RemoveAll(n => n.iID == gh.iID);
            }
            if (lstCart.Count == 0)
            {
                return RedirectToAction("Index", "Home");
            }
            return RedirectToAction("Cart");
        }
        public ActionResult XoaKhoiGio(int id)
        {
            List<Cart> cart = Session["Cart"] as List<Cart>;
            Cart item = cart.FirstOrDefault(n => n.iID == id);
            if (item != null)
            {
                cart.Remove(item);
            }
            return RedirectToAction("Cart");
        }

        //xây dựng tragn giỏ hàng
        public ActionResult Cart()
        {
            if (Session["Cart"] == null)
            {
                return RedirectToAction("Index", "Home");
            }
            List<Cart> lstCart = GetCart();
            return View(lstCart);
        }
        //tổng số lượng, tổng tiền
        private int TotalQuantity()
        {
            int iTotalQuantity = 0;
            List<Cart> lstCart = Session["Cart"] as List<Cart>;
            if (lstCart != null)
            {
                iTotalQuantity = lstCart.Sum(n => n.iQuantity);
            }
            return iTotalQuantity;
        }
        private decimal TotalMoney()
        {
            decimal dTotalMoney = 0;
            List<Cart> lstCart = Session["Cart"] as List<Cart>;
            if (lstCart != null)
            {
                dTotalMoney = lstCart.Sum(n => n.dTotal);
            }
            return dTotalMoney;
        }
        public ActionResult CartPar()
        {
            if (TotalQuantity() == 0)
            {
                return PartialView();
            }
            ViewBag.TongSL = TotalQuantity();
            ViewBag.TongTien = TotalMoney();
            return PartialView();
        }
        //xây dựng view cho người dùng chỉnh sửa giỏ hàng
        public ActionResult UpdateCart()
        {
            if (Session["Cart"] == null)
            {
                return RedirectToAction("Index", "Home");
            }
            List<Cart> lstCart = GetCart();
            return View(lstCart);
        }

        #region DatHang
        public ActionResult Delivery(int id)
        {
            if (Session["User"] == null)
            {
                return RedirectToAction("Login", "User");
            }
            if (Session["Cart"] == null)
            {
                return RedirectToAction("Index", "Home");
            }
            CUSTOMER cus = db.CUSTOMERs.SingleOrDefault(n => n.ID_CUSTOMER == id);

            return View(cus);
        }
        //Xây dựng chức năng đặt hàng
        [HttpPost]
        public ActionResult Order()
        {
            //kiểm tra đăng nhập
            if (Session["User"] == null || Session["User"].ToString() == " ")
            {
                return RedirectToAction("Login", "User");
            }
            //kiểm tra giỏ hàng
            if (Session["Cart"] == null)
            {
                return RedirectToAction("Index", "Home");
            }
            //thêm đơn hàng
            ORDER ord = new ORDER();
            CUSTOMER cus = (CUSTOMER)Session["User"];
            List<Cart> cart = GetCart();
            ord.ID_CUSTOMER = cus.ID_CUSTOMER;
            ord.DATE_OD = DateTime.Now;
            db.ORDERs.Add(ord);
            db.SaveChanges();
            foreach (var item in cart)
            {
                ORDER_DETAIL od = new ORDER_DETAIL();
                od.ID_ORDER = ord.ID_ORDER;
                od.ID = item.iID;
                od.NUMBER = item.iQuantity;
                od.PRICE = item.dPrice;
                db.ORDER_DETAIL.Add(od);

            }
            db.SaveChanges();

            return RedirectToAction("Success", "Cart");
        }
        public ActionResult Success()
        {
            List<Cart> lstCart = Session["Cart"] as List<Cart>;
            lstCart.Clear();
            return View();
        }

        //[HttpGet]
        //public ActionResult Payment()
        //{
        //    var cart = Session["Cart"];
        //    var list = new List<Cart>();
        //    if (cart != null)
        //    {
        //        list = (List<Cart>)cart;
        //    }
        //    return View(list);
        //}

        //[HttpPost]
        //public ActionResult Payment(string shipName, string mobile, string address, string email)
        //{
        //    if (Session["User"] == null || Session["User"].ToString() == " ")
        //    {
        //        return RedirectToAction("Login", "User");
        //    }
        //    //kiểm tra giỏ hàng
        //    if (Session["Cart"] == null)
        //    {
        //        return RedirectToAction("Index", "Home");
        //    }
        //    var order = new ORDER();
        //    CUSTOMER cus = (CUSTOMER)Session["User"];
        //    List<Cart> cart = GetCart();
        //    order.DATE_OD = DateTime.Now;
        //    order.SHIP_ADD = address;
        //    order.SHIP_PHONE = mobile;
        //    order.SHIP_NAME = shipName;
        //    order.SHIP_EMAIL = email;
        //    order.ID_CUSTOMER = cus.ID_CUSTOMER;

        //    db.ORDERs.Add(order);
        //    db.SaveChanges();
        //    foreach (var item in cart)
        //    {
        //        ORDER_DETAIL od = new ORDER_DETAIL();
        //        od.ID_ORDER = order.ID_ORDER;
        //        od.ID = item.iID;
        //        od.NUMBER = item.iQuantity;
        //        od.PRICE = item.dPrice;
        //        db.ORDER_DETAIL.Add(od);

        //    }
        //    db.SaveChanges();

        //    return RedirectToAction("Success", "Cart");
        //}

        #endregion
    }
}
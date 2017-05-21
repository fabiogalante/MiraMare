using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MiraMareHotel.Models;

namespace MiraMareHotel.Areas.English.Controllers
{
    public class PriceController : Controller
    {

        readonly HotelmiramareDbContext _db = new HotelmiramareDbContext();
        //
        // GET: /English/Price/
        public ActionResult DailyPrice()
        {
            var dailyPrice = _db.TarifasBalcao.First();
            return View(dailyPrice);
        }



        public ActionResult HolidayPackages()
        {
            var holiday = _db.TarifasPacotes.ToList();
            return View(holiday);
        }


        [ChildActionOnly]
        public ActionResult Period()
        {
            var perido = _db.TarifasPacotePeriodos.First();
            return PartialView(perido);
        }

        protected override void Dispose(bool disposing)
        {
            _db.Dispose();
            base.Dispose(disposing);
        }
	}
}
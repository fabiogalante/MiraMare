using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MiraMareHotel.Models;

namespace MiraMareHotel.Areas.English.Controllers
{
    public class HolidayPackagesController : Controller
    {
        readonly HotelmiramareDbContext _db = new HotelmiramareDbContext();
        //
        // GET: /English/HolidayPackages/
        public ActionResult Index()
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
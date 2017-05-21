using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MiraMareHotel.Models;

namespace MiraMareHotel.Controllers
{
    public class PacoteController : Controller
    {
        readonly HotelmiramareDbContext _db = new HotelmiramareDbContext();

        //
        // GET: /Pacote/
        public ActionResult Index()
        {
            var balcao = _db.TarifasPacotes.ToList();
            return View(balcao);
        }

        [ChildActionOnly]
        public ActionResult Periodo()
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
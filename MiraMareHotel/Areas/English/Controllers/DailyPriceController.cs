using System.Linq;
using System.Web.Mvc;
using MiraMareHotel.Models;

namespace MiraMareHotel.Areas.English.Controllers
{
    public class DailyPriceController : Controller
    {
        readonly HotelmiramareDbContext _db = new HotelmiramareDbContext();

        //
        // GET: /English/DailyPrice/
        public ActionResult Index()
        {
            var dailyPrice = _db.TarifasBalcao.First();
            return View(dailyPrice);
        }

        protected override void Dispose(bool disposing)
        {
            _db.Dispose();
            base.Dispose(disposing);
        }
	}
}
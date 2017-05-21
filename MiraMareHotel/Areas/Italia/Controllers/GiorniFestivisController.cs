using System.Linq;
using System.Web.Mvc;
using MiraMareHotel.Models;

namespace MiraMareHotel.Areas.Italia.Controllers
{
    public class GiorniFestivisController : Controller
    {
        readonly HotelmiramareDbContext _db = new HotelmiramareDbContext();

        //
        // GET: /Italia/GiorniFestivis/
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
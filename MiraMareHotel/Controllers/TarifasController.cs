using System.Linq;
using System.Web.Mvc;
using MiraMareHotel.Models;

namespace MiraMareHotel.Controllers
{
    public class TarifasController : Controller
    {
        readonly HotelmiramareDbContext _db = new HotelmiramareDbContext();
        
        //
        // GET: /Tarifas/
        public ActionResult Balcao()
        {
            var balcao = _db.TarifasBalcao.First();
            return View(balcao);
        }

        public ActionResult Pacotes()
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
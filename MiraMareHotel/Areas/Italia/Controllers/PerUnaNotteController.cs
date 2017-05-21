using System.Linq;
using System.Web.Mvc;
using MiraMareHotel.Models;

namespace MiraMareHotel.Areas.Italia.Controllers
{
    public class PerUnaNotteController : Controller
    {
        readonly HotelmiramareDbContext _db = new HotelmiramareDbContext();

        //
        // GET: /Italia/PerUnaNotte/
        public ActionResult Index()
        {
            var balcao = _db.TarifasBalcao.First();
            return View(balcao);
        }

        protected override void Dispose(bool disposing)
        {
            _db.Dispose();
            base.Dispose(disposing);
        }
	}
}
using System.Linq;
using System.Web.Mvc;
using MiraMareHotel.Models;

namespace MiraMareHotel.Controllers
{

    public class BalcaoController : Controller
    {
        readonly HotelmiramareDbContext _db = new HotelmiramareDbContext();

        //
        // GET: /Balcao/
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
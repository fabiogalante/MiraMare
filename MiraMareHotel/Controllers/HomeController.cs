using System;
using System.Linq;
using System.Web.Mvc;
using MiraMareHotel.Models;

namespace MiraMareHotel.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public JsonResult ObterAvaliacoes()
        {
            HotelmiramareDbContext context = new HotelmiramareDbContext();
            var avaliacoes = context.Avaliacoes.OrderBy(a => Guid.NewGuid()).Take(1);
            return Json(avaliacoes, JsonRequestBehavior.AllowGet);
        }
    }
}
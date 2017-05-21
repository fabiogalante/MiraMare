using System.Web.Mvc;
using MiraMareHotel.Models;
using MiraMareHotel.Util;

namespace MiraMareHotel.Areas.Italia.Controllers
{
    public class RiserveController : Controller
    {
        //
        // GET: /Italia/Riserve/
        public ActionResult Index()
        {

            var list = new[]
            {
                new Reserva {DiariaValue = "Não selecionou a diária", DiariaText = "Selezionare"},
                new Reserva {DiariaValue = "Diária 1 pessoa", DiariaText = "1 ospite"},
                new Reserva {DiariaValue = "Diária 1 casal", DiariaText = "2 ospite"},
                new Reserva {DiariaValue = "Diária 3 pessoas", DiariaText = "3 ospite"},
                new Reserva {DiariaValue = "Diária 4 pessoas", DiariaText = "4 ospite"}
            };

            ViewBag.Diaria = new SelectList(list, "DiariaValue", "DiariaText");

            return View();
        }


        [HttpPost]
        public ActionResult Index(Reserva reserva)
        {
            var list = new[]
            {
                new Reserva {DiariaValue = "Não selecionou a diária", DiariaText = "Selezionare"},
                new Reserva {DiariaValue = "Diária 1 pessoa", DiariaText = "1 ospite"},
                new Reserva {DiariaValue = "Diária 1 casal", DiariaText = "2 ospite"},
                new Reserva {DiariaValue = "Diária 3 pessoas", DiariaText = "3 ospite"},
                new Reserva {DiariaValue = "Diária 4 pessoas", DiariaText = "4 ospite"}
            };

            ViewBag.Diaria = new SelectList(list, "DiariaValue", "DiariaText");



            var envio = new Email();
            envio.EnviarReservaItaliano(reserva);

            return View();
        }
    }
}
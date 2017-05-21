using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MiraMareHotel.Models;
using MiraMareHotel.Util;

namespace MiraMareHotel.Areas.English.Controllers
{
    public class ReservationController : Controller
    {
        //
        // GET: /English/Reservation/
        public ActionResult Index()
        {
            var list = new[]
            {
                new Reserva {DiariaValue = "Não selecionou a diária", DiariaText = "Select"},
                new Reserva {DiariaValue = "Diária 1 pessoa", DiariaText = "1 guest"},
                new Reserva {DiariaValue = "Diária 1 casal", DiariaText = "2 guests"},
                new Reserva {DiariaValue = "Diária 3 pessoas", DiariaText = "3 guests"},
                new Reserva {DiariaValue = "Diária 4 pessoas", DiariaText = "4 guestes"}
            };

            ViewBag.Diaria = new SelectList(list, "DiariaValue", "DiariaText");



            return View();
        }


        [HttpPost]
        public ActionResult Index(Reserva reserva)
        {

            var list = new[]
            {
                new Reserva {DiariaValue = "Não selecionou a diária", DiariaText = "Select"},
                new Reserva {DiariaValue = "Diária 1 pessoa", DiariaText = "1 guest"},
                new Reserva {DiariaValue = "Diária 1 casal", DiariaText = "2 guests"},
                new Reserva {DiariaValue = "Diária 3 pessoas", DiariaText = "3 guests"},
                new Reserva {DiariaValue = "Diária 4 pessoas", DiariaText = "4 guestes"}
            };

            ViewBag.Diaria = new SelectList(list, "DiariaValue", "DiariaText");




            var envio = new Email();
            envio.EnviarReservaIngles(reserva);
            return View();
        }
	}
}
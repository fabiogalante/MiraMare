using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Mvc;
using MiraMareHotel.Models;
using MiraMareHotel.Util;

namespace MiraMareHotel.Controllers
{
    public class ReservasController : Controller
    {
        //
        // GET: /Reservas/
        public ActionResult Index()
        {

            var list = new[]
            {
                new Reserva {DiariaValue = "Não selecionou a diária", DiariaText = "Selecione o tipo de diária"},
                new Reserva {DiariaValue = "Diária 1 pessoa", DiariaText = "Diária 1 pessoa"},
                new Reserva {DiariaValue = "Diária 1 casal", DiariaText = "Diária 1 casal"},
                new Reserva {DiariaValue = "Diária 3 pessoas", DiariaText = "Diária 3 pessoas"},
                new Reserva {DiariaValue = "Diária 4 pessoas", DiariaText = "Diária 4 pessoas"}
            };

            ViewBag.Diaria = new SelectList(list, "DiariaValue", "DiariaText");



            return View();
        }


        [HttpPost]
        public ActionResult Index(Reserva reserva)
        {
            var list = new[]
            {
                new Reserva {DiariaValue = "Não selecionou a diária", DiariaText = "Selecione o tipo de diária"},
                new Reserva {DiariaValue = "Diária 1 pessoa", DiariaText = "Diária 1 pessoa"},
                new Reserva {DiariaValue = "Diária 1 casal", DiariaText = "Diária 1 casal"},
                new Reserva {DiariaValue = "Diária 3 pessoas", DiariaText = "Diária 3 pessoas"},
                new Reserva {DiariaValue = "Diária 4 pessoas", DiariaText = "Diária 4 pessoas"}
            };

            ViewBag.Diaria = new SelectList(list, "DiariaValue", "DiariaText");

            var envio = new Email();
            envio.EnviarReservaPortugues(reserva);
            return View();
        }
    }
}
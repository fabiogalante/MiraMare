using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MiraMareHotel.Models;

namespace MiraMareHotel.Areas.Admin.Controllers
{

    [Authorize(Roles = "Admin")]
    public class HomeController : Controller
    {
        readonly HotelmiramareDbContext _db = new HotelmiramareDbContext();

        public ActionResult Index()
        {
            var balcao = _db.TarifasBalcao.First();
            return View(balcao);
        }


        [HttpPost]
        public ActionResult Index(TarifaBalcao tarifaBalcao)
        {
            tarifaBalcao.Id = 1;
            _db.Entry(tarifaBalcao).State = EntityState.Modified;
            _db.SaveChanges();
            return View();
        }


        public ActionResult Pacotes()
        {
            var pacotes = _db.TarifasPacotes.ToList();
            return View(pacotes);
        }



        public ActionResult PacotesDia(int id)
        {
            var pacote = _db.TarifasPacotes.Find(id);
            return View(pacote);
        }


        [HttpPost]
        public ActionResult PacotesDia(TarifaPacote tarifaPacote)
        {

            _db.Entry(tarifaPacote).State = EntityState.Modified;
            _db.SaveChanges();
            return RedirectToAction("Pacotes", "Home");
        }



        //Periodo
        public ActionResult DeAte()
        {
            var periodo = _db.TarifasPacotePeriodos.First();
            return View(periodo);
        }


        public ActionResult DeAteEditar()
        {
            var periodo = _db.TarifasPacotePeriodos.First();
            return View(periodo);
        }

        public void DeAteSalvar(string de, string ate, string nome)
        {
            DateTime resultado = DateTime.MinValue;

            if (DateTime.TryParse(de, out resultado) && DateTime.TryParse(ate, out resultado))
            {
                TarifaPacotePeriodo periodo = new TarifaPacotePeriodo
                {
                    Id = 1,
                    De = Convert.ToDateTime(de),
                    Ate = Convert.ToDateTime(ate),
                    Nome = nome
                };
                _db.Entry(periodo).State = EntityState.Modified;
                _db.SaveChanges();
            }
        }


        protected override void Dispose(bool disposing)
        {
            _db.Dispose();
            base.Dispose(disposing);
        }
      
	}
}
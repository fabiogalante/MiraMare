using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.Mvc;
using MiraMareHotel.Util;

namespace MiraMareHotel.Controllers
{
    public class ContatoController : Controller
    {
        //
        // GET: /Contato/
        public ActionResult Index()
        {
            return View();
        }


        public JsonResult EnviarEmailContato(string nome, string email, string telefone, string mensagem, string idioma)
        {
            object obj;
            //Enviar email

            try
            {
                var envio = new Email();
                var confirmacao = envio.EnviarEmailContato(nome, email, telefone, mensagem, idioma);

                obj = new { Mensagem = confirmacao };
            }
            catch (Exception ex)
            {
                obj = new { Mensagem = "Erro ao enviar sua mensagem - " + ex.Message };
            }


            return Json(obj, JsonRequestBehavior.AllowGet);


        }

        
        /// <summary>
        /// Contato rodapé da página
        /// </summary>
        /// <param name="nome"></param>
        /// <param name="email"></param>
        /// <param name="mensagem"></param>
        /// <param name="idioma"></param>
        /// <returns></returns>
        public JsonResult EnviarEmailContatoFooter(string nome, string email, string mensagem, string idioma)
        {
            object obj;

            try
            {
                var envio = new Email();
                var confirmacao = envio.EnviarEmailFooter(nome, email,  mensagem, idioma);

                obj = new { Mensagem = confirmacao };
            }
            catch (Exception ex)
            {
                obj = new { Mensagem = "Erro - " + ex.Message };
            }


            return Json(obj, JsonRequestBehavior.AllowGet);


        }


	}
}
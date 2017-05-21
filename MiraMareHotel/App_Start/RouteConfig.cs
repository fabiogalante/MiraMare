using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace MiraMareHotel
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");


       

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional },
                namespaces: new[] { "MiraMareHotel.Controllers" }
            );

            routes.MapRoute(
           "EnvioEmail", // Route name
           "{controller}/{action}/{nome}/{email}/{mensagem}", // URL with parameters
           new { controller = "Home", action = "EnviarEmailContato", nome = "", email = "", mensagem = "" }
                // Parameter defaults
           );


        }
    }
}

using System.Web.Mvc;

namespace MiraMareHotel.Areas.Italia
{
    public class ItaliaAreaRegistration : AreaRegistration 
    {
        public override string AreaName 
        {
            get 
            {
                return "Italia";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context) 
        {
            context.MapRoute(
                "Italia_default",
                "Italia/{controller}/{action}/{id}",
                new { action = "Index", id = UrlParameter.Optional },
                 namespaces: new[] { "MiraMareHotel.Areas.Italia.Controllers" }
            );
        }
    }
}
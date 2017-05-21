using System.Web.Mvc;

namespace MiraMareHotel.Areas.English
{
    public class EnglishAreaRegistration : AreaRegistration 
    {
        public override string AreaName 
        {
            get 
            {
                return "English";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context) 
        {
            context.MapRoute(
                "English_default",
                "English/{controller}/{action}/{id}",
                new {  action = "Index", id = UrlParameter.Optional },
                namespaces: new[] { "MiraMareHotel.Areas.English.Controllers" }
            );
        }
    }
}
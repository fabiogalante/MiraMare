using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MiraMarePraiaHotel.Startup))]
namespace MiraMarePraiaHotel
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}

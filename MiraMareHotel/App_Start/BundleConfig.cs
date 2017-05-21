using System.Web;
using System.Web.Optimization;

namespace MiraMareHotel
{
    public class BundleConfig
    {
        // For more information on bundling, visit http://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
          
            bundles.Add(new ScriptBundle("~/bundles/scripts").Include("~/js/*.js"));
            BundleTable.EnableOptimizations = false;
        }
    }
}

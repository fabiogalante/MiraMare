using System.Web.Configuration;

namespace Miramare
{
	/// <summary>
	/// Summary description for Conexao.
	/// </summary>
	public class Conexao
	{
		public static string ConnectionString
		{
			get
			{
                return WebConfigurationManager.ConnectionStrings["cnnString"].ConnectionString;
			}			
		}
	}
}

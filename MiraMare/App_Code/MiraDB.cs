using System;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Microsoft.ApplicationBlocks.Data;
using Miramare;

/// <summary>
/// Summary description for MiraDB
/// </summary>
public class MiraDB
{
    public static void incluirReserva(string hospede,string solicitante, string endereco,string bairro,
        string cidade, string estado, string cep, string email, string telefone, string fax, DateTime dtentrada,
        DateTime dthorarioprevisto, int qtdeapartamento, DateTime dtsaida, string tipodiaria, string comentario)
    {

        SqlParameter[] paramsToSP = new SqlParameter[16];

        paramsToSP[0] = new SqlParameter("@HOSPEDE", SqlDbType.NVarChar,150);
        paramsToSP[0].Value = hospede;

        paramsToSP[1] = new SqlParameter("@SOLICITANTE", SqlDbType.NVarChar, 150);
        paramsToSP[1].Value = solicitante;

        paramsToSP[2] = new SqlParameter("@ENDERECO", SqlDbType.NVarChar, 250);
        paramsToSP[2].Value = endereco;

        paramsToSP[3] = new SqlParameter("@BAIRRO", SqlDbType.NVarChar, 150);
        paramsToSP[3].Value = bairro;

        paramsToSP[4] = new SqlParameter("@CIDADE", SqlDbType.NVarChar, 150);
        paramsToSP[4].Value = cidade;

        paramsToSP[5] = new SqlParameter("@ESTADO", SqlDbType.Char, 120);
        paramsToSP[5].Value = estado;

        paramsToSP[6] = new SqlParameter("@CEP", SqlDbType.Char, 10);
        paramsToSP[6].Value = cep;

        paramsToSP[7] = new SqlParameter("@EMAIL", SqlDbType.NChar, 200);
        paramsToSP[7].Value = email;

        paramsToSP[8] = new SqlParameter("@TELEFONE", SqlDbType.NChar, 50);
        paramsToSP[8].Value = telefone;

        paramsToSP[9] = new SqlParameter("@FAX", SqlDbType.NChar, 50);
        paramsToSP[9].Value = fax;

        paramsToSP[10] = new SqlParameter("@DATAENTRADA", SqlDbType.DateTime);
        paramsToSP[10].Value = dtentrada;

        paramsToSP[11] = new SqlParameter("@HORARIOPREVISTO", SqlDbType.DateTime);
        paramsToSP[11].Value = dthorarioprevisto;

        paramsToSP[12] = new SqlParameter("@QTDEAPARTAMENTO", SqlDbType.Int);
        paramsToSP[12].Value = qtdeapartamento;

        paramsToSP[13] = new SqlParameter("@DATASAIDA", SqlDbType.DateTime);
        paramsToSP[13].Value = dtsaida;

        paramsToSP[14] = new SqlParameter("@TIPODIARIA", SqlDbType.NVarChar, 130);
        paramsToSP[14].Value = tipodiaria;

        paramsToSP[15] = new SqlParameter("@COMENTARIO ", SqlDbType.Text);
        paramsToSP[15].Value = comentario;

        SqlHelper.ExecuteNonQuery(Conexao.ConnectionString, CommandType.StoredProcedure, "mira_incluirReserva", paramsToSP);
    }

}

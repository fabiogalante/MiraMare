using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Contato : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnEnviar_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            try
            {
                // create the message
                MailMessage mail = new MailMessage();
                // set the sender's address and display name
                mail.From = new MailAddress(txtEmail.Text);
                // add a first recipient by specifying only her address
                mail.To.Add("miramare@hotelmiramare.com.br");               
                mail.Subject = "Contato: www.hotelmiramare.com.br";

                StringBuilder mensagem = new StringBuilder();
                mensagem.Append("www.hotelmiramare.com.br <br>");
                mensagem.Append("<b>Nome:</b> " + txtNome.Text + "<br>");
                mensagem.Append("<b>E-mail: </b>" + txtEmail.Text + "<br>");
                mensagem.Append("<b>Telefone: </b>" + txtFone.Text + "<br>");
                mensagem.Append("<b>Mensagem:</b> " + txtMensagem.Text + "<br>");

                mail.Body = mensagem.ToString();
                mail.IsBodyHtml = true;
                // set the mail’s priority to high
                mail.Priority = MailPriority.High;
                SmtpClient smtpClient = new SmtpClient();
                smtpClient.Send(mail);

                lblMensagem.Text = "Mensagem enviada com sucesso, responderemos o mais breve possível";

                txtEmail.Text = String.Empty;
                txtFone.Text = String.Empty;
                txtMensagem.Text = String.Empty;
                txtNome.Text = String.Empty;
                btnEnviar.Enabled = false;
            }
            catch (Exception ex)
            {
                lblMensagem.Text = ex.Message;
            }
        }
        else
        {
            lblMensagem.Text = "Dados inválido, preencha todos os campos";
        }
    }
}

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
using cep;


public partial class Reservas : System.Web.UI.Page
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

                txtComentario.Text = txtComentario.Text.Replace("\n", "<BR>");
                txtComentario.Text = txtComentario.Text.Replace("'", "");
                string comentario = txtComentario.Text;


                // create the message
                MailMessage mail = new MailMessage();
                // set the sender's address and display name
                mail.From = new MailAddress(txtEmail.Text);
                // add a first recipient by specifying only her address
                mail.To.Add("miramare@hotelmiramare.com.br");
                
                mail.Subject = "Confirmação de reserva: www.hotelmiramare.com.br";


                StringBuilder mensagem = new StringBuilder();
                mensagem.Append("Formulário de contato<br>");
                mensagem.Append("<br>");
                mensagem.Append("==============================================================<br>");
                mensagem.Append("<br>");
                mensagem.Append("<b>Hospede</b>: " + txtHospede.Text + "<br>");
                mensagem.Append("<b>Solicitante</b>: " + txtSolicitante.Text + "<br>");
                mensagem.Append("<b>Endereço</b>: " + txtEndereco.Text + "<br>");
                mensagem.Append("<b>Número</b>: " + txtNumero.Text + "<br>");
                mensagem.Append("<b>Complemento</b>: " + txtComplemento.Text + "<br>");
                mensagem.Append("<b>Bairro</b>: " + txtBairro.Text + "<br>");
                mensagem.Append("<b>Cidade</b>: " + txtCidade.Text + "<br>");
                mensagem.Append("<b>Estado</b>: " + txtEstado.Text + "<br>");
                mensagem.Append("<b>CEP</b>: " + txtCEP.Text + "<br>");
                mensagem.Append("<b>Fone</b>: " + txtFone.Text + "<br>");
                mensagem.Append("<b>Fax</b>: " + txtFax.Text + "<br>");
                mensagem.Append("<b>Data de entrada</b>: " + txtDtEntrada.Text + "<br>");
                mensagem.Append("<b>Data de saída</b>: " + txtDtSaida.Text + "<br>");
                mensagem.Append("<b>Horário previsto</b>: " + txtHorario.Text + "<br>");
                mensagem.Append("<b>Qtde. apto.</b>: " + txtApto.Text + "<br>");
                mensagem.Append("<b>Data de saída</b>: " + txtDtSaida.Text + "<br>");
                mensagem.Append("<b>Tipo de diária</b>: " + drpDiaria.SelectedValue + "<br>");
                mensagem.Append("<b>E-mail</b>: " + txtEmail.Text + "<br>");
                mensagem.Append("<b>Mensagem</b>:<br>");
                mensagem.Append(comentario + "<br>");
                mensagem.Append("==============================================================<br>");
                mensagem.Append("<br>");






                mail.Body = mensagem.ToString();
                mail.IsBodyHtml = true;
                // set the mail’s priority to high
                mail.Priority = MailPriority.High;
                SmtpClient smtpClient = new SmtpClient();
                smtpClient.Send(mail);
               

                lblMensagem.Text = "Mensagem efetuada com sucesso, responderemos o mais breve possível";

                //cadastrarReserva();

                ApagarTextBox(this);
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

    private void ApagarTextBox(Control pai)
    {
        foreach (Control ctl in pai.Controls)
            if (ctl is TextBox)
                ((TextBox)ctl).Text = string.Empty;
            else if (ctl.Controls.Count > 0)
                ApagarTextBox(ctl);

          
    }
    protected void txtCEP_TextChanged(object sender, EventArgs e)
    {
        cep.CEP cep = new cep.CEP();

        

        string strCep = txtCEP.Text.Replace("-", string.Empty);
        DataSet ds = cep.RetornaEndereco(strCep);

        if (ds.Tables[0].Rows.Count > 0)
        {
            txtBairro.Text = ds.Tables[0].Rows[0][4].ToString();
            txtEndereco.Text = String.Concat(ds.Tables[0].Rows[0][3].ToString());
            txtEstado.Text = ds.Tables[0].Rows[0][1].ToString();
            txtCidade.Text = ds.Tables[0].Rows[0][0].ToString();
            lblCEP.Text = String.Empty;
        }
        else
        {
            lblCEP.Text = "Endereço não localizado, digite os dados.";
            txtBairro.Text = String.Empty;
            txtEndereco.Text = String.Empty;
            txtEstado.Text = String.Empty;
            txtCidade.Text = String.Empty;
        }
    }
}

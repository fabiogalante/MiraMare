using System;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Text.RegularExpressions;
using MiraMareHotel.Models;

namespace MiraMareHotel.Util
{
    public class Email
    {
        public string EnviarEmailContato(string nome, string email, string telefone, string mensagem, string idioma)
        {
            try
            {

                if (IsValidEmail(email))
                {
                    using (var mailMessage = new MailMessage())
                    {


                        var de = new MailAddress("miramare@hotelmiramare.com.br");
                        var rpt = new MailAddress(email);
                        mailMessage.To.Add("miramare@hotelmiramare.com.br");
                        mailMessage.From = de;
                        mailMessage.ReplyTo = rpt;
                        mailMessage.Priority = MailPriority.Normal;
                        mailMessage.Subject = "Contato www.hotelmiramare.com.br";

                        var builder = new StringBuilder();
                        builder.Append("Contato do site www.hotelmiramare.com.br <br>");
                        builder.Append("<b>Nome do contato:</b> " + nome + "<br>");
                        builder.Append("<b>E-mail do contato: </b>" + email + "<br>");
                        builder.Append("<b>Mensagem:</b> " + mensagem + "<br>");
                        mailMessage.Body = builder.ToString();
                        mailMessage.IsBodyHtml = true;
                        mailMessage.SubjectEncoding = Encoding.GetEncoding("ISO-8859-1");
                        mailMessage.BodyEncoding = Encoding.GetEncoding("ISO-8859-1");

                        var smtpClient = new SmtpClient();
                        smtpClient.Host = "smtp.hotelmiramare.com.br";
                        smtpClient.Port = 587;
                        smtpClient.Credentials = new System.Net.NetworkCredential("miramare@hotelmiramare.com.br", "manjuba2014");
                        smtpClient.Send(mailMessage);
                        mailMessage.Dispose();

                        
                        switch (idioma)
                        {
                            case "portugues":
                                return "Mensagem enviada com sucesso, responderemos o mais breve possível";

                            case "ingles":
                                return "Message sent, we will respond as soon as possible";

                            case "italiano":
                                return "Messaggio inviato, vi risponderemo al più presto";
                        }


                    }
                }
                else
                {
                    switch (idioma)
                    {
                        case "portugues":
                            return "O e-mail informado é inválido";

                        case "ingles":
                            return "Invalid Email";

                        case "italiano":
                            return "Email non valida";
                    }

                }



            }
            catch (SmtpException exception)
            {

                return exception.Message;
            }
            catch (Exception exception)
            {

                return exception.Message;
            }

            return null;

        }

        public string EnviarEmailFooter(string nome, string email, string mensagem, string idioma)
        {
            try
            {


                if (IsValidEmail(email))
                {
                    using (var mailMessage = new MailMessage())
                    {
                        var de = new MailAddress("miramare@hotelmiramare.com.br");
                        var rpt = new MailAddress(email);
                        mailMessage.To.Add("miramare@hotelmiramare.com.br");
                        mailMessage.From = de;
                        mailMessage.ReplyTo = rpt;
                        mailMessage.Priority = MailPriority.Normal;
                        mailMessage.Subject = "Contato www.hotelmiramare.com.br";

                        var builder = new StringBuilder();
                        builder.Append("Contato do site www.hotelmiramare.com.br <br>");
                        builder.Append("<b>Nome do contato:</b> " + nome + "<br>");
                        builder.Append("<b>E-mail do contato: </b>" + email + "<br>");
                        builder.Append("<b>Mensagem:</b> " + mensagem + "<br>");
                        mailMessage.Body = builder.ToString();
                        mailMessage.IsBodyHtml = true;
                        mailMessage.SubjectEncoding = Encoding.GetEncoding("ISO-8859-1");
                        mailMessage.BodyEncoding = Encoding.GetEncoding("ISO-8859-1");

                        var smtpClient = new SmtpClient();
                        smtpClient.Host = "smtp.hotelmiramare.com.br";
                        smtpClient.Port = 587;
                        smtpClient.Credentials = new System.Net.NetworkCredential("miramare@hotelmiramare.com.br", "manjuba2014");
                        smtpClient.Send(mailMessage);
                        mailMessage.Dispose();
                    }


                    switch (idioma)
                    {
                        case "portugues":
                            return "Mensagem enviada com sucesso, responderemos o mais breve possível";
                        case "ingles":
                            return "Message sent, we will respond as soon as possible";
                        case "italiano":
                            return "Messaggio inviato, vi risponderemo al più presto";
                    }
                
                }
            }
            catch (SmtpException exception)
            {

                return exception.Message;
            }
            catch (Exception exception)
            {

                return exception.Message;
            }

            return "Erro e-mail";
        }

        private string EnviarEmail(Reserva reserva, string email, string nomeHospede, string comentario, string mensagem)
        {

            try
            {
                using (var mailMessage = new MailMessage())
                {
                    var de = new MailAddress("miramare@hotelmiramare.com.br");
                    var rpt = new MailAddress(email);
                    mailMessage.To.Add("miramare@hotelmiramare.com.br");
                    mailMessage.From = de;
                    mailMessage.ReplyTo = rpt;
                    mailMessage.Priority = MailPriority.Normal;
                    mailMessage.Subject = "Contato www.hotelmiramare.com.br";


                    var builder = new StringBuilder();
                    builder.Append("Reserva do site www.hotelmiramare.com.br <br>");
                    builder.Append("<b>Nome do hóspede:</b> " + nomeHospede + "<br>");
                    builder.Append("<b>E-mail: </b>" + email + "<br>");
                    builder.Append("<b>Telefone fixo:</b> " + reserva.TelefoneFixo + "<br>");
                    builder.Append("<b>Celular:</b> " + reserva.TelefoneCelular + "<br>");
                    builder.Append("<b>Data de entrada:</b> " + reserva.DataEntrada + "<br>");
                    builder.Append("<b>Data de saída:</b> " + reserva.DataSaida + "<br>");
                    builder.Append("<b>Tipo de diária:</b> " + reserva.DiariaValue + "<br>");
                    builder.Append("<b>Endereço:</b> " + reserva.Endereco + "," + reserva.Numero + " - " + reserva.Complemento + "<br>");
                    builder.Append("<b>Bairro:</b> " + reserva.Bairro + "<br>");
                    builder.Append("<b>Cidade:</b> " + reserva.Cidade + "<br>");
                    builder.Append("<b>Estado:</b> " + reserva.Estado + "<br>");
                    builder.Append("<b>CEP:</b> " + reserva.Cep + "<br>");
                    builder.Append("<b>Comentário:</b> " + comentario + "<br>");


                    mailMessage.Body = builder.ToString();
                    mailMessage.IsBodyHtml = true;
                    mailMessage.SubjectEncoding = Encoding.GetEncoding("ISO-8859-1");
                    mailMessage.BodyEncoding = Encoding.GetEncoding("ISO-8859-1");

                    var smtpClient = new SmtpClient();
                    smtpClient.Host = "smtp.hotelmiramare.com.br";
                    smtpClient.Port = 587;
                    smtpClient.Credentials = new System.Net.NetworkCredential("miramare@hotelmiramare.com.br", "manjuba2014");
                    smtpClient.Send(mailMessage);
                    mailMessage.Dispose();

                    return mensagem;
                }

            
            }
            catch (SmtpException exception)
            {

                return exception.Message;
            }
            catch (Exception exception)
            {

                return exception.Message;
            }

             return "Erro e-mail";

        }

        internal string EnviarReservaPortugues(Reserva reserva)
        {
            string email = reserva.Email;
            string nomeHospede = reserva.NomeHospede;
            string comentario = reserva.Comentario;
            const string mensagem = "Mensagem enviada com sucesso, responderemos o mais breve possível";
            return EnviarEmail(reserva, email, nomeHospede, comentario, mensagem);


        }

        internal string EnviarReservaItaliano(Reserva reserva)
        {
            string email = reserva.EmailItaliano;
            string nomeHospede = reserva.NomeDellOspite;
            string comentario = reserva.Commento;
            const string mensagem = "Messaggio inviato, vi risponderemo al più presto";
            return EnviarEmail(reserva, email, nomeHospede, comentario, mensagem);

        }

        internal string EnviarReservaIngles(Reserva reserva)
        {
            string email = reserva.EmailEnglish;
            string nomeHospede = reserva.GuestName;
            string comentario = reserva.Comment;
            const string mensagem = "Message sent, we will respond as soon as possible";
            return EnviarEmail(reserva, email, nomeHospede, comentario, mensagem);
        }

        private static bool IsValidEmail(string email)
        {
            return Regex.IsMatch(email, @"^([0-9a-z]+[-._+&])*[0-9a-z]+@([-0-9a-z]+[.])+[a-z]{2,6}$",
                RegexOptions.IgnoreCase);
        }




    }
}
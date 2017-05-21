using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MiraMareHotel.Models
{
    public class Reserva
    {
        [Required(ErrorMessage = "Digite o nome do hóspede")]
        [DisplayName("Nome do hospede")]
        public string NomeHospede { get; set; }


        [Required(ErrorMessage = "Digite o e-mail")]
        [EmailAddress(ErrorMessage = "E-mail em formato inválido.")]
        public string Email { get; set; }


        [Required(ErrorMessage = "Type Guest name")]
        public string GuestName { get; set; }


        [Required(ErrorMessage = "Inserisci il tuo nome")]
        public string NomeDellOspite { get; set; }


        [Required(ErrorMessage = "Type the e-mail")]
        [EmailAddress(ErrorMessage = "Invalid Email.")]
        public string EmailEnglish { get; set; }


        [Required(ErrorMessage = "Inserisci il tuo indirizzo email")]
        [EmailAddress(ErrorMessage = "Email non valida.")]
        public string EmailItaliano { get; set; }

        public string TelefoneFixo { get; set; }

        public string TelefoneCelular { get; set; }

        public string DataEntrada { get; set; }

        public string HorarioPrevisto { get; set; }

        public string DataSaida { get; set; }

        public string Apartamento { get; set; }

        public string DiariaValue { get; set; }
        public string DiariaText { get; set; }


        [DataType(DataType.MultilineText)]
        public string Comentario { get; set; }


        [DataType(DataType.MultilineText)]
        public string Comment { get; set; }

        
        [DataType(DataType.MultilineText)]
        public string Commento { get; set; }
        

        public string Cep { get; set; }

        public string Endereco { get; set; }

        public string Numero { get; set; }

        public string Complemento { get; set; }

        public string Bairro { get; set; }

        public string Cidade { get; set; }

        public string Estado { get; set; }

    }
}
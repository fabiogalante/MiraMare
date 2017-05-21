using System;

namespace MiraMareHotel.Models
{
    public partial class Avaliacoes
    {
      
        public int Id { get; set; }
        public string Hospede { get; set; }
        public string CidadePais { get; set; }
        public string Avaliacao { get; set; }
        public Nullable<System.DateTime> DataAvaliacao { get; set; }
    }
}

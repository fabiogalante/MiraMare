using System;
using System.Collections.Generic;

namespace MiraMareHotel.Models
{
    public partial class TarifaBalcao
    {
        public int Id { get; set; }
        public Nullable<decimal> Luxo1Hospede { get; set; }
        public Nullable<decimal> Luxo2Hospedes { get; set; }
        public Nullable<decimal> Luxo3Hospedes { get; set; }
        public Nullable<decimal> Luxo4Hospedes { get; set; }
        public Nullable<decimal> LuxoVaranda1Hospede { get; set; }
        public Nullable<decimal> LuxoVaranda2Hospedes { get; set; }
        public Nullable<decimal> LuxoVaranda3Hospedes { get; set; }
        //public Nullable<decimal> LuxoVarada4Hospedes { get; set; }
        public Nullable<decimal> Luxo1HospedeFds { get; set; }
        public Nullable<decimal> Luxo2HospedesFds { get; set; }
        public Nullable<decimal> Luxo3HospedesFds { get; set; }
        public Nullable<decimal> Luxo4HospedesFds { get; set; }
        public Nullable<decimal> LuxoVaranda1HospedeFds { get; set; }
        public Nullable<decimal> LuxoVaranda2HospedesFds { get; set; }
        public Nullable<decimal> LuxoVaranda3HospedesFds { get; set; }
       // public Nullable<decimal> LuxoVarada4HospedesFds { get; set; }
    }
}

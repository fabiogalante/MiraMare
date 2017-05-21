using System;
using System.Collections.Generic;

namespace MiraMareHotel.Models
{
    public partial class TarifaPacote
    {
        public int Id { get; set; }
        public int Dias { get; set; }
        public decimal Luxo1Hospede { get; set; }
        public decimal Luxo3Hospedes { get; set; }
        public decimal Luxo4Hospedes { get; set; }
        public decimal LuxoVaranda1Hospede { get; set; }
        public decimal LuxoVaranda3Hospedes { get; set; }
       // public decimal LuxoVarada4Hospedes { get; set; }
    }
}

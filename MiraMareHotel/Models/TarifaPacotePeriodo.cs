using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace MiraMareHotel.Models
{
    public partial class TarifaPacotePeriodo
    {
        public int Id { get; set; }


        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}")]
        public Nullable<System.DateTime> De { get; set; }

         [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}")]
        public Nullable<System.DateTime> Ate { get; set; }
        public string Nome { get; set; }
    }
}

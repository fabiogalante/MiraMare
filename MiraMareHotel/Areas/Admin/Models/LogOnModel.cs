using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MiraMareHotel.Areas.Admin.Models
{
    public class LogOnModel
    {
        [Required(ErrorMessage = "Digite seu nome")]
        public string UserName { get; set; }

        [Required(ErrorMessage = "Digite sua senha")]
        [DataType(DataType.Password)]
        public string Password { get; set; }
     
    }
}
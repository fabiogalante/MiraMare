using System.Data.Entity;
using MiraMareHotel.Models.Mapping;

namespace MiraMareHotel.Models
{
    public partial class HotelmiramareDbContext : DbContext
    {
        static HotelmiramareDbContext()
        {
            Database.SetInitializer<HotelmiramareDbContext>(null);
        }

        public HotelmiramareDbContext()
            : base("Name=hotelmiramare_dbContext")
        {
        }


        public DbSet<Avaliacoes> Avaliacoes { get; set; }
        public DbSet<TarifaBalcao> TarifasBalcao { get; set; }
        public DbSet<TarifaPacote> TarifasPacotes { get; set; }
        public DbSet<TarifaPacotePeriodo> TarifasPacotePeriodos { get; set; }
      
       

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {

            modelBuilder.Configurations.Add(new TarifaBalcaoMap());
            modelBuilder.Configurations.Add(new TarifaPacoteMap());
            modelBuilder.Configurations.Add(new TarifaPacotePeriodoMap());
           
        }
    }
}

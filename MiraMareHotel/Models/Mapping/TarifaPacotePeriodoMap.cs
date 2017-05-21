using System.ComponentModel.DataAnnotations;
using System.Data.Entity.ModelConfiguration;

namespace MiraMareHotel.Models.Mapping
{
    public class TarifaPacotePeriodoMap : EntityTypeConfiguration<TarifaPacotePeriodo>
    {
        public TarifaPacotePeriodoMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            // Table & Column Mappings
            this.ToTable("TarifaPacotePeriodo");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.De).HasColumnName("De");
            this.Property(t => t.Ate).HasColumnName("Ate");
            this.Property(t => t.Nome).HasColumnName("Nome");
        }
    }
}

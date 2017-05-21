using System.ComponentModel.DataAnnotations;
using System.Data.Entity.ModelConfiguration;

namespace MiraMareHotel.Models.Mapping
{
    public class TarifaPacoteMap : EntityTypeConfiguration<TarifaPacote>
    {
        public TarifaPacoteMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            // Table & Column Mappings
            this.ToTable("TarifaPacote");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.Dias).HasColumnName("Dias");
            this.Property(t => t.Luxo1Hospede).HasColumnName("Luxo1Hospede");
            this.Property(t => t.Luxo3Hospedes).HasColumnName("Luxo3Hospedes");
            this.Property(t => t.Luxo4Hospedes).HasColumnName("Luxo4Hospedes");
            this.Property(t => t.LuxoVaranda1Hospede).HasColumnName("LuxoVaranda1Hospede");
            this.Property(t => t.LuxoVaranda3Hospedes).HasColumnName("LuxoVaranda3Hospedes");
            //this.Property(t => t.LuxoVarada4Hospedes).HasColumnName("LuxoVarada4Hospedes");
        }
    }
}
